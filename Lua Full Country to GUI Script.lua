-- This script may not work

function findCountry(countryName)
    -- Get a list of all countries.
    local countries = {}
    for _, country in pairs(getCountryList()) do
      countries[country.name] = country
    end
    -- Check if the country name is in the list.
    if countries[countryName] then
      -- Return the country information.
      local country = countries[countryName]
      -- Create a GUI frame to display the country decal.
      local frame = love.graphics.newFrame("country_decal.png")
      -- Draw the country decal on the frame.
      love.graphics.draw(frame, 0, 0)
      -- Return the frame.
      return frame
    else
      -- Return nil if the country name is not found.
      return nil
    end
  end
  
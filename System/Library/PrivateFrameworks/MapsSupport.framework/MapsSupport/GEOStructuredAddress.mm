@interface GEOStructuredAddress
- (id)initWithRTAddress:(id)address;
@end

@implementation GEOStructuredAddress

- (id)initWithRTAddress:(id)address
{
  addressCopy = address;
  v21.receiver = self;
  v21.super_class = GEOStructuredAddress;
  v5 = [(GEOStructuredAddress *)&v21 init];
  if (v5)
  {
    administrativeArea = [addressCopy administrativeArea];
    [(GEOStructuredAddress *)v5 setAdministrativeArea:administrativeArea];

    administrativeAreaCode = [addressCopy administrativeAreaCode];
    [(GEOStructuredAddress *)v5 setAdministrativeAreaCode:administrativeAreaCode];

    areasOfInterest = [addressCopy areasOfInterest];
    v9 = [areasOfInterest mutableCopy];
    [(GEOStructuredAddress *)v5 setAreaOfInterests:v9];

    countryCode = [addressCopy countryCode];
    [(GEOStructuredAddress *)v5 setCountryCode:countryCode];

    country = [addressCopy country];
    [(GEOStructuredAddress *)v5 setCountry:country];

    inlandWater = [addressCopy inlandWater];
    [(GEOStructuredAddress *)v5 setInlandWater:inlandWater];

    locality = [addressCopy locality];
    [(GEOStructuredAddress *)v5 setLocality:locality];

    ocean = [addressCopy ocean];
    [(GEOStructuredAddress *)v5 setOcean:ocean];

    postalCode = [addressCopy postalCode];
    [(GEOStructuredAddress *)v5 setPostCode:postalCode];

    subAdministrativeArea = [addressCopy subAdministrativeArea];
    [(GEOStructuredAddress *)v5 setSubAdministrativeArea:subAdministrativeArea];

    subThoroughfare = [addressCopy subThoroughfare];
    [(GEOStructuredAddress *)v5 setSubThoroughfare:subThoroughfare];

    subLocality = [addressCopy subLocality];
    [(GEOStructuredAddress *)v5 setSubLocality:subLocality];

    thoroughfare = [addressCopy thoroughfare];
    [(GEOStructuredAddress *)v5 setThoroughfare:thoroughfare];
  }

  return v5;
}

@end
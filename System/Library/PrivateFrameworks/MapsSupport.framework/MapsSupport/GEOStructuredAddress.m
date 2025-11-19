@interface GEOStructuredAddress
- (id)initWithRTAddress:(id)a3;
@end

@implementation GEOStructuredAddress

- (id)initWithRTAddress:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = GEOStructuredAddress;
  v5 = [(GEOStructuredAddress *)&v21 init];
  if (v5)
  {
    v6 = [v4 administrativeArea];
    [(GEOStructuredAddress *)v5 setAdministrativeArea:v6];

    v7 = [v4 administrativeAreaCode];
    [(GEOStructuredAddress *)v5 setAdministrativeAreaCode:v7];

    v8 = [v4 areasOfInterest];
    v9 = [v8 mutableCopy];
    [(GEOStructuredAddress *)v5 setAreaOfInterests:v9];

    v10 = [v4 countryCode];
    [(GEOStructuredAddress *)v5 setCountryCode:v10];

    v11 = [v4 country];
    [(GEOStructuredAddress *)v5 setCountry:v11];

    v12 = [v4 inlandWater];
    [(GEOStructuredAddress *)v5 setInlandWater:v12];

    v13 = [v4 locality];
    [(GEOStructuredAddress *)v5 setLocality:v13];

    v14 = [v4 ocean];
    [(GEOStructuredAddress *)v5 setOcean:v14];

    v15 = [v4 postalCode];
    [(GEOStructuredAddress *)v5 setPostCode:v15];

    v16 = [v4 subAdministrativeArea];
    [(GEOStructuredAddress *)v5 setSubAdministrativeArea:v16];

    v17 = [v4 subThoroughfare];
    [(GEOStructuredAddress *)v5 setSubThoroughfare:v17];

    v18 = [v4 subLocality];
    [(GEOStructuredAddress *)v5 setSubLocality:v18];

    v19 = [v4 thoroughfare];
    [(GEOStructuredAddress *)v5 setThoroughfare:v19];
  }

  return v5;
}

@end
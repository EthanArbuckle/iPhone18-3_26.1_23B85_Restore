@interface GEOAddressObject(RTExtensions)
- (uint64_t)initWithCurrentLocaleFullThoroughfare:()RTExtensions subLocality:locality:subAdministrativeArea:administrativeArea:postalCode:country:countryCode:;
- (uint64_t)initWithFullThoroughfare:()RTExtensions subLocality:locality:subAdministrativeArea:administrativeArea:postalCode:country:countryCode:language:countryLocale:phoneticLocale:;
@end

@implementation GEOAddressObject(RTExtensions)

- (uint64_t)initWithFullThoroughfare:()RTExtensions subLocality:locality:subAdministrativeArea:administrativeArea:postalCode:country:countryCode:language:countryLocale:phoneticLocale:
{
  v18 = MEMORY[0x1E695DF90];
  v33 = a13;
  v32 = a12;
  v31 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [v18 dictionary];
  [v27 setObject:v26 forKeyedSubscript:@"Street"];

  [v27 setObject:v25 forKeyedSubscript:@"SubLocality"];
  [v27 setObject:v24 forKeyedSubscript:@"City"];

  [v27 setObject:v23 forKeyedSubscript:@"SubAdministrativeArea"];
  [v27 setObject:v22 forKeyedSubscript:@"State"];

  [v27 setObject:v21 forKeyedSubscript:@"ZIP"];
  [v27 setObject:v20 forKeyedSubscript:@"Country"];

  [v27 setObject:v19 forKeyedSubscript:@"CountryCode"];
  v28 = [a1 initWithContactAddressDictionary:v27 language:v31 country:v32 phoneticLocale:v33];

  return v28;
}

- (uint64_t)initWithCurrentLocaleFullThoroughfare:()RTExtensions subLocality:locality:subAdministrativeArea:administrativeArea:postalCode:country:countryCode:
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v17 = a9;
  v18 = a10;
  v19 = [MEMORY[0x1E695DF58] preferredLanguages];
  v20 = [v19 firstObject];

  v21 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v22 = [v21 objectForKey:*MEMORY[0x1E695D978]];

  if (!v22)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412546;
      v37 = v27;
      v38 = 2112;
      v39 = v28;
      _os_log_error_impl(&dword_1BF1C4000, v23, OS_LOG_TYPE_ERROR, "%@, %@, [NSLocale currentLocale] failed for NSLocaleCountryCode", buf, 0x16u);
    }

    v17 = &stru_1F3DD00E8;
  }

  v29 = [a1 initWithFullThoroughfare:v35 subLocality:v34 locality:v33 subAdministrativeArea:v32 administrativeArea:v31 postalCode:v30 country:v17 countryCode:v18 language:v20 countryLocale:v22 phoneticLocale:v20];

  v24 = *MEMORY[0x1E69E9840];
  return v29;
}

@end
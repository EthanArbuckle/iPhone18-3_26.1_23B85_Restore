@interface HFStoreLocaleAvailability
+ (id)getAvailabilityDictionary;
@end

@implementation HFStoreLocaleAvailability

+ (id)getAvailabilityDictionary
{
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if (!getAvailabilityDictionary_availablityDictionary)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"HFStoreGeoAvailability" ofType:@"plist"];

    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    v22 = 0;
    v23 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:&v23 error:&v22];
    v7 = v22;
    v8 = getAvailabilityDictionary_availablityDictionary;
    getAvailabilityDictionary_availablityDictionary = v6;

    if (v7)
    {
      localizedDescription = [v7 localizedDescription];
      NSLog(&cfstr_AvailabilityDi.isa, localizedDescription);
    }
  }

  countryCode = [autoupdatingCurrentLocale countryCode];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  lowercaseString = [firstObject lowercaseString];

  v14 = [getAvailabilityDictionary_availablityDictionary objectForKeyedSubscript:countryCode];
  v15 = [v14 objectForKeyedSubscript:lowercaseString];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = [getAvailabilityDictionary_availablityDictionary objectForKeyedSubscript:countryCode];
    v19 = [getAvailabilityDictionary_availablityDictionary objectForKeyedSubscript:countryCode];
    v20 = [v19 objectForKeyedSubscript:@"default_language"];
    v17 = [v18 objectForKeyedSubscript:v20];
  }

  return v17;
}

@end
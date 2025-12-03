@interface CLSHolidayCalendarEventRulesFactory
+ (id)_allEventRulesForEventRulesDictionaries:(id)dictionaries deviceRegionCode:(id)code;
+ (id)_baseURL;
+ (id)_eventRulesDictionariesForURL:(id)l;
+ (id)allSupportedCountryCodesInDeviceRegion:(id)region;
+ (id)eventRulesForSourcesURL:(id)l deviceRegionCode:(id)code;
+ (id)eventRulesInDeviceRegion:(id)region;
+ (id)eventRulesURLForSourceURL:(id)l;
@end

@implementation CLSHolidayCalendarEventRulesFactory

+ (id)_baseURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"CLSHolidayCalendarEventRules" withExtension:0];

  return v3;
}

+ (id)_eventRulesDictionariesForURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:l error:&v12];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = [v3 objectForKeyedSubscript:@"events"];
  }

  else
  {
    v7 = +[CLSLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      localizedDescription = [v5 localizedDescription];
      *buf = 138412290;
      v14 = localizedDescription;
      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Error reading the holiday rules file: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_allEventRulesForEventRulesDictionaries:(id)dictionaries deviceRegionCode:(id)code
{
  v22 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  codeCopy = code;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = dictionariesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [CLSHolidayCalendarEventRule alloc];
        v15 = [(CLSHolidayCalendarEventRule *)v14 initWithEventDescription:v13 deviceRegionCode:codeCopy, v17];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

+ (id)allSupportedCountryCodesInDeviceRegion:(id)region
{
  v21 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  _baseURL = [self _baseURL];
  v7 = [self eventRulesURLForSourceURL:_baseURL];

  v8 = [self _eventRulesDictionariesForURL:v7];
  v9 = [self _allEventRulesForEventRulesDictionaries:v8 deviceRegionCode:regionCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        explicitlySupportedCountryCodes = [*(*(&v16 + 1) + 8 * i) explicitlySupportedCountryCodes];
        [v5 addObjectsFromArray:explicitlySupportedCountryCodes];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

+ (id)eventRulesURLForSourceURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"all_v2"];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

+ (id)eventRulesInDeviceRegion:(id)region
{
  regionCopy = region;
  _baseURL = [self _baseURL];
  v6 = [self eventRulesForSourcesURL:_baseURL deviceRegionCode:regionCopy];

  return v6;
}

+ (id)eventRulesForSourcesURL:(id)l deviceRegionCode:(id)code
{
  codeCopy = code;
  if (l)
  {
    v7 = [self eventRulesURLForSourceURL:l];
    if (v7)
    {
      v8 = [self _eventRulesDictionariesForURL:v7];
      v9 = [self _allEventRulesForEventRulesDictionaries:v8 deviceRegionCode:codeCopy];
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = +[CLSLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Sources URL is nil. Returning no eventRules.", v13, 2u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

@end
@interface CLSHolidayCalendarEventRulesFactory
+ (id)_allEventRulesForEventRulesDictionaries:(id)a3 deviceRegionCode:(id)a4;
+ (id)_baseURL;
+ (id)_eventRulesDictionariesForURL:(id)a3;
+ (id)allSupportedCountryCodesInDeviceRegion:(id)a3;
+ (id)eventRulesForSourcesURL:(id)a3 deviceRegionCode:(id)a4;
+ (id)eventRulesInDeviceRegion:(id)a3;
+ (id)eventRulesURLForSourceURL:(id)a3;
@end

@implementation CLSHolidayCalendarEventRulesFactory

+ (id)_baseURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"CLSHolidayCalendarEventRules" withExtension:0];

  return v3;
}

+ (id)_eventRulesDictionariesForURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a3 error:&v12];
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
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 localizedDescription];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_22F907000, v8, OS_LOG_TYPE_INFO, "Error reading the holiday rules file: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_allEventRulesForEventRulesDictionaries:(id)a3 deviceRegionCode:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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
        v15 = [(CLSHolidayCalendarEventRule *)v14 initWithEventDescription:v13 deviceRegionCode:v6, v17];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)allSupportedCountryCodesInDeviceRegion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [a1 _baseURL];
  v7 = [a1 eventRulesURLForSourceURL:v6];

  v8 = [a1 _eventRulesDictionariesForURL:v7];
  v9 = [a1 _allEventRulesForEventRulesDictionaries:v8 deviceRegionCode:v4];
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

        v14 = [*(*(&v16 + 1) + 8 * i) explicitlySupportedCountryCodes];
        [v5 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

+ (id)eventRulesURLForSourceURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"all_v2"];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

+ (id)eventRulesInDeviceRegion:(id)a3
{
  v4 = a3;
  v5 = [a1 _baseURL];
  v6 = [a1 eventRulesForSourcesURL:v5 deviceRegionCode:v4];

  return v6;
}

+ (id)eventRulesForSourcesURL:(id)a3 deviceRegionCode:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a1 eventRulesURLForSourceURL:a3];
    if (v7)
    {
      v8 = [a1 _eventRulesDictionariesForURL:v7];
      v9 = [a1 _allEventRulesForEventRulesDictionaries:v8 deviceRegionCode:v6];
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = +[CLSLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_22F907000, v11, OS_LOG_TYPE_ERROR, "Sources URL is nil. Returning no eventRules.", v13, 2u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

@end
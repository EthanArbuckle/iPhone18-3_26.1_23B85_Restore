@interface IPInternationalAnalytics
+ (void)reportGeneralStatistics;
+ (void)reportPerAppLanguageStatistics;
+ (void)reportStatistics;
@end

@implementation IPInternationalAnalytics

+ (void)reportStatistics
{
  [a1 reportGeneralStatistics];

  [a1 reportPerAppLanguageStatistics];
}

+ (void)reportGeneralStatistics
{
  v38[10] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
  if ([v2 count])
  {
    v36 = [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    v36 = 0;
  }

  if ([v2 count] < 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = [v2 objectAtIndexedSubscript:1];
  }

  if ([v2 count] < 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:2];
  }

  v4 = +[IntlUtility perAppLanguageSelectionBundleIdentifiers];
  v34 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCAEA8] _currentGlobalUserInflection];
  v35 = v2;
  v32 = v5;
  if (v5)
  {
    v6 = [v5 isIdentity] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v37[0] = @"deviceLanguage";
  v31 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v38[0] = v31;
  v37[1] = @"deviceRegion";
  v30 = [MEMORY[0x277CBEAF8] preferredLocale];
  v7 = [v30 countryCode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Not Specified";
  }

  v38[1] = v9;
  v37[2] = @"perAppLanguageUsageCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v29 = v10;
  v11 = v36;
  if (!v36)
  {
    v11 = @"Not Specified";
  }

  v38[2] = v10;
  v38[3] = v11;
  v37[3] = @"preferredLanguage1";
  v37[4] = @"preferredLanguage2";
  if (v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = @"Not Specified";
  }

  v13 = v3;
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = @"Not Specified";
  }

  v38[4] = v12;
  v38[5] = v14;
  v37[5] = @"preferredLanguage3";
  v37[6] = @"hasInflectionSet";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v38[6] = v15;
  v37[7] = 0x2841A0BD8;
  v16 = [MEMORY[0x277CBEAF8] _preferredTemperatureUnit];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"Not Specified";
  }

  v38[7] = v18;
  v37[8] = 0x28419F478;
  v19 = *MEMORY[0x277CCA208];
  v20 = [v34 objectForKey:? inDomain:?];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"Not Specified";
  }

  v38[8] = v22;
  v37[9] = 0x28419F498;
  v23 = [v34 objectForKey:? inDomain:?];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"Not Specified";
  }

  v38[9] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:10];
  v27 = [v26 mutableCopy];

  AnalyticsSendEvent();
  v28 = *MEMORY[0x277D85DE8];
}

+ (void)reportPerAppLanguageStatistics
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[IntlUtility perAppLanguageSelectionBundleIdentifiers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [IntlUtility preferredLanguageForBundleID:v7];
        v9 = v8;
        if (v8)
        {
          v21[0] = @"bundleIdentifier";
          v21[1] = @"languageIdentifier";
          v22[0] = v7;
          v22[1] = v8;
          v21[2] = @"deviceLanguage";
          v10 = [MEMORY[0x277CBEAF8] _deviceLanguage];
          v22[2] = v10;
          v21[3] = @"deviceRegion";
          v11 = [MEMORY[0x277CBEAF8] preferredLocale];
          v12 = [v11 countryCode];
          v13 = v12;
          v14 = @"Not Specified";
          if (v12)
          {
            v14 = v12;
          }

          v22[3] = v14;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
          AnalyticsSendEvent();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
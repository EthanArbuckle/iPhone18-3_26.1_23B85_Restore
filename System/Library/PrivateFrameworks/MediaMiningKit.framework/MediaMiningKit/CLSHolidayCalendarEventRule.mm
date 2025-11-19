@interface CLSHolidayCalendarEventRule
+ (id)localizedNameForName:(id)a3;
+ (id)localizedSynonymsForHolidayName:(id)a3;
- (BOOL)_isMatchingOnlyLocalDate:(id)a3 countryCode:(id)a4;
- (BOOL)backfillForCountryCode:(id)a3;
- (BOOL)backfillForLanguageCodes:(id)a3;
- (BOOL)evaluateWithLocalDate:(id)a3 traits:(id)a4 countryCode:(id)a5;
- (BOOL)isCelebration;
- (BOOL)isEqual:(id)a3;
- (BOOL)triggerMemoryForCountryCode:(id)a3;
- (CLSHolidayCalendarEventDateRuleDelegate)dateRuleDelegate;
- (CLSHolidayCalendarEventRule)initWithEventDescription:(id)a3 deviceRegionCode:(id)a4;
- (double)languageScoreForLanguageCode:(id)a3;
- (double)locationScoreForCountryCode:(id)a3;
- (id)_dateRuleForDate:(id)a3 countryCode:(id)a4;
- (id)_dateRuleForDate:(id)a3 supportedLocale:(id)a4;
- (id)_localeOverrideForDescription:(id)a3 uppercaseLocaleCode:(BOOL)a4;
- (id)_scoreForEventOverride:(id)a3 sceneNames:(id)a4;
- (id)allSceneNames;
- (id)description;
- (id)localDateByEvaluatingRuleForDate:(id)a3 countryCode:(id)a4;
- (id)localDateByEvaluatingRuleForDate:(id)a3 languageCode:(id)a4;
- (id)scoreForCountryCode:(id)a3 sceneNames:(id)a4;
- (id)scoreForLanguageCode:(id)a3 sceneNames:(id)a4;
- (unint64_t)category;
- (void)_enumerateDatesFromStartDate:(id)a3 toEndDate:(id)a4 supportedLocale:(id)a5 usingBlock:(id)a6;
- (void)enumerateDatesFromStartDate:(id)a3 toEndDate:(id)a4 countryCode:(id)a5 usingBlock:(id)a6;
- (void)setDateRuleDelegate:(id)a3;
@end

@implementation CLSHolidayCalendarEventRule

- (CLSHolidayCalendarEventDateRuleDelegate)dateRuleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dateRuleDelegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  name = self->_name;
  v4 = [a3 name];
  LOBYTE(name) = [(NSString *)name isEqual:v4];

  return name;
}

- (void)setDateRuleDelegate:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dateRuleDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_dateRuleDelegate, v4);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = self->_defaultDateRules;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * v10++) setDelegate:v4];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v8);
    }

    v11 = [(NSDictionary *)self->_commonCelebratedCountryCodes allValues];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v17 = [v16 dateRuleOverrides];
          v18 = [v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v23;
            do
            {
              v21 = 0;
              do
              {
                if (*v23 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(*(&v22 + 1) + 8 * v21++) setDelegate:v4];
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
            }

            while (v19);
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)_isMatchingOnlyLocalDate:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = [(CLSHolidayCalendarEventRule *)self localDateByEvaluatingRuleForDate:v6 countryCode:a4];
  v8 = [CLSCalendar compareDate:v7 toDate:v6 toUnitGranularities:28];

  return v8 == 0;
}

- (BOOL)backfillForLanguageCodes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self->_backfillForCommonCelebratedLanguages)
        {
          v9 = [(NSDictionary *)self->_commonCelebratedLanguages objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)backfillForCountryCode:(id)a3
{
  v4 = a3;
  if (self->_backfillForAllCountryCodes)
  {
    v5 = 1;
  }

  else if (self->_backfillForCommonCelebratedCountryCodes)
  {
    v6 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:v4];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)triggerMemoryForCountryCode:(id)a3
{
  v4 = a3;
  if (self->_triggerMemoryForAllLocales)
  {
    v5 = 1;
  }

  else if (self->_triggerMemoryForCommonCelebratedCountryCodes)
  {
    v6 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:v4];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)allSceneNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(CLSHolidayCalendarEventRuleRequiredTraits *)self->_requiredTraits defaultScenesWithImportanceString];
  v5 = [v4 allKeys];
  [v3 addObjectsFromArray:v5];

  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__CLSHolidayCalendarEventRule_allSceneNames__block_invoke;
  v17[3] = &unk_2788A6C08;
  v7 = v3;
  v18 = v7;
  [(NSDictionary *)commonCelebratedCountryCodes enumerateKeysAndObjectsUsingBlock:v17];
  commonCelebratedLanguages = self->_commonCelebratedLanguages;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__CLSHolidayCalendarEventRule_allSceneNames__block_invoke_2;
  v15 = &unk_2788A6C08;
  v16 = v7;
  v9 = v7;
  [(NSDictionary *)commonCelebratedLanguages enumerateKeysAndObjectsUsingBlock:&v12];
  v10 = [v9 allObjects];

  return v10;
}

void __44__CLSHolidayCalendarEventRule_allSceneNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 sceneImportanceOverrides];
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [v4 allKeys];
    [v5 addObjectsFromArray:v6];

    v4 = v7;
  }
}

void __44__CLSHolidayCalendarEventRule_allSceneNames__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 sceneImportanceOverrides];
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [v4 allKeys];
    [v5 addObjectsFromArray:v6];

    v4 = v7;
  }
}

- (id)_scoreForEventOverride:(id)a3 sceneNames:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CLSHolidayDetectedScenes);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(CLSHolidayCalendarEventRuleRequiredTraits *)self->_requiredTraits importanceForScene:v14, v20];
        if (v6)
        {
          v16 = [v6 sceneImportanceStringForSceneName:v14];
          if (v16)
          {
            v17 = v16;
            v18 = [CLSHolidayCalendarEventRuleRequiredTraits importanceEnumForImportanceString:v16];

            if (v18)
            {
              v15 = v18;
            }
          }
        }

        [(CLSHolidayDetectedScenes *)v8 recordDetectedSceneImportance:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)scoreForLanguageCode:(id)a3 sceneNames:(id)a4
{
  commonCelebratedLanguages = self->_commonCelebratedLanguages;
  v7 = a4;
  v8 = [(NSDictionary *)commonCelebratedLanguages objectForKeyedSubscript:a3];
  v9 = [(CLSHolidayCalendarEventRule *)self _scoreForEventOverride:v8 sceneNames:v7];

  return v9;
}

- (id)scoreForCountryCode:(id)a3 sceneNames:(id)a4
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  v7 = a4;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:a3];
  v9 = [(CLSHolidayCalendarEventRule *)self _scoreForEventOverride:v8 sceneNames:v7];

  return v9;
}

- (double)languageScoreForLanguageCode:(id)a3
{
  v3 = [(NSDictionary *)self->_commonCelebratedLanguages objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    [v3 locationScore];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)locationScoreForCountryCode:(id)a3
{
  defaultLocationScore = self->_defaultLocationScore;
  v4 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    [v4 locationScore];
    defaultLocationScore = v6;
  }

  return defaultLocationScore;
}

- (unint64_t)category
{
  v2 = [(CLSHolidayCalendarEventRule *)self requiredTraits];
  v3 = [v2 eventCategory];

  return v3;
}

- (BOOL)isCelebration
{
  v2 = [(CLSHolidayCalendarEventRule *)self requiredTraits];
  v3 = [v2 isCelebration];

  return v3;
}

- (void)_enumerateDatesFromStartDate:(id)a3 toEndDate:(id)a4 supportedLocale:(id)a5 usingBlock:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12 && ([v12 dateRuleOverrides], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    v16 = [v12 dateRuleOverrides];
  }

  else
  {
    v16 = self->_defaultDateRules;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v16;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21++) enumerateDatesFromStartDate:v10 toEndDate:v11 usingBlock:{v13, v22}];
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (void)enumerateDatesFromStartDate:(id)a3 toEndDate:(id)a4 countryCode:(id)a5 usingBlock:(id)a6
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:a5];
  [(CLSHolidayCalendarEventRule *)self _enumerateDatesFromStartDate:v13 toEndDate:v12 supportedLocale:v14 usingBlock:v11];
}

- (id)_dateRuleForDate:(id)a3 supportedLocale:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ([v7 dateRuleOverrides], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
  {
    v11 = [v8 dateRuleOverrides];
  }

  else
  {
    v11 = self->_defaultDateRules;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v22 = v8;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 calendarIdentifier];
        v18 = [CLSCalendar components:6 fromDate:v6 withCalendarIdentifier:v17];

        v19 = [v18 era];
        v20 = [v18 year];
        if ((![v16 hasExplicitEra] || objc_msgSend(v16, "matchesExplicitEra:", v19)) && (!objc_msgSend(v16, "hasExplicitYear") || objc_msgSend(v16, "matchesExplicitYear:", v20)) && (!objc_msgSend(v16, "hasStartEra") || v19 >= objc_msgSend(v16, "startEra")) && (!objc_msgSend(v16, "hasStartYear") || v20 >= objc_msgSend(v16, "startYear") || objc_msgSend(v16, "hasStartEra") && v19 != objc_msgSend(v16, "startEra")) && (!objc_msgSend(v16, "hasEndEra") || v19 <= objc_msgSend(v16, "endEra")) && (!objc_msgSend(v16, "hasEndYear") || v20 <= objc_msgSend(v16, "endYear") || objc_msgSend(v16, "hasEndEra") && v19 != objc_msgSend(v16, "endEra")))
        {
          v13 = v16;

          goto LABEL_30;
        }
      }

      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

LABEL_30:
    v8 = v22;
  }

  return v13;
}

- (id)_dateRuleForDate:(id)a3 countryCode:(id)a4
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  v7 = a3;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:a4];
  v9 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:v7 supportedLocale:v8];

  return v9;
}

- (id)localDateByEvaluatingRuleForDate:(id)a3 languageCode:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_commonCelebratedLanguages objectForKeyedSubscript:a4];
  if (v7)
  {
    v8 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:v6 supportedLocale:v7];
    v9 = [v8 localDateByEvaluatingRuleForDate:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localDateByEvaluatingRuleForDate:(id)a3 countryCode:(id)a4
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  v7 = a3;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:a4];
  v9 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:v7 supportedLocale:v8];
  v10 = [v9 localDateByEvaluatingRuleForDate:v7];

  return v10;
}

- (BOOL)evaluateWithLocalDate:(id)a3 traits:(id)a4 countryCode:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(CLSHolidayCalendarEventRule *)self evaluateOnlyTraits:a4 evaluateLocationTraits:1])
  {
    v10 = [(CLSHolidayCalendarEventRule *)self _isMatchingOnlyLocalDate:v8 countryCode:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLSHolidayCalendarEventRule;
  v4 = [(CLSHolidayCalendarEventRule *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, name: %@", v4, self->_name];

  return v5;
}

- (id)_localeOverrideForDescription:(id)a3 uppercaseLocaleCode:(BOOL)a4
{
  v27 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v26 = *v37;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"locale"];
        v8 = v7;
        if (v27)
        {
          v9 = [v7 uppercaseString];

          v8 = v9;
        }

        v10 = [v6 objectForKeyedSubscript:@"uuid"];
        v11 = [v6 objectForKeyedSubscript:@"dateRuleOverrides"];
        v12 = [v6 objectForKeyedSubscript:@"locationScore"];
        [v12 doubleValue];
        v14 = v13;

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v11)
        {
          v30 = v11;
          v31 = v10;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v11;
          v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [[CLSHolidayCalendarEventDateRule alloc] initWithEventDescription:*(*(&v32 + 1) + 8 * j)];
                [v15 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v18);
          }

          v11 = v30;
          v10 = v31;
        }

        v22 = [v6 objectForKeyedSubscript:@"sceneImportanceOverrides"];
        v23 = [[CLSHolidayCalendarEventOverrides alloc] initWithUUID:v10 countryCode:v8 dateRuleOverrides:v15 locationScore:v22 sceneImportanceOverrides:v14];
        [v28 setObject:v23 forKeyedSubscript:v8];
      }

      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  return v28;
}

- (CLSHolidayCalendarEventRule)initWithEventDescription:(id)a3 deviceRegionCode:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v50.receiver = self;
  v50.super_class = CLSHolidayCalendarEventRule;
  v8 = [(CLSHolidayCalendarEventRule *)&v50 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"nameOverrideByDeviceRegion"];
    v10 = [v6 objectForKeyedSubscript:@"name"];
    name = v8->_name;
    v8->_name = v10;

    if (v7 && v9)
    {
      v12 = [v7 lowercaseString];
      v13 = [v9 objectForKeyedSubscript:v12];

      if (v13)
      {
        objc_storeStrong(&v8->_name, v13);
      }
    }

    v44 = v9;
    v45 = v7;
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v8->_name value:v8->_name table:@"Localizable"];
    localizedName = v8->_localizedName;
    v8->_localizedName = v15;

    v43 = [v6 objectForKeyedSubscript:@"traits"];
    v17 = [[CLSHolidayCalendarEventRuleRequiredTraits alloc] initWithDescription:v43];
    requiredTraits = v8->_requiredTraits;
    v8->_requiredTraits = v17;

    v19 = [v6 objectForKeyedSubscript:@"dateRules"];
    v42 = [v6 objectForKeyedSubscript:@"commonCelebratedCountryCodes"];
    v20 = [v6 objectForKeyedSubscript:@"commonCelebratedLanguages"];
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        v26 = 0;
        do
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[CLSHolidayCalendarEventDateRule alloc] initWithEventDescription:*(*(&v46 + 1) + 8 * v26)];
          [(NSArray *)v21 addObject:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v24);
    }

    v28 = [v6 objectForKeyedSubscript:@"defaultLocationScore"];
    [v28 doubleValue];
    v8->_defaultLocationScore = v29;

    v30 = [v6 objectForKeyedSubscript:@"triggerMemoryForAllLocales"];
    v8->_triggerMemoryForAllLocales = [v30 BOOLValue];

    v31 = [v6 objectForKeyedSubscript:@"triggerMemoryForCommonCelebratedCountryCodes"];
    v8->_triggerMemoryForCommonCelebratedCountryCodes = [v31 BOOLValue];

    v32 = [v6 objectForKeyedSubscript:@"backfillForAllCountryCodes"];
    v8->_backfillForAllCountryCodes = [v32 BOOLValue];

    v33 = [v6 objectForKeyedSubscript:@"backfillForCommonCelebratedCountryCodes"];
    v8->_backfillForCommonCelebratedCountryCodes = [v33 BOOLValue];

    v34 = [v6 objectForKeyedSubscript:@"backfillForCommonCelebratedLanguages"];
    v8->_backfillForCommonCelebratedLanguages = [v34 BOOLValue];

    v35 = [v6 objectForKeyedSubscript:@"skipSceneCriteriaIfInteresting"];
    v8->_skipSceneCriteriaIfInteresting = [v35 BOOLValue];

    v36 = [(CLSHolidayCalendarEventRule *)v8 _localeOverrideForDescription:v42 uppercaseLocaleCode:1];
    commonCelebratedCountryCodes = v8->_commonCelebratedCountryCodes;
    v8->_commonCelebratedCountryCodes = v36;

    v38 = [(CLSHolidayCalendarEventRule *)v8 _localeOverrideForDescription:v20 uppercaseLocaleCode:0];
    commonCelebratedLanguages = v8->_commonCelebratedLanguages;
    v8->_commonCelebratedLanguages = v38;

    defaultDateRules = v8->_defaultDateRules;
    v8->_defaultDateRules = v21;

    v7 = v45;
  }

  return v8;
}

+ (id)localizedSynonymsForHolidayName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [&unk_28449B430 objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:v9 value:v9 table:@"Localizable"];

          v12 = [v11 componentsSeparatedByString:@"|"];
          [v4 addObjectsFromArray:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)localizedNameForName:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  return v6;
}

@end
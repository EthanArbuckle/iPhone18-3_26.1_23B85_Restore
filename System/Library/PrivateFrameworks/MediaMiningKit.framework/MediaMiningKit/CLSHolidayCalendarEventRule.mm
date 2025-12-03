@interface CLSHolidayCalendarEventRule
+ (id)localizedNameForName:(id)name;
+ (id)localizedSynonymsForHolidayName:(id)name;
- (BOOL)_isMatchingOnlyLocalDate:(id)date countryCode:(id)code;
- (BOOL)backfillForCountryCode:(id)code;
- (BOOL)backfillForLanguageCodes:(id)codes;
- (BOOL)evaluateWithLocalDate:(id)date traits:(id)traits countryCode:(id)code;
- (BOOL)isCelebration;
- (BOOL)isEqual:(id)equal;
- (BOOL)triggerMemoryForCountryCode:(id)code;
- (CLSHolidayCalendarEventDateRuleDelegate)dateRuleDelegate;
- (CLSHolidayCalendarEventRule)initWithEventDescription:(id)description deviceRegionCode:(id)code;
- (double)languageScoreForLanguageCode:(id)code;
- (double)locationScoreForCountryCode:(id)code;
- (id)_dateRuleForDate:(id)date countryCode:(id)code;
- (id)_dateRuleForDate:(id)date supportedLocale:(id)locale;
- (id)_localeOverrideForDescription:(id)description uppercaseLocaleCode:(BOOL)code;
- (id)_scoreForEventOverride:(id)override sceneNames:(id)names;
- (id)allSceneNames;
- (id)description;
- (id)localDateByEvaluatingRuleForDate:(id)date countryCode:(id)code;
- (id)localDateByEvaluatingRuleForDate:(id)date languageCode:(id)code;
- (id)scoreForCountryCode:(id)code sceneNames:(id)names;
- (id)scoreForLanguageCode:(id)code sceneNames:(id)names;
- (unint64_t)category;
- (void)_enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate supportedLocale:(id)locale usingBlock:(id)block;
- (void)enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate countryCode:(id)code usingBlock:(id)block;
- (void)setDateRuleDelegate:(id)delegate;
@end

@implementation CLSHolidayCalendarEventRule

- (CLSHolidayCalendarEventDateRuleDelegate)dateRuleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dateRuleDelegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  name = self->_name;
  name = [equal name];
  LOBYTE(name) = [(NSString *)name isEqual:name];

  return name;
}

- (void)setDateRuleDelegate:(id)delegate
{
  v37 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_dateRuleDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_dateRuleDelegate, delegateCopy);
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

          [*(*(&v30 + 1) + 8 * v10++) setDelegate:delegateCopy];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v8);
    }

    allValues = [(NSDictionary *)self->_commonCelebratedCountryCodes allValues];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [allValues countByEnumeratingWithState:&v26 objects:v35 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          dateRuleOverrides = [v16 dateRuleOverrides];
          v18 = [dateRuleOverrides countByEnumeratingWithState:&v22 objects:v34 count:16];
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
                  objc_enumerationMutation(dateRuleOverrides);
                }

                [*(*(&v22 + 1) + 8 * v21++) setDelegate:delegateCopy];
              }

              while (v19 != v21);
              v19 = [dateRuleOverrides countByEnumeratingWithState:&v22 objects:v34 count:16];
            }

            while (v19);
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [allValues countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)_isMatchingOnlyLocalDate:(id)date countryCode:(id)code
{
  dateCopy = date;
  v7 = [(CLSHolidayCalendarEventRule *)self localDateByEvaluatingRuleForDate:dateCopy countryCode:code];
  v8 = [CLSCalendar compareDate:v7 toDate:dateCopy toUnitGranularities:28];

  return v8 == 0;
}

- (BOOL)backfillForLanguageCodes:(id)codes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  codesCopy = codes;
  v5 = [codesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(codesCopy);
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

      v6 = [codesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)backfillForCountryCode:(id)code
{
  codeCopy = code;
  if (self->_backfillForAllCountryCodes)
  {
    v5 = 1;
  }

  else if (self->_backfillForCommonCelebratedCountryCodes)
  {
    v6 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:codeCopy];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)triggerMemoryForCountryCode:(id)code
{
  codeCopy = code;
  if (self->_triggerMemoryForAllLocales)
  {
    v5 = 1;
  }

  else if (self->_triggerMemoryForCommonCelebratedCountryCodes)
  {
    v6 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:codeCopy];
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
  defaultScenesWithImportanceString = [(CLSHolidayCalendarEventRuleRequiredTraits *)self->_requiredTraits defaultScenesWithImportanceString];
  allKeys = [defaultScenesWithImportanceString allKeys];
  [v3 addObjectsFromArray:allKeys];

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
  allObjects = [v9 allObjects];

  return allObjects;
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

- (id)_scoreForEventOverride:(id)override sceneNames:(id)names
{
  v25 = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  namesCopy = names;
  v8 = objc_alloc_init(CLSHolidayDetectedScenes);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = namesCopy;
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
        if (overrideCopy)
        {
          v16 = [overrideCopy sceneImportanceStringForSceneName:v14];
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

- (id)scoreForLanguageCode:(id)code sceneNames:(id)names
{
  commonCelebratedLanguages = self->_commonCelebratedLanguages;
  namesCopy = names;
  v8 = [(NSDictionary *)commonCelebratedLanguages objectForKeyedSubscript:code];
  v9 = [(CLSHolidayCalendarEventRule *)self _scoreForEventOverride:v8 sceneNames:namesCopy];

  return v9;
}

- (id)scoreForCountryCode:(id)code sceneNames:(id)names
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  namesCopy = names;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:code];
  v9 = [(CLSHolidayCalendarEventRule *)self _scoreForEventOverride:v8 sceneNames:namesCopy];

  return v9;
}

- (double)languageScoreForLanguageCode:(id)code
{
  v3 = [(NSDictionary *)self->_commonCelebratedLanguages objectForKeyedSubscript:code];
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

- (double)locationScoreForCountryCode:(id)code
{
  defaultLocationScore = self->_defaultLocationScore;
  v4 = [(NSDictionary *)self->_commonCelebratedCountryCodes objectForKeyedSubscript:code];
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
  requiredTraits = [(CLSHolidayCalendarEventRule *)self requiredTraits];
  eventCategory = [requiredTraits eventCategory];

  return eventCategory;
}

- (BOOL)isCelebration
{
  requiredTraits = [(CLSHolidayCalendarEventRule *)self requiredTraits];
  isCelebration = [requiredTraits isCelebration];

  return isCelebration;
}

- (void)_enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate supportedLocale:(id)locale usingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  localeCopy = locale;
  blockCopy = block;
  if (localeCopy && ([localeCopy dateRuleOverrides], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    dateRuleOverrides = [localeCopy dateRuleOverrides];
  }

  else
  {
    dateRuleOverrides = self->_defaultDateRules;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = dateRuleOverrides;
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

        [*(*(&v22 + 1) + 8 * v21++) enumerateDatesFromStartDate:dateCopy toEndDate:endDateCopy usingBlock:{blockCopy, v22}];
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (void)enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate countryCode:(id)code usingBlock:(id)block
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  blockCopy = block;
  endDateCopy = endDate;
  dateCopy = date;
  v14 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:code];
  [(CLSHolidayCalendarEventRule *)self _enumerateDatesFromStartDate:dateCopy toEndDate:endDateCopy supportedLocale:v14 usingBlock:blockCopy];
}

- (id)_dateRuleForDate:(id)date supportedLocale:(id)locale
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  localeCopy = locale;
  v8 = localeCopy;
  if (localeCopy && ([localeCopy dateRuleOverrides], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
  {
    dateRuleOverrides = [v8 dateRuleOverrides];
  }

  else
  {
    dateRuleOverrides = self->_defaultDateRules;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = dateRuleOverrides;
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
        calendarIdentifier = [v16 calendarIdentifier];
        v18 = [CLSCalendar components:6 fromDate:dateCopy withCalendarIdentifier:calendarIdentifier];

        v19 = [v18 era];
        year = [v18 year];
        if ((![v16 hasExplicitEra] || objc_msgSend(v16, "matchesExplicitEra:", v19)) && (!objc_msgSend(v16, "hasExplicitYear") || objc_msgSend(v16, "matchesExplicitYear:", year)) && (!objc_msgSend(v16, "hasStartEra") || v19 >= objc_msgSend(v16, "startEra")) && (!objc_msgSend(v16, "hasStartYear") || year >= objc_msgSend(v16, "startYear") || objc_msgSend(v16, "hasStartEra") && v19 != objc_msgSend(v16, "startEra")) && (!objc_msgSend(v16, "hasEndEra") || v19 <= objc_msgSend(v16, "endEra")) && (!objc_msgSend(v16, "hasEndYear") || year <= objc_msgSend(v16, "endYear") || objc_msgSend(v16, "hasEndEra") && v19 != objc_msgSend(v16, "endEra")))
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

- (id)_dateRuleForDate:(id)date countryCode:(id)code
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  dateCopy = date;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:code];
  v9 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:dateCopy supportedLocale:v8];

  return v9;
}

- (id)localDateByEvaluatingRuleForDate:(id)date languageCode:(id)code
{
  dateCopy = date;
  v7 = [(NSDictionary *)self->_commonCelebratedLanguages objectForKeyedSubscript:code];
  if (v7)
  {
    v8 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:dateCopy supportedLocale:v7];
    v9 = [v8 localDateByEvaluatingRuleForDate:dateCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localDateByEvaluatingRuleForDate:(id)date countryCode:(id)code
{
  commonCelebratedCountryCodes = self->_commonCelebratedCountryCodes;
  dateCopy = date;
  v8 = [(NSDictionary *)commonCelebratedCountryCodes objectForKeyedSubscript:code];
  v9 = [(CLSHolidayCalendarEventRule *)self _dateRuleForDate:dateCopy supportedLocale:v8];
  v10 = [v9 localDateByEvaluatingRuleForDate:dateCopy];

  return v10;
}

- (BOOL)evaluateWithLocalDate:(id)date traits:(id)traits countryCode:(id)code
{
  dateCopy = date;
  codeCopy = code;
  if ([(CLSHolidayCalendarEventRule *)self evaluateOnlyTraits:traits evaluateLocationTraits:1])
  {
    v10 = [(CLSHolidayCalendarEventRule *)self _isMatchingOnlyLocalDate:dateCopy countryCode:codeCopy];
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

- (id)_localeOverrideForDescription:(id)description uppercaseLocaleCode:(BOOL)code
{
  codeCopy = code;
  v42 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(descriptionCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = descriptionCopy;
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
        if (codeCopy)
        {
          uppercaseString = [v7 uppercaseString];

          v8 = uppercaseString;
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

- (CLSHolidayCalendarEventRule)initWithEventDescription:(id)description deviceRegionCode:(id)code
{
  v52 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  codeCopy = code;
  v50.receiver = self;
  v50.super_class = CLSHolidayCalendarEventRule;
  v8 = [(CLSHolidayCalendarEventRule *)&v50 init];
  if (v8)
  {
    v9 = [descriptionCopy objectForKeyedSubscript:@"nameOverrideByDeviceRegion"];
    v10 = [descriptionCopy objectForKeyedSubscript:@"name"];
    name = v8->_name;
    v8->_name = v10;

    if (codeCopy && v9)
    {
      lowercaseString = [codeCopy lowercaseString];
      v13 = [v9 objectForKeyedSubscript:lowercaseString];

      if (v13)
      {
        objc_storeStrong(&v8->_name, v13);
      }
    }

    v44 = v9;
    v45 = codeCopy;
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v8->_name value:v8->_name table:@"Localizable"];
    localizedName = v8->_localizedName;
    v8->_localizedName = v15;

    v43 = [descriptionCopy objectForKeyedSubscript:@"traits"];
    v17 = [[CLSHolidayCalendarEventRuleRequiredTraits alloc] initWithDescription:v43];
    requiredTraits = v8->_requiredTraits;
    v8->_requiredTraits = v17;

    v19 = [descriptionCopy objectForKeyedSubscript:@"dateRules"];
    v42 = [descriptionCopy objectForKeyedSubscript:@"commonCelebratedCountryCodes"];
    v20 = [descriptionCopy objectForKeyedSubscript:@"commonCelebratedLanguages"];
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

    v28 = [descriptionCopy objectForKeyedSubscript:@"defaultLocationScore"];
    [v28 doubleValue];
    v8->_defaultLocationScore = v29;

    v30 = [descriptionCopy objectForKeyedSubscript:@"triggerMemoryForAllLocales"];
    v8->_triggerMemoryForAllLocales = [v30 BOOLValue];

    v31 = [descriptionCopy objectForKeyedSubscript:@"triggerMemoryForCommonCelebratedCountryCodes"];
    v8->_triggerMemoryForCommonCelebratedCountryCodes = [v31 BOOLValue];

    v32 = [descriptionCopy objectForKeyedSubscript:@"backfillForAllCountryCodes"];
    v8->_backfillForAllCountryCodes = [v32 BOOLValue];

    v33 = [descriptionCopy objectForKeyedSubscript:@"backfillForCommonCelebratedCountryCodes"];
    v8->_backfillForCommonCelebratedCountryCodes = [v33 BOOLValue];

    v34 = [descriptionCopy objectForKeyedSubscript:@"backfillForCommonCelebratedLanguages"];
    v8->_backfillForCommonCelebratedLanguages = [v34 BOOLValue];

    v35 = [descriptionCopy objectForKeyedSubscript:@"skipSceneCriteriaIfInteresting"];
    v8->_skipSceneCriteriaIfInteresting = [v35 BOOLValue];

    v36 = [(CLSHolidayCalendarEventRule *)v8 _localeOverrideForDescription:v42 uppercaseLocaleCode:1];
    commonCelebratedCountryCodes = v8->_commonCelebratedCountryCodes;
    v8->_commonCelebratedCountryCodes = v36;

    v38 = [(CLSHolidayCalendarEventRule *)v8 _localeOverrideForDescription:v20 uppercaseLocaleCode:0];
    commonCelebratedLanguages = v8->_commonCelebratedLanguages;
    v8->_commonCelebratedLanguages = v38;

    defaultDateRules = v8->_defaultDateRules;
    v8->_defaultDateRules = v21;

    codeCopy = v45;
  }

  return v8;
}

+ (id)localizedSynonymsForHolidayName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [&unk_28449B430 objectForKeyedSubscript:name];
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

+ (id)localizedNameForName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:nameCopy value:nameCopy table:@"Localizable"];

  return v6;
}

@end
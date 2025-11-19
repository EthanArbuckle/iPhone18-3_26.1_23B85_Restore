@interface CLSHolidayCalendarEventService
- (CLSHolidayCalendarEventService)initWithEventRules:(id)a3 locale:(id)a4;
- (CLSHolidayCalendarEventService)initWithLocale:(id)a3 calendarSourcesURL:(id)a4;
- (id)_ruleWithUUID:(id)a3 countryCode:(id *)a4;
- (id)dateForRuleWithUUID:(id)a3 byEvaluatingForDate:(id)a4;
- (id)eventRuleForHolidayName:(id)a3;
- (id)eventRuleForHolidayName:(id)a3 localDate:(id)a4;
- (id)eventRulesForLocalDate:(id)a3;
- (id)sceneNamesForHolidayName:(id)a3;
- (id)supportedLanguageCodes;
- (id)triggerHolidaysForCountryCode:(id)a3;
- (unint64_t)peopleTraitForHolidayName:(id)a3;
- (void)_enumerateEventRulesWithNames:(id)a3 betweenLocalDate:(id)a4 andLocalDate:(id)a5 supportedCountryCode:(id)a6 usingBlock:(id)a7;
@end

@implementation CLSHolidayCalendarEventService

- (id)_ruleWithUUID:(id)a3 countryCode:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_eventRules;
  v24 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v8 = *v31;
    v25 = v7;
    v22 = *v31;
    v23 = a4;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 commonCelebratedCountryCodes];
        v12 = [v11 allValues];

        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * j);
              v18 = [v17 uuid];
              v19 = [v18 isEqualToString:v6];

              if (v19)
              {
                *v23 = [v17 countryCode];
                v20 = v10;

                v7 = v25;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v7 = v25;
        v8 = v22;
      }

      v20 = 0;
      v24 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

- (id)dateForRuleWithUUID:(id)a3 byEvaluatingForDate:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [(CLSHolidayCalendarEventService *)self _ruleWithUUID:a3 countryCode:&v13];
  v8 = v13;
  v9 = [v7 _dateRuleForDate:v6 countryCode:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 localDateByEvaluatingRuleForDate:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)supportedLanguageCodes
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_eventRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) commonCelebratedLanguages];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 allKeys];
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 allObjects];

  return v12;
}

- (id)eventRuleForHolidayName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_eventRules;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)triggerHolidaysForCountryCode:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_eventRules;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 triggerMemoryForCountryCode:{v4, v13}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_enumerateEventRulesWithNames:(id)a3 betweenLocalDate:(id)a4 andLocalDate:(id)a5 supportedCountryCode:(id)a6 usingBlock:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v42 = a7;
  if (!v14 || !v13 || !v42 || [v13 compare:v14] == 1)
  {
    goto LABEL_32;
  }

  v46 = v14;
  [CLSCalendar dateByAddingYears:-100 toDate:v14];
  v16 = v41 = v12;
  v17 = [v13 laterDate:v16];

  v12 = v41;
  v57 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_eventRules;
  v18 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = v18;
  v20 = *v54;
  v38 = *v54;
  v39 = v15;
  while (2)
  {
    v21 = 0;
    v40 = v19;
    do
    {
      if (*v54 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v44 = v21;
      v22 = *(*(&v53 + 1) + 8 * v21);
      context = objc_autoreleasePoolPush();
      if (!v12 || ([v22 name], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v12, "containsObject:", v23), v23, v24))
      {
        v25 = [v22 explicitlySupportedCountryCodes];
        if (v15)
        {
          v26 = [v22 explicitlySupportedCountryCodes];
          v27 = [v26 containsObject:v15];

          if (!v27)
          {
LABEL_26:

            goto LABEL_27;
          }

          v59 = v15;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];

          v25 = v28;
        }

        v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v25 = v25;
        v30 = [v25 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v50;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v50 != v32)
              {
                objc_enumerationMutation(v25);
              }

              v34 = *(*(&v49 + 1) + 8 * i);
              v35 = objc_autoreleasePoolPush();
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __126__CLSHolidayCalendarEventService__enumerateEventRulesWithNames_betweenLocalDate_andLocalDate_supportedCountryCode_usingBlock___block_invoke;
              v47[3] = &unk_2788A87B0;
              v48 = v29;
              [v22 enumerateDatesFromStartDate:v17 toEndDate:v46 countryCode:v34 usingBlock:v47];

              objc_autoreleasePoolPop(v35);
            }

            v31 = [v25 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v31);
        }

        if ([v29 count])
        {
          v36 = [v29 allObjects];
          v42[2](v42, v22, v36, &v57);
        }

        v37 = v57;

        v19 = v40;
        v12 = v41;
        if (v37)
        {

          objc_autoreleasePoolPop(context);
          v15 = v39;
          goto LABEL_31;
        }

        v20 = v38;
        v15 = v39;
        goto LABEL_26;
      }

LABEL_27:
      objc_autoreleasePoolPop(context);
      v21 = v44 + 1;
    }

    while (v44 + 1 != v19);
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v14 = v46;
  v13 = v17;
LABEL_32:
}

- (id)eventRuleForHolidayName:(id)a3 localDate:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_eventRules;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (self->_locale)
        {
          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 name];
          if ([v13 isEqualToString:v6])
          {
            v14 = [(NSLocale *)self->_locale countryCode];
            v15 = [v12 _isMatchingOnlyLocalDate:v18 countryCode:v14];

            if (v15)
            {
              v16 = v12;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)eventRulesForLocalDate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_eventRules;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        locale = self->_locale;
        if (locale)
        {
          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(NSLocale *)locale countryCode];
          v14 = [v12 _isMatchingOnlyLocalDate:v4 countryCode:v13];

          if (v14)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)peopleTraitForHolidayName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_eventRules;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 127;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v9 = [v11 peopleTrait];
          goto LABEL_12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 127;
  }

LABEL_12:

  return v9;
}

- (id)sceneNamesForHolidayName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_eventRules;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v9 = [v11 allSceneNames];
          goto LABEL_12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

LABEL_12:

  return v9;
}

- (CLSHolidayCalendarEventService)initWithLocale:(id)a3 calendarSourcesURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 regionCode];
  if (v6)
  {
    [CLSHolidayCalendarEventRulesFactory eventRulesForSourcesURL:v6 deviceRegionCode:v8];
  }

  else
  {
    [CLSHolidayCalendarEventRulesFactory eventRulesInDeviceRegion:v8];
  }
  v9 = ;
  v10 = [(CLSHolidayCalendarEventService *)self initWithEventRules:v9 locale:v7];

  return v10;
}

- (CLSHolidayCalendarEventService)initWithEventRules:(id)a3 locale:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CLSHolidayCalendarEventService;
  v9 = [(CLSHolidayCalendarEventService *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventRules, a3);
    objc_storeStrong(&v10->_locale, a4);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v10->_eventRules;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) setDateRuleDelegate:{v10, v17}];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  return v10;
}

@end
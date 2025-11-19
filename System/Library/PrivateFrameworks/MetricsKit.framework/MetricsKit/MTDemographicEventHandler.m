@interface MTDemographicEventHandler
- (id)ageDataForUserId:(id)a3 updateInterval:(double)a4;
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)totalYearsSinceDate:(id)a3 calendar:(id)a4;
- (void)clearUserDefaultsForTopic:(id)a3;
@end

@implementation MTDemographicEventHandler

- (id)ageDataForUserId:(id)a3 updateInterval:(double)a4
{
  v38[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  v35 = [v7 date];

  v33 = self;
  v8 = [(MTObject *)self metricsKit];
  v9 = [v8 topic];

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [@"MTDemographicDataProviderLastAgeUpdateDate" stringByAppendingString:v9];
  v12 = [@"MTDemographicDataProviderPreviousUserID" stringByAppendingString:v9];
  v34 = [v10 valueForKey:v11];
  v13 = [v10 valueForKey:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToString:v6] && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v35, "timeIntervalSinceDate:", v34), v14 < a4))
  {
    v15 = 0;
  }

  else
  {
    v16 = +[MTFrameworkEnvironment sharedEnvironment];
    v17 = [v16 dateOfBirthComponents];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CBEA80]);
      v19 = [v18 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      [v17 setCalendar:v19];
      [v17 date];
      v20 = v31 = v17;
      v21 = [(MTDemographicEventHandler *)v33 totalYearsSinceDate:v20 calendar:v19];

      v30 = v21;
      [v21 setCalendar:v19];
      v38[0] = v6;
      v37[0] = @"userId";
      v37[1] = @"ageRange";
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "year")}];
      v38[1] = v22;
      v37[2] = @"eventTime";
      [MEMORY[0x277CBEAA8] mt_millisecondsSince1970];
      v23 = v32 = v11;
      v38[2] = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
      v24 = v12;
      v25 = v9;
      v27 = v26 = v6;
      v15 = [(MTEventHandler *)v33 metricsDataWithFields:v27, 0];

      v6 = v26;
      v9 = v25;
      v12 = v24;

      v11 = v32;
      v17 = v31;
      [v10 setValue:v35 forKey:v32];
      [v10 setValue:v6 forKey:v12];
      [v10 synchronize];
    }

    else
    {
      v19 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258F4B000, v19, OS_LOG_TYPE_INFO, "MetricsKit: Skipping demographics update because date of birth is unavailable.", buf, 2u);
      }

      v15 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)clearUserDefaultsForTopic:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v7 = [v3 standardUserDefaults];
  v5 = [@"MTDemographicDataProviderLastAgeUpdateDate" stringByAppendingString:v4];
  [v7 removeObjectForKey:v5];

  v6 = [@"MTDemographicDataProviderPreviousUserID" stringByAppendingString:v4];

  [v7 removeObjectForKey:v6];
  [v7 synchronize];
}

- (id)totalYearsSinceDate:(id)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  v8 = [v7 date];
  v9 = [v5 components:4 fromDate:v6 toDate:v8 options:0];

  return v9;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTDemographicEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C320;
  }

  v6 = v5;

  return v5;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTDemographicEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"demographic";
  }

  v5 = v4;

  return v4;
}

@end
@interface MTDemographicEventHandler
- (id)ageDataForUserId:(id)id updateInterval:(double)interval;
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)totalYearsSinceDate:(id)date calendar:(id)calendar;
- (void)clearUserDefaultsForTopic:(id)topic;
@end

@implementation MTDemographicEventHandler

- (id)ageDataForUserId:(id)id updateInterval:(double)interval
{
  v38[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v7 date];

  selfCopy = self;
  metricsKit = [(MTObject *)self metricsKit];
  topic = [metricsKit topic];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [@"MTDemographicDataProviderLastAgeUpdateDate" stringByAppendingString:topic];
  v12 = [@"MTDemographicDataProviderPreviousUserID" stringByAppendingString:topic];
  v34 = [standardUserDefaults valueForKey:v11];
  v13 = [standardUserDefaults valueForKey:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToString:idCopy] && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(date, "timeIntervalSinceDate:", v34), v14 < interval))
  {
    v15 = 0;
  }

  else
  {
    v16 = +[MTFrameworkEnvironment sharedEnvironment];
    dateOfBirthComponents = [v16 dateOfBirthComponents];

    if (dateOfBirthComponents)
    {
      v18 = objc_alloc(MEMORY[0x277CBEA80]);
      v19 = [v18 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      [dateOfBirthComponents setCalendar:v19];
      [dateOfBirthComponents date];
      v20 = v31 = dateOfBirthComponents;
      v21 = [(MTDemographicEventHandler *)selfCopy totalYearsSinceDate:v20 calendar:v19];

      v30 = v21;
      [v21 setCalendar:v19];
      v38[0] = idCopy;
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
      v25 = topic;
      v27 = v26 = idCopy;
      v15 = [(MTEventHandler *)selfCopy metricsDataWithFields:v27, 0];

      idCopy = v26;
      topic = v25;
      v12 = v24;

      v11 = v32;
      dateOfBirthComponents = v31;
      [standardUserDefaults setValue:date forKey:v32];
      [standardUserDefaults setValue:idCopy forKey:v12];
      [standardUserDefaults synchronize];
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

- (void)clearUserDefaultsForTopic:(id)topic
{
  v3 = MEMORY[0x277CBEBD0];
  topicCopy = topic;
  standardUserDefaults = [v3 standardUserDefaults];
  v5 = [@"MTDemographicDataProviderLastAgeUpdateDate" stringByAppendingString:topicCopy];
  [standardUserDefaults removeObjectForKey:v5];

  v6 = [@"MTDemographicDataProviderPreviousUserID" stringByAppendingString:topicCopy];

  [standardUserDefaults removeObjectForKey:v6];
  [standardUserDefaults synchronize];
}

- (id)totalYearsSinceDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v7 date];
  v9 = [calendarCopy components:4 fromDate:dateCopy toDate:date options:0];

  return v9;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTDemographicEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
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
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"demographic";
  }

  v5 = v4;

  return v4;
}

@end
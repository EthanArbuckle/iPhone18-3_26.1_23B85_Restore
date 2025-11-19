@interface CLSInputTimeClue
+ (id)clueWithDates:(id)a3 serviceManager:(id)a4;
- (NSArray)events;
- (double)timeInterval;
- (id)description;
- (id)localDates;
- (id)localEndDate;
- (id)localStartDate;
- (id)universalDates;
- (id)universalEndDate;
- (id)universalStartDate;
- (unint64_t)numberOfDays;
- (void)_computeDateProperties;
- (void)_prepareWithProgressBlock:(id)a3;
@end

@implementation CLSInputTimeClue

- (void)_computeDateProperties
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_dateComponentsArray;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [CLSCalendar dateFromComponents:v8 inTimeZone:0];
        [v3 addObject:v9];
        v10 = [v8 timeZone];
        v11 = [CLSCalendar dateFromComponents:v8 inTimeZone:v10];

        [v19 addObject:v11];
        p_universalStartDate = &self->_universalStartDate;
        if (!self->_universalStartDate)
        {
          objc_storeStrong(&self->_universalStartDate, v9);
          objc_storeStrong(&self->_universalEndDate, v9);
          objc_storeStrong(&self->_localStartDate, v11);
          p_localEndDate = &self->_localEndDate;
LABEL_14:
          objc_storeStrong(p_localEndDate, v11);
          goto LABEL_15;
        }

        if ([v9 compare:?] == -1 || (p_universalStartDate = &self->_universalEndDate, objc_msgSend(v9, "compare:", self->_universalEndDate) == 1))
        {
          objc_storeStrong(p_universalStartDate, v9);
        }

        p_localEndDate = &self->_localStartDate;
        if ([v11 compare:self->_localStartDate] == -1)
        {
          goto LABEL_14;
        }

        p_localEndDate = &self->_localEndDate;
        if ([v11 compare:self->_localEndDate] == 1)
        {
          goto LABEL_14;
        }

LABEL_15:
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = [MEMORY[0x277CBEB98] setWithSet:v3];
  universalDates = self->_universalDates;
  self->_universalDates = v14;

  v16 = [MEMORY[0x277CBEB98] setWithSet:v19];
  localDates = self->_localDates;
  self->_localDates = v16;
}

- (void)_prepareWithProgressBlock:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_dateComponentsArray)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = self;
    v5 = [(CLSClue *)self value];
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      v9 = 0x277CBE000uLL;
      v31 = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:v11];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [CLSCalendar componentsFromDate:v11 inTimeZone:0];
              [v4 addObject:v12];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = v9;
                v14 = [objc_alloc(MEMORY[0x277CCA948]) initWithTypes:8 error:0];
                v15 = [v14 matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];
                v16 = [v15 objectAtIndex:0];

                v17 = [v16 timeZone];
                v18 = v17;
                if (v17)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = [MEMORY[0x277CBEBB0] systemTimeZone];
                }

                v22 = v19;

                v23 = [v16 date];
                v24 = [CLSCalendar componentsFromDate:v23 inTimeZone:v22];
                [v4 addObject:v24];

                v9 = v13;
                v5 = v31;
              }

              else
              {
                v20 = +[CLSLogging sharedLogging];
                v21 = [v20 loggingConnection];

                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v38 = v11;
                  _os_log_error_impl(&dword_22F907000, v21, OS_LOG_TYPE_ERROR, "Failed to convert date %@ when creating clue", buf, 0xCu);
                }
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&v30->_dateComponentsArray, v4);
    if (!v30->_universalDates)
    {
      [(CLSInputTimeClue *)v30 _computeDateProperties];
    }

    if (!v30->_events)
    {
      if (CLSDeviceIs2GBOrLess_onceToken != -1)
      {
        dispatch_once(&CLSDeviceIs2GBOrLess_onceToken, &__block_literal_global_159);
      }

      if (CLSDeviceIs2GBOrLess_sDeviceIs2GBOrLess)
      {
        events = v30->_events;
        v30->_events = MEMORY[0x277CBEBF8];
      }

      else
      {
        serviceManager = v30->_serviceManager;
        universalEndDate = v30->_universalEndDate;
        v36[0] = v30->_universalStartDate;
        v36[1] = universalEndDate;
        events = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
        v28 = [(CLSServiceManager *)serviceManager eventsForDates:events];
        v29 = v30->_events;
        v30->_events = v28;
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v15.receiver = self;
  v15.super_class = CLSInputTimeClue;
  v4 = [(CLSClue *)&v15 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(CLSInputTimeClue *)self universalDates];
  v7 = [v6 allObjects];
  v8 = [v7 flattenWithSeparator:{@", "}];
  [v5 appendFormat:@"\n\tuniversalDates:[%@]", v8];

  v9 = [(CLSInputTimeClue *)self localDates];
  v10 = [v9 allObjects];
  v11 = [v10 flattenWithSeparator:{@", "}];
  [v5 appendFormat:@"\n\tlocalDates:[%@]", v11];

  if ([(NSArray *)self->_events count])
  {
    v12 = [(NSArray *)self->_events valueForKeyPath:@"title"];
    v13 = [v12 flattenWithSeparator:{@", "}];
    [v5 appendFormat:@"\n\tevents:[%@]", v13];
  }

  return v5;
}

- (NSArray)events
{
  [(CLSInputClue *)self prepareIfNeeded];
  events = self->_events;

  return events;
}

- (unint64_t)numberOfDays
{
  [(CLSInputClue *)self prepareIfNeeded];
  [(NSDate *)self->_localEndDate timeIntervalSinceDate:self->_localStartDate];
  return (ceil(v3) / 86400.0);
}

- (double)timeInterval
{
  [(CLSInputClue *)self prepareIfNeeded];
  localEndDate = self->_localEndDate;
  localStartDate = self->_localStartDate;

  [(NSDate *)localEndDate timeIntervalSinceDate:localStartDate];
  return result;
}

- (id)localEndDate
{
  [(CLSInputClue *)self prepareIfNeeded];
  localEndDate = self->_localEndDate;

  return localEndDate;
}

- (id)localStartDate
{
  [(CLSInputClue *)self prepareIfNeeded];
  localStartDate = self->_localStartDate;

  return localStartDate;
}

- (id)localDates
{
  [(CLSInputClue *)self prepareIfNeeded];
  localDates = self->_localDates;

  return localDates;
}

- (id)universalEndDate
{
  [(CLSInputClue *)self prepareIfNeeded];
  universalEndDate = self->_universalEndDate;

  return universalEndDate;
}

- (id)universalStartDate
{
  [(CLSInputClue *)self prepareIfNeeded];
  universalStartDate = self->_universalStartDate;

  return universalStartDate;
}

- (id)universalDates
{
  [(CLSInputClue *)self prepareIfNeeded];
  universalDates = self->_universalDates;

  return universalDates;
}

+ (id)clueWithDates:(id)a3 serviceManager:(id)a4
{
  v5 = a4;
  v6 = [(CLSClue *)CLSInputTimeClue _clueWithValue:a3 forKey:@"Global Time"];
  v7 = v6[21];
  v6[21] = v5;

  return v6;
}

@end
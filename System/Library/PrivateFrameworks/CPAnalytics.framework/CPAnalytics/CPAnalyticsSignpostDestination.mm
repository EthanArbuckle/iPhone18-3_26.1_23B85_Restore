@interface CPAnalyticsSignpostDestination
- (CPAnalytics)cpAnalyticsInstance;
- (CPAnalyticsSignpostDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (void)_checkSignpostsEndForEvent:(id)event;
- (void)_sendCPAnalyticsEvent:(id)event withPayload:(id)payload withDuration:(double)duration;
- (void)_trackSignpostsStartForEvent:(id)event;
- (void)processEvent:(id)event;
@end

@implementation CPAnalyticsSignpostDestination

- (CPAnalytics)cpAnalyticsInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_cpAnalyticsInstance);

  return WeakRetained;
}

- (void)_sendCPAnalyticsEvent:(id)event withPayload:(id)payload withDuration:(double)duration
{
  v8 = MEMORY[0x277CBEB38];
  eventCopy = event;
  v12 = [v8 dictionaryWithDictionary:payload];
  [v12 removeObjectForKey:@"signpostID"];
  [v12 removeObjectForKey:@"signpostEventName"];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v12 setObject:v10 forKey:@"signpostDuration"];

  cpAnalyticsInstance = [(CPAnalyticsSignpostDestination *)self cpAnalyticsInstance];
  [cpAnalyticsInstance sendEvent:eventCopy withPayload:v12];
}

- (void)_checkSignpostsEndForEvent:(id)event
{
  v29 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  name = [eventCopy name];
  v6 = [name isEqualToString:@"com.photos.CPAnalytics.signpost.end"];

  if (v6)
  {
    v7 = [eventCopy propertyForKey:@"signpostID"];
    v8 = [eventCopy propertyForKey:@"signpostEventName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        cPAnalyticsSignpostIDValue = [v7 CPAnalyticsSignpostIDValue];
        startedSignpostIDs = [(CPAnalyticsSignpostDestination *)self startedSignpostIDs];
        if ([startedSignpostIDs containsIndex:cPAnalyticsSignpostIDValue])
        {
          [startedSignpostIDs removeIndex:cPAnalyticsSignpostIDValue];
          v11 = [CPAnalytics creationDateForSignpost:cPAnalyticsSignpostIDValue];
          if (v11)
          {
            timestamp = [eventCopy timestamp];
            [timestamp timeIntervalSinceDate:v11];
            v14 = v13;

            v15 = [eventCopy propertyForKey:@"cpa_interval_startDate"];
            v16 = [eventCopy propertyForKey:@"cpa_interval_endDate"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v16 timeIntervalSinceDate:v15];
                v14 = v17;
              }
            }

            if (v14 < 0.0)
            {
              timestamp2 = [eventCopy timestamp];
              [timestamp2 timeIntervalSinceReferenceDate];
              v20 = v19;

              if (v20 >= 0.0)
              {
                v14 = -v14;
              }

              else
              {
                v14 = -(v14 - v20 * 2.0);
              }
            }

            if (v14 < 0.0)
            {
              v21 = CPAnalyticsLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v24 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
                v25 = 138412546;
                v26 = v24;
                v27 = 2112;
                v28 = v11;
                _os_log_error_impl(&dword_24260A000, v21, OS_LOG_TYPE_ERROR, "signpost duration should not be negative. Duration: %@, start date: %@", &v25, 0x16u);
              }

              v14 = 0.0;
            }

            copyRawPayload = [eventCopy copyRawPayload];
            [(CPAnalyticsSignpostDestination *)self _sendCPAnalyticsEvent:v8 withPayload:copyRawPayload withDuration:v14];
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_trackSignpostsStartForEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  v5 = [name isEqualToString:@"com.photos.CPAnalytics.signpost.start"];

  v6 = eventCopy;
  if (v5)
  {
    v7 = [eventCopy propertyForKey:@"signpostID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cPAnalyticsSignpostIDValue = [v7 CPAnalyticsSignpostIDValue];
      startedSignpostIDs = [(CPAnalyticsSignpostDestination *)self startedSignpostIDs];
      [startedSignpostIDs addIndex:cPAnalyticsSignpostIDValue];
    }

    v6 = eventCopy;
  }
}

- (void)processEvent:(id)event
{
  eventCopy = event;
  [(CPAnalyticsSignpostDestination *)self _trackSignpostsStartForEvent:eventCopy];
  [(CPAnalyticsSignpostDestination *)self _checkSignpostsEndForEvent:eventCopy];
}

- (CPAnalyticsSignpostDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  instanceCopy = instance;
  v11.receiver = self;
  v11.super_class = CPAnalyticsSignpostDestination;
  v6 = [(CPAnalyticsSignpostDestination *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(CPAnalyticsSignpostDestination *)v6 setCpAnalyticsInstance:instanceCopy];
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    startedSignpostIDs = v7->_startedSignpostIDs;
    v7->_startedSignpostIDs = v8;
  }

  return v7;
}

@end
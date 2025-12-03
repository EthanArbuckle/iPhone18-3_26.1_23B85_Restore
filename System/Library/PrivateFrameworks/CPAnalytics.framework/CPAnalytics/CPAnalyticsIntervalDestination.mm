@interface CPAnalyticsIntervalDestination
- (CPAnalyticsIntervalDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_intervalNamesForKey:(id)key inConfiguration:(id)configuration;
- (void)_handleEvent:(id)event withUnknownIntervalName:(id)name;
- (void)processEvent:(id)event;
- (void)sendDashboardIntervalEventForEvent:(id)event;
- (void)updateWithConfig:(id)config;
@end

@implementation CPAnalyticsIntervalDestination

- (void)_handleEvent:(id)event withUnknownIntervalName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  eventCopy = event;
  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = nameCopy;
    _os_log_debug_impl(&dword_24260A000, v8, OS_LOG_TYPE_DEBUG, "Unknown interval: %@. Add this interval to 'interval' destination in CP Analytics config.", &v12, 0xCu);
  }

  cpAnalyticsInstance = [(CPAnalyticsDashboardDestination *)self cpAnalyticsInstance];
  copyRawPayload = [eventCopy copyRawPayload];

  [cpAnalyticsInstance sendEvent:@"com.apple.photos.CPAnalytics.unknownInterval" withPayload:copyRawPayload];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_intervalNamesForKey:(id)key inConfiguration:(id)configuration
{
  v4 = [configuration objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];

  return v5;
}

- (void)sendDashboardIntervalEventForEvent:(id)event
{
  eventCopy = event;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CPAnalyticsIntervalDestination_sendDashboardIntervalEventForEvent___block_invoke;
  v9[3] = &unk_278D61330;
  v5 = eventCopy;
  v10 = v5;
  v6 = __69__CPAnalyticsIntervalDestination_sendDashboardIntervalEventForEvent___block_invoke(v9);
  if ([(CPAnalyticsDashboardDestination *)self isMediaEvent:v5])
  {
    allMediaProperties = [(CPAnalyticsDashboardDestination *)self allMediaProperties];
    v8 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:allMediaProperties fromSourceEvent:v5 intoTargetEventPayload:v6];

    v6 = v8;
  }

  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.interval" fromSourceEvent:v5 payload:v6];
}

id __69__CPAnalyticsIntervalDestination_sendDashboardIntervalEventForEvent___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v3 = [*(a1 + 32) propertyForKey:@"cpa_interval_name"];
  [v2 setObject:v3 forKeyedSubscript:@"cpa_interval_name"];

  v4 = [*(a1 + 32) propertyForKey:@"signpostDuration"];
  [v2 setObject:v4 forKeyedSubscript:@"signpostDuration"];

  return v2;
}

- (void)processEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  v5 = [name isEqualToString:@"com.apple.photos.CPAnalytics.interval"];

  v6 = eventCopy;
  if (v5)
  {
    v7 = [eventCopy propertyForKey:@"cpa_interval_name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      trackedIntervalNames = [(CPAnalyticsIntervalDestination *)self trackedIntervalNames];
      v9 = [trackedIntervalNames containsObject:v7];

      if (v9)
      {
        [(CPAnalyticsIntervalDestination *)self sendDashboardIntervalEventForEvent:eventCopy];
      }

      else
      {
        ignoredIntervalNames = [(CPAnalyticsIntervalDestination *)self ignoredIntervalNames];
        v11 = [ignoredIntervalNames containsObject:v7];

        if ((v11 & 1) == 0)
        {
          [(CPAnalyticsIntervalDestination *)self _handleEvent:eventCopy withUnknownIntervalName:v7];
        }
      }
    }

    else
    {
      [(CPAnalyticsDashboardDestination *)self reportMalformedEvent:eventCopy malformationDescriptionWithFormat:@"unexpected class for payload property %@", @"cpa_interval_name"];
    }

    v6 = eventCopy;
  }
}

- (void)updateWithConfig:(id)config
{
  v20 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [(CPAnalyticsIntervalDestination *)self _intervalNamesForKey:@"trackIntervals" inConfiguration:configCopy];
  ignoredIntervalNames = [(CPAnalyticsIntervalDestination *)self ignoredIntervalNames];
  v7 = [v5 intersectsSet:ignoredIntervalNames];

  if (!v7)
  {
    v8 = [(CPAnalyticsIntervalDestination *)self _intervalNamesForKey:@"ignoreIntervals" inConfiguration:configCopy];
    trackedIntervalNames = [(CPAnalyticsIntervalDestination *)self trackedIntervalNames];
    v11 = [v8 intersectsSet:trackedIntervalNames];

    if (!v11)
    {
      v12 = [(NSSet *)self->_trackedIntervalNames setByAddingObjectsFromSet:v5];
      trackedIntervalNames = self->_trackedIntervalNames;
      self->_trackedIntervalNames = v12;

      v14 = [(NSSet *)self->_ignoredIntervalNames setByAddingObjectsFromSet:v8];
      ignoredIntervalNames = self->_ignoredIntervalNames;
      self->_ignoredIntervalNames = v14;

      goto LABEL_9;
    }

    allObjects2 = CPAnalyticsLog();
    if (os_log_type_enabled(allObjects2, OS_LOG_TYPE_ERROR))
    {
      allObjects = [v8 allObjects];
      v18 = 138412290;
      v19 = allObjects;
      _os_log_error_impl(&dword_24260A000, allObjects2, OS_LOG_TYPE_ERROR, "Ignored intervals names: %@ intersect with tracked interval names.", &v18, 0xCu);
    }

    goto LABEL_7;
  }

  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    allObjects2 = [v5 allObjects];
    v18 = 138412290;
    v19 = allObjects2;
    _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Tracked intervals names: %@ intersect with ignored interval names.", &v18, 0xCu);
LABEL_7:
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsIntervalDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  v14.receiver = self;
  v14.super_class = CPAnalyticsIntervalDestination;
  v7 = [(CPAnalyticsDashboardDestination *)&v14 initWithConfig:configCopy cpAnalyticsInstance:instance];
  v8 = v7;
  if (v7)
  {
    v9 = [(CPAnalyticsIntervalDestination *)v7 _intervalNamesForKey:@"trackIntervals" inConfiguration:configCopy];
    trackedIntervalNames = v8->_trackedIntervalNames;
    v8->_trackedIntervalNames = v9;

    v11 = [(CPAnalyticsIntervalDestination *)v8 _intervalNamesForKey:@"ignoreIntervals" inConfiguration:configCopy];
    ignoredIntervalNames = v8->_ignoredIntervalNames;
    v8->_ignoredIntervalNames = v11;
  }

  return v8;
}

@end
@interface CPAnalyticsIntervalDestination
- (CPAnalyticsIntervalDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (id)_intervalNamesForKey:(id)a3 inConfiguration:(id)a4;
- (void)_handleEvent:(id)a3 withUnknownIntervalName:(id)a4;
- (void)processEvent:(id)a3;
- (void)sendDashboardIntervalEventForEvent:(id)a3;
- (void)updateWithConfig:(id)a3;
@end

@implementation CPAnalyticsIntervalDestination

- (void)_handleEvent:(id)a3 withUnknownIntervalName:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_24260A000, v8, OS_LOG_TYPE_DEBUG, "Unknown interval: %@. Add this interval to 'interval' destination in CP Analytics config.", &v12, 0xCu);
  }

  v9 = [(CPAnalyticsDashboardDestination *)self cpAnalyticsInstance];
  v10 = [v7 copyRawPayload];

  [v9 sendEvent:@"com.apple.photos.CPAnalytics.unknownInterval" withPayload:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_intervalNamesForKey:(id)a3 inConfiguration:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];

  return v5;
}

- (void)sendDashboardIntervalEventForEvent:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CPAnalyticsIntervalDestination_sendDashboardIntervalEventForEvent___block_invoke;
  v9[3] = &unk_278D61330;
  v5 = v4;
  v10 = v5;
  v6 = __69__CPAnalyticsIntervalDestination_sendDashboardIntervalEventForEvent___block_invoke(v9);
  if ([(CPAnalyticsDashboardDestination *)self isMediaEvent:v5])
  {
    v7 = [(CPAnalyticsDashboardDestination *)self allMediaProperties];
    v8 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:v7 fromSourceEvent:v5 intoTargetEventPayload:v6];

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

- (void)processEvent:(id)a3
{
  v12 = a3;
  v4 = [v12 name];
  v5 = [v4 isEqualToString:@"com.apple.photos.CPAnalytics.interval"];

  v6 = v12;
  if (v5)
  {
    v7 = [v12 propertyForKey:@"cpa_interval_name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CPAnalyticsIntervalDestination *)self trackedIntervalNames];
      v9 = [v8 containsObject:v7];

      if (v9)
      {
        [(CPAnalyticsIntervalDestination *)self sendDashboardIntervalEventForEvent:v12];
      }

      else
      {
        v10 = [(CPAnalyticsIntervalDestination *)self ignoredIntervalNames];
        v11 = [v10 containsObject:v7];

        if ((v11 & 1) == 0)
        {
          [(CPAnalyticsIntervalDestination *)self _handleEvent:v12 withUnknownIntervalName:v7];
        }
      }
    }

    else
    {
      [(CPAnalyticsDashboardDestination *)self reportMalformedEvent:v12 malformationDescriptionWithFormat:@"unexpected class for payload property %@", @"cpa_interval_name"];
    }

    v6 = v12;
  }
}

- (void)updateWithConfig:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CPAnalyticsIntervalDestination *)self _intervalNamesForKey:@"trackIntervals" inConfiguration:v4];
  v6 = [(CPAnalyticsIntervalDestination *)self ignoredIntervalNames];
  v7 = [v5 intersectsSet:v6];

  if (!v7)
  {
    v8 = [(CPAnalyticsIntervalDestination *)self _intervalNamesForKey:@"ignoreIntervals" inConfiguration:v4];
    v10 = [(CPAnalyticsIntervalDestination *)self trackedIntervalNames];
    v11 = [v8 intersectsSet:v10];

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

    v9 = CPAnalyticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 allObjects];
      v18 = 138412290;
      v19 = v17;
      _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "Ignored intervals names: %@ intersect with tracked interval names.", &v18, 0xCu);
    }

    goto LABEL_7;
  }

  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v5 allObjects];
    v18 = 138412290;
    v19 = v9;
    _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Tracked intervals names: %@ intersect with ignored interval names.", &v18, 0xCu);
LABEL_7:
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsIntervalDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CPAnalyticsIntervalDestination;
  v7 = [(CPAnalyticsDashboardDestination *)&v14 initWithConfig:v6 cpAnalyticsInstance:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(CPAnalyticsIntervalDestination *)v7 _intervalNamesForKey:@"trackIntervals" inConfiguration:v6];
    trackedIntervalNames = v8->_trackedIntervalNames;
    v8->_trackedIntervalNames = v9;

    v11 = [(CPAnalyticsIntervalDestination *)v8 _intervalNamesForKey:@"ignoreIntervals" inConfiguration:v6];
    ignoredIntervalNames = v8->_ignoredIntervalNames;
    v8->_ignoredIntervalNames = v11;
  }

  return v8;
}

@end
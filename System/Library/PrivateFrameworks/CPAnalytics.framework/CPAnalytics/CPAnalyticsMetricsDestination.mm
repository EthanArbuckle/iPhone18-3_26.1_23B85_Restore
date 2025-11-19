@interface CPAnalyticsMetricsDestination
- (CPAnalyticsMetricsDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (id)_buildCustomCoreAnalyticsPayloadForEvent:(id)a3 withEventRoute:(id)a4;
- (id)_eventRoutesFromConfig:(id)a3;
- (void)processEvent:(id)a3;
- (void)sendCoreAnalyticsEventWithCustomConfig:(id)a3 eventRoute:(id)a4;
- (void)updateWithConfig:(id)a3;
@end

@implementation CPAnalyticsMetricsDestination

- (id)_eventRoutesFromConfig:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"events"];
  if (v3)
  {
    [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v18 = v17 = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 objectForKey:{@"sourceEventMatchCriteria", v17}];
          v11 = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:v10];
          v12 = [[CPAnalyticsMetricEventRoute alloc] initWithConfig:v9];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v18 setObject:v12 forKey:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v3 = v17;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277CCAB00]);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_buildCustomCoreAnalyticsPayloadForEvent:(id)a3 withEventRoute:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v6 propertiesToInclude];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v5 propertyForKey:v13];
        if (v14)
        {
          [v7 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v6 includeEventProperties])
  {
    v15 = [v5 copyRawPayload];
    [v7 addEntriesFromDictionary:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendCoreAnalyticsEventWithCustomConfig:(id)a3 eventRoute:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 destinationEventKey];
  if ([v7 length])
  {
    [v6 destinationEventKey];
  }

  else
  {
    [v10 name];
  }
  v8 = ;

  v9 = [(CPAnalyticsMetricsDestination *)self _buildCustomCoreAnalyticsPayloadForEvent:v10 withEventRoute:v6];
  +[CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:withPayload:shouldSanitize:](CPAnalyticsCoreAnalyticsHelper, "sendCoreAnalyticsEvent:withPayload:shouldSanitize:", v8, v9, [v6 includeEventProperties]);
}

- (void)updateWithConfig:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(CPAnalyticsMetricsDestination *)self _eventRoutesFromConfig:a3];
  if ([v4 count])
  {
    v5 = [(CPAnalyticsMetricsDestination *)self eventRoutes];
    v6 = [v5 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v4 keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v4 objectForKey:v12];
          [(NSMapTable *)v6 setObject:v13 forKey:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    eventRoutes = self->_eventRoutes;
    self->_eventRoutes = v6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CPAnalyticsMetricsDestination *)self eventRoutes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 doesMatch:v4])
        {
          v12 = [v5 objectForKey:v11];
          [(CPAnalyticsMetricsDestination *)self sendCoreAnalyticsEventWithCustomConfig:v4 eventRoute:v12];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v4 name];
  v12 = [v4 copyRawPayload];
  [CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:v6 withPayload:v12 shouldSanitize:1];
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsMetricsDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CPAnalyticsMetricsDestination;
  v6 = [(CPAnalyticsMetricsDestination *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(CPAnalyticsMetricsDestination *)v6 _eventRoutesFromConfig:v5];
    v9 = [v8 copy];
    eventRoutes = v7->_eventRoutes;
    v7->_eventRoutes = v9;
  }

  return v7;
}

@end
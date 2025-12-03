@interface CPAnalyticsMetricsDestination
- (CPAnalyticsMetricsDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_buildCustomCoreAnalyticsPayloadForEvent:(id)event withEventRoute:(id)route;
- (id)_eventRoutesFromConfig:(id)config;
- (void)processEvent:(id)event;
- (void)sendCoreAnalyticsEventWithCustomConfig:(id)config eventRoute:(id)route;
- (void)updateWithConfig:(id)config;
@end

@implementation CPAnalyticsMetricsDestination

- (id)_eventRoutesFromConfig:(id)config
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [config objectForKey:@"events"];
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

- (id)_buildCustomCoreAnalyticsPayloadForEvent:(id)event withEventRoute:(id)route
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  routeCopy = route;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  propertiesToInclude = [routeCopy propertiesToInclude];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [propertiesToInclude countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(propertiesToInclude);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [eventCopy propertyForKey:v13];
        if (v14)
        {
          [v7 setObject:v14 forKey:v13];
        }
      }

      v10 = [propertiesToInclude countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([routeCopy includeEventProperties])
  {
    copyRawPayload = [eventCopy copyRawPayload];
    [v7 addEntriesFromDictionary:copyRawPayload];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendCoreAnalyticsEventWithCustomConfig:(id)config eventRoute:(id)route
{
  configCopy = config;
  routeCopy = route;
  destinationEventKey = [routeCopy destinationEventKey];
  if ([destinationEventKey length])
  {
    [routeCopy destinationEventKey];
  }

  else
  {
    [configCopy name];
  }
  v8 = ;

  v9 = [(CPAnalyticsMetricsDestination *)self _buildCustomCoreAnalyticsPayloadForEvent:configCopy withEventRoute:routeCopy];
  +[CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:withPayload:shouldSanitize:](CPAnalyticsCoreAnalyticsHelper, "sendCoreAnalyticsEvent:withPayload:shouldSanitize:", v8, v9, [routeCopy includeEventProperties]);
}

- (void)updateWithConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(CPAnalyticsMetricsDestination *)self _eventRoutesFromConfig:config];
  if ([v4 count])
  {
    eventRoutes = [(CPAnalyticsMetricsDestination *)self eventRoutes];
    v6 = [eventRoutes copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    keyEnumerator = [v4 keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v4 objectForKey:v12];
          [(NSMapTable *)v6 setObject:v13 forKey:v12];
        }

        v9 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    eventRoutes = self->_eventRoutes;
    self->_eventRoutes = v6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  eventRoutes = [(CPAnalyticsMetricsDestination *)self eventRoutes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [eventRoutes keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 doesMatch:eventCopy])
        {
          copyRawPayload = [eventRoutes objectForKey:v11];
          [(CPAnalyticsMetricsDestination *)self sendCoreAnalyticsEventWithCustomConfig:eventCopy eventRoute:copyRawPayload];
          goto LABEL_11;
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  keyEnumerator = [eventCopy name];
  copyRawPayload = [eventCopy copyRawPayload];
  [CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:keyEnumerator withPayload:copyRawPayload shouldSanitize:1];
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsMetricsDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = CPAnalyticsMetricsDestination;
  v6 = [(CPAnalyticsMetricsDestination *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(CPAnalyticsMetricsDestination *)v6 _eventRoutesFromConfig:configCopy];
    v9 = [v8 copy];
    eventRoutes = v7->_eventRoutes;
    v7->_eventRoutes = v9;
  }

  return v7;
}

@end
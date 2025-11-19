@interface SUUIMetricsPageRenderEvent
+ (BOOL)shouldCollectPageRenderData;
+ (BOOL)shouldCollectPageRenderDataForDocument:(id)a3;
+ (double)_randomDouble;
+ (id)_sampleWindowStartTime;
- (BOOL)isReadyForSubmission;
- (BOOL)platformResponseWasCached;
- (BOOL)xpSamplingForced;
- (NSString)clientCorrelationKey;
- (NSString)description;
- (NSString)launchCorrelationKey;
- (SUUIMetricsPageRenderEvent)init;
- (double)pageAppearTime;
- (double)pageDisappearTime;
- (double)pageRequestedTime;
- (double)pageUserReadyTime;
- (double)platformJsonParseEndTime;
- (double)platformJsonParseStartTime;
- (double)platformRequestStartTime;
- (double)platformResponseEndTime;
- (double)platformResponseStartTime;
- (double)resourceRequestEndTime;
- (double)resourceRequestOnScreenEndTime;
- (double)resourceRequestStartTime;
- (double)xpSamplingPercentageUsers;
- (double)xpSessionDuration;
- (void)addDOMChange:(id)a3;
- (void)addRequest:(id)a3;
- (void)appendPropertiesToBody:(id)a3;
- (void)appendSamplingPropertiesFromClientContext:(id)a3;
- (void)populateObjectInspector:(id)a3;
- (void)setClientCorrelationKey:(id)a3;
- (void)setLaunchCorrelationKey:(id)a3;
- (void)setPageAppearTime:(double)a3;
- (void)setPageDisappearTime:(double)a3;
- (void)setPageRequestedTime:(double)a3;
- (void)setPageUserReadyTime:(double)a3;
- (void)setPlatformJsonParseEndTime:(double)a3;
- (void)setPlatformJsonParseStartTime:(double)a3;
- (void)setPlatformRequestStartTime:(double)a3;
- (void)setPlatformResponseEndTime:(double)a3;
- (void)setPlatformResponseStartTime:(double)a3;
- (void)setPlatformResponseWasCached:(BOOL)a3;
- (void)setResourceRequestEndTime:(double)a3;
- (void)setResourceRequestOnScreenEndTime:(double)a3;
- (void)setResourceRequestStartTime:(double)a3;
- (void)setXPSamplingForced:(BOOL)a3;
- (void)setXPSamplingPercentageUsers:(double)a3;
- (void)setXPSessionDuration:(double)a3;
@end

@implementation SUUIMetricsPageRenderEvent

- (SUUIMetricsPageRenderEvent)init
{
  v9.receiver = self;
  v9.super_class = SUUIMetricsPageRenderEvent;
  v2 = [(SSMetricsBaseEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"pageRender"];
    [(SSMetricsMutableEvent *)v3 setTopic:@"xp_amp_clientperf"];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    domChanges = v3->_domChanges;
    v3->_domChanges = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v3->_requests;
    v3->_requests = v6;
  }

  return v3;
}

+ (BOOL)shouldCollectPageRenderData
{
  if (+[SUUIMetricsUtilities shouldLogTimingMetrics](SUUIMetricsUtilities, "shouldLogTimingMetrics") || +[SUUIMetricsUtilities trackAllEvents])
  {
    return 1;
  }

  v4 = [MEMORY[0x277D69BC0] sharedInstance];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v4 sessionDurationPageRender];
  v7 = v6;
  v8 = [a1 _sampleWindowStartTime];
  v9 = [v8 dateByAddingTimeInterval:v7];

  if ([v5 compare:v9] == -1)
  {
    v3 = 1;
  }

  else
  {
    [a1 _randomDouble];
    if (v10 == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v11 = v10;
      [v4 samplingPercentageUsersPageRender];
      v3 = v11 <= v12;
      if (v11 <= v12)
      {
        [a1 _setSampleWindowStartTime:v5];
      }

      [v4 update];
    }
  }

  return v3;
}

+ (BOOL)shouldCollectPageRenderDataForDocument:(id)a3
{
  v4 = a3;
  if ([a1 shouldCollectPageRenderData])
  {
    v5 = [v4 templateElement];
    v6 = [v5 elementType] != 148;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)_randomDouble
{
  if (_randomDouble_onceToken == -1)
  {
  }

  else
  {
    +[SUUIMetricsPageRenderEvent _randomDouble];
  }

  return drand48();
}

void __43__SUUIMetricsPageRenderEvent__randomDouble__block_invoke()
{
  v0 = arc4random();

  srand48(v0);
}

+ (id)_sampleWindowStartTime
{
  v2 = CFPreferencesCopyAppValue(@"SUUIMetricsPageRenderEventSampleWindowStartTime", *MEMORY[0x277D6A708]);

  return v2;
}

- (void)setClientCorrelationKey:(id)a3
{
  v4 = [a3 copy];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"clientCorrelationKey"];
}

- (NSString)clientCorrelationKey
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"clientCorrelationKey"];
  v3 = [v2 copy];

  return v3;
}

- (void)setLaunchCorrelationKey:(id)a3
{
  v4 = [a3 copy];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"launchCorrelationKey"];
}

- (NSString)launchCorrelationKey
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"launchCorrelationKey"];
  v3 = [v2 copy];

  return v3;
}

- (void)setPageRequestedTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageRequestedTime"];
}

- (double)pageRequestedTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageRequestedTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPageAppearTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageAppearTime"];
}

- (double)pageAppearTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageAppearTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPageDisappearTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageDisappearTime"];
}

- (double)pageDisappearTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageDisappearTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPlatformRequestStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformRequestStartTime"];
}

- (double)platformRequestStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformRequestStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPlatformResponseStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformResponseStartTime"];
}

- (double)platformResponseStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformResponseStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPlatformResponseEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformResponseEndTime"];
}

- (double)platformResponseEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformResponseEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPlatformResponseWasCached:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformResponseWasCached"];
}

- (BOOL)platformResponseWasCached
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformResponseWasCached"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPlatformJsonParseStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformJsonParseStartTime"];
}

- (double)platformJsonParseStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformJsonParseStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPlatformJsonParseEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"platformJsonParseEndTime"];
}

- (double)platformJsonParseEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"platformJsonParseEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)addDOMChange:(id)a3
{
  domChanges = self->_domChanges;
  v4 = [a3 copy];
  [(NSMutableArray *)domChanges addObject:v4];
}

- (void)addRequest:(id)a3
{
  requests = self->_requests;
  v4 = [a3 copy];
  [(NSMutableArray *)requests addObject:v4];
}

- (void)setResourceRequestStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"resourceRequestStartTime"];
}

- (double)resourceRequestStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"resourceRequestStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setResourceRequestOnScreenEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"resourceRequestOnScreenEndTime"];
}

- (double)resourceRequestOnScreenEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"resourceRequestOnScreenEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setResourceRequestEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"resourceRequestEndTime"];
}

- (double)resourceRequestEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"resourceRequestEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setPageUserReadyTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageUserReadyTime"];
}

- (double)pageUserReadyTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageUserReadyTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setXPSessionDuration:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSessionDuration"];
}

- (double)xpSessionDuration
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSessionDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setXPSamplingForced:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingForced"];
}

- (BOOL)xpSamplingForced
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSamplingForced"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setXPSamplingPercentageUsers:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageUsers"];
}

- (double)xpSamplingPercentageUsers
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSamplingPercentageUsers"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)appendSamplingPropertiesFromClientContext:(id)a3
{
  v4 = [a3 existingBagValueForKey:*MEMORY[0x277D6A4F8]];
  v5 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x277D69B38] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v16[0] = 0;
      LODWORD(v15) = 2;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, v16, v15}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v6 = [v4 objectForKeyedSubscript:@"performance"];
  v7 = [v6 objectForKeyedSubscript:@"sessionDuration"];
  [v7 doubleValue];
  [(SUUIMetricsPageRenderEvent *)self setXPSessionDuration:?];

  v8 = [v6 objectForKeyedSubscript:@"samplingPercentageUsers"];
  [v8 doubleValue];
  [(SUUIMetricsPageRenderEvent *)self setXPSamplingPercentageUsers:?];

  if (+[SUUIMetricsUtilities shouldLogTimingMetrics])
  {
    [(SUUIMetricsPageRenderEvent *)self setXPSamplingForced:1];
    [(SUUIMetricsPageRenderEvent *)self setXPSamplingPercentageUsers:1.0];
  }

LABEL_16:
}

- (BOOL)isReadyForSubmission
{
  [(SUUIMetricsPageRenderEvent *)self pageAppearTime];
  if (v3 <= 2.22044605e-16)
  {
    return 0;
  }

  [(SUUIMetricsPageRenderEvent *)self resourceRequestStartTime];
  if (v4 <= 2.22044605e-16)
  {
    return 0;
  }

  [(SUUIMetricsPageRenderEvent *)self resourceRequestOnScreenEndTime];
  if (v5 <= 2.22044605e-16)
  {
    return 0;
  }

  [(SUUIMetricsPageRenderEvent *)self resourceRequestEndTime];
  if (v6 <= 2.22044605e-16)
  {
    return 0;
  }

  [(SUUIMetricsPageRenderEvent *)self pageUserReadyTime];
  if (v7 <= 2.22044605e-16)
  {
    return 0;
  }

  v8 = [(SUUIMetricsPageRenderEvent *)self domChanges];
  v9 = [v8 count] != 0;

  return v9;
}

- (void)appendPropertiesToBody:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_domChanges count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_domChanges, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = self->_domChanges;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v24 + 1) + 8 * v10) dictionaryRepresentation];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    [v4 setObject:v5 forKeyedSubscript:@"domChanges"];
  }

  if ([(NSMutableArray *)self->_requests count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requests, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_requests;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v20 + 1) + 8 * v17) dictionaryRepresentation];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKeyedSubscript:@"requests"];
  }

  if ([(NSDictionary *)self->_metricsBase count])
  {
    [v4 addEntriesFromDictionary:self->_metricsBase];
  }

  v19.receiver = self;
  v19.super_class = SUUIMetricsPageRenderEvent;
  [(SSMetricsMutableEvent *)&v19 appendPropertiesToBody:v4];
}

- (NSString)description
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v58.receiver = self;
  v58.super_class = SUUIMetricsPageRenderEvent;
  v4 = [(SSMetricsBaseEvent *)&v58 description];
  [v3 appendString:v4];

  v5 = [(SUUIMetricsPageRenderEvent *)self clientCorrelationKey];
  [v3 appendFormat:@"\nclientCorrelationKey = %@", v5];

  v6 = [(SUUIMetricsPageRenderEvent *)self launchCorrelationKey];
  [v3 appendFormat:@"\nlaunchCorrelationKey = %@", v6];

  [(SUUIMetricsPageRenderEvent *)self pageRequestedTime];
  [v3 appendFormat:@"\npageRequestedTime = %f", v7];
  [(SUUIMetricsPageRenderEvent *)self pageAppearTime];
  [v3 appendFormat:@"\npageAppearTime = %f", v8];
  [(SUUIMetricsPageRenderEvent *)self pageDisappearTime];
  [v3 appendFormat:@"\npageDisappearTime = %f", v9];
  [(SUUIMetricsPageRenderEvent *)self platformRequestStartTime];
  [v3 appendFormat:@"\nplatformRequestStartTime = %f", v10];
  [(SUUIMetricsPageRenderEvent *)self platformResponseStartTime];
  [v3 appendFormat:@"\nplatformResponseStartTime = %f", v11];
  [(SUUIMetricsPageRenderEvent *)self platformResponseEndTime];
  [v3 appendFormat:@"\nplatformResponseEndTime = %f", v12];
  v13 = [(SUUIMetricsPageRenderEvent *)self platformResponseWasCached];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  [v3 appendFormat:@"\nplatformResponseWasCached = %@", v14];
  [(SUUIMetricsPageRenderEvent *)self platformJsonParseStartTime];
  [v3 appendFormat:@"\nplatformJsonParseStartTime = %f", v15];
  [(SUUIMetricsPageRenderEvent *)self platformJsonParseEndTime];
  [v3 appendFormat:@"\nplatformJsonParseEndTime = %f", v16];
  objc_msgSend(v3, "appendString:", @"\ndomChanges = (");
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = self;
  obj = self->_domChanges;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v55;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        [v3 appendFormat:@"\n\t{"];
        [v21 buildStartTime];
        [v3 appendFormat:@"\n\t\tbuildStartTime = %f", v22];
        [v21 buildEndTime];
        [v3 appendFormat:@"\n\t\tbuildEndTime = %f", v23];
        [v21 renderStartTime];
        [v3 appendFormat:@"\n\t\trenderStartTime = %f", v24];
        [v21 renderEndTime];
        [v3 appendFormat:@"\n\t\trenderEndTime = %f", v25];
        [v3 appendFormat:@"\n\t}, "];
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v18);
  }

  [v3 appendString:@"\n"]);
  objc_msgSend(v3, "appendString:", @"\ndomChanges = (");
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obja = v47->_requests;
  v26 = [(NSMutableArray *)obja countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v51;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v50 + 1) + 8 * j);
        [v3 appendFormat:@"\n\t{"];
        [v30 requestStartTime];
        [v3 appendFormat:@"\n\t\trequestStartTime = %f", v31];
        [v30 responseStartTime];
        [v3 appendFormat:@"\n\t\tresponseStartTime = %f", v32];
        [v30 responseEndTime];
        [v3 appendFormat:@"\n\t\tresponseEndTime = %f", v33];
        v34 = [v30 responseWasCached];
        v35 = @"NO";
        if (v34)
        {
          v35 = @"YES";
        }

        [v3 appendFormat:@"\n\t\tresponseWasCached = %@", v35];
        [v3 appendFormat:@"\n\t}, "];
      }

      v27 = [(NSMutableArray *)obja countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v27);
  }

  [v3 appendString:@"\n"]);
  [(SUUIMetricsPageRenderEvent *)v47 resourceRequestStartTime];
  [v3 appendFormat:@"\nresourceRequestStartTime = %f", v36];
  [(SUUIMetricsPageRenderEvent *)v47 resourceRequestOnScreenEndTime];
  [v3 appendFormat:@"\nresourceRequestOnScreenEndTime = %f", v37];
  [(SUUIMetricsPageRenderEvent *)v47 resourceRequestEndTime];
  [v3 appendFormat:@"\nresourceRequestEndTime = %f", v38];
  [(SUUIMetricsPageRenderEvent *)v47 pageUserReadyTime];
  [v3 appendFormat:@"\npageUserReadyTime = %f", v39];
  v40 = [(SUUIMetricsPageRenderEvent *)v47 xpSamplingForced];
  v41 = @"NO";
  if (v40)
  {
    v41 = @"YES";
  }

  [v3 appendFormat:@"\nxpSamplingForced = %@", v41];
  [(SUUIMetricsPageRenderEvent *)v47 xpSamplingPercentageUsers];
  [v3 appendFormat:@"\nxpSamplingPercentageUsers = %f", v42];
  [(SUUIMetricsPageRenderEvent *)v47 xpSessionDuration];
  [v3 appendFormat:@"\nxpSessionDuration = %f", v43];
  v44 = [(SUUIMetricsPageRenderEvent *)v47 metricsBase];
  [v3 appendFormat:@"\nmetricsBase = %@", v44];

  v45 = [v3 copy];

  return v45;
}

- (void)populateObjectInspector:(id)a3
{
  v4 = a3;
  [v4 setFriendlyName:@"Page Render Times"];
  [v4 setInformation:@"All times relative to earliest recorded operation time"];
  [(SUUIMetricsPageRenderEvent *)self pageAppearTime];
  v6 = v5;
  [(SUUIMetricsPageRenderEvent *)self pageRequestedTime];
  if (v6 >= v7)
  {
    v6 = v7;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke;
  aBlock[3] = &__block_descriptor_40_e18___NSString_16__0d8l;
  *&aBlock[4] = v6;
  v8 = _Block_copy(aBlock);
  [v4 beginSectionWithFriendlyName:@"Baseline"];
  v9 = MEMORY[0x277CCA968];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
  v11 = [v9 localizedStringFromDate:v10 dateStyle:0 timeStyle:3];

  [v4 exposePropertyWithFriendlyName:@"Start Time" value:v11];
  [v4 endSection];
  [v4 beginSectionWithFriendlyName:@"Page Times"];
  [(SUUIMetricsPageRenderEvent *)self pageRequestedTime];
  v12 = v8 + 2;
  v13 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Page Requested Time" value:v13];

  [(SUUIMetricsPageRenderEvent *)self pageAppearTime];
  v14 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Page Appear Time" value:v14];

  [(SUUIMetricsPageRenderEvent *)self pageDisappearTime];
  v15 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Page Disappear Time" value:v15];

  [(SUUIMetricsPageRenderEvent *)self pageUserReadyTime];
  v16 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Page User Ready Time" value:v16];

  [v4 endSection];
  [v4 beginSectionWithFriendlyName:@"Platform Request Times"];
  [(SUUIMetricsPageRenderEvent *)self platformRequestStartTime];
  v17 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Platform Request Start Time" value:v17];

  [(SUUIMetricsPageRenderEvent *)self platformResponseStartTime];
  v18 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Platform Response Start Time" value:v18];

  [(SUUIMetricsPageRenderEvent *)self platformResponseEndTime];
  v19 = v8[2](v8);
  [v4 exposePropertyWithFriendlyName:@"Platform Response End Time" value:v19];

  if ([(SUUIMetricsPageRenderEvent *)self platformResponseWasCached])
  {
    v20 = @"Yes";
  }

  else
  {
    v20 = @"No";
  }

  [v4 exposePropertyWithFriendlyName:@"Platform Response Was Cached" value:v20];
  [(SUUIMetricsPageRenderEvent *)self platformJsonParseStartTime];
  v21 = (*v12)(v8);
  [v4 exposePropertyWithFriendlyName:@"Platform JSON Parse Start Time" value:v21];

  [(SUUIMetricsPageRenderEvent *)self platformJsonParseEndTime];
  v22 = (*v12)(v8);
  [v4 exposePropertyWithFriendlyName:@"Platform JSON Parse End Time" value:v22];

  [v4 endSection];
  [v4 beginSectionWithFriendlyName:@"DOM Times"];
  v23 = [(SUUIMetricsPageRenderEvent *)self domChanges];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke_3;
  v43[3] = &unk_2798FC0F0;
  v24 = v4;
  v44 = v24;
  v25 = v8;
  v45 = v25;
  [v23 enumerateObjectsUsingBlock:v43];

  [v24 endSection];
  [v24 beginSectionWithFriendlyName:@"Request Times"];
  v26 = [(SUUIMetricsPageRenderEvent *)self requests];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke_4;
  v39[3] = &unk_2798FC118;
  v40 = v24;
  v41 = v25;
  v42 = &__block_literal_global_206;
  v27 = v24;
  v28 = v25;
  [v26 enumerateObjectsUsingBlock:v39];

  [v27 endSection];
  [v27 beginSectionWithFriendlyName:@"Resource Request Times"];
  [(SUUIMetricsPageRenderEvent *)self resourceRequestStartTime];
  v29 = (*v12)(v28);
  [v27 exposePropertyWithFriendlyName:@"Resource Request Start Time" value:v29];

  [(SUUIMetricsPageRenderEvent *)self resourceRequestOnScreenEndTime];
  v30 = (*v12)(v28);
  [v27 exposePropertyWithFriendlyName:@"Resource Request On Screen End Time" value:v30];

  [(SUUIMetricsPageRenderEvent *)self resourceRequestEndTime];
  v31 = (*v12)(v28);
  [v27 exposePropertyWithFriendlyName:@"Resource Request End Time" value:v31];

  [v27 endSection];
  [v27 beginSectionWithFriendlyName:@"Sampling Configuration"];
  v32 = MEMORY[0x277CCACA8];
  [(SUUIMetricsPageRenderEvent *)self xpSessionDuration];
  v34 = [v32 stringWithFormat:@"%.0fs", v33 / 1000.0];
  [v27 exposePropertyWithFriendlyName:@"XP Session Duration" value:v34];

  if ([(SUUIMetricsPageRenderEvent *)self xpSamplingForced])
  {
    v35 = @"Yes";
  }

  else
  {
    v35 = @"No";
  }

  [v27 exposePropertyWithFriendlyName:@"XP Sampling Forced" value:v35];
  v36 = MEMORY[0x277CCACA8];
  [(SUUIMetricsPageRenderEvent *)self xpSamplingPercentageUsers];
  v38 = [v36 stringWithFormat:@"%ld%%", (v37 * 100.0)];
  [v27 exposePropertyWithFriendlyName:@"XP Sampling Percentage Users" value:v38];

  [v27 endSection];
}

__CFString *__54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke(uint64_t a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:a2 - *(a1 + 32)];
    v4 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v3 numberStyle:1];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@s", v4];
  }

  else
  {
    v2 = @"--";
  }

  return v2;
}

__CFString *__54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

void __54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v5 buildStartTime];
  v6 = (*(v4 + 16))(v4);
  [v3 exposePropertyWithFriendlyName:@"Build Start Time" value:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v5 buildEndTime];
  v9 = (*(v8 + 16))(v8);
  [v7 exposePropertyWithFriendlyName:@"Build End Time" value:v9];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v5 renderStartTime];
  v12 = (*(v11 + 16))(v11);
  [v10 exposePropertyWithFriendlyName:@"Render Start Time" value:v12];

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v5 renderEndTime];
  v16 = v15;

  v17 = (*(v13 + 16))(v13, v16);
  [v14 exposePropertyWithFriendlyName:@"Render End Time" value:v17];
}

void __54__SUUIMetricsPageRenderEvent_populateObjectInspector___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 requestStartTime];
  v6 = (*(v4 + 16))(v4);
  [v3 exposePropertyWithFriendlyName:@"Request Start Time" value:v6];

  v7 = a1[4];
  v8 = a1[5];
  [v5 responseStartTime];
  v9 = (*(v8 + 16))(v8);
  [v7 exposePropertyWithFriendlyName:@"Response Start Time" value:v9];

  v10 = a1[4];
  v11 = a1[5];
  [v5 responseEndTime];
  v12 = (*(v11 + 16))(v11);
  [v10 exposePropertyWithFriendlyName:@"Response End Time" value:v12];

  v13 = a1[4];
  v14 = a1[6];
  v15 = [v5 responseWasCached];

  v16 = (*(v14 + 16))(v14, v15);
  [v13 exposePropertyWithFriendlyName:@"Response Was Cached" value:v16];
}

@end
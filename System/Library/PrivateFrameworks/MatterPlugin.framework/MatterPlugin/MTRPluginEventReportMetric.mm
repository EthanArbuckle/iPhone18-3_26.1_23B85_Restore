@interface MTRPluginEventReportMetric
+ (id)eventReportMetricForDevice:(id)a3 homeID:(id)a4 eventReport:(id)a5 remoteMessageID:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)additionalCoreAnalyticsEventDictionary;
- (unint64_t)hash;
- (void)submitMetric;
@end

@implementation MTRPluginEventReportMetric

+ (id)eventReportMetricForDevice:(id)a3 homeID:(id)a4 eventReport:(id)a5 remoteMessageID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(MTRPluginMetric *)[MTRPluginEventReportMetric alloc] initMetricWithName:@"com.apple.matter.eventReportEvent" device:v12 homeID:v11 remoteMessageID:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  [v13 setEventReport:v14];

  return v13;
}

- (void)submitMetric
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [(MTRPluginEventReportMetric *)self eventReport];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = *MEMORY[0x277CD5140];
    v7 = 0x277CBE000uLL;
    v8 = 0x277CD5000uLL;
    v28 = *MEMORY[0x277CD5140];
    v29 = *v32;
    v27 = v2;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = *(v7 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = v13;
        if (v13)
        {
          v15 = [v13 objectForKeyedSubscript:v6];
          v16 = *(v8 + 1032);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v14 objectForKeyedSubscript:v6];

            if (!v17)
            {
              goto LABEL_14;
            }

            v18 = [MTRPluginEventReportMetric alloc];
            [(MTRPluginMetric *)self device];
            v20 = v19 = v7;
            [(HMMHomeLogEvent *)self homeUUID];
            v22 = v21 = v8;
            v23 = [(MTRPluginMetric *)self remoteMessageID];
            v24 = [(MTRPluginMetric *)v18 initMetricWithName:@"com.apple.matter.eventReportEvent" device:v20 homeID:v22 remoteMessageID:v23];

            v8 = v21;
            v7 = v19;
            [v24 setEventPath:v17];
            v25 = +[MTRPluginMetricsCollector sharedInstance];
            [v25 countMetric:v24];

            v2 = v27;
            v6 = v28;
            v5 = v29;

            v15 = v17;
          }
        }

LABEL_14:

        ++v9;
      }

      while (v4 != v9);
      v4 = [v2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v4);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [(MTRPluginEventReportMetric *)self eventPath];
  if (v3 && (v4 = v3, [(MTRPluginMetric *)self count], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEB38];
    v18[0] = @"endpointID";
    v7 = [(MTRPluginEventReportMetric *)self eventPath];
    v8 = [v7 endpoint];
    v19[0] = v8;
    v18[1] = @"clusterID";
    v9 = [(MTRPluginEventReportMetric *)self eventPath];
    v10 = [v9 cluster];
    v19[1] = v10;
    v18[2] = @"eventID";
    v11 = [(MTRPluginEventReportMetric *)self eventPath];
    v12 = [v11 event];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v14 = [v6 dictionaryWithDictionary:v13];

    v15 = [(MTRPluginMetric *)self count];
    [v14 setObject:v15 forKeyedSubscript:@"eventCounter"];
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(MTRPluginEventReportMetric *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = [(MTRPluginEventReportMetric *)self eventPath];
      v8 = [(MTRPluginEventReportMetric *)v6 eventPath];
      if (MTRPluginEqualObjects(v7, v8))
      {
        v9 = [(MTRPluginMetric *)self device];
        v10 = [(MTRPluginMetric *)v6 device];
        v11 = MTRPluginEqualObjects(v9, v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginEventReportMetric *)self eventPath];
  v4 = [v3 hash];
  v5 = [(MTRPluginMetric *)self device];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end
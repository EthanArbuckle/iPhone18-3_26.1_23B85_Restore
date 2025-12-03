@interface MTRPluginEventReportMetric
+ (id)eventReportMetricForDevice:(id)device homeID:(id)d eventReport:(id)report remoteMessageID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)additionalCoreAnalyticsEventDictionary;
- (unint64_t)hash;
- (void)submitMetric;
@end

@implementation MTRPluginEventReportMetric

+ (id)eventReportMetricForDevice:(id)device homeID:(id)d eventReport:(id)report remoteMessageID:(id)iD
{
  iDCopy = iD;
  reportCopy = report;
  dCopy = d;
  deviceCopy = device;
  v13 = [(MTRPluginMetric *)[MTRPluginEventReportMetric alloc] initMetricWithName:@"com.apple.matter.eventReportEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = reportCopy;
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
  eventReport = [(MTRPluginEventReportMetric *)self eventReport];
  v3 = [eventReport countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = *MEMORY[0x277CD5140];
    v7 = 0x277CBE000uLL;
    v8 = 0x277CD5000uLL;
    v28 = *MEMORY[0x277CD5140];
    v29 = *v32;
    v27 = eventReport;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(eventReport);
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
            remoteMessageID = [(MTRPluginMetric *)self remoteMessageID];
            v24 = [(MTRPluginMetric *)v18 initMetricWithName:@"com.apple.matter.eventReportEvent" device:v20 homeID:v22 remoteMessageID:remoteMessageID];

            v8 = v21;
            v7 = v19;
            [v24 setEventPath:v17];
            v25 = +[MTRPluginMetricsCollector sharedInstance];
            [v25 countMetric:v24];

            eventReport = v27;
            v6 = v28;
            v5 = v29;

            v15 = v17;
          }
        }

LABEL_14:

        ++v9;
      }

      while (v4 != v9);
      v4 = [eventReport countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v4);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v19[3] = *MEMORY[0x277D85DE8];
  eventPath = [(MTRPluginEventReportMetric *)self eventPath];
  if (eventPath && (v4 = eventPath, [(MTRPluginMetric *)self count], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEB38];
    v18[0] = @"endpointID";
    eventPath2 = [(MTRPluginEventReportMetric *)self eventPath];
    endpoint = [eventPath2 endpoint];
    v19[0] = endpoint;
    v18[1] = @"clusterID";
    eventPath3 = [(MTRPluginEventReportMetric *)self eventPath];
    cluster = [eventPath3 cluster];
    v19[1] = cluster;
    v18[2] = @"eventID";
    eventPath4 = [(MTRPluginEventReportMetric *)self eventPath];
    event = [eventPath4 event];
    v19[2] = event;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(MTRPluginEventReportMetric *)v6 isMemberOfClass:objc_opt_class()])
    {
      eventPath = [(MTRPluginEventReportMetric *)self eventPath];
      eventPath2 = [(MTRPluginEventReportMetric *)v6 eventPath];
      if (MTRPluginEqualObjects(eventPath, eventPath2))
      {
        device = [(MTRPluginMetric *)self device];
        device2 = [(MTRPluginMetric *)v6 device];
        v11 = MTRPluginEqualObjects(device, device2);
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
  eventPath = [(MTRPluginEventReportMetric *)self eventPath];
  v4 = [eventPath hash];
  device = [(MTRPluginMetric *)self device];
  v6 = [device hash];

  return v6 ^ v4;
}

@end
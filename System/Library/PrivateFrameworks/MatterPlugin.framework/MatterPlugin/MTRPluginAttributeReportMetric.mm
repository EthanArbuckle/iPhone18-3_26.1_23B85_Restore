@interface MTRPluginAttributeReportMetric
+ (id)attributeReportMetricForDevice:(id)device homeID:(id)d attributeReport:(id)report remoteMessageID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)additionalCoreAnalyticsEventDictionary;
- (unint64_t)hash;
- (void)submitMetric;
@end

@implementation MTRPluginAttributeReportMetric

+ (id)attributeReportMetricForDevice:(id)device homeID:(id)d attributeReport:(id)report remoteMessageID:(id)iD
{
  iDCopy = iD;
  reportCopy = report;
  dCopy = d;
  deviceCopy = device;
  v13 = [(MTRPluginMetric *)[MTRPluginAttributeReportMetric alloc] initMetricWithName:@"com.apple.matter.attributeReportEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = reportCopy;
  }

  else
  {
    v14 = 0;
  }

  [v13 setAttributeReport:v14];

  return v13;
}

- (void)submitMetric
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  attributeReport = [(MTRPluginAttributeReportMetric *)self attributeReport];
  v3 = [attributeReport countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = *MEMORY[0x277CD50B8];
    v7 = 0x277CBE000uLL;
    v8 = 0x277CD5000uLL;
    v28 = *MEMORY[0x277CD50B8];
    v29 = *v32;
    v27 = attributeReport;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(attributeReport);
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
          v16 = *(v8 + 448);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v14 objectForKeyedSubscript:v6];

            if (!v17)
            {
              goto LABEL_14;
            }

            v18 = [MTRPluginAttributeReportMetric alloc];
            [(MTRPluginMetric *)self device];
            v20 = v19 = v7;
            [(HMMHomeLogEvent *)self homeUUID];
            v22 = v21 = v8;
            remoteMessageID = [(MTRPluginMetric *)self remoteMessageID];
            v24 = [(MTRPluginMetric *)v18 initMetricWithName:@"com.apple.matter.attributeReportEvent" device:v20 homeID:v22 remoteMessageID:remoteMessageID];

            v8 = v21;
            v7 = v19;
            [v24 setAttributePath:v17];
            v25 = +[MTRPluginMetricsCollector sharedInstance];
            [v25 countMetric:v24];

            attributeReport = v27;
            v6 = v28;
            v5 = v29;

            v15 = v17;
          }
        }

LABEL_14:

        ++v9;
      }

      while (v4 != v9);
      v4 = [attributeReport countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v4);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v19[3] = *MEMORY[0x277D85DE8];
  attributePath = [(MTRPluginAttributeReportMetric *)self attributePath];
  if (attributePath && (v4 = attributePath, [(MTRPluginMetric *)self count], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEB38];
    v18[0] = @"endpointID";
    attributePath2 = [(MTRPluginAttributeReportMetric *)self attributePath];
    endpoint = [attributePath2 endpoint];
    v19[0] = endpoint;
    v18[1] = @"clusterID";
    attributePath3 = [(MTRPluginAttributeReportMetric *)self attributePath];
    cluster = [attributePath3 cluster];
    v19[1] = cluster;
    v18[2] = @"attributeID";
    attributePath4 = [(MTRPluginAttributeReportMetric *)self attributePath];
    attribute = [attributePath4 attribute];
    v19[2] = attribute;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v14 = [v6 dictionaryWithDictionary:v13];

    v15 = [(MTRPluginMetric *)self count];
    [v14 setObject:v15 forKeyedSubscript:@"attributeCounter"];
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
    if ([(MTRPluginAttributeReportMetric *)v6 isMemberOfClass:objc_opt_class()])
    {
      attributePath = [(MTRPluginAttributeReportMetric *)self attributePath];
      attributePath2 = [(MTRPluginAttributeReportMetric *)v6 attributePath];
      if (MTRPluginEqualObjects(attributePath, attributePath2))
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
  attributePath = [(MTRPluginAttributeReportMetric *)self attributePath];
  v4 = [attributePath hash];
  device = [(MTRPluginMetric *)self device];
  v6 = [device hash];

  return v6 ^ v4;
}

@end
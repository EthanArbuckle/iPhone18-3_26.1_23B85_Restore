@interface MTRPluginRVCOperationalStateMetric
+ (id)commandPaths;
+ (id)transformInvokeCommandExpectationMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRVCOperationalStateMetric

+ (id)commandPaths
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C630 commandID:&unk_28697C600];
  v3 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C630 commandID:{&unk_28697C648, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C630 commandID:&unk_28697C660];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)transformInvokeCommandExpectationMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginRVCOperationalStateMetric alloc];
  invokeCommandMetric = [metricCopy invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.rvcOperationalStateEvent" sourceMetric:invokeCommandMetric];

  invokeCommandMetric2 = [metricCopy invokeCommandMetric];
  [v6 setInvokeCommandMetric:invokeCommandMetric2];

  error = [metricCopy error];

  [v6 setError:error];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  invokeCommandMetric = [(MTRPluginRVCOperationalStateMetric *)self invokeCommandMetric];
  expectedValues = [invokeCommandMetric expectedValues];

  v5 = [expectedValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(expectedValues);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = v12;
        if (v12)
        {
          v14 = attributeValueFromExpectedAttributeReport(v12, 97, 4);
          if (v14)
          {
            v15 = v14;

            v7 = v15;
          }
        }
      }

      v6 = [expectedValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = MEMORY[0x277CBEB38];
  invokeCommandMetric2 = [(MTRPluginRVCOperationalStateMetric *)self invokeCommandMetric];
  additionalCoreAnalyticsEventDictionary = [invokeCommandMetric2 additionalCoreAnalyticsEventDictionary];
  v19 = [v16 dictionaryWithDictionary:additionalCoreAnalyticsEventDictionary];

  [v19 setObject:v7 forKeyedSubscript:@"rvcOperationalState"];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end
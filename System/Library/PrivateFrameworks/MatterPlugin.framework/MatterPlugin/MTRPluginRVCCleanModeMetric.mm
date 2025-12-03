@interface MTRPluginRVCCleanModeMetric
+ (id)transformInvokeCommandExpectationMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRVCCleanModeMetric

+ (id)transformInvokeCommandExpectationMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginRVCCleanModeMetric alloc];
  invokeCommandMetric = [metricCopy invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.rvcCleanModeEvent" sourceMetric:invokeCommandMetric];

  invokeCommandMetric2 = [metricCopy invokeCommandMetric];
  [v6 setInvokeCommandMetric:invokeCommandMetric2];

  error = [metricCopy error];

  [v6 setError:error];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  invokeCommandMetric = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  expectedValues = [invokeCommandMetric expectedValues];

  v5 = [expectedValues countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(expectedValues);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
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
          v14 = attributeValueFromExpectedAttributeReport(v12, 85, 1);
          if (v14)
          {
            v15 = v14;

            v7 = v15;
          }
        }
      }

      v6 = [expectedValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = MEMORY[0x277CBEB38];
  invokeCommandMetric2 = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  additionalCoreAnalyticsEventDictionary = [invokeCommandMetric2 additionalCoreAnalyticsEventDictionary];
  v19 = [v16 dictionaryWithDictionary:additionalCoreAnalyticsEventDictionary];

  invokeCommandMetric3 = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  commandFields = [invokeCommandMetric3 commandFields];
  v22 = commandValueFromCommandFields(commandFields);
  [v19 setObject:v22 forKeyedSubscript:@"expectedRVCCleanMode"];

  [v19 setObject:v7 forKeyedSubscript:@"rvcCleanMode"];
  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

@end
@interface MTRPluginRVCRunModeMetric
+ (id)transformInvokeCommandExpectationMetric:(id)a3;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRVCRunModeMetric

+ (id)transformInvokeCommandExpectationMetric:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginRVCRunModeMetric alloc];
  v5 = [v3 invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.rvcRunModeEvent" sourceMetric:v5];

  v7 = [v3 invokeCommandMetric];
  [v6 setInvokeCommandMetric:v7];

  v8 = [v3 error];

  [v6 setError:v8];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [(MTRPluginRVCRunModeMetric *)self invokeCommandMetric];
  v3 = [v2 expectedValues];

  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
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
          v14 = attributeValueFromExpectedAttributeReport(v12, 84, 1);
          v15 = v14;
          if (v14)
          {
            v16 = v14;

            v7 = v16;
          }

          v17 = attributeValueFromExpectedAttributeReport(v13, 97, 4);

          if (v17)
          {
            v18 = v17;

            v6 = v18;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v19 = MEMORY[0x277CBEB38];
  v20 = [(MTRPluginRVCRunModeMetric *)self invokeCommandMetric];
  v21 = [v20 additionalCoreAnalyticsEventDictionary];
  v22 = [v19 dictionaryWithDictionary:v21];

  v23 = [(MTRPluginRVCRunModeMetric *)self invokeCommandMetric];
  v24 = [v23 commandFields];
  v25 = commandValueFromCommandFields(v24);
  [v22 setObject:v25 forKeyedSubscript:@"expectedRVCRunMode"];

  [v22 setObject:v7 forKeyedSubscript:@"rvcRunMode"];
  [v22 setObject:v6 forKeyedSubscript:@"rvcOperationalState"];

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

@end
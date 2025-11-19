@interface MTRPluginRVCCleanModeMetric
+ (id)transformInvokeCommandExpectationMetric:(id)a3;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRVCCleanModeMetric

+ (id)transformInvokeCommandExpectationMetric:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginRVCCleanModeMetric alloc];
  v5 = [v3 invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.rvcCleanModeEvent" sourceMetric:v5];

  v7 = [v3 invokeCommandMetric];
  [v6 setInvokeCommandMetric:v7];

  v8 = [v3 error];

  [v6 setError:v8];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  v4 = [v3 expectedValues];

  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = MEMORY[0x277CBEB38];
  v17 = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  v18 = [v17 additionalCoreAnalyticsEventDictionary];
  v19 = [v16 dictionaryWithDictionary:v18];

  v20 = [(MTRPluginRVCCleanModeMetric *)self invokeCommandMetric];
  v21 = [v20 commandFields];
  v22 = commandValueFromCommandFields(v21);
  [v19 setObject:v22 forKeyedSubscript:@"expectedRVCCleanMode"];

  [v19 setObject:v7 forKeyedSubscript:@"rvcCleanMode"];
  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

@end
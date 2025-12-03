@interface MTRPluginServiceAreaMetric
+ (id)commandPaths;
+ (id)transformInvokeCommandExpectationMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginServiceAreaMetric

+ (id)commandPaths
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C678 commandID:&unk_28697C600];
  v7[0] = v2;
  v3 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C678 commandID:&unk_28697C690];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)transformInvokeCommandExpectationMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginServiceAreaMetric alloc];
  invokeCommandMetric = [metricCopy invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.serviceAreaEvent" sourceMetric:invokeCommandMetric];

  invokeCommandMetric2 = [metricCopy invokeCommandMetric];
  [v6 setInvokeCommandMetric:invokeCommandMetric2];

  error = [metricCopy error];

  [v6 setError:error];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  selfCopy = self;
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  invokeCommandMetric = [(MTRPluginServiceAreaMetric *)self invokeCommandMetric];
  expectedValues = [invokeCommandMetric expectedValues];

  obj = expectedValues;
  v43 = [expectedValues countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v43)
  {
    v23 = @"allAreasSelected";
    goto LABEL_31;
  }

  v36 = selfCopy;
  v38 = 0;
  v42 = *v45;
  v5 = *MEMORY[0x277CD50B8];
  v6 = *MEMORY[0x277CD50D8];
  v40 = *MEMORY[0x277CD5188];
  v39 = *MEMORY[0x277CD50B0];
  v37 = *MEMORY[0x277CD51A0];
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v45 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v44 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v11 objectForKeyedSubscript:v5];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v11 objectForKeyedSubscript:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v11 objectForKeyedSubscript:v6];
        }

        else
        {
          v15 = 0;
        }

        cluster = [v13 cluster];
        if ([cluster unsignedIntValue] == 336)
        {
          v17 = v5;
          attribute = [v13 attribute];
          unsignedIntValue = [attribute unsignedIntValue];

          if (unsignedIntValue == 2)
          {
            v20 = [v15 objectForKeyedSubscript:v40];
            v21 = [v20 isEqual:v39];

            v5 = v17;
            if (v21)
            {
              cluster = [v15 objectForKeyedSubscript:v37];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v15 objectForKeyedSubscript:v37];
                v38 = [v22 count];

                v5 = v17;
              }

              else
              {
                v38 = [0 count];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v5 = v17;
          }
        }

        else
        {
LABEL_23:
        }
      }
    }

    v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v43);
  v23 = @"allAreasSelected";
  if (v38)
  {
    v23 = @"areasSelected";
  }

  selfCopy = v36;
LABEL_31:

  v24 = MEMORY[0x277CBEB38];
  invokeCommandMetric2 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  additionalCoreAnalyticsEventDictionary = [invokeCommandMetric2 additionalCoreAnalyticsEventDictionary];
  v27 = [v24 dictionaryWithDictionary:additionalCoreAnalyticsEventDictionary];

  invokeCommandMetric3 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  commandID = [invokeCommandMetric3 commandID];
  unsignedIntValue2 = [commandID unsignedIntValue];

  if (unsignedIntValue2 == 2)
  {
    v23 = @"areaSkipped";
    goto LABEL_34;
  }

  invokeCommandMetric4 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  commandID2 = [invokeCommandMetric4 commandID];
  unsignedIntValue3 = [commandID2 unsignedIntValue];

  if (!unsignedIntValue3)
  {
LABEL_34:
    [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{v23, v36}];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v27;
}

@end
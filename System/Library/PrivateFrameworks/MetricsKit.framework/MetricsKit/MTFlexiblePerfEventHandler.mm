@interface MTFlexiblePerfEventHandler
- (BOOL)mtIncludeBaseFields;
- (id)knownFields;
- (id)metricsDataWithEventType:(id)a3 eventData:(id)a4;
- (id)metricsDataWithPerfMeasurement:(id)a3;
- (id)xpSamplingPercentage:(id)a3;
@end

@implementation MTFlexiblePerfEventHandler

- (id)metricsDataWithPerfMeasurement:(id)a3
{
  v4 = a3;
  v5 = [v4 eventType];
  v6 = [v4 eventData];
  v7 = [(MTFlexiblePerfEventHandler *)self metricsDataWithEventType:v5 eventData:v6];

  v8 = [v4 additionalFields];

  [v7 addFields:{v8, 0}];

  return v7;
}

- (id)metricsDataWithEventType:(id)a3 eventData:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"eventType";
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(MTEventHandler *)self metricsDataWithFields:v9, v7, 0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTFlexiblePerfEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"eventTime";
    v11[1] = @"xpSamplingPercentage";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)mtIncludeBaseFields
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MTEventDataProvider *)self delegate];
  v6 = [v5 mtIncludeBaseFields];

  return v6;
}

- (id)xpSamplingPercentage:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSamplingPercentage:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSamplingPercentage"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__MTFlexiblePerfEventHandler_xpSamplingPercentage___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __51__MTFlexiblePerfEventHandler_xpSamplingPercentage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.samplingPercentage" sources:v3];

  return v6;
}

@end
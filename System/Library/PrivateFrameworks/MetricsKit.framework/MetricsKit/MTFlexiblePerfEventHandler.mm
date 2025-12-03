@interface MTFlexiblePerfEventHandler
- (BOOL)mtIncludeBaseFields;
- (id)knownFields;
- (id)metricsDataWithEventType:(id)type eventData:(id)data;
- (id)metricsDataWithPerfMeasurement:(id)measurement;
- (id)xpSamplingPercentage:(id)percentage;
@end

@implementation MTFlexiblePerfEventHandler

- (id)metricsDataWithPerfMeasurement:(id)measurement
{
  measurementCopy = measurement;
  eventType = [measurementCopy eventType];
  eventData = [measurementCopy eventData];
  v7 = [(MTFlexiblePerfEventHandler *)self metricsDataWithEventType:eventType eventData:eventData];

  additionalFields = [measurementCopy additionalFields];

  [v7 addFields:{additionalFields, 0}];

  return v7;
}

- (id)metricsDataWithEventType:(id)type eventData:(id)data
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"eventType";
  v14[0] = type;
  v6 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  typeCopy = type;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(MTEventHandler *)self metricsDataWithFields:v9, dataCopy, 0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTFlexiblePerfEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"eventTime";
    v11[1] = @"xpSamplingPercentage";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (BOOL)mtIncludeBaseFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(MTEventDataProvider *)self delegate];
  mtIncludeBaseFields = [delegate2 mtIncludeBaseFields];

  return mtIncludeBaseFields;
}

- (id)xpSamplingPercentage:(id)percentage
{
  percentageCopy = percentage;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSamplingPercentage:percentageCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [percentageCopy objectForKeyedSubscript:@"xpSamplingPercentage"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__MTFlexiblePerfEventHandler_xpSamplingPercentage___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

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
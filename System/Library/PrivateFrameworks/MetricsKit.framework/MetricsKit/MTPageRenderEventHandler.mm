@interface MTPageRenderEventHandler
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
- (id)metricsDataWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (id)metricsDataWithPerfMeasurement:(id)measurement;
- (id)xpSamplingPercentageUsers:(id)users;
- (id)xpSessionDuration:(id)duration;
- (void)didCreateMetricsData:(id)data;
@end

@implementation MTPageRenderEventHandler

- (id)metricsDataWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  dataCopy = data;
  contextCopy = context;
  typeCopy = type;
  idCopy = id;
  v14 = [[MTCallerSuppliedFields alloc] initWithPageId:idCopy pageType:typeCopy pageContext:contextCopy eventData:dataCopy];

  v15 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v14];

  return v15;
}

- (id)knownFields
{
  v11[24] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTPageRenderEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"pageRequestTime";
    v11[1] = @"interstitialPageAppearTime";
    v11[2] = @"pageAppearTime";
    v11[3] = @"pageUserInteractiveTime";
    v11[4] = @"pageEndTime";
    v11[5] = @"primaryDataRequestStartTime";
    v11[6] = @"primaryDataResponseStartTime";
    v11[7] = @"primaryDataResponseEndTime";
    v11[8] = @"primaryDataParseStartTime";
    v11[9] = @"primaryDataParseEndTime";
    v11[10] = @"pageInterruptTime";
    v11[11] = @"modelConstructionStartTime";
    v11[12] = @"modelConstructionEndTime";
    v11[13] = @"modelRenderStartTime";
    v11[14] = @"modelRenderEndTime";
    v11[15] = @"resourceRequestStartTime";
    v11[16] = @"resourceRequestEndTime";
    v11[17] = @"onScreenResourcesAppearEndTime";
    v11[18] = @"isAppLaunch";
    v11[19] = @"isPrimaryDataResponseCached";
    v11[20] = @"launchCorrelationKey";
    v11[21] = @"preloadStatus";
    v11[22] = @"xpSessionDuration";
    v11[23] = @"xpSamplingPercentageUsers";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:24];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTPageRenderEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"pageRender";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTPageRenderEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C2D8;
  }

  v6 = v5;

  return v5;
}

- (id)xpSessionDuration:(id)duration
{
  durationCopy = duration;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSessionDuration:durationCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [durationCopy objectForKeyedSubscript:@"xpSessionDuration"];
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
  v14[2] = __46__MTPageRenderEventHandler_xpSessionDuration___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __46__MTPageRenderEventHandler_xpSessionDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.sessionDurationPageRender" sources:v3];

  return v6;
}

- (id)xpSamplingPercentageUsers:(id)users
{
  usersCopy = users;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSamplingPercentageUsers:usersCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [usersCopy objectForKeyedSubscript:@"xpSamplingPercentageUsers"];
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
  v14[2] = __54__MTPageRenderEventHandler_xpSamplingPercentageUsers___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __54__MTPageRenderEventHandler_xpSamplingPercentageUsers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.samplingPercentageUsersPageRender" sources:v3];

  return v6;
}

- (void)didCreateMetricsData:(id)data
{
  v4.receiver = self;
  v4.super_class = MTPageRenderEventHandler;
  dataCopy = data;
  [(MTEventHandler *)&v4 didCreateMetricsData:dataCopy];
  [dataCopy setSamplingEnabled:{1, v4.receiver, v4.super_class}];
}

- (id)metricsDataWithPerfMeasurement:(id)measurement
{
  measurementCopy = measurement;
  pageId = [measurementCopy pageId];
  pageType = [measurementCopy pageType];
  pageContext = [measurementCopy pageContext];
  eventData = [measurementCopy eventData];
  v9 = [(MTPageRenderEventHandler *)self metricsDataWithPageId:pageId pageType:pageType pageContext:pageContext eventData:eventData];

  additionalFields = [measurementCopy additionalFields];

  [v9 addFields:{additionalFields, 0}];

  return v9;
}

@end
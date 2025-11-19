@interface MTPageRenderEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)metricsDataWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6;
- (id)metricsDataWithPerfMeasurement:(id)a3;
- (id)xpSamplingPercentageUsers:(id)a3;
- (id)xpSessionDuration:(id)a3;
- (void)didCreateMetricsData:(id)a3;
@end

@implementation MTPageRenderEventHandler

- (id)metricsDataWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[MTCallerSuppliedFields alloc] initWithPageId:v13 pageType:v12 pageContext:v11 eventData:v10];

  v15 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v14];

  return v15;
}

- (id)knownFields
{
  v11[24] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTPageRenderEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
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
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTPageRenderEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"pageRender";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTPageRenderEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
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

- (id)xpSessionDuration:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSessionDuration:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSessionDuration"];
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
  v14[2] = __46__MTPageRenderEventHandler_xpSessionDuration___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

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

- (id)xpSamplingPercentageUsers:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSamplingPercentageUsers:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSamplingPercentageUsers"];
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
  v14[2] = __54__MTPageRenderEventHandler_xpSamplingPercentageUsers___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

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

- (void)didCreateMetricsData:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTPageRenderEventHandler;
  v3 = a3;
  [(MTEventHandler *)&v4 didCreateMetricsData:v3];
  [v3 setSamplingEnabled:{1, v4.receiver, v4.super_class}];
}

- (id)metricsDataWithPerfMeasurement:(id)a3
{
  v4 = a3;
  v5 = [v4 pageId];
  v6 = [v4 pageType];
  v7 = [v4 pageContext];
  v8 = [v4 eventData];
  v9 = [(MTPageRenderEventHandler *)self metricsDataWithPageId:v5 pageType:v6 pageContext:v7 eventData:v8];

  v10 = [v4 additionalFields];

  [v9 addFields:{v10, 0}];

  return v9;
}

@end
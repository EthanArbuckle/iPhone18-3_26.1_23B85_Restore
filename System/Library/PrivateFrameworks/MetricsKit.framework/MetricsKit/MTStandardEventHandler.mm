@interface MTStandardEventHandler
- (id)metricsDataWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6;
- (void)validatePageFieldValueWithMetricsData:(id)a3;
@end

@implementation MTStandardEventHandler

- (id)metricsDataWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[MTCallerSuppliedFields alloc] initWithPageId:v13 pageType:v12 pageContext:v11 eventData:v10];

  v15 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MTStandardEventHandler_metricsDataWithPageId_pageType_pageContext_eventData___block_invoke;
  v17[3] = &unk_2798CD9A0;
  v17[4] = self;
  [v15 addPostProcessingBlock:v17];

  return v15;
}

- (void)validatePageFieldValueWithMetricsData:(id)a3
{
  v19 = a3;
  v4 = [(MTObject *)self metricsKit];
  v5 = [v4 eventHandlers];
  v6 = [v5 base];
  v7 = [v6 delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = v19;
  if (v19)
  {
    if ((v8 & 1) == 0)
    {
      v10 = [v19 objectForKeyedSubscript:@"page"];

      v9 = v19;
      if (!v10)
      {
        v17 = MTConfigurationError(101, @"No data provided to MTBaseEventDataProvider page method", v11, v12, v13, v14, v15, v16, v18);
        v9 = v19;
      }
    }
  }
}

@end
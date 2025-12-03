@interface MTStandardEventHandler
- (id)metricsDataWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (void)validatePageFieldValueWithMetricsData:(id)data;
@end

@implementation MTStandardEventHandler

- (id)metricsDataWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  dataCopy = data;
  contextCopy = context;
  typeCopy = type;
  idCopy = id;
  v14 = [[MTCallerSuppliedFields alloc] initWithPageId:idCopy pageType:typeCopy pageContext:contextCopy eventData:dataCopy];

  v15 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MTStandardEventHandler_metricsDataWithPageId_pageType_pageContext_eventData___block_invoke;
  v17[3] = &unk_2798CD9A0;
  v17[4] = self;
  [v15 addPostProcessingBlock:v17];

  return v15;
}

- (void)validatePageFieldValueWithMetricsData:(id)data
{
  dataCopy = data;
  metricsKit = [(MTObject *)self metricsKit];
  eventHandlers = [metricsKit eventHandlers];
  base = [eventHandlers base];
  delegate = [base delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = dataCopy;
  if (dataCopy)
  {
    if ((v8 & 1) == 0)
    {
      v10 = [dataCopy objectForKeyedSubscript:@"page"];

      v9 = dataCopy;
      if (!v10)
      {
        v17 = MTConfigurationError(101, @"No data provided to MTBaseEventDataProvider page method", v11, v12, v13, v14, v15, v16, v18);
        v9 = dataCopy;
      }
    }
  }
}

@end
@interface SUUITemplateLoader
- (SUUITemplateLoader)initWithURLs:(id)a3 completionBlock:(id)a4;
- (id)_operationWithURL:(id)a3;
- (void)_operation:(id)a3 didCompleteWithOutput:(id)a4;
- (void)_operation:(id)a3 didFailWithError:(id)a4;
- (void)_operationDidFinish:(id)a3;
- (void)load;
@end

@implementation SUUITemplateLoader

- (SUUITemplateLoader)initWithURLs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = SUUITemplateLoader;
  v8 = [(SUUITemplateLoader *)&v22 init];
  if (v8)
  {
    v9 = [v6 copy];
    URLs = v8->_URLs;
    v8->_URLs = v9;

    v11 = [v7 copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v13;

    [(NSOperationQueue *)v8->_operationQueue setName:@"com.apple.StoreKit.SUUITemplateLoader"];
    [(NSOperationQueue *)v8->_operationQueue setMaxConcurrentOperationCount:4];
    v15 = +[SUUITemplateParsingDataProvider templateParsingRegularExpression];
    templateParsingRegularExpression = v8->_templateParsingRegularExpression;
    v8->_templateParsingRegularExpression = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    errors = v8->_errors;
    v8->_errors = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateStrings = v8->_templateStrings;
    v8->_templateStrings = v19;
  }

  return v8;
}

- (id)_operationWithURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:v4];
  [v5 setAllowedRetryCount:1];
  v6 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequestProperties:v5];
  [v6 setRecordsMetrics:1];
  [v6 setITunesStoreRequest:1];
  v7 = [SUUITemplateParsingDataProvider alloc];
  v8 = [(SUUITemplateLoader *)self templateParsingRegularExpression];
  v9 = [(SUUITemplateParsingDataProvider *)v7 initWithRegularExpression:v8];
  [v6 setDataConsumer:v9];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SUUITemplateLoader__operationWithURL___block_invoke;
  v11[3] = &unk_2798FDFE0;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v6 setOutputBlock:v11];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void __40__SUUITemplateLoader__operationWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SUUITemplateLoader__operationWithURL___block_invoke_2;
  v12[3] = &unk_2798F70E0;
  v13 = v6;
  v14 = v5;
  v15 = WeakRetained;
  v16 = v8;
  v9 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __40__SUUITemplateLoader__operationWithURL___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didFailWithError:?];
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didFailWithError:?];
  }

  else
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didCompleteWithOutput:v2];
  }
}

- (void)_operation:(id)a3 didCompleteWithOutput:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SUUITemplateLoader__operation_didCompleteWithOutput___block_invoke;
  v10[3] = &unk_2798FE008;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:v10];
  v9 = [(SUUITemplateLoader *)self templateStrings];
  [v9 addEntriesFromDictionary:v8];

  [(SUUITemplateLoader *)self _operationDidFinish:v7];
}

void __55__SUUITemplateLoader__operation_didCompleteWithOutput___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) metricsPageEvent];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIMetricsTemplateLoad);
    [v3 requestStartTime];
    [(SUUIMetricsTemplateLoad *)v4 setRequestStartTime:?];
    [v3 responseStartTime];
    [(SUUIMetricsTemplateLoad *)v4 setResponseStartTime:?];
    [v3 responseEndTime];
    [(SUUIMetricsTemplateLoad *)v4 setResponseEndTime:?];
    -[SUUIMetricsTemplateLoad setResponseWasCached:](v4, "setResponseWasCached:", [v3 isCachedResponse]);
    v5 = [*(a1 + 32) URLRequest];
    v6 = [v5 URL];
    [v7 addTemplateLoadTimingMetric:v4 forURL:v6];
  }
}

- (void)_operation:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(SUUITemplateLoader *)self errors];
  [v7 addObject:v6];

  [(SUUITemplateLoader *)self _operationDidFinish:v8];
}

- (void)_operationDidFinish:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  [(SUUITemplateLoader *)self setPendingOperationCount:[(SUUITemplateLoader *)self pendingOperationCount]- 1];
  if (![(SUUITemplateLoader *)self pendingOperationCount])
  {
    v4 = [(SUUITemplateLoader *)self errors];
    v5 = [v4 count];

    v6 = [(SUUITemplateLoader *)self errors];
    v7 = v6;
    if (v5 == 1)
    {
      v8 = [v6 firstObject];
    }

    else
    {
      v9 = [v6 count];

      if (v9 < 2)
      {
        v8 = 0;
        goto LABEL_8;
      }

      v10 = MEMORY[0x277CCA9B8];
      v15 = @"SUUITemplateLoaderErrorUnderlyingErrorsKey";
      v7 = [(SUUITemplateLoader *)self errors];
      v16[0] = v7;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v8 = [v10 errorWithDomain:@"SUUITemplateLoaderErrorDomain" code:561278320 userInfo:v11];
    }

LABEL_8:
    v12 = [(SUUITemplateLoader *)self completionBlock];
    v13 = [(SUUITemplateLoader *)self templateStrings];
    (v12)[2](v12, v13, v8);

    retainSelf = self->_retainSelf;
    self->_retainSelf = 0;
  }
}

- (void)load
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUITemplateLoader.m" lineNumber:193 description:@"load called more than once"];
}

@end
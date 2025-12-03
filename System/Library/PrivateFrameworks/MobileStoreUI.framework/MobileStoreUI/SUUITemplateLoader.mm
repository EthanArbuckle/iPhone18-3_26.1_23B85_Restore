@interface SUUITemplateLoader
- (SUUITemplateLoader)initWithURLs:(id)ls completionBlock:(id)block;
- (id)_operationWithURL:(id)l;
- (void)_operation:(id)_operation didCompleteWithOutput:(id)output;
- (void)_operation:(id)_operation didFailWithError:(id)error;
- (void)_operationDidFinish:(id)finish;
- (void)load;
@end

@implementation SUUITemplateLoader

- (SUUITemplateLoader)initWithURLs:(id)ls completionBlock:(id)block
{
  lsCopy = ls;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = SUUITemplateLoader;
  v8 = [(SUUITemplateLoader *)&v22 init];
  if (v8)
  {
    v9 = [lsCopy copy];
    URLs = v8->_URLs;
    v8->_URLs = v9;

    v11 = [blockCopy copy];
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

- (id)_operationWithURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:lCopy];
  [v5 setAllowedRetryCount:1];
  v6 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequestProperties:v5];
  [v6 setRecordsMetrics:1];
  [v6 setITunesStoreRequest:1];
  v7 = [SUUITemplateParsingDataProvider alloc];
  templateParsingRegularExpression = [(SUUITemplateLoader *)self templateParsingRegularExpression];
  v9 = [(SUUITemplateParsingDataProvider *)v7 initWithRegularExpression:templateParsingRegularExpression];
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

- (void)_operation:(id)_operation didCompleteWithOutput:(id)output
{
  _operationCopy = _operation;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SUUITemplateLoader__operation_didCompleteWithOutput___block_invoke;
  v10[3] = &unk_2798FE008;
  v11 = _operationCopy;
  v7 = _operationCopy;
  outputCopy = output;
  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:v10];
  templateStrings = [(SUUITemplateLoader *)self templateStrings];
  [templateStrings addEntriesFromDictionary:outputCopy];

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

- (void)_operation:(id)_operation didFailWithError:(id)error
{
  errorCopy = error;
  _operationCopy = _operation;
  errors = [(SUUITemplateLoader *)self errors];
  [errors addObject:errorCopy];

  [(SUUITemplateLoader *)self _operationDidFinish:_operationCopy];
}

- (void)_operationDidFinish:(id)finish
{
  v16[1] = *MEMORY[0x277D85DE8];
  [(SUUITemplateLoader *)self setPendingOperationCount:[(SUUITemplateLoader *)self pendingOperationCount]- 1];
  if (![(SUUITemplateLoader *)self pendingOperationCount])
  {
    errors = [(SUUITemplateLoader *)self errors];
    v5 = [errors count];

    errors2 = [(SUUITemplateLoader *)self errors];
    errors3 = errors2;
    if (v5 == 1)
    {
      firstObject = [errors2 firstObject];
    }

    else
    {
      v9 = [errors2 count];

      if (v9 < 2)
      {
        firstObject = 0;
        goto LABEL_8;
      }

      v10 = MEMORY[0x277CCA9B8];
      v15 = @"SUUITemplateLoaderErrorUnderlyingErrorsKey";
      errors3 = [(SUUITemplateLoader *)self errors];
      v16[0] = errors3;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      firstObject = [v10 errorWithDomain:@"SUUITemplateLoaderErrorDomain" code:561278320 userInfo:v11];
    }

LABEL_8:
    completionBlock = [(SUUITemplateLoader *)self completionBlock];
    templateStrings = [(SUUITemplateLoader *)self templateStrings];
    (completionBlock)[2](completionBlock, templateStrings, firstObject);

    retainSelf = self->_retainSelf;
    self->_retainSelf = 0;
  }
}

- (void)load
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SUUITemplateLoader.m" lineNumber:193 description:@"load called more than once"];
}

@end
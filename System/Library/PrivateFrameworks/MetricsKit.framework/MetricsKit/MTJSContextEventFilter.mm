@interface MTJSContextEventFilter
- (JSContext)jsContext;
- (MTJSContextEventFilter)initWithJSContext:(id)context functionName:(id)name operationQueue:(id)queue;
- (MTJSContextEventFilter)initWithScript:(id)script functionName:(id)name operationQueue:(id)queue;
- (id)apply:(id)apply;
- (void)_applyFilter:(id)filter promise:(id)promise;
@end

@implementation MTJSContextEventFilter

- (MTJSContextEventFilter)initWithScript:(id)script functionName:(id)name operationQueue:(id)queue
{
  scriptCopy = script;
  nameCopy = name;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = MTJSContextEventFilter;
  v11 = [(MTJSContextEventFilter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MTJSContextEventFilter *)v11 setScript:scriptCopy];
    [(MTJSContextEventFilter *)v12 setFunctionName:nameCopy];
    [(MTJSContextEventFilter *)v12 setOperationQueue:queueCopy];
  }

  return v12;
}

- (MTJSContextEventFilter)initWithJSContext:(id)context functionName:(id)name operationQueue:(id)queue
{
  contextCopy = context;
  nameCopy = name;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = MTJSContextEventFilter;
  v11 = [(MTJSContextEventFilter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MTJSContextEventFilter *)v11 setJsContext:contextCopy];
    [(MTJSContextEventFilter *)v12 setFunctionName:nameCopy];
    [(MTJSContextEventFilter *)v12 setOperationQueue:queueCopy];
  }

  return v12;
}

- (JSContext)jsContext
{
  jsContext = self->_jsContext;
  if (!jsContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4648]);
    v5 = self->_jsContext;
    self->_jsContext = v4;

    objc_initWeak(&location, self);
    v6 = self->_jsContext;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __35__MTJSContextEventFilter_jsContext__block_invoke;
    v18 = &unk_2798CED90;
    objc_copyWeak(&v19, &location);
    [(JSContext *)v6 setExceptionHandler:&v15];
    v7 = [(JSContext *)self->_jsContext evaluateScript:@"var console = {}", v15, v16, v17, v18];
    v8 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"console"];
    [v8 setObject:&__block_literal_global_24 forKeyedSubscript:@"warn"];
    v9 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"console"];
    [v9 setObject:&__block_literal_global_24 forKeyedSubscript:@"error"];
    v10 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"console"];
    [v10 setObject:&__block_literal_global_24 forKeyedSubscript:@"log"];

    v11 = self->_jsContext;
    script = [(MTJSContextEventFilter *)self script];
    v13 = [(JSContext *)v11 evaluateScript:script];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    jsContext = self->_jsContext;
  }

  return jsContext;
}

void __35__MTJSContextEventFilter_jsContext__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = MTError(200, @"JS Exception: %@", v5, v6, v7, v8, v9, v10, v4);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLastError:v11];

  v13 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_258F4B000, v13, OS_LOG_TYPE_ERROR, "MetricsKit: MTJSContextBridge error: %@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __35__MTJSContextEventFilter_jsContext__block_invoke_5(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258F4B000, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: JSContext console: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_applyFilter:(id)filter promise:(id)promise
{
  v49[1] = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  promiseCopy = promise;
  jsContext = [(MTJSContextEventFilter *)self jsContext];
  functionName = [(MTJSContextEventFilter *)self functionName];
  v10 = [jsContext objectForKeyedSubscript:functionName];

  if ([v10 isObject])
  {
    v49[0] = filterCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    v12 = [v10 callWithArguments:v11];

    if ([v12 isNull])
    {
      functionName2 = [(MTJSContextEventFilter *)self functionName];
      v20 = MTError(301, @"The JS function %@ returned a null value.", v14, v15, v16, v17, v18, v19, functionName2);

      [promiseCopy finishWithError:v20];
    }

    else
    {
      toDictionary = [v12 toDictionary];
      v20 = toDictionary;
      if (toDictionary)
      {
        if ([toDictionary count])
        {
          [promiseCopy finishWithResult:v20];
        }

        else
        {
          functionName3 = [(MTJSContextEventFilter *)self functionName];
          v40 = MTError(301, @"The JS function %@ returned an empty object.", v34, v35, v36, v37, v38, v39, functionName3);

          [promiseCopy finishWithError:v40];
        }
      }

      else
      {
        lastError = [(MTJSContextEventFilter *)self lastError];
        v31 = lastError;
        if (lastError)
        {
          v32 = lastError;
        }

        else
        {
          functionName4 = [(MTJSContextEventFilter *)self functionName];
          v32 = MTError(200, @"The JS context failed in function named %@.", v42, v43, v44, v45, v46, v47, functionName4);
        }

        [promiseCopy finishWithError:v32];
      }
    }
  }

  else
  {
    functionName5 = [(MTJSContextEventFilter *)self functionName];
    v28 = MTError(200, @"The JS context doesn't have any global function named %@.", v22, v23, v24, v25, v26, v27, functionName5);

    [promiseCopy finishWithError:v28];
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)apply:(id)apply
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MTJSContextEventFilter_apply___block_invoke;
  v5[3] = &unk_2798CD570;
  v5[4] = self;
  v3 = [apply thenWithBlock:v5];

  return v3;
}

id __32__MTJSContextEventFilter_apply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) operationQueue];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 operationQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__MTJSContextEventFilter_apply___block_invoke_2;
    v9[3] = &unk_2798CDA18;
    v9[4] = *(a1 + 32);
    v10 = v3;
    v11 = v4;
    [v7 addOperationWithBlock:v9];
  }

  else
  {
    [v6 _applyFilter:v3 promise:v4];
  }

  return v4;
}

@end
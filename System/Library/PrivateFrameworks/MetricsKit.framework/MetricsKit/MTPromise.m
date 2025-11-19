@interface MTPromise
+ (BOOL)_errorIsCanceledError:(id)a3;
+ (MTPromise)promiseWithAll:(id)a3;
+ (MTPromise)promiseWithAny:(id)a3;
+ (MTPromise)promiseWithComposition:(id)a3;
+ (MTPromise)promiseWithError:(id)a3;
+ (MTPromise)promiseWithResult:(id)a3;
+ (id)_findUnfinishedPromise:(id)a3;
+ (id)_globalPromiseStorage;
+ (id)_globalPromiseStorageAccessQueue;
+ (id)_resultOfComposition:(id)a3 errors:(id)a4;
+ (void)_configureAllPromise:(id)a3 withResults:(id)a4 promises:(id)a5 currentPromiseIndex:(unint64_t)a6;
+ (void)_configureAnyPromise:(id)a3 withPromises:(id)a4 currentPromiseIndex:(unint64_t)a5;
+ (void)_finishPromise:(id)a3 withPromise:(id)a4;
+ (void)_setupCompositePromise:(id)a3 composition:(id)a4;
+ (void)cancelPromisesInComposition:(id)a3;
- (BOOL)_isFinished;
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (MTPromise)init;
- (id)BOOLCompletionHandlerAdapter;
- (id)catchWithBlock:(id)a3;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultWithError:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (id)thenWithBlock:(id)a3;
- (void)_addBlock:(id)a3 orCallWithResult:(id)a4;
- (void)addErrorBlock:(id)a3;
- (void)addFinishBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
@end

@implementation MTPromise

- (MTPromise)init
{
  v11.receiver = self;
  v11.super_class = MTPromise;
  v2 = [(MTPromise *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTPromiseCompletionBlocks);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v5 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v5;

    v7 = +[MTPromise _globalPromiseStorageAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __17__MTPromise_init__block_invoke;
    block[3] = &unk_2798CD868;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

+ (id)_globalPromiseStorage
{
  if (_globalPromiseStorage_onceToken != -1)
  {
    +[MTPromise _globalPromiseStorage];
  }

  v3 = _globalPromiseStorage_sGlobalPromiseStorage;

  return v3;
}

+ (id)_globalPromiseStorageAccessQueue
{
  if (_globalPromiseStorageAccessQueue_onceToken != -1)
  {
    +[MTPromise _globalPromiseStorageAccessQueue];
  }

  v3 = _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue;

  return v3;
}

void __17__MTPromise_init__block_invoke(uint64_t a1)
{
  v2 = +[MTPromise _globalPromiseStorage];
  [v2 addObject:*(a1 + 32)];
}

+ (id)_resultOfComposition:(id)a3 errors:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 promiseResult];
    v9 = [v8 error];
    v10 = v9;
    if (v7 && v9)
    {
      [v7 addObject:v9];
    }

    v11 = [v8 result];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v21 = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [a1 _resultOfComposition:*(*(&v38 + 1) + 8 * i) errors:v7];
            [v14 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v17);
      }

      v21 = [v14 copy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v33 = v6;
        v23 = v6;
        v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v35;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v35 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v34 + 1) + 8 * j);
              v29 = [v23 objectForKeyedSubscript:v28];
              v30 = [a1 _resultOfComposition:v29 errors:v7];
              [v22 setObject:v30 forKeyedSubscript:v28];
            }

            v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v25);
        }

        v21 = [v22 copy];
        v6 = v33;
      }

      else
      {
        v21 = v6;
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_findUnfinishedPromise:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isFinished])
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [a1 _findUnfinishedPromise:*(*(&v24 + 1) + 8 * i)];
          if (v12)
          {
            v6 = v12;
            goto LABEL_28;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v13 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v17 = [v7 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * j), v20}];
          v6 = [a1 _findUnfinishedPromise:v17];

          if (v6)
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        v14 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  v6 = 0;
LABEL_29:

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)_setupCompositePromise:(id)a3 composition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _findUnfinishedPromise:v7];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__MTPromise_Composition___setupCompositePromise_composition___block_invoke;
    v10[3] = &unk_2798CDE40;
    v13 = a1;
    v11 = v6;
    v12 = v7;
    [v8 addFinishBlock:v10];
  }

  else
  {
    v9 = [a1 _resultOfComposition:v7 errors:0];
    [v6 finishWithResult:v9];
  }
}

+ (MTPromise)promiseWithComposition:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  [a1 _setupCompositePromise:v5 composition:v4];

  return v5;
}

+ (void)cancelPromisesInComposition:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v20;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [v4 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
            [MTPromise cancelPromisesInComposition:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v6);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = v3;
      v10 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v4);
            }

            [MTPromise cancelPromisesInComposition:*(*(&v15 + 1) + 8 * j), v15];
          }

          v11 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v11);
      }
    }

    goto LABEL_21;
  }

  [v3 cancel];
LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
}

+ (MTPromise)promiseWithError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithError:v3];

  return v4;
}

+ (MTPromise)promiseWithResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithResult:v3];

  return v4;
}

+ (MTPromise)promiseWithAll:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [objc_opt_class() _configureAllPromise:v4 withResults:v5 promises:v3 currentPromiseIndex:0];

  return v4;
}

+ (MTPromise)promiseWithAny:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [objc_opt_class() _configureAnyPromise:v4 withPromises:v3 currentPromiseIndex:0];

  return v4;
}

- (BOOL)isCancelled
{
  v3 = [(MTPromise *)self stateLock];
  [v3 lock];

  if ([(MTPromise *)self _isFinished])
  {
    v4 = objc_opt_class();
    v5 = [(MTPromise *)self promiseResult];
    v6 = [v5 error];
    v7 = [v4 _errorIsCanceledError:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MTPromise *)self stateLock];
  [v8 unlock];

  return v7;
}

- (BOOL)isFinished
{
  v3 = [(MTPromise *)self stateLock];
  [v3 lock];

  LOBYTE(v3) = [(MTPromise *)self _isFinished];
  v4 = [(MTPromise *)self stateLock];
  [v4 unlock];

  return v3;
}

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTPromise *)self completionBlocks];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__MTPromise_addErrorBlock___block_invoke;
  v11[3] = &unk_2798CEBD8;
  v12 = v5;
  v13 = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__MTPromise_addErrorBlock___block_invoke_2;
  v8[3] = &unk_2798CEC00;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(MTPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTPromise *)self completionBlocks];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTPromise_addFinishBlock___block_invoke;
  v11[3] = &unk_2798CEBD8;
  v12 = v5;
  v13 = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__MTPromise_addFinishBlock___block_invoke_2;
  v8[3] = &unk_2798CEC00;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(MTPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTPromise *)self completionBlocks];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__MTPromise_addSuccessBlock___block_invoke;
  v11[3] = &unk_2798CEBD8;
  v12 = v5;
  v13 = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__MTPromise_addSuccessBlock___block_invoke_2;
  v8[3] = &unk_2798CEC00;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(MTPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTPromise *)self stateLock];
  v8 = [v7 lockWhenCondition:1 beforeDate:v6];

  if (v8)
  {
    v15 = [(MTPromise *)self promiseResult];
    v16 = [(MTPromise *)self stateLock];
    [v16 unlock];

    v17 = [v15 result];

    if (a4 && !v17)
    {
      *a4 = [v15 error];
    }

    v18 = [v15 result];
  }

  else if (a4)
  {
    MTError(400, 0, v9, v10, v11, v12, v13, v14, 0);
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)resultWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(MTPromise *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v7 = [(MTPromise *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)catchWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTPromise);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTPromise_catchWithBlock___block_invoke;
  v11[3] = &unk_2798CEC28;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  [(MTPromise *)self addFinishBlock:v11];
  v8 = v12;
  v9 = v7;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __28__MTPromise_catchWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [MTPromise promiseWithResult:v8];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

- (id)thenWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTPromise);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__MTPromise_thenWithBlock___block_invoke;
  v11[3] = &unk_2798CEC28;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  [(MTPromise *)self addFinishBlock:v11];
  v8 = v12;
  v9 = v7;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __27__MTPromise_thenWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [MTPromise promiseWithError:v5];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

- (BOOL)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  LOBYTE(self) = [(MTPromise *)self finishWithResult:0 error:v3];

  return self;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v10 = "MetricsKit: Someone is finishing a promise with both a result and an error. This will result in both the success and error blocks being called. result = %@ error = %@";
      v11 = v9;
      v12 = 22;
LABEL_8:
      _os_log_impl(&dword_258F4B000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    }
  }

  else
  {
    if (v6 | v7)
    {
      goto LABEL_10;
    }

    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "MetricsKit: Someone is finishing a promise with neither a result nor an error. This will result in neither the success nor the error blocks being called.";
      v11 = v9;
      v12 = 2;
      goto LABEL_8;
    }
  }

LABEL_10:
  v13 = [(MTPromise *)self stateLock];
  [v13 lock];

  v14 = [(MTPromise *)self stateLock];
  v15 = [v14 condition];

  if (v15 == 1)
  {
    v20 = objc_opt_class();
    v21 = [(MTPromise *)self promiseResult];
    v22 = [v21 error];
    if ([v20 _errorIsCanceledError:v22])
    {
    }

    else
    {
      v23 = [objc_opt_class() _errorIsCanceledError:v8];

      if (v23)
      {
        goto LABEL_16;
      }

      v21 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_258F4B000, v21, OS_LOG_TYPE_DEBUG, "MetricsKit: Someone is attempting to finish a finished MTPromise.", buf, 2u);
      }
    }

LABEL_16:
    v16 = [(MTPromise *)self stateLock];
    [(MTPromiseResult *)v16 unlock];
    goto LABEL_17;
  }

  v16 = [[MTPromiseResult alloc] initWithResult:v6 error:v8];
  [(MTPromise *)self setPromiseResult:v16];
  v17 = [(MTPromise *)self stateLock];
  [v17 unlockWithCondition:1];

  v18 = [(MTPromise *)self completionBlocks];
  [v18 flushCompletionBlocksWithPromiseResult:v16];

  objc_initWeak(buf, self);
  v19 = +[MTPromise _globalPromiseStorageAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MTPromise_finishWithResult_error___block_invoke;
  block[3] = &unk_2798CD520;
  objc_copyWeak(&v27, buf);
  dispatch_async(v19, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v15 != 1;
}

void __36__MTPromise_finishWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[MTPromise _globalPromiseStorage];
  [v1 removeObject:WeakRetained];
}

- (id)BOOLCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __41__MTPromise_BOOLCompletionHandlerAdapter__block_invoke;
  v8 = &unk_2798CEC50;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x259C9F5D0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __41__MTPromise_BOOLCompletionHandlerAdapter__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 finishWithResult:v7 error:v8];
  }

  else
  {
    [WeakRetained finishWithResult:0 error:v8];
  }
}

- (id)completionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __37__MTPromise_completionHandlerAdapter__block_invoke;
  v8 = &unk_2798CEC78;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x259C9F5D0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __37__MTPromise_completionHandlerAdapter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResult:v6 error:v5];
}

- (id)errorOnlyCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __46__MTPromise_errorOnlyCompletionHandlerAdapter__block_invoke;
  v8 = &unk_2798CECA0;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x259C9F5D0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __46__MTPromise_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained finishWithError:v5];
  }

  else
  {
    [WeakRetained finishWithResult:MEMORY[0x277CBEC38]];
  }
}

- (id)nilValueCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __45__MTPromise_nilValueCompletionHandlerAdapter__block_invoke;
  v8 = &unk_2798CEC78;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x259C9F5D0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __45__MTPromise_nilValueCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v9 | v5)
  {
    if (v9)
    {
      [WeakRetained finishWithResult:?];
    }

    else
    {
      [WeakRetained finishWithError:v5];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v7 finishWithResult:v8];
  }
}

- (void)_addBlock:(id)a3 orCallWithResult:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MTPromise *)self stateLock];
  [v7 lock];

  v8 = [(MTPromise *)self promiseResult];
  if (v8)
  {
    v9 = [(MTPromise *)self stateLock];
    [v9 unlock];

    v6[2](v6, v8);
  }

  else
  {
    v11[2]();
    v10 = [(MTPromise *)self stateLock];
    [v10 unlock];
  }
}

+ (void)_configureAllPromise:(id)a3 withResults:(id)a4 promises:(id)a5 currentPromiseIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectAtIndexedSubscript:a6];
  objc_initWeak(&location, a1);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__MTPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke;
  v23[3] = &unk_2798CECC8;
  objc_copyWeak(v27, &location);
  v14 = v11;
  v24 = v14;
  v27[1] = a6;
  v15 = v12;
  v25 = v15;
  v16 = v10;
  v26 = v16;
  [v13 addSuccessBlock:v23];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__MTPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke_2;
  v19[3] = &unk_2798CECF0;
  v22 = a6;
  v17 = v15;
  v20 = v17;
  v18 = v16;
  v21 = v18;
  [v13 addErrorBlock:v19];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __75__MTPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) addObject:v3];

  v4 = *(a1 + 64);
  if (v4 == [*(a1 + 40) count] - 1)
  {
    [*(a1 + 48) finishWithResult:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _configureAllPromise:*(a1 + 48) withResults:*(a1 + 32) promises:*(a1 + 40) currentPromiseIndex:*(a1 + 64) + 1];
  }
}

void __75__MTPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithError:v5];
}

+ (void)_configureAnyPromise:(id)a3 withPromises:(id)a4 currentPromiseIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectAtIndexedSubscript:a5];
  objc_initWeak(&location, a1);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__MTPromise__configureAnyPromise_withPromises_currentPromiseIndex___block_invoke;
  v19[3] = &unk_2798CED18;
  v22 = a5;
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  [v10 addSuccessBlock:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MTPromise__configureAnyPromise_withPromises_currentPromiseIndex___block_invoke_2;
  v15[3] = &unk_2798CED40;
  objc_copyWeak(v18, &location);
  v18[1] = a5;
  v13 = v11;
  v16 = v13;
  v14 = v12;
  v17 = v14;
  [v10 addErrorBlock:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __67__MTPromise__configureAnyPromise_withPromises_currentPromiseIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithResult:v5];
}

void __67__MTPromise__configureAnyPromise_withPromises_currentPromiseIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 56);
  if (v4 == [*(a1 + 32) count] - 1)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    [WeakRetained _configureAnyPromise:*(a1 + 40) withPromises:*(a1 + 32) currentPromiseIndex:*(a1 + 56) + 1];
  }
}

+ (BOOL)_errorIsCanceledError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v3 code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_finishPromise:(id)a3 withPromise:(id)a4
{
  v5 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__MTPromise__finishPromise_withPromise___block_invoke;
  v11[3] = &unk_2798CED68;
  v6 = v5;
  v12 = v6;
  v7 = a4;
  [v7 addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MTPromise__finishPromise_withPromise___block_invoke_2;
  v9[3] = &unk_2798CDFB8;
  v10 = v6;
  v8 = v6;
  [v7 addErrorBlock:v9];
}

uint64_t __34__MTPromise__globalPromiseStorage__block_invoke()
{
  _globalPromiseStorage_sGlobalPromiseStorage = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__MTPromise__globalPromiseStorageAccessQueue__block_invoke()
{
  _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue = dispatch_queue_create("com.apple.MetricsKit.globalPromiseStorageAccessQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isFinished
{
  v2 = [(MTPromise *)self stateLock];
  v3 = [v2 condition] == 1;

  return v3;
}

@end
@interface MTPromise
+ (BOOL)_errorIsCanceledError:(id)error;
+ (MTPromise)promiseWithAll:(id)all;
+ (MTPromise)promiseWithAny:(id)any;
+ (MTPromise)promiseWithComposition:(id)composition;
+ (MTPromise)promiseWithError:(id)error;
+ (MTPromise)promiseWithResult:(id)result;
+ (id)_findUnfinishedPromise:(id)promise;
+ (id)_globalPromiseStorage;
+ (id)_globalPromiseStorageAccessQueue;
+ (id)_resultOfComposition:(id)composition errors:(id)errors;
+ (void)_configureAllPromise:(id)promise withResults:(id)results promises:(id)promises currentPromiseIndex:(unint64_t)index;
+ (void)_configureAnyPromise:(id)promise withPromises:(id)promises currentPromiseIndex:(unint64_t)index;
+ (void)_finishPromise:(id)promise withPromise:(id)withPromise;
+ (void)_setupCompositePromise:(id)promise composition:(id)composition;
+ (void)cancelPromisesInComposition:(id)composition;
- (BOOL)_isFinished;
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)result error:(id)error;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (MTPromise)init;
- (id)BOOLCompletionHandlerAdapter;
- (id)catchWithBlock:(id)block;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithError:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)thenWithBlock:(id)block;
- (void)_addBlock:(id)block orCallWithResult:(id)result;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
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

    v5 = [[NSConditionLock alloc] initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v5;

    v7 = +[MTPromise _globalPromiseStorageAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000036FC;
    block[3] = &unk_100020560;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

+ (MTPromise)promiseWithError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithError:errorCopy];

  return v4;
}

+ (MTPromise)promiseWithResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithResult:resultCopy];

  return v4;
}

+ (MTPromise)promiseWithAll:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc_init(NSMutableArray);
  [objc_opt_class() _configureAllPromise:v4 withResults:v5 promises:allCopy currentPromiseIndex:0];

  return v4;
}

+ (MTPromise)promiseWithAny:(id)any
{
  anyCopy = any;
  v4 = objc_alloc_init(objc_opt_class());
  [objc_opt_class() _configureAnyPromise:v4 withPromises:anyCopy currentPromiseIndex:0];

  return v4;
}

- (BOOL)isCancelled
{
  stateLock = [(MTPromise *)self stateLock];
  [stateLock lock];

  if ([(MTPromise *)self _isFinished])
  {
    v4 = objc_opt_class();
    promiseResult = [(MTPromise *)self promiseResult];
    error = [promiseResult error];
    v7 = [v4 _errorIsCanceledError:error];
  }

  else
  {
    v7 = 0;
  }

  stateLock2 = [(MTPromise *)self stateLock];
  [stateLock2 unlock];

  return v7;
}

- (BOOL)isFinished
{
  stateLock = [(MTPromise *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(MTPromise *)self _isFinished];
  stateLock2 = [(MTPromise *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  [(MTPromise *)self completionBlocks];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003B30;
  v11 = v10[3] = &unk_1000205E0;
  v12 = blockCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003B3C;
  v7[3] = &unk_100020608;
  v8 = v11;
  v9 = v12;
  v5 = v12;
  v6 = v11;
  [(MTPromise *)self _addBlock:v10 orCallWithResult:v7];
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  [(MTPromise *)self completionBlocks];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003C78;
  v11 = v10[3] = &unk_1000205E0;
  v12 = blockCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003C84;
  v7[3] = &unk_100020608;
  v8 = v11;
  v9 = v12;
  v5 = v12;
  v6 = v11;
  [(MTPromise *)self _addBlock:v10 orCallWithResult:v7];
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  [(MTPromise *)self completionBlocks];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003DC0;
  v11 = v10[3] = &unk_1000205E0;
  v12 = blockCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003DCC;
  v7[3] = &unk_100020608;
  v8 = v11;
  v9 = v12;
  v5 = v12;
  v6 = v11;
  [(MTPromise *)self _addBlock:v10 orCallWithResult:v7];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  stateLock = [(MTPromise *)self stateLock];
  v8 = [stateLock lockWhenCondition:1 beforeDate:dateCopy];

  if (v8)
  {
    promiseResult = [(MTPromise *)self promiseResult];
    stateLock2 = [(MTPromise *)self stateLock];
    [stateLock2 unlock];

    result = [promiseResult result];

    if (error && !result)
    {
      *error = [promiseResult error];
    }

    result2 = [promiseResult result];
  }

  else if (error)
  {
    MTError(400, 0, v9, v10, v11, v12, v13, v14, 0);
    *error = result2 = 0;
  }

  else
  {
    result2 = 0;
  }

  return result2;
}

- (id)resultWithError:(id *)error
{
  v5 = +[NSDate distantFuture];
  v6 = [(MTPromise *)self resultBeforeDate:v5 error:error];

  return v6;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v7 = [(MTPromise *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (id)catchWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MTPromise);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000414C;
  v11[3] = &unk_100020630;
  objc_copyWeak(&v14, &location);
  v6 = blockCopy;
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

- (id)thenWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MTPromise);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004330;
  v11[3] = &unk_100020630;
  objc_copyWeak(&v14, &location);
  v6 = blockCopy;
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

- (BOOL)cancel
{
  v3 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  LOBYTE(self) = [(MTPromise *)self finishWithResult:0 error:v3];

  return self;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = errorCopy;
  if (resultCopy && errorCopy)
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v28 = resultCopy;
      v29 = 2112;
      v30 = v8;
      v10 = "MetricsKit: Someone is finishing a promise with both a result and an error. This will result in both the success and error blocks being called. result = %@ error = %@";
      v11 = v9;
      v12 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    }
  }

  else
  {
    if (resultCopy | errorCopy)
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
  stateLock = [(MTPromise *)self stateLock];
  [stateLock lock];

  stateLock2 = [(MTPromise *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v20 = objc_opt_class();
    promiseResult = [(MTPromise *)self promiseResult];
    error = [promiseResult error];
    if ([v20 _errorIsCanceledError:error])
    {
    }

    else
    {
      v23 = [objc_opt_class() _errorIsCanceledError:v8];

      if (v23)
      {
        goto LABEL_16;
      }

      promiseResult = MTMetricsKitOSLog();
      if (os_log_type_enabled(promiseResult, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, promiseResult, OS_LOG_TYPE_DEBUG, "MetricsKit: Someone is attempting to finish a finished MTPromise.", buf, 2u);
      }
    }

LABEL_16:
    stateLock3 = [(MTPromise *)self stateLock];
    [(MTPromiseResult *)stateLock3 unlock];
    goto LABEL_17;
  }

  stateLock3 = [[MTPromiseResult alloc] initWithResult:resultCopy error:v8];
  [(MTPromise *)self setPromiseResult:stateLock3];
  stateLock4 = [(MTPromise *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  completionBlocks = [(MTPromise *)self completionBlocks];
  [completionBlocks flushCompletionBlocksWithPromiseResult:stateLock3];

  objc_initWeak(buf, self);
  v19 = +[MTPromise _globalPromiseStorageAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000047B4;
  block[3] = &unk_100020658;
  objc_copyWeak(&v26, buf);
  dispatch_async(v19, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
LABEL_17:

  return condition != 1;
}

- (id)BOOLCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000048F8;
  v8 = &unk_100020680;
  objc_copyWeak(&v9, &location);
  v2 = objc_retainBlock(&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (id)completionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100004A74;
  v8 = &unk_1000206A8;
  objc_copyWeak(&v9, &location);
  v2 = objc_retainBlock(&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (id)errorOnlyCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100004BCC;
  v8 = &unk_1000206D0;
  objc_copyWeak(&v9, &location);
  v2 = objc_retainBlock(&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (id)nilValueCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100004D28;
  v8 = &unk_1000206A8;
  objc_copyWeak(&v9, &location);
  v2 = objc_retainBlock(&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_addBlock:(id)block orCallWithResult:(id)result
{
  blockCopy = block;
  resultCopy = result;
  stateLock = [(MTPromise *)self stateLock];
  [stateLock lock];

  promiseResult = [(MTPromise *)self promiseResult];
  if (promiseResult)
  {
    stateLock2 = [(MTPromise *)self stateLock];
    [stateLock2 unlock];

    resultCopy[2](resultCopy, promiseResult);
  }

  else
  {
    blockCopy[2]();
    stateLock3 = [(MTPromise *)self stateLock];
    [stateLock3 unlock];
  }
}

+ (void)_configureAllPromise:(id)promise withResults:(id)results promises:(id)promises currentPromiseIndex:(unint64_t)index
{
  promiseCopy = promise;
  resultsCopy = results;
  promisesCopy = promises;
  v13 = [promisesCopy objectAtIndexedSubscript:index];
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000509C;
  v23[3] = &unk_1000206F8;
  objc_copyWeak(v27, &location);
  v14 = resultsCopy;
  v24 = v14;
  v27[1] = index;
  v15 = promisesCopy;
  v25 = v15;
  v16 = promiseCopy;
  v26 = v16;
  [v13 addSuccessBlock:v23];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005140;
  v19[3] = &unk_100020720;
  indexCopy = index;
  v17 = v15;
  v20 = v17;
  v18 = v16;
  v21 = v18;
  [v13 addErrorBlock:v19];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

+ (void)_configureAnyPromise:(id)promise withPromises:(id)promises currentPromiseIndex:(unint64_t)index
{
  promiseCopy = promise;
  promisesCopy = promises;
  v10 = [promisesCopy objectAtIndexedSubscript:index];
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005384;
  v19[3] = &unk_100020748;
  indexCopy = index;
  v11 = promisesCopy;
  v20 = v11;
  v12 = promiseCopy;
  v21 = v12;
  [v10 addSuccessBlock:v19];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005418;
  v15[3] = &unk_100020770;
  objc_copyWeak(v18, &location);
  v18[1] = index;
  v13 = v11;
  v16 = v13;
  v14 = v12;
  v17 = v14;
  [v10 addErrorBlock:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_finishPromise:(id)promise withPromise:(id)withPromise
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005624;
  v10[3] = &unk_100020798;
  promiseCopy = promise;
  v11 = promiseCopy;
  withPromiseCopy = withPromise;
  [withPromiseCopy addSuccessBlock:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005630;
  v8[3] = &unk_1000207C0;
  v9 = promiseCopy;
  v7 = promiseCopy;
  [withPromiseCopy addErrorBlock:v8];
}

+ (id)_globalPromiseStorage
{
  if (qword_100028100 != -1)
  {
    sub_100012C74();
  }

  v3 = qword_1000280F8;

  return v3;
}

+ (id)_globalPromiseStorageAccessQueue
{
  if (qword_100028110 != -1)
  {
    sub_100012C88();
  }

  v3 = qword_100028108;

  return v3;
}

- (BOOL)_isFinished
{
  stateLock = [(MTPromise *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

+ (id)_resultOfComposition:(id)composition errors:(id)errors
{
  compositionCopy = composition;
  errorsCopy = errors;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    promiseResult = [compositionCopy promiseResult];
    error = [promiseResult error];
    v10 = error;
    if (errorsCopy && error)
    {
      [errorsCopy addObject:error];
    }

    result = [promiseResult result];
    v12 = result;
    if (result)
    {
      v13 = result;
    }

    else
    {
      v13 = +[NSNull null];
    }

    v21 = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [compositionCopy count]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = compositionCopy;
      v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [self _resultOfComposition:*(*(&v37 + 1) + 8 * i) errors:errorsCopy];
            [v14 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
        v22 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [compositionCopy count]);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v32 = compositionCopy;
        v23 = compositionCopy;
        v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v34;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v33 + 1) + 8 * j);
              v29 = [v23 objectForKeyedSubscript:v28];
              v30 = [self _resultOfComposition:v29 errors:errorsCopy];
              [v22 setObject:v30 forKeyedSubscript:v28];
            }

            v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v25);
        }

        v21 = [v22 copy];
        compositionCopy = v32;
      }

      else
      {
        v21 = compositionCopy;
      }
    }
  }

  return v21;
}

+ (id)_findUnfinishedPromise:(id)promise
{
  promiseCopy = promise;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([promiseCopy isFinished])
    {
      v5 = 0;
    }

    else
    {
      v5 = promiseCopy;
    }

    v6 = v5;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = promiseCopy;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self _findUnfinishedPromise:*(*(&v23 + 1) + 8 * i)];
          if (v12)
          {
            v6 = v12;
            goto LABEL_28;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = promiseCopy;
    v13 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v17 = [v7 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * j), v19}];
          v6 = [self _findUnfinishedPromise:v17];

          if (v6)
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        v14 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

  return v6;
}

+ (void)_setupCompositePromise:(id)promise composition:(id)composition
{
  promiseCopy = promise;
  compositionCopy = composition;
  v8 = [self _findUnfinishedPromise:compositionCopy];
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009164;
    v10[3] = &unk_100020A50;
    selfCopy = self;
    v11 = promiseCopy;
    v12 = compositionCopy;
    [v8 addFinishBlock:v10];
  }

  else
  {
    v9 = [self _resultOfComposition:compositionCopy errors:0];
    [promiseCopy finishWithResult:v9];
  }
}

+ (MTPromise)promiseWithComposition:(id)composition
{
  compositionCopy = composition;
  v5 = objc_alloc_init(objc_opt_class());
  [self _setupCompositePromise:v5 composition:compositionCopy];

  return v5;
}

+ (void)cancelPromisesInComposition:(id)composition
{
  compositionCopy = composition;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = compositionCopy;
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [v4 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
            [MTPromise cancelPromisesInComposition:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = compositionCopy;
      v10 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v4);
            }

            [MTPromise cancelPromisesInComposition:*(*(&v14 + 1) + 8 * j), v14];
          }

          v11 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
        }

        while (v11);
      }
    }

    goto LABEL_21;
  }

  [compositionCopy cancel];
LABEL_21:
}

@end
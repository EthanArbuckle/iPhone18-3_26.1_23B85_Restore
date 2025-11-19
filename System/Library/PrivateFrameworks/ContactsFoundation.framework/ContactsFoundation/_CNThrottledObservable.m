@interface _CNThrottledObservable
- (_CNThrottledObservable)initWithInterval:(double)a3 options:(unint64_t)a4 observable:(id)a5 schedulerProvider:(id)a6;
- (id)subscribe:(id)a3;
- (void)dealloc;
- (void)observerScheduler_sendResultToObserver:(id)a3;
@end

@implementation _CNThrottledObservable

- (_CNThrottledObservable)initWithInterval:(double)a3 options:(unint64_t)a4 observable:(id)a5 schedulerProvider:(id)a6
{
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _CNThrottledObservable;
  v13 = [(_CNThrottledObservable *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = a3;
    v15 = 2;
    if (a4)
    {
      v15 = a4;
    }

    v13->_options = v15;
    objc_storeStrong(&v13->_observable, a5);
    v16 = [v12 newSerialSchedulerWithName:@"com.apple.contacts.reactive.throttle.downstream"];
    observerScheduler = v14->_observerScheduler;
    v14->_observerScheduler = v16;

    v18 = objc_alloc_init(CNUnfairLock);
    resourceLock = v14->_resourceLock;
    v14->_resourceLock = v18;

    v14->_isCoalescing = 0;
    v20 = v14;
  }

  return v14;
}

- (void)dealloc
{
  v3 = [(_CNThrottledObservable *)self delayToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = _CNThrottledObservable;
  [(_CNThrottledObservable *)&v4 dealloc];
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __36___CNThrottledObservable_subscribe___block_invoke;
  v28[3] = &unk_1E6ED5830;
  v28[4] = self;
  v5 = [CNCancelationToken tokenWithCancelationBlock:v28];
  v6 = [(_CNThrottledObservable *)self resourceLock];
  objc_initWeak(&location, self);
  v7 = objc_opt_class();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36___CNThrottledObservable_subscribe___block_invoke_2;
  v23[3] = &unk_1E6ED7D28;
  objc_copyWeak(&v26, &location);
  v8 = v6;
  v24 = v8;
  v9 = v4;
  v25 = v9;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36___CNThrottledObservable_subscribe___block_invoke_7;
  v20[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v22, &location);
  v10 = v9;
  v21 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36___CNThrottledObservable_subscribe___block_invoke_9;
  v17[3] = &unk_1E6ED7D50;
  objc_copyWeak(&v19, &location);
  v11 = v10;
  v18 = v11;
  v12 = [CNObserver blockObserverOfClass:v7 withResultBlock:v23 completionBlock:v20 failureBlock:v17];
  v13 = [(_CNThrottledObservable *)self observable];
  v14 = [v13 subscribe:v12];

  [v5 addCancelable:v14];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36___CNThrottledObservable_subscribe___block_invoke_11;
  v16[3] = &unk_1E6ED5830;
  v16[4] = self;
  [v5 addCancelationBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v5;
}

- (void)observerScheduler_sendResultToObserver:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v5 = [(_CNThrottledObservable *)self resourceLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___CNThrottledObservable_observerScheduler_sendResultToObserver___block_invoke;
  v6[3] = &unk_1E6ED5808;
  v6[4] = self;
  v6[5] = &v7;
  CNRunWithLock(v5, v6);

  if (v8[5])
  {
    [v4 observerDidReceiveResult:?];
  }

  _Block_object_dispose(&v7, 8);
}

@end
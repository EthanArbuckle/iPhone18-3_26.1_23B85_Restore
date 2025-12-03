@interface _CNDistinctUntilChangedObservable
- (BOOL)_resultIsDistinctFromLastResult:(id)result;
- (_CNDistinctUntilChangedObservable)initWithObservable:(id)observable;
- (id)subscribe:(id)subscribe;
@end

@implementation _CNDistinctUntilChangedObservable

- (_CNDistinctUntilChangedObservable)initWithObservable:(id)observable
{
  observableCopy = observable;
  v10.receiver = self;
  v10.super_class = _CNDistinctUntilChangedObservable;
  v6 = [(_CNDistinctUntilChangedObservable *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observable, observable);
    v8 = v7;
  }

  return v7;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(_CNDistinctUntilChangedObservableCancelationToken);
  observable = self->_observable;
  v7 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47___CNDistinctUntilChangedObservable_subscribe___block_invoke;
  v17[3] = &unk_1E6ED8170;
  objc_copyWeak(&v19, &location);
  v18 = subscribeCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47___CNDistinctUntilChangedObservable_subscribe___block_invoke_2;
  v15[3] = &unk_1E6ED5830;
  v16 = v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47___CNDistinctUntilChangedObservable_subscribe___block_invoke_3;
  v13[3] = &unk_1E6ED5A30;
  v8 = v16;
  v14 = v8;
  v9 = [CNObserver blockObserverOfClass:v7 withResultBlock:v17 completionBlock:v15 failureBlock:v13];
  v10 = [(CNObservable *)observable subscribe:v9];

  [(CNCancelationToken *)v5 addCancelable:v10];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___CNDistinctUntilChangedObservable_subscribe___block_invoke_4;
  v12[3] = &unk_1E6ED5830;
  v12[4] = self;
  [(CNCancelationToken *)v5 addCancelationBlock:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v5;
}

- (BOOL)_resultIsDistinctFromLastResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [resultCopy isEqual:selfCopy->_lastObservedResult];
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&selfCopy->_lastObservedResult, result);
  }

  objc_sync_exit(selfCopy);

  return v7 ^ 1;
}

@end
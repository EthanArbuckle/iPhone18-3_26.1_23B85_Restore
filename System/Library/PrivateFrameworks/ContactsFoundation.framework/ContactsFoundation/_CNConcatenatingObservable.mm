@interface _CNConcatenatingObservable
+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless;
@end

@implementation _CNConcatenatingObservable

+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless
{
  observerCopy = observer;
  observablesCopy = observables;
  unlessCopy = unless;
  firstObject = [observablesCopy firstObject];
  if (firstObject)
  {
    objc_initWeak(location, unlessCopy);
    _cn_tail = [observablesCopy _cn_tail];
    v13 = objc_opt_class();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke;
    v29[3] = &unk_1E6ED8170;
    objc_copyWeak(&v31, location);
    v14 = observerCopy;
    v30 = v14;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
    v25[3] = &unk_1E6ED8198;
    objc_copyWeak(v28, location);
    v28[1] = self;
    v15 = v14;
    v26 = v15;
    v16 = _cn_tail;
    v27 = v16;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
    v22 = &unk_1E6ED7D50;
    objc_copyWeak(&v24, location);
    v23 = v15;
    v17 = [CNObserver blockObserverOfClass:v13 withResultBlock:v29 completionBlock:v25 failureBlock:&v19];
    v18 = [firstObject subscribe:{v17, v19, v20, v21, v22}];

    [unlessCopy addCancelable:v18];
    objc_destroyWeak(&v24);

    objc_destroyWeak(v28);
    objc_destroyWeak(&v31);

    objc_destroyWeak(location);
  }

  else if (([unlessCopy isCanceled] & 1) == 0)
  {
    [observerCopy observerDidComplete];
  }
}

@end
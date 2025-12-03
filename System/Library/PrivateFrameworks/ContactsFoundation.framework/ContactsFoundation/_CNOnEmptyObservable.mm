@interface _CNOnEmptyObservable
- (_CNOnEmptyObservable)initWithObservable:(id)observable nextObservable:(id)nextObservable;
- (id)subscribe:(id)subscribe;
@end

@implementation _CNOnEmptyObservable

- (_CNOnEmptyObservable)initWithObservable:(id)observable nextObservable:(id)nextObservable
{
  observableCopy = observable;
  nextObservableCopy = nextObservable;
  v13.receiver = self;
  v13.super_class = _CNOnEmptyObservable;
  v9 = [(_CNOnEmptyObservable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observable, observable);
    objc_storeStrong(&v10->_nextObservable, nextObservable);
    v10->_observableIsEmpty = 1;
    v11 = v10;
  }

  return v10;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(_CNOnEmptyObservableCNCancelationToken);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observable = [(_CNOnEmptyObservable *)selfCopy observable];
  [(_CNOnEmptyObservable *)selfCopy setObservable:0];
  objc_sync_exit(selfCopy);

  if (observable)
  {
    objc_initWeak(&location, v5);
    v8 = objc_opt_class();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __34___CNOnEmptyObservable_subscribe___block_invoke;
    v19[3] = &unk_1E6ED63C8;
    v19[4] = selfCopy;
    v20 = subscribeCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34___CNOnEmptyObservable_subscribe___block_invoke_2;
    v16[3] = &unk_1E6ED7CB8;
    v16[4] = selfCopy;
    v17 = v20;
    objc_copyWeak(&v18, &location);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34___CNOnEmptyObservable_subscribe___block_invoke_3;
    v14[3] = &unk_1E6ED5A30;
    v15 = v17;
    v9 = [CNObserver blockObserverOfClass:v8 withResultBlock:v19 completionBlock:v16 failureBlock:v14];
    v10 = [observable subscribe:v9];

    [(CNCancelationToken *)v5 addCancelable:v10];
    v11 = v5;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = +[CNObservable emptyObservable];
    v11 = [v12 subscribe:subscribeCopy];
  }

  return v11;
}

@end
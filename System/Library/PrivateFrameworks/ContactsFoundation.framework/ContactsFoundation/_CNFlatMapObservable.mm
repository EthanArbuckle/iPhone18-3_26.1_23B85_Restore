@interface _CNFlatMapObservable
+ (id)observableWithObservable:(id)observable transform:(id)transform decoratorGenerator:(id)generator schedulerProvider:(id)provider;
- (_CNFlatMapObservable)initWithObservable:(id)observable transform:(id)transform decoratorGenerator:(id)generator schedulerProvider:(id)provider;
- (id)subscribe:(id)subscribe;
- (id)subscribeInnerObservable:(id)observable observer:(id)observer context:(id)context;
@end

@implementation _CNFlatMapObservable

+ (id)observableWithObservable:(id)observable transform:(id)transform decoratorGenerator:(id)generator schedulerProvider:(id)provider
{
  providerCopy = provider;
  generatorCopy = generator;
  transformCopy = transform;
  observableCopy = observable;
  v14 = [[self alloc] initWithObservable:observableCopy transform:transformCopy decoratorGenerator:generatorCopy schedulerProvider:providerCopy];

  return v14;
}

- (_CNFlatMapObservable)initWithObservable:(id)observable transform:(id)transform decoratorGenerator:(id)generator schedulerProvider:(id)provider
{
  observableCopy = observable;
  transformCopy = transform;
  generatorCopy = generator;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = _CNFlatMapObservable;
  v14 = [(_CNFlatMapObservable *)&v21 init];
  if (v14)
  {
    v15 = [observableCopy map:transformCopy];
    observable = v14->_observable;
    v14->_observable = v15;

    v17 = [generatorCopy copy];
    decoratorGenerator = v14->_decoratorGenerator;
    v14->_decoratorGenerator = v17;

    objc_storeStrong(&v14->_schedulerProvider, provider);
    v19 = v14;
  }

  return v14;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(CNFlatMapSubscribeCancelationToken);
  v6 = [_CNFlatMapSubscriptionContext alloc];
  schedulerProvider = [(_CNFlatMapObservable *)self schedulerProvider];
  v8 = [(_CNFlatMapSubscriptionContext *)v6 initWithSchedulerProvider:schedulerProvider];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34___CNFlatMapObservable_subscribe___block_invoke;
  aBlock[3] = &unk_1E6ED59E0;
  v9 = v8;
  v37 = v9;
  v10 = subscribeCopy;
  v38 = v10;
  v11 = _Block_copy(aBlock);
  objc_initWeak(&location, v5);
  v12 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __34___CNFlatMapObservable_subscribe___block_invoke_7;
  v29[3] = &unk_1E6ED8318;
  v30 = v9;
  selfCopy = self;
  v13 = v11;
  v33 = v13;
  v32 = v10;
  objc_copyWeak(&v34, &location);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __34___CNFlatMapObservable_subscribe___block_invoke_9;
  v26[3] = &unk_1E6ED5168;
  v14 = v30;
  v27 = v14;
  v15 = v32;
  v28 = v15;
  v16 = [CNObserver blockObserverOfClass:v12 withResultBlock:v29 completionBlock:v26 failureBlock:v13];
  observable = [(_CNFlatMapObservable *)self observable];
  v18 = [observable subscribe:v16];

  resourceLock = [(_CNFlatMapSubscriptionContext *)v14 resourceLock];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __34___CNFlatMapObservable_subscribe___block_invoke_12;
  v23[3] = &unk_1E6ED5168;
  v20 = v14;
  v24 = v20;
  v21 = v18;
  v25 = v21;
  [resourceLock performBlock:v23];

  [(CNCancelationToken *)v5 addCancelable:v21];
  objc_destroyWeak(&v34);

  objc_destroyWeak(&location);

  return v5;
}

- (id)subscribeInnerObservable:(id)observable observer:(id)observer context:(id)context
{
  observableCopy = observable;
  observerCopy = observer;
  contextCopy = context;
  objc_initWeak(location, contextCopy);
  decoratorGenerator = [(_CNFlatMapObservable *)self decoratorGenerator];
  downstream = [contextCopy downstream];
  v13 = (decoratorGenerator)[2](decoratorGenerator, downstream);

  resourceLock = [contextCopy resourceLock];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke;
  v49[3] = &unk_1E6ED5168;
  v15 = contextCopy;
  v50 = v15;
  v16 = v13;
  v51 = v16;
  [resourceLock performBlock:v49];

  v17 = objc_alloc_init(CNFlatMapSubscribeInnerObservableCancelationToken);
  objc_initWeak(&from, v16);
  objc_initWeak(&v47, v17);
  v18 = objc_opt_class();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_2;
  v43[3] = &unk_1E6ED6828;
  objc_copyWeak(&v45, &from);
  objc_copyWeak(&v46, &v47);
  v19 = observerCopy;
  v44 = v19;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_5;
  v37[3] = &unk_1E6ED8390;
  v20 = v16;
  v38 = v20;
  v21 = v15;
  v39 = v21;
  objc_copyWeak(&v41, location);
  objc_copyWeak(&v42, &v47);
  v22 = v19;
  v40 = v22;
  v23 = [CNObserver blockObserverOfClass:v18 withResultBlock:v43 completionBlock:v37 failureBlock:0];
  v24 = [observableCopy subscribe:v23];

  [(CNCancelationToken *)v17 addCancelable:v24];
  resourceLock2 = [v21 resourceLock];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_9;
  v34 = &unk_1E6ED5168;
  v26 = v21;
  v35 = v26;
  v27 = v17;
  v36 = v27;
  [resourceLock2 performBlock:&v31];

  v28 = [_CNFlatMapInnerSubscriptionContext alloc];
  v29 = [(_CNFlatMapInnerSubscriptionContext *)v28 initWithDecorator:v20 token:v27, v31, v32, v33, v34];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&from);

  objc_destroyWeak(location);

  return v29;
}

@end
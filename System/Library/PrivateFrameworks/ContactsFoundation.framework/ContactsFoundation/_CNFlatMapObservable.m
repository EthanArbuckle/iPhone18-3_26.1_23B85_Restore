@interface _CNFlatMapObservable
+ (id)observableWithObservable:(id)a3 transform:(id)a4 decoratorGenerator:(id)a5 schedulerProvider:(id)a6;
- (_CNFlatMapObservable)initWithObservable:(id)a3 transform:(id)a4 decoratorGenerator:(id)a5 schedulerProvider:(id)a6;
- (id)subscribe:(id)a3;
- (id)subscribeInnerObservable:(id)a3 observer:(id)a4 context:(id)a5;
@end

@implementation _CNFlatMapObservable

+ (id)observableWithObservable:(id)a3 transform:(id)a4 decoratorGenerator:(id)a5 schedulerProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithObservable:v13 transform:v12 decoratorGenerator:v11 schedulerProvider:v10];

  return v14;
}

- (_CNFlatMapObservable)initWithObservable:(id)a3 transform:(id)a4 decoratorGenerator:(id)a5 schedulerProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = _CNFlatMapObservable;
  v14 = [(_CNFlatMapObservable *)&v21 init];
  if (v14)
  {
    v15 = [v10 map:v11];
    observable = v14->_observable;
    v14->_observable = v15;

    v17 = [v12 copy];
    decoratorGenerator = v14->_decoratorGenerator;
    v14->_decoratorGenerator = v17;

    objc_storeStrong(&v14->_schedulerProvider, a6);
    v19 = v14;
  }

  return v14;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNFlatMapSubscribeCancelationToken);
  v6 = [_CNFlatMapSubscriptionContext alloc];
  v7 = [(_CNFlatMapObservable *)self schedulerProvider];
  v8 = [(_CNFlatMapSubscriptionContext *)v6 initWithSchedulerProvider:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34___CNFlatMapObservable_subscribe___block_invoke;
  aBlock[3] = &unk_1E6ED59E0;
  v9 = v8;
  v37 = v9;
  v10 = v4;
  v38 = v10;
  v11 = _Block_copy(aBlock);
  objc_initWeak(&location, v5);
  v12 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __34___CNFlatMapObservable_subscribe___block_invoke_7;
  v29[3] = &unk_1E6ED8318;
  v30 = v9;
  v31 = self;
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
  v17 = [(_CNFlatMapObservable *)self observable];
  v18 = [v17 subscribe:v16];

  v19 = [(_CNFlatMapSubscriptionContext *)v14 resourceLock];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __34___CNFlatMapObservable_subscribe___block_invoke_12;
  v23[3] = &unk_1E6ED5168;
  v20 = v14;
  v24 = v20;
  v21 = v18;
  v25 = v21;
  [v19 performBlock:v23];

  [(CNCancelationToken *)v5 addCancelable:v21];
  objc_destroyWeak(&v34);

  objc_destroyWeak(&location);

  return v5;
}

- (id)subscribeInnerObservable:(id)a3 observer:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(location, v10);
  v11 = [(_CNFlatMapObservable *)self decoratorGenerator];
  v12 = [v10 downstream];
  v13 = (v11)[2](v11, v12);

  v14 = [v10 resourceLock];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke;
  v49[3] = &unk_1E6ED5168;
  v15 = v10;
  v50 = v15;
  v16 = v13;
  v51 = v16;
  [v14 performBlock:v49];

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
  v19 = v9;
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
  v24 = [v8 subscribe:v23];

  [(CNCancelationToken *)v17 addCancelable:v24];
  v25 = [v21 resourceLock];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_9;
  v34 = &unk_1E6ED5168;
  v26 = v21;
  v35 = v26;
  v27 = v17;
  v36 = v27;
  [v25 performBlock:&v31];

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
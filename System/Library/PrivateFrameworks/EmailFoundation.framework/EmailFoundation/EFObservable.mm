@interface EFObservable
+ (id)combineLatest:(id)a3;
+ (id)concatenate:(id)a3;
+ (id)merge:(id)a3;
+ (id)observableAfterDelay:(double)a3 interval:(double)a4 scheduler:(id)a5;
+ (id)observableAfterDelay:(double)a3 scheduler:(id)a4;
+ (id)observableObserver;
+ (id)observableOnDefaultNotificationCenterWithName:(id)a3 object:(id)a4;
+ (id)observableOnNotificationCenter:(id)a3 name:(id)a4 object:(id)a5;
+ (id)observableOnNotifyTokenWithName:(id)a3;
+ (id)observableWithBlock:(id)a3;
+ (id)observableWithError:(id)a3;
+ (id)observableWithFuture:(id)a3;
+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8;
+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 scheduler:(id)a7;
+ (id)observableWithResult:(id)a3;
+ (id)observableWithResults:(id)a3;
+ (id)observableWithResults:(id)a3 scheduler:(id)a4;
+ (id)observableWithTimeInterval:(double)a3 scheduler:(id)a4;
- (id)allObjects:(id *)a3;
- (id)debounceWithTimeInterval:(double)a3;
- (id)debounceWithTimeInterval:(double)a3 scheduler:(id)a4;
- (id)delay:(double)a3 scheduler:(id)a4;
- (id)distinctUntilChanged;
- (id)doOnCancel:(id)a3;
- (id)doOnCompletion:(id)a3;
- (id)doOnError:(id)a3;
- (id)doOnNext:(id)a3;
- (id)doOnSubscribe:(id)a3;
- (id)doOnTerminate:(id)a3;
- (id)filter:(id)a3;
- (id)map:(id)a3;
- (id)multicast:(id)a3;
- (id)observeOn:(id)a3;
- (id)publish;
- (id)replay:(unint64_t)a3;
- (id)sampleWithObservable:(id)a3;
- (id)sampleWithTimeInterval:(double)a3;
- (id)sampleWithTimeInterval:(double)a3 scheduler:(id)a4;
- (id)skip:(unint64_t)a3;
- (id)startWith:(id)a3;
- (id)startWith:(id)a3 scheduler:(id)a4;
- (id)subscribeOn:(id)a3;
- (id)subscribeWithResultBlock:(id)a3;
- (id)take:(unint64_t)a3;
@end

@implementation EFObservable

+ (id)observableObserver
{
  v2 = objc_alloc_init(_EFManualObservable);

  return v2;
}

void ___ef_log_EFObservable_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFObservable");
  v1 = _ef_log_EFObservable_log;
  _ef_log_EFObservable_log = v0;
}

+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 scheduler:(id)a7
{
  v7 = [a1 observableWithInitialState:a3 condition:a4 nextState:a5 resultSelector:a6 delay:0 scheduler:a7];

  return v7;
}

+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [[_EFGeneratorObservable alloc] initWithInitialState:v13 condition:v14 nextState:v15 resultSelector:v16 delay:v17 scheduler:v18];

  return v19;
}

+ (id)observableWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[_EFBlockObservable alloc] initWithBlock:v3];

  return v4;
}

+ (id)observableWithFuture:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__EFObservable_observableWithFuture___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__37__EFObservable_observableWithFuture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v5 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__EFObservable_observableWithFuture___block_invoke_2;
  v17[3] = &unk_1E82484E0;
  v6 = v4;
  v18 = v6;
  v7 = v3;
  v19 = v7;
  [v5 addSuccessBlock:v17];
  v8 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__EFObservable_observableWithFuture___block_invoke_3;
  v14[3] = &unk_1E8248530;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  [v8 addFailureBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __37__EFObservable_observableWithFuture___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
    [*(a1 + 40) observerDidComplete];
  }
}

void __37__EFObservable_observableWithFuture___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidFailWithError:v3];
  }
}

+ (id)observableWithResult:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__EFObservable_observableWithResult___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__37__EFObservable_observableWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 observerDidReceiveResult:*(a1 + 32)];
  [v3 observerDidComplete];
  v4 = objc_alloc_init(EFManualCancelationToken);

  return v4;
}

+ (id)observableWithResults:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [a1 observableWithResults:v4 scheduler:v5];

  return v6;
}

+ (id)observableWithResults:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__EFObservable_observableWithResults_scheduler___block_invoke;
  v14[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v14[4] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__EFObservable_observableWithResults_scheduler___block_invoke_3;
  v12[3] = &unk_1E8249548;
  v9 = v6;
  v13 = v9;
  v10 = [a1 observableWithInitialState:&unk_1F45ACFE0 condition:v14 nextState:&__block_literal_global_23 resultSelector:v12 scheduler:v7];

  return v10;
}

id __48__EFObservable_observableWithResults_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "unsignedIntegerValue") + 1}];

  return v3;
}

id __48__EFObservable_observableWithResults_scheduler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "unsignedIntegerValue")}];

  return v4;
}

+ (id)observableWithError:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__EFObservable_observableWithError___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__36__EFObservable_observableWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 observerDidFailWithError:*(a1 + 32)];
  v4 = objc_alloc_init(EFManualCancelationToken);

  return v4;
}

+ (id)observableWithTimeInterval:(double)a3 scheduler:(id)a4
{
  v4 = [a1 observableAfterDelay:a4 interval:a3 scheduler:a3];

  return v4;
}

+ (id)observableAfterDelay:(double)a3 scheduler:(id)a4
{
  v4 = [a1 observableAfterDelay:a4 interval:a3 scheduler:1.79769313e308];

  return v4;
}

+ (id)observableAfterDelay:(double)a3 interval:(double)a4 scheduler:(id)a5
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke;
  v8[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  *&v8[4] = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke_2_21;
  v7[3] = &__block_descriptor_48_e18_d16__0__NSNumber_8l;
  *&v7[4] = a3;
  *&v7[5] = a4;
  v5 = [EFObservable observableWithInitialState:&unk_1F45ACFE0 condition:v8 nextState:&__block_literal_global_13_0 resultSelector:&__block_literal_global_19 delay:v7 scheduler:a5];

  return v5;
}

BOOL __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 1.79769313e308 - *(a1 + 32) > 2.22044605e-16 || [v3 integerValue] < 1;

  return v5;
}

id __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 integerValue])
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_1F45ACFF8;
  }

  return v3;
}

id __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke_16()
{
  v0 = [MEMORY[0x1E695DFB0] null];

  return v0;
}

double __56__EFObservable_observableAfterDelay_interval_scheduler___block_invoke_2_21(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = 40;
  if (!v3)
  {
    v4 = 32;
  }

  return *(a1 + v4);
}

+ (id)observableOnNotificationCenter:(id)a3 name:(id)a4 object:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__EFObservable_observableOnNotificationCenter_name_object___block_invoke;
  v16[3] = &unk_1E82495D8;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = [a1 observableWithBlock:v16];

  return v14;
}

EFManualCancelationToken *__59__EFObservable_observableOnNotificationCenter_name_object___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__EFObservable_observableOnNotificationCenter_name_object___block_invoke_2;
  v18[3] = &unk_1E82495B0;
  v8 = v3;
  v19 = v8;
  v9 = v4;
  v20 = v9;
  v10 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__EFObservable_observableOnNotificationCenter_name_object___block_invoke_3;
  v15[3] = &unk_1E82485D0;
  v16 = *(a1 + 32);
  v17 = v10;
  v11 = v10;
  [(EFManualCancelationToken *)v9 addCancelationBlock:v15];
  v12 = v17;
  v13 = v9;

  return v9;
}

+ (id)observableOnDefaultNotificationCenterWithName:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [a1 observableOnNotificationCenter:v8 name:v6 object:v7];

  return v9;
}

+ (id)observableOnNotifyTokenWithName:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EFObservable_observableOnNotifyTokenWithName___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__48__EFObservable_observableOnNotifyTokenWithName___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  out_token = -1;
  v5 = [*(a1 + 32) UTF8String];
  v6 = dispatch_get_global_queue(21, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __48__EFObservable_observableOnNotifyTokenWithName___block_invoke_2;
  handler[3] = &unk_1E8249600;
  v7 = v3;
  v20 = v7;
  LODWORD(v5) = notify_register_dispatch(v5, &out_token, v6, handler);

  if (v5)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *__error();
    v22 = *MEMORY[0x1E696A578];
    v10 = MEMORY[0x1E696AEC0];
    v11 = __error();
    v12 = [v10 stringWithUTF8String:strerror(*v11)];
    v23[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:v9 userInfo:v13];
    [v7 observerDidFailWithError:v14];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__EFObservable_observableOnNotifyTokenWithName___block_invoke_3;
    v17[3] = &__block_descriptor_36_e5_v8__0l;
    v18 = out_token;
    [(EFManualCancelationToken *)v4 addCancelationBlock:v17];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

void __48__EFObservable_observableOnNotifyTokenWithName___block_invoke_2(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  state = notify_get_state(a2, &state64);
  v6 = *(a1 + 32);
  if (state)
  {
    [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
  }
  v7 = ;
  [v6 observerDidReceiveResult:v7];

  objc_autoreleasePoolPop(v4);
}

+ (id)combineLatest:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [[_EFCombineLatestObservable alloc] initWithObservables:v3];
  }

  else
  {
    v4 = +[EFObservable emptyObservable];
  }

  v5 = v4;

  return v5;
}

+ (id)concatenate:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__EFObservable_concatenate___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__28__EFObservable_concatenate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  [_EFConcatenatingObservable subscribeObserver:v3 toObservables:*(a1 + 32) unless:v4];

  return v4;
}

+ (id)merge:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __22__EFObservable_merge___block_invoke;
  v8[3] = &unk_1E82494E0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 observableWithBlock:v8];

  return v6;
}

EFManualCancelationToken *__22__EFObservable_merge___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  [_EFMergingObservable subscribeObserver:v3 toObservables:*(a1 + 32) unless:v4];

  return v4;
}

EFManualCancelationToken *__31__EFObservable_neverObservable__block_invoke()
{
  v0 = objc_alloc_init(EFManualCancelationToken);

  return v0;
}

EFManualCancelationToken *__31__EFObservable_emptyObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 observerDidComplete];
  v3 = objc_alloc_init(EFManualCancelationToken);

  return v3;
}

- (id)subscribeWithResultBlock:(id)a3
{
  v4 = [EFObserver observerWithResultBlock:a3];
  v5 = [(EFObservable *)self subscribe:v4];

  return v5;
}

- (id)subscribeOn:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__EFObservable_subscribeOn___block_invoke;
  v9[3] = &unk_1E8249690;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

EFManualCancelationToken *__28__EFObservable_subscribeOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v5 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__EFObservable_subscribeOn___block_invoke_2;
  v12[3] = &unk_1E8249668;
  v6 = v4;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  v15 = v8;
  v9 = [v5 performCancelableBlock:v12];
  [(EFManualCancelationToken *)v6 addCancelable:v9];
  v10 = v6;

  return v6;
}

void __28__EFObservable_subscribeOn___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) subscribe:*(a1 + 48)];
  [v1 addCancelable:?];
}

- (id)observeOn:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __26__EFObservable_observeOn___block_invoke;
  v9[3] = &unk_1E8249690;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

EFManualCancelationToken *__26__EFObservable_observeOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __26__EFObservable_observeOn___block_invoke_2;
  v20[3] = &unk_1E82496B8;
  v5 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = v4;
  v23 = v3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __26__EFObservable_observeOn___block_invoke_4;
  v16[3] = &unk_1E8248AC8;
  v17 = *(a1 + 40);
  v18 = v22;
  v19 = v23;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __26__EFObservable_observeOn___block_invoke_6;
  v12[3] = &unk_1E82496E0;
  v13 = *(a1 + 40);
  v6 = v18;
  v14 = v6;
  v7 = v19;
  v15 = v7;
  v8 = [EFObserver observerWithResultBlock:v20 completionBlock:v16 failureBlock:v12];
  v9 = [v5 subscribe:v8];

  [(EFManualCancelationToken *)v6 addCancelable:v9];
  v10 = v6;

  return v6;
}

void __26__EFObservable_observeOn___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__EFObservable_observeOn___block_invoke_3;
  v6[3] = &unk_1E8248AC8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t __26__EFObservable_observeOn___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidReceiveResult:v4];
  }

  return result;
}

void __26__EFObservable_observeOn___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__EFObservable_observeOn___block_invoke_5;
  v3[3] = &unk_1E82485D0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performBlock:v3];
}

uint64_t __26__EFObservable_observeOn___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

void __26__EFObservable_observeOn___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__EFObservable_observeOn___block_invoke_7;
  v6[3] = &unk_1E8248AC8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t __26__EFObservable_observeOn___block_invoke_7(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidFailWithError:v4];
  }

  return result;
}

- (id)allObjects:(id *)a3
{
  v5 = +[EFPromise promise];
  v6 = [v5 completionHandlerAdapter];
  v7 = [EFObserver observerWithCompletionHandler:v6];
  v8 = [(EFObservable *)self subscribe:v7];

  v9 = [v5 future];
  v10 = [v9 result:a3];

  return v10;
}

- (id)doOnSubscribe:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__EFObservable_doOnSubscribe___block_invoke;
  v9[3] = &unk_1E8249708;
  v6 = v4;
  v9[4] = self;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __30__EFObservable_doOnSubscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) subscribe:v3];

  return v4;
}

- (id)doOnNext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__EFObservable_doOnNext___block_invoke;
  v9[3] = &unk_1E8249730;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __25__EFObservable_doOnNext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __25__EFObservable_doOnNext___block_invoke_2;
  v16[3] = &unk_1E82489B0;
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __25__EFObservable_doOnNext___block_invoke_3;
  v14[3] = &unk_1E8248580;
  v15 = v17;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __25__EFObservable_doOnNext___block_invoke_4;
  v12 = &unk_1E82485A8;
  v5 = v15;
  v13 = v5;
  v6 = [EFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __25__EFObservable_doOnNext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) observerDidReceiveResult:v3];
}

- (id)doOnCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__EFObservable_doOnCompletion___block_invoke;
  v9[3] = &unk_1E8249730;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __31__EFObservable_doOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __31__EFObservable_doOnCompletion___block_invoke_2;
  v17[3] = &unk_1E8248648;
  v18 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__EFObservable_doOnCompletion___block_invoke_3;
  v14[3] = &unk_1E82490A0;
  v15 = v18;
  v16 = *(a1 + 40);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __31__EFObservable_doOnCompletion___block_invoke_4;
  v12 = &unk_1E82485A8;
  v5 = v15;
  v13 = v5;
  v6 = [EFObserver observerWithResultBlock:v17 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

uint64_t __31__EFObservable_doOnCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)doOnError:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __26__EFObservable_doOnError___block_invoke;
  v9[3] = &unk_1E8249730;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __26__EFObservable_doOnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __26__EFObservable_doOnError___block_invoke_2;
  v17[3] = &unk_1E8248648;
  v18 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __26__EFObservable_doOnError___block_invoke_3;
  v15[3] = &unk_1E8248580;
  v16 = v18;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __26__EFObservable_doOnError___block_invoke_4;
  v12 = &unk_1E8248BE0;
  v5 = v16;
  v13 = v5;
  v14 = *(a1 + 40);
  v6 = [EFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __26__EFObservable_doOnError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) observerDidFailWithError:?];
  (*(*(a1 + 40) + 16))();
}

- (id)doOnCancel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __27__EFObservable_doOnCancel___block_invoke;
  v9[3] = &unk_1E8249730;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __27__EFObservable_doOnCancel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __27__EFObservable_doOnCancel___block_invoke_2;
  v17[3] = &unk_1E8249758;
  v17[4] = v18;
  v5 = [v4 doOnCompletion:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __27__EFObservable_doOnCancel___block_invoke_3;
  v16[3] = &unk_1E8249780;
  v16[4] = v18;
  v6 = [v5 doOnError:v16];
  v7 = [v6 subscribe:v3];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __27__EFObservable_doOnCancel___block_invoke_4;
  v13 = &unk_1E82497A8;
  v15 = v18;
  v14 = *(a1 + 40);
  v8 = [EFManualCancelationToken tokenWithCancelationBlock:&v10];
  [v8 addCancelable:{v7, v10, v11, v12, v13}];

  _Block_object_dispose(v18, 8);

  return v8;
}

uint64_t __27__EFObservable_doOnCancel___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)doOnTerminate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__EFObservable_doOnTerminate___block_invoke;
  v9[3] = &unk_1E8249730;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __30__EFObservable_doOnTerminate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__EFObservable_doOnTerminate___block_invoke_2;
  v15[3] = &unk_1E8248648;
  v16 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__EFObservable_doOnTerminate___block_invoke_3;
  v12[3] = &unk_1E82490A0;
  v13 = v16;
  v14 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__EFObservable_doOnTerminate___block_invoke_4;
  v9[3] = &unk_1E8248BE0;
  v5 = v13;
  v10 = v5;
  v11 = *(a1 + 40);
  v6 = [EFObserver observerWithResultBlock:v15 completionBlock:v12 failureBlock:v9];
  v7 = [v4 subscribe:v6];

  return v7;
}

uint64_t __30__EFObservable_doOnTerminate___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __30__EFObservable_doOnTerminate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) observerDidFailWithError:?];
  (*(*(a1 + 40) + 16))();
}

- (id)debounceWithTimeInterval:(double)a3
{
  v5 = +[EFScheduler globalAsyncScheduler];
  v6 = [(EFObservable *)self debounceWithTimeInterval:v5 scheduler:a3];

  return v6;
}

- (id)debounceWithTimeInterval:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke;
  v11[3] = &unk_1E8249848;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = a3;
  v9 = [v7 observableWithBlock:v11];

  return v9;
}

EFManualCancelationToken *__51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__5;
  v31[4] = __Block_byref_object_dispose__5;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2810000000;
  v29[3] = &unk_1C61D722D;
  v30 = 0;
  objc_initWeak(&location, v4);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_43;
  v21[3] = &unk_1E82497F8;
  v24 = v29;
  v25 = v33;
  v26 = v31;
  v5 = *(a1 + 32);
  v22 = *(a1 + 40);
  v27[1] = *(a1 + 48);
  objc_copyWeak(v27, &location);
  v6 = v3;
  v23 = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_3;
  v16[3] = &unk_1E8249820;
  v18 = v29;
  v19 = v31;
  objc_copyWeak(&v20, &location);
  v17 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_4;
  v14 = &unk_1E82485A8;
  v7 = v17;
  v15 = v7;
  v8 = [EFObserver observerWithResultBlock:v21 completionBlock:v16 failureBlock:&v11];
  v9 = [v5 subscribe:{v8, v11, v12, v13, v14}];

  [(EFManualCancelationToken *)v4 addCancelable:v9];
  objc_destroyWeak(&v20);

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);

  return v4;
}

void __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_43(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 48) + 8);
  os_unfair_lock_lock(v5 + 8);
  ++*(*(*(a1 + 56) + 8) + 24);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  os_unfair_lock_unlock(v5 + 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_2;
  v9[3] = &unk_1E82497D0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  objc_copyWeak(&v13, (a1 + 72));
  v10 = *(a1 + 40);
  v8 = [v6 afterDelay:v9 performBlock:v7];

  objc_destroyWeak(&v13);
}

void __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  os_unfair_lock_lock(v2 + 8);
  if (--*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  os_unfair_lock_unlock(v2 + 8);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && v6 && ([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidReceiveResult:v6];
  }
}

void __51__EFObservable_debounceWithTimeInterval_scheduler___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  os_unfair_lock_lock(v2 + 8);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  os_unfair_lock_unlock(v2 + 8);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCanceled] & 1) == 0)
  {
    if (v7)
    {
      [*(a1 + 32) observerDidReceiveResult:v7];
    }

    [*(a1 + 32) observerDidComplete];
  }
}

- (id)delay:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__EFObservable_delay_scheduler___block_invoke;
  v11[3] = &unk_1E8249848;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = a3;
  v9 = [v7 observableWithBlock:v11];

  return v9;
}

EFManualCancelationToken *__32__EFObservable_delay_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __32__EFObservable_delay_scheduler___block_invoke_2;
  v20[3] = &unk_1E8248A50;
  v5 = *(a1 + 32);
  v21 = *(a1 + 40);
  v24 = *(a1 + 48);
  v22 = v4;
  v23 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__EFObservable_delay_scheduler___block_invoke_4;
  v15[3] = &unk_1E8248508;
  v16 = *(a1 + 40);
  v19 = *(a1 + 48);
  v6 = v22;
  v17 = v6;
  v18 = v23;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__EFObservable_delay_scheduler___block_invoke_6;
  v13[3] = &unk_1E82485A8;
  v7 = v18;
  v14 = v7;
  v8 = [EFObserver observerWithResultBlock:v20 completionBlock:v15 failureBlock:v13];
  v9 = [v5 subscribe:v8];
  [(EFManualCancelationToken *)v6 addCancelable:v9];

  v10 = v14;
  v11 = v6;

  return v6;
}

void __32__EFObservable_delay_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__EFObservable_delay_scheduler___block_invoke_3;
  v8[3] = &unk_1E8248AC8;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v6 = v3;
  v7 = [v5 afterDelay:v8 performBlock:v4];
}

uint64_t __32__EFObservable_delay_scheduler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidReceiveResult:v4];
  }

  return result;
}

void __32__EFObservable_delay_scheduler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__EFObservable_delay_scheduler___block_invoke_5;
  v5[3] = &unk_1E82485D0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = [v3 afterDelay:v5 performBlock:v2];
}

uint64_t __32__EFObservable_delay_scheduler___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

- (id)distinctUntilChanged
{
  v2 = [[_EFDistinctUntilChangedObservable alloc] initWithObservable:self];

  return v2;
}

- (id)take:(unint64_t)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__EFObservable_take___block_invoke;
  v7[3] = &unk_1E8249898;
  v7[4] = self;
  v7[5] = v8;
  v5 = [v4 observableWithBlock:v7];
  _Block_object_dispose(v8, 8);

  return v5;
}

EFManualCancelationToken *__21__EFObservable_take___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __21__EFObservable_take___block_invoke_2;
  v17[3] = &unk_1E8249870;
  v5 = *(a1 + 32);
  v20 = *(a1 + 40);
  v18 = v3;
  v6 = v4;
  v19 = v6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __21__EFObservable_take___block_invoke_3;
  v15[3] = &unk_1E8248580;
  v16 = v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __21__EFObservable_take___block_invoke_4;
  v13[3] = &unk_1E82485A8;
  v7 = v16;
  v14 = v7;
  v8 = [EFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:v13];
  v9 = [v5 subscribe:v8];
  [(EFManualCancelationToken *)v6 addCancelable:v9];

  v10 = v14;
  v11 = v6;

  return v6;
}

void __21__EFObservable_take___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 24) || ([*(a1 + 32) observerDidReceiveResult:v3], --*(*(*(a1 + 48) + 8) + 24), !*(*(*(a1 + 48) + 8) + 24)))
  {
    [*(a1 + 32) observerDidComplete];
    [*(a1 + 40) cancel];
  }
}

- (id)skip:(unint64_t)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__EFObservable_skip___block_invoke;
  v7[3] = &unk_1E8249898;
  v7[4] = self;
  v7[5] = v8;
  v5 = [v4 observableWithBlock:v7];
  _Block_object_dispose(v8, 8);

  return v5;
}

EFManualCancelationToken *__21__EFObservable_skip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(EFManualCancelationToken);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __21__EFObservable_skip___block_invoke_2;
  v17[3] = &unk_1E82498C0;
  v5 = *(a1 + 32);
  v19 = *(a1 + 40);
  v18 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __21__EFObservable_skip___block_invoke_3;
  v15[3] = &unk_1E8248580;
  v16 = v18;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __21__EFObservable_skip___block_invoke_4;
  v13 = &unk_1E82485A8;
  v6 = v16;
  v14 = v6;
  v7 = [EFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v5 subscribe:{v7, v10, v11, v12, v13}];
  [(EFManualCancelationToken *)v4 addCancelable:v8];

  return v4;
}

void __21__EFObservable_skip___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  v6 = v3;
  if (v5)
  {
    *(v4 + 24) = v5 - 1;
  }

  else
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
  }
}

- (id)filter:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EFObservable.m" lineNumber:485 description:{@"Invalid parameter not satisfying: %@", @"filter"}];
  }

  v6 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __23__EFObservable_filter___block_invoke;
  v11[3] = &unk_1E8249730;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  v8 = [v6 observableWithBlock:v11];

  return v8;
}

id __23__EFObservable_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __23__EFObservable_filter___block_invoke_2;
  v16[3] = &unk_1E82489B0;
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __23__EFObservable_filter___block_invoke_3;
  v14[3] = &unk_1E8248580;
  v15 = v17;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __23__EFObservable_filter___block_invoke_4;
  v12 = &unk_1E82485A8;
  v5 = v15;
  v13 = v5;
  v6 = [EFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __23__EFObservable_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
  }
}

- (id)map:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EFObservable.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v6 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __20__EFObservable_map___block_invoke;
  v11[3] = &unk_1E8249730;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  v8 = [v6 observableWithBlock:v11];

  return v8;
}

id __20__EFObservable_map___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __20__EFObservable_map___block_invoke_2;
  v16[3] = &unk_1E8248BB8;
  v17 = v3;
  v18 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __20__EFObservable_map___block_invoke_3;
  v14[3] = &unk_1E8248580;
  v15 = v17;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __20__EFObservable_map___block_invoke_4;
  v12 = &unk_1E82485A8;
  v5 = v15;
  v13 = v5;
  v6 = [EFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __20__EFObservable_map___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v4 = v2;
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  [v1 observerDidReceiveResult:v2];
  v3 = v4;
  if (!v4)
  {

    v3 = 0;
  }
}

- (id)multicast:(id)a3
{
  v4 = a3;
  v5 = [[_EFConnectableObservable alloc] initWithObservable:self subject:v4];

  return v5;
}

- (id)publish
{
  v3 = +[EFObservable observableObserver];
  v4 = [(EFObservable *)self multicast:v3];

  return v4;
}

- (id)replay:(unint64_t)a3
{
  v4 = [[_EFReplayObservable alloc] initWithCount:a3];
  v5 = [(EFObservable *)self multicast:v4];

  return v5;
}

- (id)sampleWithTimeInterval:(double)a3
{
  v5 = +[EFScheduler globalAsyncScheduler];
  v6 = [(EFObservable *)self sampleWithTimeInterval:v5 scheduler:a3];

  return v6;
}

- (id)sampleWithTimeInterval:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = [[_EFIdealTimerObservable alloc] initWithObservable:self timeInterval:v6 scheduler:a3];
  v8 = [(EFObservable *)self sampleWithObservable:v7];

  return v8;
}

- (id)sampleWithObservable:(id)a3
{
  v4 = a3;
  v5 = [[_EFSamplingObservable alloc] initWithObservable:self sampler:v4];

  return v5;
}

- (id)startWith:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFObservable *)self startWith:v4 scheduler:v5];

  return v6;
}

- (id)startWith:(id)a3 scheduler:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [objc_opt_class() observableWithResults:v6 scheduler:v7];
  v14[0] = v9;
  v14[1] = self;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v11 = [v8 concatenate:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
@interface CNObservable
+ (OS_os_log)os_log;
+ (OS_os_log)os_log_protocol;
+ (id)amb:(id)a3;
+ (id)asyncScannerResultsInString:(id)a3;
+ (id)binderTypeForResultType:(unint64_t)a3;
+ (id)combineLatest:(id)a3;
+ (id)combineLatest:(id)a3 resultScheduler:(id)a4 schedulerProvider:(id)a5;
+ (id)concatenate:(id)a3;
+ (id)emptyObservable;
+ (id)forkJoin:(id)a3 scheduler:(id)a4;
+ (id)merge:(id)a3;
+ (id)merge:(id)a3 schedulerProvider:(id)a4;
+ (id)neverObservable;
+ (id)observableForKeyPath:(id)a3 ofObject:(id)a4 withOptions:(unint64_t)a5;
+ (id)observableOnDarwinNotificationCenterWithName:(id)a3;
+ (id)observableOnDefaultNotificationCenterWithName:(id)a3 object:(id)a4;
+ (id)observableOnNotificationCenter:(id)a3 withName:(id)a4 object:(id)a5;
+ (id)observableWithAbsoluteTimestamps:(id)a3 schedulerProvider:(id)a4;
+ (id)observableWithBlock:(id)a3;
+ (id)observableWithEmailAddressesInString:(id)a3;
+ (id)observableWithError:(id)a3;
+ (id)observableWithFuture:(id)a3;
+ (id)observableWithFuture:(id)a3 schedulerProvider:(id)a4;
+ (id)observableWithFutures:(id)a3;
+ (id)observableWithFutures:(id)a3 schedulerProvider:(id)a4;
+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6;
+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8;
+ (id)observableWithRange:(_NSRange)a3;
+ (id)observableWithRange:(_NSRange)a3 interval:(double)a4 scheduler:(id)a5;
+ (id)observableWithRange:(_NSRange)a3 scheduler:(id)a4;
+ (id)observableWithRelativeTimestamps:(id)a3 schedulerProvider:(id)a4;
+ (id)observableWithResult:(id)a3;
+ (id)observableWithResults:(id)a3;
+ (id)observableWithResults:(id)a3 interval:(double)a4 scheduler:(id)a5;
+ (id)observableWithResults:(id)a3 scheduler:(id)a4;
+ (id)observableWithScannerResultsInString:(id)a3;
+ (id)observableWithScannerResultsOfType:(unint64_t)a3 inString:(id)a4;
+ (id)observableWithTimeInterval:(double)a3 scheduler:(id)a4;
+ (id)progressiveForkJoin:(id)a3 scheduler:(id)a4;
+ (id)scannerResultsInString:(id)a3;
+ (id)timerWithDelay:(double)a3;
+ (id)timerWithDelay:(double)a3 scheduler:(id)a4;
+ (void)sendNextTimestampFromQueue:(id)a3 toObserver:(id)a4 untilCanceled:(id)a5 scheduler:(id)a6;
- (id)allObjects:(id *)a3;
- (id)ambWith:(id)a3;
- (id)any:(id)a3;
- (id)buffer:(unint64_t)a3;
- (id)buffer:(unint64_t)a3 interval:(double)a4;
- (id)buffer:(unint64_t)a3 interval:(double)a4 scheduler:(id)a5;
- (id)bufferWithInterval:(double)a3;
- (id)bufferWithInterval:(double)a3 scheduler:(id)a4;
- (id)concatMap:(id)a3;
- (id)concatMap:(id)a3 schedulerProvider:(id)a4;
- (id)delay:(double)a3 scheduler:(id)a4;
- (id)delaySubscription:(double)a3 scheduler:(id)a4;
- (id)dematerialize;
- (id)distinct;
- (id)distinctUntilChanged;
- (id)doOnCancel:(id)a3;
- (id)doOnCompletion:(id)a3;
- (id)doOnError:(id)a3;
- (id)doOnNext:(id)a3;
- (id)doOnSubscribe:(id)a3;
- (id)doOnTerminate:(id)a3;
- (id)filter:(id)a3;
- (id)flatMap:(id)a3;
- (id)flatMap:(id)a3 schedulerProvider:(id)a4;
- (id)ignoreElements;
- (id)map:(id)a3;
- (id)materialize;
- (id)observeOn:(id)a3;
- (id)onEmpty:(id)a3;
- (id)onError:(id)a3;
- (id)onErrorHandler:(id)a3;
- (id)publish;
- (id)sample:(double)a3;
- (id)sample:(double)a3 scheduler:(id)a4;
- (id)sampleWithObservable:(id)a3;
- (id)scan:(id)a3;
- (id)scan:(id)a3 seed:(id)a4;
- (id)skip:(unint64_t)a3;
- (id)skipLast:(unint64_t)a3;
- (id)skipUntil:(id)a3;
- (id)startWith:(id)a3;
- (id)startWith:(id)a3 scheduler:(id)a4;
- (id)subscribe:(id)a3;
- (id)subscribeOn:(id)a3;
- (id)switch;
- (id)switchMap:(id)a3;
- (id)switchMap:(id)a3 schedulerProvider:(id)a4;
- (id)switchWithSchedulerProvider:(id)a3;
- (id)take:(unint64_t)a3;
- (id)takeLast:(unint64_t)a3;
- (id)takeUntil:(id)a3;
- (id)throttle:(double)a3 options:(unint64_t)a4 schedulerProvider:(id)a5;
- (id)throttle:(double)a3 schedulerProvider:(id)a4;
- (id)throttleFirst:(double)a3 scheduler:(id)a4;
- (id)throttleFirstAndLast:(double)a3 schedulerProvider:(id)a4;
- (id)timeInterval;
- (id)timeIntervalWithScheduler:(id)a3;
- (id)timeoutAfterDelay:(double)a3 alternateObservable:(id)a4 schedule:(id)a5;
- (id)timestampWithScheduler:(id)a3;
- (id)toArray;
- (id)using:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation CNObservable

+ (id)emptyObservable
{
  if (emptyObservable_cn_once_token_5 != -1)
  {
    +[CNObservable emptyObservable];
  }

  v3 = emptyObservable_cn_once_object_5;

  return v3;
}

uint64_t __31__CNObservable_emptyObservable__block_invoke()
{
  emptyObservable_cn_once_object_5 = objc_alloc_init(_CNEmptyObservable);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[CNScheduler immediateScheduler];
  v15 = [a1 observableWithInitialState:v13 condition:v12 nextState:v11 resultSelector:v10 scheduler:v14];

  return v15;
}

+ (id)observableWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[_CNGeneratorObservable alloc] initWithInitialState:v18 condition:v17 nextState:v16 resultSelector:v15 delay:v14 scheduler:v13];

  return v19;
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_1_5 != -1)
  {
    +[CNObservable os_log];
  }

  v3 = os_log_cn_once_object_1_5;

  return v3;
}

uint64_t __22__CNObservable_os_log__block_invoke()
{
  os_log_cn_once_object_1_5 = os_log_create("com.apple.contacts.rx", "general");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)os_log_protocol
{
  if (os_log_protocol_cn_once_token_2 != -1)
  {
    +[CNObservable os_log_protocol];
  }

  v3 = os_log_protocol_cn_once_object_2;

  return v3;
}

uint64_t __31__CNObservable_os_log_protocol__block_invoke()
{
  os_log_protocol_cn_once_object_2 = os_log_create("com.apple.contacts.rx", "protocol");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)observableWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[_CNBlockObservable alloc] initWithBlock:v3];

  v5 = [(CNObservable *)v4 pipelineDescription:&__block_literal_global_165];

  return v5;
}

+ (id)observableWithResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__CNObservable_observableWithResult___block_invoke;
    v13[3] = &unk_1E6ED65A8;
    v6 = v4;
    v14 = v6;
    v7 = [CNObservable observableWithBlock:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__CNObservable_observableWithResult___block_invoke_2;
    v11[3] = &unk_1E6ED65D0;
    v12 = v6;
    v8 = [v7 pipelineDescription:v11];
  }

  else
  {
    v9 = +[CNObservable os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CNObservable observableWithResult:v9];
    }

    v8 = [a1 emptyObservable];
  }

  return v8;
}

CNObservableWithResultCancelationToken *__37__CNObservable_observableWithResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 observerDidReceiveResult:v2];
  [v3 observerDidComplete];

  v4 = objc_alloc_init(CNObservableWithResultCancelationToken);

  return v4;
}

+ (id)observableWithFuture:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 observableWithFuture:v4 schedulerProvider:v5];

  return v6;
}

+ (id)observableWithFuture:(id)a3 schedulerProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke;
  v15[3] = &unk_1E6ED65F8;
  v7 = v5;
  v16 = v7;
  v17 = v6;
  v8 = v6;
  v9 = [CNObservable observableWithBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke_4;
  v13[3] = &unk_1E6ED65D0;
  v14 = v7;
  v10 = v7;
  v11 = [v9 pipelineDescription:v13];

  return v11;
}

CNObservableWithFutureCancelationToken *__55__CNObservable_observableWithFuture_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNObservableWithFutureCancelationToken);
  v5 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke_2;
  v20[3] = &unk_1E6ED63C8;
  v6 = v4;
  v21 = v6;
  v7 = v3;
  v22 = v7;
  v8 = [*(a1 + 40) immediateScheduler];
  [v5 addSuccessBlock:v20 scheduler:v8];

  v9 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke_3;
  v17[3] = &unk_1E6ED59E0;
  v10 = v6;
  v18 = v10;
  v19 = v7;
  v11 = *(a1 + 40);
  v12 = v7;
  v13 = [v11 immediateScheduler];
  [v9 addFailureBlock:v17 scheduler:v13];

  v14 = v19;
  v15 = v10;

  return v10;
}

void __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
    [*(a1 + 40) observerDidComplete];
  }
}

void __55__CNObservable_observableWithFuture_schedulerProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidFailWithError:v3];
  }
}

+ (id)observableWithFutures:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 observableWithFutures:v4 schedulerProvider:v5];

  return v6;
}

+ (id)observableWithFutures:(id)a3 schedulerProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__CNObservable_observableWithFutures_schedulerProvider___block_invoke;
  v15[3] = &unk_1E6ED6620;
  v16 = v6;
  v7 = v6;
  v8 = [v5 _cn_map:v15];
  v9 = [CNObservable merge:v8 schedulerProvider:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__CNObservable_observableWithFutures_schedulerProvider___block_invoke_2;
  v13[3] = &unk_1E6ED65D0;
  v14 = v5;
  v10 = v5;
  v11 = [v9 pipelineDescription:v13];

  return v11;
}

+ (id)observableWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = +[CNScheduler immediateScheduler];
  v7 = [a1 observableWithRange:location scheduler:{length, v6}];

  return v7;
}

+ (id)observableWithRange:(_NSRange)a3 scheduler:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithUnsignedInteger:location];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNObservable_observableWithRange_scheduler___block_invoke;
  v14[3] = &__block_descriptor_48_e18_B16__0__NSNumber_8l;
  v14[4] = location;
  v14[5] = length;
  v10 = [a1 observableWithInitialState:v9 condition:v14 nextState:&__block_literal_global_192 resultSelector:&__block_literal_global_194 scheduler:v8];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__CNObservable_observableWithRange_scheduler___block_invoke_4;
  v13[3] = &__block_descriptor_48_e15___NSString_8__0l;
  v13[4] = location;
  v13[5] = length;
  v11 = [v10 pipelineDescription:v13];

  return v11;
}

BOOL __46__CNObservable_observableWithRange_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = *(a1 + 32);
  v6 = v3 >= v4;
  v5 = v3 - v4;
  v6 = !v6 || v5 >= *(a1 + 40);
  return !v6;
}

uint64_t __46__CNObservable_observableWithRange_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedIntegerValue] + 1;

  return [v2 numberWithUnsignedInteger:v3];
}

id __46__CNObservable_observableWithRange_scheduler___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v5 = [v2 stringWithFormat:@"Observable with Range(%@, %@)", v3, v4];

  return v5;
}

+ (id)observableWithRange:(_NSRange)a3 interval:(double)a4 scheduler:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = [v9 numberWithUnsignedInteger:location];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__CNObservable_observableWithRange_interval_scheduler___block_invoke;
  v17[3] = &__block_descriptor_48_e18_B16__0__NSNumber_8l;
  v17[4] = location;
  v17[5] = length;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__CNObservable_observableWithRange_interval_scheduler___block_invoke_4;
  v16[3] = &__block_descriptor_40_e8_d16__0_8l;
  *&v16[4] = a4;
  v12 = [a1 observableWithInitialState:v11 condition:v17 nextState:&__block_literal_global_200 resultSelector:&__block_literal_global_202 delay:v16 scheduler:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CNObservable_observableWithRange_interval_scheduler___block_invoke_5;
  v15[3] = &__block_descriptor_56_e15___NSString_8__0l;
  v15[4] = location;
  v15[5] = length;
  *&v15[6] = a4;
  v13 = [v12 pipelineDescription:v15];

  return v13;
}

BOOL __55__CNObservable_observableWithRange_interval_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = *(a1 + 32);
  v6 = v3 >= v4;
  v5 = v3 - v4;
  v6 = !v6 || v5 >= *(a1 + 40);
  return !v6;
}

uint64_t __55__CNObservable_observableWithRange_interval_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedIntegerValue] + 1;

  return [v2 numberWithUnsignedInteger:v3];
}

id __55__CNObservable_observableWithRange_interval_scheduler___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 48)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v5 * 1000.0];
  }
  v6 = ;
  v7 = [v2 stringWithFormat:@"Observable with Range(%@, %@, %@ apart)", v3, v4, v6];

  return v7;
}

+ (id)observableWithResults:(id)a3
{
  v4 = a3;
  v5 = +[CNScheduler immediateScheduler];
  v6 = [a1 observableWithResults:v4 scheduler:v5];

  return v6;
}

+ (id)observableWithResults:(id)a3 scheduler:(id)a4
{
  v5 = a4;
  v6 = [a3 copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__CNObservable_observableWithResults_scheduler___block_invoke;
  v16[3] = &unk_1E6ED66E8;
  v17 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CNObservable_observableWithResults_scheduler___block_invoke_3;
  v14[3] = &unk_1E6ED6710;
  v7 = v17;
  v15 = v7;
  v8 = [CNObservable observableWithInitialState:&unk_1EF4641F8 condition:v16 nextState:&__block_literal_global_211 resultSelector:v14 scheduler:v5];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__CNObservable_observableWithResults_scheduler___block_invoke_4;
  v12[3] = &unk_1E6ED65D0;
  v13 = v7;
  v9 = v7;
  v10 = [v8 pipelineDescription:v12];

  return v10;
}

uint64_t __48__CNObservable_observableWithResults_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedIntegerValue] + 1;

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __48__CNObservable_observableWithResults_scheduler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 objectAtIndex:v3];
}

+ (id)observableWithResults:(id)a3 interval:(double)a4 scheduler:(id)a5
{
  v7 = a5;
  v8 = [a3 copy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__CNObservable_observableWithResults_interval_scheduler___block_invoke;
  v20[3] = &unk_1E6ED66E8;
  v21 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_3;
  v18[3] = &unk_1E6ED6710;
  v9 = v21;
  v19 = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_4;
  v17[3] = &__block_descriptor_40_e8_d16__0_8l;
  *&v17[4] = a4;
  v10 = [CNObservable observableWithInitialState:&unk_1EF4641F8 condition:v20 nextState:&__block_literal_global_216 resultSelector:v18 delay:v17 scheduler:v7];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_5;
  v14[3] = &unk_1E6ED6738;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = [v10 pipelineDescription:v14];

  return v12;
}

uint64_t __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedIntegerValue] + 1;

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 objectAtIndex:v3];
}

id __57__CNObservable_observableWithResults_interval_scheduler___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 40)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v3 * 1000.0];
  }
  v4 = ;
  v5 = [v1 stringWithFormat:@"Observable with Results(%@, %@ apart)", v2, v4];

  return v5;
}

+ (id)observableWithError:(id)a3
{
  v3 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__CNObservable_observableWithError___block_invoke;
  v11[3] = &unk_1E6ED65A8;
  v4 = v3;
  v12 = v4;
  v5 = [CNObservable observableWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CNObservable_observableWithError___block_invoke_2;
  v9[3] = &unk_1E6ED65D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pipelineDescription:v9];

  return v7;
}

CNObservableWithErrorCancelationToken *__36__CNObservable_observableWithError___block_invoke(uint64_t a1, void *a2)
{
  [a2 observerDidFailWithError:*(a1 + 32)];
  v2 = objc_alloc_init(CNObservableWithErrorCancelationToken);

  return v2;
}

id __36__CNObservable_observableWithError___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 32) domain];
  v4 = [v2 stringWithFormat:@"Observable with Error(%@, code %ld)", v3, objc_msgSend(*(a1 + 32), "code")];

  return v4;
}

+ (id)observableWithTimeInterval:(double)a3 scheduler:(id)a4
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CNObservable_observableWithTimeInterval_scheduler___block_invoke_4;
  v9[3] = &__block_descriptor_40_e8_d16__0_8l;
  *&v9[4] = a3;
  v5 = [CNObservable observableWithInitialState:&unk_1EF4641F8 condition:&__block_literal_global_226 nextState:&__block_literal_global_228 resultSelector:&__block_literal_global_231 delay:v9 scheduler:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CNObservable_observableWithTimeInterval_scheduler___block_invoke_5;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v8[4] = a3;
  v6 = [v5 pipelineDescription:v8];

  return v6;
}

uint64_t __53__CNObservable_observableWithTimeInterval_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedLongLongValue] + 1;

  return [v2 numberWithUnsignedLongLong:v3];
}

id __53__CNObservable_observableWithTimeInterval_scheduler___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"Observable with TimeInterval(%@)", v3];

  return v4;
}

+ (id)neverObservable
{
  if (neverObservable_cn_once_token_4 != -1)
  {
    +[CNObservable neverObservable];
  }

  v3 = neverObservable_cn_once_object_4;

  return v3;
}

uint64_t __31__CNObservable_neverObservable__block_invoke()
{
  neverObservable_cn_once_object_4 = objc_alloc_init(_CNNeverObservable);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)timerWithDelay:(double)a3
{
  v5 = +[CNScheduler globalAsyncScheduler];
  v6 = [a1 timerWithDelay:v5 scheduler:a3];

  return v6;
}

+ (id)timerWithDelay:(double)a3 scheduler:(id)a4
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__CNObservable_timerWithDelay_scheduler___block_invoke_4;
  v9[3] = &__block_descriptor_40_e8_d16__0_8l;
  *&v9[4] = a3;
  v5 = [a1 observableWithInitialState:&unk_1EF4641F8 condition:&__block_literal_global_243 nextState:&__block_literal_global_245 resultSelector:&__block_literal_global_247 delay:v9 scheduler:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__CNObservable_timerWithDelay_scheduler___block_invoke_5;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v8[4] = a3;
  v6 = [v5 pipelineDescription:v8];

  return v6;
}

uint64_t __41__CNObservable_timerWithDelay_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 unsignedIntegerValue] + 1;

  return [v2 numberWithUnsignedInteger:v3];
}

id __41__CNObservable_timerWithDelay_scheduler___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"Timer(%@)", v3];

  return v4;
}

+ (id)amb:(id)a3
{
  v3 = a3;
  v4 = [[_CNAmbObservable alloc] initWithObservables:v3];

  return v4;
}

+ (id)combineLatest:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 combineLatest:v4 schedulerProvider:v5];

  return v6;
}

+ (id)combineLatest:(id)a3 resultScheduler:(id)a4 schedulerProvider:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 addObject:*(*(&v26 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  if ([v10 count] < 2)
  {
    if ([v10 count])
    {
      v17 = [v10 firstObject];
      v18 = [v17 map:&__block_literal_global_256];

      v19 = [v18 observeOn:v8];

      goto LABEL_14;
    }

    v16 = +[CNObservable emptyObservable];
  }

  else
  {
    v16 = [[_CNCombineLatestObservable alloc] initWithObservables:v10 resultScheduler:v8 schedulerProvider:v9];
  }

  v19 = v16;
LABEL_14:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__CNObservable_combineLatest_resultScheduler_schedulerProvider___block_invoke_2;
  v24[3] = &unk_1E6ED65D0;
  v25 = v10;
  v20 = v10;
  v21 = [v19 pipelineDescription:v24];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

id __64__CNObservable_combineLatest_resultScheduler_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __64__CNObservable_combineLatest_resultScheduler_schedulerProvider___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_698];
  v3 = [v2 componentsJoinedByString:{@", "}];

  v4 = [v1 stringWithFormat:@"CombineLatest(%@)", v3];

  return v4;
}

+ (id)concatenate:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {
    v4 = +[CNObservable emptyObservable];
    goto LABEL_5;
  }

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__CNObservable_concatenate___block_invoke;
  v11[3] = &unk_1E6ED65A8;
  v12 = v3;
  v5 = [CNObservable observableWithBlock:v11];

LABEL_7:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__CNObservable_concatenate___block_invoke_2;
  v9[3] = &unk_1E6ED65D0;
  v10 = v3;
  v6 = v3;
  v7 = [v5 pipelineDescription:v9];

  return v7;
}

CNConcatenateCancelationToken *__28__CNObservable_concatenate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNConcatenateCancelationToken);
  [_CNConcatenatingObservable subscribeObserver:v3 toObservables:*(a1 + 32) unless:v4];

  return v4;
}

id __28__CNObservable_concatenate___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_698];
  v3 = [v2 componentsJoinedByString:{@", "}];

  v4 = [v1 stringWithFormat:@"Concatenate(%@)", v3];

  return v4;
}

+ (id)forkJoin:(id)a3 scheduler:(id)a4
{
  v4 = a3;
  v5 = [_CNForkJoinObservable forkJoin:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__CNObservable_forkJoin_scheduler___block_invoke;
  v9[3] = &unk_1E6ED65D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pipelineDescription:v9];

  return v7;
}

id __35__CNObservable_forkJoin_scheduler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_698];
  v3 = [v2 componentsJoinedByString:{@", "}];

  v4 = [v1 stringWithFormat:@"ForkJoin(%@)", v3];

  return v4;
}

+ (id)merge:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 merge:v4 schedulerProvider:v5];

  return v6;
}

+ (id)merge:(id)a3 schedulerProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v7 = +[CNObservable emptyObservable];
    goto LABEL_5;
  }

  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v9 = [CNObservable observableWithResults:v5];
  v10 = [v9 flatMap:&__block_literal_global_76 schedulerProvider:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__CNObservable_merge_schedulerProvider___block_invoke;
  v12[3] = &unk_1E6ED65D0;
  v13 = v5;
  v8 = [v10 pipelineDescription:v12];

LABEL_7:

  return v8;
}

id __40__CNObservable_merge_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_698];
  v3 = [v2 componentsJoinedByString:{@", "}];

  v4 = [v1 stringWithFormat:@"Merge(%@)", v3];

  return v4;
}

+ (id)progressiveForkJoin:(id)a3 scheduler:(id)a4
{
  v4 = a3;
  v5 = [_CNForkJoinObservable progressiveForkJoin:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CNObservable_progressiveForkJoin_scheduler___block_invoke;
  v9[3] = &unk_1E6ED65D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pipelineDescription:v9];

  return v7;
}

id __46__CNObservable_progressiveForkJoin_scheduler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_698];
  v3 = [v2 componentsJoinedByString:{@", "}];

  v4 = [v1 stringWithFormat:@"ProgressiveForkJoin(%@)", v3];

  return v4;
}

- (id)subscribeOn:(id)a3
{
  v4 = a3;
  v5 = [[_CNScheduledObservable alloc] initWithObservable:self scheduler:v4];

  v6 = [(CNObservable *)v5 pipelineDescriptionWithOperation:&__block_literal_global_278 onObservable:self];

  return v6;
}

- (id)observeOn:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__CNObservable_observeOn___block_invoke;
    v8[3] = &unk_1E6ED68A0;
    v8[4] = self;
    objc_copyWeak(&v9, &location);
    v5 = [CNObservable observableWithBlock:v8];
    v6 = [v5 pipelineDescriptionWithOperation:&__block_literal_global_286 onObservable:self];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = self;
  }

  return v6;
}

CNObserveOnCancelationToken *__26__CNObservable_observeOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNObserveOnCancelationToken);
  objc_initWeak(&location, v4);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __26__CNObservable_observeOn___block_invoke_2;
  v24[3] = &unk_1E6ED6828;
  objc_copyWeak(&v26, (a1 + 40));
  objc_copyWeak(&v27, &location);
  v7 = v3;
  v25 = v7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __26__CNObservable_observeOn___block_invoke_4;
  v20[3] = &unk_1E6ED6850;
  objc_copyWeak(&v22, (a1 + 40));
  objc_copyWeak(&v23, &location);
  v8 = v7;
  v21 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __26__CNObservable_observeOn___block_invoke_6;
  v16 = &unk_1E6ED6878;
  objc_copyWeak(&v18, (a1 + 40));
  objc_copyWeak(&v19, &location);
  v9 = v8;
  v17 = v9;
  v10 = [CNObserver blockObserverOfClass:v6 withResultBlock:v24 completionBlock:v20 failureBlock:&v13];
  v11 = [v5 subscribe:{v10, v13, v14, v15, v16}];

  [(CNCancelationToken *)v4 addCancelable:v11];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v4;
}

void __26__CNObservable_observeOn___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__CNObservable_observeOn___block_invoke_3;
  v6[3] = &unk_1E6ED6800;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v5 = v3;
  v8 = v5;
  [WeakRetained performBlock:v6];

  objc_destroyWeak(&v9);
}

void __26__CNObservable_observeOn___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidReceiveResult:*(a1 + 40)];
  }
}

void __26__CNObservable_observeOn___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__CNObservable_observeOn___block_invoke_5;
  v3[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[4];
  [WeakRetained performBlock:v3];

  objc_destroyWeak(&v5);
}

void __26__CNObservable_observeOn___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidComplete];
  }
}

void __26__CNObservable_observeOn___block_invoke_6(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__CNObservable_observeOn___block_invoke_7;
  v6[3] = &unk_1E6ED6800;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v5 = v3;
  v8 = v5;
  [WeakRetained performBlock:v6];

  objc_destroyWeak(&v9);
}

void __26__CNObservable_observeOn___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidFailWithError:*(a1 + 40)];
  }
}

- (id)allObjects:(id *)a3
{
  v5 = objc_alloc_init(CNPromise);
  v6 = [(CNPromise *)v5 completionHandlerAdapter];
  v7 = [CNObserver observerWithCompletionHandler:v6];

  v8 = [(CNObservable *)self subscribe:v7];
  v9 = [(CNPromise *)v5 future];
  v10 = [v9 result:a3];

  return v10;
}

- (id)ambWith:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = self;
  v9[1] = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [CNObservable amb:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)any:(id)a3
{
  v3 = [(CNObservable *)self filter:a3];
  v4 = [v3 take:1];
  v5 = [v4 map:&__block_literal_global_293];

  v6 = [CNObservable observableWithResult:MEMORY[0x1E695E110]];
  v7 = [v5 onEmpty:v6];

  return v7;
}

- (id)buffer:(unint64_t)a3
{
  v5 = [[_CNBufferingObservable alloc] initWithLength:a3 observable:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__CNObservable_buffer___block_invoke;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a3;
  v6 = [(CNObservable *)v5 pipelineDescriptionWithOperation:v8 onObservable:self];

  return v6;
}

id __23__CNObservable_buffer___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"buffer(%@)", v2];

  return v3;
}

- (id)buffer:(unint64_t)a3 interval:(double)a4
{
  v7 = +[CNScheduler globalAsyncScheduler];
  v8 = [(CNObservable *)self buffer:a3 interval:v7 scheduler:a4];

  return v8;
}

- (id)buffer:(unint64_t)a3 interval:(double)a4 scheduler:(id)a5
{
  v8 = a5;
  v9 = [[_CNBufferingObservable alloc] initWithLength:a3 timeInterval:v8 scheduler:self observable:a4];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__CNObservable_buffer_interval_scheduler___block_invoke;
  v12[3] = &__block_descriptor_48_e15___NSString_8__0l;
  v12[4] = a3;
  *&v12[5] = a4;
  v10 = [(CNObservable *)v9 pipelineDescriptionWithOperation:v12 onObservable:self];

  return v10;
}

id __42__CNObservable_buffer_interval_scheduler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 40)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v4 * 1000.0];
  }
  v5 = ;
  v6 = [v2 stringWithFormat:@"buffer(%@, %@)", v3, v5];

  return v6;
}

- (id)bufferWithInterval:(double)a3
{
  v5 = +[CNScheduler globalAsyncScheduler];
  v6 = [(CNObservable *)self bufferWithInterval:v5 scheduler:a3];

  return v6;
}

- (id)bufferWithInterval:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = [[_CNBufferingObservable alloc] initWithTimeInterval:v6 scheduler:self observable:a3];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__CNObservable_bufferWithInterval_scheduler___block_invoke;
  v10[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v10[4] = a3;
  v8 = [(CNObservable *)v7 pipelineDescriptionWithOperation:v10 onObservable:self];

  return v8;
}

id __45__CNObservable_bufferWithInterval_scheduler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"buffer(%@)", v3];

  return v4;
}

- (id)concatMap:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(CNObservable *)self concatMap:v4 schedulerProvider:v5];

  return v6;
}

- (id)concatMap:(id)a3 schedulerProvider:(id)a4
{
  v5 = [_CNFlatMapObservable concatMapWithObservable:self transform:a3 schedulerProvider:a4];
  v6 = [v5 pipelineDescriptionWithOperation:&__block_literal_global_303 onObservable:self];

  return v6;
}

- (id)delay:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__CNObservable_delay_scheduler___block_invoke;
  v12[3] = &unk_1E6ED6960;
  v15 = a3;
  v13 = v6;
  v14 = self;
  v7 = v6;
  v8 = [CNObservable observableWithBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__CNObservable_delay_scheduler___block_invoke_8;
  v11[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v11[4] = a3;
  v9 = [v8 pipelineDescriptionWithOperation:v11 onObservable:self];

  return v9;
}

CNDelayCancelationToken *__32__CNObservable_delay_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNDelayCancelationToken);
  v5 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __32__CNObservable_delay_scheduler___block_invoke_2;
  v26[3] = &unk_1E6ED68E8;
  v27 = v4;
  v28 = *(a1 + 32);
  v30 = *(a1 + 48);
  v29 = v3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __32__CNObservable_delay_scheduler___block_invoke_4;
  v21[3] = &unk_1E6ED6910;
  v22 = v27;
  v23 = *(a1 + 32);
  v25 = *(a1 + 48);
  v24 = v29;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __32__CNObservable_delay_scheduler___block_invoke_6;
  v16 = &unk_1E6ED6938;
  v6 = v22;
  v17 = v6;
  v7 = *(a1 + 32);
  v20 = *(a1 + 48);
  v18 = v7;
  v19 = v24;
  v8 = v24;
  v9 = [CNObserver blockObserverOfClass:v5 withResultBlock:v26 completionBlock:v21 failureBlock:&v13];
  v10 = [*(a1 + 40) subscribe:{v9, v13, v14, v15, v16}];
  [(CNCancelationToken *)v6 addCancelable:v10];
  v11 = v6;

  return v6;
}

void __32__CNObservable_delay_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __32__CNObservable_delay_scheduler___block_invoke_3;
  v12 = &unk_1E6ED5168;
  v13 = *(a1 + 48);
  v14 = v3;
  v7 = v3;
  v8 = [v5 afterDelay:&v9 performBlock:v6];
  [v4 addCancelable:{v8, v9, v10, v11, v12}];
}

void __32__CNObservable_delay_scheduler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CNObservable_delay_scheduler___block_invoke_5;
  v5[3] = &unk_1E6ED5830;
  v6 = *(a1 + 48);
  v4 = [v2 afterDelay:v5 performBlock:v3];
  [v1 addCancelable:v4];
}

void __32__CNObservable_delay_scheduler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __32__CNObservable_delay_scheduler___block_invoke_7;
  v12 = &unk_1E6ED5168;
  v13 = *(a1 + 48);
  v14 = v3;
  v7 = v3;
  v8 = [v5 afterDelay:&v9 performBlock:v6];
  [v4 addCancelable:{v8, v9, v10, v11, v12}];
}

id __32__CNObservable_delay_scheduler___block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"delay(%@)", v3];

  return v4;
}

- (id)delaySubscription:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 0.0)
  {
    v9 = [(CNObservable *)self subscribeOn:v6];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CNObservable_delaySubscription_scheduler___block_invoke;
    v12[3] = &unk_1E6ED6960;
    v15 = a3;
    v13 = v6;
    v14 = self;
    v8 = [CNObservable observableWithBlock:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CNObservable_delaySubscription_scheduler___block_invoke_3;
    v11[3] = &__block_descriptor_40_e15___NSString_8__0l;
    *&v11[4] = a3;
    v9 = [v8 pipelineDescriptionWithOperation:v11 onObservable:self];
  }

  return v9;
}

CNDelaySubscriptionCancelationToken *__44__CNObservable_delaySubscription_scheduler___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNDelaySubscriptionCancelationToken);
  v5 = a1[6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__CNObservable_delaySubscription_scheduler___block_invoke_2;
  v12[3] = &unk_1E6ED57E0;
  v6 = *(a1 + 4);
  *&v12[4] = a1[5];
  v13 = v3;
  v7 = v4;
  v14 = v7;
  v8 = v3;
  v9 = [v6 afterDelay:v12 performBlock:v5];
  [(CNCancelationToken *)v7 addCancelable:v9];
  v10 = v7;

  return v7;
}

void __44__CNObservable_delaySubscription_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribe:*(a1 + 40)];
  [*(a1 + 48) addCancelable:v2];
}

id __44__CNObservable_delaySubscription_scheduler___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"delaySubscription(%@)", v3];

  return v4;
}

- (id)dematerialize
{
  v3 = objc_alloc_init(CNDematerializeCancelationToken);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__CNObservable_dematerialize__block_invoke;
  v12[3] = &unk_1E6ED65F8;
  v12[4] = self;
  v4 = v3;
  v13 = v4;
  v5 = [CNObservable observableWithBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__CNObservable_dematerialize__block_invoke_3;
  v10[3] = &unk_1E6ED5830;
  v11 = v4;
  v6 = v4;
  v7 = [v5 doOnTerminate:v10];

  v8 = [v7 pipelineDescriptionWithOperation:&__block_literal_global_324 onObservable:self];

  return v8;
}

id __29__CNObservable_dematerialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__CNObservable_dematerialize__block_invoke_2;
  v15[3] = &unk_1E6ED6988;
  v16 = v3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __29__CNObservable_dematerialize__block_invoke_2_322;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v15 completionBlock:&__block_literal_global_321 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  [*(a1 + 40) addCancelable:v8];

  return v8;
}

void __29__CNObservable_dematerialize__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && ((objc_opt_isKindOfClass() & 1) == 0 ? (v5 = 0) : (v5 = v4), v6 = v5, v4, v6))
  {
    [v6 dematerializeWithObserver:*(a1 + 32)];
    v7 = v4;
  }

  else
  {
    v7 = +[CNObservable os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __29__CNObservable_dematerialize__block_invoke_2_cold_1(v4, v7);
    }
  }
}

- (id)distinct
{
  v3 = [[_CNDistinctObservable alloc] initWithObservable:self];
  v4 = [(CNObservable *)v3 pipelineDescriptionWithOperation:&__block_literal_global_330 onObservable:self];

  return v4;
}

- (id)distinctUntilChanged
{
  v3 = [[_CNDistinctUntilChangedObservable alloc] initWithObservable:self];
  v4 = [(CNObservable *)v3 pipelineDescriptionWithOperation:&__block_literal_global_336 onObservable:self];

  return v4;
}

- (id)doOnCancel:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __27__CNObservable_doOnCancel___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_342 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __27__CNObservable_doOnCancel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__CNObservable_doOnCancel___block_invoke_2;
  v12[3] = &unk_1E6ED5A80;
  v12[4] = v13;
  v5 = [v4 doOnTerminate:v12];
  v6 = [v5 subscribe:v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __27__CNObservable_doOnCancel___block_invoke_3;
  v9[3] = &unk_1E6ED5140;
  v11 = v13;
  v10 = *(a1 + 40);
  v7 = [CNCancelationToken tokenWithCancelationBlock:v9];
  [v7 addCancelable:v6];

  _Block_object_dispose(v13, 8);

  return v7;
}

uint64_t __27__CNObservable_doOnCancel___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (id)doOnCompletion:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __31__CNObservable_doOnCompletion___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_348 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __31__CNObservable_doOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __31__CNObservable_doOnCompletion___block_invoke_2;
  v18[3] = &unk_1E6ED6988;
  v19 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__CNObservable_doOnCompletion___block_invoke_3;
  v15[3] = &unk_1E6ED5858;
  v16 = v19;
  v17 = *(a1 + 40);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __31__CNObservable_doOnCompletion___block_invoke_4;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v18 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

uint64_t __31__CNObservable_doOnCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)doOnError:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __26__CNObservable_doOnError___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_354 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __26__CNObservable_doOnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __26__CNObservable_doOnError___block_invoke_2;
  v18[3] = &unk_1E6ED6988;
  v19 = v3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __26__CNObservable_doOnError___block_invoke_3;
  v16[3] = &unk_1E6ED5830;
  v17 = v19;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __26__CNObservable_doOnError___block_invoke_4;
  v13 = &unk_1E6ED69D8;
  v14 = v17;
  v15 = *(a1 + 40);
  v6 = v17;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v18 completionBlock:v16 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

void __26__CNObservable_doOnError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 observerDidFailWithError:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)doOnNext:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __25__CNObservable_doOnNext___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_360 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __25__CNObservable_doOnNext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __25__CNObservable_doOnNext___block_invoke_2;
  v17[3] = &unk_1E6ED6A00;
  v19 = *(a1 + 40);
  v18 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __25__CNObservable_doOnNext___block_invoke_3;
  v15[3] = &unk_1E6ED5830;
  v16 = v18;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __25__CNObservable_doOnNext___block_invoke_4;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

void __25__CNObservable_doOnNext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) observerDidReceiveResult:v5];
}

- (id)doOnSubscribe:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30__CNObservable_doOnSubscribe___block_invoke;
  v12 = &unk_1E6ED6A28;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_365 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __30__CNObservable_doOnSubscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  v6 = [*(a1 + 32) subscribe:v5];

  return v6;
}

- (id)doOnTerminate:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30__CNObservable_doOnTerminate___block_invoke;
  v12 = &unk_1E6ED6A28;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_371 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __30__CNObservable_doOnTerminate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNCancelationToken tokenWithCancelationBlock:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __30__CNObservable_doOnTerminate___block_invoke_2;
  v17[3] = &unk_1E6ED6988;
  v18 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __30__CNObservable_doOnTerminate___block_invoke_3;
  v14[3] = &unk_1E6ED5858;
  v15 = v18;
  v16 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__CNObservable_doOnTerminate___block_invoke_4;
  v11[3] = &unk_1E6ED69D8;
  v12 = v15;
  v13 = *(a1 + 40);
  v7 = v15;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v17 completionBlock:v14 failureBlock:v11];
  v9 = [v5 subscribe:v8];
  [v4 addCancelable:v9];

  return v4;
}

uint64_t __30__CNObservable_doOnTerminate___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __30__CNObservable_doOnTerminate___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) observerDidFailWithError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNEnumerateObjectsUsingBlockCancelationToken);
  v6 = dispatch_semaphore_create(0);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  objc_initWeak(&location, v5);
  v7 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__CNObservable_enumerateObjectsUsingBlock___block_invoke;
  v16[3] = &unk_1E6ED6A50;
  objc_copyWeak(&v20, &location);
  v8 = v4;
  v18 = v8;
  v19 = v22;
  v17 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__CNObservable_enumerateObjectsUsingBlock___block_invoke_2;
  v14[3] = &unk_1E6ED5830;
  v15 = v17;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__CNObservable_enumerateObjectsUsingBlock___block_invoke_3;
  v12[3] = &unk_1E6ED5A30;
  v9 = v15;
  v13 = v9;
  v10 = [CNObserver blockObserverOfClass:v7 withResultBlock:v16 completionBlock:v14 failureBlock:v12];
  v11 = [(CNObservable *)self subscribe:v10];

  [(CNCancelationToken *)v5 addCancelable:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
}

void __43__CNObservable_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    v5 = *(a1 + 40);
    ++*(*(*(a1 + 48) + 8) + 24);
    (*(v5 + 16))();
  }
}

- (id)filter:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __23__CNObservable_filter___block_invoke;
  v13 = &unk_1E6ED69B0;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = [v5 observableWithBlock:&v10];
  v8 = [v7 pipelineDescriptionWithOperation:&__block_literal_global_379 onObservable:{self, v10, v11, v12, v13, v14}];

  return v8;
}

id __23__CNObservable_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __23__CNObservable_filter___block_invoke_2;
  v17[3] = &unk_1E6ED6A00;
  v19 = *(a1 + 40);
  v18 = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __23__CNObservable_filter___block_invoke_3;
  v15[3] = &unk_1E6ED5830;
  v16 = v18;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __23__CNObservable_filter___block_invoke_4;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

void __23__CNObservable_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
  }
}

- (id)flatMap:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(CNObservable *)self flatMap:v4 schedulerProvider:v5];

  return v6;
}

- (id)flatMap:(id)a3 schedulerProvider:(id)a4
{
  v5 = [_CNFlatMapObservable flatMapWithObservable:self transform:a3 schedulerProvider:a4];
  v6 = [v5 pipelineDescriptionWithOperation:&__block_literal_global_384 onObservable:self];

  return v6;
}

- (id)ignoreElements
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__CNObservable_ignoreElements__block_invoke;
  v6[3] = &unk_1E6ED65A8;
  v6[4] = self;
  v3 = [CNObservable observableWithBlock:v6];
  v4 = [v3 pipelineDescriptionWithOperation:&__block_literal_global_390 onObservable:self];

  return v4;
}

id __30__CNObservable_ignoreElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__CNObservable_ignoreElements__block_invoke_2;
  v15[3] = &unk_1E6ED5830;
  v16 = v3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __30__CNObservable_ignoreElements__block_invoke_3;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:0 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

- (id)map:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __20__CNObservable_map___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNMapObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_396 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

id __20__CNObservable_map___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __20__CNObservable_map___block_invoke_2;
  v17[3] = &unk_1E6ED6A78;
  v18 = v3;
  v19 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __20__CNObservable_map___block_invoke_3;
  v15[3] = &unk_1E6ED5830;
  v16 = v18;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __20__CNObservable_map___block_invoke_4;
  v13 = &unk_1E6ED5A30;
  v14 = v16;
  v6 = v16;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  return v8;
}

void __20__CNObservable_map___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 observerDidReceiveResult:v2];
}

- (id)materialize
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CNObservable_materialize__block_invoke;
  v6[3] = &unk_1E6ED65A8;
  v6[4] = self;
  v3 = [CNObservable observableWithBlock:v6];
  v4 = [v3 pipelineDescriptionWithOperation:&__block_literal_global_402 onObservable:self];

  return v4;
}

id __27__CNObservable_materialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__CNObservable_materialize__block_invoke_2;
  v14[3] = &unk_1E6ED6988;
  v15 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__CNObservable_materialize__block_invoke_3;
  v12[3] = &unk_1E6ED5830;
  v13 = v15;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__CNObservable_materialize__block_invoke_4;
  v10[3] = &unk_1E6ED5A30;
  v11 = v13;
  v6 = v13;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v14 completionBlock:v12 failureBlock:v10];
  v8 = [v4 subscribe:v7];

  return v8;
}

void __27__CNObservable_materialize__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNObservableEvent eventWithResult:a2];
  [v2 observerDidReceiveResult:v3];
}

uint64_t __27__CNObservable_materialize__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CNObservableEvent completionEvent];
  [v2 observerDidReceiveResult:v3];

  v4 = *(a1 + 32);

  return [v4 observerDidComplete];
}

uint64_t __27__CNObservable_materialize__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [CNObservableEvent failureEventWithError:a2];
  [v3 observerDidReceiveResult:v4];

  v5 = *(a1 + 32);

  return [v5 observerDidComplete];
}

- (id)onEmpty:(id)a3
{
  v4 = a3;
  v5 = [[_CNOnEmptyObservable alloc] initWithObservable:self nextObservable:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __24__CNObservable_onEmpty___block_invoke;
  v9[3] = &unk_1E6ED65D0;
  v10 = v4;
  v6 = v4;
  v7 = [(CNObservable *)v5 pipelineDescriptionWithOperation:v9 onObservable:self];

  return v7;
}

id __24__CNObservable_onEmpty___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) debugPipelineDescription];
  v3 = [v1 stringWithFormat:@"onEmpty(%@)", v2];

  return v3;
}

- (id)onError:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __24__CNObservable_onError___block_invoke;
  v12[3] = &unk_1E6ED6AA0;
  v5 = v4;
  v13 = v5;
  v6 = [(CNObservable *)self onErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __24__CNObservable_onError___block_invoke_2;
  v10[3] = &unk_1E6ED65D0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 pipelineDescriptionWithOperation:v10 onObservable:self];

  return v8;
}

id __24__CNObservable_onError___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) debugPipelineDescription];
  v3 = [v1 stringWithFormat:@"onError(%@)", v2];

  return v3;
}

- (id)onErrorHandler:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __31__CNObservable_onErrorHandler___block_invoke;
  v12 = &unk_1E6ED69B0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_416 onObservable:{self, v9, v10, v11, v12, v13}];

  return v7;
}

CNCancelationToken *__31__CNObservable_onErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNCancelationToken);
  objc_initWeak(&location, v4);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __31__CNObservable_onErrorHandler___block_invoke_2;
  v20[3] = &unk_1E6ED6988;
  v21 = v3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __31__CNObservable_onErrorHandler___block_invoke_3;
  v18[3] = &unk_1E6ED5830;
  v19 = v21;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __31__CNObservable_onErrorHandler___block_invoke_4;
  v14 = &unk_1E6ED6AC8;
  v16 = *(a1 + 40);
  v7 = v19;
  v15 = v7;
  objc_copyWeak(&v17, &location);
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v20 completionBlock:v18 failureBlock:&v11];
  v9 = [v5 subscribe:{v8, v11, v12, v13, v14}];

  [(CNCancelationToken *)v4 addCancelable:v9];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);

  return v4;
}

void __31__CNObservable_onErrorHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 subscribe:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained addCancelable:v5];
  }

  else
  {
    [*(a1 + 32) observerDidFailWithError:v7];
  }
}

- (id)publish
{
  v3 = [[CNPublishingSubject alloc] initWithObservable:self];
  v4 = [(CNObservable *)v3 pipelineDescriptionWithOperation:&__block_literal_global_422 onObservable:self];

  return v4;
}

- (id)sample:(double)a3
{
  v5 = +[CNScheduler globalAsyncScheduler];
  v6 = [(CNObservable *)self sample:v5 scheduler:a3];

  return v6;
}

- (id)sample:(double)a3 scheduler:(id)a4
{
  v6 = [CNObservable observableWithTimeInterval:a4 scheduler:?];
  v7 = [(CNObservable *)self sampleWithObservable:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CNObservable_sample_scheduler___block_invoke;
  v10[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v10[4] = a3;
  v8 = [v7 pipelineDescriptionWithOperation:v10 onObservable:self];

  return v8;
}

id __33__CNObservable_sample_scheduler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"sample(%@)", v3];

  return v4;
}

- (id)sampleWithObservable:(id)a3
{
  v4 = a3;
  v5 = [[_CNSamplingObservable alloc] initWithObservable:self sampler:v4];
  v6 = [(CNObservable *)v5 publish];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__CNObservable_sampleWithObservable___block_invoke;
  v10[3] = &unk_1E6ED65D0;
  v11 = v4;
  v7 = v4;
  v8 = [v6 pipelineDescriptionWithOperation:v10 onObservable:self];

  return v8;
}

id __37__CNObservable_sampleWithObservable___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [*(a1 + 32) debugPipelineDescription];
  v3 = [v1 stringWithFormat:@"sample(%@)", v2];

  return v3;
}

- (id)scan:(id)a3
{
  v4 = [(CNObservable *)self scan:a3 seed:0];
  v5 = [v4 pipelineDescriptionWithOperation:&__block_literal_global_431 onObservable:self];

  return v5;
}

- (id)scan:(id)a3 seed:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __26__CNObservable_scan_seed___block_invoke;
  v16[3] = &unk_1E6ED6B18;
  v8 = v7;
  v17 = v8;
  v18 = self;
  v19 = v6;
  v9 = v6;
  v10 = [CNObservable observableWithBlock:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __26__CNObservable_scan_seed___block_invoke_4;
  v14[3] = &unk_1E6ED65D0;
  v15 = v8;
  v11 = v8;
  v12 = [v10 pipelineDescriptionWithOperation:v14 onObservable:self];

  return v12;
}

id __26__CNObservable_scan_seed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__5;
  v18[4] = __Block_byref_object_dispose__5;
  v19 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __26__CNObservable_scan_seed___block_invoke_436;
  v14[3] = &unk_1E6ED6AF0;
  v17 = v18;
  v15 = v3;
  v16 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __26__CNObservable_scan_seed___block_invoke_2;
  v12[3] = &unk_1E6ED5830;
  v13 = v15;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__CNObservable_scan_seed___block_invoke_3;
  v10[3] = &unk_1E6ED5A30;
  v6 = v13;
  v11 = v6;
  v7 = [CNObserver blockObserverOfClass:v5 withResultBlock:v14 completionBlock:v12 failureBlock:v10];
  v8 = [v4 subscribe:v7];

  _Block_object_dispose(v18, 8);

  return v8;
}

void __26__CNObservable_scan_seed___block_invoke_436(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) observerDidReceiveResult:v4];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
    v7 = *(*(a1 + 48) + 8);
    v8 = v9;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }
}

__CFString *__26__CNObservable_scan_seed___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] array];
  if (v2 == v3)
  {
    v4 = @"scan(@[])";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scan(%@)", *(a1 + 32)];
  }

  return v4;
}

- (id)skip:(unint64_t)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__CNObservable_skip___block_invoke;
  v9[3] = &unk_1E6ED6B68;
  v9[4] = self;
  v9[5] = a3;
  v5 = [CNObservable observableWithBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __21__CNObservable_skip___block_invoke_5;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a3;
  v6 = [v5 pipelineDescriptionWithOperation:v8 onObservable:self];

  return v6;
}

id __21__CNObservable_skip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v21[3] = *(v5 + 8);
  v6 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __21__CNObservable_skip___block_invoke_2;
  v18[3] = &unk_1E6ED6B40;
  v20 = v21;
  v19 = v3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __21__CNObservable_skip___block_invoke_3;
  v16[3] = &unk_1E6ED5830;
  v17 = v19;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __21__CNObservable_skip___block_invoke_4;
  v14 = &unk_1E6ED5A30;
  v7 = v17;
  v15 = v7;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v18 completionBlock:v16 failureBlock:&v11];
  v9 = [v4 subscribe:{v8, v11, v12, v13, v14}];

  _Block_object_dispose(v21, 8);

  return v9;
}

uint64_t __21__CNObservable_skip___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return [*(result + 32) observerDidReceiveResult:a2];
  }

  *(v2 + 24) = v3 - 1;
  return result;
}

id __21__CNObservable_skip___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"skip(%@)", v2];

  return v3;
}

- (id)skipLast:(unint64_t)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__CNObservable_skipLast___block_invoke;
  v9[3] = &unk_1E6ED6B68;
  v9[4] = self;
  v9[5] = a3;
  v5 = [CNObservable observableWithBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__CNObservable_skipLast___block_invoke_6;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a3;
  v6 = [v5 pipelineDescriptionWithOperation:v8 onObservable:self];

  return v6;
}

id __25__CNObservable_skipLast___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __25__CNObservable_skipLast___block_invoke_2;
  v23[3] = &unk_1E6ED6988;
  v5 = v3;
  v24 = v5;
  v6 = [CNQueue boundedQueueWithCapacity:v4 overflowHandler:v23];
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __25__CNObservable_skipLast___block_invoke_3;
  v21[3] = &unk_1E6ED6988;
  v22 = v6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __25__CNObservable_skipLast___block_invoke_4;
  v19[3] = &unk_1E6ED5830;
  v20 = v5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __25__CNObservable_skipLast___block_invoke_5;
  v17 = &unk_1E6ED5A30;
  v18 = v20;
  v9 = v20;
  v10 = v6;
  v11 = [CNObserver blockObserverOfClass:v8 withResultBlock:v21 completionBlock:v19 failureBlock:&v14];
  v12 = [v7 subscribe:{v11, v14, v15, v16, v17}];

  return v12;
}

id __25__CNObservable_skipLast___block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"skipLast(%@)", v2];

  return v3;
}

- (id)skipUntil:(id)a3
{
  v4 = a3;
  v5 = [[_CNObservableSkipUntilOperator alloc] initWithInput:self signal:v4];

  return v5;
}

- (id)startWith:(id)a3
{
  v4 = a3;
  v5 = +[CNScheduler immediateScheduler];
  v6 = [(CNObservable *)self startWith:v4 scheduler:v5];

  return v6;
}

- (id)startWith:(id)a3 scheduler:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [CNObservable observableWithResults:v6 scheduler:a4];
  v16[0] = v7;
  v16[1] = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [CNObservable concatenate:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__CNObservable_startWith_scheduler___block_invoke;
  v14[3] = &unk_1E6ED65D0;
  v15 = v6;
  v10 = v6;
  v11 = [v9 pipelineDescriptionWithOperation:v14 onObservable:self];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)switch
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(CNObservable *)self switchWithSchedulerProvider:v3];

  return v4;
}

- (id)switchWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__CNObservable_switchWithSchedulerProvider___block_invoke;
  v12 = &unk_1E6ED65F8;
  v13 = v4;
  v14 = self;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_466 onObservable:{self, v9, v10, v11, v12}];

  return v7;
}

CNSwitchWithSchedulerProviderOuterCancelationToken *__44__CNObservable_switchWithSchedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = objc_alloc_init(CNSwitchWithSchedulerProviderOuterCancelationToken);
  v6 = objc_alloc_init(CNUnfairLock);
  v7 = [*(a1 + 32) newSerialSchedulerWithName:@"com.apple.contacts.reactive.switch.downstream"];
  objc_initWeak(&location, v5);
  v18 = *(a1 + 40);
  v8 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_2;
  v36[3] = &unk_1E6ED6C58;
  v37 = v6;
  v38 = v4;
  v41 = v45;
  v39 = v7;
  v40 = v3;
  v42 = v47;
  objc_copyWeak(&v43, &location);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_14;
  v29[3] = &unk_1E6ED6CA8;
  v30 = v37;
  v34 = v47;
  v35 = v45;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_17;
  v22[3] = &unk_1E6ED6CF8;
  v9 = v30;
  v23 = v9;
  v27 = v47;
  v28 = v45;
  v10 = v32;
  v24 = v10;
  v11 = v33;
  v25 = v11;
  v12 = v31;
  v26 = v12;
  v13 = [CNObserver blockObserverOfClass:v8 withResultBlock:v36 completionBlock:v29 failureBlock:v22];
  v14 = [v18 subscribe:v13];

  [(CNCancelationToken *)v5 addCancelable:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_20;
  v19[3] = &unk_1E6ED5168;
  v15 = v9;
  v20 = v15;
  v16 = v12;
  v21 = v16;
  [(CNCancelationToken *)v5 addCancelationBlock:v19];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  return v5;
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_3;
  v44[3] = &unk_1E6ED5168;
  v45 = v4;
  v5 = *(a1 + 32);
  v46 = *(a1 + 40);
  v6 = v4;
  CNRunWithLock(v5, v44);
  [v6 _cn_each:&__block_literal_global_42];

  v7 = objc_alloc_init(CNSwitchWithSchedulerProviderSwitchedCancelationToken);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_4;
  v41[3] = &unk_1E6ED5168;
  v8 = *(a1 + 32);
  v42 = *(a1 + 40);
  v9 = v7;
  v43 = v9;
  CNRunWithLock(v8, v41);
  objc_initWeak(&location, v9);
  v10 = objc_opt_class();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_5;
  v35[3] = &unk_1E6ED6BB8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v36 = v11;
  v39 = v12;
  v37 = *(a1 + 48);
  v38 = *(a1 + 56);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_8;
  v28[3] = &unk_1E6ED6C08;
  v29 = *(a1 + 32);
  objc_copyWeak(&v34, &location);
  v13 = *(a1 + 40);
  v14 = *(a1 + 72);
  v30 = v13;
  v33 = v14;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __44__CNObservable_switchWithSchedulerProvider___block_invoke_11;
  v22 = &unk_1E6ED6C30;
  v15 = *(a1 + 32);
  v16 = *(a1 + 64);
  v23 = v15;
  v26 = v16;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  objc_copyWeak(&v27, (a1 + 80));
  v17 = [CNObserver blockObserverOfClass:v10 withResultBlock:v35 completionBlock:v28 failureBlock:&v19];
  v18 = [v3 subscribe:{v17, v19, v20, v21, v22}];

  [(CNCancelationToken *)v9 addCancelable:v18];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

uint64_t __44__CNObservable_switchWithSchedulerProvider___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setArray:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 removeAllObjects];
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_6;
  v6[3] = &unk_1E6ED6B90;
  v10 = *(a1 + 56);
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  CNRunWithLock(v4, v6);
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_6(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v8 = v1;
    v9 = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_7;
    v5[3] = &unk_1E6ED5168;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 performBlock:v5];
  }
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_9;
  v8[3] = &unk_1E6ED6BE0;
  objc_copyWeak(&v11, (a1 + 72));
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  CNRunWithLock(v2, v8);

  objc_destroyWeak(&v11);
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) removeObject:WeakRetained];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_10;
      v4[3] = &unk_1E6ED5830;
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      [v3 performBlock:v4];
    }
  }
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__CNObservable_switchWithSchedulerProvider___block_invoke_12;
  v10 = &unk_1E6ED6B90;
  v14 = *(a1 + 56);
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v3;
  v5 = v3;
  CNRunWithLock(v4, &v7);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained cancel];
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_12(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if (*(v1 + 24) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_13;
    v4[3] = &unk_1E6ED5168;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    [v3 performBlock:v4];

    v1 = *(*(a1 + 56) + 8);
  }

  *(v1 + 24) = 0;
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_14(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_15;
  v3[3] = &unk_1E6ED6C80;
  v7 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  CNRunWithLock(v2, v3);
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_15(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && off_1EF43E9E8(&__block_literal_global_5, *(a1 + 32)))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_16;
    v3[3] = &unk_1E6ED5830;
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    [v2 performBlock:v3];
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNObservable_switchWithSchedulerProvider___block_invoke_18;
  v8[3] = &unk_1E6ED6CD0;
  v14 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v12 = v4;
  v13 = *(a1 + 56);
  v6 = v4;
  v7 = v3;
  CNRunWithLock(v5, v8);
  [v6 _cn_each:&__block_literal_global_42];
}

uint64_t __44__CNObservable_switchWithSchedulerProvider___block_invoke_18(uint64_t a1)
{
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v2 = *(*(a1 + 80) + 8);
  if (*(v2 + 24) == 1)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __44__CNObservable_switchWithSchedulerProvider___block_invoke_19;
    v8 = &unk_1E6ED5168;
    v3 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 performBlock:&v5];

    v2 = *(*(a1 + 80) + 8);
  }

  *(v2 + 24) = 0;
  [*(a1 + 56) setArray:{*(a1 + 64), v5, v6, v7, v8}];
  return [*(a1 + 64) removeAllObjects];
}

void __44__CNObservable_switchWithSchedulerProvider___block_invoke_20(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __44__CNObservable_switchWithSchedulerProvider___block_invoke_21;
  v8 = &unk_1E6ED5168;
  v9 = v2;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = v2;
  CNRunWithLock(v3, &v5);
  [v4 _cn_each:{&__block_literal_global_42, v5, v6, v7, v8}];
}

uint64_t __44__CNObservable_switchWithSchedulerProvider___block_invoke_21(uint64_t a1)
{
  [*(a1 + 32) setArray:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 removeAllObjects];
}

- (id)switchMap:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(CNObservable *)self switchMap:v4 schedulerProvider:v5];

  return v6;
}

- (id)switchMap:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = [(CNObservable *)self map:a3];
  v8 = [v7 switchWithSchedulerProvider:v6];

  v9 = [v8 pipelineDescriptionWithOperation:&__block_literal_global_471 onObservable:self];

  return v9;
}

- (id)take:(unint64_t)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__CNObservable_take___block_invoke;
  v9[3] = &unk_1E6ED6B68;
  v9[4] = self;
  v9[5] = a3;
  v5 = [CNObservable observableWithBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __21__CNObservable_take___block_invoke_5;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a3;
  v6 = [v5 pipelineDescriptionWithOperation:v8 onObservable:self];

  return v6;
}

CNTakeCancelationToken *__21__CNObservable_take___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = *(a1 + 40);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 1;
  v4 = objc_alloc_init(CNTakeCancelationToken);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __21__CNObservable_take___block_invoke_2;
  v23[3] = &unk_1E6ED6D20;
  v26 = v30;
  v24 = v3;
  v27 = v28;
  v7 = v4;
  v25 = v7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __21__CNObservable_take___block_invoke_3;
  v20[3] = &unk_1E6ED5808;
  v22 = v28;
  v21 = v24;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __21__CNObservable_take___block_invoke_4;
  v17 = &unk_1E6ED6D48;
  v19 = v28;
  v8 = v21;
  v18 = v8;
  v9 = [CNObserver blockObserverOfClass:v6 withResultBlock:v23 completionBlock:v20 failureBlock:&v14];
  v10 = [v5 subscribe:{v9, v14, v15, v16, v17}];
  [(CNCancelationToken *)v7 addCancelable:v10];

  v11 = v18;
  v12 = v7;

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  return v12;
}

uint64_t __21__CNObservable_take___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!*(*(*(a1 + 48) + 8) + 24) || (v3 = [*(a1 + 32) observerDidReceiveResult:v7], v4 = v7, --*(*(*(a1 + 48) + 8) + 24), !*(*(*(a1 + 48) + 8) + 24)))
  {
    v5 = *(*(a1 + 56) + 8);
    if (*(v5 + 24) == 1)
    {
      *(v5 + 24) = 0;
      [*(a1 + 32) observerDidComplete];
    }

    v3 = [*(a1 + 40) cancel];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t __21__CNObservable_take___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return [*(result + 32) observerDidComplete];
  }

  return result;
}

uint64_t __21__CNObservable_take___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return [*(result + 32) observerDidFailWithError:a2];
  }

  return result;
}

id __21__CNObservable_take___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"take(%@)", v2];

  return v3;
}

- (id)takeLast:(unint64_t)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__CNObservable_takeLast___block_invoke;
  v9[3] = &unk_1E6ED6B68;
  v9[4] = self;
  v9[5] = a3;
  v5 = [CNObservable observableWithBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__CNObservable_takeLast___block_invoke_5;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a3;
  v6 = [v5 pipelineDescriptionWithOperation:v8 onObservable:self];

  return v6;
}

CNTakeLastCancelationToken *__25__CNObservable_takeLast___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNQueue boundedQueueWithCapacity:*(a1 + 40)];
  v5 = objc_alloc_init(CNTakeLastCancelationToken);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __25__CNObservable_takeLast___block_invoke_2;
  v21[3] = &unk_1E6ED6988;
  v22 = v4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __25__CNObservable_takeLast___block_invoke_3;
  v17[3] = &unk_1E6ED57E0;
  v18 = v22;
  v19 = v3;
  v8 = v5;
  v20 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __25__CNObservable_takeLast___block_invoke_4;
  v15[3] = &unk_1E6ED5A30;
  v16 = v19;
  v9 = v19;
  v10 = v22;
  v11 = [CNObserver blockObserverOfClass:v7 withResultBlock:v21 completionBlock:v17 failureBlock:v15];
  v12 = [v6 subscribe:v11];

  [(CNCancelationToken *)v8 addCancelable:v12];
  v13 = v8;

  return v8;
}

void __25__CNObservable_takeLast___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) drain];
  [CNObserver sendArray:v2 error:0 toObserver:*(a1 + 40) untilCanceled:*(a1 + 48)];
}

id __25__CNObservable_takeLast___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"takeLast(%@)", v2];

  return v3;
}

- (id)takeUntil:(id)a3
{
  v4 = a3;
  v5 = [[_CNObservableTakeUntilOperator alloc] initWithInput:self signal:v4];

  return v5;
}

- (id)throttle:(double)a3 schedulerProvider:(id)a4
{
  v6 = [(CNObservable *)self throttle:2 options:a4 schedulerProvider:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__CNObservable_throttle_schedulerProvider___block_invoke;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v9[4] = a3;
  v7 = [v6 pipelineDescriptionWithOperation:v9 onObservable:self];

  return v7;
}

id __43__CNObservable_throttle_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"throttle(%@)", v3];

  return v4;
}

- (id)throttle:(double)a3 options:(unint64_t)a4 schedulerProvider:(id)a5
{
  v8 = a5;
  v9 = [[_CNThrottledObservable alloc] initWithInterval:a4 options:self observable:v8 schedulerProvider:a3];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CNObservable_throttle_options_schedulerProvider___block_invoke;
  v12[3] = &__block_descriptor_48_e15___NSString_8__0l;
  *&v12[4] = a3;
  v12[5] = a4;
  v10 = [(CNObservable *)v9 pipelineDescriptionWithOperation:v12 onObservable:self];

  return v10;
}

id __51__CNObservable_throttle_options_schedulerProvider___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  if (v3 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v3 * 1000.0];
  }
  v4 = ;
  v5 = [v2 stringWithFormat:@"throttle(%@, options: 0x%lx)", v4, *(a1 + 40)];

  return v5;
}

- (id)throttleFirst:(double)a3 scheduler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__CNObservable_throttleFirst_scheduler___block_invoke;
  v12[3] = &unk_1E6ED6960;
  v15 = a3;
  v13 = v6;
  v14 = self;
  v7 = v6;
  v8 = [CNObservable observableWithBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CNObservable_throttleFirst_scheduler___block_invoke_5;
  v11[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v11[4] = a3;
  v9 = [v8 pipelineDescriptionWithOperation:v11 onObservable:self];

  return v9;
}

id __40__CNObservable_throttleFirst_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  [*(a1 + 32) timestamp];
  *&v23[3] = v4 - *(a1 + 48) + -1.0;
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__CNObservable_throttleFirst_scheduler___block_invoke_2;
  v18[3] = &unk_1E6ED6D70;
  v19 = *(a1 + 32);
  v21 = v23;
  v22 = *(a1 + 48);
  v20 = v3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__CNObservable_throttleFirst_scheduler___block_invoke_3;
  v16[3] = &unk_1E6ED5830;
  v17 = v20;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __40__CNObservable_throttleFirst_scheduler___block_invoke_4;
  v14 = &unk_1E6ED5A30;
  v7 = v17;
  v15 = v7;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v18 completionBlock:v16 failureBlock:&v11];
  v9 = [v5 subscribe:{v8, v11, v12, v13, v14}];

  _Block_object_dispose(v23, 8);

  return v9;
}

void __40__CNObservable_throttleFirst_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) timestamp];
  if (v3 - *(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
  {
    [*(a1 + 32) timestamp];
    *(*(*(a1 + 48) + 8) + 24) = v4;
    [*(a1 + 40) observerDidReceiveResult:v5];
  }
}

id __40__CNObservable_throttleFirst_scheduler___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"throttleFirst(%@)", v3];

  return v4;
}

- (id)throttleFirstAndLast:(double)a3 schedulerProvider:(id)a4
{
  v6 = [(CNObservable *)self throttle:3 options:a4 schedulerProvider:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CNObservable_throttleFirstAndLast_schedulerProvider___block_invoke;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  *&v9[4] = a3;
  v7 = [v6 pipelineDescriptionWithOperation:v9 onObservable:self];

  return v7;
}

id __55__CNObservable_throttleFirstAndLast_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  if (v2 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v2 * 1000.0];
  }
  v3 = ;
  v4 = [v1 stringWithFormat:@"throttleFirstAndLast(%@)", v3];

  return v4;
}

- (id)timeInterval
{
  v3 = +[CNScheduler immediateScheduler];
  v4 = [(CNObservable *)self timeIntervalWithScheduler:v3];

  return v4;
}

- (id)timeIntervalWithScheduler:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNObservable_timeIntervalWithScheduler___block_invoke;
  v12 = &unk_1E6ED65F8;
  v13 = v4;
  v14 = self;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:&v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_503 onObservable:{self, v9, v10, v11, v12}];

  return v7;
}

id __42__CNObservable_timeIntervalWithScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  [*(a1 + 32) timestamp];
  v19[3] = v4;
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNObservable_timeIntervalWithScheduler___block_invoke_2;
  v15[3] = &unk_1E6ED6D98;
  v16 = *(a1 + 32);
  v18 = v19;
  v17 = v3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__CNObservable_timeIntervalWithScheduler___block_invoke_3;
  v13[3] = &unk_1E6ED5830;
  v14 = v17;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__CNObservable_timeIntervalWithScheduler___block_invoke_4;
  v11[3] = &unk_1E6ED5A30;
  v7 = v14;
  v12 = v7;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v15 completionBlock:v13 failureBlock:v11];
  v9 = [v5 subscribe:v8];

  _Block_object_dispose(v19, 8);

  return v9;
}

void __42__CNObservable_timeIntervalWithScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timestamp];
  v6 = v5;
  v7 = [(CNTimestamped *)[CNRelativeTimestamped alloc] initWithValue:v4 timestamp:v5 - *(*(*(a1 + 48) + 8) + 24)];

  [*(a1 + 40) observerDidReceiveResult:v7];
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (id)timeoutAfterDelay:(double)a3 alternateObservable:(id)a4 schedule:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke;
  v19[3] = &unk_1E6ED6DC0;
  v20 = v9;
  v23 = a3;
  v10 = v8;
  v21 = v10;
  v22 = self;
  v11 = v9;
  v12 = [CNObservable observableWithBlock:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_7;
  v16[3] = &unk_1E6ED6738;
  v18 = a3;
  v17 = v10;
  v13 = v10;
  v14 = [v12 pipelineDescriptionWithOperation:v16 onObservable:self];

  return v14;
}

id __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNTimeoutAfterDelayCancelationToken);
  v5 = *(a1 + 56);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_2;
  v31[3] = &unk_1E6ED57E0;
  v32 = v4;
  v6 = *(a1 + 32);
  v33 = *(a1 + 40);
  v7 = v3;
  v34 = v7;
  v8 = v4;
  v9 = [v6 afterDelay:v31 performBlock:v5];
  v10 = *(a1 + 48);
  v11 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_3;
  v29[3] = &unk_1E6ED6988;
  v30 = v7;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_4;
  v26[3] = &unk_1E6ED5168;
  v27 = v9;
  v28 = v30;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_5;
  v23[3] = &unk_1E6ED59E0;
  v12 = v27;
  v24 = v12;
  v25 = v28;
  v13 = v28;
  v14 = [CNObserver blockObserverOfClass:v11 withResultBlock:v29 completionBlock:v26 failureBlock:v23];
  v15 = [v10 subscribe:v14];

  [(CNCancelationToken *)v8 addCancelable:v15];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_6;
  v20[3] = &unk_1E6ED5168;
  v21 = v15;
  v22 = v12;
  v16 = v12;
  v17 = v15;
  v18 = [CNCancelationToken tokenWithCancelationBlock:v20];

  return v18;
}

uint64_t __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 observerDidComplete];
}

void __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancel];
  [*(a1 + 40) observerDidFailWithError:v4];
}

uint64_t __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

id __63__CNObservable_timeoutAfterDelay_alternateObservable_schedule___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 40);
  if (v3 >= 1.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fs", *(a1 + 40)];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fms", v3 * 1000.0];
  }
  v4 = ;
  v5 = [*(a1 + 32) debugPipelineDescription];
  v6 = [v2 stringWithFormat:@"timeout(%@, alternate: %@)", v4, v5];

  return v6;
}

- (id)timestampWithScheduler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__CNObservable_timestampWithScheduler___block_invoke;
  v9[3] = &unk_1E6ED5FE0;
  v10 = v4;
  v5 = v4;
  v6 = [(CNObservable *)self map:v9];
  v7 = [v6 pipelineDescriptionWithOperation:&__block_literal_global_514 onObservable:self];

  return v7;
}

CNTimestamped *__39__CNObservable_timestampWithScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNTimestamped alloc];
  [*(a1 + 32) timestamp];
  v5 = [(CNTimestamped *)v4 initWithValue:v3 timestamp:?];

  return v5;
}

- (id)toArray
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__CNObservable_toArray__block_invoke;
  v4[3] = &unk_1E6ED6DE8;
  objc_copyWeak(&v5, &location);
  v2 = [CNObservable observableWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

id __23__CNObservable_toArray__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __23__CNObservable_toArray__block_invoke_2;
  v20[3] = &unk_1E6ED6988;
  v21 = v5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __23__CNObservable_toArray__block_invoke_3;
  v17[3] = &unk_1E6ED5168;
  v18 = v3;
  v19 = v21;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __23__CNObservable_toArray__block_invoke_4;
  v15 = &unk_1E6ED5A30;
  v16 = v18;
  v7 = v18;
  v8 = v21;
  v9 = [CNObserver blockObserverOfClass:v6 withResultBlock:v20 completionBlock:v17 failureBlock:&v12];
  v10 = [WeakRetained subscribe:{v9, v12, v13, v14, v15}];

  return v10;
}

uint64_t __23__CNObservable_toArray__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidReceiveResult:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 observerDidComplete];
}

- (id)using:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __22__CNObservable_using___block_invoke;
  v8[3] = &unk_1E6ED6A28;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [CNObservable observableWithBlock:v8];

  return v6;
}

id __22__CNObservable_using___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3);
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __22__CNObservable_using___block_invoke_2;
  v12[3] = &unk_1E6ED5830;
  v13 = v6;
  v8 = v6;
  v9 = [v7 doOnTerminate:v12];
  v10 = [v9 subscribe:v5];

  return v10;
}

- (id)subscribe:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"subscribe: must be overridden" userInfo:0];
  objc_exception_throw(v4);
}

+ (id)observableWithAbsoluteTimestamps:(id)a3 schedulerProvider:(id)a4
{
  v29 = a1;
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v36[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v30 = v5;
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v9 firstObject];
  [v11 timestamp];
  v13 = v12;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        [v19 timestamp];
        v21 = vabdd_f64(v20, v13);
        v22 = [CNRelativeTimestamped alloc];
        v23 = [v19 value];
        v24 = [(CNTimestamped *)v22 initWithValue:v23 timestamp:v21];

        [v10 addObject:v24];
        [v19 timestamp];
        v13 = v25;
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v26 = [v29 observableWithRelativeTimestamps:v10 schedulerProvider:v6];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)observableWithRelativeTimestamps:(id)a3 schedulerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (off_1EF43E9E8(&__block_literal_global_5, v6))
  {
    v8 = +[CNObservable emptyObservable];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__CNObservable_TimestampReplay__observableWithRelativeTimestamps_schedulerProvider___block_invoke;
    v10[3] = &unk_1E6ED6960;
    v11 = v6;
    v12 = v7;
    v13 = a1;
    v8 = [CNObservable observableWithBlock:v10];
  }

  return v8;
}

CNCancelationToken *__84__CNObservable_TimestampReplay__observableWithRelativeTimestamps_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(CNQueue);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CNQueue *)v4 enqueue:*(*(&v30 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 40) newSerialSchedulerWithName:@"com.apple.contacts.reactive.relative-timestamps.downstream"];
  v11 = objc_alloc_init(CNCancelationToken);
  v12 = [(CNQueue *)v4 peek];
  [v12 timestamp];
  v14 = v13;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__CNObservable_TimestampReplay__observableWithRelativeTimestamps_schedulerProvider___block_invoke_2;
  v24[3] = &unk_1E6ED75F8;
  v29 = *(a1 + 48);
  v25 = v4;
  v26 = v3;
  v15 = v11;
  v27 = v15;
  v28 = v10;
  v16 = v10;
  v17 = v3;
  v18 = v4;
  v19 = [v16 afterDelay:v24 performBlock:v14];
  v20 = v28;
  v21 = v15;

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (void)sendNextTimestampFromQueue:(id)a3 toObserver:(id)a4 untilCanceled:(id)a5 scheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count] && (objc_msgSend(v12, "isCanceled") & 1) == 0)
  {
    v14 = [v10 dequeue];
    v15 = [v14 value];
    [v11 observerDidReceiveResult:v15];

    if ([v10 count])
    {
      v16 = [v10 peek];
      [v16 timestamp];
      v18 = v17;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__CNObservable_TimestampReplay__sendNextTimestampFromQueue_toObserver_untilCanceled_scheduler___block_invoke;
      v20[3] = &unk_1E6ED75F8;
      v25 = a1;
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v19 = [v24 afterDelay:v20 performBlock:v18];
    }

    else
    {
      [v11 observerDidComplete];
    }
  }
}

+ (id)scannerResultsInString:(id)a3
{
  v3 = a3;
  if (off_1EF440708(&__block_literal_global_120, v3))
  {
    v4 = [CNResult successWithValue:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [MEMORY[0x1E6999A88] scanString:v3];
    v4 = [CNResult successWithValue:v5];
  }

  return v4;
}

+ (id)asyncScannerResultsInString:(id)a3
{
  v3 = a3;
  if (off_1EF440708(&__block_literal_global_120, v3))
  {
    v4 = [CNFuture futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = objc_alloc_init(CNPromise);
    v6 = MEMORY[0x1E6999A88];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CNObservable_DataDetectors__asyncScannerResultsInString___block_invoke;
    v11[3] = &unk_1E6ED7670;
    v12 = v5;
    v7 = v5;
    v8 = [v6 scanString:v3 completionBlock:v11];
    v4 = [(CNPromise *)v7 future];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CNObservable_DataDetectors__asyncScannerResultsInString___block_invoke_2;
    v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v10[4] = v8;
    [v4 addFailureBlock:v10];
  }

  return v4;
}

uint64_t __59__CNObservable_DataDetectors__asyncScannerResultsInString___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [CNFoundationError isCanceledError:a2];
  if (result)
  {
    v4 = MEMORY[0x1E6999A88];
    v5 = *(a1 + 32);

    return [v4 cancelJob:v5];
  }

  return result;
}

+ (id)observableWithScannerResultsInString:(id)a3
{
  v3 = a3;
  if (off_1EF440708(&__block_literal_global_120, v3))
  {
    v4 = +[CNObservable emptyObservable];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke;
    v6[3] = &unk_1E6ED65A8;
    v7 = v3;
    v4 = [CNObservable observableWithBlock:v6];
  }

  return v4;
}

CNCancelationToken *__68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNCancelationToken);
  v5 = MEMORY[0x1E6999A88];
  v6 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke_2;
  v14[3] = &unk_1E6ED76E0;
  v15 = v3;
  v7 = v4;
  v16 = v7;
  v8 = v3;
  v9 = [v5 scanString:v6 completionBlock:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke_5;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = v9;
  [(CNCancelationToken *)v7 addCancelationBlock:v13];
  v10 = v16;
  v11 = v7;

  return v7;
}

void __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke_3;
  v7[3] = &unk_1E6ED76B8;
  v8 = *(a1 + 32);
  [a2 _cn_each:v7 untilCancelled:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__CNObservable_DataDetectors__observableWithScannerResultsInString___block_invoke_4;
  v5[3] = &unk_1E6ED5830;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v4 performBlock:v5];
}

+ (id)observableWithScannerResultsOfType:(unint64_t)a3 inString:(id)a4
{
  v6 = [a1 observableWithScannerResultsInString:a4];
  v7 = [a1 binderTypeForResultType:a3];
  if ((off_1EF440708(&__block_literal_global_120, v7) & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__CNObservable_DataDetectors__observableWithScannerResultsOfType_inString___block_invoke;
    v10[3] = &unk_1E6ED7708;
    v11 = v7;
    v8 = [v6 filter:v10];

    v6 = v8;
  }

  return v6;
}

uint64_t __75__CNObservable_DataDetectors__observableWithScannerResultsOfType_inString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)binderTypeForResultType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    v4 = &stru_1EF441028;
  }

  else
  {
    v4 = **(&unk_1E6ED7748 + a3 - 1);
  }

  return v4;
}

+ (id)observableWithEmailAddressesInString:(id)a3
{
  v3 = [a1 observableWithScannerResultsOfType:2 inString:a3];
  v4 = [v3 map:&__block_literal_global_53];

  return v4;
}

+ (id)observableOnDefaultNotificationCenterWithName:(id)a3 object:(id)a4
{
  v6 = MEMORY[0x1E696AD88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v10 = [a1 observableOnNotificationCenter:v9 withName:v8 object:v7];

  return v10;
}

+ (id)observableOnNotificationCenter:(id)a3 withName:(id)a4 object:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__CNObservable_NSNotification__observableOnNotificationCenter_withName_object___block_invoke;
  v15[3] = &unk_1E6ED7818;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = [CNObservable observableWithBlock:v15];

  return v13;
}

id __79__CNObservable_NSNotification__observableOnNotificationCenter_withName_object___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__CNObservable_NSNotification__observableOnNotificationCenter_withName_object___block_invoke_2;
  v15[3] = &unk_1E6ED77F0;
  v16 = v3;
  v7 = v3;
  v8 = [v4 addObserverForName:v5 object:v6 queue:0 usingBlock:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CNObservable_NSNotification__observableOnNotificationCenter_withName_object___block_invoke_3;
  v12[3] = &unk_1E6ED5168;
  v13 = *(a1 + 32);
  v14 = v8;
  v9 = v8;
  v10 = [CNCancelationToken tokenWithCancelationBlock:v12];

  return v10;
}

+ (id)observableOnDarwinNotificationCenterWithName:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CNObservable_DarwinNotify__observableOnDarwinNotificationCenterWithName___block_invoke;
  v7[3] = &unk_1E6ED65A8;
  v8 = v3;
  v4 = v3;
  v5 = [CNObservable observableWithBlock:v7];

  return v5;
}

id __75__CNObservable_DarwinNotify__observableOnDarwinNotificationCenterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DarwinObservers();
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [v4 setObject:v3 forKey:v5];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _handler, *(a1 + 32), 0, CFNotificationSuspensionBehaviorDrop);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CNObservable_DarwinNotify__observableOnDarwinNotificationCenterWithName___block_invoke_2;
  v12[3] = &unk_1E6ED6910;
  v13 = v4;
  v14 = v5;
  v15 = v3;
  v16 = DarwinNotifyCenter;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  v10 = [CNCancelationToken tokenWithCancelationBlock:v12];

  return v10;
}

void __75__CNObservable_DarwinNotify__observableOnDarwinNotificationCenterWithName___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  CFNotificationCenterRemoveEveryObserver(v2, v3);
}

+ (id)observableForKeyPath:(id)a3 ofObject:(id)a4 withOptions:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CNObservable_NSKeyValueObserving__observableForKeyPath_ofObject_withOptions___block_invoke;
  v13[3] = &unk_1E6ED6960;
  v14 = v8;
  v15 = v7;
  v16 = a5;
  v9 = v7;
  v10 = v8;
  v11 = [CNObservable observableWithBlock:v13];

  return v11;
}

id __79__CNObservable_NSKeyValueObserving__observableForKeyPath_ofObject_withOptions___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[_CNKeyValueObserverHandler alloc] initWithObject:a1[4] keyPath:a1[5] observer:v3];

  [(_CNKeyValueObserverHandler *)v4 startObservingWithOptions:a1[6]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNObservable_NSKeyValueObserving__observableForKeyPath_ofObject_withOptions___block_invoke_2;
  v8[3] = &unk_1E6ED5830;
  v9 = v4;
  v5 = v4;
  v6 = [CNCancelationToken tokenWithCancelationBlock:v8];

  return v6;
}

void __29__CNObservable_dematerialize__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Attempt to dematerialize a non-event: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
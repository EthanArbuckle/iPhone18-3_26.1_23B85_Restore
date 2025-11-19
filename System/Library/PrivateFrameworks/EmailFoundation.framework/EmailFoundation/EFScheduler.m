@interface EFScheduler
+ (EFScheduler)globalAsyncScheduler;
+ (EFScheduler)immediateScheduler;
+ (EFScheduler)mainThreadScheduler;
+ (id)_globalAsyncSchedulerWithQualityOfService:(int64_t)a3;
+ (id)dispatchQueueSchedulerWithQueue:(id)a3;
+ (id)globalAsyncSchedulerWithQualityOfService:(int64_t)a3;
+ (id)onScheduler:(id)a3 performWithObject:(id)a4;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3;
+ (id)serialDispatchQueueSchedulerWithName:(id)a3;
+ (id)serialDispatchQueueSchedulerWithName:(id)a3 qualityOfService:(int64_t)a4;
@end

@implementation EFScheduler

+ (EFScheduler)mainThreadScheduler
{
  if (mainThreadScheduler_onceToken != -1)
  {
    +[EFScheduler mainThreadScheduler];
  }

  v3 = mainThreadScheduler_scheduler;

  return v3;
}

void __34__EFScheduler_mainThreadScheduler__block_invoke()
{
  v0 = objc_alloc_init(EFMainThreadScheduler);
  v1 = mainThreadScheduler_scheduler;
  mainThreadScheduler_scheduler = v0;
}

void __35__EFScheduler_globalAsyncScheduler__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) globalAsyncSchedulerWithQualityOfService:-1];
  v2 = globalAsyncScheduler_scheduler;
  globalAsyncScheduler_scheduler = v1;
}

+ (EFScheduler)immediateScheduler
{
  if (immediateScheduler_onceToken != -1)
  {
    +[EFScheduler immediateScheduler];
  }

  v3 = immediateScheduler_scheduler;

  return v3;
}

void __33__EFScheduler_immediateScheduler__block_invoke()
{
  v0 = objc_alloc_init(EFImmediateScheduler);
  v1 = immediateScheduler_scheduler;
  immediateScheduler_scheduler = v0;
}

+ (EFScheduler)globalAsyncScheduler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EFScheduler_globalAsyncScheduler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (globalAsyncScheduler_onceToken != -1)
  {
    dispatch_once(&globalAsyncScheduler_onceToken, block);
  }

  v2 = globalAsyncScheduler_scheduler;

  return v2;
}

+ (id)_globalAsyncSchedulerWithQualityOfService:(int64_t)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = v5;
  v7 = __ROR8__(a3 - 9, 3);
  v8 = 8 * v7 + 9;
  if (v7 >= 4)
  {
    v9 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v9 = v8;
  }

  v10 = dispatch_queue_attr_make_with_qos_class(v5, v9, 0);

  v11 = dispatch_queue_create(0, v10);
  v12 = [a1 dispatchQueueSchedulerWithQueue:v11];

  return v12;
}

+ (id)globalAsyncSchedulerWithQualityOfService:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EFScheduler_globalAsyncSchedulerWithQualityOfService___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (globalAsyncSchedulerWithQualityOfService__onceToken != -1)
  {
    dispatch_once(&globalAsyncSchedulerWithQualityOfService__onceToken, block);
  }

  v4 = globalAsyncSchedulerWithQualityOfService__qosSchedulers;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __56__EFScheduler_globalAsyncSchedulerWithQualityOfService___block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F45AD010;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _globalAsyncSchedulerWithQualityOfService:-1];
  v12[0] = v3;
  v11[1] = &unk_1F45AD028;
  v4 = [*v2 _globalAsyncSchedulerWithQualityOfService:9];
  v12[1] = v4;
  v11[2] = &unk_1F45AD040;
  v5 = [*(a1 + 32) _globalAsyncSchedulerWithQualityOfService:17];
  v12[2] = v5;
  v11[3] = &unk_1F45AD058;
  v6 = [*(a1 + 32) _globalAsyncSchedulerWithQualityOfService:25];
  v12[3] = v6;
  v11[4] = &unk_1F45AD070;
  v7 = [*(a1 + 32) _globalAsyncSchedulerWithQualityOfService:33];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = globalAsyncSchedulerWithQualityOfService__qosSchedulers;
  globalAsyncSchedulerWithQualityOfService__qosSchedulers = v8;

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)serialDispatchQueueSchedulerWithName:(id)a3
{
  v3 = [a1 serialDispatchQueueSchedulerWithName:a3 qualityOfService:-1];

  return v3;
}

+ (id)serialDispatchQueueSchedulerWithName:(id)a3 qualityOfService:(int64_t)a4
{
  v6 = a3;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = v7;
  v9 = __ROR8__(a4 - 9, 3);
  v10 = 8 * v9 + 9;
  if (v9 >= 4)
  {
    v11 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v11 = v10;
  }

  v12 = dispatch_queue_attr_make_with_qos_class(v7, v11, 0);

  v13 = dispatch_queue_create([v6 UTF8String], v12);
  v14 = [a1 dispatchQueueSchedulerWithQueue:v13];

  return v14;
}

+ (id)dispatchQueueSchedulerWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[EFQueueScheduler alloc] initWithQueue:v3];

  return v4;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3
{
  v3 = [[EFOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:a3];

  return v3;
}

+ (id)onScheduler:(id)a3 performWithObject:(id)a4
{
  v4 = [EFSchedulerTrampoline trampolineWithScheduler:a3 object:a4];

  return v4;
}

@end
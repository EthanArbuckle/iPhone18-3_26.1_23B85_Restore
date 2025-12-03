@interface EFScheduler
+ (EFScheduler)globalAsyncScheduler;
+ (EFScheduler)immediateScheduler;
+ (EFScheduler)mainThreadScheduler;
+ (id)_globalAsyncSchedulerWithQualityOfService:(int64_t)service;
+ (id)dispatchQueueSchedulerWithQueue:(id)queue;
+ (id)globalAsyncSchedulerWithQualityOfService:(int64_t)service;
+ (id)onScheduler:(id)scheduler performWithObject:(id)object;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count;
+ (id)serialDispatchQueueSchedulerWithName:(id)name;
+ (id)serialDispatchQueueSchedulerWithName:(id)name qualityOfService:(int64_t)service;
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
  block[4] = self;
  if (globalAsyncScheduler_onceToken != -1)
  {
    dispatch_once(&globalAsyncScheduler_onceToken, block);
  }

  v2 = globalAsyncScheduler_scheduler;

  return v2;
}

+ (id)_globalAsyncSchedulerWithQualityOfService:(int64_t)service
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = v5;
  v7 = __ROR8__(service - 9, 3);
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
  v12 = [self dispatchQueueSchedulerWithQueue:v11];

  return v12;
}

+ (id)globalAsyncSchedulerWithQualityOfService:(int64_t)service
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EFScheduler_globalAsyncSchedulerWithQualityOfService___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (globalAsyncSchedulerWithQualityOfService__onceToken != -1)
  {
    dispatch_once(&globalAsyncSchedulerWithQualityOfService__onceToken, block);
  }

  v4 = globalAsyncSchedulerWithQualityOfService__qosSchedulers;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:service];
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

+ (id)serialDispatchQueueSchedulerWithName:(id)name
{
  v3 = [self serialDispatchQueueSchedulerWithName:name qualityOfService:-1];

  return v3;
}

+ (id)serialDispatchQueueSchedulerWithName:(id)name qualityOfService:(int64_t)service
{
  nameCopy = name;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = v7;
  v9 = __ROR8__(service - 9, 3);
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

  v13 = dispatch_queue_create([nameCopy UTF8String], v12);
  v14 = [self dispatchQueueSchedulerWithQueue:v13];

  return v14;
}

+ (id)dispatchQueueSchedulerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[EFQueueScheduler alloc] initWithQueue:queueCopy];

  return v4;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count
{
  v3 = [[EFOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:count];

  return v3;
}

+ (id)onScheduler:(id)scheduler performWithObject:(id)object
{
  v4 = [EFSchedulerTrampoline trampolineWithScheduler:scheduler object:object];

  return v4;
}

@end
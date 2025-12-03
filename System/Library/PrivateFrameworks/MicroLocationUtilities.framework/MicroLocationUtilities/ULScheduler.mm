@interface ULScheduler
+ (ULScheduler)globalAsyncScheduler;
+ (ULScheduler)immediateScheduler;
+ (id)dispatchQueueSchedulerWithQueue:(id)queue;
@end

@implementation ULScheduler

+ (ULScheduler)immediateScheduler
{
  if (immediateScheduler_ul_once_token_0 != -1)
  {
    +[ULScheduler immediateScheduler];
  }

  v3 = immediateScheduler_ul_once_object_0;

  return v3;
}

uint64_t __33__ULScheduler_immediateScheduler__block_invoke()
{
  immediateScheduler_ul_once_object_0 = objc_alloc_init(ULImmediateScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (ULScheduler)globalAsyncScheduler
{
  if (globalAsyncScheduler_ul_once_token_1 != -1)
  {
    +[ULScheduler globalAsyncScheduler];
  }

  v3 = globalAsyncScheduler_ul_once_object_1;

  return v3;
}

void __35__ULScheduler_globalAsyncScheduler__block_invoke()
{
  v0 = [ULQueueScheduler alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MicroLocationUtilities.ULGlobalAsyncScheduler", v4);
  v2 = [(ULQueueScheduler *)v0 initWithQueue:v1];
  v3 = globalAsyncScheduler_ul_once_object_1;
  globalAsyncScheduler_ul_once_object_1 = v2;
}

+ (id)dispatchQueueSchedulerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[ULQueueScheduler alloc] initWithQueue:queueCopy];

  return v4;
}

@end
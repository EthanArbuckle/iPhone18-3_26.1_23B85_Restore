@interface CDMDataDispatcherCompletionQueue
+ (id)getDataDispatcherCompletionQueue;
@end

@implementation CDMDataDispatcherCompletionQueue

+ (id)getDataDispatcherCompletionQueue
{
  if (getDataDispatcherCompletionQueue_once != -1)
  {
    dispatch_once(&getDataDispatcherCompletionQueue_once, &__block_literal_global_4247);
  }

  v3 = getDataDispatcherCompletionQueue_queue;

  return v3;
}

void __68__CDMDataDispatcherCompletionQueue_getDataDispatcherCompletionQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.siri.cdm.CDMDataDispatcherQueue", v0);
  v2 = getDataDispatcherCompletionQueue_queue;
  getDataDispatcherCompletionQueue_queue = v1;
}

@end
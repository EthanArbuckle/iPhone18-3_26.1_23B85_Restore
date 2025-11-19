@interface BRKSharedUtilityQueue
@end

@implementation BRKSharedUtilityQueue

void ___BRKSharedUtilityQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.brook.utility-shared", attr);
  v2 = _BRKSharedUtilityQueue_Queue;
  _BRKSharedUtilityQueue_Queue = v1;
}

@end
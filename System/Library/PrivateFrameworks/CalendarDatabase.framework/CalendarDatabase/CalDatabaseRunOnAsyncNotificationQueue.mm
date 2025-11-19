@interface CalDatabaseRunOnAsyncNotificationQueue
@end

@implementation CalDatabaseRunOnAsyncNotificationQueue

void ___CalDatabaseRunOnAsyncNotificationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("CalDatabaseAsyncNotificationQueue", v2);
  v1 = _CalDatabaseRunOnAsyncNotificationQueue_queue;
  _CalDatabaseRunOnAsyncNotificationQueue_queue = v0;
}

@end
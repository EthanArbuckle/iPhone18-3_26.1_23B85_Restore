@interface FCCacheCoordinatorGCDSerialLock
- (FCCacheCoordinatorGCDSerialLock)init;
@end

@implementation FCCacheCoordinatorGCDSerialLock

- (FCCacheCoordinatorGCDSerialLock)init
{
  v7.receiver = self;
  v7.super_class = FCCacheCoordinatorGCDSerialLock;
  v2 = [(FCCacheCoordinatorGCDSerialLock *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FCCacheCoordinatorGCDSerialLock.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

@end
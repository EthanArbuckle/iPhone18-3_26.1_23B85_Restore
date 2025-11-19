@interface SGContactAggregator
- (void)clear;
@end

@implementation SGContactAggregator

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  [(_PASLRUCache *)obj->_cachedContacts removeAllObjects];
  objc_sync_exit(obj);
}

@end
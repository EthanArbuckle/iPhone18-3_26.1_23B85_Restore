@interface OSLogEventLiveStore
+ (id)liveLocalStore;
- (void)prepareWithCompletionHandler:(id)handler;
@end

@implementation OSLogEventLiveStore

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(OSLogEventLiveSource);
  handlerCopy[2](handlerCopy, v4, 0);
}

+ (id)liveLocalStore
{
  v2 = objc_alloc_init(OSLogEventLiveStore);

  return v2;
}

@end
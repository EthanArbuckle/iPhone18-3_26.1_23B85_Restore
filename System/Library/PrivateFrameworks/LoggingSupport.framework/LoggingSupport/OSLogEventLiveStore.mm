@interface OSLogEventLiveStore
+ (id)liveLocalStore;
- (void)prepareWithCompletionHandler:(id)a3;
@end

@implementation OSLogEventLiveStore

- (void)prepareWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(OSLogEventLiveSource);
  v3[2](v3, v4, 0);
}

+ (id)liveLocalStore
{
  v2 = objc_alloc_init(OSLogEventLiveStore);

  return v2;
}

@end
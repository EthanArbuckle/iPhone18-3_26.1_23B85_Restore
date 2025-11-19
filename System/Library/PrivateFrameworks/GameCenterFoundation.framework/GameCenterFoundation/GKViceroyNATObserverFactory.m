@interface GKViceroyNATObserverFactory
+ (id)makeObserver;
@end

@implementation GKViceroyNATObserverFactory

+ (id)makeObserver
{
  v2 = objc_alloc_init(DefaultGKViceroyNATObserver);

  return v2;
}

@end
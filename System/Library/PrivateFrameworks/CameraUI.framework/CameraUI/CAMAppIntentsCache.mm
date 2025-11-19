@interface CAMAppIntentsCache
+ (CAMViewfinderViewController)currentViewfinder;
@end

@implementation CAMAppIntentsCache

+ (CAMViewfinderViewController)currentViewfinder
{
  WeakRetained = objc_loadWeakRetained(&_cachedViewfinder);

  return WeakRetained;
}

@end
@interface CIContext(IconServicesAdditions)
+ (uint64_t)_MI_sharedIconCompositorContext;
@end

@implementation CIContext(IconServicesAdditions)

+ (uint64_t)_MI_sharedIconCompositorContext
{
  if (_MI_sharedIconCompositorContext_onceToken != -1)
  {
    +[CIContext(IconServicesAdditions) _MI_sharedIconCompositorContext];
  }

  v1 = _MI_sharedIconCompositorContext_contextCacheClearScheduler;

  return [v1 object];
}

@end
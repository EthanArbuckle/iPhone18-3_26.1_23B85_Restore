@interface CIContext(IconServicesAdditions)
+ (id)_IS_sharedIconCompositorContext;
@end

@implementation CIContext(IconServicesAdditions)

+ (id)_IS_sharedIconCompositorContext
{
  if (_IS_sharedIconCompositorContext_onceToken != -1)
  {
    +[CIContext(IconServicesAdditions) _IS_sharedIconCompositorContext];
  }

  v1 = _IS_sharedIconCompositorContext_sharedContext;

  return v1;
}

@end
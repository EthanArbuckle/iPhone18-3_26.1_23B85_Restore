@interface MSUSupport
+ (id)sharedSupport;
@end

@implementation MSUSupport

+ (id)sharedSupport
{
  if (sharedSupport_onceToken != -1)
  {
    +[MSUSupport sharedSupport];
  }

  v3 = sGlobalMSUSupportObject;

  return v3;
}

void __27__MSUSupport_sharedSupport__block_invoke(id a1)
{
  sGlobalMSUSupportObject = objc_alloc_init(MSUSupport);

  _objc_release_x1();
}

@end
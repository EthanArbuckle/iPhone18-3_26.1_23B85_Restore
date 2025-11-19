@interface GKEntitledContextProvider
+ (id)getCurrentDeviceName;
@end

@implementation GKEntitledContextProvider

+ (id)getCurrentDeviceName
{
  static EntitledContextProvider.getCurrentDeviceName()();
  if (v2)
  {
    v3 = sub_227A724BC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
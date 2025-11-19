@interface _FBDefaultFencingProvider
+ (id)sharedInstance;
- (void)synchronizeDrawingWithFence:(id)a3;
@end

@implementation _FBDefaultFencingProvider

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[_FBDefaultFencingProvider sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (void)synchronizeDrawingWithFence:(id)a3
{
  v4 = a3;
  if (UIKitLibraryCore())
  {
    v3 = getUIWindowClass();
    if (v3)
    {
      [v3 _synchronizeDrawingWithFence:v4];
    }
  }
}

@end
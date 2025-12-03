@interface _FBDefaultFencingProvider
+ (id)sharedInstance;
- (void)synchronizeDrawingWithFence:(id)fence;
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

- (void)synchronizeDrawingWithFence:(id)fence
{
  fenceCopy = fence;
  if (UIKitLibraryCore())
  {
    v3 = getUIWindowClass();
    if (v3)
    {
      [v3 _synchronizeDrawingWithFence:fenceCopy];
    }
  }
}

@end
@interface PrivateBrowsingObfuscationWindow
+ (id)showPrivateBrowsingObfuscationWindowForApplicationWindow:(id)window;
@end

@implementation PrivateBrowsingObfuscationWindow

+ (id)showPrivateBrowsingObfuscationWindowForApplicationWindow:(id)window
{
  v3 = MEMORY[0x277D75AC8];
  windowCopy = window;
  if (_SFDeviceIsPad())
  {
    v5 = @"LaunchPrivateBrowsing-iPad";
  }

  else
  {
    v5 = @"LaunchPrivateBrowsing";
  }

  v6 = [v3 storyboardWithName:v5 bundle:0];
  instantiateInitialViewController = [v6 instantiateInitialViewController];
  v8 = [PrivateBrowsingObfuscationWindow alloc];
  windowScene = [windowCopy windowScene];

  v10 = [(PrivateBrowsingObfuscationWindow *)v8 initWithWindowScene:windowScene];
  [(PrivateBrowsingObfuscationWindow *)v10 setRootViewController:instantiateInitialViewController];
  [(PrivateBrowsingObfuscationWindow *)v10 setWindowLevel:*MEMORY[0x277D76F20] + -1.0];
  [(PrivateBrowsingObfuscationWindow *)v10 makeKeyAndVisible];

  return v10;
}

@end
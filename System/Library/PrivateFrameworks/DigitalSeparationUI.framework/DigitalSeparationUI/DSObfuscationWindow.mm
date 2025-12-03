@interface DSObfuscationWindow
+ (id)showDSObfuscationWindowForApplicationWindow:(id)window;
@end

@implementation DSObfuscationWindow

+ (id)showDSObfuscationWindowForApplicationWindow:(id)window
{
  v3 = MEMORY[0x277D75D28];
  windowCopy = window;
  v5 = objc_alloc_init(v3);
  view = [v5 view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v8 = [DSObfuscationWindow alloc];
  windowScene = [windowCopy windowScene];

  v10 = [(DSObfuscationWindow *)v8 initWithWindowScene:windowScene];
  [(DSObfuscationWindow *)v10 setRootViewController:v5];
  [(DSObfuscationWindow *)v10 setWindowLevel:*MEMORY[0x277D772B8] + -1.0];
  [(DSObfuscationWindow *)v10 makeKeyAndVisible];

  return v10;
}

@end
@interface ICWindow
- (BOOL)accessibilityElementsHidden;
- (ICWindow)initWithWindowScene:(id)scene behavior:(int64_t)behavior;
- (UIViewController)ic_topmostPresentedViewController;
- (void)setBehavior:(int64_t)behavior;
- (void)setRootViewController:(id)controller;
@end

@implementation ICWindow

- (ICWindow)initWithWindowScene:(id)scene behavior:(int64_t)behavior
{
  v8.receiver = self;
  v8.super_class = ICWindow;
  v5 = [(ICWindow *)&v8 initWithWindowScene:scene];
  v6 = v5;
  if (v5)
  {
    [(ICWindow *)v5 setBehavior:behavior];
  }

  return v6;
}

- (void)setBehavior:(int64_t)behavior
{
  self->_behavior = behavior;
  if ((behavior - 2) >= 2)
  {
    if (behavior == 1)
    {
      systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
      [(ICWindow *)self setTintColor:systemOrangeColor];

      traitOverrides = [(ICWindow *)self traitOverrides];
      [traitOverrides setUserInterfaceStyle:2];
      goto LABEL_6;
    }

    if (behavior)
    {
      goto LABEL_7;
    }
  }

  traitOverrides = [MEMORY[0x1E69DC888] ICTintColor];
  [(ICWindow *)self setTintColor:traitOverrides];
LABEL_6:

LABEL_7:
  traitOverrides2 = [(ICWindow *)self traitOverrides];
  [traitOverrides2 setNSIntegerValue:behavior forTrait:objc_opt_class()];
}

- (UIViewController)ic_topmostPresentedViewController
{
  rootViewController = [(ICWindow *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  v3PresentedViewController = [presentedViewController presentedViewController];
  if (v3PresentedViewController)
  {
    presentedViewController2 = v3PresentedViewController;
    do
    {
      v6 = presentedViewController2;

      presentedViewController2 = [v6 presentedViewController];

      presentedViewController = v6;
    }

    while (presentedViewController2);
  }

  else
  {
    v6 = presentedViewController;
  }

  return v6;
}

- (BOOL)accessibilityElementsHidden
{
  v4.receiver = self;
  v4.super_class = ICWindow;
  accessibilityElementsHidden = [(ICWindow *)&v4 accessibilityElementsHidden];
  if (([objc_opt_class() _isSecure] & 1) == 0)
  {
    accessibilityElementsHidden |= [MEMORY[0x1E69DC938] ic_isLocked];
  }

  return accessibilityElementsHidden & 1;
}

- (void)setRootViewController:(id)controller
{
  v10[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  rootViewController = [(ICWindow *)self rootViewController];
  v8.receiver = self;
  v8.super_class = ICWindow;
  [(ICWindow *)&v8 setRootViewController:controllerCopy];

  if (rootViewController)
  {
    v9 = @"previousRootViewController";
    v10[0] = rootViewController;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICWindowRootViewControllerDidChange" object:self userInfo:v6];
}

@end
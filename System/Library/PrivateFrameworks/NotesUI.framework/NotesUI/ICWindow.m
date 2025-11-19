@interface ICWindow
- (BOOL)accessibilityElementsHidden;
- (ICWindow)initWithWindowScene:(id)a3 behavior:(int64_t)a4;
- (UIViewController)ic_topmostPresentedViewController;
- (void)setBehavior:(int64_t)a3;
- (void)setRootViewController:(id)a3;
@end

@implementation ICWindow

- (ICWindow)initWithWindowScene:(id)a3 behavior:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = ICWindow;
  v5 = [(ICWindow *)&v8 initWithWindowScene:a3];
  v6 = v5;
  if (v5)
  {
    [(ICWindow *)v5 setBehavior:a4];
  }

  return v6;
}

- (void)setBehavior:(int64_t)a3
{
  self->_behavior = a3;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v6 = [MEMORY[0x1E69DC888] systemOrangeColor];
      [(ICWindow *)self setTintColor:v6];

      v5 = [(ICWindow *)self traitOverrides];
      [v5 setUserInterfaceStyle:2];
      goto LABEL_6;
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }

  v5 = [MEMORY[0x1E69DC888] ICTintColor];
  [(ICWindow *)self setTintColor:v5];
LABEL_6:

LABEL_7:
  v7 = [(ICWindow *)self traitOverrides];
  [v7 setNSIntegerValue:a3 forTrait:objc_opt_class()];
}

- (UIViewController)ic_topmostPresentedViewController
{
  v2 = [(ICWindow *)self rootViewController];
  v3 = [v2 presentedViewController];

  v4 = [v3 presentedViewController];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = v5;

      v5 = [v6 presentedViewController];

      v3 = v6;
    }

    while (v5);
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (BOOL)accessibilityElementsHidden
{
  v4.receiver = self;
  v4.super_class = ICWindow;
  v2 = [(ICWindow *)&v4 accessibilityElementsHidden];
  if (([objc_opt_class() _isSecure] & 1) == 0)
  {
    v2 |= [MEMORY[0x1E69DC938] ic_isLocked];
  }

  return v2 & 1;
}

- (void)setRootViewController:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICWindow *)self rootViewController];
  v8.receiver = self;
  v8.super_class = ICWindow;
  [(ICWindow *)&v8 setRootViewController:v4];

  if (v5)
  {
    v9 = @"previousRootViewController";
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICWindowRootViewControllerDidChange" object:self userInfo:v6];
}

@end
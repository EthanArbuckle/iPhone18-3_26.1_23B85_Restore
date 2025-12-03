@interface HPSUISpatialProfileNavigationController
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation HPSUISpatialProfileNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = HPSUISpatialProfileNavigationController;
  [(HPSUISpatialProfileNavigationController *)&v12 viewDidAppear:disappear];
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Navigation Controller viewDidDisappear", v11, 2u);
  }

  v5 = [(HPSUISpatialProfileNavigationController *)self popToRootViewControllerAnimated:0];
  topViewController = [(HPSUISpatialProfileNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Top View Controller is HPSUISpatialProfileEnrollmentController", v11, 2u);
    }

    topViewController2 = [(HPSUISpatialProfileNavigationController *)self topViewController];
    [topViewController2 viewDidDisappear:1];
  }

  dismissalHandler = self->dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

@end
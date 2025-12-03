@interface OBPrivacyModalNavigationController
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_doneButtonPressed;
- (void)addDismissButtonWithPressedHandler:(id)handler;
@end

@implementation OBPrivacyModalNavigationController

- (void)addDismissButtonWithPressedHandler:(id)handler
{
  handlerCopy = handler;
  viewControllers = [(OBPrivacyModalNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject)
  {
    [(OBPrivacyModalNavigationController *)self setDismissButtonPressedHandler:handlerCopy];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__doneButtonPressed];
    viewControllers2 = [(OBPrivacyModalNavigationController *)self viewControllers];
    firstObject2 = [viewControllers2 firstObject];
    navigationItem = [firstObject2 navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }

  else
  {
    v11 = _OBLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B4FB6000, v11, OS_LOG_TYPE_DEFAULT, "addDismissButtonWithHandler: Need a view controller before we can add a button.", v12, 2u);
    }
  }
}

- (void)_doneButtonPressed
{
  dismissButtonPressedHandler = [(OBPrivacyModalNavigationController *)self dismissButtonPressedHandler];

  if (dismissButtonPressedHandler)
  {
    dismissButtonPressedHandler2 = [(OBPrivacyModalNavigationController *)self dismissButtonPressedHandler];
    dismissButtonPressedHandler2[2]();

    [(OBPrivacyModalNavigationController *)self setDismissButtonPressedHandler:0];
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  if (self->_darkMode)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = OBPrivacyModalNavigationController;
  return [(OBPrivacyModalNavigationController *)&v5 preferredUserInterfaceStyle];
}

- (unint64_t)supportedInterfaceOrientations
{
  v10.receiver = self;
  v10.super_class = OBPrivacyModalNavigationController;
  if ([(OBNavigationController *)&v10 supportedInterfaceOrientations])
  {
    return [(OBNavigationController *)&v9 supportedInterfaceOrientations:v8.receiver];
  }

  presentingViewController = [(OBPrivacyModalNavigationController *)self presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(OBPrivacyModalNavigationController *)self presentingViewController];
    supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  return [(OBNavigationController *)&v8 supportedInterfaceOrientations:self];
}

@end
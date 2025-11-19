@interface OBPrivacyModalNavigationController
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_doneButtonPressed;
- (void)addDismissButtonWithPressedHandler:(id)a3;
@end

@implementation OBPrivacyModalNavigationController

- (void)addDismissButtonWithPressedHandler:(id)a3
{
  v4 = a3;
  v5 = [(OBPrivacyModalNavigationController *)self viewControllers];
  v6 = [v5 firstObject];

  if (v6)
  {
    [(OBPrivacyModalNavigationController *)self setDismissButtonPressedHandler:v4];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__doneButtonPressed];
    v8 = [(OBPrivacyModalNavigationController *)self viewControllers];
    v9 = [v8 firstObject];
    v10 = [v9 navigationItem];
    [v10 setLeftBarButtonItem:v7];
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
  v3 = [(OBPrivacyModalNavigationController *)self dismissButtonPressedHandler];

  if (v3)
  {
    v4 = [(OBPrivacyModalNavigationController *)self dismissButtonPressedHandler];
    v4[2]();

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

  v5 = [(OBPrivacyModalNavigationController *)self presentingViewController];

  if (v5)
  {
    v6 = [(OBPrivacyModalNavigationController *)self presentingViewController];
    v4 = [v6 supportedInterfaceOrientations];

    return v4;
  }

  return [(OBNavigationController *)&v8 supportedInterfaceOrientations:self];
}

@end
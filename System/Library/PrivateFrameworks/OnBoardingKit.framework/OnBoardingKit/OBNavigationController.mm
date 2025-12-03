@interface OBNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLoad;
@end

@implementation OBNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OBNavigationController;
  [(OBNavigationController *)&v4 viewDidLoad];
  navigationBar = [(OBNavigationController *)self navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)setViewControllers:(id)controllers
{
  v17 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [controllersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(controllersCopy);
        }

        navigationItem = [*(*(&v12 + 1) + 8 * v8) navigationItem];
        [navigationItem ob_applyAutomaticScrollToEdgeBehavior];

        ++v8;
      }

      while (v6 != v8);
      v6 = [controllersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = OBNavigationController;
  [(OBNavigationController *)&v11 setViewControllers:controllersCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)supportedInterfaceOrientations
{
  result = self->_supportedInterfaceOrientations;
  if (!result)
  {
    presentingViewController = [(OBNavigationController *)self presentingViewController];

    if (presentingViewController)
    {
      presentingViewController2 = [(OBNavigationController *)self presentingViewController];
      supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];

      return supportedInterfaceOrientations;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = OBNavigationController;
      return [(OBNavigationController *)&v7 supportedInterfaceOrientations];
    }
  }

  return result;
}

@end
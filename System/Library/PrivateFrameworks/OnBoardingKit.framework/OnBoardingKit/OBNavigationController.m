@interface OBNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)setViewControllers:(id)a3;
- (void)viewDidLoad;
@end

@implementation OBNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OBNavigationController;
  [(OBNavigationController *)&v4 viewDidLoad];
  v3 = [(OBNavigationController *)self navigationBar];
  [v3 _setHidesShadow:1];
}

- (void)setViewControllers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) navigationItem];
        [v9 ob_applyAutomaticScrollToEdgeBehavior];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = OBNavigationController;
  [(OBNavigationController *)&v11 setViewControllers:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)supportedInterfaceOrientations
{
  result = self->_supportedInterfaceOrientations;
  if (!result)
  {
    v4 = [(OBNavigationController *)self presentingViewController];

    if (v4)
    {
      v5 = [(OBNavigationController *)self presentingViewController];
      v6 = [v5 supportedInterfaceOrientations];

      return v6;
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
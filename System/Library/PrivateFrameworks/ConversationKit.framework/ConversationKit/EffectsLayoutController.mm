@interface EffectsLayoutController
- (BOOL)shouldAlwaysPresentExpandedAppsFor:(id)for;
- (CGSize)expandedAppViewControllerSizeFor:(id)for;
- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
@end

@implementation EffectsLayoutController

- (BOOL)shouldAlwaysPresentExpandedAppsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = EffectsLayoutController.shouldAlwaysPresentExpandedApps(for:)();

  return v6;
}

- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v11 = 0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  EffectsLayoutController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)(controllerCopy, viewController, animated, v10, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
}

- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v11 = 0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)(selfCopy, viewController, animated, v10, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
}

- (CGSize)expandedAppViewControllerSizeFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = EffectsLayoutController.expandedAppViewControllerSize(for:)(forCopy);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end
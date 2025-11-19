@interface EffectsLayoutController
- (BOOL)shouldAlwaysPresentExpandedAppsFor:(id)a3;
- (CGSize)expandedAppViewControllerSizeFor:(id)a3;
- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation EffectsLayoutController

- (BOOL)shouldAlwaysPresentExpandedAppsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = EffectsLayoutController.shouldAlwaysPresentExpandedApps(for:)();

  return v6;
}

- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
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

  v12 = a3;
  v13 = a4;
  v14 = self;
  EffectsLayoutController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)(v12, a4, a5, v10, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
}

- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
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

  v12 = a3;
  v13 = a4;
  v14 = self;
  EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)(v14, a4, a5, v10, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
}

- (CGSize)expandedAppViewControllerSizeFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = EffectsLayoutController.expandedAppViewControllerSize(for:)(v4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end
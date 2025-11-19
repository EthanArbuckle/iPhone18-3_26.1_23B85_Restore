@interface UIViewController(AppCardPresentation)
+ (uint64_t)ck_canDismissAndPresentSimultaneously;
- (uint64_t)ck_dismissViewControllerAllowingSimultaneousPresentation;
- (void)ck_presentAppCardContainerViewControllerSimultaniously:()AppCardPresentation animated:presentCompletionHandler:;
@end

@implementation UIViewController(AppCardPresentation)

+ (uint64_t)ck_canDismissAndPresentSimultaneously
{
  if (ck_canDismissAndPresentSimultaneously_enabledCheckOnceToken != -1)
  {
    +[UIViewController(AppCardPresentation) ck_canDismissAndPresentSimultaneously];
  }

  if (ck_canDismissAndPresentSimultaneously_enabled != 1)
  {
    return 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UIViewController_AppCardPresentation__ck_canDismissAndPresentSimultaneously__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ck_canDismissAndPresentSimultaneously_onceToken != -1)
  {
    dispatch_once(&ck_canDismissAndPresentSimultaneously_onceToken, block);
  }

  return ck_canDismissAndPresentSimultaneously_result;
}

- (uint64_t)ck_dismissViewControllerAllowingSimultaneousPresentation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __97__UIViewController_AppCardPresentation__ck_dismissViewControllerAllowingSimultaneousPresentation__block_invoke;
  v2[3] = &unk_1E72EBA18;
  v2[4] = a1;
  return [MEMORY[0x1E69DD258] _performWithoutDeferringTransitionsAllowingAnimation:1 actions:v2];
}

- (void)ck_presentAppCardContainerViewControllerSimultaniously:()AppCardPresentation animated:presentCompletionHandler:
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69DD258];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __130__UIViewController_AppCardPresentation__ck_presentAppCardContainerViewControllerSimultaniously_animated_presentCompletionHandler___block_invoke;
  v13[3] = &unk_1E72F0150;
  v13[4] = a1;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 _performWithSimultaneousPresentationTransitionsEnabled:v13];
}

@end
@interface UIViewController
@end

@implementation UIViewController

void __78__UIViewController_AppCardPresentation__ck_canDismissAndPresentSimultaneously__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ck_canDismissAndPresentSimultaneously_enabled = [v0 BOOLForKey:@"ChatKitSimultaneousTransitionsEnabled"];
}

uint64_t __78__UIViewController_AppCardPresentation__ck_canDismissAndPresentSimultaneously__block_invoke_2()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    ck_canDismissAndPresentSimultaneously_result = 1;
  }

  return result;
}

void __130__UIViewController_AppCardPresentation__ck_presentAppCardContainerViewControllerSimultaniously_animated_presentCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __130__UIViewController_AppCardPresentation__ck_presentAppCardContainerViewControllerSimultaniously_animated_presentCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E72EBDB8;
  v5 = *(a1 + 48);
  [v1 presentViewController:v2 animated:v3 completion:v4];
}

@end
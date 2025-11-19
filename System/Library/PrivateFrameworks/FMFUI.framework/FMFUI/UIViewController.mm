@interface UIViewController
@end

@implementation UIViewController

void __61__UIViewController_FMFModal__fmf_dismissModalViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) view];
  [v11 setFrame:{v4, v6 + v10, v8, v10}];

  v12 = [*(a1 + 40) fmf_dimmingViewForViewController:*(a1 + 32)];
  [v12 setAlpha:0.0];
}

uint64_t __61__UIViewController_FMFModal__fmf_dismissModalViewController___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A4E3000, v2, OS_LOG_TYPE_DEFAULT, "FMFMapViewController: fmf_dismissModalViewController completed", v4, 2u);
  }

  return [*(a1 + 32) fmf_afterDismissAnimation:*(a1 + 40)];
}

@end
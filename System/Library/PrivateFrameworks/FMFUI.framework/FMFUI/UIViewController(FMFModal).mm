@interface UIViewController(FMFModal)
- (id)fmf_dimmingViewForViewController:()FMFModal;
- (void)fmf_afterDismissAnimation:()FMFModal;
- (void)fmf_afterPresentAnimation:()FMFModal;
- (void)fmf_dismissModalViewController:()FMFModal;
- (void)fmf_presentModalViewController:()FMFModal;
@end

@implementation UIViewController(FMFModal)

- (void)fmf_presentModalViewController:()FMFModal
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [a1 view];
  [v6 bounds];
  v7 = [v5 initWithFrame:?];

  v8 = [MEMORY[0x277D75348] blackColor];
  [v7 setBackgroundColor:v8];

  [v7 setAutoresizingMask:18];
  [v7 setAlpha:0.0];
  [v7 setTag:1111];
  v9 = [a1 view];
  [v9 addSubview:v7];

  v10 = [a1 view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v4 view];
  [v17 setFrame:{v12, v16, v14, v16}];

  v18 = [a1 view];
  v19 = [v4 view];
  [v18 addSubview:v19];

  [a1 addChildViewController:v4];
  v20 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__UIViewController_FMFModal__fmf_presentModalViewController___block_invoke;
  v22[3] = &unk_278FE2A10;
  v22[4] = a1;
  v23 = v4;
  v21 = v4;
  [v20 animateWithDuration:v22 animations:0.3];
}

- (void)fmf_dismissModalViewController:()FMFModal
{
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "FMFMapViewController: fmf_dismissModalViewController", buf, 2u);
  }

  [v4 willMoveToParentViewController:0];
  v6 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__UIViewController_FMFModal__fmf_dismissModalViewController___block_invoke;
  v10[3] = &unk_278FE2A10;
  v11 = v4;
  v12 = a1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__UIViewController_FMFModal__fmf_dismissModalViewController___block_invoke_2;
  v8[3] = &unk_278FE2A38;
  v8[4] = a1;
  v9 = v11;
  v7 = v11;
  [v6 animateWithDuration:v10 animations:v8 completion:0.3];
}

- (id)fmf_dimmingViewForViewController:()FMFModal
{
  v3 = [a3 parentViewController];
  v4 = [v3 view];
  v5 = [v4 viewWithTag:1111];

  return v5;
}

- (void)fmf_afterPresentAnimation:()FMFModal
{
  v4 = a3;
  v5 = [a1 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [a1 fmf_dimmingViewForViewController:v4];
  [v15 setAlpha:0.5];
  [v4 didMoveToParentViewController:a1];
}

- (void)fmf_afterDismissAnimation:()FMFModal
{
  v4 = a3;
  v6 = [a1 fmf_dimmingViewForViewController:v4];
  [v6 removeFromSuperview];
  [v4 removeFromParentViewController];
  v5 = [v4 view];

  [v5 removeFromSuperview];
}

@end
@interface SUUIContextActionsPresentationController
- (SUUIContextActionsPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation SUUIContextActionsPresentationController

- (SUUIContextActionsPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUUIContextActionsPresentationController;
  v4 = [(SUUIContextActionsPresentationController *)&v9 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(UIVisualEffectView *)v5 setAutoresizingMask:18];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
    [(UIVisualEffectView *)v5 setBackgroundColor:v6];

    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;
  }

  return v4;
}

- (void)presentationTransitionWillBegin
{
  v26.receiver = self;
  v26.super_class = SUUIContextActionsPresentationController;
  [(SUUIContextActionsPresentationController *)&v26 presentationTransitionWillBegin];
  v3 = [(SUUIContextActionsPresentationController *)self presentedViewController];
  v4 = [(SUUIContextActionsPresentationController *)self containerView];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 statusBar];

  LODWORD(v5) = [v3 isOrbPresentation];
  v7 = [(SUUIContextActionsPresentationController *)self backgroundView];
  [v4 addSubview:v7];

  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SUUIContextActionsPresentationController *)self backgroundView];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(SUUIContextActionsPresentationController *)self backgroundView];
  [v17 setAlpha:0.0];

  if (v5)
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v18 = [(SUUIContextActionsPresentationController *)self backgroundView];
    [v4 insertSubview:v6 belowSubview:v18];
  }

  v19 = [(SUUIContextActionsPresentationController *)self presentedViewController];
  v20 = [v19 transitionCoordinator];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__SUUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke;
  v25[3] = &unk_2798F5A88;
  v25[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SUUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke_2;
  v22[3] = &unk_2798FBAB0;
  v23 = v6;
  v24 = self;
  v21 = v6;
  [v20 animateAlongsideTransition:v25 completion:v22];
}

void __75__SUUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  v3 = [v2 backgroundColor];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) backgroundView];
    [v6 setAlpha:1.0];
  }
}

void __75__SUUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 statusBarWindow];
    [v4 addSubview:*(a1 + 32)];

    v5 = [*(a1 + 40) backgroundView];
    [v5 setAlpha:0.0];
  }
}

- (void)dismissalTransitionWillBegin
{
  v14.receiver = self;
  v14.super_class = SUUIContextActionsPresentationController;
  [(SUUIContextActionsPresentationController *)&v14 dismissalTransitionWillBegin];
  v3 = [(SUUIContextActionsPresentationController *)self presentedViewController];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 statusBar];

  v6 = [v3 isOrbPresentation];
  v7 = [(SUUIContextActionsPresentationController *)self presentedViewController];
  v8 = [v7 transitionCoordinator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SUUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke;
  v13[3] = &unk_2798F5A88;
  v13[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SUUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke_2;
  v10[3] = &unk_2798FD418;
  v12 = v6;
  v11 = v5;
  v9 = v5;
  [v8 animateAlongsideTransition:v13 completion:v10];
}

void __72__SUUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) dismissalAnimations];

  if (v3)
  {
    v4 = [*(a1 + 32) dismissalAnimations];
    v4[2]();
  }
}

void __72__SUUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0 && *(a1 + 40) == 1)
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [v4 statusBarWindow];
    [v3 addSubview:*(a1 + 32)];
  }
}

@end
@interface FARemoteServiceViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissAndExit;
- (void)_main_dismissAndExit;
- (void)_presentAsChildViewController:(id)a3;
- (void)_removeChildViewControllers;
- (void)_showFamilyFlow;
- (void)_showLoadingView;
- (void)dealloc;
- (void)dismissModalRUIController:(id)a3 completion:(id)a4;
- (void)presentModalRUIController:(id)a3 completion:(id)a4;
- (void)replaceModalRUIController:(id)a3 byController:(id)a4 completion:(id)a5;
- (void)ruiDidDismissAlertController:(id)a3;
- (void)ruiPresentAlertController:(id)a3;
- (void)startFlowWithContext:(id)a3;
- (void)viewDidLoad;
@end

@implementation FARemoteServiceViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FARemoteServiceViewController;
  [(FARemoteServiceViewController *)&v2 viewDidLoad];
}

- (void)presentModalRUIController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(FARemoteServiceViewController *)self _presentAsChildViewController:v7];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__block_literal_global_16;
  }

  v11 = _Block_copy(v8);

  v9 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  v10 = [v7 ruiModalPresentationStyle];

  [v9 presentWithRUIModalPresentationStyle:v10 completion:v11];
}

- (void)dismissModalRUIController:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &__block_literal_global_30;
  }

  v7 = _Block_copy(v5);
  v7[2]();
  v6 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  [v6 dismissWithCompletion:&__block_literal_global_32];
}

- (void)replaceModalRUIController:(id)a3 byController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  v12 = [v8 ruiModalPresentationStyle];
  v13 = [v9 ruiModalPresentationStyle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__FARemoteServiceViewController_replaceModalRUIController_byController_completion___block_invoke;
  v17[3] = &unk_2782F3420;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  [v11 replaceModalRUIControllerWithStyle:v12 byController:v13 completion:v17];
}

uint64_t __83__FARemoteServiceViewController_replaceModalRUIController_byController_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _presentAsChildViewController:*(a1 + 40)];
  v2 = [*(a1 + 48) view];
  [v2 removeFromSuperview];

  [*(a1 + 48) removeFromParentViewController];
  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)ruiPresentAlertController:(id)a3
{
  v4 = a3;
  v5 = [(FARemoteServiceViewController *)self childViewControllers];
  v6 = [v5 count];

  if (v6)
  {
    [(FARemoteServiceViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v7 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__FARemoteServiceViewController_ruiPresentAlertController___block_invoke;
    v8[3] = &unk_2782F2AF8;
    v8[4] = self;
    v9 = v4;
    [v7 presentAlertProxyWithCompletion:v8];
  }
}

- (void)ruiDidDismissAlertController:(id)a3
{
  v4 = [(FARemoteServiceViewController *)self childViewControllers];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
    [v6 dismissAlertProxyWithCompletion:&__block_literal_global_34];
  }
}

- (void)startFlowWithContext:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_circleContext, a3);
  if ([(FACircleContext *)self->_circleContext activityIndicatorStyle]== 1)
  {
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    v6 = [(FARemoteServiceViewController *)self view];
    [v6 setBackgroundColor:v5];

    [(FARemoteServiceViewController *)self _showLoadingView];
  }

  [(FARemoteServiceViewController *)self _showFamilyFlow];
}

- (void)_showLoadingView
{
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __49__FARemoteServiceViewController__showLoadingView__block_invoke;
  v10 = &unk_2782F3F48;
  objc_copyWeak(&v11, &location);
  v3 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getLoadingControllerWithCancelAction:&v7];
  v4 = objc_alloc(MEMORY[0x277D757A0]);
  v5 = [v4 initWithRootViewController:{v3, v7, v8, v9, v10}];
  v6 = [v5 navigationBar];
  [v6 setRequestedContentSize:3];

  [(FARemoteServiceViewController *)self _presentAsChildViewController:v5];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__FARemoteServiceViewController__showLoadingView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewControllerProxy];
  [v1 dismissWithCompletion:&__block_literal_global_37];
}

- (void)_showFamilyFlow
{
  v3 = [[FACircleStateController alloc] initWithPresenter:self];
  [(FACircleStateController *)v3 setPresentationType:1];
  circleContext = self->_circleContext;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__FARemoteServiceViewController__showFamilyFlow__block_invoke;
  v6[3] = &unk_2782F35E0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(FACircleStateController *)v5 _performOperationWithContext:circleContext viewController:self completion:v6];
}

uint64_t __48__FARemoteServiceViewController__showFamilyFlow__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _remoteViewControllerProxy];
  [v5 operationFinishedWithResponse:v4];

  v6 = *(a1 + 32);

  return [v6 _dismissAndExit];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FARemoteServiceViewController;
  [(FARemoteServiceViewController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_removeChildViewControllers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(FARemoteServiceViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 view];
        [v9 removeFromSuperview];

        [(FARemoteServiceViewController *)self removeChildViewController:v8 notifyDidMove:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_presentAsChildViewController:(id)a3
{
  v27 = a3;
  [(FARemoteServiceViewController *)self _removeChildViewControllers];
  [(FARemoteServiceViewController *)self addChildViewController:v27];
  v4 = [(FARemoteServiceViewController *)self view];
  v5 = [v27 view];
  [v4 addSubview:v5];

  v6 = [v27 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [v27 view];
  v8 = [v7 topAnchor];
  v9 = [(FARemoteServiceViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v27 view];
  v13 = [v12 bottomAnchor];
  v14 = [(FARemoteServiceViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [v27 view];
  v18 = [v17 leftAnchor];
  v19 = [(FARemoteServiceViewController *)self view];
  v20 = [v19 leftAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [v27 view];
  v23 = [v22 rightAnchor];
  v24 = [(FARemoteServiceViewController *)self view];
  v25 = [v24 rightAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  [v27 didMoveToParentViewController:self];
}

- (void)_dismissAndExit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__FARemoteServiceViewController__dismissAndExit__block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_main_dismissAndExit
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  [v3 dismissWithCompletion:&__block_literal_global_62];
}

@end
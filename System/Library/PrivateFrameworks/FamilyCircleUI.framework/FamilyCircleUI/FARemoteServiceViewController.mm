@interface FARemoteServiceViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissAndExit;
- (void)_main_dismissAndExit;
- (void)_presentAsChildViewController:(id)controller;
- (void)_removeChildViewControllers;
- (void)_showFamilyFlow;
- (void)_showLoadingView;
- (void)dealloc;
- (void)dismissModalRUIController:(id)controller completion:(id)completion;
- (void)presentModalRUIController:(id)controller completion:(id)completion;
- (void)replaceModalRUIController:(id)controller byController:(id)byController completion:(id)completion;
- (void)ruiDidDismissAlertController:(id)controller;
- (void)ruiPresentAlertController:(id)controller;
- (void)startFlowWithContext:(id)context;
- (void)viewDidLoad;
@end

@implementation FARemoteServiceViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FARemoteServiceViewController;
  [(FARemoteServiceViewController *)&v2 viewDidLoad];
}

- (void)presentModalRUIController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [(FARemoteServiceViewController *)self _presentAsChildViewController:controllerCopy];
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global_16;
  }

  v11 = _Block_copy(v8);

  _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  ruiModalPresentationStyle = [controllerCopy ruiModalPresentationStyle];

  [_remoteViewControllerProxy presentWithRUIModalPresentationStyle:ruiModalPresentationStyle completion:v11];
}

- (void)dismissModalRUIController:(id)controller completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_30;
  }

  v7 = _Block_copy(completionCopy);
  v7[2]();
  _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissWithCompletion:&__block_literal_global_32];
}

- (void)replaceModalRUIController:(id)controller byController:(id)byController completion:(id)completion
{
  controllerCopy = controller;
  byControllerCopy = byController;
  completionCopy = completion;
  _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  ruiModalPresentationStyle = [controllerCopy ruiModalPresentationStyle];
  ruiModalPresentationStyle2 = [byControllerCopy ruiModalPresentationStyle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__FARemoteServiceViewController_replaceModalRUIController_byController_completion___block_invoke;
  v17[3] = &unk_2782F3420;
  v17[4] = self;
  v18 = byControllerCopy;
  v19 = controllerCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = controllerCopy;
  v16 = byControllerCopy;
  [_remoteViewControllerProxy replaceModalRUIControllerWithStyle:ruiModalPresentationStyle byController:ruiModalPresentationStyle2 completion:v17];
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

- (void)ruiPresentAlertController:(id)controller
{
  controllerCopy = controller;
  childViewControllers = [(FARemoteServiceViewController *)self childViewControllers];
  v6 = [childViewControllers count];

  if (v6)
  {
    [(FARemoteServiceViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__FARemoteServiceViewController_ruiPresentAlertController___block_invoke;
    v8[3] = &unk_2782F2AF8;
    v8[4] = self;
    v9 = controllerCopy;
    [_remoteViewControllerProxy presentAlertProxyWithCompletion:v8];
  }
}

- (void)ruiDidDismissAlertController:(id)controller
{
  childViewControllers = [(FARemoteServiceViewController *)self childViewControllers];
  v5 = [childViewControllers count];

  if (!v5)
  {
    _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy dismissAlertProxyWithCompletion:&__block_literal_global_34];
  }
}

- (void)startFlowWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_circleContext, context);
  if ([(FACircleContext *)self->_circleContext activityIndicatorStyle]== 1)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    view = [(FARemoteServiceViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];

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
  navigationBar = [v5 navigationBar];
  [navigationBar setRequestedContentSize:3];

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
    selfCopy = self;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FARemoteServiceViewController;
  [(FARemoteServiceViewController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  childViewControllers = [(FARemoteServiceViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        view = [v8 view];
        [view removeFromSuperview];

        [(FARemoteServiceViewController *)self removeChildViewController:v8 notifyDidMove:1];
      }

      v5 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_presentAsChildViewController:(id)controller
{
  controllerCopy = controller;
  [(FARemoteServiceViewController *)self _removeChildViewControllers];
  [(FARemoteServiceViewController *)self addChildViewController:controllerCopy];
  view = [(FARemoteServiceViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  view3 = [controllerCopy view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [controllerCopy view];
  topAnchor = [view4 topAnchor];
  view5 = [(FARemoteServiceViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  view6 = [controllerCopy view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(FARemoteServiceViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  view8 = [controllerCopy view];
  leftAnchor = [view8 leftAnchor];
  view9 = [(FARemoteServiceViewController *)self view];
  leftAnchor2 = [view9 leftAnchor];
  v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v21 setActive:1];

  view10 = [controllerCopy view];
  rightAnchor = [view10 rightAnchor];
  view11 = [(FARemoteServiceViewController *)self view];
  rightAnchor2 = [view11 rightAnchor];
  v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v26 setActive:1];

  [controllerCopy didMoveToParentViewController:self];
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
  _remoteViewControllerProxy = [(FARemoteServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissWithCompletion:&__block_literal_global_62];
}

@end
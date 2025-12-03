@interface DKPresenter
+ (void)presentInSettings;
+ (void)presentUsingParentViewController:(id)controller;
+ (void)presentUsingParentViewController:(id)controller completion:(id)completion;
+ (void)presentUsingParentViewController:(id)controller configuration:(id)configuration willPresent:(id)present completion:(id)completion;
@end

@implementation DKPresenter

+ (void)presentUsingParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[DKConfiguration defaultConfiguration];
  [self presentUsingParentViewController:controllerCopy configuration:v5 completion:0];
}

+ (void)presentUsingParentViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v8 = +[DKConfiguration defaultConfiguration];
  [self presentUsingParentViewController:controllerCopy configuration:v8 completion:completionCopy];
}

+ (void)presentUsingParentViewController:(id)controller configuration:(id)configuration willPresent:(id)present completion:(id)completion
{
  controllerCopy = controller;
  presentCopy = present;
  completionCopy = completion;
  configurationCopy = configuration;
  v13 = objc_alloc_init(DKNavigationController);
  v14 = objc_opt_new();
  [(DKNavigationController *)v13 pushViewController:v14 animated:0];
  v15 = [[DKEraseFlow alloc] initWithNavigationController:v13 configuration:configurationCopy];

  if (presentCopy)
  {
    presentCopy[2](presentCopy, v15);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__DKPresenter_presentUsingParentViewController_configuration_willPresent_completion___block_invoke;
  v20[3] = &unk_278F7DE68;
  v21 = v15;
  v22 = v13;
  v23 = v14;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = v13;
  v19 = v15;
  [(DKEraseFlow *)v19 showFlowContainerFromParentViewController:controllerCopy completion:v20];
}

void __85__DKPresenter_presentUsingParentViewController_configuration_willPresent_completion___block_invoke(id *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__DKPresenter_presentUsingParentViewController_configuration_willPresent_completion___block_invoke_2;
  v8[3] = &unk_278F7DE68;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  [v2 prepareFlow:v8];
}

void __85__DKPresenter_presentUsingParentViewController_configuration_willPresent_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startFlow];
  v3 = [*(a1 + 40) viewControllers];
  v5 = [v3 mutableCopy];

  [v5 removeObject:*(a1 + 48)];
  [*(a1 + 40) setViewControllers:v5 animated:0];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

+ (void)presentInSettings
{
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Launching settings...", v5, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Reset/exitBuddy"];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

@end
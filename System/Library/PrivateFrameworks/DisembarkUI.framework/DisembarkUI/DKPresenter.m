@interface DKPresenter
+ (void)presentInSettings;
+ (void)presentUsingParentViewController:(id)a3;
+ (void)presentUsingParentViewController:(id)a3 completion:(id)a4;
+ (void)presentUsingParentViewController:(id)a3 configuration:(id)a4 willPresent:(id)a5 completion:(id)a6;
@end

@implementation DKPresenter

+ (void)presentUsingParentViewController:(id)a3
{
  v4 = a3;
  v5 = +[DKConfiguration defaultConfiguration];
  [a1 presentUsingParentViewController:v4 configuration:v5 completion:0];
}

+ (void)presentUsingParentViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[DKConfiguration defaultConfiguration];
  [a1 presentUsingParentViewController:v7 configuration:v8 completion:v6];
}

+ (void)presentUsingParentViewController:(id)a3 configuration:(id)a4 willPresent:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(DKNavigationController);
  v14 = objc_opt_new();
  [(DKNavigationController *)v13 pushViewController:v14 animated:0];
  v15 = [[DKEraseFlow alloc] initWithNavigationController:v13 configuration:v12];

  if (v10)
  {
    v10[2](v10, v15);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__DKPresenter_presentUsingParentViewController_configuration_willPresent_completion___block_invoke;
  v20[3] = &unk_278F7DE68;
  v21 = v15;
  v22 = v13;
  v23 = v14;
  v24 = v11;
  v16 = v11;
  v17 = v14;
  v18 = v13;
  v19 = v15;
  [(DKEraseFlow *)v19 showFlowContainerFromParentViewController:v9 completion:v20];
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

  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Reset/exitBuddy"];
  [v3 openSensitiveURL:v4 withOptions:0];
}

@end
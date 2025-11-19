@interface CDPUIDeviceToDeviceEncryptionUIProviderImp
- (id)_upgradeAlertControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (id)_upgradeCardUINavigationControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (id)_upgradeCardUIViewControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (id)_upgradeViewControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)promptForCancelWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (void)promptForUpgradeWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
- (void)promptIneligibilityWithContext:(id)a3 vm:(id)a4 completion:(id)a5;
@end

@implementation CDPUIDeviceToDeviceEncryptionUIProviderImp

- (void)promptForUpgradeWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForUpgradeWithContext_vm_completion___block_invoke;
  v14[3] = &unk_278E2B028;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __88__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForUpgradeWithContext_vm_completion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _upgradeViewControllerWithContext:*(a1 + 40) vm:*(a1 + 48) completion:*(a1 + 56)];
  if ([*(a1 + 40) forceInlinePresentation] && (objc_msgSend(*(a1 + 40), "presentingViewController"), v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    v4 = [*(a1 + 40) presentingViewController];
    [v4 pushViewController:v5 animated:1];
  }

  else
  {
    v4 = [*(a1 + 40) presentingViewController];
    [v4 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)promptForCancelWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277D750F8];
  v9 = a4;
  v10 = a3;
  v11 = [v9 continueTitle];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke;
  v29[3] = &unk_278E2B370;
  v12 = v7;
  v30 = v12;
  v13 = [v8 actionWithTitle:v11 style:0 handler:v29];

  v14 = MEMORY[0x277D750F8];
  v15 = [v9 cancelTitle];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke_2;
  v27 = &unk_278E2B370;
  v28 = v12;
  v16 = v12;
  v17 = [v14 actionWithTitle:v15 style:1 handler:&v24];

  v18 = MEMORY[0x277D75110];
  v19 = [v9 title];
  v20 = [v9 message];

  v21 = [v18 alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  [v21 addAction:v13];
  [v21 addAction:v17];
  v22 = [v10 presentingViewController];

  v23 = [v22 presentedViewController];
  [v23 presentViewController:v21 animated:1 completion:0];
}

void __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)promptIneligibilityWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277D750F8];
  v9 = a4;
  v10 = a3;
  v11 = [v9 continueTitle];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptIneligibilityWithContext_vm_completion___block_invoke;
  v20[3] = &unk_278E2B370;
  v21 = v7;
  v12 = v7;
  v13 = [v8 actionWithTitle:v11 style:0 handler:v20];

  v14 = MEMORY[0x277D75110];
  v15 = [v9 title];
  v16 = [v9 message];

  v17 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  [v17 addAction:v13];
  v18 = [v10 presentingViewController];

  v19 = [v18 presentedViewController];
  [v19 presentViewController:v17 animated:1 completion:0];
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)v3 dealloc];
  }

  v4.receiver = self;
  v4.super_class = CDPUIDeviceToDeviceEncryptionUIProviderImp;
  [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)&v4 dealloc];
}

- (id)_upgradeViewControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 deviceToDeviceEncryptionUpgradeUIStyle])
  {
    if ([v8 deviceToDeviceEncryptionUpgradeUIStyle] != 1)
    {
      v14 = 0;
      goto LABEL_10;
    }

    if ([v8 forceInlinePresentation] && (objc_msgSend(v8, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
    {
      v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUIViewControllerWithContext:v8 vm:v9 completion:v10];
    }

    else
    {
      v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUINavigationControllerWithContext:v8 vm:v9 completion:v10];
    }
  }

  else
  {
    v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeAlertControllerWithContext:v8 vm:v9 completion:v10];
  }

  v14 = v13;
LABEL_10:

  return v14;
}

- (id)_upgradeAlertControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277D750F8];
  v8 = a4;
  v9 = [v8 continueTitle];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeAlertControllerWithContext_vm_completion___block_invoke;
  v26[3] = &unk_278E2B370;
  v10 = v6;
  v27 = v10;
  v11 = [v7 actionWithTitle:v9 style:0 handler:v26];

  v12 = MEMORY[0x277D750F8];
  v13 = [v8 cancelTitle];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __95__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeAlertControllerWithContext_vm_completion___block_invoke_2;
  v24 = &unk_278E2B370;
  v25 = v10;
  v14 = v10;
  v15 = [v12 actionWithTitle:v13 style:1 handler:&v21];

  v16 = MEMORY[0x277D75110];
  v17 = [v8 title];
  v18 = [v8 message];

  v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  [v19 addAction:v11];
  [v19 addAction:v15];

  return v19;
}

void __95__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeAlertControllerWithContext_vm_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_upgradeCardUIViewControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CCA8D8];
  v9 = a4;
  v10 = [v8 bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x277D755B8] imageNamed:@"lock_icon_bg_buddy" inBundle:v10];
  v12 = objc_alloc(MEMORY[0x277D37698]);
  v13 = [v9 title];
  v14 = [v9 message];
  v15 = [v12 initWithTitle:v13 detailText:v14 icon:v11];

  v16 = [MEMORY[0x277D37618] boldButton];
  v17 = [v9 continueTitle];
  [v16 setTitle:v17 forState:0];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke;
  v31[3] = &unk_278E2B118;
  v18 = v7;
  v32 = v18;
  [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self setContinueActionHandler:v31];
  [v16 addTarget:self action:sel_continueTapped_ forControlEvents:64];
  v19 = [v15 buttonTray];
  [v19 addButton:v16];

  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke_2;
  v29 = &unk_278E2B118;
  v30 = v18;
  v20 = v18;
  [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self setCancelActionHandler:&v26];
  v21 = objc_alloc(MEMORY[0x277D751E0]);
  v22 = [v9 cancelTitle];

  v23 = [v21 initWithTitle:v22 style:0 target:self action:sel_cancelTapped_];
  v24 = [v15 navigationItem];
  [v24 setLeftBarButtonItem:v23];

  return v15;
}

void __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_upgradeCardUINavigationControllerWithContext:(id)a3 vm:(id)a4 completion:(id)a5
{
  v5 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUIViewControllerWithContext:a3 vm:a4 completion:a5];
  v6 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];

  return v6;
}

@end
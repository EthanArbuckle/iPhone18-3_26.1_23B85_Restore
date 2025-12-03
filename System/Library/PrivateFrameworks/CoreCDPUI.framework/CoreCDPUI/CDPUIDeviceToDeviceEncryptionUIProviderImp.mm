@interface CDPUIDeviceToDeviceEncryptionUIProviderImp
- (id)_upgradeAlertControllerWithContext:(id)context vm:(id)vm completion:(id)completion;
- (id)_upgradeCardUINavigationControllerWithContext:(id)context vm:(id)vm completion:(id)completion;
- (id)_upgradeCardUIViewControllerWithContext:(id)context vm:(id)vm completion:(id)completion;
- (id)_upgradeViewControllerWithContext:(id)context vm:(id)vm completion:(id)completion;
- (void)dealloc;
- (void)promptForCancelWithContext:(id)context vm:(id)vm completion:(id)completion;
- (void)promptForUpgradeWithContext:(id)context vm:(id)vm completion:(id)completion;
- (void)promptIneligibilityWithContext:(id)context vm:(id)vm completion:(id)completion;
@end

@implementation CDPUIDeviceToDeviceEncryptionUIProviderImp

- (void)promptForUpgradeWithContext:(id)context vm:(id)vm completion:(id)completion
{
  contextCopy = context;
  vmCopy = vm;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForUpgradeWithContext_vm_completion___block_invoke;
  v14[3] = &unk_278E2B028;
  v14[4] = self;
  v15 = contextCopy;
  v16 = vmCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = vmCopy;
  v13 = contextCopy;
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

- (void)promptForCancelWithContext:(id)context vm:(id)vm completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277D750F8];
  vmCopy = vm;
  contextCopy = context;
  continueTitle = [vmCopy continueTitle];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke;
  v29[3] = &unk_278E2B370;
  v12 = completionCopy;
  v30 = v12;
  v13 = [v8 actionWithTitle:continueTitle style:0 handler:v29];

  v14 = MEMORY[0x277D750F8];
  cancelTitle = [vmCopy cancelTitle];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke_2;
  v27 = &unk_278E2B370;
  v28 = v12;
  v16 = v12;
  v17 = [v14 actionWithTitle:cancelTitle style:1 handler:&v24];

  v18 = MEMORY[0x277D75110];
  title = [vmCopy title];
  message = [vmCopy message];

  v21 = [v18 alertControllerWithTitle:title message:message preferredStyle:1];

  [v21 addAction:v13];
  [v21 addAction:v17];
  presentingViewController = [contextCopy presentingViewController];

  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController presentViewController:v21 animated:1 completion:0];
}

void __87__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptForCancelWithContext_vm_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)promptIneligibilityWithContext:(id)context vm:(id)vm completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277D750F8];
  vmCopy = vm;
  contextCopy = context;
  continueTitle = [vmCopy continueTitle];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__CDPUIDeviceToDeviceEncryptionUIProviderImp_promptIneligibilityWithContext_vm_completion___block_invoke;
  v20[3] = &unk_278E2B370;
  v21 = completionCopy;
  v12 = completionCopy;
  v13 = [v8 actionWithTitle:continueTitle style:0 handler:v20];

  v14 = MEMORY[0x277D75110];
  title = [vmCopy title];
  message = [vmCopy message];

  v17 = [v14 alertControllerWithTitle:title message:message preferredStyle:1];

  [v17 addAction:v13];
  presentingViewController = [contextCopy presentingViewController];

  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController presentViewController:v17 animated:1 completion:0];
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

- (id)_upgradeViewControllerWithContext:(id)context vm:(id)vm completion:(id)completion
{
  contextCopy = context;
  vmCopy = vm;
  completionCopy = completion;
  if ([contextCopy deviceToDeviceEncryptionUpgradeUIStyle])
  {
    if ([contextCopy deviceToDeviceEncryptionUpgradeUIStyle] != 1)
    {
      v14 = 0;
      goto LABEL_10;
    }

    if ([contextCopy forceInlinePresentation] && (objc_msgSend(contextCopy, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
    {
      v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUIViewControllerWithContext:contextCopy vm:vmCopy completion:completionCopy];
    }

    else
    {
      v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUINavigationControllerWithContext:contextCopy vm:vmCopy completion:completionCopy];
    }
  }

  else
  {
    v13 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeAlertControllerWithContext:contextCopy vm:vmCopy completion:completionCopy];
  }

  v14 = v13;
LABEL_10:

  return v14;
}

- (id)_upgradeAlertControllerWithContext:(id)context vm:(id)vm completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D750F8];
  vmCopy = vm;
  continueTitle = [vmCopy continueTitle];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeAlertControllerWithContext_vm_completion___block_invoke;
  v26[3] = &unk_278E2B370;
  v10 = completionCopy;
  v27 = v10;
  v11 = [v7 actionWithTitle:continueTitle style:0 handler:v26];

  v12 = MEMORY[0x277D750F8];
  cancelTitle = [vmCopy cancelTitle];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __95__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeAlertControllerWithContext_vm_completion___block_invoke_2;
  v24 = &unk_278E2B370;
  v25 = v10;
  v14 = v10;
  v15 = [v12 actionWithTitle:cancelTitle style:1 handler:&v21];

  v16 = MEMORY[0x277D75110];
  title = [vmCopy title];
  message = [vmCopy message];

  v19 = [v16 alertControllerWithTitle:title message:message preferredStyle:1];

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

- (id)_upgradeCardUIViewControllerWithContext:(id)context vm:(id)vm completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277CCA8D8];
  vmCopy = vm;
  v10 = [v8 bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x277D755B8] imageNamed:@"lock_icon_bg_buddy" inBundle:v10];
  v12 = objc_alloc(MEMORY[0x277D37698]);
  title = [vmCopy title];
  message = [vmCopy message];
  v15 = [v12 initWithTitle:title detailText:message icon:v11];

  boldButton = [MEMORY[0x277D37618] boldButton];
  continueTitle = [vmCopy continueTitle];
  [boldButton setTitle:continueTitle forState:0];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke;
  v31[3] = &unk_278E2B118;
  v18 = completionCopy;
  v32 = v18;
  [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self setContinueActionHandler:v31];
  [boldButton addTarget:self action:sel_continueTapped_ forControlEvents:64];
  buttonTray = [v15 buttonTray];
  [buttonTray addButton:boldButton];

  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke_2;
  v29 = &unk_278E2B118;
  v30 = v18;
  v20 = v18;
  [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self setCancelActionHandler:&v26];
  v21 = objc_alloc(MEMORY[0x277D751E0]);
  cancelTitle = [vmCopy cancelTitle];

  v23 = [v21 initWithTitle:cancelTitle style:0 target:self action:sel_cancelTapped_];
  navigationItem = [v15 navigationItem];
  [navigationItem setLeftBarButtonItem:v23];

  return v15;
}

void __100__CDPUIDeviceToDeviceEncryptionUIProviderImp__upgradeCardUIViewControllerWithContext_vm_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_upgradeCardUINavigationControllerWithContext:(id)context vm:(id)vm completion:(id)completion
{
  v5 = [(CDPUIDeviceToDeviceEncryptionUIProviderImp *)self _upgradeCardUIViewControllerWithContext:context vm:vm completion:completion];
  v6 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];

  return v6;
}

@end
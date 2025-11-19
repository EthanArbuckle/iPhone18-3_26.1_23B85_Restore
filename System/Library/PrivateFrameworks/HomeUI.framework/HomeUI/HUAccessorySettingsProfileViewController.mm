@interface HUAccessorySettingsProfileViewController
- (HUAccessorySettingsProfileViewController)initWithAccessoryGroupItem:(id)a3;
- (id)itemModuleControllers;
- (id)settingsProfileModule:(id)a3 wantsProfileItemDeleted:(id)a4;
- (void)accessorySettingsProfileModuleController:(id)a3 needsNavigationToController:(id)a4;
@end

@implementation HUAccessorySettingsProfileViewController

- (HUAccessorySettingsProfileViewController)initWithAccessoryGroupItem:(id)a3
{
  v5 = [a3 copy];
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [[HUAccessorySettingsProfileItemManager alloc] initWithDelegate:self accessoryGroupItem:v5];
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsProfileViewController;
  v7 = [(HUItemTableViewController *)&v17 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_item, v5);
    v9 = [(HUAccessorySettingsProfileItemManager *)v6 profileModule];
    [(HUAccessorySettingsProfileViewController *)v8 setProfileModule:v9];

    v10 = [(HUAccessorySettingsProfileViewController *)v8 profileModule];
    [v10 setDelegate:v8];

    v11 = [HUAccessorySettingsProfileModuleController alloc];
    v12 = [(HUAccessorySettingsProfileViewController *)v8 profileModule];
    v13 = [(HUAccessorySettingsProfileModuleController *)v11 initWithModule:v12];
    [(HUAccessorySettingsProfileViewController *)v8 setProfileModuleController:v13];

    v14 = [(HUAccessorySettingsProfileViewController *)v8 profileModuleController];
    [v14 setDelegate:v8];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUAccessorySettingsProfileViewController *)self profileModuleController];
  [v3 na_safeAddObject:v4];

  return v3;
}

- (void)accessorySettingsProfileModuleController:(id)a3 needsNavigationToController:(id)a4
{
  v5 = a4;
  v6 = [(HUAccessorySettingsProfileViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (id)settingsProfileModule:(id)a3 wantsProfileItemDeleted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v28 = v7;
  v9 = [v7 profile];
  v10 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerRemoveProfile", @"HUAccessorySettingsProfileViewControllerRemoveProfile", 1);
  v27 = v9;
  if ([v9 needsReboot])
  {
    v11 = @"HUAccessorySettingsProfileViewControllerRemoveNeedsReboot";
  }

  else
  {
    v11 = @"HUAccessorySettingsProfileViewControllerRemove";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v13 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerDeleteActionTitle", @"HUAccessorySettingsProfileViewControllerDeleteActionTitle", 1);
  v14 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerCancelActionTitle", @"HUAccessorySettingsProfileViewControllerCancelActionTitle", 1);
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v12 preferredStyle:1];
  objc_initWeak(location, self);
  v16 = [v6 adapter];
  v17 = [v16 numberOfProfiles] == 1;

  v18 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__HUAccessorySettingsProfileViewController_settingsProfileModule_wantsProfileItemDeleted___block_invoke;
  v31[3] = &unk_277DBBF68;
  objc_copyWeak(&v33, location);
  v34 = v17;
  v19 = v8;
  v32 = v19;
  v20 = [v18 actionWithTitle:v13 style:2 handler:v31];
  [v15 addAction:v20];

  v21 = MEMORY[0x277D750F8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__HUAccessorySettingsProfileViewController_settingsProfileModule_wantsProfileItemDeleted___block_invoke_2;
  v29[3] = &unk_277DB7600;
  v22 = v19;
  v30 = v22;
  v23 = [v21 actionWithTitle:v14 style:1 handler:v29];
  [v15 addAction:v23];

  [(HUAccessorySettingsProfileViewController *)self presentViewController:v15 animated:1 completion:0];
  v24 = v30;
  v25 = v22;

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);

  return v25;
}

void __90__HUAccessorySettingsProfileViewController_settingsProfileModule_wantsProfileItemDeleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v2 = [WeakRetained navigationController];
    v3 = [v2 popViewControllerAnimated:1];
  }

  [*(a1 + 32) finishWithNoResult];
}

void __90__HUAccessorySettingsProfileViewController_settingsProfileModule_wantsProfileItemDeleted___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

@end
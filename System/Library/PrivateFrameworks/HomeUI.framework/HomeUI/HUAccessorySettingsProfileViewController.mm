@interface HUAccessorySettingsProfileViewController
- (HUAccessorySettingsProfileViewController)initWithAccessoryGroupItem:(id)item;
- (id)itemModuleControllers;
- (id)settingsProfileModule:(id)module wantsProfileItemDeleted:(id)deleted;
- (void)accessorySettingsProfileModuleController:(id)controller needsNavigationToController:(id)toController;
@end

@implementation HUAccessorySettingsProfileViewController

- (HUAccessorySettingsProfileViewController)initWithAccessoryGroupItem:(id)item
{
  v5 = [item copy];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [[HUAccessorySettingsProfileItemManager alloc] initWithDelegate:self accessoryGroupItem:v5];
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsProfileViewController;
  v7 = [(HUItemTableViewController *)&v17 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_item, v5);
    profileModule = [(HUAccessorySettingsProfileItemManager *)v6 profileModule];
    [(HUAccessorySettingsProfileViewController *)v8 setProfileModule:profileModule];

    profileModule2 = [(HUAccessorySettingsProfileViewController *)v8 profileModule];
    [profileModule2 setDelegate:v8];

    v11 = [HUAccessorySettingsProfileModuleController alloc];
    profileModule3 = [(HUAccessorySettingsProfileViewController *)v8 profileModule];
    v13 = [(HUAccessorySettingsProfileModuleController *)v11 initWithModule:profileModule3];
    [(HUAccessorySettingsProfileViewController *)v8 setProfileModuleController:v13];

    profileModuleController = [(HUAccessorySettingsProfileViewController *)v8 profileModuleController];
    [profileModuleController setDelegate:v8];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  profileModuleController = [(HUAccessorySettingsProfileViewController *)self profileModuleController];
  [v3 na_safeAddObject:profileModuleController];

  return v3;
}

- (void)accessorySettingsProfileModuleController:(id)controller needsNavigationToController:(id)toController
{
  toControllerCopy = toController;
  navigationController = [(HUAccessorySettingsProfileViewController *)self navigationController];
  [navigationController pushViewController:toControllerCopy animated:1];
}

- (id)settingsProfileModule:(id)module wantsProfileItemDeleted:(id)deleted
{
  moduleCopy = module;
  deletedCopy = deleted;
  v8 = objc_opt_new();
  v28 = deletedCopy;
  profile = [deletedCopy profile];
  v10 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerRemoveProfile", @"HUAccessorySettingsProfileViewControllerRemoveProfile", 1);
  v27 = profile;
  if ([profile needsReboot])
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
  adapter = [moduleCopy adapter];
  v17 = [adapter numberOfProfiles] == 1;

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
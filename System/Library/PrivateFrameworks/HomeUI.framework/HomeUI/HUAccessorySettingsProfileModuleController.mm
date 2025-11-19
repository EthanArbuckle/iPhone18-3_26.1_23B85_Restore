@interface HUAccessorySettingsProfileModuleController
- (BOOL)profileViewControllerIsProfileInstalled;
- (Class)cellClassForItem:(id)a3;
- (HUAccessorySettingsProfileModuleController)initWithModule:(id)a3;
- (HUAccessorySettingsProfileModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)profileViewControllerDidSelectRemoveProfile:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUAccessorySettingsProfileModuleController

- (HUAccessorySettingsProfileModuleController)initWithModule:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUAccessorySettingsProfileModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:a3];
}

- (Class)cellClassForItem:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getMCProfileSummaryCellClass_softClass;
  v12 = getMCProfileSummaryCellClass_softClass;
  if (!getMCProfileSummaryCellClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMCProfileSummaryCellClass_block_invoke;
    v8[3] = &unk_277DB7768;
    v8[4] = &v9;
    __getMCProfileSummaryCellClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = objc_opt_class();

  return v6;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v5 = [a4 profile];
  [v6 setProfile:v5];

  [v6 setAccessoryType:1];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [v4 profile];
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v6 = getMCProfileViewControllerClass_softClass;
    v15 = getMCProfileViewControllerClass_softClass;
    if (!getMCProfileViewControllerClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getMCProfileViewControllerClass_block_invoke;
      v11[3] = &unk_277DB7768;
      v11[4] = &v12;
      __getMCProfileViewControllerClass_block_invoke(v11);
      v6 = v13[3];
    }

    v7 = v6;
    _Block_object_dispose(&v12, 8);
    v8 = [[v6 alloc] initWithStyle:1 profile:v5 profileViewMode:2];
    [v8 setProfileViewControllerDelegate:self];
    v9 = [(HUAccessorySettingsProfileModuleController *)self delegate];
    [v9 accessorySettingsProfileModuleController:self needsNavigationToController:v8];
  }

  return 1;
}

- (BOOL)profileViewControllerIsProfileInstalled
{
  v2 = [(HUItemModuleController *)self module];
  v3 = [v2 itemProviders];
  v4 = [v3 anyObject];

  v5 = [v4 items];
  LOBYTE(v3) = [v5 na_any:&__block_literal_global_152];

  return v3;
}

BOOL __85__HUAccessorySettingsProfileModuleController_profileViewControllerIsProfileInstalled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5 != 0;
}

- (void)profileViewControllerDidSelectRemoveProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 itemProviders];
  v7 = [v6 anyObject];
  v8 = [v7 items];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HUAccessorySettingsProfileModuleController_profileViewControllerDidSelectRemoveProfile___block_invoke;
  v17[3] = &unk_277DB85D8;
  v9 = v4;
  v18 = v9;
  v10 = [v8 na_firstObjectPassingTest:v17];

  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 promptForRemoveProfileItem:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HUAccessorySettingsProfileModuleController_profileViewControllerDidSelectRemoveProfile___block_invoke_2;
  v15[3] = &unk_277DB7B30;
  v16 = v9;
  v13 = v9;
  v14 = [v12 addCompletionBlock:v15];
}

BOOL __90__HUAccessorySettingsProfileModuleController_profileViewControllerDidSelectRemoveProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 profile];
  v8 = [*(a1 + 32) UIProfile];
  v9 = [v8 profile];
  v10 = v7 == v9;

  return v10;
}

void __90__HUAccessorySettingsProfileModuleController_profileViewControllerDidSelectRemoveProfile___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (([a3 na_isCancelledError] & 1) == 0)
  {
    v5 = [*(a1 + 32) navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (HUAccessorySettingsProfileModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface HUMediaServiceSettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (HUMediaServiceSettingsItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUMediaServiceSettingsItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v3 = a3;
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

  v7 = objc_opt_class();

  return v7;
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = HUMediaServiceSettingsItemModuleController;
  [(HUItemModuleController *)&v19 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v9 latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v12 setTitleText:v14];

  [v12 setAccessoryType:1];
  v15 = [(HUItemModuleController *)self module];
  v16 = [v15 defaultAccountsItem];

  if (v16 == v9)
  {
    [v12 setHideIcon:1];
    v17 = [v9 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v12 setValueText:v18];
  }

  else
  {
    [v12 setHideIcon:0];
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 defaultAccountsItem];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
      [v10 didSelectDefaultAccounts:self];
LABEL_7:

      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v10 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
    [v10 mediaServiceSettingsItemModuleController:self didSelectMediaService:v4];
    goto LABEL_7;
  }

LABEL_8:

  return 0;
}

- (HUMediaServiceSettingsItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
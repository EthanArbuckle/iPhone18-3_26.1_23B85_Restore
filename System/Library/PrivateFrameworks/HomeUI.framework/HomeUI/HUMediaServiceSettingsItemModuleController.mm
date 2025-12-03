@interface HUMediaServiceSettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (HUMediaServiceSettingsItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUMediaServiceSettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = HUMediaServiceSettingsItemModuleController;
  [(HUItemModuleController *)&v19 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  latestResults = [itemCopy latestResults];
  v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v12 setTitleText:v14];

  [v12 setAccessoryType:1];
  module = [(HUItemModuleController *)self module];
  defaultAccountsItem = [module defaultAccountsItem];

  if (defaultAccountsItem == itemCopy)
  {
    [v12 setHideIcon:1];
    latestResults2 = [itemCopy latestResults];
    v18 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v12 setValueText:v18];
  }

  else
  {
    [v12 setHideIcon:0];
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  defaultAccountsItem = [module defaultAccountsItem];
  v7 = defaultAccountsItem;
  if (defaultAccountsItem == itemCopy)
  {
    delegate = [(HUMediaServiceSettingsItemModuleController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
      [delegate2 didSelectDefaultAccounts:self];
LABEL_7:

      goto LABEL_8;
    }
  }

  else
  {
  }

  delegate3 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(HUMediaServiceSettingsItemModuleController *)self delegate];
    [delegate2 mediaServiceSettingsItemModuleController:self didSelectMediaService:itemCopy];
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
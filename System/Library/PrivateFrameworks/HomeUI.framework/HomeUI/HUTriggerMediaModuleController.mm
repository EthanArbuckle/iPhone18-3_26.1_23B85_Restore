@interface HUTriggerMediaModuleController
- (Class)cellClassForItem:(id)item;
- (HUTriggerMediaModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUTriggerMediaModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  mediaRowItem = [module mediaRowItem];

  if (mediaRowItem == itemCopy)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  mediaRowItem = [module mediaRowItem];
  v9 = [itemCopy isEqual:mediaRowItem];

  if (v9)
  {
    v10 = cellCopy;
    [v10 setAccessoryType:1];
    [v10 setHideIcon:1];
  }
}

- (unint64_t)didSelectItem:(id)item
{
  module = [(HUItemModuleController *)self module];
  triggerBuilder = [module triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];

  v8 = [[HUMediaSelectionViewController alloc] initWithActionSetBuilder:anonymousActionSetBuilder];
  [(HUMediaSelectionViewController *)v8 setDelegate:self];
  delegate = [(HUTriggerMediaModuleController *)self delegate];
  [delegate mediaModuleController:self pushViewController:v8];

  return 0;
}

- (HUTriggerMediaModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
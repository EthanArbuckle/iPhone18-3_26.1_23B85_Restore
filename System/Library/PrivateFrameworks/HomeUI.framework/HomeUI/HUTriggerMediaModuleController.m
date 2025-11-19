@interface HUTriggerMediaModuleController
- (Class)cellClassForItem:(id)a3;
- (HUTriggerMediaModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUTriggerMediaModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 mediaRowItem];

  if (v6 == v4)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 mediaRowItem];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = v11;
    [v10 setAccessoryType:1];
    [v10 setHideIcon:1];
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 triggerBuilder];
  v6 = [v5 triggerActionSets];
  v7 = [v6 anonymousActionSetBuilder];

  v8 = [[HUMediaSelectionViewController alloc] initWithActionSetBuilder:v7];
  [(HUMediaSelectionViewController *)v8 setDelegate:self];
  v9 = [(HUTriggerMediaModuleController *)self delegate];
  [v9 mediaModuleController:self pushViewController:v8];

  return 0;
}

- (HUTriggerMediaModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
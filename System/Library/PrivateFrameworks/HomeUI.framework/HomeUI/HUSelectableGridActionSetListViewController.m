@interface HUSelectableGridActionSetListViewController
- (HUSelectableGridActionSetListViewController)init;
- (HUSelectableGridActionSetListViewController)initWithRoom:(id)a3 selectedActionSets:(id)a4;
- (HUSelectableGridActionSetListViewControllerDelegate)delegate;
- (void)_selectedItemStateChanged:(id)a3 isSelected:(BOOL)a4 accessoryViewCell:(id)a5;
- (void)_updateSelectionState:(BOOL)a3 forCell:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)selectedActionSetStateChanged:(id)a3 isSelected:(BOOL)a4;
@end

@implementation HUSelectableGridActionSetListViewController

- (HUSelectableGridActionSetListViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRoom_selectedActionSets_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUSelectableGridActionSetListViewController.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUSelectableGridActionSetListViewController init]", v5}];

  return 0;
}

- (HUSelectableGridActionSetListViewController)initWithRoom:(id)a3 selectedActionSets:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HUGridFlowLayout);
  v9 = [[HUGridActionSetItemManager alloc] initWithDelegate:self actionSetStyle:0 room:v7];

  v13.receiver = self;
  v13.super_class = HUSelectableGridActionSetListViewController;
  v10 = [(HUControllableItemCollectionViewController *)&v13 initWithItemManager:v9 collectionViewLayout:v8];
  if (v10)
  {
    v11 = [v6 mutableCopy];
    [(HUSelectableGridActionSetListViewController *)v10 setMutableSelectedActionSets:v11];
  }

  return v10;
}

- (void)selectedActionSetStateChanged:(id)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v16 = [v7 actionSetItemAssociatedWithActionSet:v6];

  v8 = v16;
  if (v16)
  {
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v10 = [v9 indexPathForItem:v16];

    if (v10 && (-[HUSelectableGridActionSetListViewController collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 indexPathsForVisibleItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v10), v12, v11, v13))
    {
      v14 = [(HUSelectableGridActionSetListViewController *)self collectionView];
      v15 = [v14 cellForItemAtIndexPath:v10];
    }

    else
    {
      v15 = 0;
    }

    [(HUSelectableGridActionSetListViewController *)self _selectedItemStateChanged:v16 isSelected:v4 accessoryViewCell:v15];

    v8 = v16;
  }
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HUSelectableGridActionSetListViewController;
  [(HUGridActionSetListViewController *)&v15 configureCell:v6 forItem:v7];
  if ([v6 conformsToProtocol:&unk_2824D1FD8])
  {
    v8 = v6;
    v9 = [HUCheckmarkAccessoryView alloc];
    v10 = [(HUCheckmarkAccessoryView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [v8 setAccessoryView:v10];

    v11 = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
    v12 = [v11 toSet];
    v13 = [v7 actionSet];
    v14 = [v12 containsObject:v13];

    [(HUSelectableGridActionSetListViewController *)self _updateSelectionState:v14 forCell:v8];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = HUSelectableGridActionSetListViewController;
  [(HUGridActionSetListViewController *)&v18 collectionView:a3 didSelectItemAtIndexPath:v6];
  v7 = [(HUSelectableGridActionSetListViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  if ([v8 conformsToProtocol:&unk_2824D1FD8])
  {
    v9 = v8;
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 displayedItemAtIndexPath:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 actionSet];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
    v14 = [v13 toSet];
    v15 = [v11 actionSet];
    v16 = [v14 containsObject:v15];

    [(HUSelectableGridActionSetListViewController *)self _selectedItemStateChanged:v11 isSelected:v16 ^ 1u accessoryViewCell:v9];
    v17 = [(HUSelectableGridActionSetListViewController *)self delegate];
    [v17 selectableGridActionSetListViewController:self didChangeStateForActionSet:v12 isSelected:v16 ^ 1u];
  }
}

- (void)_selectedItemStateChanged:(id)a3 isSelected:(BOOL)a4 accessoryViewCell:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
  v10 = [v11 actionSet];
  if (v6)
  {
    [v9 addObject:v10];
  }

  else
  {
    [v9 deleteObject:v10];
  }

  if (v8 && [v8 conformsToProtocol:&unk_2824D1FD8])
  {
    [(HUSelectableGridActionSetListViewController *)self _updateSelectionState:v6 forCell:v8];
  }
}

- (void)_updateSelectionState:(BOOL)a3 forCell:(id)a4
{
  v4 = a3;
  v5 = a4;
  objc_opt_class();
  v6 = [v5 accessoryView];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setChecked:v4];
}

- (HUSelectableGridActionSetListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface HUSelectableGridActionSetListViewController
- (HUSelectableGridActionSetListViewController)init;
- (HUSelectableGridActionSetListViewController)initWithRoom:(id)room selectedActionSets:(id)sets;
- (HUSelectableGridActionSetListViewControllerDelegate)delegate;
- (void)_selectedItemStateChanged:(id)changed isSelected:(BOOL)selected accessoryViewCell:(id)cell;
- (void)_updateSelectionState:(BOOL)state forCell:(id)cell;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)selectedActionSetStateChanged:(id)changed isSelected:(BOOL)selected;
@end

@implementation HUSelectableGridActionSetListViewController

- (HUSelectableGridActionSetListViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRoom_selectedActionSets_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSelectableGridActionSetListViewController.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUSelectableGridActionSetListViewController init]", v5}];

  return 0;
}

- (HUSelectableGridActionSetListViewController)initWithRoom:(id)room selectedActionSets:(id)sets
{
  setsCopy = sets;
  roomCopy = room;
  v8 = objc_alloc_init(HUGridFlowLayout);
  v9 = [[HUGridActionSetItemManager alloc] initWithDelegate:self actionSetStyle:0 room:roomCopy];

  v13.receiver = self;
  v13.super_class = HUSelectableGridActionSetListViewController;
  v10 = [(HUControllableItemCollectionViewController *)&v13 initWithItemManager:v9 collectionViewLayout:v8];
  if (v10)
  {
    v11 = [setsCopy mutableCopy];
    [(HUSelectableGridActionSetListViewController *)v10 setMutableSelectedActionSets:v11];
  }

  return v10;
}

- (void)selectedActionSetStateChanged:(id)changed isSelected:(BOOL)selected
{
  selectedCopy = selected;
  changedCopy = changed;
  actionSetItemManager = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v16 = [actionSetItemManager actionSetItemAssociatedWithActionSet:changedCopy];

  v8 = v16;
  if (v16)
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v10 = [itemManager indexPathForItem:v16];

    if (v10 && (-[HUSelectableGridActionSetListViewController collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 indexPathsForVisibleItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v10), v12, v11, v13))
    {
      collectionView = [(HUSelectableGridActionSetListViewController *)self collectionView];
      v15 = [collectionView cellForItemAtIndexPath:v10];
    }

    else
    {
      v15 = 0;
    }

    [(HUSelectableGridActionSetListViewController *)self _selectedItemStateChanged:v16 isSelected:selectedCopy accessoryViewCell:v15];

    v8 = v16;
  }
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUSelectableGridActionSetListViewController;
  [(HUGridActionSetListViewController *)&v15 configureCell:cellCopy forItem:itemCopy];
  if ([cellCopy conformsToProtocol:&unk_2824D1FD8])
  {
    v8 = cellCopy;
    v9 = [HUCheckmarkAccessoryView alloc];
    v10 = [(HUCheckmarkAccessoryView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [v8 setAccessoryView:v10];

    mutableSelectedActionSets = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
    toSet = [mutableSelectedActionSets toSet];
    actionSet = [itemCopy actionSet];
    v14 = [toSet containsObject:actionSet];

    [(HUSelectableGridActionSetListViewController *)self _updateSelectionState:v14 forCell:v8];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = HUSelectableGridActionSetListViewController;
  [(HUGridActionSetListViewController *)&v18 collectionView:view didSelectItemAtIndexPath:pathCopy];
  collectionView = [(HUSelectableGridActionSetListViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  if ([v8 conformsToProtocol:&unk_2824D1FD8])
  {
    v9 = v8;
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v11 = [itemManager displayedItemAtIndexPath:pathCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      actionSet = [v11 actionSet];
    }

    else
    {
      actionSet = 0;
    }

    mutableSelectedActionSets = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
    toSet = [mutableSelectedActionSets toSet];
    actionSet2 = [v11 actionSet];
    v16 = [toSet containsObject:actionSet2];

    [(HUSelectableGridActionSetListViewController *)self _selectedItemStateChanged:v11 isSelected:v16 ^ 1u accessoryViewCell:v9];
    delegate = [(HUSelectableGridActionSetListViewController *)self delegate];
    [delegate selectableGridActionSetListViewController:self didChangeStateForActionSet:actionSet isSelected:v16 ^ 1u];
  }
}

- (void)_selectedItemStateChanged:(id)changed isSelected:(BOOL)selected accessoryViewCell:(id)cell
{
  selectedCopy = selected;
  changedCopy = changed;
  cellCopy = cell;
  mutableSelectedActionSets = [(HUSelectableGridActionSetListViewController *)self mutableSelectedActionSets];
  actionSet = [changedCopy actionSet];
  if (selectedCopy)
  {
    [mutableSelectedActionSets addObject:actionSet];
  }

  else
  {
    [mutableSelectedActionSets deleteObject:actionSet];
  }

  if (cellCopy && [cellCopy conformsToProtocol:&unk_2824D1FD8])
  {
    [(HUSelectableGridActionSetListViewController *)self _updateSelectionState:selectedCopy forCell:cellCopy];
  }
}

- (void)_updateSelectionState:(BOOL)state forCell:(id)cell
{
  stateCopy = state;
  cellCopy = cell;
  objc_opt_class();
  accessoryView = [cellCopy accessoryView];

  if (objc_opt_isKindOfClass())
  {
    v7 = accessoryView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setChecked:stateCopy];
}

- (HUSelectableGridActionSetListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
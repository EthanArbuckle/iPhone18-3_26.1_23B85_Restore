@interface HUGridActionSetListViewController
+ (double)requiredHeightWithLayoutOptions:(id)options numberOfItems:(unint64_t)items;
- (BOOL)canReorderItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUGridActionSetListViewController)init;
- (HUGridActionSetListViewController)initWithRoom:(id)room onlyShowFavorites:(BOOL)favorites;
- (HUGridActionSetListViewControllerDelegate)actionSetListViewControllerDelegate;
- (HUGridLayoutOptions)layoutOptions;
- (id)_detailsViewControllerForActionSetItem:(id)item;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options;
- (id)reorderableItemListForSection:(int64_t)section;
- (void)_internalSetLayoutOptions:(id)options;
- (void)_updateLayoutScrollDirectionIfNeeded;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setLayoutOptions:(id)options;
- (void)setReorderableItemList:(id)list forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation HUGridActionSetListViewController

- (HUGridActionSetListViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRoom_onlyShowFavorites_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUGridActionSetListViewController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUGridActionSetListViewController init]", v5}];

  return 0;
}

- (HUGridActionSetListViewController)initWithRoom:(id)room onlyShowFavorites:(BOOL)favorites
{
  favoritesCopy = favorites;
  roomCopy = room;
  v7 = objc_alloc_init(HUGridFlowLayout);
  v8 = [[HUGridActionSetItemManager alloc] initWithDelegate:self];
  [(HUGridActionSetItemManager *)v8 setRoom:roomCopy];

  [(HUGridActionSetItemManager *)v8 setOnlyShowsFavorites:favoritesCopy];
  v12.receiver = self;
  v12.super_class = HUGridActionSetListViewController;
  v9 = [(HUControllableItemCollectionViewController *)&v12 initWithItemManager:v8 collectionViewLayout:v7];
  v10 = v9;
  if (v9)
  {
    [(HUGridActionSetListViewController *)v9 setShouldAllowItemPresentation:1];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUGridActionSetListViewController;
  [(HUControllableItemCollectionViewController *)&v10 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(HUGridActionSetListViewController *)self view];
  [view setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  collectionView = [(HUGridActionSetListViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor2];

  collectionView2 = [(HUGridActionSetListViewController *)self collectionView];
  [collectionView2 setShowsHorizontalScrollIndicator:0];

  collectionView3 = [(HUGridActionSetListViewController *)self collectionView];
  [collectionView3 setShowsVerticalScrollIndicator:0];

  collectionView4 = [(HUGridActionSetListViewController *)self collectionView];
  [collectionView4 setContentInsetAdjustmentBehavior:2];
}

- (HUGridLayoutOptions)layoutOptions
{
  v3 = objc_opt_class();
  collectionViewLayout = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (collectionViewLayout)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = collectionViewLayout;
    }

    else
    {
      v5 = 0;
    }

    v6 = collectionViewLayout;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  layoutOptions = [v6 layoutOptions];

  return layoutOptions;
}

- (void)setLayoutOptions:(id)options
{
  v5 = [options copy];
  [v5 setScrollDirection:{-[HUGridActionSetListViewController _scrollDirectionForLayoutOptions:](self, "_scrollDirectionForLayoutOptions:", v5)}];
  [v5 setSectionBottomMargin:0.0];
  if ([MEMORY[0x277D14670] isHomeControlService])
  {
    v4 = &unk_282491748;
  }

  else
  {
    v4 = 0;
  }

  [v5 setOverrideNumberOfColumns:v4];
  [(HUGridActionSetListViewController *)self _internalSetLayoutOptions:v5];
}

- (void)_internalSetLayoutOptions:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_class();
  collectionViewLayout = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (!collectionViewLayout)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = collectionViewLayout;
  }

  else
  {
    v7 = 0;
  }

  v8 = collectionViewLayout;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  layoutOptions = [v8 layoutOptions];
  v12 = [layoutOptions isEqual:optionsCopy];

  if ((v12 & 1) == 0)
  {
    [v8 setLayoutOptions:optionsCopy];
    if ([(HUGridActionSetListViewController *)self isViewLoaded])
    {
      v24 = optionsCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      collectionView = [(HUGridActionSetListViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

      v15 = [indexPathsForVisibleItems countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          v18 = 0;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(indexPathsForVisibleItems);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            collectionView2 = [(HUGridActionSetListViewController *)self collectionView];
            v21 = [collectionView2 cellForItemAtIndexPath:v19];
            itemManager = [(HUItemCollectionViewController *)self itemManager];
            v23 = [itemManager displayedItemAtIndexPath:v19];
            [(HUGridActionSetListViewController *)self configureCell:v21 forItem:v23];

            ++v18;
          }

          while (v16 != v18);
          v16 = [indexPathsForVisibleItems countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      optionsCopy = v24;
    }
  }
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUGridActionSetListViewController actionSetItemManager](self, "actionSetItemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 actionSetPlaceholderItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(itemCopy, "isEqual:", v7), v7, v6, v8))
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = HUGridActionSetListViewController;
  [(HUControllableItemCollectionViewController *)&v10 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layoutOptions = [(HUGridActionSetListViewController *)self layoutOptions];
    placeholderSceneCellOptions = [layoutOptions placeholderSceneCellOptions];
LABEL_5:
    v9 = placeholderSceneCellOptions;
    [cellCopy setLayoutOptions:placeholderSceneCellOptions];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layoutOptions = [(HUGridActionSetListViewController *)self layoutOptions];
    placeholderSceneCellOptions = [layoutOptions sceneCellOptions];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options
{
  managerCopy = manager;
  itemsCopy = items;
  optionsCopy = options;
  actionSetListViewControllerDelegate = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    actionSetListViewControllerDelegate2 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
    v15 = [actionSetListViewControllerDelegate2 actionSetListViewController:self futureToUpdateItems:itemsCopy itemUpdateOptions:optionsCopy];
  }

  else
  {
    if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")])
    {
      v18.receiver = self;
      v18.super_class = HUGridActionSetListViewController;
      v16 = [(HUItemCollectionViewController *)&v18 itemManager:managerCopy futureToUpdateItems:itemsCopy itemUpdateOptions:optionsCopy];
    }

    else
    {
      v16 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    }

    v15 = v16;
  }

  return v15;
}

- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetListViewController;
  [(HUItemCollectionViewController *)&v6 itemManager:manager didInsertItem:item atIndexPath:path];
  [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
}

- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetListViewController;
  [(HUItemCollectionViewController *)&v6 itemManager:manager didRemoveItem:item atIndexPath:path];
  [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  removeItemsCopy = removeItems;
  v13.receiver = self;
  v13.super_class = HUGridActionSetListViewController;
  addItemsCopy = addItems;
  [(HUControllableItemCollectionViewController *)&v13 diffableDataItemManager:manager didUpdateItems:items addItems:addItemsCopy removeItems:removeItemsCopy];
  v12 = [addItemsCopy count];

  if (v12 || [removeItemsCopy count])
  {
    [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(HUGridActionSetListViewController *)self layoutOptions:view];
  if ([MEMORY[0x277D14670] isHomeControlService])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v6 pointWidthForNumberOfColumns:v7];
  v9 = v8;

  layoutOptions = [(HUGridActionSetListViewController *)self layoutOptions];
  sceneCellOptions = [layoutOptions sceneCellOptions];
  [sceneCellOptions cellHeight];
  v13 = v12;

  v14 = v9;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = [(HUGridActionSetListViewController *)self layoutOptions:dragging];
  if ([MEMORY[0x277D14670] isHomeControlService])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 pointWidthForNumberOfColumns:v8];
  v10 = v9;
  layoutOptions = [(HUGridActionSetListViewController *)self layoutOptions];
  [layoutOptions columnSpacing];
  v13 = v10 + v12;

  offset->x = v13 * round(offset->x / v13);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")] && (v11.receiver = self, v11.super_class = HUGridActionSetListViewController, -[HUControllableItemCollectionViewController collectionView:shouldHighlightItemAtIndexPath:](&v11, sel_collectionView_shouldHighlightItemAtIndexPath_, viewCopy, pathCopy)))
  {
    isEditing = 1;
  }

  else
  {
    isEditing = [(HUGridActionSetListViewController *)self isEditing];
  }

  return isEditing;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")])
  {
    v18.receiver = self;
    v18.super_class = HUGridActionSetListViewController;
    [(HUItemCollectionViewController *)&v18 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }

  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12 && [(HUGridActionSetListViewController *)self isEditing])
  {
    v13 = [(HUGridActionSetListViewController *)self _detailsViewControllerForActionSetItem:v12];
    hu_delegateForModalPresentation = [(UIViewController *)self hu_delegateForModalPresentation];
    [v13 setPresentationDelegate:hu_delegateForModalPresentation];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
    [v15 setModalPresentationStyle:2];
    parentViewController = [(HUGridActionSetListViewController *)self parentViewController];
    v17 = [parentViewController hu_presentPreloadableViewController:v15 animated:1];
  }
}

+ (double)requiredHeightWithLayoutOptions:(id)options numberOfItems:(unint64_t)items
{
  optionsCopy = options;
  if ([optionsCopy scrollDirection])
  {
    v6 = 2;
  }

  else
  {
    overrideNumberOfColumns = [optionsCopy overrideNumberOfColumns];
    if (overrideNumberOfColumns)
    {
      overrideNumberOfColumns2 = [optionsCopy overrideNumberOfColumns];
      [overrideNumberOfColumns2 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = floorf(vcvts_n_f32_s64([optionsCopy numberOfColumns], 1uLL));
    }

    v11 = vcvtps_s32_f32(items / v10);
    if (v11 <= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v11;
    }
  }

  sceneCellOptions = [optionsCopy sceneCellOptions];
  [sceneCellOptions cellHeight];
  v14 = v13;
  [optionsCopy rowSpacing];
  v16 = v15 * (v6 - 1) + v14 * v6;

  return v16;
}

- (BOOL)canReorderItemAtIndexPath:(id)path
{
  pathCopy = path;
  actionSetItemManager = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v6 = [actionSetItemManager isItemReorderableAtIndex:pathCopy];

  return v6;
}

- (id)reorderableItemListForSection:(int64_t)section
{
  actionSetItemManager = [(HUGridActionSetListViewController *)self actionSetItemManager];
  reorderableActionSetList = [actionSetItemManager reorderableActionSetList];

  return reorderableActionSetList;
}

- (void)setReorderableItemList:(id)list forSection:(int64_t)section
{
  listCopy = list;
  objc_opt_class();
  v9 = listCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  actionSetItemManager = [(HUGridActionSetListViewController *)self actionSetItemManager];
  [actionSetItemManager setReorderableActionSetList:v7];
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(HUGridActionSetListViewController *)self _detailsViewControllerForActionSetItem:itemCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, itemCopy);
    v6 = 0;
  }

  return v6;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  itemCopy = item;
  areaCopy = area;
  actionSetItemManager = [(HUGridActionSetListViewController *)self actionSetItemManager];
  actionSetPlaceholderItem = [actionSetItemManager actionSetPlaceholderItem];
  v10 = [itemCopy isEqual:actionSetPlaceholderItem];

  if (v10)
  {
    actionSetListViewControllerDelegate = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];

    if (actionSetListViewControllerDelegate)
    {
      actionSetListViewControllerDelegate2 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
      [actionSetListViewControllerDelegate2 addSceneTileAction:self];
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HUGridActionSetListViewController;
    futureWithNoResult = [(HUControllableItemCollectionViewController *)&v16 _performTapActionForItem:itemCopy tappedArea:areaCopy];
  }

  v14 = futureWithNoResult;

  return v14;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  contextCopy = context;
  if ([(HUGridActionSetListViewController *)self shouldAllowItemPresentation])
  {
    item = [contextCopy item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_detailsViewControllerForActionSetItem:(id)item
{
  itemCopy = item;
  actionSet = [itemCopy actionSet];

  if (actionSet)
  {
    v6 = objc_alloc(MEMORY[0x277D14398]);
    actionSet2 = [itemCopy actionSet];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager home];
    v10 = [v6 initWithExistingObject:actionSet2 inHome:home];

    v11 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v10 mode:0];
  }

  else
  {
    NSLog(&cfstr_ActionsetMustN.isa);
    v11 = 0;
  }

  return v11;
}

- (void)_updateLayoutScrollDirectionIfNeeded
{
  v3 = objc_opt_class();
  collectionViewLayout = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (!collectionViewLayout)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = collectionViewLayout;
  }

  else
  {
    v5 = 0;
  }

  v11 = collectionViewLayout;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v7 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v11 = 0;
  }

  scrollDirection = [v11 scrollDirection];
  layoutOptions = [v11 layoutOptions];
  v10 = [(HUGridActionSetListViewController *)self _scrollDirectionForLayoutOptions:layoutOptions];

  if (scrollDirection != v10)
  {
    [v11 setScrollDirection:v10];
  }
}

- (HUGridActionSetListViewControllerDelegate)actionSetListViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSetListViewControllerDelegate);

  return WeakRetained;
}

@end
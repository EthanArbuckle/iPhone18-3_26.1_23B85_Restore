@interface HUGridActionSetListViewController
+ (double)requiredHeightWithLayoutOptions:(id)a3 numberOfItems:(unint64_t)a4;
- (BOOL)canReorderItemAtIndexPath:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUGridActionSetListViewController)init;
- (HUGridActionSetListViewController)initWithRoom:(id)a3 onlyShowFavorites:(BOOL)a4;
- (HUGridActionSetListViewControllerDelegate)actionSetListViewControllerDelegate;
- (HUGridLayoutOptions)layoutOptions;
- (id)_detailsViewControllerForActionSetItem:(id)a3;
- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5;
- (id)reorderableItemListForSection:(int64_t)a3;
- (void)_internalSetLayoutOptions:(id)a3;
- (void)_updateLayoutScrollDirectionIfNeeded;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setLayoutOptions:(id)a3;
- (void)setReorderableItemList:(id)a3 forSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HUGridActionSetListViewController

- (HUGridActionSetListViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRoom_onlyShowFavorites_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUGridActionSetListViewController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUGridActionSetListViewController init]", v5}];

  return 0;
}

- (HUGridActionSetListViewController)initWithRoom:(id)a3 onlyShowFavorites:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HUGridFlowLayout);
  v8 = [[HUGridActionSetItemManager alloc] initWithDelegate:self];
  [(HUGridActionSetItemManager *)v8 setRoom:v6];

  [(HUGridActionSetItemManager *)v8 setOnlyShowsFavorites:v4];
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
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUGridActionSetListViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(HUGridActionSetListViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = [(HUGridActionSetListViewController *)self collectionView];
  [v7 setShowsHorizontalScrollIndicator:0];

  v8 = [(HUGridActionSetListViewController *)self collectionView];
  [v8 setShowsVerticalScrollIndicator:0];

  v9 = [(HUGridActionSetListViewController *)self collectionView];
  [v9 setContentInsetAdjustmentBehavior:2];
}

- (HUGridLayoutOptions)layoutOptions
{
  v3 = objc_opt_class();
  v4 = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  v9 = [v6 layoutOptions];

  return v9;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = [a3 copy];
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

- (void)_internalSetLayoutOptions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v11 = [v8 layoutOptions];
  v12 = [v11 isEqual:v4];

  if ((v12 & 1) == 0)
  {
    [v8 setLayoutOptions:v4];
    if ([(HUGridActionSetListViewController *)self isViewLoaded])
    {
      v24 = v4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [(HUGridActionSetListViewController *)self collectionView];
      v14 = [v13 indexPathsForVisibleItems];

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            v20 = [(HUGridActionSetListViewController *)self collectionView];
            v21 = [v20 cellForItemAtIndexPath:v19];
            v22 = [(HUItemCollectionViewController *)self itemManager];
            v23 = [v22 displayedItemAtIndexPath:v19];
            [(HUGridActionSetListViewController *)self configureCell:v21 forItem:v23];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      v4 = v24;
    }
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUGridActionSetListViewController actionSetItemManager](self, "actionSetItemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 actionSetPlaceholderItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v8))
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

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUGridActionSetListViewController;
  [(HUControllableItemCollectionViewController *)&v10 configureCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HUGridActionSetListViewController *)self layoutOptions];
    v8 = [v7 placeholderSceneCellOptions];
LABEL_5:
    v9 = v8;
    [v6 setLayoutOptions:v8];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HUGridActionSetListViewController *)self layoutOptions];
    v8 = [v7 sceneCellOptions];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
    v15 = [v14 actionSetListViewController:self futureToUpdateItems:v10 itemUpdateOptions:v11];
  }

  else
  {
    if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")])
    {
      v18.receiver = self;
      v18.super_class = HUGridActionSetListViewController;
      v16 = [(HUItemCollectionViewController *)&v18 itemManager:v9 futureToUpdateItems:v10 itemUpdateOptions:v11];
    }

    else
    {
      v16 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    }

    v15 = v16;
  }

  return v15;
}

- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetListViewController;
  [(HUItemCollectionViewController *)&v6 itemManager:a3 didInsertItem:a4 atIndexPath:a5];
  [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
}

- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetListViewController;
  [(HUItemCollectionViewController *)&v6 itemManager:a3 didRemoveItem:a4 atIndexPath:a5];
  [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a6;
  v13.receiver = self;
  v13.super_class = HUGridActionSetListViewController;
  v11 = a5;
  [(HUControllableItemCollectionViewController *)&v13 diffableDataItemManager:a3 didUpdateItems:a4 addItems:v11 removeItems:v10];
  v12 = [v11 count];

  if (v12 || [v10 count])
  {
    [(HUGridActionSetListViewController *)self _updateLayoutScrollDirectionIfNeeded];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(HUGridActionSetListViewController *)self layoutOptions:a3];
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

  v10 = [(HUGridActionSetListViewController *)self layoutOptions];
  v11 = [v10 sceneCellOptions];
  [v11 cellHeight];
  v13 = v12;

  v14 = v9;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = [(HUGridActionSetListViewController *)self layoutOptions:a3];
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
  v11 = [(HUGridActionSetListViewController *)self layoutOptions];
  [v11 columnSpacing];
  v13 = v10 + v12;

  a5->x = v13 * round(a5->x / v13);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")] && (v11.receiver = self, v11.super_class = HUGridActionSetListViewController, -[HUControllableItemCollectionViewController collectionView:shouldHighlightItemAtIndexPath:](&v11, sel_collectionView_shouldHighlightItemAtIndexPath_, v7, v8)))
  {
    v9 = 1;
  }

  else
  {
    v9 = [(HUGridActionSetListViewController *)self isEditing];
  }

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([+[HUGridActionSetListViewController superclass](HUGridActionSetListViewController "superclass")])
  {
    v18.receiver = self;
    v18.super_class = HUGridActionSetListViewController;
    [(HUItemCollectionViewController *)&v18 collectionView:v7 didSelectItemAtIndexPath:v8];
  }

  objc_opt_class();
  v9 = [(HUItemCollectionViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];
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
    v14 = [(UIViewController *)self hu_delegateForModalPresentation];
    [v13 setPresentationDelegate:v14];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
    [v15 setModalPresentationStyle:2];
    v16 = [(HUGridActionSetListViewController *)self parentViewController];
    v17 = [v16 hu_presentPreloadableViewController:v15 animated:1];
  }
}

+ (double)requiredHeightWithLayoutOptions:(id)a3 numberOfItems:(unint64_t)a4
{
  v5 = a3;
  if ([v5 scrollDirection])
  {
    v6 = 2;
  }

  else
  {
    v7 = [v5 overrideNumberOfColumns];
    if (v7)
    {
      v8 = [v5 overrideNumberOfColumns];
      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = floorf(vcvts_n_f32_s64([v5 numberOfColumns], 1uLL));
    }

    v11 = vcvtps_s32_f32(a4 / v10);
    if (v11 <= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v11;
    }
  }

  v12 = [v5 sceneCellOptions];
  [v12 cellHeight];
  v14 = v13;
  [v5 rowSpacing];
  v16 = v15 * (v6 - 1) + v14 * v6;

  return v16;
}

- (BOOL)canReorderItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v6 = [v5 isItemReorderableAtIndex:v4];

  return v6;
}

- (id)reorderableItemListForSection:(int64_t)a3
{
  v3 = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v4 = [v3 reorderableActionSetList];

  return v4;
}

- (void)setReorderableItemList:(id)a3 forSection:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HUGridActionSetListViewController *)self actionSetItemManager];
  [v8 setReorderableActionSetList:v7];
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(HUGridActionSetListViewController *)self _detailsViewControllerForActionSetItem:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, v5);
    v6 = 0;
  }

  return v6;
}

- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUGridActionSetListViewController *)self actionSetItemManager];
  v9 = [v8 actionSetPlaceholderItem];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];

    if (v11)
    {
      v12 = [(HUGridActionSetListViewController *)self actionSetListViewControllerDelegate];
      [v12 addSceneTileAction:self];
    }

    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HUGridActionSetListViewController;
    v13 = [(HUControllableItemCollectionViewController *)&v16 _performTapActionForItem:v6 tappedArea:v7];
  }

  v14 = v13;

  return v14;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v5 = a4;
  if ([(HUGridActionSetListViewController *)self shouldAllowItemPresentation])
  {
    v6 = [v5 item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_detailsViewControllerForActionSetItem:(id)a3
{
  v4 = a3;
  v5 = [v4 actionSet];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D14398]);
    v7 = [v4 actionSet];
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v9 = [v8 home];
    v10 = [v6 initWithExistingObject:v7 inHome:v9];

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
  v4 = [(HUGridActionSetListViewController *)self collectionViewLayout];
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v11 = v4;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v6 handleFailureInFunction:v7 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v11 = 0;
  }

  v8 = [v11 scrollDirection];
  v9 = [v11 layoutOptions];
  v10 = [(HUGridActionSetListViewController *)self _scrollDirectionForLayoutOptions:v9];

  if (v8 != v10)
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
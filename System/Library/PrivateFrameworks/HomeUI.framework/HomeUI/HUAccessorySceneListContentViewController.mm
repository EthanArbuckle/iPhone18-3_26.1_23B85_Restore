@interface HUAccessorySceneListContentViewController
- (HUAccessorySceneListContentViewController)initWithServiceLikeItem:(id)a3 contentSource:(unint64_t)a4 selectionType:(unint64_t)a5;
- (HUAccessorySceneListContentViewControllerDelegate)delegate;
- (NSSet)selectedActionSetBuilders;
- (id)commitChangesToSelectedActionBuilders;
- (id)layoutOptionsForSection:(int64_t)a3;
- (unint64_t)itemTypeForItem:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didChangeSelection;
- (void)sceneEditor:(id)a3 didCommitActionSet:(id)a4;
- (void)setPersistAddedSuggestions:(BOOL)a3;
@end

@implementation HUAccessorySceneListContentViewController

- (HUAccessorySceneListContentViewController)initWithServiceLikeItem:(id)a3 contentSource:(unint64_t)a4 selectionType:(unint64_t)a5
{
  v9 = a3;
  v10 = [[HUAccessorySceneListContentItemManager alloc] initWithDelegate:self contentSource:a4 serviceLikeItem:v9];
  v14.receiver = self;
  v14.super_class = HUAccessorySceneListContentViewController;
  v11 = [(HUSelectableServiceGridViewController *)&v14 initWithServiceGridItemManager:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceLikeItem, a3);
    v12->_contentSource = a4;
    v12->_selectionType = a5;
    v12->_includeTopMargin = 1;
  }

  return v12;
}

- (id)commitChangesToSelectedActionBuilders
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v5 = [v4 toSet];
  v6 = [v3 commitSelectionChangesWithSelectedItems:v5];

  return v6;
}

- (NSSet)selectedActionSetBuilders
{
  v3 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v4 = [v3 toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUAccessorySceneListContentViewController_selectedActionSetBuilders__block_invoke;
  v7[3] = &unk_277DBC358;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

id __70__HUAccessorySceneListContentViewController_selectedActionSetBuilders__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 actionSetBuilderForItem:v3];

  return v5;
}

- (void)setPersistAddedSuggestions:(BOOL)a3
{
  v3 = a3;
  self->_persistAddedSuggestions = a3;
  v4 = [(HUItemCollectionViewController *)self itemManager];
  [v4 setPersistAddedSuggestions:v3];
}

- (void)didChangeSelection
{
  v7.receiver = self;
  v7.super_class = HUAccessorySceneListContentViewController;
  [(HUSelectableServiceGridViewController *)&v7 didChangeSelection];
  v3 = [(HUAccessorySceneListContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HUAccessorySceneListContentViewController *)self delegate];
    v6 = [(HUAccessorySceneListContentViewController *)self selectedActionSetBuilders];
    [v5 sceneListContentViewController:self didUpdateSelectedActionSetBuilders:v6];
  }
}

- (id)layoutOptionsForSection:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HUAccessorySceneListContentViewController;
  v4 = [(HUServiceGridViewController *)&v6 layoutOptionsForSection:a3];
  [v4 setSectionLeadingMargin:0.0];
  [v4 setSectionTrailingMargin:0.0];
  if (![(HUAccessorySceneListContentViewController *)self includeTopMargin])
  {
    [v4 setSectionTopMargin:0.0];
  }

  return v4;
}

- (unint64_t)itemTypeForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUAccessorySceneListContentViewController;
    v5 = [(HUServiceGridViewController *)&v7 itemTypeForItem:v4];
  }

  return v5;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HUAccessorySceneListContentViewController;
  [(HUSelectableServiceGridViewController *)&v16 configureCell:v6 forItem:a4];
  v7 = objc_opt_class();
  v8 = v6;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  if (![(HUAccessorySceneListContentViewController *)self selectionType])
  {
    if (_MergedGlobals_2 != -1)
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_20_1);
    }

    v13 = qword_27C837E80;
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
    v15 = [MEMORY[0x277D75348] colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    [v14 setTintColor:v15];

    [v10 setAccessoryView:v14];
    [v10 setUseDefaultCellBackgroundColor:1];
  }
}

void __67__HUAccessorySceneListContentViewController_configureCell_forItem___block_invoke_2()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v1 = qword_27C837E80;
  qword_27C837E80 = v0;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HUAccessorySceneListContentViewController *)self selectionType])
  {
    v26.receiver = self;
    v26.super_class = HUAccessorySceneListContentViewController;
    [(HUSelectableServiceGridViewController *)&v26 collectionView:v6 didSelectItemAtIndexPath:v7];
  }

  else
  {
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v9 = [v8 displayedItemAtIndexPath:v7];

    [(HUAccessorySceneListContentViewController *)self setCurrentlyOpenedItem:v9];
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 actionSetBuilderForItem:v9];

    v12 = [v11 actionSet];
    v13 = [v12 actions];
    v14 = [v13 count] == 0;

    v15 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v11 mode:v14];
    [(HUSceneActionEditorViewController *)v15 setSceneEditorDelegate:self];
    v16 = [(UIViewController *)self hu_delegateForModalPresentation];
    [(HUSceneActionEditorViewController *)v15 setPresentationDelegate:v16];

    v17 = [MEMORY[0x277CBEB58] set];
    v18 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    v19 = [v18 homeKitObject];
    if ([v19 conformsToProtocol:&unk_2825BCA78])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      [v17 addObject:v21];
    }

    else
    {
      v22 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
      v23 = [v22 services];
      [v17 unionSet:v23];
    }

    [(HUSceneActionEditorViewController *)v15 setPrioritizedAccessories:v17];
    v24 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
    [v24 setModalPresentationStyle:2];
    v25 = [(UIViewController *)self hu_presentPreloadableViewController:v24 animated:1];
  }
}

- (void)sceneEditor:(id)a3 didCommitActionSet:(id)a4
{
  v5 = [(HUAccessorySceneListContentViewController *)self currentlyOpenedItem:a3];
  v6 = [v5 latestResults];
  v20 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14070]];

  [(HUAccessorySceneListContentViewController *)self setCurrentlyOpenedItem:0];
  v7 = v20;
  if (v20)
  {
    v8 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    v9 = [v8 services];
    v10 = [v9 na_map:&__block_literal_global_156_0];

    v11 = MEMORY[0x277D17E68];
    v12 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    v13 = [v11 accessoryCategoryAnalyticsDescription:v12];

    v14 = [v20 analyticsData];
    v15 = [v14 mutableCopy];

    v16 = MEMORY[0x277CBEC38];
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13598]];
    [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13508]];
    if (v13)
    {
      [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x277D134D0]];
    }

    if ([v10 count] == 1)
    {
      v17 = [v10 anyObject];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13578]];
    }

    v18 = [(HUAccessorySceneListContentViewController *)self analyticsPresentationContext];

    if (v18)
    {
      v19 = [(HUAccessorySceneListContentViewController *)self analyticsPresentationContext];
      [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13548]];
    }

    [MEMORY[0x277D143D8] sendEvent:14 withData:v15];

    v7 = v20;
  }
}

- (HUAccessorySceneListContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
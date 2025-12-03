@interface HUAccessorySceneListContentViewController
- (HUAccessorySceneListContentViewController)initWithServiceLikeItem:(id)item contentSource:(unint64_t)source selectionType:(unint64_t)type;
- (HUAccessorySceneListContentViewControllerDelegate)delegate;
- (NSSet)selectedActionSetBuilders;
- (id)commitChangesToSelectedActionBuilders;
- (id)layoutOptionsForSection:(int64_t)section;
- (unint64_t)itemTypeForItem:(id)item;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didChangeSelection;
- (void)sceneEditor:(id)editor didCommitActionSet:(id)set;
- (void)setPersistAddedSuggestions:(BOOL)suggestions;
@end

@implementation HUAccessorySceneListContentViewController

- (HUAccessorySceneListContentViewController)initWithServiceLikeItem:(id)item contentSource:(unint64_t)source selectionType:(unint64_t)type
{
  itemCopy = item;
  v10 = [[HUAccessorySceneListContentItemManager alloc] initWithDelegate:self contentSource:source serviceLikeItem:itemCopy];
  v14.receiver = self;
  v14.super_class = HUAccessorySceneListContentViewController;
  v11 = [(HUSelectableServiceGridViewController *)&v14 initWithServiceGridItemManager:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceLikeItem, item);
    v12->_contentSource = source;
    v12->_selectionType = type;
    v12->_includeTopMargin = 1;
  }

  return v12;
}

- (id)commitChangesToSelectedActionBuilders
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  v6 = [itemManager commitSelectionChangesWithSelectedItems:toSet];

  return v6;
}

- (NSSet)selectedActionSetBuilders
{
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUAccessorySceneListContentViewController_selectedActionSetBuilders__block_invoke;
  v7[3] = &unk_277DBC358;
  v7[4] = self;
  v5 = [toSet na_map:v7];

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

- (void)setPersistAddedSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  self->_persistAddedSuggestions = suggestions;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  [itemManager setPersistAddedSuggestions:suggestionsCopy];
}

- (void)didChangeSelection
{
  v7.receiver = self;
  v7.super_class = HUAccessorySceneListContentViewController;
  [(HUSelectableServiceGridViewController *)&v7 didChangeSelection];
  delegate = [(HUAccessorySceneListContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HUAccessorySceneListContentViewController *)self delegate];
    selectedActionSetBuilders = [(HUAccessorySceneListContentViewController *)self selectedActionSetBuilders];
    [delegate2 sceneListContentViewController:self didUpdateSelectedActionSetBuilders:selectedActionSetBuilders];
  }
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v6.receiver = self;
  v6.super_class = HUAccessorySceneListContentViewController;
  v4 = [(HUServiceGridViewController *)&v6 layoutOptionsForSection:section];
  [v4 setSectionLeadingMargin:0.0];
  [v4 setSectionTrailingMargin:0.0];
  if (![(HUAccessorySceneListContentViewController *)self includeTopMargin])
  {
    [v4 setSectionTopMargin:0.0];
  }

  return v4;
}

- (unint64_t)itemTypeForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUAccessorySceneListContentViewController;
    v5 = [(HUServiceGridViewController *)&v7 itemTypeForItem:itemCopy];
  }

  return v5;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v16.receiver = self;
  v16.super_class = HUAccessorySceneListContentViewController;
  [(HUSelectableServiceGridViewController *)&v16 configureCell:cellCopy forItem:item];
  v7 = objc_opt_class();
  v8 = cellCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(HUAccessorySceneListContentViewController *)self selectionType])
  {
    v26.receiver = self;
    v26.super_class = HUAccessorySceneListContentViewController;
    [(HUSelectableServiceGridViewController *)&v26 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }

  else
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v9 = [itemManager displayedItemAtIndexPath:pathCopy];

    [(HUAccessorySceneListContentViewController *)self setCurrentlyOpenedItem:v9];
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [itemManager2 actionSetBuilderForItem:v9];

    actionSet = [v11 actionSet];
    actions = [actionSet actions];
    v14 = [actions count] == 0;

    v15 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v11 mode:v14];
    [(HUSceneActionEditorViewController *)v15 setSceneEditorDelegate:self];
    hu_delegateForModalPresentation = [(UIViewController *)self hu_delegateForModalPresentation];
    [(HUSceneActionEditorViewController *)v15 setPresentationDelegate:hu_delegateForModalPresentation];

    v17 = [MEMORY[0x277CBEB58] set];
    serviceLikeItem = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    homeKitObject = [serviceLikeItem homeKitObject];
    if ([homeKitObject conformsToProtocol:&unk_2825BCA78])
    {
      v20 = homeKitObject;
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
      serviceLikeItem2 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
      services = [serviceLikeItem2 services];
      [v17 unionSet:services];
    }

    [(HUSceneActionEditorViewController *)v15 setPrioritizedAccessories:v17];
    v24 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
    [v24 setModalPresentationStyle:2];
    v25 = [(UIViewController *)self hu_presentPreloadableViewController:v24 animated:1];
  }
}

- (void)sceneEditor:(id)editor didCommitActionSet:(id)set
{
  v5 = [(HUAccessorySceneListContentViewController *)self currentlyOpenedItem:editor];
  latestResults = [v5 latestResults];
  v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14070]];

  [(HUAccessorySceneListContentViewController *)self setCurrentlyOpenedItem:0];
  v7 = v20;
  if (v20)
  {
    serviceLikeItem = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    services = [serviceLikeItem services];
    v10 = [services na_map:&__block_literal_global_156_0];

    v11 = MEMORY[0x277D17E68];
    serviceLikeItem2 = [(HUAccessorySceneListContentViewController *)self serviceLikeItem];
    v13 = [v11 accessoryCategoryAnalyticsDescription:serviceLikeItem2];

    analyticsData = [v20 analyticsData];
    v15 = [analyticsData mutableCopy];

    v16 = MEMORY[0x277CBEC38];
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13598]];
    [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13508]];
    if (v13)
    {
      [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x277D134D0]];
    }

    if ([v10 count] == 1)
    {
      anyObject = [v10 anyObject];
      [v15 setObject:anyObject forKeyedSubscript:*MEMORY[0x277D13578]];
    }

    analyticsPresentationContext = [(HUAccessorySceneListContentViewController *)self analyticsPresentationContext];

    if (analyticsPresentationContext)
    {
      analyticsPresentationContext2 = [(HUAccessorySceneListContentViewController *)self analyticsPresentationContext];
      [v15 setObject:analyticsPresentationContext2 forKeyedSubscript:*MEMORY[0x277D13548]];
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
@interface HUAccessorySceneListViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUAccessorySceneListViewController)initWithServiceLikeItem:(id)item;
- (id)childViewControllersToPreload;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUAccessorySceneListViewController

- (HUAccessorySceneListViewController)initWithServiceLikeItem:(id)item
{
  itemCopy = item;
  v5 = [[HUAccessorySceneListItemManager alloc] initWithDelegate:self serviceLikeItem:itemCopy];
  v13.receiver = self;
  v13.super_class = HUAccessorySceneListViewController;
  v6 = [(HUItemTableViewController *)&v13 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [[HUAccessorySceneListContentViewController alloc] initWithServiceLikeItem:itemCopy contentSource:0 selectionType:0];
    existingSceneListContentViewController = v6->_existingSceneListContentViewController;
    v6->_existingSceneListContentViewController = v7;

    [(HUAccessorySceneListContentViewController *)v6->_existingSceneListContentViewController setIncludeTopMargin:0];
    [(HUAccessorySceneListContentViewController *)v6->_suggestedSceneListContentViewController setAnalyticsPresentationContext:@"accessory-scene-list"];
    v9 = [[HUAccessorySceneListContentViewController alloc] initWithServiceLikeItem:itemCopy contentSource:1 selectionType:0];
    suggestedSceneListContentViewController = v6->_suggestedSceneListContentViewController;
    v6->_suggestedSceneListContentViewController = v9;

    [(HUAccessorySceneListContentViewController *)v6->_suggestedSceneListContentViewController setIncludeTopMargin:0];
    [(HUAccessorySceneListContentViewController *)v6->_suggestedSceneListContentViewController setAnalyticsPresentationContext:@"accessory-scene-list"];
    v11 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListViewTitle", @"HUAccessorySceneListViewTitle", 1);
    [(HUAccessorySceneListViewController *)v6 setTitle:v11];
  }

  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUAccessorySceneListViewController;
  [(HUItemTableViewController *)&v8 viewDidLoad];
  tableView = [(HUAccessorySceneListViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  existingSceneListContentViewController = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
  collectionView = [existingSceneListContentViewController collectionView];
  [collectionView setScrollEnabled:0];

  suggestedSceneListContentViewController = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
  collectionView2 = [suggestedSceneListContentViewController collectionView];
  [collectionView2 setScrollEnabled:0];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = cellCopy;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v13 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [v13 contentView];
    [contentView setBackgroundColor:clearColor2];

    itemManager = [(HUItemTableViewController *)self itemManager];
    existingScenesContentItem = [itemManager existingScenesContentItem];

    if (existingScenesContentItem == itemCopy)
    {
      existingSceneListContentViewController = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
    }

    else
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      suggestedScenesContentItem = [itemManager2 suggestedScenesContentItem];

      if (suggestedScenesContentItem != itemCopy)
      {
LABEL_7:
        latestResults = [itemCopy latestResults];
        v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v13 setAccessibilityIdentifier:v24];

        goto LABEL_8;
      }

      existingSceneListContentViewController = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
    }

    v22 = existingSceneListContentViewController;
    [v13 setViewController:existingSceneListContentViewController];

    goto LABEL_7;
  }

LABEL_8:
  v25.receiver = self;
  v25.super_class = HUAccessorySceneListViewController;
  [(HUItemTableViewController *)&v25 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (id)childViewControllersToPreload
{
  v3 = objc_opt_new();
  existingSceneListContentViewController = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
  [v3 na_safeAddObject:existingSceneListContentViewController];

  suggestedSceneListContentViewController = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
  [v3 na_safeAddObject:suggestedSceneListContentViewController];

  return v3;
}

@end
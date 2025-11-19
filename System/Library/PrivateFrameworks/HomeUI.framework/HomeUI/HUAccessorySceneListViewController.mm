@interface HUAccessorySceneListViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUAccessorySceneListViewController)initWithServiceLikeItem:(id)a3;
- (id)childViewControllersToPreload;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUAccessorySceneListViewController

- (HUAccessorySceneListViewController)initWithServiceLikeItem:(id)a3
{
  v4 = a3;
  v5 = [[HUAccessorySceneListItemManager alloc] initWithDelegate:self serviceLikeItem:v4];
  v13.receiver = self;
  v13.super_class = HUAccessorySceneListViewController;
  v6 = [(HUItemTableViewController *)&v13 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [[HUAccessorySceneListContentViewController alloc] initWithServiceLikeItem:v4 contentSource:0 selectionType:0];
    existingSceneListContentViewController = v6->_existingSceneListContentViewController;
    v6->_existingSceneListContentViewController = v7;

    [(HUAccessorySceneListContentViewController *)v6->_existingSceneListContentViewController setIncludeTopMargin:0];
    [(HUAccessorySceneListContentViewController *)v6->_suggestedSceneListContentViewController setAnalyticsPresentationContext:@"accessory-scene-list"];
    v9 = [[HUAccessorySceneListContentViewController alloc] initWithServiceLikeItem:v4 contentSource:1 selectionType:0];
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
  v3 = [(HUAccessorySceneListViewController *)self tableView];
  [v3 setSeparatorStyle:0];

  v4 = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
  v5 = [v4 collectionView];
  [v5 setScrollEnabled:0];

  v6 = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
  v7 = [v6 collectionView];
  [v7 setScrollEnabled:0];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [MEMORY[0x277D75348] clearColor];
    [v13 setBackgroundColor:v14];

    v15 = [MEMORY[0x277D75348] clearColor];
    v16 = [v13 contentView];
    [v16 setBackgroundColor:v15];

    v17 = [(HUItemTableViewController *)self itemManager];
    v18 = [v17 existingScenesContentItem];

    if (v18 == v11)
    {
      v21 = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
    }

    else
    {
      v19 = [(HUItemTableViewController *)self itemManager];
      v20 = [v19 suggestedScenesContentItem];

      if (v20 != v11)
      {
LABEL_7:
        v23 = [v11 latestResults];
        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v13 setAccessibilityIdentifier:v24];

        goto LABEL_8;
      }

      v21 = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
    }

    v22 = v21;
    [v13 setViewController:v21];

    goto LABEL_7;
  }

LABEL_8:
  v25.receiver = self;
  v25.super_class = HUAccessorySceneListViewController;
  [(HUItemTableViewController *)&v25 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (id)childViewControllersToPreload
{
  v3 = objc_opt_new();
  v4 = [(HUAccessorySceneListViewController *)self existingSceneListContentViewController];
  [v3 na_safeAddObject:v4];

  v5 = [(HUAccessorySceneListViewController *)self suggestedSceneListContentViewController];
  [v3 na_safeAddObject:v5];

  return v3;
}

@end
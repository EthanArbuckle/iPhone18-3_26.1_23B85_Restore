@interface HUMatterConnectedEcosystemDetailViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUMatterConnectedEcosystemDetailViewController)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
@end

@implementation HUMatterConnectedEcosystemDetailViewController

- (HUMatterConnectedEcosystemDetailViewController)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider
{
  ecosystemCopy = ecosystem;
  providerCopy = provider;
  v8 = [[HUMatterConnectedEcosystemDetailItemManager alloc] initWithConnectedEcosystem:ecosystemCopy connectedEcosystemItemProvider:providerCopy delegate:self];

  v13.receiver = self;
  v13.super_class = HUMatterConnectedEcosystemDetailViewController;
  v9 = [(HUItemTableViewController *)&v13 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    vendor = [ecosystemCopy vendor];
    name = [vendor name];
    [(HUMatterConnectedEcosystemDetailViewController *)v9 setTitle:name];
  }

  return v9;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = HUMatterConnectedEcosystemDetailViewController;
  [(HUItemTableViewController *)&v11 setupCell:cellCopy forItem:item indexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = cellCopy;
    [v9 setIconDisplayStyle:1];
    v10 = +[HUIconCellContentMetrics compactMetrics];
    [v9 setContentMetrics:v10];

    [v9 setDisableContinuousIconAnimation:1];
    [v9 setHideDescription:1];
  }
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  v4 = [(HUMatterConnectedEcosystemDetailViewController *)self navigationController:presentation];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

@end
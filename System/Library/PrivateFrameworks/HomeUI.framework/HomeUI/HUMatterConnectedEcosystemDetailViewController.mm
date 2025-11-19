@interface HUMatterConnectedEcosystemDetailViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMatterConnectedEcosystemDetailViewController)initWithConnectedEcosystem:(id)a3 connectedEcosystemItemProvider:(id)a4;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
@end

@implementation HUMatterConnectedEcosystemDetailViewController

- (HUMatterConnectedEcosystemDetailViewController)initWithConnectedEcosystem:(id)a3 connectedEcosystemItemProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HUMatterConnectedEcosystemDetailItemManager alloc] initWithConnectedEcosystem:v6 connectedEcosystemItemProvider:v7 delegate:self];

  v13.receiver = self;
  v13.super_class = HUMatterConnectedEcosystemDetailViewController;
  v9 = [(HUItemTableViewController *)&v13 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    v10 = [v6 vendor];
    v11 = [v10 name];
    [(HUMatterConnectedEcosystemDetailViewController *)v9 setTitle:v11];
  }

  return v9;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = HUMatterConnectedEcosystemDetailViewController;
  [(HUItemTableViewController *)&v11 setupCell:v8 forItem:a4 indexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [v9 setIconDisplayStyle:1];
    v10 = +[HUIconCellContentMetrics compactMetrics];
    [v9 setContentMetrics:v10];

    [v9 setDisableContinuousIconAnimation:1];
    [v9 setHideDescription:1];
  }
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = [(HUMatterConnectedEcosystemDetailViewController *)self navigationController:a3];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

@end
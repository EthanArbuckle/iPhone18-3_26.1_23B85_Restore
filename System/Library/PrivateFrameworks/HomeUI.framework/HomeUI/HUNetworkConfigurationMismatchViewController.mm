@interface HUNetworkConfigurationMismatchViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUNetworkConfigurationMismatchViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUNetworkConfigurationMismatchViewController)initWithProfiles:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUNetworkConfigurationMismatchViewController

- (HUNetworkConfigurationMismatchViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithProfiles_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationMismatchViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUNetworkConfigurationMismatchViewController)initWithProfiles:(id)a3
{
  v4 = a3;
  v5 = [[HUNetworkConfigurationMismatchItemManager alloc] initWithProfiles:v4 delegate:self];

  v8.receiver = self;
  v8.super_class = HUNetworkConfigurationMismatchViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 isItemNetworkConfigurationItem:v6];

  if (v8)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchViewController.m" lineNumber:43 description:{@"Couldn't find a cell class for item: %@", v6}];

    v9 = 0;
  }

  return v9;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = HUNetworkConfigurationMismatchViewController;
  v9 = a4;
  [(HUItemTableViewController *)&v11 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUItemTableViewController *)self itemManager:v11.receiver];
  LODWORD(self) = [v10 isItemNetworkConfigurationItem:v9];

  if (self)
  {
    [v8 setHideIcon:1];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v23.receiver = self;
  v23.super_class = HUNetworkConfigurationMismatchViewController;
  [(HUItemTableViewController *)&v23 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  LODWORD(a5) = [v12 isItemNetworkConfigurationItem:v11];

  if (a5)
  {
    v13 = objc_opt_class();
    v14 = v11;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14;
      if (v15)
      {
        goto LABEL_9;
      }

      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v17 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
    }

    v16 = 0;
LABEL_9:

    v19 = v10;
    v20 = [v16 accessory];
    v21 = [v20 room];
    v22 = [v21 name];
    [v19 setDescriptionText:v22];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 isItemNetworkConfigurationItem:v9];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUNetworkConfigurationMismatchViewController;
    v12 = [(HUItemTableViewController *)&v14 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUNetworkConfigurationMismatchViewController;
  v5 = a4;
  v6 = a3;
  [(HUItemTableViewController *)&v7 tableView:v6 didSelectRowAtIndexPath:v5];
  [v6 deselectRowAtIndexPath:v5 animated:{1, v7.receiver, v7.super_class}];
}

@end
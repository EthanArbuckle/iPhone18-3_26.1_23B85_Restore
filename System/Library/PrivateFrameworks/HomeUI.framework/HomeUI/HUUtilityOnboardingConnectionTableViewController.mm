@interface HUUtilityOnboardingConnectionTableViewController
- (HUUtilityOnboardingConnectionTableViewController)initWithData:(id)data withItemManager:(id)manager tableViewStyle:(int64_t)style;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
@end

@implementation HUUtilityOnboardingConnectionTableViewController

- (HUUtilityOnboardingConnectionTableViewController)initWithData:(id)data withItemManager:(id)manager tableViewStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = HUUtilityOnboardingConnectionTableViewController;
  return [(HUItemTableViewController *)&v6 initWithItemManager:manager tableViewStyle:style];
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUUtilityOnboardingConnectionTableViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v14 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = cellCopy;
  latestResults = [itemCopy latestResults];

  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v10 setValueText:v12];

  [v10 setHideIcon:1];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SubscriptionInfoCell"];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v10 setBackgroundColor:tertiarySystemFillColor];
}

@end
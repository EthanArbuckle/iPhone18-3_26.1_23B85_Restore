@interface HUUtilityOnboardingConnectionTableViewController
- (HUUtilityOnboardingConnectionTableViewController)initWithData:(id)a3 withItemManager:(id)a4 tableViewStyle:(int64_t)a5;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
@end

@implementation HUUtilityOnboardingConnectionTableViewController

- (HUUtilityOnboardingConnectionTableViewController)initWithData:(id)a3 withItemManager:(id)a4 tableViewStyle:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = HUUtilityOnboardingConnectionTableViewController;
  return [(HUItemTableViewController *)&v6 initWithItemManager:a4 tableViewStyle:a5];
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HUUtilityOnboardingConnectionTableViewController;
  v9 = a4;
  [(HUItemTableViewController *)&v14 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = v8;
  v11 = [v9 latestResults];

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v10 setValueText:v12];

  [v10 setHideIcon:1];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SubscriptionInfoCell"];
  v13 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v10 setBackgroundColor:v13];
}

@end
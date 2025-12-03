@interface HUAccessorySettingsDetailsAnalyticsDataViewController
- (HUAccessorySettingsDetailsAnalyticsDataViewController)initWithAccessoryGroupItem:(id)item;
- (void)viewDidLoad;
@end

@implementation HUAccessorySettingsDetailsAnalyticsDataViewController

- (HUAccessorySettingsDetailsAnalyticsDataViewController)initWithAccessoryGroupItem:(id)item
{
  v4.receiver = self;
  v4.super_class = HUAccessorySettingsDetailsAnalyticsDataViewController;
  return [(HUAccessorySettingsDetailsAnalyticsDataViewController *)&v4 init];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUAccessorySettingsDetailsAnalyticsDataViewController;
  [(HUAccessorySettingsDetailsAnalyticsDataViewController *)&v21 viewDidLoad];
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  view = [(HUAccessorySettingsDetailsAnalyticsDataViewController *)self view];
  [view setBackgroundColor:systemBlackColor];

  v5 = objc_opt_new();
  [v5 setText:@"👷UNDER CONSTRUCTION👷\nENGINEERING UI"];
  [v5 setNumberOfLines:2];
  [v5 setTextAlignment:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v5 setTextColor:systemWhiteColor];

  [v5 sizeToFit];
  view2 = [(HUAccessorySettingsDetailsAnalyticsDataViewController *)self view];
  [view2 addSubview:v5];

  [v5 frame];
  v10 = v9;
  v12 = v11;
  view3 = [(HUAccessorySettingsDetailsAnalyticsDataViewController *)self view];
  [view3 frame];
  v15 = v14 * 0.5 - v10 * 0.5;
  v16 = ceilf(v15);

  view4 = [(HUAccessorySettingsDetailsAnalyticsDataViewController *)self view];
  [view4 frame];
  v19 = v18 * 0.5 - v12 * 0.5;
  v20 = ceilf(v19);

  [v5 setFrame:{v16, v20, v10, v12}];
}

@end
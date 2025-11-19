@interface WDElectrocardiogramUpgradeView
- (id)bodyString;
- (id)buttonTitleString;
- (id)createHeroView;
- (id)titleString;
@end

@implementation WDElectrocardiogramUpgradeView

- (id)createHeroView
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = MEMORY[0x277D755B8];
  v5 = WDBundle();
  v6 = [v4 imageNamed:@"setup-watch-Cinnamon" inBundle:v5];
  v7 = [v3 initWithImage:v6];

  v24 = v7;
  [v2 addSubview:v7];
  [v7 hk_alignConstraintsWithView:v2];
  v8 = [objc_alloc(MEMORY[0x277D130B0]) initWithFrame:0 isLargeDevice:{18.0, 45.0, 80.0, 98.0}];
  v9 = [MEMORY[0x277D75348] blackColor];
  [v8 setBackgroundColor:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTimeRemaining:11.0];
  [v2 addSubview:v8];
  v20 = MEMORY[0x277CCAAD0];
  v23 = [v8 leftAnchor];
  v22 = [v2 leftAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:18.0];
  v25[0] = v21;
  v10 = [v8 topAnchor];
  v11 = [v2 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:45.0];
  v25[1] = v12;
  v13 = [v8 widthAnchor];
  v14 = [v13 constraintEqualToConstant:80.0];
  v25[2] = v14;
  v15 = [v8 heightAnchor];
  v16 = [v15 constraintEqualToConstant:98.0];
  v25[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v20 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)titleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_UPGRADE_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

- (id)bodyString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_UPGRADE_BODY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

- (id)buttonTitleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_UPGRADE_BUTTON_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

@end
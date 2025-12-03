@interface CSTemperatureWarningViewController
- (CSTemperatureWarningViewController)initWithThermalStatusProvider:(id)provider;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)handleSecondaryActionForView:(id)view;
- (void)viewDidLoad;
@end

@implementation CSTemperatureWarningViewController

- (CSTemperatureWarningViewController)initWithThermalStatusProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CSTemperatureWarningViewController;
  v6 = [(CSTemperatureWarningViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thermalStatusProvider, provider);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  view = [(CSModalViewControllerBase *)self view];
  [view setShowsDateView:0];
  v5 = [v3 localizedStringForKey:@"IPHONE_TOO_HOT" value:&stru_28302FDA0 table:@"CoverSheet"];
  [view setTitleText:v5];

  v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THERMAL_ALERT_STRING"];
  v7 = [v3 localizedStringForKey:v6 value:&stru_28302FDA0 table:@"CoverSheet"];
  [view setSubtitleText:v7];

  v8 = [v3 localizedStringForKey:@"DASHBOARD_BLOCK_EMERGENCY_BUTTON" value:&stru_28302FDA0 table:@"CoverSheet"];
  [view setSecondaryActionButtonText:v8];

  v9 = [objc_opt_class() thermometerGlyphForThermalStatus:{(-[CSThermalStatusProviding thermalStatus](self->_thermalStatusProvider, "thermalStatus") >> 63) | 1}];
  [view setImage:v9];

  v10.receiver = self;
  v10.super_class = CSTemperatureWarningViewController;
  [(CSModalViewControllerBase *)&v10 viewDidLoad];
}

- (void)aggregateAppearance:(id)appearance
{
  v19.receiver = self;
  v19.super_class = CSTemperatureWarningViewController;
  appearanceCopy = appearance;
  [(CSModalViewControllerBase *)&v19 aggregateAppearance:appearanceCopy];
  v5 = [CSComponent statusBar:v19.receiver];
  v6 = [v5 priority:80];
  v7 = [v6 hidden:0];
  [appearanceCopy addComponent:v7];

  v8 = +[CSComponent homeAffordance];
  v9 = [v8 priority:80];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v11 = [v9 identifier:appearanceIdentifier];
  v12 = [v11 hidden:1];
  [appearanceCopy addComponent:v12];

  v13 = +[CSComponent proudLock];
  v14 = [v13 priority:80];
  v15 = [v14 hidden:1];
  [appearanceCopy addComponent:v15];

  v16 = +[CSComponent whitePoint];
  v17 = [v16 priority:80];
  v18 = [v17 hidden:1];
  [appearanceCopy addComponent:v18];
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSTemperatureWarningViewController;
  behaviorCopy = behavior;
  [(CSModalViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:{1048632, v4.receiver, v4.super_class}];
}

- (void)handleSecondaryActionForView:(id)view
{
  v4 = [CSAction actionWithType:2];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

@end
@interface WDAtrialFibrillationDetectionSetupView
- (id)bodyString;
- (id)buttonTitleString;
- (id)createHeroView;
- (id)titleString;
@end

@implementation WDAtrialFibrillationDetectionSetupView

- (id)createHeroView
{
  v2 = objc_alloc_init(MEMORY[0x277D130B8]);

  return v2;
}

- (id)titleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SETUP_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

  return v3;
}

- (id)bodyString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SETUP_BODY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

  return v3;
}

- (id)buttonTitleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SETUP_BUTTON_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

  return v3;
}

@end
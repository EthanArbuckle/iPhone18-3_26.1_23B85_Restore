@interface HRSimulatedAtrialFibrillationNotificationView
- (HRSimulatedAtrialFibrillationNotificationView)init;
@end

@implementation HRSimulatedAtrialFibrillationNotificationView

- (HRSimulatedAtrialFibrillationNotificationView)init
{
  v13.receiver = self;
  v13.super_class = HRSimulatedAtrialFibrillationNotificationView;
  v2 = [(HRSimulatedAtrialFibrillationNotificationView *)&v13 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  hrui_heartRateIconImage = [MEMORY[0x277D755B8] hrui_heartRateIconImage];
  v5 = HRHeartRhythmUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"ATRIAL_FIBRILLATION_QUICK_LOOK_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v7 = HRHeartRhythmUIFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ATRIAL_FIBRILLATION_QUICK_LOOK_SUBTITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  localizedUppercaseString = [v8 localizedUppercaseString];

  v10 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v11 = [objc_alloc(MEMORY[0x277D12A78]) initWithIconImage:hrui_heartRateIconImage titleText:v6 detailText:localizedUppercaseString tintColor:v10];

  return v11;
}

@end
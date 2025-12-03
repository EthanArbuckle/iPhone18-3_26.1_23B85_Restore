@interface HKSleepSchedule(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKSleepSchedule(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  hk_localizedWeekdaysList = [self hk_localizedWeekdaysList];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_SCHEDULE_DAYS_ACTIVE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v8 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D50);
  [v4 addText:hk_localizedWeekdaysList detail:v7 baseIdentifier:v8];

  hk_localizedBedtime = [self hk_localizedBedtime];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"SLEEP_SCHEDULE_BEDTIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v12 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D68);
  [v4 addText:hk_localizedBedtime detail:v11 baseIdentifier:v12];

  hk_localizedWakeTime = [self hk_localizedWakeTime];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SLEEP_SCHEDULE_WAKETIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v16 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D80);
  [v4 addText:hk_localizedWakeTime detail:v15 baseIdentifier:v16];

  v17.receiver = self;
  v17.super_class = &off_1F445C970;
  objc_msgSendSuper2(&v17, sel_addDetailValuesToSection_, v4);
}

@end
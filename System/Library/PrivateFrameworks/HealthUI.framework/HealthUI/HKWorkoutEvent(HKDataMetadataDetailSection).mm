@interface HKWorkoutEvent(HKDataMetadataDetailSection)
- (id)startDate;
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKWorkoutEvent(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v32 = HKDateFormatterFromTemplate(32);
  dateInterval = [self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [self dateInterval];
  endDate = [dateInterval2 endDate];
  v9 = [startDate isEqualToDate:endDate];

  if (v9)
  {
    dateInterval3 = [self dateInterval];
    startDate2 = [dateInterval3 startDate];
    v12 = [v32 stringFromDate:startDate2];

    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v15 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381BD0);
    [v4 addText:v12 detail:v14 baseIdentifier:v15];
  }

  else
  {
    v12 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
    [(HKTimePeriodWithSecondsNumberFormatter *)v12 setAllowMillisecondPrecision:1];
    v16 = MEMORY[0x1E696AD98];
    dateInterval4 = [self dateInterval];
    [dateInterval4 duration];
    v18 = [v16 numberWithDouble:?];
    v13 = [(HKTimePeriodWithSecondsNumberFormatter *)v12 stringFromNumber:v18 displayType:0 unitController:0];

    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = [v19 localizedStringForKey:@"DURATION" value:? table:?];
    v21 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381BE8);
    [v4 addText:v13 detail:v20 baseIdentifier:v21];

    dateInterval5 = [self dateInterval];
    startDate3 = [dateInterval5 startDate];
    v14 = [v32 stringFromDate:startDate3];

    dateInterval6 = [self dateInterval];
    endDate2 = [dateInterval6 endDate];
    v15 = [v32 stringFromDate:endDate2];

    v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v27 = [v26 localizedStringForKey:@"START_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v28 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C00);
    [v4 addText:v14 detail:v27 baseIdentifier:v28];

    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v29 localizedStringForKey:@"END_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v31 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C18);
    [v4 addText:v15 detail:v30 baseIdentifier:v31];

    v4 = v29;
  }
}

- (id)startDate
{
  dateInterval = [self dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

@end
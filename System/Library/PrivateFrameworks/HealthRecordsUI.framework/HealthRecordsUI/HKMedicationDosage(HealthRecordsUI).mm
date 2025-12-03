@interface HKMedicationDosage(HealthRecordsUI)
- (id)hr_dosageTimePeriodString;
@end

@implementation HKMedicationDosage(HealthRecordsUI)

- (id)hr_dosageTimePeriodString
{
  timingPeriod = [self timingPeriod];

  if (!timingPeriod)
  {
    v9 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TEXT_NO_DATE");
    goto LABEL_13;
  }

  timingPeriod2 = [self timingPeriod];
  startDate = [timingPeriod2 startDate];
  hr_dateWithoutTime = [startDate hr_dateWithoutTime];

  timingPeriod3 = [self timingPeriod];
  endDate = [timingPeriod3 endDate];
  hr_dateWithoutTime2 = [endDate hr_dateWithoutTime];

  if (!hr_dateWithoutTime2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = HRLocalizedString(@"MEDICAL_RECORD_STARTED_ON_DATE%1$@");
    [v10 stringWithFormat:v11, hr_dateWithoutTime];
    v9 = LABEL_9:;
LABEL_11:

    goto LABEL_12;
  }

  if (!hr_dateWithoutTime)
  {
    v12 = MEMORY[0x1E696AEC0];
    v11 = HRLocalizedString(@"MEDICAL_RECORD_ENDED_ON_DATE%1$@");
    [v12 stringWithFormat:v11, hr_dateWithoutTime2];
    goto LABEL_9;
  }

  if (![hr_dateWithoutTime isEqualToString:hr_dateWithoutTime2])
  {
    v13 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v11 localizedStringForKey:@"DATE_RANGE %@ %@" value:&stru_1F4D16E38 table:@"HealthUI-Localizable"];
    v9 = [v13 stringWithFormat:v14, hr_dateWithoutTime, hr_dateWithoutTime2];

    goto LABEL_11;
  }

  v9 = hr_dateWithoutTime;
LABEL_12:

LABEL_13:

  return v9;
}

@end
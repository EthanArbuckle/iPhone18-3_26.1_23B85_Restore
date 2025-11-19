@interface UNNotificationAction(HKMenstrualCycles)
+ (id)hkmc_actionWithIdentifier:()HKMenstrualCycles;
@end

@implementation UNNotificationAction(HKMenstrualCycles)

+ (id)hkmc_actionWithIdentifier:()HKMenstrualCycles
{
  v3 = a3;
  if ([v3 isEqualToString:@"OpenAddPeriodCalendar"])
  {
    v4 = MEMORY[0x277CE1F80];
    v5 = HKMCLocalizedString(@"NOTIFICATION_ACTION_TITLE_ADD_PERIOD");
    v6 = v4;
    v7 = v3;
    v8 = v5;
    v9 = 4;
LABEL_8:
    v12 = [v6 actionWithIdentifier:v7 title:v8 options:v9];

    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"PeriodNotEnded"])
  {
    v10 = MEMORY[0x277CE1F80];
    v11 = @"NOTIFICATION_ACTION_TITLE_PERIOD_NOT_ENDED";
LABEL_7:
    v5 = HKMCLocalizedString(v11);
    v6 = v10;
    v7 = v3;
    v8 = v5;
    v9 = 1;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"PeriodNotStarted"])
  {
    v10 = MEMORY[0x277CE1F80];
    v11 = @"NOTIFICATION_ACTION_TITLE_PERIOD_NOT_STARTED";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"OpenPregnancyOnboarding"])
  {
    v12 = [MEMORY[0x277CE1F80] actionWithIdentifier:v3 title:@"LOCALIZE ME: PREGNANCY ONBOARDING" options:4];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

@end
@interface UNNotificationRequest(HKMenstrualCycles)
+ (id)_hkmc_notificationRequestWithCategory:()HKMenstrualCycles body:title:expirationDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:;
+ (id)_hkmc_notificationRequestWithContent:()HKMenstrualCycles;
+ (id)_hkmc_requestForCategoryIdentifier:()HKMenstrualCycles startDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:;
+ (id)hkmc_requestForCategoryIdentifier:()HKMenstrualCycles fertileWindowEndDayIndex:;
+ (id)hkmc_requestForCategoryIdentifier:()HKMenstrualCycles fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:;
@end

@implementation UNNotificationRequest(HKMenstrualCycles)

+ (id)hkmc_requestForCategoryIdentifier:()HKMenstrualCycles fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a3;
  date = [v8 date];
  v12 = [self _hkmc_requestForCategoryIdentifier:v10 startDate:date fertileWindowEndDayIndex:a4 daysShiftedFromCalendarMethod:v9];

  return v12;
}

+ (id)hkmc_requestForCategoryIdentifier:()HKMenstrualCycles fertileWindowEndDayIndex:
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  date = [v6 date];
  v9 = [self _hkmc_requestForCategoryIdentifier:v7 startDate:date fertileWindowEndDayIndex:a4 daysShiftedFromCalendarMethod:0];

  return v9;
}

+ (id)_hkmc_requestForCategoryIdentifier:()HKMenstrualCycles startDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v10;
  v14 = v12;
  if ([v13 isEqualToString:@"MenstrualCyclesAppPlugin.AfterPeriodStart"])
  {
    v15 = @"NOTIFICATION_AFTER_PERIOD_START_BODY";
LABEL_9:
    v16 = HKMCLocalizedString(v15);
LABEL_10:
    v17 = v16;
    goto LABEL_11;
  }

  if ([v13 isEqualToString:@"MenstrualCyclesAppPlugin.AfterLoggedPeriodEnd"])
  {
    v15 = @"NOTIFICATION_AFTER_LOGGED_PERIOD_END_BODY";
    goto LABEL_9;
  }

  if ([v13 isEqualToString:@"MenstrualCyclesAppPlugin.AfterUnloggedPeriodEnd"])
  {
    v15 = @"NOTIFICATION_AFTER_UNLOGGED_PERIOD_END_BODY";
    goto LABEL_9;
  }

  if ([v13 isEqualToString:@"MenstrualCyclesAppPlugin.BeforePeriodStart1Day"])
  {
    v15 = @"NOTIFICATION_BEFORE_PERIOD_START_TOMORROW_BODY";
    goto LABEL_9;
  }

  if ([v13 isEqualToString:@"MenstrualCyclesAppPlugin.UnconfirmedDeviation"])
  {
    v16 = HKMCLocalizedStringSelene(@"NOTIFICATION_UNCONFIRMED_DEVIATION_BODY");
    goto LABEL_10;
  }

  selfCopy = self;
  v38 = HKMCBeforePeriodStartDaysNotificationCategories();
  v39 = [v38 containsObject:v13];

  if (v39)
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = @"NOTIFICATION_BEFORE_PERIOD_START_DAYS_BODY_%ld";
LABEL_50:
    hk_gregorianCalendar = HKMCLocalizedString(v41);
    v17 = [v40 localizedStringWithFormat:hk_gregorianCalendar, HKMCNotificationDateComponentScalarFromCategory(v13)];
LABEL_51:

LABEL_52:
    self = selfCopy;
    goto LABEL_11;
  }

  v42 = HKMCBeforePeriodStartWeeksNotificationCategories();
  v43 = [v42 containsObject:v13];

  if (v43)
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = @"NOTIFICATION_BEFORE_PERIOD_START_WEEKS_BODY_%ld";
    goto LABEL_50;
  }

  v46 = HKMCBeforeFertileWindowStartDaysNotificationCategories();
  v47 = [v46 containsObject:v13];

  if (v47)
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = @"NOTIFICATION_BEFORE_FERTILE_WINDOW_START_DAYS_BODY_%ld";
    goto LABEL_50;
  }

  v49 = [@"MenstrualCyclesAppPlugin.UpdatedFertileWindowEnd" isEqualToString:v13];
  if (a5 >= 1 && v49)
  {
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v71 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:a5 atHour:20 calendar:hk_gregorianCalendar];
    v73 = 0;
    v50 = [MEMORY[0x277CCA968] hkmc_shouldUseRelativeFormatForFertileWindowEndDate:v71 gregorianCalendar:hk_gregorianCalendar dateFormatArgumentOut:&v73];
    v51 = v73;
    v52 = MEMORY[0x277CCACA8];
    if (v50)
    {
      v53 = @"NOTIFICATION_UPDATE_FERTILE_WINDOW_BODY_RELATIVE_%@";
    }

    else
    {
      v53 = @"NOTIFICATION_UPDATE_FERTILE_WINDOW_BODY_FULL_%@";
    }

    v54 = HKMCLocalizedString(v53);
    v55 = [v52 stringWithFormat:v54, v51];

    v17 = v55;
    goto LABEL_51;
  }

  v56 = [@"MenstrualCyclesAppPlugin.OvulationConfirmed" isEqualToString:v13];
  v17 = 0;
  if (a5 < 1)
  {
    goto LABEL_52;
  }

  self = selfCopy;
  if (v56)
  {
    integerValue = [v14 integerValue];
    hk_gregorianCalendar2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v72 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:a5 atHour:20 calendar:hk_gregorianCalendar2];
    v73 = 0;
    v58 = [MEMORY[0x277CCA968] hkmc_shouldUseRelativeFormatForFertileWindowEndDate:v72 gregorianCalendar:hk_gregorianCalendar2 dateFormatArgumentOut:&v73];
    v59 = v73;
    v60 = MEMORY[0x277CCACA8];
    v61 = @"NOTIFICATION_OVULATION_CONFIRMED_BODY_RELATIVE_%@";
    if (integerValue)
    {
      v61 = @"NOTIFICATION_SHIFTED_OVULATION_CONFIRMED_BODY_RELATIVE_%@";
    }

    v62 = @"NOTIFICATION_OVULATION_CONFIRMED_BODY_FULL_%@";
    if (integerValue)
    {
      v62 = @"NOTIFICATION_SHIFTED_OVULATION_CONFIRMED_BODY_FULL_%@";
    }

    v63 = v58 == 0;
    self = selfCopy;
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = v61;
    }

    v65 = HKMCLocalizedString(v64);
    v66 = [v60 stringWithFormat:v65, v59];

    v17 = v66;
  }

LABEL_11:

  v18 = v13;
  v19 = HKMCBeforePeriodStartNotificationCategories();
  v20 = [v19 containsObject:v18];

  if (v20)
  {
    v21 = @"NOTIFICATION_BEFORE_PERIOD_START_TITLE";
LABEL_19:
    v22 = HKMCLocalizedString(v21);
LABEL_20:
    v23 = v22;
    goto LABEL_21;
  }

  if ([@"MenstrualCyclesAppPlugin.AfterPeriodStart" isEqualToString:v18])
  {
    v21 = @"NOTIFICATION_AFTER_PERIOD_START_TITLE";
    goto LABEL_19;
  }

  if ([@"MenstrualCyclesAppPlugin.AfterLoggedPeriodEnd" isEqualToString:v18])
  {
    v21 = @"NOTIFICATION_AFTER_LOGGED_PERIOD_END_TITLE";
    goto LABEL_19;
  }

  if ([@"MenstrualCyclesAppPlugin.AfterUnloggedPeriodEnd" isEqualToString:v18])
  {
    v21 = @"NOTIFICATION_AFTER_UNLOGGED_PERIOD_END_TITLE";
    goto LABEL_19;
  }

  if ([@"MenstrualCyclesAppPlugin.UnconfirmedDeviation" isEqualToString:v18])
  {
    v22 = HKMCLocalizedStringSelene(@"NOTIFICATION_UNCONFIRMED_DEVIATION_TITLE");
    goto LABEL_20;
  }

  if ([@"MenstrualCyclesAppPlugin.OvulationConfirmed" isEqualToString:v18])
  {
    v21 = @"NOTIFICATION_OVULATION_CONFIRMED_TITLE";
    goto LABEL_19;
  }

  v44 = HKMCFertileWindowNotificationCategories();
  v45 = [v44 containsObject:v18];

  if (v45)
  {
    v21 = @"NOTIFICATION_BEFORE_FERTILE_WINDOW_START_TITLE";
    goto LABEL_19;
  }

  v23 = 0;
LABEL_21:

  if (!v17)
  {
    v28 = 0;
    goto LABEL_33;
  }

  v70 = v17;
  v24 = v18;
  v25 = v11;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleWatch])
  {
    v27 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v68 = v11;
  v29 = HKMCBeforePeriodStartDaysNotificationCategories();
  if ([v29 containsObject:v24])
  {
  }

  else
  {
    HKMCBeforeFertileWindowStartDaysNotificationCategories();
    selfCopy2 = self;
    v31 = v14;
    v33 = v32 = a5;
    v67 = [v33 containsObject:v24];

    a5 = v32;
    v14 = v31;
    self = selfCopy2;

    if (!v67)
    {
      goto LABEL_29;
    }
  }

  v34 = HKMCNotificationDateComponentScalarFromCategory(v24);
  if (v34 <= 6)
  {
    v35 = v34;
    mEMORY[0x277CCDD30] = [MEMORY[0x277CBEA80] currentCalendar];
    v27 = [mEMORY[0x277CCDD30] dateByAddingUnit:16 value:v35 toDate:v25 options:1024];
    v11 = v68;
    goto LABEL_31;
  }

LABEL_29:
  v27 = 0;
  v11 = v68;
LABEL_32:
  v17 = v70;

  v28 = [self _hkmc_notificationRequestWithCategory:v24 body:v70 title:v23 expirationDate:v27 fertileWindowEndDayIndex:a5 daysShiftedFromCalendarMethod:v14];

LABEL_33:

  return v28;
}

+ (id)_hkmc_notificationRequestWithCategory:()HKMenstrualCycles body:title:expirationDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:
{
  v2 = [MEMORY[0x277CE1F60] _hkmc_contentWithCategory:? body:? title:? expirationDate:? fertileWindowEndDayIndex:? daysShiftedFromCalendarMethod:?];
  v3 = [self _hkmc_notificationRequestWithContent:v2];

  return v3;
}

+ (id)_hkmc_notificationRequestWithContent:()HKMenstrualCycles
{
  v3 = MEMORY[0x277CE1FE0];
  v4 = a3;
  v5 = [v3 soundWithAlertType:25];
  [v4 setSound:v5];

  v6 = MEMORY[0x277CE1FC0];
  categoryIdentifier = [v4 categoryIdentifier];
  v8 = HKMCNotificationIdentifierForCategory(categoryIdentifier);
  v9 = [v6 requestWithIdentifier:v8 content:v4 trigger:0];

  return v9;
}

@end
@interface HFScheduleUtilities
+ (id)localizedDetailedStringForRule:(id)rule;
+ (id)localizedMainStringForRule:(id)rule;
+ (id)localizedStringForRule:(id)rule;
+ (id)localizedStringForSchedule:(id)schedule;
+ (id)localizedStringFromScheduleType:(unint64_t)type;
+ (id)sortedScheduleRules:(id)rules;
@end

@implementation HFScheduleUtilities

+ (id)localizedStringFromScheduleType:(unint64_t)type
{
  switch(type)
  {
    case 2uLL:
      v4 = @"HFScheduleType_Custom";
      goto LABEL_7;
    case 1uLL:
      v4 = @"HFScheduleType_SpecificDates";
      goto LABEL_7;
    case 0uLL:
      v4 = @"HFScheduleType_Always";
LABEL_7:
      v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
      goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleUtilities.m" lineNumber:26 description:{@"Unknown schedule type [%@]", v9}];

  v5 = @"Unknown";
LABEL_9:

  return v5;
}

+ (id)localizedStringForSchedule:(id)schedule
{
  v23 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v6 = scheduleCopy;
  if (scheduleCopy)
  {
    rules = [scheduleCopy rules];
    anyObject = [rules anyObject];

    isYearDayRule = [anyObject isYearDayRule];
    rules2 = [v6 rules];
    v11 = [rules2 count];

    if (v11 < 2)
    {
      v16 = [self localizedStringForRule:anyObject];
    }

    else
    {
      if (isYearDayRule)
      {
        v12 = @"HFSchedule_MultipleDates";
      }

      else
      {
        v12 = @"HFSchedule_MultipleTimes";
      }

      v16 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);
    }

    v15 = v16;
  }

  else
  {
    v13 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v19 = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ No schedule provided. Returning default string with assumption that access is always allowed.", &v19, 0x16u);
    }

    v15 = [self localizedStringForRule:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)localizedStringForRule:(id)rule
{
  v26 = *MEMORY[0x277D85DE8];
  ruleCopy = rule;
  v6 = ruleCopy;
  if (!ruleCopy)
  {
    v9 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ No rule provided. Returning default string with assumption that access is always allowed.", buf, 0x16u);
    }

    selfCopy3 = self;
    v8 = 0;
    goto LABEL_7;
  }

  if ([ruleCopy isYearDayRule])
  {
    selfCopy3 = self;
    v8 = v6;
LABEL_7:
    v11 = [selfCopy3 localizedMainStringForRule:v8];
    goto LABEL_8;
  }

  if ([v6 isWeekDayRule])
  {
    v14 = [self localizedMainStringForRule:v6];
    v21 = [self localizedDetailedStringForRule:v6];
    v11 = HFLocalizedStringWithFormat(@"HFScheduleRuleTimeInterval_FormatString", @"%@%@", v15, v16, v17, v18, v19, v20, v14);
  }

  else
  {
    v11 = &stru_2824B1A78;
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)localizedMainStringForRule:(id)rule
{
  v41 = *MEMORY[0x277D85DE8];
  ruleCopy = rule;
  v6 = ruleCopy;
  if (!ruleCopy)
  {
    v14 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ No rule provided. Returning default main string with assumption that access is always allowed.", buf, 0x16u);
    }

    v16 = @"HFScheduleType_Always";
    goto LABEL_8;
  }

  if ([ruleCopy isYearDayRule])
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v7 setDateStyle:2];
    [v7 setTimeStyle:0];
    yearDayRule = [v6 yearDayRule];
    validFrom = [yearDayRule validFrom];

    yearDayRule2 = [v6 yearDayRule];
    validUntil = [yearDayRule2 validUntil];

    hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v13 = [hf_sharedCalendar isDateInToday:validFrom];

    if (v13)
    {
      _HFLocalizedStringWithDefaultValue(@"HFScheduleRuleDate_Today", @"HFScheduleRuleDate_Today", 1);
    }

    else
    {
      [v7 stringFromDate:validFrom];
    }
    v18 = ;
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v20 = [distantFuture isEqualToDate:validUntil];

    if (v20)
    {
      _HFLocalizedStringWithDefaultValue(@"HFScheduleRuleDate_Never", @"HFScheduleRuleDate_Never", 1);
    }

    else
    {
      [v7 stringFromDate:validUntil];
    }
    v36 = ;
    v17 = HFLocalizedStringWithFormat(@"HFScheduleRuleDateInterval_FormatString", @"%@%@", v21, v22, v23, v24, v25, v26, v18);

    goto LABEL_18;
  }

  if (![v6 isWeekDayRule])
  {
    v17 = &stru_2824B1A78;
    goto LABEL_19;
  }

  if ([v6 isAllDayWeekDayRule])
  {
    v16 = @"HFScheduleRuleTime_AllDay";
LABEL_8:
    v17 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
    goto LABEL_19;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA978]);
  [v7 setDateStyle:0];
  [v7 setTimeStyle:1];
  hf_sharedCalendar2 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  weekDayRule = [v6 weekDayRule];
  startTime = [weekDayRule startTime];
  validFrom = [hf_sharedCalendar2 dateFromComponents:startTime];

  hf_sharedCalendar3 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  weekDayRule2 = [v6 weekDayRule];
  endTime = [weekDayRule2 endTime];
  v35 = [hf_sharedCalendar3 dateFromComponents:endTime];

  v17 = [v7 stringFromDate:validFrom toDate:v35];

LABEL_18:
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)localizedDetailedStringForRule:(id)rule
{
  v19 = *MEMORY[0x277D85DE8];
  ruleCopy = rule;
  v6 = ruleCopy;
  if (ruleCopy)
  {
    if ([ruleCopy isYearDayRule])
    {
      v7 = _HFLocalizedStringWithDefaultValue(@"HFScheduleRuleTime_AllDay", @"HFScheduleRuleTime_AllDay", 1);
    }

    else if ([v6 isWeekDayRule])
    {
      weekDayRule = [v6 weekDayRule];
      [weekDayRule daysOfTheWeek];
      v12 = HMDaysOfTheWeekToDateComponents();

      v7 = [MEMORY[0x277CD1EB0] hf_recurrenceNaturalLanguageStringWithRecurrences:v12 isEditor:0];
    }

    else
    {
      v7 = &stru_2824B1A78;
    }

    v10 = v7;
  }

  else
  {
    v8 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v15 = 138412546;
      selfCopy = self;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ No rule provided. Returning empty detailed string.", &v15, 0x16u);
    }

    v10 = &stru_2824B1A78;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sortedScheduleRules:(id)rules
{
  rulesCopy = rules;
  sortComparatorForScheduleRules = [self sortComparatorForScheduleRules];
  v6 = [rulesCopy sortedArrayUsingComparator:sortComparatorForScheduleRules];

  return v6;
}

uint64_t __53__HFScheduleUtilities_sortComparatorForScheduleRules__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!(v8 | v11))
  {
    objc_opt_class();
    v12 = v6;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    objc_opt_class();
    v15 = v9;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v8 = [v14 rule];
    v11 = [v17 rule];
  }

  if ([v8 isYearDayRule] && objc_msgSend(v11, "isYearDayRule"))
  {
    v18 = [v8 yearDayRule];
    v19 = [v11 yearDayRule];
    v20 = [v18 validFrom];
    v21 = [v19 validFrom];
    v22 = [v20 compare:v21];

    if (v22)
    {
LABEL_26:

      goto LABEL_27;
    }

    v23 = [v18 validUntil];
    v24 = [v19 validUntil];
    v25 = [v23 compare:v24];
    goto LABEL_22;
  }

  if ([v8 isWeekDayRule] && objc_msgSend(v11, "isWeekDayRule"))
  {
    v18 = [v8 weekDayRule];
    v19 = [v11 weekDayRule];
    v26 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v27 = [v18 startTime];
    v28 = [v26 dateFromComponents:v27];

    v29 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v30 = [v19 startTime];
    v24 = [v29 dateFromComponents:v30];

    v23 = v28;
    v25 = [v28 compare:v24];
    if (!v25)
    {
      v31 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
      [v18 endTime];
      v32 = v38 = v28;
      v37 = [v31 dateFromComponents:v32];

      v33 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
      v34 = [v19 endTime];
      v36 = [v33 dateFromComponents:v34];

      v23 = v38;
      v22 = [v37 compare:v36];

      goto LABEL_25;
    }

LABEL_22:
    v22 = v25;
LABEL_25:

    goto LABEL_26;
  }

  v22 = 1;
LABEL_27:

  return v22;
}

@end
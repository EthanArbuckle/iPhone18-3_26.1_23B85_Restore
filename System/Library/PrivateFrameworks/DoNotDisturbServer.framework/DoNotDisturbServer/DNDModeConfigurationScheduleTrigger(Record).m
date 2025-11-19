@interface DNDModeConfigurationScheduleTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationScheduleTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = a3;
  v18 = [v3 bs_safeNumberForKey:@"timePeriodStartTimeHour"];
  v4 = [v3 bs_safeNumberForKey:@"timePeriodStartTimeMinute"];
  v5 = [v3 bs_safeNumberForKey:@"timePeriodEndTimeHour"];
  v6 = [v3 bs_safeNumberForKey:@"timePeriodEndTimeMinute"];
  v7 = [v3 bs_safeNumberForKey:@"timePeriodWeekdays"];
  v8 = [v3 bs_safeNumberForKey:@"creationDate"];
  v9 = [v3 bs_safeNumberForKey:@"enabledSetting"];

  v10 = [v9 unsignedIntegerValue];
  v11 = objc_alloc_init(MEMORY[0x277D05A60]);
  [v11 setHour:{objc_msgSend(v18, "unsignedIntegerValue")}];
  [v11 setMinute:{objc_msgSend(v4, "unsignedIntegerValue")}];
  v12 = objc_alloc_init(MEMORY[0x277D05A60]);
  [v12 setHour:{objc_msgSend(v5, "unsignedIntegerValue")}];
  [v12 setMinute:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v13 = objc_alloc_init(MEMORY[0x277D05A68]);
  [v13 setStartTime:v11];
  [v13 setEndTime:v12];
  [v13 setWeekdays:{objc_msgSend(v7, "integerValue")}];
  v14 = MEMORY[0x277CBEAA8];
  [v8 doubleValue];
  v15 = [v14 dateWithTimeIntervalSince1970:?];
  v16 = [objc_alloc(MEMORY[0x277D059C0]) initWithTimePeriod:v13 creationDate:v15 enabledSetting:v10];

  return v16;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v29[8] = *MEMORY[0x277D85DE8];
  v29[0] = @"DNDModeConfigurationScheduleTrigger";
  v28[0] = @"class";
  v28[1] = @"enabledSetting";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "enabledSetting")}];
  v29[1] = v27;
  v28[2] = @"timePeriodStartTimeHour";
  v2 = MEMORY[0x277CCABB0];
  v26 = [a1 timePeriod];
  v25 = [v26 startTime];
  v24 = [v2 numberWithUnsignedInteger:{objc_msgSend(v25, "hour")}];
  v29[2] = v24;
  v28[3] = @"timePeriodStartTimeMinute";
  v3 = MEMORY[0x277CCABB0];
  v23 = [a1 timePeriod];
  v22 = [v23 startTime];
  v21 = [v3 numberWithUnsignedInteger:{objc_msgSend(v22, "minute")}];
  v29[3] = v21;
  v28[4] = @"timePeriodEndTimeHour";
  v4 = MEMORY[0x277CCABB0];
  v20 = [a1 timePeriod];
  v5 = [v20 endTime];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "hour")}];
  v29[4] = v6;
  v28[5] = @"timePeriodEndTimeMinute";
  v7 = MEMORY[0x277CCABB0];
  v8 = [a1 timePeriod];
  v9 = [v8 endTime];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "minute")}];
  v29[5] = v10;
  v28[6] = @"timePeriodWeekdays";
  v11 = MEMORY[0x277CCABB0];
  v12 = [a1 timePeriod];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "weekdays")}];
  v29[6] = v13;
  v28[7] = @"creationDate";
  v14 = MEMORY[0x277CCABB0];
  v15 = [a1 creationDate];
  [v15 timeIntervalSince1970];
  v16 = [v14 numberWithDouble:?];
  v29[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
@interface NSDateInterval(HealthHearingDaemon)
+ (id)hd_hearingSevenDayDoseLimitIntervalForNowDate:()HealthHearingDaemon;
+ (id)hd_hearingSevenDayLimitIntervalWithEndDate:()HealthHearingDaemon;
+ (id)hd_hearingSevenDayLimitIntervalWithStartDate:()HealthHearingDaemon earliestStartDate:boundedInterval:;
@end

@implementation NSDateInterval(HealthHearingDaemon)

+ (id)hd_hearingSevenDayLimitIntervalWithStartDate:()HealthHearingDaemon earliestStartDate:boundedInterval:
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    +[NSDateInterval(HealthHearingDaemon) hd_hearingSevenDayLimitIntervalWithStartDate:earliestStartDate:boundedInterval:];
  }

  if ([v9 hk_isAfterDate:v8])
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  if (a5)
  {
    [v8 dateByAddingTimeInterval:608400.0];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v12 = ;
  if ([v11 hk_isAfterDate:v12])
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [NSDateInterval(HealthHearingDaemon) hd_hearingSevenDayLimitIntervalWithStartDate:v9 earliestStartDate:v8 boundedInterval:v13];
    }

    v14 = [[a1 alloc] initWithStartDate:v8 duration:608400.0];
  }

  else
  {
    v14 = [[a1 alloc] initWithStartDate:v11 endDate:v12];
  }

  v15 = v14;

  return v15;
}

+ (id)hd_hearingSevenDayLimitIntervalWithEndDate:()HealthHearingDaemon
{
  v4 = a3;
  if (!v4)
  {
    +[NSDateInterval(HealthHearingDaemon) hd_hearingSevenDayLimitIntervalWithEndDate:];
  }

  v5 = [v4 dateByAddingTimeInterval:-604800.0];
  v6 = [[a1 alloc] initWithStartDate:v5 endDate:v4];

  return v6;
}

+ (id)hd_hearingSevenDayDoseLimitIntervalForNowDate:()HealthHearingDaemon
{
  v4 = a3;
  if (!v4)
  {
    +[NSDateInterval(HealthHearingDaemon) hd_hearingSevenDayDoseLimitIntervalForNowDate:];
  }

  v5 = [v4 dateByAddingTimeInterval:3600.0];
  v6 = [v4 dateByAddingTimeInterval:-604800.0];
  v7 = [[a1 alloc] initWithStartDate:v6 endDate:v5];
  [v7 duration];
  if (v8 != 608400.0)
  {
    +[NSDateInterval(HealthHearingDaemon) hd_hearingSevenDayDoseLimitIntervalForNowDate:];
  }

  return v7;
}

+ (void)hd_hearingSevenDayLimitIntervalWithStartDate:()HealthHearingDaemon earliestStartDate:boundedInterval:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

+ (void)hd_hearingSevenDayLimitIntervalWithStartDate:()HealthHearingDaemon earliestStartDate:boundedInterval:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_251764000, log, OS_LOG_TYPE_FAULT, "earliestStartDate (%@) is more than 169 hours past startDate (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)hd_hearingSevenDayLimitIntervalWithEndDate:()HealthHearingDaemon .cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

+ (void)hd_hearingSevenDayDoseLimitIntervalForNowDate:()HealthHearingDaemon .cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"nowDate" object:? file:? lineNumber:? description:?];
}

+ (void)hd_hearingSevenDayDoseLimitIntervalForNowDate:()HealthHearingDaemon .cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"dateInterval.duration == HDHeadphoneExposureSevenDayDoseInterval" object:? file:? lineNumber:? description:?];
}

@end
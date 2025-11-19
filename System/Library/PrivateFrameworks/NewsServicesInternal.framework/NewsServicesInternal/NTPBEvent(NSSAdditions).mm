@interface NTPBEvent(NSSAdditions)
+ (id)nss_eventWithIdentifier;
- (uint64_t)nss_setStartDate:()NSSAdditions;
- (void)nss_setEndDate:()NSSAdditions;
- (void)nss_setStartDate:()NSSAdditions endDate:;
@end

@implementation NTPBEvent(NSSAdditions)

+ (id)nss_eventWithIdentifier
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  [v0 setAppAnalyticsEventIdentifier:v2];

  return v0;
}

- (uint64_t)nss_setStartDate:()NSSAdditions
{
  v4 = NTPBEventDateToTimestamp(a3);

  return [a1 setStartTimestamp:v4];
}

- (void)nss_setStartDate:()NSSAdditions endDate:
{
  v6 = a4;
  [a1 nss_setStartDate:a3];
  [a1 nss_setEndDate:v6];
}

- (void)nss_setEndDate:()NSSAdditions
{
  v4 = a3;
  if (([a1 hasStartTimestamp] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBEvent(NSSAdditions) nss_setEndDate:];
  }

  [a1 setDuration:{NTPBEventDateToTimestamp(v4) - objc_msgSend(a1, "startTimestamp")}];
}

- (void)nss_setEndDate:()NSSAdditions .cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to calculate the duration of an event without setting the startTimestamp"];
  v2 = 136315906;
  v3 = "[NTPBEvent(NSSAdditions) nss_setEndDate:]";
  v4 = 2080;
  v5 = "NTPBNewsAnalytics+NSSAdditions.m";
  v6 = 1024;
  v7 = 37;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end
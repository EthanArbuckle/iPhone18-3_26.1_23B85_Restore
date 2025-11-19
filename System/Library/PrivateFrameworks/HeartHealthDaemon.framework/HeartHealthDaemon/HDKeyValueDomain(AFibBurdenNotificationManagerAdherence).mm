@interface HDKeyValueDomain(AFibBurdenNotificationManagerAdherence)
- (void)setNotificationSentDate:()AFibBurdenNotificationManagerAdherence;
@end

@implementation HDKeyValueDomain(AFibBurdenNotificationManagerAdherence)

- (void)setNotificationSentDate:()AFibBurdenNotificationManagerAdherence
{
  v3 = *MEMORY[0x277D12EB8];
  v7 = 0;
  v4 = [a1 setDate:a3 forKey:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(AFibBurdenNotificationManagerAdherence) setNotificationSentDate:];
    }
  }
}

- (void)setNotificationSentDate:()AFibBurdenNotificationManagerAdherence .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to write notification last sent date due to error %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end
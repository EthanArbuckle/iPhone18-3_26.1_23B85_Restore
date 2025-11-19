@interface HKMCSettingsManager(Support)
@end

@implementation HKMCSettingsManager(Support)

- (void)setProjectionAttributesOnWatchFromUseHeartRateInput:()Support useWristTemperatureInput:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_fault_impl(&dword_2518FC000, v1, OS_LOG_TYPE_FAULT, "[%{public}@] setProjectionAttributesOnWatchFromUseHeartRateInput should only be called on the watch", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

@end
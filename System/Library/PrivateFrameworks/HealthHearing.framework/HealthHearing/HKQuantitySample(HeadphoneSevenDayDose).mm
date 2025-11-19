@interface HKQuantitySample(HeadphoneSevenDayDose)
- (uint64_t)hk_canTriggerHeadphoneExposureNotification;
- (void)hk_canTriggerHeadphoneExposureNotification;
@end

@implementation HKQuantitySample(HeadphoneSevenDayDose)

- (uint64_t)hk_canTriggerHeadphoneExposureNotification
{
  v4 = [a1 quantityType];
  v5 = [v4 code];

  if (v5 != 173)
  {
    return 0;
  }

  if (+[HKHearingFeatures unitTesting_simulateLocalHeadphonePlayback])
  {
    return 1;
  }

  v7 = [a1 sourceRevision];
  v8 = [v7 source];

  if (v8)
  {
    v6 = [v8 _isLocalDevice];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [(HKQuantitySample(HeadphoneSevenDayDose) *)v9 hk_canTriggerHeadphoneExposureNotification];
    }

    v6 = 1;
  }

  return v6;
}

- (void)hk_canTriggerHeadphoneExposureNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25175B000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] missing source, defaulting to YES", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end
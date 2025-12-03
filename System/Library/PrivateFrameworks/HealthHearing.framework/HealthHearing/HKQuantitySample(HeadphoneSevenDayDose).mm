@interface HKQuantitySample(HeadphoneSevenDayDose)
- (uint64_t)hk_canTriggerHeadphoneExposureNotification;
- (void)hk_canTriggerHeadphoneExposureNotification;
@end

@implementation HKQuantitySample(HeadphoneSevenDayDose)

- (uint64_t)hk_canTriggerHeadphoneExposureNotification
{
  quantityType = [self quantityType];
  code = [quantityType code];

  if (code != 173)
  {
    return 0;
  }

  if (+[HKHearingFeatures unitTesting_simulateLocalHeadphonePlayback])
  {
    return 1;
  }

  sourceRevision = [self sourceRevision];
  source = [sourceRevision source];

  if (source)
  {
    _isLocalDevice = [source _isLocalDevice];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [(HKQuantitySample(HeadphoneSevenDayDose) *)v9 hk_canTriggerHeadphoneExposureNotification];
    }

    _isLocalDevice = 1;
  }

  return _isLocalDevice;
}

- (void)hk_canTriggerHeadphoneExposureNotification
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = NSStringFromSelector(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25175B000, selfCopy, OS_LOG_TYPE_ERROR, "[%{public}@] missing source, defaulting to YES", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end
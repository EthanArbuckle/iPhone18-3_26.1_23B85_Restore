@interface HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria
- (HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria)initWithV1FeatureAvailabilityManager:(id)manager;
- (int64_t)isBackgroundDeliverySupportedWithError:(id *)error;
@end

@implementation HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria

- (HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria)initWithV1FeatureAvailabilityManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria;
  v6 = [(HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_v1FeatureAvailabilityManager, manager);
  }

  return v7;
}

- (int64_t)isBackgroundDeliverySupportedWithError:(id *)error
{
  v3 = [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:error];
  v4 = v3;
  if (v3)
  {
    if ([v3 integerValue] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
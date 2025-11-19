@interface HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria
- (HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria)initWithV1FeatureAvailabilityManager:(id)a3;
- (int64_t)isBackgroundDeliverySupportedWithError:(id *)a3;
@end

@implementation HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria

- (HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria)initWithV1FeatureAvailabilityManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria;
  v6 = [(HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_v1FeatureAvailabilityManager, a3);
  }

  return v7;
}

- (int64_t)isBackgroundDeliverySupportedWithError:(id *)a3
{
  v3 = [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:a3];
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
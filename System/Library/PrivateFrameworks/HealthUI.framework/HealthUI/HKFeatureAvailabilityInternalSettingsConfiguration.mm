@interface HKFeatureAvailabilityInternalSettingsConfiguration
- (HKFeatureAvailabilityInternalSettingsConfiguration)initWithFeatureIdentifier:(id)a3 userDefaultsDomain:(id)a4 userDefaultsFeatureEnabledKey:(id)a5 userDefaultsDisabledOverrideKey:(id)a6 options:(unint64_t)a7 samplesTypesToDelete:(id)a8;
@end

@implementation HKFeatureAvailabilityInternalSettingsConfiguration

- (HKFeatureAvailabilityInternalSettingsConfiguration)initWithFeatureIdentifier:(id)a3 userDefaultsDomain:(id)a4 userDefaultsFeatureEnabledKey:(id)a5 userDefaultsDisabledOverrideKey:(id)a6 options:(unint64_t)a7 samplesTypesToDelete:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HKFeatureAvailabilityInternalSettingsConfiguration;
  v18 = [(HKFeatureAvailabilityInternalSettingsConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_featureIdentifier, a3);
    objc_storeStrong(&v19->_userDefaultsDomain, a4);
    objc_storeStrong(&v19->_userDefaultsFeatureEnabledKey, a5);
    objc_storeStrong(&v19->_userDefaultsDisabledOverrideKey, a6);
    v19->_options = a7;
    objc_storeStrong(&v19->_samplesTypesToDelete, a8);
  }

  return v19;
}

@end
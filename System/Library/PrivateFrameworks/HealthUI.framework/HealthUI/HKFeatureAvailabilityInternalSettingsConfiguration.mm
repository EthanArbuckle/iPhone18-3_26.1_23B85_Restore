@interface HKFeatureAvailabilityInternalSettingsConfiguration
- (HKFeatureAvailabilityInternalSettingsConfiguration)initWithFeatureIdentifier:(id)identifier userDefaultsDomain:(id)domain userDefaultsFeatureEnabledKey:(id)key userDefaultsDisabledOverrideKey:(id)overrideKey options:(unint64_t)options samplesTypesToDelete:(id)delete;
@end

@implementation HKFeatureAvailabilityInternalSettingsConfiguration

- (HKFeatureAvailabilityInternalSettingsConfiguration)initWithFeatureIdentifier:(id)identifier userDefaultsDomain:(id)domain userDefaultsFeatureEnabledKey:(id)key userDefaultsDisabledOverrideKey:(id)overrideKey options:(unint64_t)options samplesTypesToDelete:(id)delete
{
  identifierCopy = identifier;
  domainCopy = domain;
  keyCopy = key;
  overrideKeyCopy = overrideKey;
  deleteCopy = delete;
  v23.receiver = self;
  v23.super_class = HKFeatureAvailabilityInternalSettingsConfiguration;
  v18 = [(HKFeatureAvailabilityInternalSettingsConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_featureIdentifier, identifier);
    objc_storeStrong(&v19->_userDefaultsDomain, domain);
    objc_storeStrong(&v19->_userDefaultsFeatureEnabledKey, key);
    objc_storeStrong(&v19->_userDefaultsDisabledOverrideKey, overrideKey);
    v19->_options = options;
    objc_storeStrong(&v19->_samplesTypesToDelete, delete);
  }

  return v19;
}

@end
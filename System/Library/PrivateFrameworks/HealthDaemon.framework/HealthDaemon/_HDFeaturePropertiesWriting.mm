@interface _HDFeaturePropertiesWriting
- (_HDFeaturePropertiesWriting)initWithLocalDomain:(id)domain;
- (void)synchronize;
@end

@implementation _HDFeaturePropertiesWriting

- (_HDFeaturePropertiesWriting)initWithLocalDomain:(id)domain
{
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = _HDFeaturePropertiesWriting;
  v6 = [(_HDFeaturePropertiesWriting *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localDomain, domain);
    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = v8;
  }

  return v7;
}

- (void)synchronize
{
  localDomain = self->_localDomain;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"FeatureVersion", @"UpdateVersion", @"UDIDeviceIdentifier", @"YearOfRelease", @"AvailableRegions", @"AvailableRegionsVersion", @"AvailableRegionsContentVersion", @"CountrySetProvenance", 0}];
  HKSynchronizeNanoPreferencesUserDefaults();
}

@end
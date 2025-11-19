@interface _HDFeaturePropertiesWriting
- (_HDFeaturePropertiesWriting)initWithLocalDomain:(id)a3;
- (void)synchronize;
@end

@implementation _HDFeaturePropertiesWriting

- (_HDFeaturePropertiesWriting)initWithLocalDomain:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _HDFeaturePropertiesWriting;
  v6 = [(_HDFeaturePropertiesWriting *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localDomain, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v5];
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
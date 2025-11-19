@interface NTKBundleComplicationIdentifierCacheModel
- (NTKBundleComplicationIdentifierCacheModel)initWithBuildVersion:(id)a3;
- (NTKBundleComplicationIdentifierCacheModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplicationIdentifierCacheModel

- (NTKBundleComplicationIdentifierCacheModel)initWithBuildVersion:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NTKBundleComplicationIdentifierCacheModel;
  v6 = [(NTKBundleComplicationIdentifierCacheModel *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buildVersion, a3);
    v8 = objc_opt_new();
    dataSourceToBundleIdentifier = v7->_dataSourceToBundleIdentifier;
    v7->_dataSourceToBundleIdentifier = v8;

    v10 = objc_opt_new();
    legacyComplicationTypeToDataSourceIdentifier = v7->_legacyComplicationTypeToDataSourceIdentifier;
    v7->_legacyComplicationTypeToDataSourceIdentifier = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  buildVersion = self->_buildVersion;
  v5 = a3;
  [v5 encodeObject:buildVersion forKey:@"NTKBundleComplicationIdentifierCacheModelBuildVersionKey"];
  [v5 encodeObject:self->_dataSourceToBundleIdentifier forKey:@"NTKBundleComplicationIdentifierCacheModelDatasourceToBundleIdentifierKey"];
  [v5 encodeObject:self->_legacyComplicationTypeToDataSourceIdentifier forKey:@"NTKBundleComplicationIdentifierCacheModeLegacyComplicationTypeToDataSourceIdentifierKey"];
}

- (NTKBundleComplicationIdentifierCacheModel)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NTKBundleComplicationIdentifierCacheModel;
  v5 = [(NTKBundleComplicationIdentifierCacheModel *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModelBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModelDatasourceToBundleIdentifierKey"];
    dataSourceToBundleIdentifier = v5->_dataSourceToBundleIdentifier;
    v5->_dataSourceToBundleIdentifier = v9;

    v11 = objc_opt_class();
    v12 = [v4 decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModeLegacyComplicationTypeToDataSourceIdentifierKey"];
    legacyComplicationTypeToDataSourceIdentifier = v5->_legacyComplicationTypeToDataSourceIdentifier;
    v5->_legacyComplicationTypeToDataSourceIdentifier = v12;
  }

  return v5;
}

@end
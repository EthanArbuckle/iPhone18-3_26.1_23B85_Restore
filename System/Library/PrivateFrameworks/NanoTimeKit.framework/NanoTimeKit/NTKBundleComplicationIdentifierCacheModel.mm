@interface NTKBundleComplicationIdentifierCacheModel
- (NTKBundleComplicationIdentifierCacheModel)initWithBuildVersion:(id)version;
- (NTKBundleComplicationIdentifierCacheModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKBundleComplicationIdentifierCacheModel

- (NTKBundleComplicationIdentifierCacheModel)initWithBuildVersion:(id)version
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = NTKBundleComplicationIdentifierCacheModel;
  v6 = [(NTKBundleComplicationIdentifierCacheModel *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buildVersion, version);
    v8 = objc_opt_new();
    dataSourceToBundleIdentifier = v7->_dataSourceToBundleIdentifier;
    v7->_dataSourceToBundleIdentifier = v8;

    v10 = objc_opt_new();
    legacyComplicationTypeToDataSourceIdentifier = v7->_legacyComplicationTypeToDataSourceIdentifier;
    v7->_legacyComplicationTypeToDataSourceIdentifier = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  buildVersion = self->_buildVersion;
  coderCopy = coder;
  [coderCopy encodeObject:buildVersion forKey:@"NTKBundleComplicationIdentifierCacheModelBuildVersionKey"];
  [coderCopy encodeObject:self->_dataSourceToBundleIdentifier forKey:@"NTKBundleComplicationIdentifierCacheModelDatasourceToBundleIdentifierKey"];
  [coderCopy encodeObject:self->_legacyComplicationTypeToDataSourceIdentifier forKey:@"NTKBundleComplicationIdentifierCacheModeLegacyComplicationTypeToDataSourceIdentifierKey"];
}

- (NTKBundleComplicationIdentifierCacheModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NTKBundleComplicationIdentifierCacheModel;
  v5 = [(NTKBundleComplicationIdentifierCacheModel *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModelBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModelDatasourceToBundleIdentifierKey"];
    dataSourceToBundleIdentifier = v5->_dataSourceToBundleIdentifier;
    v5->_dataSourceToBundleIdentifier = v9;

    v11 = objc_opt_class();
    v12 = [coderCopy decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"NTKBundleComplicationIdentifierCacheModeLegacyComplicationTypeToDataSourceIdentifierKey"];
    legacyComplicationTypeToDataSourceIdentifier = v5->_legacyComplicationTypeToDataSourceIdentifier;
    v5->_legacyComplicationTypeToDataSourceIdentifier = v12;
  }

  return v5;
}

@end
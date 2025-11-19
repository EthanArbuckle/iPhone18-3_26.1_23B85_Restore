@interface NTKBundleComplicationDataSourceInfo
- (BOOL)isEqual:(id)a3;
- (NTKBundleComplicationDataSourceInfo)initWithDataSourceClass:(Class)a3;
@end

@implementation NTKBundleComplicationDataSourceInfo

- (NTKBundleComplicationDataSourceInfo)initWithDataSourceClass:(Class)a3
{
  v21.receiver = self;
  v21.super_class = NTKBundleComplicationDataSourceInfo;
  v4 = [(NTKBundleComplicationDataSourceInfo *)&v21 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dataSourceClass, a3);
    v6 = [(objc_class *)a3 bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [(objc_class *)a3 appIdentifier];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v8;

    v10 = [(objc_class *)a3 localizedAppName];
    localizedAppName = v5->_localizedAppName;
    v5->_localizedAppName = v10;

    v12 = [(objc_class *)a3 localizedComplicationName];
    localizedComplicationName = v5->_localizedComplicationName;
    v5->_localizedComplicationName = v12;

    v14 = [(objc_class *)a3 sectionIdentifier];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v14;

    v16 = [(objc_class *)a3 appGroupIdentifier];
    appGroupIdentifier = v5->_appGroupIdentifier;
    v5->_appGroupIdentifier = v16;

    v18 = [(objc_class *)a3 legacyNTKComplicationType];
    legacyNTKComplicationType = v5->_legacyNTKComplicationType;
    v5->_legacyNTKComplicationType = v18;

    v5->_useComplicationDescriptorsOnCompanion = [(objc_class *)a3 useComplicationDescriptorsOnCompanion];
    v5->_hash = [(objc_class *)a3 hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[3] == self->_dataSourceClass;

  return v5;
}

@end
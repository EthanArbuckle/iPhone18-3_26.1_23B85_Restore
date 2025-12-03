@interface NTKBundleComplicationDataSourceInfo
- (BOOL)isEqual:(id)equal;
- (NTKBundleComplicationDataSourceInfo)initWithDataSourceClass:(Class)class;
@end

@implementation NTKBundleComplicationDataSourceInfo

- (NTKBundleComplicationDataSourceInfo)initWithDataSourceClass:(Class)class
{
  v21.receiver = self;
  v21.super_class = NTKBundleComplicationDataSourceInfo;
  v4 = [(NTKBundleComplicationDataSourceInfo *)&v21 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dataSourceClass, class);
    bundleIdentifier = [(objc_class *)class bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = bundleIdentifier;

    appIdentifier = [(objc_class *)class appIdentifier];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = appIdentifier;

    localizedAppName = [(objc_class *)class localizedAppName];
    localizedAppName = v5->_localizedAppName;
    v5->_localizedAppName = localizedAppName;

    localizedComplicationName = [(objc_class *)class localizedComplicationName];
    localizedComplicationName = v5->_localizedComplicationName;
    v5->_localizedComplicationName = localizedComplicationName;

    sectionIdentifier = [(objc_class *)class sectionIdentifier];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = sectionIdentifier;

    appGroupIdentifier = [(objc_class *)class appGroupIdentifier];
    appGroupIdentifier = v5->_appGroupIdentifier;
    v5->_appGroupIdentifier = appGroupIdentifier;

    legacyNTKComplicationType = [(objc_class *)class legacyNTKComplicationType];
    legacyNTKComplicationType = v5->_legacyNTKComplicationType;
    v5->_legacyNTKComplicationType = legacyNTKComplicationType;

    v5->_useComplicationDescriptorsOnCompanion = [(objc_class *)class useComplicationDescriptorsOnCompanion];
    v5->_hash = [(objc_class *)class hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[3] == self->_dataSourceClass;

  return v5;
}

@end
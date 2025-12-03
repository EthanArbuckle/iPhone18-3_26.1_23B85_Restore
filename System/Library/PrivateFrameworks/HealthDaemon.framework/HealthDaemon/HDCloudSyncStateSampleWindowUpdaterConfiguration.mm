@interface HDCloudSyncStateSampleWindowUpdaterConfiguration
- (HDCloudSyncStateSampleWindowUpdaterConfiguration)initWithDomain:(id)domain key:(id)key sampleOriginKey:(id)originKey sampleType:(id)type syncEntityClass:(Class)class timeWindow:(id)window loggingCategory:(id)category sampleUUIDsFunction:(void *)self0;
@end

@implementation HDCloudSyncStateSampleWindowUpdaterConfiguration

- (HDCloudSyncStateSampleWindowUpdaterConfiguration)initWithDomain:(id)domain key:(id)key sampleOriginKey:(id)originKey sampleType:(id)type syncEntityClass:(Class)class timeWindow:(id)window loggingCategory:(id)category sampleUUIDsFunction:(void *)self0
{
  domainCopy = domain;
  keyCopy = key;
  originKeyCopy = originKey;
  typeCopy = type;
  windowCopy = window;
  categoryCopy = category;
  v32.receiver = self;
  v32.super_class = HDCloudSyncStateSampleWindowUpdaterConfiguration;
  v22 = [(HDCloudSyncStateSampleWindowUpdaterConfiguration *)&v32 init];
  if (v22)
  {
    v23 = [domainCopy copy];
    domain = v22->_domain;
    v22->_domain = v23;

    v25 = [keyCopy copy];
    key = v22->_key;
    v22->_key = v25;

    v27 = [originKeyCopy copy];
    sampleOriginKey = v22->_sampleOriginKey;
    v22->_sampleOriginKey = v27;

    objc_storeStrong(&v22->_sampleType, type);
    objc_storeStrong(&v22->_syncEntityClass, class);
    v29 = [windowCopy copy];
    timeWindow = v22->_timeWindow;
    v22->_timeWindow = v29;

    objc_storeStrong(&v22->_loggingCategory, category);
    v22->_sampleUUIDsFromCodableObjectCollectionFunction = function;
  }

  return v22;
}

@end
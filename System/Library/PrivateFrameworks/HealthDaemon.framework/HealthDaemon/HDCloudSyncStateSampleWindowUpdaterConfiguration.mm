@interface HDCloudSyncStateSampleWindowUpdaterConfiguration
- (HDCloudSyncStateSampleWindowUpdaterConfiguration)initWithDomain:(id)a3 key:(id)a4 sampleOriginKey:(id)a5 sampleType:(id)a6 syncEntityClass:(Class)a7 timeWindow:(id)a8 loggingCategory:(id)a9 sampleUUIDsFunction:(void *)a10;
@end

@implementation HDCloudSyncStateSampleWindowUpdaterConfiguration

- (HDCloudSyncStateSampleWindowUpdaterConfiguration)initWithDomain:(id)a3 key:(id)a4 sampleOriginKey:(id)a5 sampleType:(id)a6 syncEntityClass:(Class)a7 timeWindow:(id)a8 loggingCategory:(id)a9 sampleUUIDsFunction:(void *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v32.receiver = self;
  v32.super_class = HDCloudSyncStateSampleWindowUpdaterConfiguration;
  v22 = [(HDCloudSyncStateSampleWindowUpdaterConfiguration *)&v32 init];
  if (v22)
  {
    v23 = [v16 copy];
    domain = v22->_domain;
    v22->_domain = v23;

    v25 = [v17 copy];
    key = v22->_key;
    v22->_key = v25;

    v27 = [v18 copy];
    sampleOriginKey = v22->_sampleOriginKey;
    v22->_sampleOriginKey = v27;

    objc_storeStrong(&v22->_sampleType, a6);
    objc_storeStrong(&v22->_syncEntityClass, a7);
    v29 = [v20 copy];
    timeWindow = v22->_timeWindow;
    v22->_timeWindow = v29;

    objc_storeStrong(&v22->_loggingCategory, a9);
    v22->_sampleUUIDsFromCodableObjectCollectionFunction = a10;
  }

  return v22;
}

@end
@interface LCFCoreMLFeatureProvider
- (id)init:(id)init timestamp:(id)timestamp featureValues:(id)values;
@end

@implementation LCFCoreMLFeatureProvider

- (id)init:(id)init timestamp:(id)timestamp featureValues:(id)values
{
  initCopy = init;
  timestampCopy = timestamp;
  valuesCopy = values;
  v19.receiver = self;
  v19.super_class = LCFCoreMLFeatureProvider;
  v12 = [(LCFCoreMLFeatureProvider *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featureStoreKey, init);
    objc_storeStrong(&v13->_timestamp, timestamp);
    objc_storeStrong(&v13->_featureValues, values);
    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [(NSDictionary *)v13->_featureValues allKeys];
    v16 = [v14 initWithArray:allKeys];
    featureNames = v13->_featureNames;
    v13->_featureNames = v16;
  }

  return v13;
}

@end
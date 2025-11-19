@interface LCFCoreMLFeatureProvider
- (id)init:(id)a3 timestamp:(id)a4 featureValues:(id)a5;
@end

@implementation LCFCoreMLFeatureProvider

- (id)init:(id)a3 timestamp:(id)a4 featureValues:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = LCFCoreMLFeatureProvider;
  v12 = [(LCFCoreMLFeatureProvider *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featureStoreKey, a3);
    objc_storeStrong(&v13->_timestamp, a4);
    objc_storeStrong(&v13->_featureValues, a5);
    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    v15 = [(NSDictionary *)v13->_featureValues allKeys];
    v16 = [v14 initWithArray:v15];
    featureNames = v13->_featureNames;
    v13->_featureNames = v16;
  }

  return v13;
}

@end
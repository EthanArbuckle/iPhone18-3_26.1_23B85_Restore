@interface LCFFeatureSet
- (LCFFeatureSet)initWithIdentifier:(id)a3 featureVersion:(id)a4 timestamp:(id)a5 featureValues:(id)a6;
@end

@implementation LCFFeatureSet

- (LCFFeatureSet)initWithIdentifier:(id)a3 featureVersion:(id)a4 timestamp:(id)a5 featureValues:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = LCFFeatureSet;
  v15 = [(LCFFeatureSet *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, a3);
    objc_storeStrong(&v16->_featureVersion, a4);
    objc_storeStrong(&v16->_timestamp, a5);
    objc_storeStrong(&v16->_featureValues, a6);
  }

  return v16;
}

@end
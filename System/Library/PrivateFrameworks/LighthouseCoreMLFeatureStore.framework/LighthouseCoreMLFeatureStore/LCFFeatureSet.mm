@interface LCFFeatureSet
- (LCFFeatureSet)initWithIdentifier:(id)identifier featureVersion:(id)version timestamp:(id)timestamp featureValues:(id)values;
@end

@implementation LCFFeatureSet

- (LCFFeatureSet)initWithIdentifier:(id)identifier featureVersion:(id)version timestamp:(id)timestamp featureValues:(id)values
{
  identifierCopy = identifier;
  versionCopy = version;
  timestampCopy = timestamp;
  valuesCopy = values;
  v18.receiver = self;
  v18.super_class = LCFFeatureSet;
  v15 = [(LCFFeatureSet *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, identifier);
    objc_storeStrong(&v16->_featureVersion, version);
    objc_storeStrong(&v16->_timestamp, timestamp);
    objc_storeStrong(&v16->_featureValues, values);
  }

  return v16;
}

@end
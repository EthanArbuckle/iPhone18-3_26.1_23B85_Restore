@interface SGMISaliencyModelFeatureProvider
- (SGMISaliencyModelFeatureProvider)initWithData:(id)data;
- (id)featureValueForName:(id)name;
@end

@implementation SGMISaliencyModelFeatureProvider

- (id)featureValueForName:(id)name
{
  if ([(NSSet *)self->_featureNames containsObject:name])
  {
    v4 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:self->_data];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SGMISaliencyModelFeatureProvider)initWithData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SGMISaliencyModelFeatureProvider;
  v6 = [(SGMISaliencyModelFeatureProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"featureVector", 0}];
    objc_autoreleasePoolPop(v8);
    featureNames = v7->_featureNames;
    v7->_featureNames = v9;
  }

  return v7;
}

@end
@interface SGMISaliencyModelFeatureProvider
- (SGMISaliencyModelFeatureProvider)initWithData:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SGMISaliencyModelFeatureProvider

- (id)featureValueForName:(id)a3
{
  if ([(NSSet *)self->_featureNames containsObject:a3])
  {
    v4 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:self->_data];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SGMISaliencyModelFeatureProvider)initWithData:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SGMISaliencyModelFeatureProvider;
  v6 = [(SGMISaliencyModelFeatureProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"featureVector", 0}];
    objc_autoreleasePoolPop(v8);
    featureNames = v7->_featureNames;
    v7->_featureNames = v9;
  }

  return v7;
}

@end
@interface sceneLuxB2DItpMLModelInput
- (id)featureValueForName:(id)name;
- (sceneLuxB2DItpMLModelInput)initWithFeature_vector:(id)feature_vector;
@end

@implementation sceneLuxB2DItpMLModelInput

- (sceneLuxB2DItpMLModelInput)initWithFeature_vector:(id)feature_vector
{
  feature_vectorCopy = feature_vector;
  v9.receiver = self;
  v9.super_class = sceneLuxB2DItpMLModelInput;
  v6 = [(sceneLuxB2DItpMLModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feature_vector, feature_vector);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"feature_vector"])
  {
    v4 = MEMORY[0x277CBFEF8];
    feature_vector = [(sceneLuxB2DItpMLModelInput *)self feature_vector];
    v6 = [v4 featureValueWithMultiArray:feature_vector];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
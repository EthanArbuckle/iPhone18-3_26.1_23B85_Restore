@interface sceneLuxB2DItpMLModelInput
- (id)featureValueForName:(id)a3;
- (sceneLuxB2DItpMLModelInput)initWithFeature_vector:(id)a3;
@end

@implementation sceneLuxB2DItpMLModelInput

- (sceneLuxB2DItpMLModelInput)initWithFeature_vector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = sceneLuxB2DItpMLModelInput;
  v6 = [(sceneLuxB2DItpMLModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feature_vector, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"feature_vector"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(sceneLuxB2DItpMLModelInput *)self feature_vector];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
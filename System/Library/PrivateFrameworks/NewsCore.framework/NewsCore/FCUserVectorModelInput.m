@interface FCUserVectorModelInput
- (FCUserVectorModelInput)initWithAggregates:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation FCUserVectorModelInput

- (FCUserVectorModelInput)initWithAggregates:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCUserVectorModelInput;
  v6 = [(FCUserVectorModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aggregates, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"aggregates"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(FCUserVectorModelInput *)self aggregates];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
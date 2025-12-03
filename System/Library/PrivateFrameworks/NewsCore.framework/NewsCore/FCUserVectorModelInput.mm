@interface FCUserVectorModelInput
- (FCUserVectorModelInput)initWithAggregates:(id)aggregates;
- (id)featureValueForName:(id)name;
@end

@implementation FCUserVectorModelInput

- (FCUserVectorModelInput)initWithAggregates:(id)aggregates
{
  aggregatesCopy = aggregates;
  v9.receiver = self;
  v9.super_class = FCUserVectorModelInput;
  v6 = [(FCUserVectorModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aggregates, aggregates);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"aggregates"])
  {
    v4 = MEMORY[0x1E695FE60];
    aggregates = [(FCUserVectorModelInput *)self aggregates];
    v6 = [v4 featureValueWithMultiArray:aggregates];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
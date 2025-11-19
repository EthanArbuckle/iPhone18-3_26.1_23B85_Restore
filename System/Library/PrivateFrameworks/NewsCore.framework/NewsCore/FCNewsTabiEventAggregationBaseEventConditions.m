@interface FCNewsTabiEventAggregationBaseEventConditions
- (FCNewsTabiEventAggregationBaseEventConditions)initWithDictionary:(id)a3;
- (FCNewsTabiEventAggregationBaseEventConditions)initWithProbability:(double)a3;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationBaseEventConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(FCNewsTabiEventAggregationBaseEventConditions *)self probability];
  [v3 appendFormat:@"\n\tprobability: %f;", v4];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationBaseEventConditions)initWithDictionary:(id)a3
{
  v4 = FCAppConfigurationDoubleValue(a3, @"probability", 0.0);

  return [(FCNewsTabiEventAggregationBaseEventConditions *)self initWithProbability:v4];
}

- (FCNewsTabiEventAggregationBaseEventConditions)initWithProbability:(double)a3
{
  v5.receiver = self;
  v5.super_class = FCNewsTabiEventAggregationBaseEventConditions;
  result = [(FCNewsTabiEventAggregationBaseEventConditions *)&v5 init];
  if (result)
  {
    result->_probability = a3;
  }

  return result;
}

@end
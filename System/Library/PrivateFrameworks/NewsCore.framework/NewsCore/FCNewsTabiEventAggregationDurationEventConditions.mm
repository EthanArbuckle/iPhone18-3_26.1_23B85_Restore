@interface FCNewsTabiEventAggregationDurationEventConditions
- (FCNewsTabiEventAggregationDurationEventConditions)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationDurationEventConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(FCNewsTabiEventAggregationBaseEventConditions *)self probability];
  [v3 appendFormat:@"\n\tprobability: %f;", v4];
  [(FCNewsTabiEventAggregationDurationEventConditions *)self duration];
  [v3 appendFormat:@"\n\tduration: %f;", v5];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationDurationEventConditions)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCNewsTabiEventAggregationDurationEventConditions;
  v5 = [(FCNewsTabiEventAggregationBaseEventConditions *)&v7 initWithDictionary:v4];
  if (v5)
  {
    v5->_duration = FCAppConfigurationDoubleValue(v4, @"duration", 0.0);
  }

  return v5;
}

@end
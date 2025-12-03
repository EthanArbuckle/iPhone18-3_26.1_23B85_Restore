@interface CSDetectionRuleCondition
- (CSDetectionRuleCondition)initWithScalarMetric:(int)metric andNormalizerMetric:(int)normalizerMetric andComparator:(int)comparator andValue:(float)value;
@end

@implementation CSDetectionRuleCondition

- (CSDetectionRuleCondition)initWithScalarMetric:(int)metric andNormalizerMetric:(int)normalizerMetric andComparator:(int)comparator andValue:(float)value
{
  v11.receiver = self;
  v11.super_class = CSDetectionRuleCondition;
  result = [(CSDetectionRuleCondition *)&v11 init];
  if (result)
  {
    result->_scalarMetric = metric;
    result->_normalizerMetric = normalizerMetric;
    result->_comparator = comparator;
    result->_value = value;
  }

  return result;
}

@end
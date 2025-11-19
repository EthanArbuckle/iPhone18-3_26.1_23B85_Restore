@interface CSDetectionRuleCondition
- (CSDetectionRuleCondition)initWithScalarMetric:(int)a3 andNormalizerMetric:(int)a4 andComparator:(int)a5 andValue:(float)a6;
@end

@implementation CSDetectionRuleCondition

- (CSDetectionRuleCondition)initWithScalarMetric:(int)a3 andNormalizerMetric:(int)a4 andComparator:(int)a5 andValue:(float)a6
{
  v11.receiver = self;
  v11.super_class = CSDetectionRuleCondition;
  result = [(CSDetectionRuleCondition *)&v11 init];
  if (result)
  {
    result->_scalarMetric = a3;
    result->_normalizerMetric = a4;
    result->_comparator = a5;
    result->_value = a6;
  }

  return result;
}

@end
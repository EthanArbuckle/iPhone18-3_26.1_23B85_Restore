@interface _DASLogCondition
+ (id)withCondition:(id)condition;
@end

@implementation _DASLogCondition

+ (id)withCondition:(id)condition
{
  conditionCopy = condition;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCondition:conditionCopy];

  return v4;
}

@end
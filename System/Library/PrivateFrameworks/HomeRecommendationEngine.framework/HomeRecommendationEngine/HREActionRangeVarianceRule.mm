@interface HREActionRangeVarianceRule
+ (id)rangeVarianceWithType:(id)type max:(unint64_t)max;
+ (id)rangeVarianceWithType:(id)type min:(unint64_t)min;
+ (id)rangeVarianceWithType:(id)type min:(unint64_t)min max:(unint64_t)max;
+ (id)rangeVarianceWithType:(id)type range:(_NSRange)range;
- (BOOL)passesForAction:(id)action;
- (BOOL)passesWithTargetValue:(id)value;
- (_NSRange)allowedTargetValues;
- (id)_initWithType:(id)type range:(_NSRange)range;
@end

@implementation HREActionRangeVarianceRule

- (id)_initWithType:(id)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7.receiver = self;
  v7.super_class = HREActionRangeVarianceRule;
  result = [(HRECharacteristicActionVarianceRule *)&v7 _initWithType:type];
  if (result)
  {
    *(result + 3) = location;
    *(result + 4) = length;
  }

  return result;
}

+ (id)rangeVarianceWithType:(id)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  typeCopy = type;
  v8 = [[self alloc] _initWithType:typeCopy range:{location, length}];

  return v8;
}

+ (id)rangeVarianceWithType:(id)type max:(unint64_t)max
{
  typeCopy = type;
  v7 = [[self alloc] _initWithType:typeCopy range:{0, max + 1}];

  return v7;
}

+ (id)rangeVarianceWithType:(id)type min:(unint64_t)min
{
  typeCopy = type;
  v7 = [[self alloc] _initWithType:typeCopy range:{min, -1}];

  return v7;
}

+ (id)rangeVarianceWithType:(id)type min:(unint64_t)min max:(unint64_t)max
{
  typeCopy = type;
  v9 = [[self alloc] _initWithType:typeCopy range:{min, max - min + 1}];

  return v9;
}

- (BOOL)passesForAction:(id)action
{
  actionCopy = action;
  v8.receiver = self;
  v8.super_class = HREActionRangeVarianceRule;
  if ([(HRECharacteristicActionVarianceRule *)&v8 passesForAction:actionCopy])
  {
    targetValue = [actionCopy targetValue];
    v6 = [(HREActionRangeVarianceRule *)self passesWithTargetValue:targetValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesWithTargetValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v5 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    allowedTargetValues = [(HREActionRangeVarianceRule *)self allowedTargetValues];
    v12 = unsignedIntegerValue >= allowedTargetValues && unsignedIntegerValue - allowedTargetValues < v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_NSRange)allowedTargetValues
{
  p_allowedTargetValues = &self->_allowedTargetValues;
  location = self->_allowedTargetValues.location;
  length = p_allowedTargetValues->length;
  result.length = length;
  result.location = location;
  return result;
}

@end
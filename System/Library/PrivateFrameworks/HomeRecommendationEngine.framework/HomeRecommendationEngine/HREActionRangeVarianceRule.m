@interface HREActionRangeVarianceRule
+ (id)rangeVarianceWithType:(id)a3 max:(unint64_t)a4;
+ (id)rangeVarianceWithType:(id)a3 min:(unint64_t)a4;
+ (id)rangeVarianceWithType:(id)a3 min:(unint64_t)a4 max:(unint64_t)a5;
+ (id)rangeVarianceWithType:(id)a3 range:(_NSRange)a4;
- (BOOL)passesForAction:(id)a3;
- (BOOL)passesWithTargetValue:(id)a3;
- (_NSRange)allowedTargetValues;
- (id)_initWithType:(id)a3 range:(_NSRange)a4;
@end

@implementation HREActionRangeVarianceRule

- (id)_initWithType:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7.receiver = self;
  v7.super_class = HREActionRangeVarianceRule;
  result = [(HRECharacteristicActionVarianceRule *)&v7 _initWithType:a3];
  if (result)
  {
    *(result + 3) = location;
    *(result + 4) = length;
  }

  return result;
}

+ (id)rangeVarianceWithType:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] _initWithType:v7 range:{location, length}];

  return v8;
}

+ (id)rangeVarianceWithType:(id)a3 max:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithType:v6 range:{0, a4 + 1}];

  return v7;
}

+ (id)rangeVarianceWithType:(id)a3 min:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithType:v6 range:{a4, -1}];

  return v7;
}

+ (id)rangeVarianceWithType:(id)a3 min:(unint64_t)a4 max:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] _initWithType:v8 range:{a4, a5 - a4 + 1}];

  return v9;
}

- (BOOL)passesForAction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HREActionRangeVarianceRule;
  if ([(HRECharacteristicActionVarianceRule *)&v8 passesForAction:v4])
  {
    v5 = [v4 targetValue];
    v6 = [(HREActionRangeVarianceRule *)self passesWithTargetValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesWithTargetValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [v7 unsignedIntegerValue];
    v9 = [(HREActionRangeVarianceRule *)self allowedTargetValues];
    v12 = v8 >= v9 && v8 - v9 < v10;
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
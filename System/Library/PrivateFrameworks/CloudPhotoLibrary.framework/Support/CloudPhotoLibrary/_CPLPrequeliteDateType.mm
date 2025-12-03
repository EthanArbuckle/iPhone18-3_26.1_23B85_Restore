@interface _CPLPrequeliteDateType
- (_CPLPrequeliteDateType)init;
- (id)_bindableValueForValue:(id)value;
- (id)_valueForBindableValue:(id)value;
@end

@implementation _CPLPrequeliteDateType

- (_CPLPrequeliteDateType)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = _CPLPrequeliteDateType;
  return [(CPLPrequeliteType *)&v5 initWithTypeName:"TIMESTAMP" defaultValue:0 objcClass:v3];
}

- (id)_bindableValueForValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001BF8B8(valueCopy, a2, self);
    }

    [valueCopy timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_valueForBindableValue:(id)value
{
  if (value)
  {
    [value doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
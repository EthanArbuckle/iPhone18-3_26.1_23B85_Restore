@interface LNMeasurementValueType(CATSupport)
- (id)cat_value:()CATSupport;
@end

@implementation LNMeasurementValueType(CATSupport)

- (id)cat_value:()CATSupport
{
  v3 = MEMORY[0x1E696AD30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  value = [v4 value];

  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 stringFromMeasurement:v8];

  return v9;
}

@end
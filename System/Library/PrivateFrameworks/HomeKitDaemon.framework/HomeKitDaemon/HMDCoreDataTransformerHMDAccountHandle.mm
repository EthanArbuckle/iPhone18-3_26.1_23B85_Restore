@interface HMDCoreDataTransformerHMDAccountHandle
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation HMDCoreDataTransformerHMDAccountHandle

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = +[HMDAccountHandleFormatter defaultFormatter];
    v7 = [v6 accountHandleFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 stringForObjectValue:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
@interface DBComparison
+ (BOOL)isValue:(id)value equalTo:(id)to;
@end

@implementation DBComparison

+ (BOOL)isValue:(id)value equalTo:(id)to
{
  valueCopy = value;
  toCopy = to;
  v7 = toCopy;
  if (!(valueCopy | toCopy))
  {
    goto LABEL_2;
  }

  v8 = 0;
  if (valueCopy && toCopy)
  {
    if (valueCopy == toCopy)
    {
LABEL_2:
      v8 = 1;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [valueCopy isEqualToArray:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10 = [valueCopy isEqualToDictionary:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v10 = [valueCopy isEqualToSet:v7];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_3;
          }

          v10 = [valueCopy isEqual:v7];
        }
      }
    }

    v8 = v10;
  }

LABEL_3:

  return v8;
}

@end
@interface MNComparison
+ (BOOL)isValue:(id)a3 equalTo:(id)a4;
@end

@implementation MNComparison

+ (BOOL)isValue:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    goto LABEL_2;
  }

  v8 = 0;
  if (v5 && v6)
  {
    if (v5 == v6)
    {
LABEL_2:
      v8 = 1;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v5 isEqualToArray:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10 = [v5 isEqualToDictionary:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v10 = [v5 isEqualToSet:v7];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_3;
          }

          v10 = [v5 isEqual:v7];
        }
      }
    }

    v8 = v10;
  }

LABEL_3:

  return v8;
}

@end
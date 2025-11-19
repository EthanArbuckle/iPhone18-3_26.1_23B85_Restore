@interface MTNumberUtil
+ (double)deResDouble:(double)a3 magnitude:(int64_t)a4 significantDigits:(int64_t)a5;
+ (id)deResNumber:(id)a3 magnitude:(id)a4 significantDigits:(id)a5;
@end

@implementation MTNumberUtil

+ (id)deResNumber:(id)a3 magnitude:(id)a4 significantDigits:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 unsignedIntegerValue];
    }

    else
    {
      v10 = 0x100000;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v9 unsignedIntegerValue];
    }

    else
    {
      v12 = 2;
    }

    [v7 doubleValue];
    [MTNumberUtil deResDouble:v10 magnitude:v12 significantDigits:?];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (double)deResDouble:(double)a3 magnitude:(int64_t)a4 significantDigits:(int64_t)a5
{
  result = NAN;
  if (a4 >= 1 && (a5 & 0x8000000000000000) == 0)
  {
    v8 = __exp10(a5);
    v9 = a3 / a4 / v8;
    v10 = floor(v9);
    v11 = ceil(v9);
    if (v9 <= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    return v12 * v8;
  }

  return result;
}

@end
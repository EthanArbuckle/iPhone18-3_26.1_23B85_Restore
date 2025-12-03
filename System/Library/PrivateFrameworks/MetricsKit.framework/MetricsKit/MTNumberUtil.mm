@interface MTNumberUtil
+ (double)deResDouble:(double)double magnitude:(int64_t)magnitude significantDigits:(int64_t)digits;
+ (id)deResNumber:(id)number magnitude:(id)magnitude significantDigits:(id)digits;
@end

@implementation MTNumberUtil

+ (id)deResNumber:(id)number magnitude:(id)magnitude significantDigits:(id)digits
{
  numberCopy = number;
  magnitudeCopy = magnitude;
  digitsCopy = digits;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [magnitudeCopy unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x100000;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [digitsCopy unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 2;
    }

    [numberCopy doubleValue];
    [MTNumberUtil deResDouble:unsignedIntegerValue magnitude:unsignedIntegerValue2 significantDigits:?];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (double)deResDouble:(double)double magnitude:(int64_t)magnitude significantDigits:(int64_t)digits
{
  result = NAN;
  if (magnitude >= 1 && (digits & 0x8000000000000000) == 0)
  {
    v8 = __exp10(digits);
    v9 = double / magnitude / v8;
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
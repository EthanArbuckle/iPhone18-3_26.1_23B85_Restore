@interface JavaLangMath
+ (double)absWithDouble:(double)double;
+ (double)maxWithDouble:(double)result withDouble:(double)double;
+ (double)minWithDouble:(double)double withDouble:(double)withDouble;
+ (double)nextAfterWithDouble:(double)double withDouble:(double)withDouble;
+ (double)signumWithDouble:(double)double;
+ (float)absWithFloat:(float)float;
+ (float)maxWithFloat:(float)result withFloat:(float)float;
+ (float)minWithFloat:(float)float withFloat:(float)withFloat;
+ (float)signumWithFloat:(float)float;
+ (int)absWithInt:(int)int;
+ (int)maxWithInt:(int)int withInt:(int)withInt;
+ (int)minWithInt:(int)int withInt:(int)withInt;
+ (int)roundWithFloat:(float)float;
+ (int64_t)absWithLong:(int64_t)long;
+ (int64_t)maxWithLong:(int64_t)long withLong:(int64_t)withLong;
+ (int64_t)minWithLong:(int64_t)long withLong:(int64_t)withLong;
+ (int64_t)roundWithDouble:(double)double;
@end

@implementation JavaLangMath

+ (double)absWithDouble:(double)double
{
  v3 = JavaLangDouble_doubleToRawLongBitsWithDouble_(double) & 0x7FFFFFFFFFFFFFFFLL;

  return JavaLangDouble_longBitsToDoubleWithLong_(v3);
}

+ (float)absWithFloat:(float)float
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(float) & 0x7FFFFFFF;

  return JavaLangFloat_intBitsToFloatWithInt_(v3);
}

+ (int)absWithInt:(int)int
{
  if (int >= 0)
  {
    return int;
  }

  else
  {
    return -int;
  }
}

+ (int64_t)absWithLong:(int64_t)long
{
  if (long >= 0)
  {
    return long;
  }

  else
  {
    return -long;
  }
}

+ (double)maxWithDouble:(double)result withDouble:(double)double
{
  if (result <= double)
  {
    if (result >= double)
    {
      if (result == double)
      {
        v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(result);
        result = 0.0;
        if (v5)
        {
          return double;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return double;
    }
  }

  return result;
}

+ (float)maxWithFloat:(float)result withFloat:(float)float
{
  if (result <= float)
  {
    if (result >= float)
    {
      if (result == float)
      {
        v5 = JavaLangFloat_floatToRawIntBitsWithFloat_(result);
        result = 0.0;
        if (v5)
        {
          return float;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return float;
    }
  }

  return result;
}

+ (int)maxWithInt:(int)int withInt:(int)withInt
{
  if (int <= withInt)
  {
    return withInt;
  }

  else
  {
    return int;
  }
}

+ (int64_t)maxWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if (long <= withLong)
  {
    return withLong;
  }

  else
  {
    return long;
  }
}

+ (double)minWithDouble:(double)double withDouble:(double)withDouble
{
  withDoubleCopy = withDouble;
  if (double <= withDouble)
  {
    if (double >= withDouble)
    {
      if (double == withDouble)
      {
        if (JavaLangDouble_doubleToRawLongBitsWithDouble_(double) == 0x8000000000000000)
        {
          return -0.0;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return double;
    }
  }

  return withDoubleCopy;
}

+ (float)minWithFloat:(float)float withFloat:(float)withFloat
{
  withFloatCopy = withFloat;
  if (float <= withFloat)
  {
    if (float >= withFloat)
    {
      if (float == withFloat)
      {
        if (JavaLangFloat_floatToRawIntBitsWithFloat_(float) == 0x80000000)
        {
          return -0.0;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return float;
    }
  }

  return withFloatCopy;
}

+ (int)minWithInt:(int)int withInt:(int)withInt
{
  if (int >= withInt)
  {
    return withInt;
  }

  else
  {
    return int;
  }
}

+ (int64_t)minWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if (long >= withLong)
  {
    return withLong;
  }

  else
  {
    return long;
  }
}

+ (int64_t)roundWithDouble:(double)double
{
  v3 = double + 0.5;
  v4 = vcvtmd_s64_f64(v3);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (floor(v3) < 0.0)
  {
    v5 = 0x8000000000000000;
  }

  if (v4 == 0x8000000000000000)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (int)roundWithFloat:(float)float
{
  v3 = float + 0.5;
  v4 = vcvtms_s32_f32(v3);
  if (floorf(v3) < 0.0)
  {
    v5 = 0x80000000;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (v4 == 0x80000000)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (double)signumWithDouble:(double)double
{
  if (JavaLangDouble_isNaNWithDouble_())
  {
    return NAN;
  }

  result = 1.0;
  doubleCopy = -1.0;
  if (double >= 0.0)
  {
    doubleCopy = double;
  }

  if (double <= 0.0)
  {
    return doubleCopy;
  }

  return result;
}

+ (float)signumWithFloat:(float)float
{
  if (JavaLangFloat_isNaNWithFloat_())
  {
    return NAN;
  }

  result = 1.0;
  floatCopy = -1.0;
  if (float >= 0.0)
  {
    floatCopy = float;
  }

  if (float <= 0.0)
  {
    return floatCopy;
  }

  return result;
}

+ (double)nextAfterWithDouble:(double)double withDouble:(double)withDouble
{
  if (double == 0.0 && withDouble == 0.0)
  {
    return withDouble;
  }

  else
  {
    return nextafter(double, withDouble);
  }
}

@end
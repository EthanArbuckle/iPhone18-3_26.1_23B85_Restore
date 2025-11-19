@interface JavaLangMath
+ (double)absWithDouble:(double)a3;
+ (double)maxWithDouble:(double)result withDouble:(double)a4;
+ (double)minWithDouble:(double)a3 withDouble:(double)a4;
+ (double)nextAfterWithDouble:(double)a3 withDouble:(double)a4;
+ (double)signumWithDouble:(double)a3;
+ (float)absWithFloat:(float)a3;
+ (float)maxWithFloat:(float)result withFloat:(float)a4;
+ (float)minWithFloat:(float)a3 withFloat:(float)a4;
+ (float)signumWithFloat:(float)a3;
+ (int)absWithInt:(int)a3;
+ (int)maxWithInt:(int)a3 withInt:(int)a4;
+ (int)minWithInt:(int)a3 withInt:(int)a4;
+ (int)roundWithFloat:(float)a3;
+ (int64_t)absWithLong:(int64_t)a3;
+ (int64_t)maxWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (int64_t)minWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (int64_t)roundWithDouble:(double)a3;
@end

@implementation JavaLangMath

+ (double)absWithDouble:(double)a3
{
  v3 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a3) & 0x7FFFFFFFFFFFFFFFLL;

  return JavaLangDouble_longBitsToDoubleWithLong_(v3);
}

+ (float)absWithFloat:(float)a3
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3) & 0x7FFFFFFF;

  return JavaLangFloat_intBitsToFloatWithInt_(v3);
}

+ (int)absWithInt:(int)a3
{
  if (a3 >= 0)
  {
    return a3;
  }

  else
  {
    return -a3;
  }
}

+ (int64_t)absWithLong:(int64_t)a3
{
  if (a3 >= 0)
  {
    return a3;
  }

  else
  {
    return -a3;
  }
}

+ (double)maxWithDouble:(double)result withDouble:(double)a4
{
  if (result <= a4)
  {
    if (result >= a4)
    {
      if (result == a4)
      {
        v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(result);
        result = 0.0;
        if (v5)
        {
          return a4;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return a4;
    }
  }

  return result;
}

+ (float)maxWithFloat:(float)result withFloat:(float)a4
{
  if (result <= a4)
  {
    if (result >= a4)
    {
      if (result == a4)
      {
        v5 = JavaLangFloat_floatToRawIntBitsWithFloat_(result);
        result = 0.0;
        if (v5)
        {
          return a4;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return a4;
    }
  }

  return result;
}

+ (int)maxWithInt:(int)a3 withInt:(int)a4
{
  if (a3 <= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)maxWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (a3 <= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (double)minWithDouble:(double)a3 withDouble:(double)a4
{
  v4 = a4;
  if (a3 <= a4)
  {
    if (a3 >= a4)
    {
      if (a3 == a4)
      {
        if (JavaLangDouble_doubleToRawLongBitsWithDouble_(a3) == 0x8000000000000000)
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
      return a3;
    }
  }

  return v4;
}

+ (float)minWithFloat:(float)a3 withFloat:(float)a4
{
  v4 = a4;
  if (a3 <= a4)
  {
    if (a3 >= a4)
    {
      if (a3 == a4)
      {
        if (JavaLangFloat_floatToRawIntBitsWithFloat_(a3) == 0x80000000)
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
      return a3;
    }
  }

  return v4;
}

+ (int)minWithInt:(int)a3 withInt:(int)a4
{
  if (a3 >= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)minWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (a3 >= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)roundWithDouble:(double)a3
{
  v3 = a3 + 0.5;
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

+ (int)roundWithFloat:(float)a3
{
  v3 = a3 + 0.5;
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

+ (double)signumWithDouble:(double)a3
{
  if (JavaLangDouble_isNaNWithDouble_())
  {
    return NAN;
  }

  result = 1.0;
  v5 = -1.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  if (a3 <= 0.0)
  {
    return v5;
  }

  return result;
}

+ (float)signumWithFloat:(float)a3
{
  if (JavaLangFloat_isNaNWithFloat_())
  {
    return NAN;
  }

  result = 1.0;
  v5 = -1.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  if (a3 <= 0.0)
  {
    return v5;
  }

  return result;
}

+ (double)nextAfterWithDouble:(double)a3 withDouble:(double)a4
{
  if (a3 == 0.0 && a4 == 0.0)
  {
    return a4;
  }

  else
  {
    return nextafter(a3, a4);
  }
}

@end
@interface JavaLangFloat
+ (BOOL)isInfiniteWithFloat:(float)float;
+ (BOOL)isNaNWithFloat:(float)float;
+ (float)intBitsToFloatWithInt:(int)int;
+ (int)floatToRawIntBitsWithFloat:(float)float;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInfinite;
- (BOOL)isNaN;
- (JavaLangFloat)initWithDouble:(double)double;
- (JavaLangFloat)initWithNSString:(id)string;
- (char)charValue;
- (int)compareToWithId:(id)id;
- (int)intValue;
- (int64_t)longLongValue;
- (signed)shortValue;
@end

@implementation JavaLangFloat

- (JavaLangFloat)initWithDouble:(double)double
{
  doubleCopy = double;
  self->value_ = doubleCopy;
  return self;
}

- (JavaLangFloat)initWithNSString:(id)string
{
  JavaLangFloat_parseFloatWithNSString_(string);
  self->value_ = v4;
  return self;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(id + 2);

  return JavaLangFloat_compareWithFloat_withFloat_(value, v6);
}

- (char)charValue
{
  value = self->value_;
  v3 = value;
  if (value < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == 0x80000000)
  {
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = JavaLangFloat_floatToIntBitsWithFloat_(self->value_);
  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5 == JavaLangFloat_floatToIntBitsWithFloat_(*(equal + 2));
}

+ (int)floatToRawIntBitsWithFloat:(float)float
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return LODWORD(float);
}

+ (float)intBitsToFloatWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return *&int;
}

- (int)intValue
{
  value = self->value_;
  if (value < 0.0)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (value == 0x80000000)
  {
    return v3;
  }

  else
  {
    return value;
  }
}

- (BOOL)isInfinite
{
  value = self->value_;
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return fabsf(value) == INFINITY;
}

+ (BOOL)isInfiniteWithFloat:(float)float
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return fabsf(float) == INFINITY;
}

- (BOOL)isNaN
{
  value = self->value_;
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return 0;
}

+ (BOOL)isNaNWithFloat:(float)float
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return 0;
}

- (int64_t)longLongValue
{
  value = self->value_;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (value < 0.0)
  {
    v3 = 0x8000000000000000;
  }

  if (value == 0x8000000000000000)
  {
    return v3;
  }

  else
  {
    return value;
  }
}

- (signed)shortValue
{
  value = self->value_;
  v3 = value;
  if (value < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == 0x80000000)
  {
    LOWORD(v3) = v4;
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSClass_arrayType(+[IOSClass floatClass](IOSClass "floatClass")];
    objc_opt_class();
    if (v2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    JreStrongAssign(&JavaLangFloat_TYPE_, v2);
    atomic_store(1u, JavaLangFloat__initialized);
  }
}

@end
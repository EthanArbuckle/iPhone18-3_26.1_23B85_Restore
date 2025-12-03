@interface JavaLangDouble
+ (BOOL)isInfiniteWithDouble:(double)double;
+ (BOOL)isNaNWithDouble:(double)double;
+ (double)longBitsToDoubleWithLong:(int64_t)long;
+ (int64_t)doubleToRawLongBitsWithDouble:(double)double;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInfinite;
- (BOOL)isNaN;
- (char)charValue;
- (int)compareToWithId:(id)id;
- (int)intValue;
- (int64_t)longLongValue;
- (signed)shortValue;
@end

@implementation JavaLangDouble

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
  v6 = *(id + 1);

  return JavaLangDouble_compareWithDouble_withDouble_(value, v6);
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

+ (int64_t)doubleToRawLongBitsWithDouble:(double)double
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return *&double;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = JavaLangDouble_doubleToLongBitsWithDouble_(self->value_);
  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5 == JavaLangDouble_doubleToLongBitsWithDouble_(*(equal + 1));
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
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return fabs(value) == INFINITY;
}

+ (BOOL)isInfiniteWithDouble:(double)double
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return fabs(double) == INFINITY;
}

- (BOOL)isNaN
{
  value = self->value_;
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return 0;
}

+ (BOOL)isNaNWithDouble:(double)double
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return 0;
}

+ (double)longBitsToDoubleWithLong:(int64_t)long
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return *&long;
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
    v2 = [IOSClass_arrayType(+[IOSClass doubleClass](IOSClass "doubleClass")];
    objc_opt_class();
    if (v2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    JreStrongAssign(&JavaLangDouble_TYPE_, v2);
    atomic_store(1u, JavaLangDouble__initialized);
  }
}

@end
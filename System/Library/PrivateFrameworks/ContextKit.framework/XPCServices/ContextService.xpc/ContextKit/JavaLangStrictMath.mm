@interface JavaLangStrictMath
+ (double)ceilWithDouble:(double)double;
+ (double)cosWithDouble:(double)double;
+ (double)floorWithDouble:(double)double;
+ (double)powWithDouble:(double)double withDouble:(double)withDouble;
+ (double)random;
+ (double)rintWithDouble:(double)double;
+ (double)sinWithDouble:(double)double;
+ (double)sqrtWithDouble:(double)double;
+ (double)tanWithDouble:(double)double;
+ (int64_t)maxWithLong:(int64_t)long withLong:(int64_t)withLong;
+ (int64_t)minWithLong:(int64_t)long withLong:(int64_t)withLong;
+ (void)initialize;
@end

@implementation JavaLangStrictMath

+ (double)ceilWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return ceil(double);
}

+ (double)cosWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return cos(double);
}

+ (double)floorWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return floor(double);
}

+ (int64_t)maxWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (long <= withLong)
  {
    return withLong;
  }

  else
  {
    return long;
  }
}

+ (int64_t)minWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (long >= withLong)
  {
    return withLong;
  }

  else
  {
    return long;
  }
}

+ (double)powWithDouble:(double)double withDouble:(double)withDouble
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return pow(double, withDouble);
}

+ (double)random
{
  if (atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire))
  {
  }

  else
  {
    sub_100218228();
  }

  return JavaLangMath_random();
}

+ (double)rintWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return rint(double);
}

+ (double)sinWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return sin(double);
}

+ (double)sqrtWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return sqrt(double);
}

+ (double)tanWithDouble:(double)double
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return tan(double);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3[0] = xmmword_100315420;
    v3[1] = unk_100315430;
    JreStrongAssignAndConsume(&qword_100555100, [IOSDoubleArray newArrayWithDoubles:v3 count:4]);
    v2[0] = xmmword_100315440;
    v2[1] = unk_100315450;
    JreStrongAssignAndConsume(&qword_100555108, [IOSDoubleArray newArrayWithDoubles:v2 count:4]);
    qword_100555110 = JavaLangDouble_doubleToRawLongBitsWithDouble_(1.0);
    atomic_store(1u, &JavaLangStrictMath__initialized);
  }
}

@end
@interface JavaLangStrictMath
+ (double)ceilWithDouble:(double)a3;
+ (double)cosWithDouble:(double)a3;
+ (double)floorWithDouble:(double)a3;
+ (double)powWithDouble:(double)a3 withDouble:(double)a4;
+ (double)random;
+ (double)rintWithDouble:(double)a3;
+ (double)sinWithDouble:(double)a3;
+ (double)sqrtWithDouble:(double)a3;
+ (double)tanWithDouble:(double)a3;
+ (int64_t)maxWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (int64_t)minWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (void)initialize;
@end

@implementation JavaLangStrictMath

+ (double)ceilWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return ceil(a3);
}

+ (double)cosWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return cos(a3);
}

+ (double)floorWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return floor(a3);
}

+ (int64_t)maxWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a3 <= a4)
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
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a3 >= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (double)powWithDouble:(double)a3 withDouble:(double)a4
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return pow(a3, a4);
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

+ (double)rintWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return rint(a3);
}

+ (double)sinWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return sin(a3);
}

+ (double)sqrtWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return sqrt(a3);
}

+ (double)tanWithDouble:(double)a3
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return tan(a3);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
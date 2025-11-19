@interface JavaMathConversion
+ (int64_t)divideLongByBillionWithLong:(int64_t)a3;
+ (void)initialize;
@end

@implementation JavaMathConversion

+ (int64_t)divideLongByBillionWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019A278();
  }

  return (a3 / 0x3B9ACA00uLL) | ((a3 % 0x3B9ACA00uLL) << 32);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v5 = 5;
    v4[6] = xmmword_100315130;
    v4[7] = unk_100315140;
    v4[8] = xmmword_100315150;
    v4[2] = xmmword_1003150F0;
    v4[3] = unk_100315100;
    v4[4] = xmmword_100315110;
    v4[5] = unk_100315120;
    v4[0] = xmmword_1003150D0;
    v4[1] = unk_1003150E0;
    JreStrongAssignAndConsume(&JavaMathConversion_digitFitInInt_, [IOSIntArray newArrayWithInts:v4 count:37]);
    v2[6] = xmmword_1003151C4;
    v3[0] = unk_1003151D4;
    *(v3 + 12) = unk_1003151E0;
    v2[2] = xmmword_100315184;
    v2[3] = unk_100315194;
    v2[4] = xmmword_1003151A4;
    v2[5] = unk_1003151B4;
    v2[0] = xmmword_100315164;
    v2[1] = unk_100315174;
    JreStrongAssignAndConsume(&JavaMathConversion_bigRadices_, [IOSIntArray newArrayWithInts:v2 count:35]);
    atomic_store(1u, JavaMathConversion__initialized);
  }
}

@end
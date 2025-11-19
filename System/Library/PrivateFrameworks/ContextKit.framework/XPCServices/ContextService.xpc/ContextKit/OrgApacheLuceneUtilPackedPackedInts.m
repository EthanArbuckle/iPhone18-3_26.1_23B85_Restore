@interface OrgApacheLuceneUtilPackedPackedInts
+ (int)unsignedBitsRequiredWithLong:(int64_t)a3;
+ (int64_t)maxValueWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts

+ (int)unsignedBitsRequiredWithLong:(int64_t)a3
{
  v3 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(a3);

  return JavaLangMath_maxWithInt_withInt_(1, v3);
}

+ (int64_t)maxValueWithInt:(int)a3
{
  if (a3 == 64)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return ~(-1 << a3);
  }
}

@end
@interface OrgApacheLuceneUtilPackedPackedInts
+ (int)unsignedBitsRequiredWithLong:(int64_t)long;
+ (int64_t)maxValueWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts

+ (int)unsignedBitsRequiredWithLong:(int64_t)long
{
  v3 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(long);

  return JavaLangMath_maxWithInt_withInt_(1, v3);
}

+ (int64_t)maxValueWithInt:(int)int
{
  if (int == 64)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return ~(-1 << int);
  }
}

@end
@interface OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum
- (OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5;
- (int)longCountWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum

- (int)longCountWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  v5 = JavaLangMath_ceilWithDouble_(a4 / (64 / a5));
  if (v5 < 0.0)
  {
    v6 = 0x80000000;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  if (v5 == 0x80000000)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5
{
  JavaLangEnum_initWithNSString_withInt_(self, a4, a5);
  *(&self->super.super.ordinal_ + 1) = a3;
  return self;
}

@end
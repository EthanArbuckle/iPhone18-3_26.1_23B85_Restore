@interface OrgApacheLuceneUtilPackedPackedInts_Format_$1Enum
- (OrgApacheLuceneUtilPackedPackedInts_Format_$1Enum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5;
- (int64_t)byteCountWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Format_$1Enum

- (int64_t)byteCountWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  v5 = a4 * a5;
  if (a3 <= 0)
  {
    v9 = JavaLangMath_ceilWithDouble_(v5 * 0.015625);
    v10 = v9;
    v11 = 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0.0)
    {
      v11 = 0;
    }

    if (v10 == 0x8000000000000000)
    {
      v10 = v11;
    }

    return 8 * v10;
  }

  else
  {
    v6 = JavaLangMath_ceilWithDouble_(v5 * 0.125);
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 < 0.0)
    {
      v7 = 0x8000000000000000;
    }

    if (v6 == 0x8000000000000000)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

- (OrgApacheLuceneUtilPackedPackedInts_Format_$1Enum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5
{
  JavaLangEnum_initWithNSString_withInt_(self, a4, a5);
  *(&self->super.super.ordinal_ + 1) = a3;
  return self;
}

@end
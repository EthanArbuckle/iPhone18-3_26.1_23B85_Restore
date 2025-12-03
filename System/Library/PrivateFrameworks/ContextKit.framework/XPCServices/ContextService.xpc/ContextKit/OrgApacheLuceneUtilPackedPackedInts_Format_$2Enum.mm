@interface OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum
- (OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt;
- (int)longCountWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum

- (int)longCountWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = JavaLangMath_ceilWithDouble_(withInt / (64 / a5));
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

- (OrgApacheLuceneUtilPackedPackedInts_Format_$2Enum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt
{
  JavaLangEnum_initWithNSString_withInt_(self, string, withInt);
  *(&self->super.super.ordinal_ + 1) = int;
  return self;
}

@end
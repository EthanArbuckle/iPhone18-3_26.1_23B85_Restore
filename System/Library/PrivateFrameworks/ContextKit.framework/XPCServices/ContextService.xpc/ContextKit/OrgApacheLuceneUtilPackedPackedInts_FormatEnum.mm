@interface OrgApacheLuceneUtilPackedPackedInts_FormatEnum
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatEnum

- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt
{
  JavaLangEnum_initWithNSString_withInt_(self, string, withInt);
  *(&self->super.ordinal_ + 1) = int;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneUtilPackedPackedInts_Format__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"PACKED", 0);
    *(&v2->super.super.ordinal_ + 1) = 0;
    OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneUtilPackedPackedInts_Format__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"PACKED_SINGLE_BLOCK", 1);
    *(&v3->super.super.ordinal_ + 1) = 1;
    qword_100557918 = v3;
    atomic_store(1u, OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized);
  }
}

@end
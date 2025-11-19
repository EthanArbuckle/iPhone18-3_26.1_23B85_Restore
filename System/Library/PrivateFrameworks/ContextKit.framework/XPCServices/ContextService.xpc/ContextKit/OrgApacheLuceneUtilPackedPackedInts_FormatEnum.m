@interface OrgApacheLuceneUtilPackedPackedInts_FormatEnum
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatEnum

- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)a3 withNSString:(id)a4 withInt:(int)a5
{
  JavaLangEnum_initWithNSString_withInt_(self, a4, a5);
  *(&self->super.ordinal_ + 1) = a3;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
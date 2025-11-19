@interface OrgApacheLuceneIndexDocValuesTypeEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexDocValuesTypeEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NONE", 0);
    OrgApacheLuceneIndexDocValuesTypeEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"NUMERIC", 1);
    qword_100557A78 = v3;
    v4 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"BINARY", 2);
    qword_100557A80 = v4;
    v5 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"SORTED", 3);
    qword_100557A88 = v5;
    v6 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"SORTED_NUMERIC", 4);
    qword_100557A90 = v6;
    v7 = [OrgApacheLuceneIndexDocValuesTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"SORTED_SET", 5);
    qword_100557A98 = v7;
    atomic_store(1u, OrgApacheLuceneIndexDocValuesTypeEnum__initialized);
  }
}

@end
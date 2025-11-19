@interface OrgApacheLuceneIndexIndexOptionsEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexIndexOptionsEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneIndexIndexOptionsEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NONE", 0);
    OrgApacheLuceneIndexIndexOptionsEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexIndexOptionsEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"DOCS", 1);
    qword_100557378 = v3;
    v4 = [OrgApacheLuceneIndexIndexOptionsEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"DOCS_AND_FREQS", 2);
    qword_100557380 = v4;
    v5 = [OrgApacheLuceneIndexIndexOptionsEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"DOCS_AND_FREQS_AND_POSITIONS", 3);
    qword_100557388 = v5;
    v6 = [OrgApacheLuceneIndexIndexOptionsEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS", 4);
    qword_100557390 = v6;
    atomic_store(1u, OrgApacheLuceneIndexIndexOptionsEnum__initialized);
  }
}

@end
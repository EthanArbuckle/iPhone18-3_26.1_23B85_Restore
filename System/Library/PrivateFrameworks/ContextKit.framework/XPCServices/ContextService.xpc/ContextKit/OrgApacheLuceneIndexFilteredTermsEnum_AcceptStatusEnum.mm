@interface OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"YES", 0);
    OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"YES_AND_SEEK", 1);
    qword_1005578D8 = v3;
    v4 = [OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"NO", 2);
    qword_1005578E0 = v4;
    v5 = [OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"NO_AND_SEEK", 3);
    qword_1005578E8 = v5;
    v6 = [OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"END", 4);
    qword_1005578F0 = v6;
    atomic_store(1u, OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized);
  }
}

@end
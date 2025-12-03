@interface OrgApacheLuceneIndexTermsEnum_SeekStatusEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexTermsEnum_SeekStatusEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneIndexTermsEnum_SeekStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"END", 0);
    OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexTermsEnum_SeekStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"FOUND", 1);
    qword_100557A48 = v3;
    v4 = [OrgApacheLuceneIndexTermsEnum_SeekStatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"NOT_FOUND", 2);
    qword_100557A50 = v4;
    atomic_store(1u, OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized);
  }
}

@end
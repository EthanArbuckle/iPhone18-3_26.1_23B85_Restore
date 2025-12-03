@interface OrgApacheLuceneDocumentField_StoreEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentField_StoreEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneDocumentField_StoreEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"YES", 0);
    OrgApacheLuceneDocumentField_StoreEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneDocumentField_StoreEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"NO", 1);
    qword_100557790 = v3;
    atomic_store(1u, &OrgApacheLuceneDocumentField_StoreEnum__initialized);
  }
}

@end
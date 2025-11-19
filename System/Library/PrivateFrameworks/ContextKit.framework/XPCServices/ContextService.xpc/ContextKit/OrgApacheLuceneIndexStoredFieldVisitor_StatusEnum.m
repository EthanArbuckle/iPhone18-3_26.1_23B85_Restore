@interface OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"YES", 0);
    OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"NO", 1);
    qword_100557808 = v3;
    v4 = [OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"STOP", 2);
    qword_100557810 = v4;
    atomic_store(1u, OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized);
  }
}

@end
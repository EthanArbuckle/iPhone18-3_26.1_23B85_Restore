@interface OrgApacheLuceneDocumentStoredField
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentStoredField

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_OrgApacheLuceneDocumentFieldType_init();
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStoredField_TYPE_, v2);
    [OrgApacheLuceneDocumentStoredField_TYPE_ setStoredWithBoolean:1];
    [OrgApacheLuceneDocumentStoredField_TYPE_ freeze];
    atomic_store(1u, OrgApacheLuceneDocumentStoredField__initialized);
  }
}

@end
@interface OrgApacheLuceneDocumentTextField
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentTextField

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_OrgApacheLuceneDocumentFieldType_init();
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentTextField_TYPE_NOT_STORED_, v2);
    v3 = new_OrgApacheLuceneDocumentFieldType_init();
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentTextField_TYPE_STORED_, v3);
    v4 = OrgApacheLuceneDocumentTextField_TYPE_NOT_STORED_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    [v4 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
    [OrgApacheLuceneDocumentTextField_TYPE_NOT_STORED_ setTokenizedWithBoolean:1];
    [OrgApacheLuceneDocumentTextField_TYPE_NOT_STORED_ freeze];
    v5 = OrgApacheLuceneDocumentTextField_TYPE_STORED_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    [v5 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
    [OrgApacheLuceneDocumentTextField_TYPE_STORED_ setTokenizedWithBoolean:1];
    [OrgApacheLuceneDocumentTextField_TYPE_STORED_ setStoredWithBoolean:1];
    [OrgApacheLuceneDocumentTextField_TYPE_STORED_ freeze];
    atomic_store(1u, OrgApacheLuceneDocumentTextField__initialized);
  }
}

@end
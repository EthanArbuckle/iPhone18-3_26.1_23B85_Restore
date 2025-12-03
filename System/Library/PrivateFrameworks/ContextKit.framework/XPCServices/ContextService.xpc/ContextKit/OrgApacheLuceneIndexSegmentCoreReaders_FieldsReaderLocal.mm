@interface OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal
- (OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal)initWithOrgApacheLuceneIndexSegmentCoreReaders:(id)readers;
- (id)initialValue;
- (void)__javaClone;
@end

@implementation OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal

- (id)initialValue
{
  v2 = *(objc_loadWeak(&self->this$0_) + 3);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 clone];
}

- (OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal)initWithOrgApacheLuceneIndexSegmentCoreReaders:(id)readers
{
  objc_storeWeak(&self->this$0_, readers);
  OrgApacheLuceneUtilCloseableThreadLocal_init(&self->super.super.isa);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal;
  [(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *)&v3 __javaClone];
}

@end
@interface OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal
- (OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal)initWithOrgApacheLuceneIndexSegmentCoreReaders:(id)a3;
- (id)initialValue;
- (void)__javaClone;
@end

@implementation OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal

- (id)initialValue
{
  if (!*(objc_loadWeak(&self->this$0_) + 4))
  {
    return 0;
  }

  v3 = *(objc_loadWeak(&self->this$0_) + 4);

  return [v3 clone];
}

- (OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal)initWithOrgApacheLuceneIndexSegmentCoreReaders:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  OrgApacheLuceneUtilCloseableThreadLocal_init(&self->super.super.isa);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal;
  [(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *)&v3 __javaClone];
}

@end
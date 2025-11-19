@interface OrgApacheLuceneIndexIndexWriter_ReaderPool
- (OrgApacheLuceneIndexIndexWriter_ReaderPool)initWithOrgApacheLuceneIndexIndexWriter:(id)a3;
- (id)getWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withBoolean:(BOOL)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexWriter_ReaderPool

- (id)getWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withBoolean:(BOOL)a4
{
  objc_sync_enter(self);
  objc_sync_exit(self);
  return 0;
}

- (OrgApacheLuceneIndexIndexWriter_ReaderPool)initWithOrgApacheLuceneIndexIndexWriter:(id)a3
{
  v4 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&self->readerMap_, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexWriter_ReaderPool;
  [(OrgApacheLuceneIndexIndexWriter_ReaderPool *)&v3 dealloc];
}

@end
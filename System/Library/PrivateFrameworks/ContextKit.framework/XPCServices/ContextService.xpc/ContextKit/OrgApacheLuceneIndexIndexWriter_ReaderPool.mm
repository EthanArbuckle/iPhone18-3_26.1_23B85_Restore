@interface OrgApacheLuceneIndexIndexWriter_ReaderPool
- (OrgApacheLuceneIndexIndexWriter_ReaderPool)initWithOrgApacheLuceneIndexIndexWriter:(id)writer;
- (id)getWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withBoolean:(BOOL)boolean;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexWriter_ReaderPool

- (id)getWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withBoolean:(BOOL)boolean
{
  objc_sync_enter(self);
  objc_sync_exit(self);
  return 0;
}

- (OrgApacheLuceneIndexIndexWriter_ReaderPool)initWithOrgApacheLuceneIndexIndexWriter:(id)writer
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
@interface OrgApacheLuceneSearchTermCollectingRewrite_TermCollector
- (OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)init;
- (void)dealloc;
- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4;
@end

@implementation OrgApacheLuceneSearchTermCollectingRewrite_TermCollector

- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4
{
  JreStrongAssign(&self->readerContext_, a4);

  JreStrongAssign(&self->topReaderContext_, a3);
}

- (OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)init
{
  v3 = new_OrgApacheLuceneUtilAttributeSource_init();
  JreStrongAssignAndConsume(&self->attributes_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermCollectingRewrite_TermCollector;
  [(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *)&v3 dealloc];
}

@end
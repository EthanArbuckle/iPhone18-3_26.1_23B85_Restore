@interface OrgApacheLuceneSearchTermCollectingRewrite_TermCollector
- (OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)init;
- (void)dealloc;
- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(id)context withOrgApacheLuceneIndexLeafReaderContext:(id)readerContext;
@end

@implementation OrgApacheLuceneSearchTermCollectingRewrite_TermCollector

- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(id)context withOrgApacheLuceneIndexLeafReaderContext:(id)readerContext
{
  JreStrongAssign(&self->readerContext_, readerContext);

  JreStrongAssign(&self->topReaderContext_, context);
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
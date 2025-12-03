@interface OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector
- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector

- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context || (v4 = *(context + 8), self->super.docBase_ = v4, (v5 = *&self->trackDocScores_) == 0) || (v6 = *&self->collectedHits_) == 0)
  {
    JreThrowNullPointerException();
  }

  v7 = *(v5 + 12) - v4;
  v8 = [v6 getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:?];
  getReverseMul = [*&self->collectedHits_ getReverseMul];
  v10 = [OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector__1 alloc];
  JreStrongAssign(&v10->this$0_, self);
  v10->val$afterDoc_ = v7;
  sub_100094EC0(v10, v8, getReverseMul);

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector;
  [(OrgApacheLuceneSearchTopFieldCollector *)&v3 dealloc];
}

@end
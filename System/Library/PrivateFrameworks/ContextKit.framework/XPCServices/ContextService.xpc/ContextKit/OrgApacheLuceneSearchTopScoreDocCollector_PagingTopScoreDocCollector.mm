@interface OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector
- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
- (int)topDocsSize;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector

- (int)topDocsSize
{
  pq = self->super.super.pq_;
  if (!pq)
  {
    JreThrowNullPointerException();
  }

  collectedHits = self->collectedHits_;
  if (collectedHits < [(OrgApacheLuceneUtilPriorityQueue *)pq size])
  {
    return self->collectedHits_;
  }

  v6 = self->super.super.pq_;

  return [(OrgApacheLuceneUtilPriorityQueue *)v6 size];
}

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  totalHits = self->super.super.totalHits_;
  if (array)
  {
    v5 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(self->super.super.totalHits_, array);
  }

  else
  {
    v6 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    v5 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits, v6, NAN);
  }

  return v5;
}

- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context || (after = self->after_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(context + 8);
  v6 = after->doc_ - v5;
  v7 = [OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector__1 alloc];
  JreStrongAssign(&v7->this$0_, self);
  v7->val$afterDoc_ = v6;
  v7->val$docBase_ = v5;

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector;
  [(OrgApacheLuceneSearchTopScoreDocCollector *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneSearchTopDocsCollector
+ (void)initialize;
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
- (id)topDocs;
- (int)topDocsSize;
- (void)dealloc;
- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
@end

@implementation OrgApacheLuceneSearchTopDocsCollector

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  v4 = (int - 1);
  if (int - 1 >= 0)
  {
    if (array)
    {
      while (1)
      {
        pq = self->pq_;
        if (!pq)
        {
          break;
        }

        IOSObjectArray_Set(array, v4, [(OrgApacheLuceneUtilPriorityQueue *)pq pop]);
        if (v4-- <= 0)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  if (!array)
  {
    return OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_;
  }

  v4 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(self->totalHits_, array);

  return v4;
}

- (int)topDocsSize
{
  pq = self->pq_;
  if (!pq)
  {
    JreThrowNullPointerException();
  }

  totalHits = self->totalHits_;
  if (totalHits < [(OrgApacheLuceneUtilPriorityQueue *)pq size])
  {
    return self->totalHits_;
  }

  v6 = self->pq_;

  return [(OrgApacheLuceneUtilPriorityQueue *)v6 size];
}

- (id)topDocs
{
  topDocsSize = [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsSize];

  return [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsWithInt:0 withInt:topDocsSize];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocsCollector;
  [(OrgApacheLuceneSearchTopDocsCollector *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    v3 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(0, v2, NAN);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_, v3);
    atomic_store(1u, OrgApacheLuceneSearchTopDocsCollector__initialized);
  }
}

@end
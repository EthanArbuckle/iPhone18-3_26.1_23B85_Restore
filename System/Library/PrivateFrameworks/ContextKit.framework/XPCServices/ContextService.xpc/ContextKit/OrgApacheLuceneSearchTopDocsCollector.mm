@interface OrgApacheLuceneSearchTopDocsCollector
+ (void)initialize;
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)a3 withInt:(int)a4;
- (id)topDocs;
- (int)topDocsSize;
- (void)dealloc;
- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)a3 withInt:(int)a4;
@end

@implementation OrgApacheLuceneSearchTopDocsCollector

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)a3 withInt:(int)a4
{
  v4 = (a4 - 1);
  if (a4 - 1 >= 0)
  {
    if (a3)
    {
      while (1)
      {
        pq = self->pq_;
        if (!pq)
        {
          break;
        }

        IOSObjectArray_Set(a3, v4, [(OrgApacheLuceneUtilPriorityQueue *)pq pop]);
        if (v4-- <= 0)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    return OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_;
  }

  v4 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(self->totalHits_, a3);

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
  v3 = [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsSize];

  return [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsWithInt:0 withInt:v3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocsCollector;
  [(OrgApacheLuceneSearchTopDocsCollector *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    v3 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(0, v2, NAN);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_, v3);
    atomic_store(1u, OrgApacheLuceneSearchTopDocsCollector__initialized);
  }
}

@end
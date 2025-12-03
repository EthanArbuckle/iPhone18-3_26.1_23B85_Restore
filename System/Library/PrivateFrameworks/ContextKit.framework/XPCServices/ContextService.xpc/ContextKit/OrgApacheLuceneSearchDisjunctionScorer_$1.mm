@interface OrgApacheLuceneSearchDisjunctionScorer_$1
- (BOOL)matches;
- (OrgApacheLuceneSearchDisjunctionScorer_$1)initWithOrgApacheLuceneSearchDisjunctionScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionScorer_$1

- (BOOL)matches
{
  subScorers = self->this$0_->subScorers_;
  if (!subScorers)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  topList = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers topList];
  while (1)
  {
    if (!topList)
    {
      goto LABEL_18;
    }

    v5 = *(topList + 6);
    if (!v5 || ([v5 matches] & 1) != 0)
    {
      break;
    }

    topList = *(topList + 4);
    if (!topList)
    {
      return 0;
    }
  }

  if (self->this$0_->needsScores_)
  {
    v7 = *(topList + 4);
    if (v7)
    {
      v8 = topList;
      do
      {
        v9 = *(v7 + 48);
        v10 = v7;
        if (v9)
        {
          matches = [v9 matches];
          v10 = v7;
          if ((matches & 1) == 0)
          {
            JreStrongAssign(v8 + 4, *(v7 + 32));
            v10 = v8;
          }
        }

        v7 = *(v7 + 32);
        v8 = v10;
      }

      while (v7);
    }
  }

  else
  {
    JreStrongAssign(topList + 4, 0);
  }

  JreStrongAssign(&self->this$0_->topScorers_, topList);
  return 1;
}

- (OrgApacheLuceneSearchDisjunctionScorer_$1)initWithOrgApacheLuceneSearchDisjunctionScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  JreStrongAssign(&self->this$0_, scorer);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneSearchDisjunctionScorer_$1
- (BOOL)matches;
- (OrgApacheLuceneSearchDisjunctionScorer_$1)initWithOrgApacheLuceneSearchDisjunctionScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4;
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

  v4 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers topList];
  while (1)
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = *(v4 + 6);
    if (!v5 || ([v5 matches] & 1) != 0)
    {
      break;
    }

    v4 = *(v4 + 4);
    if (!v4)
    {
      return 0;
    }
  }

  if (self->this$0_->needsScores_)
  {
    v7 = *(v4 + 4);
    if (v7)
    {
      v8 = v4;
      do
      {
        v9 = *(v7 + 48);
        v10 = v7;
        if (v9)
        {
          v11 = [v9 matches];
          v10 = v7;
          if ((v11 & 1) == 0)
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
    JreStrongAssign(v4 + 4, 0);
  }

  JreStrongAssign(&self->this$0_->topScorers_, v4);
  return 1;
}

- (OrgApacheLuceneSearchDisjunctionScorer_$1)initWithOrgApacheLuceneSearchDisjunctionScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end
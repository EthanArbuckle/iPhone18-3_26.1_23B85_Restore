@interface OrgApacheLuceneSearchDisjunctionScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (id)getChildren;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionScorer

- (id)asTwoPhaseIterator
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subScorers = self->subScorers_;
  if (!subScorers)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  result = [(OrgApacheLuceneSearchDisiPriorityQueue *)self->subScorers_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subScorers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        if (*(v8 + 48))
        {
          v9 = new_OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(self->subScorers_);
          v10 = [OrgApacheLuceneSearchDisjunctionScorer__1 alloc];
          JreStrongAssign(&v10->this$0_, self);
          OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v10, v9);
          return v10;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (int)docID
{
  subScorers = self->subScorers_;
  if (!subScorers || (v3 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers top]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[6];
}

- (int)nextDoc
{
  JreStrongAssign(&self->topScorers_, 0);
  subScorers = self->subScorers_;
  if (!subScorers || (v4 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers top]) == 0)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = v4[6];
  do
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      goto LABEL_8;
    }

    v5[6] = [v7 nextDoc];
    v8 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self->subScorers_ updateTop];
    if (!v8)
    {
      goto LABEL_8;
    }

    v5 = v8;
    result = v8[6];
  }

  while (result == v6);
  return result;
}

- (int)freq
{
  topScorers = self->topScorers_;
  if (!topScorers)
  {
    subScorers = self->subScorers_;
    if (!subScorers || (JreStrongAssign(&self->topScorers_, [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers topList]), (topScorers = self->topScorers_) == 0))
    {
      JreThrowNullPointerException();
    }
  }

  result = 0;
  do
  {
    topScorers = topScorers->next_;
    ++result;
  }

  while (topScorers);
  return result;
}

- (float)score
{
  topScorers = self->topScorers_;
  if (!topScorers)
  {
    subScorers = self->subScorers_;
    if (!subScorers)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&self->topScorers_, [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers topList]);
    topScorers = self->topScorers_;
  }

  [(OrgApacheLuceneSearchDisjunctionScorer *)self scoreWithOrgApacheLuceneSearchDisiWrapper:topScorers];
  return result;
}

- (id)getChildren
{
  v3 = new_JavaUtilArrayList_init();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subScorers = self->subScorers_;
  if (!subScorers)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(subScorers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_11;
        }

        v11 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(*(v10 + 8), @"SHOULD");
        [(JavaUtilArrayList *)v5 addWithId:v11, v13];
      }

      v7 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subScorers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
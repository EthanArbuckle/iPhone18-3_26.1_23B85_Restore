@interface OrgApacheLuceneSearchReqExclScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (id)getChildren;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchReqExclScorer

- (int)nextDoc
{
  reqApproximation = self->reqApproximation_;
  if (!reqApproximation)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchDocIdSetIterator *)reqApproximation nextDoc];

  return sub_1000B0F74(self, v4);
}

- (int)docID
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer docID];
}

- (int)freq
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer freq];
}

- (int64_t)cost
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer cost];
}

- (float)score
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)reqScorer score];
  return result;
}

- (id)getChildren
{
  v2 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->reqScorer_, @"MUST");

  return JavaUtilCollections_singletonWithId_(v2);
}

- (id)asTwoPhaseIterator
{
  if (!self->reqTwoPhaseIterator_)
  {
    return 0;
  }

  reqApproximation = self->reqApproximation_;
  v4 = [OrgApacheLuceneSearchReqExclScorer__1 alloc];
  JreStrongAssign(&v4->this$0_, self);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v4, reqApproximation);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchReqExclScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
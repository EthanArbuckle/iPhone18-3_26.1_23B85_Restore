@interface OrgApacheLuceneSearchTwoPhaseIterator_$1
- (int)docID;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTwoPhaseIterator_$1

- (int)docID
{
  v3 = self->val$approximation_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)v3 docID];
}

- (int)nextDoc
{
  v3 = self->val$approximation_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  nextDoc = [(OrgApacheLuceneSearchDocIdSetIterator *)v3 nextDoc];

  return sub_10013B220(self, nextDoc);
}

- (int64_t)cost
{
  v3 = self->val$approximation_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)v3 cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTwoPhaseIterator__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator_$1 *)&v3 dealloc];
}

@end
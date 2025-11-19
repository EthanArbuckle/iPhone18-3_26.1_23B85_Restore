@interface OrgApacheLuceneSearchDisjunctionDISIApproximation
- (int)docID;
- (int)nextDoc;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionDISIApproximation

- (int)docID
{
  subIterators = self->subIterators_;
  if (!subIterators || (v3 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subIterators top]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[6];
}

- (int)nextDoc
{
  subIterators = self->subIterators_;
  if (!subIterators || (v4 = [(OrgApacheLuceneSearchDisiPriorityQueue *)subIterators top]) == 0)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = v4[6];
  do
  {
    v7 = *(v5 + 5);
    if (!v7)
    {
      goto LABEL_8;
    }

    v5[6] = [v7 nextDoc];
    v8 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self->subIterators_ updateTop];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionDISIApproximation;
  [(OrgApacheLuceneSearchDisjunctionDISIApproximation *)&v3 dealloc];
}

@end
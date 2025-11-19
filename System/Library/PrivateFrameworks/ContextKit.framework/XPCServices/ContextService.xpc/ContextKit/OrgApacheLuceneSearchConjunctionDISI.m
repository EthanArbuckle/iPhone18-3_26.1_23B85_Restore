@interface OrgApacheLuceneSearchConjunctionDISI
- (int)docID;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI

- (int)docID
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)lead docID];
}

- (int)nextDoc
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchDocIdSetIterator *)lead nextDoc];

  return sub_100060DD8(self, v4);
}

- (int64_t)cost
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)lead cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionDISI;
  [(OrgApacheLuceneSearchConjunctionDISI *)&v3 dealloc];
}

@end
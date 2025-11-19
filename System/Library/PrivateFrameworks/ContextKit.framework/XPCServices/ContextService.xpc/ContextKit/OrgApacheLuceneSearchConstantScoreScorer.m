@interface OrgApacheLuceneSearchConstantScoreScorer
- (int)docID;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreScorer

- (int)docID
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)disi docID];
}

- (int)nextDoc
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)disi nextDoc];
}

- (int64_t)cost
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)disi cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
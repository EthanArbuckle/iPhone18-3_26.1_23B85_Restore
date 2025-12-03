@interface OrgApacheLuceneSearchExactPhraseScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (int)docID;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExactPhraseScorer

- (id)asTwoPhaseIterator
{
  conjunction = self->conjunction_;
  v4 = [OrgApacheLuceneSearchExactPhraseScorer__1 alloc];
  JreStrongAssign(&v4->this$0_, self);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v4, conjunction);

  return v4;
}

- (int)nextDoc
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  nextDoc = [(OrgApacheLuceneSearchConjunctionDISI *)conjunction nextDoc];

  return sub_10000EDFC(self, nextDoc);
}

- (int)docID
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction docID];
}

- (float)score
{
  docScorer = self->docScorer_;
  if (!docScorer)
  {
    JreThrowNullPointerException();
  }

  docID = [(OrgApacheLuceneSearchExactPhraseScorer *)self docID];
  *&v5 = self->freq_;

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer scoreWithInt:docID withFloat:v5];
  return result;
}

- (int64_t)cost
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExactPhraseScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
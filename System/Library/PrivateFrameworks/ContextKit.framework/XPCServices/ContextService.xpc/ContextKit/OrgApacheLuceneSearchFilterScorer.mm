@interface OrgApacheLuceneSearchFilterScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilterScorer

- (float)score
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)in score];
  return result;
}

- (int)freq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)in freq];
}

- (int)docID
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)in docID];
}

- (int)nextDoc
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)in nextDoc];
}

- (int64_t)cost
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)in cost];
}

- (id)asTwoPhaseIterator
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)in asTwoPhaseIterator];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilterScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
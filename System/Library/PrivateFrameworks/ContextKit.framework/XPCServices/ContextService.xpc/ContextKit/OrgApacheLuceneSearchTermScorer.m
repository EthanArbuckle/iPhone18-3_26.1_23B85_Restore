@interface OrgApacheLuceneSearchTermScorer
- (float)score;
- (id)description;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermScorer

- (int)docID
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum docID];
}

- (int)freq
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum freq];
}

- (int)nextDoc
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum nextDoc];
}

- (float)score
{
  docScorer = self->docScorer_;
  if (!docScorer || (postingsEnum = self->postingsEnum_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum docID];
  *&v6 = [(OrgApacheLuceneIndexPostingsEnum *)self->postingsEnum_ freq];

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer scoreWithInt:v5 withFloat:v6];
  return result;
}

- (int64_t)cost
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum cost];
}

- (id)description
{
  weight = self->super.weight_;
  v11.receiver = self;
  v11.super_class = OrgApacheLuceneSearchTermScorer;
  [(OrgApacheLuceneSearchTermScorer *)&v11 description];
  return JreStrcat("$@$$C", v3, v4, v5, v6, v7, v8, v9, @"scorer(");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
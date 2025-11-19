@interface OrgApacheLuceneIndexFilterLeafReader_FilterTerms
- (BOOL)hasFreqs;
- (BOOL)hasOffsets;
- (BOOL)hasPayloads;
- (BOOL)hasPositions;
- (id)getStats;
- (id)iterator;
- (int)getDocCount;
- (int64_t)getSumDocFreq;
- (int64_t)getSumTotalTermFreq;
- (int64_t)size;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterTerms

- (id)iterator
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in iterator];
}

- (int64_t)size
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in size];
}

- (int64_t)getSumTotalTermFreq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in getSumTotalTermFreq];
}

- (int64_t)getSumDocFreq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in getSumDocFreq];
}

- (int)getDocCount
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in getDocCount];
}

- (BOOL)hasFreqs
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in hasFreqs];
}

- (BOOL)hasOffsets
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in hasOffsets];
}

- (BOOL)hasPositions
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in hasPositions];
}

- (BOOL)hasPayloads
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in hasPayloads];
}

- (id)getStats
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTerms *)in getStats];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader_FilterTerms;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterTerms *)&v3 dealloc];
}

@end
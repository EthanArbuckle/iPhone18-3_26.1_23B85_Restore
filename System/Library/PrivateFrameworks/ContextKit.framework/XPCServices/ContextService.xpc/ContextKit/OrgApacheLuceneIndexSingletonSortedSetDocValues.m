@interface OrgApacheLuceneIndexSingletonSortedSetDocValues
- (OrgApacheLuceneIndexSingletonSortedSetDocValues)initWithOrgApacheLuceneIndexSortedDocValues:(id)a3;
- (id)lookupOrdWithLong:(int64_t)a3;
- (id)termsEnum;
- (int64_t)getValueCount;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (int64_t)nextOrd;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSingletonSortedSetDocValues

- (OrgApacheLuceneIndexSingletonSortedSetDocValues)initWithOrgApacheLuceneIndexSortedDocValues:(id)a3
{
  OrgApacheLuceneIndexRandomAccessOrds_init(self, a2);
  JreStrongAssign(&self->in_, a3);
  return self;
}

- (int64_t)nextOrd
{
  currentOrd = self->currentOrd_;
  self->currentOrd_ = -1;
  return currentOrd;
}

- (id)lookupOrdWithLong:(int64_t)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in lookupOrdWithInt:a3];
}

- (int64_t)getValueCount
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in getValueCount];
}

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in lookupTermWithOrgApacheLuceneUtilBytesRef:a3];
}

- (id)termsEnum
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in termsEnum];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSingletonSortedSetDocValues;
  [(OrgApacheLuceneIndexSingletonSortedSetDocValues *)&v3 dealloc];
}

@end
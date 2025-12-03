@interface OrgApacheLuceneIndexSingletonSortedSetDocValues
- (OrgApacheLuceneIndexSingletonSortedSetDocValues)initWithOrgApacheLuceneIndexSortedDocValues:(id)values;
- (id)lookupOrdWithLong:(int64_t)long;
- (id)termsEnum;
- (int64_t)getValueCount;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)nextOrd;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSingletonSortedSetDocValues

- (OrgApacheLuceneIndexSingletonSortedSetDocValues)initWithOrgApacheLuceneIndexSortedDocValues:(id)values
{
  OrgApacheLuceneIndexRandomAccessOrds_init(self, a2);
  JreStrongAssign(&self->in_, values);
  return self;
}

- (int64_t)nextOrd
{
  currentOrd = self->currentOrd_;
  self->currentOrd_ = -1;
  return currentOrd;
}

- (id)lookupOrdWithLong:(int64_t)long
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in lookupOrdWithInt:long];
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

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedDocValues *)in lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
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
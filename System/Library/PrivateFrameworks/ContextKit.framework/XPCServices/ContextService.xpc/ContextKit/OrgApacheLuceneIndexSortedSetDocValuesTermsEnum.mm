@interface OrgApacheLuceneIndexSortedSetDocValuesTermsEnum
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)next;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)term;
- (id)termState;
- (void)dealloc;
- (void)seekExactWithLong:(int64_t)long;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state;
@end

@implementation OrgApacheLuceneIndexSortedSetDocValuesTermsEnum

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  values = self->values_;
  if (!values)
  {
    goto LABEL_12;
  }

  v6 = [(OrgApacheLuceneIndexSortedSetDocValues *)values lookupTermWithOrgApacheLuceneUtilBytesRef:?];
  if (v6 < 0)
  {
    self->currentOrd_ = ~v6;
    if ([(OrgApacheLuceneIndexSortedSetDocValues *)self->values_ getValueCount]== ~v6)
    {
      v8 = OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v8;
      }

LABEL_8:
      objc_opt_class();
      return *v8;
    }

    scratch = self->scratch_;
    if (scratch)
    {
      [(OrgApacheLuceneUtilBytesRefBuilder *)scratch copyBytesWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneIndexSortedSetDocValues *)self->values_ lookupOrdWithLong:self->currentOrd_]];
      v8 = &qword_100557A50;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v8;
      }

      goto LABEL_8;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  self->currentOrd_ = v6;
  v7 = self->scratch_;
  if (!v7)
  {
    goto LABEL_12;
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)v7 copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
  v8 = &qword_100557A48;
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_8;
  }

  return *v8;
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  values = self->values_;
  if (!values)
  {
    goto LABEL_6;
  }

  v6 = [(OrgApacheLuceneIndexSortedSetDocValues *)values lookupTermWithOrgApacheLuceneUtilBytesRef:?];
  v7 = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    self->currentOrd_ = v6;
    scratch = self->scratch_;
    if (scratch)
    {
      [(OrgApacheLuceneUtilBytesRefBuilder *)scratch copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
      return v7 >= 0;
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return v7 >= 0;
}

- (void)seekExactWithLong:(int64_t)long
{
  self->currentOrd_ = long;
  scratch = self->scratch_;
  if (!scratch || (values = self->values_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneIndexSortedSetDocValues *)values lookupOrdWithLong:?];

  [(OrgApacheLuceneUtilBytesRefBuilder *)scratch copyBytesWithOrgApacheLuceneUtilBytesRef:v5];
}

- (id)next
{
  v3 = self->currentOrd_ + 1;
  self->currentOrd_ = v3;
  values = self->values_;
  if (!values)
  {
    goto LABEL_8;
  }

  if (v3 >= [(OrgApacheLuceneIndexSortedSetDocValues *)values getValueCount])
  {
    return 0;
  }

  scratch = self->scratch_;
  if (!scratch)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)scratch copyBytesWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneIndexSortedSetDocValues *)self->values_ lookupOrdWithLong:self->currentOrd_]];
  v6 = self->scratch_;

  return [(OrgApacheLuceneUtilBytesRefBuilder *)v6 get];
}

- (id)term
{
  scratch = self->scratch_;
  if (!scratch)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)scratch get];
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state
{
  objc_opt_class();
  if (!state)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(state + 1);

  [(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *)self seekExactWithLong:v6];
}

- (id)termState
{
  result = new_OrgApacheLuceneIndexOrdTermState_init();
  *(result + 1) = self->currentOrd_;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSortedSetDocValuesTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

@end
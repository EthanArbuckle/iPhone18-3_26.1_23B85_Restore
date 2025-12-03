@interface OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms

- (id)iterator
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  iterator = [(OrgApacheLuceneIndexTerms *)in iterator];
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005714C();
  }

  if (iterator == OrgApacheLuceneIndexTermsEnum_EMPTY_)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005714C();
    }

    return OrgApacheLuceneIndexTermsEnum_EMPTY_;
  }

  else
  {
    field = self->field_;
    mergeState = self->mergeState_;
    objc_opt_class();
    if (iterator && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = [OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum alloc];
    sub_1000C33EC(v7, field, mergeState, iterator);

    return v7;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterTerms *)&v3 dealloc];
}

@end
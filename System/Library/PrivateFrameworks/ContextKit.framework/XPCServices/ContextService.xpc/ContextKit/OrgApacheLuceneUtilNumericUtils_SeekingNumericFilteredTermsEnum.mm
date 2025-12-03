@interface OrgApacheLuceneUtilNumericUtils_SeekingNumericFilteredTermsEnum
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneUtilNumericUtils_SeekingNumericFilteredTermsEnum

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  tenum = self->super.tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneIndexTermsEnum *)tenum seekCeilWithOrgApacheLuceneUtilBytesRef:ref];
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  if (v5 == OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_)
  {
    goto LABEL_8;
  }

  JreStrongAssign(&self->super.actualTerm_, [(OrgApacheLuceneIndexTermsEnum *)self->super.tenum_ term]);
  v6 = [(OrgApacheLuceneUtilNumericUtils_SeekingNumericFilteredTermsEnum *)self acceptWithOrgApacheLuceneUtilBytesRef:self->super.actualTerm_];
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  if (v6 != OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_)
  {
LABEL_8:
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000169C0();
    }

    return OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
  }

  return v5;
}

@end
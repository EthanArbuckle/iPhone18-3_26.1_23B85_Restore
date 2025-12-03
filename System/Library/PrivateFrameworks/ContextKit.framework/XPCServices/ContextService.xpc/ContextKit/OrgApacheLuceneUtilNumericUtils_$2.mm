@interface OrgApacheLuceneUtilNumericUtils_$2
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$2

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  PrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef = OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(ref);
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v4 = &OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_;
  if (PrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef)
  {
    v4 = &qword_1005578F0;
  }

  return *v4;
}

@end
@interface OrgApacheLuceneUtilNumericUtils_$1
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$1

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  PrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef = OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(ref, a2, ref, v3, v4, v5, v6, v7);
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v9 = &OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_;
  if (PrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef)
  {
    v9 = &qword_1005578F0;
  }

  return *v9;
}

@end
@interface OrgApacheLuceneUtilNumericUtils_$1
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$1

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  PrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef = OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(a3, a2, a3, v3, v4, v5, v6, v7);
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
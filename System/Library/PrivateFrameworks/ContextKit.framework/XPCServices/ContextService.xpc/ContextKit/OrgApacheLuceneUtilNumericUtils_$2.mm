@interface OrgApacheLuceneUtilNumericUtils_$2
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$2

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  PrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef = OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(a3);
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
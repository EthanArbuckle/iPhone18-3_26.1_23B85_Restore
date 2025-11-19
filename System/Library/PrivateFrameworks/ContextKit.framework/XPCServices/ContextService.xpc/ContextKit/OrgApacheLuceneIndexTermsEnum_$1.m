@interface OrgApacheLuceneIndexTermsEnum_$1
- (id)attributes;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3;
@end

@implementation OrgApacheLuceneIndexTermsEnum_$1

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  return OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[0];
}

- (id)attributes
{
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneIndexTermsEnum__1;
  v3 = [(OrgApacheLuceneIndexTermsEnum *)&v5 attributes];
  objc_sync_exit(self);
  return v3;
}

@end
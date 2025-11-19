@interface OrgApacheLuceneIndexSingleTermsEnum
- (OrgApacheLuceneIndexSingleTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSingleTermsEnum

- (OrgApacheLuceneIndexSingleTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, a3);
  JreStrongAssign((&self->super.doSeek_ + 1), a4);
  [(OrgApacheLuceneIndexFilteredTermsEnum *)self setInitialSeekTermWithOrgApacheLuceneUtilBytesRef:a4];
  return self;
}

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = [a3 isEqual:*(&self->super.doSeek_ + 1)];
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v4 = OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_;
  if (!v3)
  {
    v4 = &qword_1005578F0;
  }

  return *v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSingleTermsEnum;
  [(OrgApacheLuceneIndexFilteredTermsEnum *)&v3 dealloc];
}

@end
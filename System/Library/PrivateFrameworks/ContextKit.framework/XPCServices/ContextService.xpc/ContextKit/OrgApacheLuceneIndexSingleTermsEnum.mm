@interface OrgApacheLuceneIndexSingleTermsEnum
- (OrgApacheLuceneIndexSingleTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSingleTermsEnum

- (OrgApacheLuceneIndexSingleTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilBytesRef:(id)ref
{
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, enum);
  JreStrongAssign((&self->super.doSeek_ + 1), ref);
  [(OrgApacheLuceneIndexFilteredTermsEnum *)self setInitialSeekTermWithOrgApacheLuceneUtilBytesRef:ref];
  return self;
}

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v3 = [ref isEqual:*(&self->super.doSeek_ + 1)];
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
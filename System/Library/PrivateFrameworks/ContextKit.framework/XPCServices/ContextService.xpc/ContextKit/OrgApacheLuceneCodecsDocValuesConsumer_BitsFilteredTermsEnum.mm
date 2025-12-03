@interface OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum
- (OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilLongBitSet:(id)set;
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum

- (OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilLongBitSet:(id)set
{
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(self, enum, 0);
  JreStrongAssign((&self->super.doSeek_ + 1), set);
  return self;
}

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  v3 = *(&self->super.doSeek_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 getWithLong:{-[OrgApacheLuceneIndexFilteredTermsEnum ord](self, "ord", ref)}];
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v5 = &OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_;
  if (!v4)
  {
    v5 = &qword_1005578E0;
  }

  return *v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum;
  [(OrgApacheLuceneIndexFilteredTermsEnum *)&v3 dealloc];
}

@end
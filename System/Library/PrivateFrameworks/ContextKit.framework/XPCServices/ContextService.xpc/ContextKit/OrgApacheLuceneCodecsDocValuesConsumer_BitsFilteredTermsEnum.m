@interface OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum
- (OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilLongBitSet:(id)a4;
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum

- (OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilLongBitSet:(id)a4
{
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(self, a3, 0);
  JreStrongAssign((&self->super.doSeek_ + 1), a4);
  return self;
}

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v3 = *(&self->super.doSeek_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 getWithLong:{-[OrgApacheLuceneIndexFilteredTermsEnum ord](self, "ord", a3)}];
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
@interface OrgApacheLuceneIndexSortedDocValues
- (OrgApacheLuceneIndexSortedDocValues)init;
- (id)termsEnum;
- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSortedDocValues

- (OrgApacheLuceneIndexSortedDocValues)init
{
  OrgApacheLuceneIndexBinaryDocValues_init(self, a2);
  v3 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(&self->empty_, v3);
  return self;
}

- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v5 = [(OrgApacheLuceneIndexSortedDocValues *)self getValueCount]- 1;
  if (v5 < 0)
  {
    return -1;
  }

  v6 = 0;
  do
  {
    v7 = (v6 + v5) >> 1;
    v8 = [(OrgApacheLuceneIndexSortedDocValues *)self lookupOrdWithInt:v7];
    if (!v8)
    {
      JreThrowNullPointerException();
    }

    v9 = [v8 compareToWithId:a3];
    if ((v9 & 0x80000000) != 0)
    {
      v6 = v7 + 1;
    }

    else
    {
      if (!v9)
      {
        return v7;
      }

      v5 = v7 - 1;
    }
  }

  while (v6 <= v5);
  return ~v6;
}

- (id)termsEnum
{
  v2 = new_OrgApacheLuceneIndexSortedDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedDocValues_(self);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSortedDocValues;
  [(OrgApacheLuceneIndexSortedDocValues *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneIndexSortedSetDocValues
- (id)termsEnum;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
@end

@implementation OrgApacheLuceneIndexSortedSetDocValues

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v5 = [(OrgApacheLuceneIndexSortedSetDocValues *)self getValueCount]- 1;
  if (v5 < 0)
  {
    return -1;
  }

  v6 = 0;
  do
  {
    v7 = &v5[v6] >> 1;
    v8 = [(OrgApacheLuceneIndexSortedSetDocValues *)self lookupOrdWithLong:v7];
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

      v5 = (v7 - 1);
    }
  }

  while (v6 <= v5);
  return ~v6;
}

- (id)termsEnum
{
  v2 = new_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(self);

  return v2;
}

@end
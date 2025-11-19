@interface OrgApacheLuceneUtilFstNodeHash
- (int64_t)addWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4;
- (uint64_t)rehash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstNodeHash

- (int64_t)addWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4
{
  v7 = sub_10010B93C(a4);
  table = self->table_;
  if (!table)
  {
    goto LABEL_6;
  }

  v9 = self->mask_ & v7;
  v10 = 1;
  while (1)
  {
    v11 = [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)table getWithLong:v9];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    if (sub_10010B6D0(self, a4, v11))
    {
      return v12;
    }

    v9 = self->mask_ & (v9 + v10);
    table = self->table_;
    ++v10;
    if (!table)
    {
      goto LABEL_6;
    }
  }

  fst = self->fst_;
  if (!fst)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v12 = [(OrgApacheLuceneUtilFstFST *)fst addNodeWithOrgApacheLuceneUtilFstBuilder:a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:a4];
  v14 = self->table_;
  ++self->count_;
  [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)v14 setWithLong:v9 withLong:v12];
  count = self->count_;
  if (count > 2 * [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self->table_ size]/ 3)
  {
    [OrgApacheLuceneUtilFstNodeHash rehash]_0(self);
  }

  return v12;
}

- (uint64_t)rehash
{
  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v4 = 2 * [*(a1 + 8) size];
  v12 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(*(a1 + 16), v5, v6, v7, v8, v9, v10, v11);
  v13 = new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(v4, 0x40000000, v12, 0.0);
  JreStrongAssignAndConsume(v2, v13);
  *(a1 + 24) = [*(a1 + 8) size] - 1;
  result = [v1 size];
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      v16 = [v1 getWithLong:i];
      if (v16)
      {
        sub_10010BDE0(a1, v16);
      }

      result = [v1 size];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstNodeHash;
  [(OrgApacheLuceneUtilFstNodeHash *)&v3 dealloc];
}

@end
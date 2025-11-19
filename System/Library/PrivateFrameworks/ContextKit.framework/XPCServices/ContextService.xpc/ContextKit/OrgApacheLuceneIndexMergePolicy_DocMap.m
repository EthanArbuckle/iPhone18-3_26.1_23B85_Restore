@interface OrgApacheLuceneIndexMergePolicy_DocMap
- (BOOL)isConsistentWithInt:(int)a3;
@end

@implementation OrgApacheLuceneIndexMergePolicy_DocMap

- (BOOL)isConsistentWithInt:(int)a3
{
  v5 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(a3);
  if (a3 < 1)
  {
    return 1;
  }

  else
  {
    v6 = v5;
    v7 = [(OrgApacheLuceneIndexMergePolicy_DocMap *)self mapWithInt:0];
    v8 = 0;
    if (v7 < a3)
    {
      v9 = v7;
      v8 = 0;
      v10 = 1;
      do
      {
        if ([(OrgApacheLuceneUtilFixedBitSet *)v6 getWithInt:v9])
        {
          break;
        }

        v8 = v10 >= a3;
        if (a3 == v10)
        {
          break;
        }

        v9 = [(OrgApacheLuceneIndexMergePolicy_DocMap *)self mapWithInt:v10];
        v10 = (v10 + 1);
      }

      while (v9 < a3);
    }
  }

  return v8;
}

@end
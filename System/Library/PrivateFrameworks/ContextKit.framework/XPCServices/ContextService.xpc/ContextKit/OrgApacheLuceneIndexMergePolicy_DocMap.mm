@interface OrgApacheLuceneIndexMergePolicy_DocMap
- (BOOL)isConsistentWithInt:(int)int;
@end

@implementation OrgApacheLuceneIndexMergePolicy_DocMap

- (BOOL)isConsistentWithInt:(int)int
{
  v5 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(int);
  if (int < 1)
  {
    return 1;
  }

  else
  {
    v6 = v5;
    v7 = [(OrgApacheLuceneIndexMergePolicy_DocMap *)self mapWithInt:0];
    v8 = 0;
    if (v7 < int)
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

        v8 = v10 >= int;
        if (int == v10)
        {
          break;
        }

        v9 = [(OrgApacheLuceneIndexMergePolicy_DocMap *)self mapWithInt:v10];
        v10 = (v10 + 1);
      }

      while (v9 < int);
    }
  }

  return v8;
}

@end
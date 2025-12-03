@interface OrgApacheLuceneCodecsFieldsConsumer
- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)state;
@end

@implementation OrgApacheLuceneCodecsFieldsConsumer

- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)state
{
  v5 = new_JavaUtilArrayList_init();
  v6 = new_JavaUtilArrayList_init();
  if (!state || (v7 = *(state + 10)) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  while (v10 < *(v7 + 8))
  {
    v11 = *(state + 12);
    if (v11)
    {
      v12 = *(v7 + 24 + 8 * v10);
      v13 = *(v11 + 8);
      if (v10 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v10);
      }

      if (v12)
      {
        v14 = *(v11 + 12 + 4 * v10);
        [v12 checkIntegrity];
        [(JavaUtilArrayList *)v8 addWithId:new_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(v9, v14, v10)];
        [(JavaUtilArrayList *)v5 addWithId:v12];
        v9 += v14;
        ++v10;
        v7 = *(state + 10);
        if (v7)
        {
          continue;
        }
      }
    }

    goto LABEL_11;
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexFields__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013BA4();
  }

  v15 = [(JavaUtilArrayList *)v5 toArrayWithNSObjectArray:OrgApacheLuceneIndexFields_EMPTY_ARRAY_];
  if ((atomic_load_explicit(OrgApacheLuceneIndexReaderSlice__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013BB0();
  }

  v16 = new_OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(v15, [(JavaUtilArrayList *)v8 toArrayWithNSObjectArray:OrgApacheLuceneIndexReaderSlice_EMPTY_ARRAY_]);
  v17 = new_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(state, v16);

  [(OrgApacheLuceneCodecsFieldsConsumer *)self writeWithOrgApacheLuceneIndexFields:v17];
}

@end
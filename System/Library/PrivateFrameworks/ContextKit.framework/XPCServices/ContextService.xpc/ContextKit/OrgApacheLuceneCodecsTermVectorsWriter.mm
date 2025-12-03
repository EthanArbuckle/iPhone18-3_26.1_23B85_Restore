@interface OrgApacheLuceneCodecsTermVectorsWriter
- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)state;
- (void)addProxWithInt:(int)int withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneStoreDataInput:(id)dataInput;
@end

@implementation OrgApacheLuceneCodecsTermVectorsWriter

- (void)addProxWithInt:(int)int withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneStoreDataInput:(id)dataInput
{
  if (int >= 1)
  {
    intCopy = int;
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (input)
      {
        readVInt = [input readVInt];
        v9 = v9 + (readVInt >> 1);
        if (readVInt)
        {
          readVInt2 = [input readVInt];
          if (!v11)
          {
            v11 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
            if (!v11)
            {
              JreThrowNullPointerException();
            }
          }

          [(OrgApacheLuceneUtilBytesRefBuilder *)v11 growWithInt:readVInt2];
          [input readBytesWithByteArray:-[OrgApacheLuceneUtilBytesRefBuilder bytes](v11 withInt:"bytes") withInt:{0, readVInt2}];
          [(OrgApacheLuceneUtilBytesRefBuilder *)v11 setLengthWithInt:readVInt2];
          [(OrgApacheLuceneUtilBytesRefBuilder *)v11 get];
          if (!dataInput)
          {
LABEL_12:
            v13 = 0xFFFFFFFFLL;
            goto LABEL_13;
          }
        }

        else if (!dataInput)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
        if (!dataInput)
        {
          goto LABEL_12;
        }
      }

      v13 = [dataInput readVInt] + v10;
      v10 = v13 + [dataInput readVInt];
LABEL_13:
      [OrgApacheLuceneCodecsTermVectorsWriter addPositionWithInt:"addPositionWithInt:withInt:withInt:withOrgApacheLuceneUtilBytesRef:" withInt:v9 withInt:v13 withOrgApacheLuceneUtilBytesRef:?];
      --intCopy;
    }

    while (intCopy);
  }
}

- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)state
{
  if (!state)
  {
    goto LABEL_28;
  }

  v4 = *(state + 12);
  if (!v4)
  {
    goto LABEL_28;
  }

  v6 = *(v4 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(state + 12);
      v10 = *(v9 + 8);
      if (v7 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v7);
      }

      v11 = *(state + 8);
      if (!v11)
      {
        break;
      }

      v12 = *(v9 + 12 + 4 * v7);
      v13 = *(v11 + 8);
      if (v7 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v7);
      }

      v14 = *(state + 4);
      if (!v14)
      {
        break;
      }

      v15 = *(v11 + 24 + 8 * v7);
      v16 = *(v14 + 8);
      if (v7 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v7);
      }

      v17 = v14 + 24;
      v18 = *(v14 + 24 + 8 * v7);
      if (v18)
      {
        [*(v17 + 8 * v7) checkIntegrity];
      }

      if (v12 >= 1)
      {
        v19 = 0;
        do
        {
          if (!v15 || [v15 getWithInt:v19])
          {
            if (v18)
            {
              v20 = [v18 getWithInt:v19];
            }

            else
            {
              v20 = 0;
            }

            sub_100049900(self, v20, state);
            v8 = (v8 + 1);
          }

          v19 = (v19 + 1);
        }

        while (v12 != v19);
      }

      if (++v7 == v6)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  v8 = 0;
LABEL_27:
  [(OrgApacheLuceneCodecsTermVectorsWriter *)self finishWithOrgApacheLuceneIndexFieldInfos:*(state + 2) withInt:v8];
  return v8;
}

@end
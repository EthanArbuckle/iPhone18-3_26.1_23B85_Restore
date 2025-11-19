@interface OrgApacheLuceneCodecsStoredFieldsWriter
- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsStoredFieldsWriter

- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3
{
  if (!a3 || (v4 = *(a3 + 3)) == 0)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = 0;
  while (v6 < *(v4 + 8))
  {
    v8 = v4 + 24;
    v9 = *(v8 + 8 * v6);
    if (v9)
    {
      [*(v8 + 8 * v6) checkIntegrity];
      v10 = [OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor alloc];
      OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(v10, self, a3, v6);
      v11 = v10;
      v12 = *(a3 + 12);
      if (v12)
      {
        v13 = v11;
        v14 = *(v12 + 8);
        if (v6 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v6);
        }

        v15 = *(a3 + 8);
        if (v15)
        {
          v16 = *(v12 + 12 + 4 * v6);
          v17 = *(v15 + 8);
          if (v6 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v6);
          }

          if (v16 >= 1)
          {
            v18 = 0;
            v19 = *(v15 + 24 + 8 * v6);
            do
            {
              if (!v19 || [v19 getWithInt:v18])
              {
                [(OrgApacheLuceneCodecsStoredFieldsWriter *)self startDocument];
                [v9 visitDocumentWithInt:v18 withOrgApacheLuceneIndexStoredFieldVisitor:v13];
                [(OrgApacheLuceneCodecsStoredFieldsWriter *)self finishDocument];
                v7 = (v7 + 1);
              }

              v18 = (v18 + 1);
            }

            while (v16 != v18);
          }

          v6 = (v6 + 1);
          v4 = *(a3 + 3);
          if (v4)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_21;
  }

  [(OrgApacheLuceneCodecsStoredFieldsWriter *)self finishWithOrgApacheLuceneIndexFieldInfos:*(a3 + 2) withInt:v7];
  return v7;
}

@end
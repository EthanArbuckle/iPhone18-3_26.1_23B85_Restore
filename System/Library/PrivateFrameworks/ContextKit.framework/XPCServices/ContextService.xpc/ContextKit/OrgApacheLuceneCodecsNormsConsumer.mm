@interface OrgApacheLuceneCodecsNormsConsumer
- (void)mergeNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5;
- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsNormsConsumer

- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)a3
{
  if (!a3)
  {
    goto LABEL_33;
  }

  v4 = *(a3 + 5);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  while (v5 < v6)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8)
    {
      [v7 checkIntegrity];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = *(a3 + 2);
  if (!v9)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v27 = [*(a3 + 2) countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v27)
  {
    v10 = *v29;
    v24 = *v29;
    v25 = v9;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_33;
        }

        if ([*(*(&v28 + 1) + 8 * i) hasNorms])
        {
          v13 = new_JavaUtilArrayList_init();
          v14 = *(a3 + 5);
          if (!v14)
          {
            goto LABEL_33;
          }

          v15 = v13;
          v16 = 0;
          while (v16 < *(v14 + 8))
          {
            v17 = *(v14 + 24 + 8 * v16);
            if (!v17)
            {
              goto LABEL_25;
            }

            v18 = *(a3 + 7);
            if (!v18)
            {
              goto LABEL_33;
            }

            v19 = *(v18 + 8);
            if (v16 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v16);
            }

            v20 = *(v18 + 24 + 8 * v16);
            if (!v20)
            {
              goto LABEL_33;
            }

            v21 = [v20 fieldInfoWithNSString:*(v12 + 8)];
            if (!v21 || (v22 = v21, ![v21 hasNorms]) || (v23 = objc_msgSend(v17, "getNormsWithOrgApacheLuceneIndexFieldInfo:", v22)) == 0)
            {
LABEL_25:
              v23 = OrgApacheLuceneIndexDocValues_emptyNumeric();
            }

            [(JavaUtilArrayList *)v15 addWithId:v23, v24, v25];
            ++v16;
            v14 = *(a3 + 5);
            if (!v14)
            {
              goto LABEL_33;
            }
          }

          [(OrgApacheLuceneCodecsNormsConsumer *)self mergeNormsFieldWithOrgApacheLuceneIndexFieldInfo:v12 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v15];
          v10 = v24;
          v9 = v25;
        }
      }

      v27 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v27);
  }
}

- (void)mergeNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5
{
  v9 = [OrgApacheLuceneCodecsNormsConsumer__1 alloc];
  JreStrongAssign(&v9->val$toMerge_, a5);
  JreStrongAssign(&v9->val$mergeState_, a4);
  v10 = v9;

  [(OrgApacheLuceneCodecsNormsConsumer *)self addNormsFieldWithOrgApacheLuceneIndexFieldInfo:a3 withJavaLangIterable:v10];
}

@end
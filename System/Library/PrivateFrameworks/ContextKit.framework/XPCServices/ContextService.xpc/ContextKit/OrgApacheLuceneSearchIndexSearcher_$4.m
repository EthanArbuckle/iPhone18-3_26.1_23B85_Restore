@interface OrgApacheLuceneSearchIndexSearcher_$4
- (OrgApacheLuceneSearchIndexSearcher_$4)initWithOrgApacheLuceneSearchSort:(id)a3 withInt:(int)a4 withOrgApacheLuceneSearchFieldDoc:(id)a5 withBoolean:(BOOL)a6 withBoolean:(BOOL)a7;
- (id)reduceWithJavaUtilCollection:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$4

- (id)reduceWithJavaUtilCollection:(id)a3
{
  if (!a3)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [a3 size], OrgApacheLuceneSearchTopFieldDocs_class_());
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        if (!v12)
        {
          goto LABEL_11;
        }

        v8 = v11 + 1;
        IOSObjectArray_Set(v5, v11, [v12 topDocs]);
        v10 = v10 + 1;
        ++v11;
      }

      while (v7 != v10);
      v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(self->val$sort_, self->val$cappedNumHits_, v5);
}

- (OrgApacheLuceneSearchIndexSearcher_$4)initWithOrgApacheLuceneSearchSort:(id)a3 withInt:(int)a4 withOrgApacheLuceneSearchFieldDoc:(id)a5 withBoolean:(BOOL)a6 withBoolean:(BOOL)a7
{
  JreStrongAssign(&self->val$sort_, a3);
  self->val$cappedNumHits_ = a4;
  JreStrongAssign(&self->val$after_, a5);
  self->val$doDocScores_ = a6;
  self->val$doMaxScore_ = a7;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchIndexSearcher__4;
  [(OrgApacheLuceneSearchIndexSearcher_$4 *)&v3 dealloc];
}

@end
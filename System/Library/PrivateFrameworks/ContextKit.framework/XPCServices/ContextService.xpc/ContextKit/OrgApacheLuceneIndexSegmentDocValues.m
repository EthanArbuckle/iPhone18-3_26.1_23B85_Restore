@interface OrgApacheLuceneIndexSegmentDocValues
- (OrgApacheLuceneIndexSegmentDocValues)init;
- (id)getDocValuesProducerWithLong:(int64_t)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneStoreDirectory:(id)a5 withOrgApacheLuceneIndexFieldInfos:(id)a6;
- (void)dealloc;
- (void)decRefWithJavaUtilList:(id)a3;
@end

@implementation OrgApacheLuceneIndexSegmentDocValues

- (id)getDocValuesProducerWithLong:(int64_t)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneStoreDirectory:(id)a5 withOrgApacheLuceneIndexFieldInfos:(id)a6
{
  objc_sync_enter(self);
  genDVProducers = self->genDVProducers_;
  if (!genDVProducers)
  {
    goto LABEL_6;
  }

  v12 = [(JavaUtilMap *)genDVProducers getWithId:JavaLangLong_valueOfWithLong_(a3)];
  v13 = v12;
  if (!v12)
  {
    v14 = JavaLangLong_valueOfWithLong_(a3);
    v13 = sub_10001D23C(self, a4, a5, v14, a6);
    [(JavaUtilMap *)self->genDVProducers_ putWithId:JavaLangLong_valueOfWithLong_(a3) withId:v13];
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilRefCount *)v12 incRef];
LABEL_5:
  v15 = [(OrgApacheLuceneUtilRefCount *)v13 get];
  objc_sync_exit(self);
  return v15;
}

- (void)decRefWithJavaUtilList:(id)a3
{
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a3);
        }

        genDVProducers = self->genDVProducers_;
        if (!genDVProducers)
        {
          JreThrowNullPointerException();
        }

        v9 = [(JavaUtilMap *)genDVProducers getWithId:*(*(&v11 + 1) + 8 * v7), v11];
        if (!v9)
        {
          JreThrowNullPointerException();
        }

        [v9 decRef];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }

  objc_sync_exit(self);
}

- (OrgApacheLuceneIndexSegmentDocValues)init
{
  v3 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&self->genDVProducers_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentDocValues;
  [(OrgApacheLuceneIndexSegmentDocValues *)&v3 dealloc];
}

@end
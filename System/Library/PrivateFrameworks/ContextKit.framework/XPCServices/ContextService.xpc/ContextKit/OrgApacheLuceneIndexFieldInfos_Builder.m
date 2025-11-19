@interface OrgApacheLuceneIndexFieldInfos_Builder
- (OrgApacheLuceneIndexFieldInfos_Builder)initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers:(id)a3;
- (id)addWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)fieldInfoWithNSString:(id)a3;
- (id)finish;
- (id)getOrAddWithNSString:(id)a3;
- (void)addWithOrgApacheLuceneIndexFieldInfos:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexFieldInfos_Builder

- (OrgApacheLuceneIndexFieldInfos_Builder)initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers:(id)a3
{
  v5 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&self->byName_, v5);
  JreStrongAssign(&self->globalFieldNumbers_, a3);
  return self;
}

- (void)addWithOrgApacheLuceneIndexFieldInfos:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [(OrgApacheLuceneIndexFieldInfos_Builder *)self addWithOrgApacheLuceneIndexFieldInfo:*(*(&v9 + 1) + 8 * i), v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)getOrAddWithNSString:(id)a3
{
  v5 = [(OrgApacheLuceneIndexFieldInfos_Builder *)self fieldInfoWithNSString:?];
  if (!v5)
  {
    globalFieldNumbers = self->globalFieldNumbers_;
    if (!globalFieldNumbers)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v7 = [(OrgApacheLuceneIndexFieldInfos_FieldNumbers *)globalFieldNumbers addOrGetWithNSString:a3 withInt:0xFFFFFFFFLL withOrgApacheLuceneIndexDocValuesTypeEnum:OrgApacheLuceneIndexDocValuesTypeEnum_values_];
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    v8 = OrgApacheLuceneIndexIndexOptionsEnum_values_[0];
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v9 = OrgApacheLuceneIndexDocValuesTypeEnum_values_;
    v10 = new_JavaUtilHashMap_init();
    v5 = new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(a3, v7, 0, 0, 0, v8, v9, -1, v10);
    v11 = self->globalFieldNumbers_;
    v12 = JavaLangInteger_valueOfWithInt_(v5->number_);
    name = v5->name_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    [(OrgApacheLuceneIndexFieldInfos_FieldNumbers *)v11 verifyConsistentWithJavaLangInteger:v12 withNSString:name withOrgApacheLuceneIndexDocValuesTypeEnum:OrgApacheLuceneIndexDocValuesTypeEnum_values_];
    [(JavaUtilHashMap *)self->byName_ putWithId:v5->name_ withId:v5];
  }

  return v5;
}

- (id)addWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 1);
  v6 = *(a3 + 4);
  v7 = [a3 hasVectors];
  v8 = [a3 omitsNorms];
  v9 = [a3 hasPayloads];
  v10 = [a3 getIndexOptions];
  v11 = [a3 getDocValuesType];

  return sub_10003D340(&self->super.isa, v5, v6, v7, v8, v9, v10, v11);
}

- (id)fieldInfoWithNSString:(id)a3
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName getWithId:a3];
}

- (id)finish
{
  byName = self->byName_;
  if (!byName || (v4 = [(JavaUtilHashMap *)byName values]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", -[JavaUtilHashMap size](self->byName_, "size"), OrgApacheLuceneIndexFieldInfo_class_())}];
  v6 = [OrgApacheLuceneIndexFieldInfos alloc];
  OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v6, v5);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfos_Builder;
  [(OrgApacheLuceneIndexFieldInfos_Builder *)&v3 dealloc];
}

@end
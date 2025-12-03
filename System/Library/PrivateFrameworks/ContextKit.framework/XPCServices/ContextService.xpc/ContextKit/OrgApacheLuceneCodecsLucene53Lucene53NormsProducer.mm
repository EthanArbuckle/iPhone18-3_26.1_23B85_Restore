@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer
- (id)description;
- (id)getNormsWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer

- (id)getNormsWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  norms = self->norms_;
  if (!norms || !info || (v5 = [(JavaUtilMap *)norms getWithId:JavaLangInteger_valueOfWithInt_(*(info + 4))]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if (v5[8])
  {
    data = self->data_;
    objc_sync_enter(data);
    v8 = v6[8];
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v23 = self->data_;
        if (v23)
        {
          v24 = [(OrgApacheLuceneStoreIndexInput *)v23 randomAccessSliceWithLong:*(v6 + 2) withLong:4 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__4 alloc];
          JreStrongAssign(&v11->val$slice_, v24);
          OrgApacheLuceneIndexNumericDocValues_init(v11, v25);
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (v8 == 8)
      {
        v17 = self->data_;
        if (v17)
        {
          v18 = [(OrgApacheLuceneStoreIndexInput *)v17 randomAccessSliceWithLong:*(v6 + 2) withLong:8 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__5 alloc];
          JreStrongAssign(&v11->val$slice_, v18);
          OrgApacheLuceneIndexNumericDocValues_init(v11, v19);
          goto LABEL_21;
        }

LABEL_23:
        JreThrowNullPointerException();
      }
    }

    else
    {
      if (v8 == 1)
      {
        v20 = self->data_;
        if (v20)
        {
          v21 = [(OrgApacheLuceneStoreIndexInput *)v20 randomAccessSliceWithLong:*(v6 + 2) withLong:self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__2 alloc];
          JreStrongAssign(&v11->val$slice_, v21);
          OrgApacheLuceneIndexNumericDocValues_init(v11, v22);
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (v8 == 2)
      {
        v9 = self->data_;
        if (v9)
        {
          v10 = [(OrgApacheLuceneStoreIndexInput *)v9 randomAccessSliceWithLong:*(v6 + 2) withLong:2 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__3 alloc];
          JreStrongAssign(&v11->val$slice_, v10);
          OrgApacheLuceneIndexNumericDocValues_init(v11, v12);
LABEL_21:
          v26 = v11;
          objc_sync_exit(data);
          return v26;
        }

        goto LABEL_23;
      }
    }

    v27 = new_JavaLangAssertionError_init();
    objc_exception_throw(v27);
  }

  v13 = *(v5 + 2);
  v14 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__1 alloc];
  v14->val$value_ = v13;
  OrgApacheLuceneIndexNumericDocValues_init(v14, v15);

  return v14;
}

- (void)close
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)data close];
}

- (int64_t)ramBytesUsed
{
  norms = self->norms_;
  if (!norms)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)norms size]<< 6;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsLucene53Lucene53NormsProducer getClass](self "getClass")];
  norms = self->norms_;
  if (!norms)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)norms size];
  return JreStrcat("$$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsProducer;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneIndexCompositeReader
- (OrgApacheLuceneIndexCompositeReader)init;
- (id)description;
- (id)getContext;
@end

@implementation OrgApacheLuceneIndexCompositeReader

- (OrgApacheLuceneIndexCompositeReader)init
{
  OrgApacheLuceneIndexIndexReader_init(self);
  atomic_store(0, &self->readerContext_);
  return self;
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  getClass = [(OrgApacheLuceneIndexCompositeReader *)self getClass];
  if (getClass)
  {
    getSuperclass = getClass;
    while (([getSuperclass isAnonymousClass] & 1) != 0)
    {
      getSuperclass = [getSuperclass getSuperclass];
      if (!getSuperclass)
      {
        goto LABEL_7;
      }
    }

    -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [getSuperclass getSimpleName]);
  }

LABEL_7:
  [(JavaLangStringBuilder *)v3 appendWithChar:40];
  getSequentialSubReaders = [(OrgApacheLuceneIndexCompositeReader *)self getSequentialSubReaders];
  if (!getSequentialSubReaders)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = getSequentialSubReaders;
  if (([getSequentialSubReaders isEmpty] & 1) == 0)
  {
    -[JavaLangStringBuilder appendWithId:](v3, "appendWithId:", [v7 getWithInt:0]);
    v8 = [v7 size];
    if (v8 >= 2)
    {
      v9 = v8;
      v10 = 1;
      do
      {
        v11 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" "];
        if (!v11)
        {
          goto LABEL_16;
        }

        [v11 appendWithId:{objc_msgSend(v7, "getWithInt:", v10)}];
        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:41];

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getContext
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  p_readerContext = &self->readerContext_;
  if (!atomic_load(&self->readerContext_))
  {
    atomic_store(OrgApacheLuceneIndexCompositeReaderContext_createWithOrgApacheLuceneIndexCompositeReader_(self), p_readerContext);
  }

  return atomic_load(p_readerContext);
}

@end
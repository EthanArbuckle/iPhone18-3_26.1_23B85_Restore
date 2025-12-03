@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$7
- (id)termsEnum;
- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$7

- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  v5 = self->val$binary_;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->val$binary_;
    objc_opt_class();
    if (!v6)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [(OrgApacheLuceneIndexBinaryDocValues *)v6 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
    return [(OrgApacheLuceneIndexSortedDocValues *)&v8 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }
}

- (id)termsEnum
{
  v3 = self->val$binary_;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->val$binary_;
    objc_opt_class();
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [(OrgApacheLuceneIndexBinaryDocValues *)v4 getTermsEnum];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
    return [(OrgApacheLuceneIndexSortedDocValues *)&v6 termsEnum];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
  [(OrgApacheLuceneIndexSortedDocValues *)&v3 dealloc];
}

@end
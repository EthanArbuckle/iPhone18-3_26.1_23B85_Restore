@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$10
- (id)lookupOrdWithLong:(int64_t)long;
- (id)termsEnum;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)nextOrd;
- (int64_t)ordAtWithInt:(int)int;
- (void)dealloc;
- (void)setDocumentWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$10

- (int64_t)nextOrd
{
  if (self->offset_ == self->endOffset_)
  {
    return -1;
  }

  v4 = self->val$ordinals_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  result = [(OrgApacheLuceneUtilLongValues *)v4 getWithLong:?];
  ++self->offset_;
  return result;
}

- (void)setDocumentWithInt:(int)int
{
  v4 = self->val$ordIndex_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneUtilLongValues *)v4 getWithInt:?];
  self->offset_ = v6;
  self->startOffset_ = v6;
  self->endOffset_ = [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)self->val$ordIndex_ getWithLong:int + 1];
}

- (id)lookupOrdWithLong:(int64_t)long
{
  v4 = self->val$binary_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v4 getWithLong:long];
}

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
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

    return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v6 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__10;
    return [(OrgApacheLuceneIndexSortedSetDocValues *)&v8 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
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

    return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v4 getTermsEnum];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__10;
    return [(OrgApacheLuceneIndexSortedSetDocValues *)&v6 termsEnum];
  }
}

- (int64_t)ordAtWithInt:(int)int
{
  if (!self->val$ordinals_)
  {
    JreThrowNullPointerException();
  }

  v4 = self->startOffset_ + int;
  v5 = self->val$ordinals_;

  return [(OrgApacheLuceneUtilLongValues *)v5 getWithLong:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__10;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$10 *)&v3 dealloc];
}

@end
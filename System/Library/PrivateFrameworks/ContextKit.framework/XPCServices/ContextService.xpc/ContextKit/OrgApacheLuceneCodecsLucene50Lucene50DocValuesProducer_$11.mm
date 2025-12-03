@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11
- (id)lookupOrdWithLong:(int64_t)long;
- (id)termsEnum;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)nextOrd;
- (int64_t)ordAtWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11

- (int64_t)ordAtWithInt:(int)int
{
  v3 = self->val$table_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  startOffset = self->startOffset_;
  size = v3->super.size_;
  v6 = startOffset + int;
  if (startOffset + int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (startOffset + int));
  }

  return v3->buffer_[v6];
}

- (int64_t)nextOrd
{
  offset = self->offset_;
  if (offset == self->endOffset_)
  {
    return -1;
  }

  v4 = self->val$table_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  self->offset_ = offset + 1;
  size = v4->super.size_;
  if ((offset & 0x80000000) != 0 || offset >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, offset);
  }

  return v4->buffer_[offset];
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
    v8.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
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
    v6.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
    return [(OrgApacheLuceneIndexSortedSetDocValues *)&v6 termsEnum];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11 *)&v3 dealloc];
}

@end
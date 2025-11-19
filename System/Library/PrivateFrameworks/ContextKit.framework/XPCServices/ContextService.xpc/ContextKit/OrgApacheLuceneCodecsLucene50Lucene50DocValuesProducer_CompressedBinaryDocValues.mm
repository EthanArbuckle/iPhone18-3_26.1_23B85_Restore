@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues
- (id)getTermsEnum;
- (id)getTermsEnumWithOrgApacheLuceneStoreIndexInput:(id)a3;
- (id)getWithLong:(int64_t)a3;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues

- (id)getWithLong:(int64_t)a3
{
  termsEnum = self->termsEnum_;
  if (!termsEnum)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)termsEnum seekExactWithLong:a3];
  return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self->termsEnum_ term];
}

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  termsEnum = self->termsEnum_;
  if (!termsEnum)
  {
    JreThrowNullPointerException();
  }

  v5 = [-[OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum seekCeilWithOrgApacheLuceneUtilBytesRef:](termsEnum seekCeilWithOrgApacheLuceneUtilBytesRef:{a3), "ordinal"}];
  if (v5 == 1)
  {
    return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self->termsEnum_ ord];
  }

  if (v5 == 2)
  {
    return ~[(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self->termsEnum_ ord];
  }

  return ~self->numValues_;
}

- (id)getTermsEnum
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneStoreIndexInput *)data clone];
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(v5, self, v4);
  return v5;
}

- (id)getTermsEnumWithOrgApacheLuceneStoreIndexInput:(id)a3
{
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(v5, self, a3);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *)&v3 dealloc];
}

@end
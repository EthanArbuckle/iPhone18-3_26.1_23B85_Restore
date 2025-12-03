@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues
- (id)getTermsEnum;
- (id)getTermsEnumWithOrgApacheLuceneStoreIndexInput:(id)input;
- (id)getWithLong:(int64_t)long;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues

- (id)getWithLong:(int64_t)long
{
  termsEnum = self->termsEnum_;
  if (!termsEnum)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)termsEnum seekExactWithLong:long];
  return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self->termsEnum_ term];
}

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  termsEnum = self->termsEnum_;
  if (!termsEnum)
  {
    JreThrowNullPointerException();
  }

  v5 = [-[OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum seekCeilWithOrgApacheLuceneUtilBytesRef:](termsEnum seekCeilWithOrgApacheLuceneUtilBytesRef:{ref), "ordinal"}];
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

  clone = [(OrgApacheLuceneStoreIndexInput *)data clone];
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(v5, self, clone);
  return v5;
}

- (id)getTermsEnumWithOrgApacheLuceneStoreIndexInput:(id)input
{
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(v5, self, input);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *)&v3 dealloc];
}

@end
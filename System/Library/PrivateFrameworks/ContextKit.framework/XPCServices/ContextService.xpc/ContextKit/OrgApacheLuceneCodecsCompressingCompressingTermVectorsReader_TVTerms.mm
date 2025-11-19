@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTerms
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTerms

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum alloc];
  sub_100084384(v3);
  v4 = v3;
  termBytes = self->termBytes_;
  if (!termBytes)
  {
    JreThrowNullPointerException();
  }

  v6 = v4;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum *)v4 resetWithInt:self->numTerms_ withInt:self->flags_ withIntArray:self->prefixLengths_ withIntArray:self->suffixLengths_ withIntArray:self->termFreqs_ withIntArray:self->positionIndex_ withIntArray:self->positions_ withIntArray:self->startOffsets_ withIntArray:self->lengths_ withIntArray:self->payloadIndex_ withOrgApacheLuceneUtilBytesRef:self->payloadBytes_ withOrgApacheLuceneStoreByteArrayDataInput:new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(termBytes->bytes_, termBytes->offset_, termBytes->length_)];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTerms;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTerms *)&v3 dealloc];
}

@end
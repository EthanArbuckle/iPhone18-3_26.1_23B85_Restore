@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat
- (id)description;
- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneIndexFieldInfos:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6;
- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat

- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneIndexFieldInfos:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6
{
  v6 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(a3, a4, self->segmentSuffix_, a5, a6, self->formatName_, self->compressionMode_);

  return v6;
}

- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  v5 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(a3, a4, self->segmentSuffix_, a5, self->formatName_, self->compressionMode_, self->chunkSize_, self->maxDocsPerChunk_, self->blockSize_);

  return v5;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat getClass](self "getClass")];
  blockSize = self->blockSize_;
  maxDocsPerChunk = self->maxDocsPerChunk_;
  chunkSize = self->chunkSize_;
  compressionMode = self->compressionMode_;
  return JreStrcat("$$@$I$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat *)&v3 dealloc];
}

@end
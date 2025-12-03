@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat
- (id)description;
- (id)vectorsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context;
- (id)vectorsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat

- (id)vectorsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context
{
  v6 = new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(directory, info, self->segmentSuffix_, infos, context, self->formatName_, self->compressionMode_);

  return v6;
}

- (id)vectorsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  v5 = new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(directory, info, self->segmentSuffix_, context, self->formatName_, self->compressionMode_, self->chunkSize_, self->blockSize_);

  return v5;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat getClass](self "getClass")];
  blockSize = self->blockSize_;
  chunkSize = self->chunkSize_;
  compressionMode = self->compressionMode_;
  return JreStrcat("$$@$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat *)&v3 dealloc];
}

@end
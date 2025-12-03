@interface _CPPhotosAggregatedInfo
- (BOOL)isEqual:(id)equal;
- (_CPPhotosAggregatedInfo)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPPhotosAggregatedInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (totalNumberOfAssets = self->_totalNumberOfAssets, totalNumberOfAssets == objc_msgSend(equalCopy, "totalNumberOfAssets")) && (totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets, totalNumberOfEmbeddingMatchedAssets == objc_msgSend(equalCopy, "totalNumberOfEmbeddingMatchedAssets")))
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    v8 = totalNumberOfMetadataMatchedAssets == [equalCopy totalNumberOfMetadataMatchedAssets];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPPhotosAggregatedInfo *)self totalNumberOfAssets])
  {
    totalNumberOfAssets = self->_totalNumberOfAssets;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets])
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPPhotosAggregatedInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPPhotosAggregatedInfo *)self init];
  if (v5)
  {
    -[_CPPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [facadeCopy totalNumberOfAssets]);
    -[_CPPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [facadeCopy totalNumberOfEmbeddingMatchedAssets]);
    -[_CPPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [facadeCopy totalNumberOfMetadataMatchedAssets]);
    v6 = v5;
  }

  return v5;
}

@end
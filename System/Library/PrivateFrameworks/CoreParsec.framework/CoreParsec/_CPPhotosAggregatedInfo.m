@interface _CPPhotosAggregatedInfo
- (BOOL)isEqual:(id)a3;
- (_CPPhotosAggregatedInfo)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPPhotosAggregatedInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (totalNumberOfAssets = self->_totalNumberOfAssets, totalNumberOfAssets == objc_msgSend(v4, "totalNumberOfAssets")) && (totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets, totalNumberOfEmbeddingMatchedAssets == objc_msgSend(v4, "totalNumberOfEmbeddingMatchedAssets")))
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    v8 = totalNumberOfMetadataMatchedAssets == [v4 totalNumberOfMetadataMatchedAssets];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  a3;
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

- (_CPPhotosAggregatedInfo)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPPhotosAggregatedInfo *)self init];
  if (v5)
  {
    -[_CPPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [v4 totalNumberOfAssets]);
    -[_CPPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v4 totalNumberOfEmbeddingMatchedAssets]);
    -[_CPPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v4 totalNumberOfMetadataMatchedAssets]);
    v6 = v5;
  }

  return v5;
}

@end
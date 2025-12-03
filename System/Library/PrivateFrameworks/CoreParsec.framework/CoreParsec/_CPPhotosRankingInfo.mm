@interface _CPPhotosRankingInfo
- (BOOL)isEqual:(id)equal;
- (_CPPhotosRankingInfo)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPPhotosRankingInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed;
  if (totalNumberOfAssetsIndexed != [equalCopy totalNumberOfAssetsIndexed])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary;
  if (totalNumberOfAssetsInLibrary != [equalCopy totalNumberOfAssetsInLibrary])
  {
    goto LABEL_13;
  }

  totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
  if (totalNumberOfEmbeddingMatchedAssets != [equalCopy totalNumberOfEmbeddingMatchedAssets])
  {
    goto LABEL_13;
  }

  totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
  if (totalNumberOfMetadataMatchedAssets == [equalCopy totalNumberOfMetadataMatchedAssets] && (assetEstimationOffAmount = self->_assetEstimationOffAmount, assetEstimationOffAmount == objc_msgSend(equalCopy, "assetEstimationOffAmount")) && (indexedAssetsPercentage = self->_indexedAssetsPercentage, indexedAssetsPercentage == objc_msgSend(equalCopy, "indexedAssetsPercentage")) && (analyzedAssetsPercentage = self->_analyzedAssetsPercentage, analyzedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAssetsPercentage")) && (analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage, analyzedAndIndexedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAndIndexedAssetsPercentage")) && (embeddedAssetsPercentage = self->_embeddedAssetsPercentage, embeddedAssetsPercentage == objc_msgSend(equalCopy, "embeddedAssetsPercentage")) && (assetsRetrieved = self->_assetsRetrieved, assetsRetrieved == objc_msgSend(equalCopy, "assetsRetrieved")))
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    v16 = collectionsRetrieved == [equalCopy collectionsRetrieved];
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPPhotosRankingInfo *)self totalNumberOfAssetsIndexed])
  {
    totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfAssetsInLibrary])
  {
    totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets])
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self assetEstimationOffAmount])
  {
    assetEstimationOffAmount = self->_assetEstimationOffAmount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self indexedAssetsPercentage])
  {
    indexedAssetsPercentage = self->_indexedAssetsPercentage;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self analyzedAssetsPercentage])
  {
    analyzedAssetsPercentage = self->_analyzedAssetsPercentage;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage])
  {
    analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self embeddedAssetsPercentage])
  {
    embeddedAssetsPercentage = self->_embeddedAssetsPercentage;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self assetsRetrieved])
  {
    assetsRetrieved = self->_assetsRetrieved;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self collectionsRetrieved])
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPPhotosRankingInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPPhotosRankingInfo *)self init];
  if (v5)
  {
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [facadeCopy totalNumberOfAssetsIndexed]);
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [facadeCopy totalNumberOfAssetsInLibrary]);
    v6 = v5;
  }

  return v5;
}

@end
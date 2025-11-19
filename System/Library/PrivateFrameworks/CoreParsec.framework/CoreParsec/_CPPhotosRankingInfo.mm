@interface _CPPhotosRankingInfo
- (BOOL)isEqual:(id)a3;
- (_CPPhotosRankingInfo)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPPhotosRankingInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed;
  if (totalNumberOfAssetsIndexed != [v4 totalNumberOfAssetsIndexed])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary;
  if (totalNumberOfAssetsInLibrary != [v4 totalNumberOfAssetsInLibrary])
  {
    goto LABEL_13;
  }

  totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
  if (totalNumberOfEmbeddingMatchedAssets != [v4 totalNumberOfEmbeddingMatchedAssets])
  {
    goto LABEL_13;
  }

  totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
  if (totalNumberOfMetadataMatchedAssets == [v4 totalNumberOfMetadataMatchedAssets] && (assetEstimationOffAmount = self->_assetEstimationOffAmount, assetEstimationOffAmount == objc_msgSend(v4, "assetEstimationOffAmount")) && (indexedAssetsPercentage = self->_indexedAssetsPercentage, indexedAssetsPercentage == objc_msgSend(v4, "indexedAssetsPercentage")) && (analyzedAssetsPercentage = self->_analyzedAssetsPercentage, analyzedAssetsPercentage == objc_msgSend(v4, "analyzedAssetsPercentage")) && (analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage, analyzedAndIndexedAssetsPercentage == objc_msgSend(v4, "analyzedAndIndexedAssetsPercentage")) && (embeddedAssetsPercentage = self->_embeddedAssetsPercentage, embeddedAssetsPercentage == objc_msgSend(v4, "embeddedAssetsPercentage")) && (assetsRetrieved = self->_assetsRetrieved, assetsRetrieved == objc_msgSend(v4, "assetsRetrieved")))
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    v16 = collectionsRetrieved == [v4 collectionsRetrieved];
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (void)writeTo:(id)a3
{
  a3;
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

- (_CPPhotosRankingInfo)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPPhotosRankingInfo *)self init];
  if (v5)
  {
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [v4 totalNumberOfAssetsIndexed]);
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [v4 totalNumberOfAssetsInLibrary]);
    v6 = v5;
  }

  return v5;
}

@end
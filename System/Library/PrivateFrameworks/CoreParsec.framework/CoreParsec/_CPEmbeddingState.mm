@interface _CPEmbeddingState
- (BOOL)isEqual:(id)equal;
- (_CPEmbeddingState)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPEmbeddingState

- (unint64_t)hash
{
  v2 = (2654435761 * self->_hasQueryEmbedding) ^ (2654435761 * self->_hasEmbeddingResults) ^ (2654435761 * self->_queryStatus);
  v3 = 2654435761 * self->_hasResults;
  return v2 ^ v3 ^ [(_CPSpotlightEmbeddingState *)self->_spotlightEmbeddingState hash]^ (2654435761 * self->_hasSuppressedResults) ^ (2654435761 * self->_hasKeywordResults) ^ (2654435761 * self->_hasHybridResults) ^ (2654435761 * self->_hasMetadataResults);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  queryStatus = self->_queryStatus;
  if (queryStatus != [equalCopy queryStatus])
  {
    goto LABEL_16;
  }

  hasQueryEmbedding = self->_hasQueryEmbedding;
  if (hasQueryEmbedding != [equalCopy hasQueryEmbedding])
  {
    goto LABEL_16;
  }

  hasEmbeddingResults = self->_hasEmbeddingResults;
  if (hasEmbeddingResults != [equalCopy hasEmbeddingResults])
  {
    goto LABEL_16;
  }

  hasResults = self->_hasResults;
  if (hasResults != [equalCopy hasResults])
  {
    goto LABEL_16;
  }

  spotlightEmbeddingState = [(_CPEmbeddingState *)self spotlightEmbeddingState];
  spotlightEmbeddingState2 = [equalCopy spotlightEmbeddingState];
  v11 = spotlightEmbeddingState2;
  if ((spotlightEmbeddingState != 0) == (spotlightEmbeddingState2 == 0))
  {

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  spotlightEmbeddingState3 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
  if (spotlightEmbeddingState3)
  {
    v13 = spotlightEmbeddingState3;
    spotlightEmbeddingState4 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
    spotlightEmbeddingState5 = [equalCopy spotlightEmbeddingState];
    v16 = [spotlightEmbeddingState4 isEqual:spotlightEmbeddingState5];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasSuppressedResults = self->_hasSuppressedResults;
  if (hasSuppressedResults != [equalCopy hasSuppressedResults])
  {
    goto LABEL_16;
  }

  hasKeywordResults = self->_hasKeywordResults;
  if (hasKeywordResults != [equalCopy hasKeywordResults])
  {
    goto LABEL_16;
  }

  hasHybridResults = self->_hasHybridResults;
  if (hasHybridResults != [equalCopy hasHybridResults])
  {
    goto LABEL_16;
  }

  hasMetadataResults = self->_hasMetadataResults;
  v21 = hasMetadataResults == [equalCopy hasMetadataResults];
LABEL_17:

  return v21;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPEmbeddingState *)self queryStatus])
  {
    queryStatus = self->_queryStatus;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPEmbeddingState *)self hasQueryEmbedding])
  {
    hasQueryEmbedding = self->_hasQueryEmbedding;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPEmbeddingState *)self hasEmbeddingResults])
  {
    hasEmbeddingResults = self->_hasEmbeddingResults;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPEmbeddingState *)self hasResults])
  {
    hasResults = self->_hasResults;
    PBDataWriterWriteBOOLField();
  }

  spotlightEmbeddingState = [(_CPEmbeddingState *)self spotlightEmbeddingState];

  if (spotlightEmbeddingState)
  {
    spotlightEmbeddingState2 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPEmbeddingState *)self hasSuppressedResults])
  {
    hasSuppressedResults = self->_hasSuppressedResults;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPEmbeddingState *)self hasKeywordResults])
  {
    hasKeywordResults = self->_hasKeywordResults;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPEmbeddingState *)self hasHybridResults])
  {
    hasHybridResults = self->_hasHybridResults;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPEmbeddingState *)self hasMetadataResults])
  {
    hasMetadataResults = self->_hasMetadataResults;
    PBDataWriterWriteBOOLField();
  }
}

- (_CPEmbeddingState)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPEmbeddingState *)self init];
  if (v5)
  {
    if ([facadeCopy queryStatus])
    {
      -[_CPEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [facadeCopy queryStatus]);
    }

    -[_CPEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [facadeCopy hasQueryEmbedding]);
    -[_CPEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [facadeCopy hasEmbeddingResults]);
    -[_CPEmbeddingState setHasResults:](v5, "setHasResults:", [facadeCopy hasResults]);
    -[_CPEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [facadeCopy hasSuppressedResults]);
    spotlightEmbeddingState = [facadeCopy spotlightEmbeddingState];

    if (spotlightEmbeddingState)
    {
      v7 = objc_alloc_init(_CPSpotlightEmbeddingState);
      spotlightEmbeddingState2 = [facadeCopy spotlightEmbeddingState];
      embeddedPhotosAssetsCount = [spotlightEmbeddingState2 embeddedPhotosAssetsCount];

      if (embeddedPhotosAssetsCount)
      {
        spotlightEmbeddingState3 = [facadeCopy spotlightEmbeddingState];
        embeddedPhotosAssetsCount2 = [spotlightEmbeddingState3 embeddedPhotosAssetsCount];
        [(_CPSpotlightEmbeddingState *)v7 setEmbeddedPhotosAssetsCount:embeddedPhotosAssetsCount2];
      }

      spotlightEmbeddingState4 = [facadeCopy spotlightEmbeddingState];
      totalPhotosAssetsCount = [spotlightEmbeddingState4 totalPhotosAssetsCount];

      if (totalPhotosAssetsCount)
      {
        spotlightEmbeddingState5 = [facadeCopy spotlightEmbeddingState];
        totalPhotosAssetsCount2 = [spotlightEmbeddingState5 totalPhotosAssetsCount];
        [(_CPSpotlightEmbeddingState *)v7 setTotalPhotosAssetsCount:totalPhotosAssetsCount2];
      }

      spotlightEmbeddingState6 = [facadeCopy spotlightEmbeddingState];
      embeddedPhotosAssetsPercentage = [spotlightEmbeddingState6 embeddedPhotosAssetsPercentage];

      if (embeddedPhotosAssetsPercentage)
      {
        spotlightEmbeddingState7 = [facadeCopy spotlightEmbeddingState];
        embeddedPhotosAssetsPercentage2 = [spotlightEmbeddingState7 embeddedPhotosAssetsPercentage];
        [(_CPSpotlightEmbeddingState *)v7 setEmbeddedPhotosAssetsPercentage:embeddedPhotosAssetsPercentage2];
      }

      [(_CPEmbeddingState *)v5 setSpotlightEmbeddingState:v7];
    }

    -[_CPEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [facadeCopy hasSuppressedResults]);
    -[_CPEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [facadeCopy hasKeywordResults]);
    -[_CPEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [facadeCopy hasHybridResults]);
    v20 = v5;
  }

  return v5;
}

@end
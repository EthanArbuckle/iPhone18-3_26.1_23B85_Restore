@interface _CPEmbeddingState
- (BOOL)isEqual:(id)a3;
- (_CPEmbeddingState)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPEmbeddingState

- (unint64_t)hash
{
  v2 = (2654435761 * self->_hasQueryEmbedding) ^ (2654435761 * self->_hasEmbeddingResults) ^ (2654435761 * self->_queryStatus);
  v3 = 2654435761 * self->_hasResults;
  return v2 ^ v3 ^ [(_CPSpotlightEmbeddingState *)self->_spotlightEmbeddingState hash]^ (2654435761 * self->_hasSuppressedResults) ^ (2654435761 * self->_hasKeywordResults) ^ (2654435761 * self->_hasHybridResults) ^ (2654435761 * self->_hasMetadataResults);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  queryStatus = self->_queryStatus;
  if (queryStatus != [v4 queryStatus])
  {
    goto LABEL_16;
  }

  hasQueryEmbedding = self->_hasQueryEmbedding;
  if (hasQueryEmbedding != [v4 hasQueryEmbedding])
  {
    goto LABEL_16;
  }

  hasEmbeddingResults = self->_hasEmbeddingResults;
  if (hasEmbeddingResults != [v4 hasEmbeddingResults])
  {
    goto LABEL_16;
  }

  hasResults = self->_hasResults;
  if (hasResults != [v4 hasResults])
  {
    goto LABEL_16;
  }

  v9 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
  v10 = [v4 spotlightEmbeddingState];
  v11 = v10;
  if ((v9 != 0) == (v10 == 0))
  {

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v12 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
    v15 = [v4 spotlightEmbeddingState];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasSuppressedResults = self->_hasSuppressedResults;
  if (hasSuppressedResults != [v4 hasSuppressedResults])
  {
    goto LABEL_16;
  }

  hasKeywordResults = self->_hasKeywordResults;
  if (hasKeywordResults != [v4 hasKeywordResults])
  {
    goto LABEL_16;
  }

  hasHybridResults = self->_hasHybridResults;
  if (hasHybridResults != [v4 hasHybridResults])
  {
    goto LABEL_16;
  }

  hasMetadataResults = self->_hasMetadataResults;
  v21 = hasMetadataResults == [v4 hasMetadataResults];
LABEL_17:

  return v21;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
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

  v8 = [(_CPEmbeddingState *)self spotlightEmbeddingState];

  if (v8)
  {
    v9 = [(_CPEmbeddingState *)self spotlightEmbeddingState];
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

- (_CPEmbeddingState)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPEmbeddingState *)self init];
  if (v5)
  {
    if ([v4 queryStatus])
    {
      -[_CPEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [v4 queryStatus]);
    }

    -[_CPEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [v4 hasQueryEmbedding]);
    -[_CPEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [v4 hasEmbeddingResults]);
    -[_CPEmbeddingState setHasResults:](v5, "setHasResults:", [v4 hasResults]);
    -[_CPEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v4 hasSuppressedResults]);
    v6 = [v4 spotlightEmbeddingState];

    if (v6)
    {
      v7 = objc_alloc_init(_CPSpotlightEmbeddingState);
      v8 = [v4 spotlightEmbeddingState];
      v9 = [v8 embeddedPhotosAssetsCount];

      if (v9)
      {
        v10 = [v4 spotlightEmbeddingState];
        v11 = [v10 embeddedPhotosAssetsCount];
        [(_CPSpotlightEmbeddingState *)v7 setEmbeddedPhotosAssetsCount:v11];
      }

      v12 = [v4 spotlightEmbeddingState];
      v13 = [v12 totalPhotosAssetsCount];

      if (v13)
      {
        v14 = [v4 spotlightEmbeddingState];
        v15 = [v14 totalPhotosAssetsCount];
        [(_CPSpotlightEmbeddingState *)v7 setTotalPhotosAssetsCount:v15];
      }

      v16 = [v4 spotlightEmbeddingState];
      v17 = [v16 embeddedPhotosAssetsPercentage];

      if (v17)
      {
        v18 = [v4 spotlightEmbeddingState];
        v19 = [v18 embeddedPhotosAssetsPercentage];
        [(_CPSpotlightEmbeddingState *)v7 setEmbeddedPhotosAssetsPercentage:v19];
      }

      [(_CPEmbeddingState *)v5 setSpotlightEmbeddingState:v7];
    }

    -[_CPEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v4 hasSuppressedResults]);
    -[_CPEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [v4 hasKeywordResults]);
    -[_CPEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [v4 hasHybridResults]);
    v20 = v5;
  }

  return v5;
}

@end
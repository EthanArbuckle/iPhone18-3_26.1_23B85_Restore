@interface MADProtoComputeSyncThumbnailPayload
+ (id)payloadFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)addImageEmbeddingResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setImageEmbeddingResultsFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version;
- (void)writeTo:(id)to;
@end

@implementation MADProtoComputeSyncThumbnailPayload

- (void)addImageEmbeddingResults:(id)results
{
  resultsCopy = results;
  imageEmbeddingResults = self->_imageEmbeddingResults;
  v8 = resultsCopy;
  if (!imageEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageEmbeddingResults;
    self->_imageEmbeddingResults = v6;

    resultsCopy = v8;
    imageEmbeddingResults = self->_imageEmbeddingResults;
  }

  [(NSMutableArray *)imageEmbeddingResults addObject:resultsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoComputeSyncThumbnailPayload;
  v4 = [(MADProtoComputeSyncThumbnailPayload *)&v8 description];
  dictionaryRepresentation = [(MADProtoComputeSyncThumbnailPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_imageEmbeddingVersion];
    [dictionary setObject:v4 forKey:@"imageEmbeddingVersion"];
  }

  if ([(NSMutableArray *)self->_imageEmbeddingResults count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageEmbeddingResults, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_imageEmbeddingResults;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"imageEmbeddingResults"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_imageEmbeddingResults;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_imageEmbeddingVersion;
    *(toCopy + 20) |= 1u;
  }

  v9 = toCopy;
  if ([(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsCount])
  {
    [v9 clearImageEmbeddingResults];
    imageEmbeddingResultsCount = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsCount];
    if (imageEmbeddingResultsCount)
    {
      v6 = imageEmbeddingResultsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsAtIndex:i];
        [v9 addImageEmbeddingResults:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_imageEmbeddingVersion;
    *(v5 + 20) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_imageEmbeddingResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v6 addImageEmbeddingResults:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_imageEmbeddingVersion != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  imageEmbeddingResults = self->_imageEmbeddingResults;
  if (imageEmbeddingResults | *(equalCopy + 1))
  {
    v6 = [(NSMutableArray *)imageEmbeddingResults isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_imageEmbeddingVersion;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_imageEmbeddingResults hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 20))
  {
    self->_imageEmbeddingVersion = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MADProtoComputeSyncThumbnailPayload *)self addImageEmbeddingResults:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (id)payloadFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version
{
  versionCopy = version;
  assetCopy = asset;
  if (assetCopy)
  {
    v6 = objc_alloc_init(MADProtoComputeSyncThumbnailPayload);
    [(MADProtoComputeSyncThumbnailPayload *)v6 setImageEmbeddingResultsFromVSKAsset:assetCopy imageEmbeddingVersion:versionCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset->MADProtoComputeSyncThumbnailPayload] No VSKAsset", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)setImageEmbeddingResultsFromVSKAsset:(id)asset imageEmbeddingVersion:(signed __int16)version
{
  versionCopy = version;
  assetCopy = asset;
  v6 = [VCPProtoEmbeddingResult resultsFromVSKAsset:?];
  [(MADProtoComputeSyncThumbnailPayload *)self setImageEmbeddingResults:v6];

  imageEmbeddingResults = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResults];
  if ([imageEmbeddingResults count])
  {
    v8 = versionCopy;
  }

  else
  {
    v8 = 0;
  }

  [(MADProtoComputeSyncThumbnailPayload *)self setImageEmbeddingVersion:v8];
}

- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingVersion]>= 73)
  {
    imageEmbeddingResults = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResults];
    v5 = [VCPProtoEmbeddingResult imageEmbeddingVSKAssetFromResults:imageEmbeddingResults localIdentifier:identifierCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = identifierCopy;
      v10 = 1024;
      imageEmbeddingVersion = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingVersion];
      v12 = 1024;
      v13 = 73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProtoComputeSyncThumbnailPayload->VSKAsset][%@] Image embedding version %d < forward compatible version %d", &v8, 0x18u);
    }

    v5 = 0;
  }

  return v5;
}

@end
@interface MADProtoComputeSyncThumbnailPayload
+ (id)payloadFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)a3;
- (unint64_t)hash;
- (void)addImageEmbeddingResults:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setImageEmbeddingResultsFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoComputeSyncThumbnailPayload

- (void)addImageEmbeddingResults:(id)a3
{
  v4 = a3;
  imageEmbeddingResults = self->_imageEmbeddingResults;
  v8 = v4;
  if (!imageEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageEmbeddingResults;
    self->_imageEmbeddingResults = v6;

    v4 = v8;
    imageEmbeddingResults = self->_imageEmbeddingResults;
  }

  [(NSMutableArray *)imageEmbeddingResults addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoComputeSyncThumbnailPayload;
  v4 = [(MADProtoComputeSyncThumbnailPayload *)&v8 description];
  v5 = [(MADProtoComputeSyncThumbnailPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_imageEmbeddingVersion];
    [v3 setObject:v4 forKey:@"imageEmbeddingVersion"];
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

          v11 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"imageEmbeddingResults"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_imageEmbeddingVersion;
    *(v4 + 20) |= 1u;
  }

  v9 = v4;
  if ([(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsCount])
  {
    [v9 clearImageEmbeddingResults];
    v5 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResultsAtIndex:i];
        [v9 addImageEmbeddingResults:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{a3, v14}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_imageEmbeddingVersion != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  imageEmbeddingResults = self->_imageEmbeddingResults;
  if (imageEmbeddingResults | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 20))
  {
    self->_imageEmbeddingVersion = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 1);
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

+ (id)payloadFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MADProtoComputeSyncThumbnailPayload);
    [(MADProtoComputeSyncThumbnailPayload *)v6 setImageEmbeddingResultsFromVSKAsset:v5 imageEmbeddingVersion:v4];
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

- (void)setImageEmbeddingResultsFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [VCPProtoEmbeddingResult resultsFromVSKAsset:?];
  [(MADProtoComputeSyncThumbnailPayload *)self setImageEmbeddingResults:v6];

  v7 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResults];
  if ([v7 count])
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  [(MADProtoComputeSyncThumbnailPayload *)self setImageEmbeddingVersion:v8];
}

- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingVersion]>= 73)
  {
    v6 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingResults];
    v5 = [VCPProtoEmbeddingResult imageEmbeddingVSKAssetFromResults:v6 localIdentifier:v4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      v11 = [(MADProtoComputeSyncThumbnailPayload *)self imageEmbeddingVersion];
      v12 = 1024;
      v13 = 73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProtoComputeSyncThumbnailPayload->VSKAsset][%@] Image embedding version %d < forward compatible version %d", &v8, 0x18u);
    }

    v5 = 0;
  }

  return v5;
}

@end
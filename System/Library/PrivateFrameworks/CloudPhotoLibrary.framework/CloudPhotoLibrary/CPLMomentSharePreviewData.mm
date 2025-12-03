@interface CPLMomentSharePreviewData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCuratedAssetIdentifiers:(id)identifiers;
- (void)addPreviewImageData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLMomentSharePreviewData

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = fromCopy[4];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CPLMomentSharePreviewData *)self addPreviewImageData:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (fromCopy[3])
  {
    [(CPLMomentSharePreviewData *)self setKeyAssetIdentifier:?];
  }

  if (fromCopy[1])
  {
    [(CPLMomentSharePreviewData *)self setCropRectString:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CPLMomentSharePreviewData *)self addCuratedAssetIdentifiers:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_previewImageDatas hash];
  v4 = [(NSString *)self->_keyAssetIdentifier hash]^ v3;
  v5 = [(NSString *)self->_cropRectString hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_curatedAssetIdentifiers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((previewImageDatas = self->_previewImageDatas, !(previewImageDatas | equalCopy[4])) || -[NSMutableArray isEqual:](previewImageDatas, "isEqual:")) && ((keyAssetIdentifier = self->_keyAssetIdentifier, !(keyAssetIdentifier | equalCopy[3])) || -[NSString isEqual:](keyAssetIdentifier, "isEqual:")) && ((cropRectString = self->_cropRectString, !(cropRectString | equalCopy[1])) || -[NSString isEqual:](cropRectString, "isEqual:")))
  {
    curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
    if (curatedAssetIdentifiers | equalCopy[2])
    {
      v9 = [(NSMutableArray *)curatedAssetIdentifiers isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_previewImageDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v28 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addPreviewImageData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_keyAssetIdentifier copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_cropRectString copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_curatedAssetIdentifiers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{zone, v24}];
        [v5 addCuratedAssetIdentifiers:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(CPLMomentSharePreviewData *)self previewImageDatasCount])
  {
    [toCopy clearPreviewImageDatas];
    previewImageDatasCount = [(CPLMomentSharePreviewData *)self previewImageDatasCount];
    if (previewImageDatasCount)
    {
      v5 = previewImageDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CPLMomentSharePreviewData *)self previewImageDataAtIndex:i];
        [toCopy addPreviewImageData:v7];
      }
    }
  }

  if (self->_keyAssetIdentifier)
  {
    [toCopy setKeyAssetIdentifier:?];
  }

  if (self->_cropRectString)
  {
    [toCopy setCropRectString:?];
  }

  if ([(CPLMomentSharePreviewData *)self curatedAssetIdentifiersCount])
  {
    [toCopy clearCuratedAssetIdentifiers];
    curatedAssetIdentifiersCount = [(CPLMomentSharePreviewData *)self curatedAssetIdentifiersCount];
    if (curatedAssetIdentifiersCount)
    {
      v9 = curatedAssetIdentifiersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(CPLMomentSharePreviewData *)self curatedAssetIdentifiersAtIndex:j];
        [toCopy addCuratedAssetIdentifiers:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_previewImageDatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_keyAssetIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cropRectString)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_curatedAssetIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  previewImageDatas = self->_previewImageDatas;
  if (previewImageDatas)
  {
    [dictionary setObject:previewImageDatas forKey:@"previewImageData"];
  }

  keyAssetIdentifier = self->_keyAssetIdentifier;
  if (keyAssetIdentifier)
  {
    [v4 setObject:keyAssetIdentifier forKey:@"keyAssetIdentifier"];
  }

  cropRectString = self->_cropRectString;
  if (cropRectString)
  {
    [v4 setObject:cropRectString forKey:@"cropRectString"];
  }

  curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
  if (curatedAssetIdentifiers)
  {
    [v4 setObject:curatedAssetIdentifiers forKey:@"curatedAssetIdentifiers"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLMomentSharePreviewData;
  v4 = [(CPLMomentSharePreviewData *)&v8 description];
  dictionaryRepresentation = [(CPLMomentSharePreviewData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCuratedAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
  v8 = identifiersCopy;
  if (!curatedAssetIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_curatedAssetIdentifiers;
    self->_curatedAssetIdentifiers = v6;

    identifiersCopy = v8;
    curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
  }

  [(NSMutableArray *)curatedAssetIdentifiers addObject:identifiersCopy];
}

- (void)addPreviewImageData:(id)data
{
  dataCopy = data;
  previewImageDatas = self->_previewImageDatas;
  v8 = dataCopy;
  if (!previewImageDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previewImageDatas;
    self->_previewImageDatas = v6;

    dataCopy = v8;
    previewImageDatas = self->_previewImageDatas;
  }

  [(NSMutableArray *)previewImageDatas addObject:dataCopy];
}

@end
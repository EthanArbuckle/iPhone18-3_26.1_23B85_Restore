@interface CPLMomentSharePreviewData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCuratedAssetIdentifiers:(id)a3;
- (void)addPreviewImageData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLMomentSharePreviewData

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4[4];
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

  if (v4[3])
  {
    [(CPLMomentSharePreviewData *)self setKeyAssetIdentifier:?];
  }

  if (v4[1])
  {
    [(CPLMomentSharePreviewData *)self setCropRectString:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((previewImageDatas = self->_previewImageDatas, !(previewImageDatas | v4[4])) || -[NSMutableArray isEqual:](previewImageDatas, "isEqual:")) && ((keyAssetIdentifier = self->_keyAssetIdentifier, !(keyAssetIdentifier | v4[3])) || -[NSString isEqual:](keyAssetIdentifier, "isEqual:")) && ((cropRectString = self->_cropRectString, !(cropRectString | v4[1])) || -[NSString isEqual:](cropRectString, "isEqual:")))
  {
    curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
    if (curatedAssetIdentifiers | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v28 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addPreviewImageData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_keyAssetIdentifier copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_cropRectString copyWithZone:a3];
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

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{a3, v24}];
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

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(CPLMomentSharePreviewData *)self previewImageDatasCount])
  {
    [v12 clearPreviewImageDatas];
    v4 = [(CPLMomentSharePreviewData *)self previewImageDatasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CPLMomentSharePreviewData *)self previewImageDataAtIndex:i];
        [v12 addPreviewImageData:v7];
      }
    }
  }

  if (self->_keyAssetIdentifier)
  {
    [v12 setKeyAssetIdentifier:?];
  }

  if (self->_cropRectString)
  {
    [v12 setCropRectString:?];
  }

  if ([(CPLMomentSharePreviewData *)self curatedAssetIdentifiersCount])
  {
    [v12 clearCuratedAssetIdentifiers];
    v8 = [(CPLMomentSharePreviewData *)self curatedAssetIdentifiersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(CPLMomentSharePreviewData *)self curatedAssetIdentifiersAtIndex:j];
        [v12 addCuratedAssetIdentifiers:v11];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  previewImageDatas = self->_previewImageDatas;
  if (previewImageDatas)
  {
    [v3 setObject:previewImageDatas forKey:@"previewImageData"];
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
  v5 = [(CPLMomentSharePreviewData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addCuratedAssetIdentifiers:(id)a3
{
  v4 = a3;
  curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
  v8 = v4;
  if (!curatedAssetIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_curatedAssetIdentifiers;
    self->_curatedAssetIdentifiers = v6;

    v4 = v8;
    curatedAssetIdentifiers = self->_curatedAssetIdentifiers;
  }

  [(NSMutableArray *)curatedAssetIdentifiers addObject:v4];
}

- (void)addPreviewImageData:(id)a3
{
  v4 = a3;
  previewImageDatas = self->_previewImageDatas;
  v8 = v4;
  if (!previewImageDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previewImageDatas;
    self->_previewImageDatas = v6;

    v4 = v8;
    previewImageDatas = self->_previewImageDatas;
  }

  [(NSMutableArray *)previewImageDatas addObject:v4];
}

@end
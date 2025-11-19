@interface VCPProtoVideoSceneThumbnailResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)addSceneToThumbnail:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoVideoSceneThumbnailResult

- (void)addSceneToThumbnail:(id)a3
{
  v4 = a3;
  sceneToThumbnails = self->_sceneToThumbnails;
  v8 = v4;
  if (!sceneToThumbnails)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sceneToThumbnails;
    self->_sceneToThumbnails = v6;

    v4 = v8;
    sceneToThumbnails = self->_sceneToThumbnails;
  }

  [(NSMutableArray *)sceneToThumbnails addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoSceneThumbnailResult;
  v4 = [(VCPProtoVideoSceneThumbnailResult *)&v8 description];
  v5 = [(VCPProtoVideoSceneThumbnailResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_sceneToThumbnails count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sceneToThumbnails, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_sceneToThumbnails;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"sceneToThumbnail"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sceneToThumbnails;
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
  v8 = a3;
  if ([(VCPProtoVideoSceneThumbnailResult *)self sceneToThumbnailsCount])
  {
    [v8 clearSceneToThumbnails];
    v4 = [(VCPProtoVideoSceneThumbnailResult *)self sceneToThumbnailsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoVideoSceneThumbnailResult *)self sceneToThumbnailAtIndex:i];
        [v8 addSceneToThumbnail:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_sceneToThumbnails;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [v5 addSceneToThumbnail:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    sceneToThumbnails = self->_sceneToThumbnails;
    if (sceneToThumbnails | v4[1])
    {
      v6 = [(NSMutableArray *)sceneToThumbnails isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(VCPProtoVideoSceneThumbnailResult *)self addSceneToThumbnail:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  if ([v3 count])
  {
    v4 = objc_alloc_init(VCPProtoVideoSceneThumbnailResult);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__VCPProtoVideoSceneThumbnailResult_LegacyConversion__resultFromLegacyDictionary___block_invoke;
    v7[3] = &unk_1E8351040;
    v5 = v4;
    v8 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __82__VCPProtoVideoSceneThumbnailResult_LegacyConversion__resultFromLegacyDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_alloc_init(VCPProtoClassificationToThumbnail);
  -[VCPProtoClassificationToThumbnail setIdentifier:](v6, "setIdentifier:", [v7 longLongValue]);
  [(VCPProtoClassificationToThumbnail *)v6 setThumbnailID:v5];
  [*(a1 + 32) addSceneToThumbnail:v6];
}

- (id)exportToLegacyDictionary
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoVideoSceneThumbnailResult sceneToThumbnailsCount](self, "sceneToThumbnailsCount")}];
  for (i = 0; i < [(VCPProtoVideoSceneThumbnailResult *)self sceneToThumbnailsCount]; ++i)
  {
    v5 = [(VCPProtoVideoSceneThumbnailResult *)self sceneToThumbnailAtIndex:i];
    v6 = [v5 thumbnailID];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "identifier")}];
    v8 = [v7 stringValue];
    [v3 setObject:v6 forKey:v8];
  }

  v11 = @"attributes";
  v12[0] = v3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v9;
}

@end
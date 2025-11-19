@interface VCPProtoLivePhotoHumanActionClassificationResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)addClassification:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoLivePhotoHumanActionClassificationResult

- (void)addClassification:(id)a3
{
  v4 = a3;
  classifications = self->_classifications;
  v8 = v4;
  if (!classifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_classifications;
    self->_classifications = v6;

    v4 = v8;
    classifications = self->_classifications;
  }

  [(NSMutableArray *)classifications addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoHumanActionClassificationResult;
  v4 = [(VCPProtoLivePhotoHumanActionClassificationResult *)&v8 description];
  v5 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
  }

  if ([(NSMutableArray *)self->_classifications count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_classifications, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_classifications;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"classification"];
  }

  bounds = self->_bounds;
  if (bounds)
  {
    v14 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"bounds"];
  }

  faceId = self->_faceId;
  if (faceId)
  {
    [v3 setObject:faceId forKey:@"faceId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteSubmessage();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_classifications;
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

  PBDataWriterWriteSubmessage();
  if (self->_faceId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setTimeRange:self->_timeRange];
  if ([(VCPProtoLivePhotoHumanActionClassificationResult *)self classificationsCount])
  {
    [v8 clearClassifications];
    v4 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self classificationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self classificationAtIndex:i];
        [v8 addClassification:v7];
      }
    }
  }

  [v8 setBounds:self->_bounds];
  if (self->_faceId)
  {
    [v8 setFaceId:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_classifications;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) copyWithZone:{a3, v19}];
        [v5 addClassification:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_faceId copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[4])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((classifications = self->_classifications, !(classifications | v4[2])) || -[NSMutableArray isEqual:](classifications, "isEqual:")) && ((bounds = self->_bounds, !(bounds | v4[1])) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")))
  {
    faceId = self->_faceId;
    if (faceId | v4[3])
    {
      v9 = [(NSString *)faceId isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = [(NSMutableArray *)self->_classifications hash]^ v3;
  v5 = [(VCPProtoBounds *)self->_bounds hash];
  return v4 ^ v5 ^ [(NSString *)self->_faceId hash];
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 4);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoLivePhotoHumanActionClassificationResult *)self setTimeRange:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(VCPProtoLivePhotoHumanActionClassificationResult *)self addClassification:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  bounds = self->_bounds;
  v13 = *(v4 + 1);
  if (bounds)
  {
    if (v13)
    {
      [(VCPProtoBounds *)bounds mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(VCPProtoLivePhotoHumanActionClassificationResult *)self setBounds:?];
  }

  if (*(v4 + 3))
  {
    [(VCPProtoLivePhotoHumanActionClassificationResult *)self setFaceId:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v16, 0, sizeof(v16));
  CMTimeRangeMakeFromDictionary(&v16, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"humanBounds"];
  v6 = [v4 objectForKeyedSubscript:@"humanActions"];
  v7 = [v4 objectForKeyedSubscript:@"faceIdentifier"];
  if (v16.start.flags)
  {
    v8 = 0;
    if ((v16.duration.flags & 1) != 0 && !v16.duration.epoch && (v16.duration.value & 0x8000000000000000) == 0)
    {
      v8 = 0;
      if ([v4 count])
      {
        if (v5)
        {
          v10 = objc_alloc_init(VCPProtoLivePhotoHumanActionClassificationResult);
          v15 = v16;
          v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v15];
          [(VCPProtoLivePhotoHumanActionClassificationResult *)v10 setTimeRange:v11];

          v18 = NSRectFromString(v5);
          v12 = [VCPProtoBounds boundsWithCGRect:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
          [(VCPProtoLivePhotoHumanActionClassificationResult *)v10 setBounds:v12];

          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __97__VCPProtoLivePhotoHumanActionClassificationResult_LegacyConversion__resultFromLegacyDictionary___block_invoke;
          v13[3] = &unk_1E834DF68;
          v8 = v10;
          v14 = v8;
          [v6 enumerateKeysAndObjectsUsingBlock:v13];
          if (v7)
          {
            [(VCPProtoLivePhotoHumanActionClassificationResult *)v8 setFaceId:v7];
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __97__VCPProtoLivePhotoHumanActionClassificationResult_LegacyConversion__resultFromLegacyDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_alloc_init(VCPProtoClassification);
  -[VCPProtoClassification setIdentifier:](v6, "setIdentifier:", [v7 longLongValue]);
  [v5 floatValue];
  [(VCPProtoClassification *)v6 setConfidence:?];
  [*(a1 + 32) addClassification:v6];
}

- (id)exportToLegacyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoLivePhotoHumanActionClassificationResult classificationsCount](self, "classificationsCount")}];
  for (i = 0; i < [(VCPProtoLivePhotoHumanActionClassificationResult *)self classificationsCount]; ++i)
  {
    v6 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self classificationAtIndex:i];
    v7 = MEMORY[0x1E696AD98];
    [v6 confidence];
    v8 = [v7 numberWithFloat:?];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "identifier")}];
    v10 = [v9 stringValue];
    [v4 setObject:v8 forKey:v10];
  }

  [v3 setObject:v4 forKeyedSubscript:@"humanActions"];
  v11 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self bounds];
  [v11 rectValue];
  v12 = NSStringFromRect(v22);
  [v3 setObject:v12 forKeyedSubscript:@"humanBounds"];

  if ([(VCPProtoLivePhotoHumanActionClassificationResult *)self hasFaceId])
  {
    v13 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self faceId];
    [v3 setObject:v13 forKeyedSubscript:@"faceIdentifier"];
  }

  v14 = [(VCPProtoLivePhotoHumanActionClassificationResult *)self timeRange];
  v15 = v14;
  if (v14)
  {
    [v14 timeRangeValue];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  range = v19;
  v16 = CMTimeRangeCopyAsDictionary(&range, 0);
  v17 = [(__CFDictionary *)v16 mutableCopy];

  [v17 setObject:v3 forKeyedSubscript:@"attributes"];

  return v17;
}

@end
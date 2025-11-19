@interface VCPProtoMovieHumanActionClassificationResult
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

@implementation VCPProtoMovieHumanActionClassificationResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v18, 0, sizeof(v18));
  CMTimeRangeMakeFromDictionary(&v18, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"humanBounds"];
  v6 = [v4 objectForKeyedSubscript:@"humanActions"];
  v7 = [v4 objectForKeyedSubscript:@"faceIdentifier"];
  v8 = [v4 objectForKeyedSubscript:@"thumbnailID"];
  v9 = [v4 objectForKeyedSubscript:@"torsoPrint"];
  if (v18.start.flags)
  {
    v10 = 0;
    if ((v18.duration.flags & 1) != 0 && !v18.duration.epoch)
    {
      v10 = 0;
      if ((v18.duration.value & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          v12 = objc_alloc_init(VCPProtoMovieHumanActionClassificationResult);
          v17 = v18;
          v13 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v17];
          [(VCPProtoMovieHumanActionClassificationResult *)v12 setTimeRange:v13];

          v20 = NSRectFromString(v5);
          v14 = [VCPProtoBounds boundsWithCGRect:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
          [(VCPProtoMovieHumanActionClassificationResult *)v12 setBounds:v14];

          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __93__VCPProtoMovieHumanActionClassificationResult_LegacyConversion__resultFromLegacyDictionary___block_invoke;
          v15[3] = &unk_1E834DF68;
          v10 = v12;
          v16 = v10;
          [v6 enumerateKeysAndObjectsUsingBlock:v15];
          if (v7)
          {
            [(VCPProtoMovieHumanActionClassificationResult *)v10 setFaceId:v7];
          }

          if (v8)
          {
            [(VCPProtoMovieHumanActionClassificationResult *)v10 setThumbnailID:v8];
          }

          if (v9)
          {
            [(VCPProtoMovieHumanActionClassificationResult *)v10 setTorsoprint:v9];
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __93__VCPProtoMovieHumanActionClassificationResult_LegacyConversion__resultFromLegacyDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v4 = [(VCPProtoMovieHumanActionClassificationResult *)self bounds];
  [v4 rectValue];
  v5 = NSStringFromRect(v24);
  [v3 setObject:v5 forKeyedSubscript:@"humanBounds"];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoMovieHumanActionClassificationResult classificationsCount](self, "classificationsCount")}];
  for (i = 0; i < [(VCPProtoMovieHumanActionClassificationResult *)self classificationsCount]; ++i)
  {
    v8 = [(VCPProtoMovieHumanActionClassificationResult *)self classificationAtIndex:i];
    v9 = MEMORY[0x1E696AD98];
    [v8 confidence];
    v10 = [v9 numberWithFloat:?];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "identifier")}];
    v12 = [v11 stringValue];
    [v6 setObject:v10 forKey:v12];
  }

  [v3 setObject:v6 forKeyedSubscript:@"humanActions"];
  if ([(VCPProtoMovieHumanActionClassificationResult *)self hasFaceId])
  {
    v13 = [(VCPProtoMovieHumanActionClassificationResult *)self faceId];
    [v3 setObject:v13 forKeyedSubscript:@"faceIdentifier"];
  }

  if ([(VCPProtoMovieHumanActionClassificationResult *)self hasThumbnailID])
  {
    v14 = [(VCPProtoMovieHumanActionClassificationResult *)self thumbnailID];
    [v3 setObject:v14 forKeyedSubscript:@"thumbnailID"];
  }

  if ([(VCPProtoMovieHumanActionClassificationResult *)self hasTorsoprint])
  {
    v15 = [(VCPProtoMovieHumanActionClassificationResult *)self torsoprint];
    [v3 setObject:v15 forKeyedSubscript:@"torsoPrint"];
  }

  v16 = [(VCPProtoMovieHumanActionClassificationResult *)self timeRange];
  v17 = v16;
  if (v16)
  {
    [v16 timeRangeValue];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  range = v21;
  v18 = CMTimeRangeCopyAsDictionary(&range, 0);
  v19 = [(__CFDictionary *)v18 mutableCopy];

  [v19 setObject:v3 forKeyedSubscript:@"attributes"];

  return v19;
}

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
  v8.super_class = VCPProtoMovieHumanActionClassificationResult;
  v4 = [(VCPProtoMovieHumanActionClassificationResult *)&v8 description];
  v5 = [(VCPProtoMovieHumanActionClassificationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
  }

  bounds = self->_bounds;
  if (bounds)
  {
    v7 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"bounds"];
  }

  if ([(NSMutableArray *)self->_classifications count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_classifications, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_classifications;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"classification"];
  }

  faceId = self->_faceId;
  if (faceId)
  {
    [v3 setObject:faceId forKey:@"faceId"];
  }

  torsoprint = self->_torsoprint;
  if (torsoprint)
  {
    [v3 setObject:torsoprint forKey:@"torsoprint"];
  }

  thumbnailID = self->_thumbnailID;
  if (thumbnailID)
  {
    [v3 setObject:thumbnailID forKey:@"thumbnailID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteSubmessage();
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

  if (self->_faceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_torsoprint)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_thumbnailID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  [v9 setTimeRange:self->_timeRange];
  [v9 setBounds:self->_bounds];
  if ([(VCPProtoMovieHumanActionClassificationResult *)self classificationsCount])
  {
    [v9 clearClassifications];
    v4 = [(VCPProtoMovieHumanActionClassificationResult *)self classificationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoMovieHumanActionClassificationResult *)self classificationAtIndex:i];
        [v9 addClassification:v7];
      }
    }
  }

  if (self->_faceId)
  {
    [v9 setFaceId:?];
  }

  v8 = v9;
  if (self->_torsoprint)
  {
    [v9 setTorsoprint:?];
    v8 = v9;
  }

  if (self->_thumbnailID)
  {
    [v9 setThumbnailID:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_classifications;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v23 + 1) + 8 * v14) copyWithZone:{a3, v23}];
        [v5 addClassification:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_faceId copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSData *)self->_torsoprint copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_thumbnailID copyWithZone:a3];
  v21 = v5[4];
  v5[4] = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[5])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((bounds = self->_bounds, !(bounds | v4[1])) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && ((classifications = self->_classifications, !(classifications | v4[2])) || -[NSMutableArray isEqual:](classifications, "isEqual:")) && ((faceId = self->_faceId, !(faceId | v4[3])) || -[NSString isEqual:](faceId, "isEqual:")) && ((torsoprint = self->_torsoprint, !(torsoprint | v4[6])) || -[NSData isEqual:](torsoprint, "isEqual:")))
  {
    thumbnailID = self->_thumbnailID;
    if (thumbnailID | v4[4])
    {
      v11 = [(NSString *)thumbnailID isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = [(VCPProtoBounds *)self->_bounds hash]^ v3;
  v5 = [(NSMutableArray *)self->_classifications hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_faceId hash];
  v7 = [(NSData *)self->_torsoprint hash];
  return v6 ^ v7 ^ [(NSString *)self->_thumbnailID hash];
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 5);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoMovieHumanActionClassificationResult *)self setTimeRange:?];
  }

  bounds = self->_bounds;
  v8 = *(v4 + 1);
  if (bounds)
  {
    if (v8)
    {
      [(VCPProtoBounds *)bounds mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(VCPProtoMovieHumanActionClassificationResult *)self setBounds:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(v4 + 2);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(VCPProtoMovieHumanActionClassificationResult *)self addClassification:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (*(v4 + 3))
  {
    [(VCPProtoMovieHumanActionClassificationResult *)self setFaceId:?];
  }

  if (*(v4 + 6))
  {
    [(VCPProtoMovieHumanActionClassificationResult *)self setTorsoprint:?];
  }

  if (*(v4 + 4))
  {
    [(VCPProtoMovieHumanActionClassificationResult *)self setThumbnailID:?];
  }
}

@end
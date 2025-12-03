@interface VCPProtoMovieSafetyResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)addClassification:(id)classification;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieSafetyResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, dictionaryCopy);
  v5 = [v4 objectForKeyedSubscript:@"Sensitivity"];
  v6 = [v4 objectForKeyedSubscript:@"SensitivitySceneResults"];
  if (v14.start.flags)
  {
    v7 = 0;
    if ((v14.duration.flags & 1) != 0 && !v14.duration.epoch)
    {
      v7 = 0;
      if ((v14.duration.value & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          v9 = objc_alloc_init(VCPProtoMovieSafetyResult);
          v13 = v14;
          v10 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v13];
          [(VCPProtoMovieSafetyResult *)v9 setTimeRange:v10];

          -[VCPProtoMovieSafetyResult setSensitivity:](v9, "setSensitivity:", [v5 intValue]);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __74__VCPProtoMovieSafetyResult_LegacyConversion__resultFromLegacyDictionary___block_invoke;
          v11[3] = &unk_1E834DF68;
          v7 = v9;
          v12 = v7;
          [v6 enumerateKeysAndObjectsUsingBlock:v11];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __74__VCPProtoMovieSafetyResult_LegacyConversion__resultFromLegacyDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v20[2] = *MEMORY[0x1E69E9840];
  timeRange = [(VCPProtoMovieSafetyResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  range = v17;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoMovieSafetyResult classificationsCount](self, "classificationsCount")}];
  for (i = 0; i < [(VCPProtoMovieSafetyResult *)self classificationsCount:*&v17.start.value]; ++i)
  {
    v9 = [(VCPProtoMovieSafetyResult *)self classificationAtIndex:i];
    v10 = MEMORY[0x1E696AD98];
    [v9 confidence];
    v11 = [v10 numberWithFloat:?];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "identifier")}];
    stringValue = [v12 stringValue];
    [v7 setObject:v11 forKey:stringValue];
  }

  v19[0] = @"Sensitivity";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoMovieSafetyResult sensitivity](self, "sensitivity")}];
  v19[1] = @"SensitivitySceneResults";
  v20[0] = v14;
  v20[1] = v7;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v6 setObject:v15 forKeyedSubscript:@"attributes"];

  return v6;
}

- (void)addClassification:(id)classification
{
  classificationCopy = classification;
  classifications = self->_classifications;
  v8 = classificationCopy;
  if (!classifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_classifications;
    self->_classifications = v6;

    classificationCopy = v8;
    classifications = self->_classifications;
  }

  [(NSMutableArray *)classifications addObject:classificationCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieSafetyResult;
  v4 = [(VCPProtoMovieSafetyResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieSafetyResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_sensitivity];
  [dictionary setObject:v6 forKey:@"sensitivity"];

  if ([(NSMutableArray *)self->_classifications count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_classifications, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_classifications;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"classification"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  toCopy[4] = self->_sensitivity;
  if ([(VCPProtoMovieSafetyResult *)self classificationsCount])
  {
    [toCopy clearClassifications];
    classificationsCount = [(VCPProtoMovieSafetyResult *)self classificationsCount];
    if (classificationsCount)
    {
      v5 = classificationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoMovieSafetyResult *)self classificationAtIndex:i];
        [toCopy addClassification:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_sensitivity;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_classifications;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addClassification:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[3])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_sensitivity == *(equalCopy + 4))
  {
    classifications = self->_classifications;
    if (classifications | equalCopy[1])
    {
      v7 = [(NSMutableArray *)classifications isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = 2654435761 * self->_sensitivity;
  return v4 ^ v3 ^ [(NSMutableArray *)self->_classifications hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 3);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoMovieSafetyResult *)self setTimeRange:?];
  }

  self->_sensitivity = *(fromCopy + 4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(VCPProtoMovieSafetyResult *)self addClassification:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end
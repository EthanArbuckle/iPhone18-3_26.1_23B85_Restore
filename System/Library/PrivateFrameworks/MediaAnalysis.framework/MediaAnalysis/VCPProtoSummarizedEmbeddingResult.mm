@interface VCPProtoSummarizedEmbeddingResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (unsigned)embeddingIDAtIndex:(unint64_t)index;
- (unsigned)representativeMappingAtIndex:(unint64_t)index;
- (void)addThumbnailID:(id)d;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoSummarizedEmbeddingResult

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = VCPProtoSummarizedEmbeddingResult;
  [(VCPProtoSummarizedEmbeddingResult *)&v3 dealloc];
}

- (unsigned)embeddingIDAtIndex:(unint64_t)index
{
  p_embeddingIDs = &self->_embeddingIDs;
  count = self->_embeddingIDs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_embeddingIDs->list[index];
}

- (unsigned)representativeMappingAtIndex:(unint64_t)index
{
  p_representativeMappings = &self->_representativeMappings;
  count = self->_representativeMappings.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_representativeMappings->list[index];
}

- (void)addThumbnailID:(id)d
{
  dCopy = d;
  thumbnailIDs = self->_thumbnailIDs;
  v8 = dCopy;
  if (!thumbnailIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_thumbnailIDs;
    self->_thumbnailIDs = v6;

    dCopy = v8;
    thumbnailIDs = self->_thumbnailIDs;
  }

  [(NSMutableArray *)thumbnailIDs addObject:dCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoSummarizedEmbeddingResult;
  v4 = [(VCPProtoSummarizedEmbeddingResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoSummarizedEmbeddingResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  v6 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v6 forKey:@"embeddingID"];

  v7 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v7 forKey:@"representativeMapping"];

  thumbnailIDs = self->_thumbnailIDs;
  if (thumbnailIDs)
  {
    [dictionary setObject:thumbnailIDs forKey:@"thumbnailID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteSubmessage();
  if (self->_embeddingIDs.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_embeddingIDs.count);
  }

  if (self->_representativeMappings.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_representativeMappings.count);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_thumbnailIDs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  if ([(VCPProtoSummarizedEmbeddingResult *)self embeddingIDsCount])
  {
    [toCopy clearEmbeddingIDs];
    embeddingIDsCount = [(VCPProtoSummarizedEmbeddingResult *)self embeddingIDsCount];
    if (embeddingIDsCount)
    {
      v5 = embeddingIDsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addEmbeddingID:{-[VCPProtoSummarizedEmbeddingResult embeddingIDAtIndex:](self, "embeddingIDAtIndex:", i)}];
      }
    }
  }

  if ([(VCPProtoSummarizedEmbeddingResult *)self representativeMappingsCount])
  {
    [toCopy clearRepresentativeMappings];
    representativeMappingsCount = [(VCPProtoSummarizedEmbeddingResult *)self representativeMappingsCount];
    if (representativeMappingsCount)
    {
      v8 = representativeMappingsCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addRepresentativeMapping:{-[VCPProtoSummarizedEmbeddingResult representativeMappingAtIndex:](self, "representativeMappingAtIndex:", j)}];
      }
    }
  }

  if ([(VCPProtoSummarizedEmbeddingResult *)self thumbnailIDsCount])
  {
    [toCopy clearThumbnailIDs];
    thumbnailIDsCount = [(VCPProtoSummarizedEmbeddingResult *)self thumbnailIDsCount];
    if (thumbnailIDsCount)
    {
      v11 = thumbnailIDsCount;
      for (k = 0; k != v11; ++k)
      {
        v13 = [(VCPProtoSummarizedEmbeddingResult *)self thumbnailIDAtIndex:k];
        [toCopy addThumbnailID:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_thumbnailIDs;
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
        [v5 addThumbnailID:v13];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[8])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    thumbnailIDs = self->_thumbnailIDs;
    if (thumbnailIDs | equalCopy[7])
    {
      v7 = [(NSMutableArray *)thumbnailIDs isEqual:?];
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
  v4 = PBRepeatedUInt32Hash();
  v5 = v4 ^ PBRepeatedUInt32Hash() ^ v3;
  return v5 ^ [(NSMutableArray *)self->_thumbnailIDs hash];
}

- (void)mergeFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 8);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoSummarizedEmbeddingResult *)self setTimeRange:?];
  }

  embeddingIDsCount = [fromCopy embeddingIDsCount];
  if (embeddingIDsCount)
  {
    v8 = embeddingIDsCount;
    for (i = 0; i != v8; ++i)
    {
      -[VCPProtoSummarizedEmbeddingResult addEmbeddingID:](self, "addEmbeddingID:", [fromCopy embeddingIDAtIndex:i]);
    }
  }

  representativeMappingsCount = [fromCopy representativeMappingsCount];
  if (representativeMappingsCount)
  {
    v11 = representativeMappingsCount;
    for (j = 0; j != v11; ++j)
    {
      -[VCPProtoSummarizedEmbeddingResult addRepresentativeMapping:](self, "addRepresentativeMapping:", [fromCopy representativeMappingAtIndex:j]);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(fromCopy + 7);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(VCPProtoSummarizedEmbeddingResult *)self addThumbnailID:*(*(&v18 + 1) + 8 * k), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  memset(&v45, 0, sizeof(v45));
  CMTimeRangeMakeFromDictionary(&v45, dictionaryCopy);
  if (v45.start.flags)
  {
    v5 = 0;
    if ((v45.duration.flags & 1) != 0 && !v45.duration.epoch)
    {
      v5 = 0;
      if ((v45.duration.value & 0x8000000000000000) == 0)
      {
        if (v4)
        {
          v7 = [v4 objectForKeyedSubscript:@"embeddingIds"];
          if ([v7 count])
          {
            v5 = objc_alloc_init(VCPProtoSummarizedEmbeddingResult);
            v44 = v45;
            v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v44];
            [(VCPProtoSummarizedEmbeddingResult *)v5 setTimeRange:v8];

            v9 = [v7 count];
            v33 = &v30;
            MEMORY[0x1EEE9AC00](v9);
            v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v12 = v7;
            v34 = v4;
            v35 = v7;
            v13 = [v12 countByEnumeratingWithState:&v40 objects:v47 count:16];
            if (v13)
            {
              LODWORD(v14) = 0;
              v15 = *v41;
              do
              {
                v16 = 0;
                v17 = v14;
                do
                {
                  if (*v41 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v14 = (v17 + 1);
                  *&v11[4 * v17++] = [*(*(&v40 + 1) + 8 * v16++) unsignedIntValue];
                }

                while (v13 != v16);
                v13 = [v12 countByEnumeratingWithState:&v40 objects:v47 count:16];
              }

              while (v13);
              v4 = v34;
              v7 = v35;
            }

            else
            {
              v14 = 0;
            }

            [(VCPProtoSummarizedEmbeddingResult *)v5 setEmbeddingIDs:v11 count:v14];
            v18 = [v4 objectForKeyedSubscript:@"representativeMapping"];
            if ([v18 count])
            {
              v19 = [v18 count];
              v32 = &v30;
              MEMORY[0x1EEE9AC00](v19);
              v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v22 = v18;
              v23 = [v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
              if (v23)
              {
                v31 = v18;
                LODWORD(v24) = 0;
                v25 = *v37;
                do
                {
                  v26 = 0;
                  v27 = v24;
                  do
                  {
                    if (*v37 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v24 = (v27 + 1);
                    *&v21[4 * v27++] = [*(*(&v36 + 1) + 8 * v26++) unsignedIntValue];
                  }

                  while (v23 != v26);
                  v23 = [v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
                }

                while (v23);
                v4 = v34;
                v18 = v31;
              }

              else
              {
                v24 = 0;
              }

              v7 = v35;
              [(VCPProtoSummarizedEmbeddingResult *)v5 setRepresentativeMappings:v21 count:v24];
            }

            v28 = [v4 objectForKeyedSubscript:@"thumbnailID"];
            if ([v28 count])
            {
              v29 = [v28 mutableCopy];
              [(VCPProtoSummarizedEmbeddingResult *)v5 setThumbnailIDs:v29];
            }
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v23[3] = *MEMORY[0x1E69E9840];
  timeRange = [(VCPProtoSummarizedEmbeddingResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  range = v18;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[VCPProtoSummarizedEmbeddingResult embeddingIDsCount](self, "embeddingIDsCount")}];
  for (i = 0; i < [(VCPProtoSummarizedEmbeddingResult *)self embeddingIDsCount:*&v18.start.value]; ++i)
  {
    v9 = [(VCPProtoSummarizedEmbeddingResult *)self embeddingIDAtIndex:i];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
    [v7 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[VCPProtoSummarizedEmbeddingResult representativeMappingsCount](self, "representativeMappingsCount")}];
  for (j = 0; j < [(VCPProtoSummarizedEmbeddingResult *)self representativeMappingsCount]; ++j)
  {
    v13 = [(VCPProtoSummarizedEmbeddingResult *)self representativeMappingAtIndex:j];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    [v11 addObject:v14];
  }

  if ([(VCPProtoSummarizedEmbeddingResult *)self thumbnailIDsCount])
  {
    v22[0] = @"embeddingIds";
    v22[1] = @"representativeMapping";
    v23[0] = v7;
    v23[1] = v11;
    v22[2] = @"thumbnailID";
    thumbnailIDs = [(VCPProtoSummarizedEmbeddingResult *)self thumbnailIDs];
    v23[2] = thumbnailIDs;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [v6 setObject:v16 forKeyedSubscript:@"attributes"];
  }

  else
  {
    v20[0] = @"embeddingIds";
    v20[1] = @"representativeMapping";
    v21[0] = v7;
    v21[1] = v11;
    thumbnailIDs = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v6 setObject:thumbnailIDs forKeyedSubscript:@"attributes"];
  }

  return v6;
}

@end
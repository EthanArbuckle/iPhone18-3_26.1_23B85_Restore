@interface VCPProtoFilesystemMovieClassificationResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (unsigned)identifierAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoFilesystemMovieClassificationResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v26[16] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v17 = memset(&v25, 0, sizeof(v25));
  CMTimeRangeMakeFromDictionary(&v25, dictionaryCopy);
  start = v25.start;
  duration = v25.duration;
  if ((v25.start.flags & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((v25.duration.flags & 1) != 0 && !v25.duration.epoch && (v25.duration.value & 0x8000000000000000) == 0)
  {
    if (![v17 count])
    {
LABEL_2:
      v4 = 0;
      goto LABEL_17;
    }

    v4 = objc_alloc_init(VCPProtoFilesystemMovieClassificationResult);
    v22 = start;
    Seconds = CMTimeGetSeconds(&v22);
    *&Seconds = Seconds;
    [(VCPProtoFilesystemMovieClassificationResult *)v4 setStart:Seconds];
    v22 = duration;
    v6 = CMTimeGetSeconds(&v22);
    *&v6 = v6;
    [(VCPProtoFilesystemMovieClassificationResult *)v4 setDuration:v6];
    [v17 count];
    MEMORY[0x1EEE9AC00]();
    v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [v17 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v10)
    {
      v16 = &v16;
      LODWORD(v11) = 0;
      v12 = *v19;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = (v14 + 1);
          *&v8[4 * v14++] = [*(*(&v18 + 1) + 8 * v13++) longLongValue];
        }

        while (v10 != v13);
        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    [(VCPProtoFilesystemMovieClassificationResult *)v4 setIdentifiers:v8 count:v11];
  }

LABEL_17:

  return v4;
}

- (id)exportToLegacyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoFilesystemMovieClassificationResult identifiersCount](self, "identifiersCount")}];
  for (i = 0; i < [(VCPProtoFilesystemMovieClassificationResult *)self identifiersCount]; ++i)
  {
    v5 = [(VCPProtoFilesystemMovieClassificationResult *)self identifierAtIndex:i];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    stringValue = [v6 stringValue];
    [v3 setObject:&unk_1F49BB0F8 forKey:stringValue];
  }

  memset(&v16, 0, sizeof(v16));
  [(VCPProtoFilesystemMovieClassificationResult *)self start];
  CMTimeMakeWithSeconds(&v16, v8, 600);
  memset(&v15, 0, sizeof(v15));
  [(VCPProtoFilesystemMovieClassificationResult *)self duration];
  CMTimeMakeWithSeconds(&v15, v9, 600);
  memset(&v14, 0, sizeof(v14));
  start.start = v16;
  v13 = v15;
  CMTimeRangeMake(&v14, &start.start, &v13);
  start = v14;
  v10 = CMTimeRangeCopyAsDictionary(&start, 0);
  v11 = [(__CFDictionary *)v10 mutableCopy];

  [v11 setObject:v3 forKeyedSubscript:@"attributes"];

  return v11;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = VCPProtoFilesystemMovieClassificationResult;
  [(VCPProtoFilesystemMovieClassificationResult *)&v3 dealloc];
}

- (unsigned)identifierAtIndex:(unint64_t)index
{
  p_identifiers = &self->_identifiers;
  count = self->_identifiers.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_identifiers->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoFilesystemMovieClassificationResult;
  v4 = [(VCPProtoFilesystemMovieClassificationResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoFilesystemMovieClassificationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_start;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"start"];

  *&v6 = self->_duration;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:@"duration"];

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"identifier"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  p_identifiers = &self->_identifiers;
  if (p_identifiers->count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < p_identifiers->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[9] = LODWORD(self->_start);
  v8 = toCopy;
  toCopy[8] = LODWORD(self->_duration);
  if ([(VCPProtoFilesystemMovieClassificationResult *)self identifiersCount])
  {
    [v8 clearIdentifiers];
    identifiersCount = [(VCPProtoFilesystemMovieClassificationResult *)self identifiersCount];
    if (identifiersCount)
    {
      v6 = identifiersCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addIdentifier:{-[VCPProtoFilesystemMovieClassificationResult identifierAtIndex:](self, "identifierAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[9] = self->_start;
  v4[8] = self->_duration;
  PBRepeatedUInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_start == equalCopy[9] && self->_duration == equalCopy[8])
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  start = self->_start;
  if (start < 0.0)
  {
    start = -start;
  }

  *v3.i32 = floorf(start + 0.5);
  v6 = (start - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vbslq_s8(v7, v4, v3);
  v9 = 2654435761u * *v8.i32;
  v10 = v9 + v6;
  if (v6 <= 0.0)
  {
    v10 = 2654435761u * *v8.i32;
  }

  v11 = v9 - fabsf(v6);
  if (v6 >= 0.0)
  {
    v11 = v10;
  }

  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v2.i32 = floorf(duration + 0.5);
  v13 = (duration - *v2.i32) * 1.8447e19;
  *v8.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v7, v8, v2).i32[0];
  v14 = 2654435761u * *v2.i32;
  v15 = v14 + v13;
  if (v13 <= 0.0)
  {
    v15 = 2654435761u * *v2.i32;
  }

  v16 = v14 - fabsf(v13);
  if (v13 >= 0.0)
  {
    v16 = v15;
  }

  return v16 ^ v11 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_start = fromCopy[9];
  self->_duration = fromCopy[8];
  v8 = fromCopy;
  identifiersCount = [fromCopy identifiersCount];
  if (identifiersCount)
  {
    v6 = identifiersCount;
    for (i = 0; i != v6; ++i)
    {
      -[VCPProtoFilesystemMovieClassificationResult addIdentifier:](self, "addIdentifier:", [v8 identifierAtIndex:i]);
    }
  }
}

@end
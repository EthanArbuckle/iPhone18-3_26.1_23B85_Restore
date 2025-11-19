@interface VCPProtoFilesystemMovieHumanActionClassificationResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (unsigned)identifierAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoFilesystemMovieHumanActionClassificationResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v27[16] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"attributes"];
  v18 = [v4 objectForKeyedSubscript:@"humanActions"];

  memset(&v26, 0, sizeof(v26));
  CMTimeRangeMakeFromDictionary(&v26, v3);
  start = v26.start;
  duration = v26.duration;
  if ((v26.start.flags & 1) == 0)
  {
    goto LABEL_2;
  }

  v5 = 0;
  if ((v26.duration.flags & 1) != 0 && !v26.duration.epoch && (v26.duration.value & 0x8000000000000000) == 0)
  {
    if (![v18 count])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_17;
    }

    v5 = objc_alloc_init(VCPProtoFilesystemMovieHumanActionClassificationResult);
    v23 = start;
    Seconds = CMTimeGetSeconds(&v23);
    *&Seconds = Seconds;
    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setStart:Seconds];
    v23 = duration;
    v7 = CMTimeGetSeconds(&v23);
    *&v7 = v7;
    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setDuration:v7];
    [v18 count];
    MEMORY[0x1EEE9AC00]();
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v18 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v17 = &v17;
      LODWORD(v12) = 0;
      v13 = *v20;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v12 = (v15 + 1);
          *&v9[4 * v15++] = [*(*(&v19 + 1) + 8 * v14++) longLongValue];
        }

        while (v11 != v14);
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setIdentifiers:v9 count:v12];
  }

LABEL_17:

  return v5;
}

- (id)exportToLegacyDictionary
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoFilesystemMovieHumanActionClassificationResult identifiersCount](self, "identifiersCount")}];
  for (i = 0; i < [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount]; ++i)
  {
    v5 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifierAtIndex:i];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    v7 = [v6 stringValue];
    [v3 setObject:&unk_1F49BB078 forKey:v7];
  }

  memset(&v17, 0, sizeof(v17));
  [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self start];
  CMTimeMakeWithSeconds(&v17, v8, 600);
  memset(&v16, 0, sizeof(v16));
  [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self duration];
  CMTimeMakeWithSeconds(&v16, v9, 600);
  memset(&v15, 0, sizeof(v15));
  start.start = v17;
  v14 = v16;
  CMTimeRangeMake(&v15, &start.start, &v14);
  start = v15;
  v10 = CMTimeRangeCopyAsDictionary(&start, 0);
  v11 = [(__CFDictionary *)v10 mutableCopy];

  v19 = @"humanActions";
  v20[0] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v11 setObject:v12 forKeyedSubscript:@"attributes"];

  return v11;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = VCPProtoFilesystemMovieHumanActionClassificationResult;
  [(VCPProtoFilesystemMovieHumanActionClassificationResult *)&v3 dealloc];
}

- (unsigned)identifierAtIndex:(unint64_t)a3
{
  p_identifiers = &self->_identifiers;
  count = self->_identifiers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_identifiers->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoFilesystemMovieHumanActionClassificationResult;
  v4 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)&v8 description];
  v5 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_start;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"start"];

  *&v6 = self->_duration;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"duration"];

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"identifier"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[9] = LODWORD(self->_start);
  v8 = v4;
  v4[8] = LODWORD(self->_duration);
  if ([(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount])
  {
    [v8 clearIdentifiers];
    v5 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addIdentifier:{-[VCPProtoFilesystemMovieHumanActionClassificationResult identifierAtIndex:](self, "identifierAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[9] = self->_start;
  v4[8] = self->_duration;
  PBRepeatedUInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_start == v4[9] && self->_duration == v4[8])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_start = v4[9];
  self->_duration = v4[8];
  v8 = v4;
  v5 = [v4 identifiersCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[VCPProtoFilesystemMovieHumanActionClassificationResult addIdentifier:](self, "addIdentifier:", [v8 identifierAtIndex:i]);
    }
  }
}

@end
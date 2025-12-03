@interface VCPProtoFilesystemMovieAudioClassificationResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoFilesystemMovieAudioClassificationResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, dictionaryCopy);
  start = v13.start;
  duration = v13.duration;
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"quality"];
  v5 = v4;
  if (v13.start.flags)
  {
    v6 = 0;
    if ((v13.duration.flags & 1) != 0 && !v13.duration.epoch)
    {
      v6 = 0;
      if ((v13.duration.value & 0x8000000000000000) == 0)
      {
        if (v4)
        {
          v6 = objc_alloc_init(VCPProtoFilesystemMovieAudioClassificationResult);
          v10 = start;
          Seconds = CMTimeGetSeconds(&v10);
          *&Seconds = Seconds;
          [(VCPProtoFilesystemMovieAudioClassificationResult *)v6 setStart:Seconds];
          v10 = duration;
          v9 = CMTimeGetSeconds(&v10);
          *&v9 = v9;
          [(VCPProtoFilesystemMovieAudioClassificationResult *)v6 setDuration:v9];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)exportToLegacyDictionary
{
  memset(&v11, 0, sizeof(v11));
  [(VCPProtoFilesystemMovieAudioClassificationResult *)self start];
  CMTimeMakeWithSeconds(&v11, v3, 600);
  memset(&v10, 0, sizeof(v10));
  [(VCPProtoFilesystemMovieAudioClassificationResult *)self duration];
  CMTimeMakeWithSeconds(&v10, v4, 600);
  memset(&v9, 0, sizeof(v9));
  start.start = v11;
  v8 = v10;
  CMTimeRangeMake(&v9, &start.start, &v8);
  start = v9;
  v5 = CMTimeRangeCopyAsDictionary(&start, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  [v6 setObject:&unk_1F49BB0D8 forKeyedSubscript:@"quality"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoFilesystemMovieAudioClassificationResult;
  v4 = [(VCPProtoFilesystemMovieAudioClassificationResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoFilesystemMovieAudioClassificationResult *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = LODWORD(self->_start);
  *(result + 2) = LODWORD(self->_duration);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_start == equalCopy[3] && self->_duration == equalCopy[2];

  return v5;
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

  return v16 ^ v11;
}

@end
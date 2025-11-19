@interface VCPProtoMovieAudioQualityResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieAudioQualityResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieAudioQualityResult;
  v4 = [(VCPProtoMovieAudioQualityResult *)&v8 description];
  v5 = [(VCPProtoMovieAudioQualityResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v6 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"timeRange"];
  }

  *&v4 = self->_confidence;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"confidence"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  v5[2] = self->_confidence;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_confidence;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 2))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_confidence == *(v4 + 2);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v4.i32 = floorf(confidence + 0.5);
  v7 = (confidence - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v8, v5, v4).i32[0];
  v9 = 2654435761u * *v4.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  return v11 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 2);
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoMovieAudioQualityResult *)self setTimeRange:?];
  }

  v4 = v7;
LABEL_7:
  self->_confidence = *(v4 + 2);
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"quality"];
  v5 = v4;
  if (v10.start.flags)
  {
    v6 = 0;
    if ((v10.duration.flags & 1) != 0 && !v10.duration.epoch)
    {
      v6 = 0;
      if ((v10.duration.value & 0x8000000000000000) == 0)
      {
        if (v4)
        {
          v6 = objc_alloc_init(VCPProtoMovieAudioQualityResult);
          v9 = v10;
          v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v9];
          [(VCPProtoMovieAudioQualityResult *)v6 setTimeRange:v8];

          [v5 floatValue];
          [(VCPProtoMovieAudioQualityResult *)v6 setConfidence:?];
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
  v3 = [(VCPProtoMovieAudioQualityResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  range = v10;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieAudioQualityResult *)self confidence];
  v8 = [v7 numberWithFloat:?];
  [v6 setObject:v8 forKeyedSubscript:@"quality"];

  return v6;
}

@end
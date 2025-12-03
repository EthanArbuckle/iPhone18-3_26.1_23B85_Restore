@interface VCPProtoMovieInterestingnessResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieInterestingnessResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieInterestingnessResult;
  v4 = [(VCPProtoMovieInterestingnessResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieInterestingnessResult *)self dictionaryRepresentation];
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

  *&v4 = self->_interestScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v7 forKey:@"interestScore"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[2] = self->_interestScore;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_interestScore;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 2))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_interestScore == *(equalCopy + 2);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  interestScore = self->_interestScore;
  if (interestScore < 0.0)
  {
    interestScore = -interestScore;
  }

  *v4.i32 = floorf(interestScore + 0.5);
  v7 = (interestScore - *v4.i32) * 1.8447e19;
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 2);
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoMovieInterestingnessResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_interestScore = *(fromCopy + 2);
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"quality"];
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
          v6 = objc_alloc_init(VCPProtoMovieInterestingnessResult);
          v9 = v10;
          v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v9];
          [(VCPProtoMovieInterestingnessResult *)v6 setTimeRange:v8];

          [v5 floatValue];
          [(VCPProtoMovieInterestingnessResult *)v6 setInterestScore:?];
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
  timeRange = [(VCPProtoMovieInterestingnessResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  range = v10;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieInterestingnessResult *)self interestScore];
  v8 = [v7 numberWithFloat:?];
  [v6 setObject:v8 forKeyedSubscript:@"quality"];

  return v6;
}

@end
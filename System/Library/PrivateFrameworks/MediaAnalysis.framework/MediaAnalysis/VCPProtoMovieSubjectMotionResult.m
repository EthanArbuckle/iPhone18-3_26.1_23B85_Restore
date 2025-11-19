@interface VCPProtoMovieSubjectMotionResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieSubjectMotionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieSubjectMotionResult;
  v4 = [(VCPProtoMovieSubjectMotionResult *)&v8 description];
  v5 = [(VCPProtoMovieSubjectMotionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAction];
  [v3 setObject:v6 forKey:@"hasAction"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  v5[16] = self->_hasAction;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_hasAction;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 1))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_hasAction == v4[16];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 1);
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
    [(VCPProtoMovieSubjectMotionResult *)self setTimeRange:?];
  }

  v4 = v7;
LABEL_7:
  self->_hasAction = *(v4 + 16);
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"flags"];
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
          v6 = objc_alloc_init(VCPProtoMovieSubjectMotionResult);
          v9 = v10;
          v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v9];
          [(VCPProtoMovieSubjectMotionResult *)v6 setTimeRange:v8];

          -[VCPProtoMovieSubjectMotionResult setHasAction:](v6, "setHasAction:", ([v5 unsignedIntegerValue] >> 17) & 1);
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
  v3 = [(VCPProtoMovieSubjectMotionResult *)self timeRange];
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

  if ([(VCPProtoMovieSubjectMotionResult *)self hasAction])
  {
    v7 = 0x20000;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v7, *&v10.start.value, *&v10.start.epoch, *&v10.duration.timescale}];
  [v6 setObject:v8 forKeyedSubscript:@"flags"];

  return v6;
}

@end
@interface VCPProtoMovieOrientationResult
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

@implementation VCPProtoMovieOrientationResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v11, 0, sizeof(v11));
  CMTimeRangeMakeFromDictionary(&v11, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"orientation"];
  v6 = v5;
  if (v11.start.flags)
  {
    v7 = 0;
    if ((v11.duration.flags & 1) != 0 && !v11.duration.epoch)
    {
      v7 = 0;
      if ((v11.duration.value & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          v7 = objc_alloc_init(VCPProtoMovieOrientationResult);
          v10 = v11;
          v9 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v10];
          [(VCPProtoMovieOrientationResult *)v7 setTimeRange:v9];

          -[VCPProtoMovieOrientationResult setOrientation:](v7, "setOrientation:", [v6 intValue]);
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

- (id)exportToLegacyDictionary
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(VCPProtoMovieOrientationResult *)self timeRange];
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

  v12 = @"orientation";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoMovieOrientationResult orientation](self, "orientation")}];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v6 setObject:v8 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieOrientationResult;
  v4 = [(VCPProtoMovieOrientationResult *)&v8 description];
  v5 = [(VCPProtoMovieOrientationResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_orientation];
  [v3 setObject:v6 forKey:@"orientation"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  v5[2] = self->_orientation;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_orientation;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 2))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_orientation == *(v4 + 2);

  return v6;
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
    [(VCPProtoMovieOrientationResult *)self setTimeRange:?];
  }

  v4 = v7;
LABEL_7:
  self->_orientation = *(v4 + 2);
}

@end
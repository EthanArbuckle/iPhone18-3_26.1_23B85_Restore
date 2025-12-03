@interface VCPProtoMovieOrientationResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieOrientationResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v11, 0, sizeof(v11));
  CMTimeRangeMakeFromDictionary(&v11, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
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
  timeRange = [(VCPProtoMovieOrientationResult *)self timeRange];
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
  dictionaryRepresentation = [(VCPProtoMovieOrientationResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_orientation];
  [dictionary setObject:v6 forKey:@"orientation"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[2] = self->_orientation;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_orientation;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 2))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_orientation == *(equalCopy + 2);

  return v6;
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
    [(VCPProtoMovieOrientationResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_orientation = *(fromCopy + 2);
}

@end
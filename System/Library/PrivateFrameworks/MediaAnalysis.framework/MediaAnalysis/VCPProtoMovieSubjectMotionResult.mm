@interface VCPProtoMovieSubjectMotionResult
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

@implementation VCPProtoMovieSubjectMotionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieSubjectMotionResult;
  v4 = [(VCPProtoMovieSubjectMotionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieSubjectMotionResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAction];
  [dictionary setObject:v6 forKey:@"hasAction"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[16] = self->_hasAction;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_hasAction;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 1))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_hasAction == equalCopy[16];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 1);
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
    [(VCPProtoMovieSubjectMotionResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_hasAction = *(fromCopy + 16);
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"flags"];
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
  timeRange = [(VCPProtoMovieSubjectMotionResult *)self timeRange];
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
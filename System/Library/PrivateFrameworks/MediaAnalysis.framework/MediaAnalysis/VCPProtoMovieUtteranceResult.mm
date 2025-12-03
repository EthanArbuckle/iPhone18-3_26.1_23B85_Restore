@interface VCPProtoMovieUtteranceResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)from;
@end

@implementation VCPProtoMovieUtteranceResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieUtteranceResult;
  v4 = [(VCPProtoMovieUtteranceResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieUtteranceResult *)self dictionaryRepresentation];
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

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timeRange = self->_timeRange;
    if (timeRange | equalCopy[1])
    {
      v6 = [(VCPProtoTimeRange *)timeRange isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = fromCopy[1];
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
    [(VCPProtoMovieUtteranceResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  memset(&v7, 0, sizeof(v7));
  CMTimeRangeMakeFromDictionary(&v7, dictionary);
  if (v7.start.flags)
  {
    v3 = 0;
    if ((v7.duration.flags & 1) != 0 && !v7.duration.epoch && (v7.duration.value & 0x8000000000000000) == 0)
    {
      v3 = objc_alloc_init(VCPProtoMovieUtteranceResult);
      v6 = v7;
      v4 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v6];
      [(VCPProtoMovieUtteranceResult *)v3 setTimeRange:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)exportToLegacyDictionary
{
  timeRange = [(VCPProtoMovieUtteranceResult *)self timeRange];
  v3 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  range = v6;
  v4 = CMTimeRangeCopyAsDictionary(&range, 0);

  return v4;
}

@end
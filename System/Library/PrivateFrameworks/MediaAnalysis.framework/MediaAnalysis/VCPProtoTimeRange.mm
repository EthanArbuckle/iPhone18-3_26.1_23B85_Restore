@interface VCPProtoTimeRange
+ (VCPProtoTimeRange)timeRangeWithCMTimeRange:(id *)range;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeValue;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoTimeRange

+ (VCPProtoTimeRange)timeRangeWithCMTimeRange:(id *)range
{
  v4 = objc_alloc_init(VCPProtoTimeRange);
  var0 = range->var0;
  v5 = [VCPProtoTime timeWithCMTime:&var0];
  [(VCPProtoTimeRange *)v4 setStart:v5];

  var0 = range->var1;
  v6 = [VCPProtoTime timeWithCMTime:&var0];
  [(VCPProtoTimeRange *)v4 setDuration:v6];

  return v4;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeValue
{
  start = [(VCPProtoTimeRange *)self start];
  v6 = start;
  if (start)
  {
    [start timeValue];
  }

  else
  {
    memset(&start, 0, sizeof(start));
  }

  duration = [(VCPProtoTimeRange *)self duration];
  v8 = duration;
  if (duration)
  {
    [duration timeValue];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CMTimeRangeMake(retstr, &start, &v10);

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoTimeRange;
  v4 = [(VCPProtoTimeRange *)&v8 description];
  dictionaryRepresentation = [(VCPProtoTimeRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  start = self->_start;
  if (start)
  {
    dictionaryRepresentation = [(VCPProtoTime *)start dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"start"];
  }

  duration = self->_duration;
  if (duration)
  {
    dictionaryRepresentation2 = [(VCPProtoTime *)duration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"duration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  start = self->_start;
  toCopy = to;
  [toCopy setStart:start];
  [toCopy setDuration:self->_duration];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTime *)self->_start copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(VCPProtoTime *)self->_duration copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((start = self->_start, !(start | equalCopy[2])) || -[VCPProtoTime isEqual:](start, "isEqual:")))
  {
    duration = self->_duration;
    if (duration | equalCopy[1])
    {
      v7 = [(VCPProtoTime *)duration isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  start = self->_start;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (start)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTime *)start mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTimeRange *)self setStart:?];
  }

  fromCopy = v9;
LABEL_7:
  duration = self->_duration;
  v8 = fromCopy[1];
  if (duration)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoTime *)duration mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoTimeRange *)self setDuration:?];
  }

  fromCopy = v9;
LABEL_13:
}

@end
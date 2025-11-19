@interface VCPProtoTimeRange
+ (VCPProtoTimeRange)timeRangeWithCMTimeRange:(id *)a3;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeValue;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoTimeRange

+ (VCPProtoTimeRange)timeRangeWithCMTimeRange:(id *)a3
{
  v4 = objc_alloc_init(VCPProtoTimeRange);
  var0 = a3->var0;
  v5 = [VCPProtoTime timeWithCMTime:&var0];
  [(VCPProtoTimeRange *)v4 setStart:v5];

  var0 = a3->var1;
  v6 = [VCPProtoTime timeWithCMTime:&var0];
  [(VCPProtoTimeRange *)v4 setDuration:v6];

  return v4;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeValue
{
  v5 = [(VCPProtoTimeRange *)self start];
  v6 = v5;
  if (v5)
  {
    [v5 timeValue];
  }

  else
  {
    memset(&start, 0, sizeof(start));
  }

  v7 = [(VCPProtoTimeRange *)self duration];
  v8 = v7;
  if (v7)
  {
    [v7 timeValue];
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
  v5 = [(VCPProtoTimeRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  start = self->_start;
  if (start)
  {
    v5 = [(VCPProtoTime *)start dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"start"];
  }

  duration = self->_duration;
  if (duration)
  {
    v7 = [(VCPProtoTime *)duration dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  start = self->_start;
  v5 = a3;
  [v5 setStart:start];
  [v5 setDuration:self->_duration];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTime *)self->_start copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(VCPProtoTime *)self->_duration copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((start = self->_start, !(start | v4[2])) || -[VCPProtoTime isEqual:](start, "isEqual:")))
  {
    duration = self->_duration;
    if (duration | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  start = self->_start;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  duration = self->_duration;
  v8 = v4[1];
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

  v4 = v9;
LABEL_13:
}

@end
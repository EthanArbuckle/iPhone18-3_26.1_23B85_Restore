@interface AWDCountersPowerS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)hostWakeupsCountHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersPowerS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersPowerS;
  [(AWDCountersPowerS *)&v3 dealloc];
}

- (unsigned)hostWakeupsCountHistogramAtIndex:(unint64_t)index
{
  p_hostWakeupsCountHistograms = &self->_hostWakeupsCountHistograms;
  count = self->_hostWakeupsCountHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hostWakeupsCountHistograms->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersPowerS;
  v3 = [(AWDCountersPowerS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersPowerS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_hostWakeupsCount];
    [v3 setObject:v4 forKey:@"host_wakeups_count"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"host_wakeups_count_histogram"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (*&self->_has)
  {
    hostWakeupsCount = self->_hostWakeupsCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  p_hostWakeupsCountHistograms = &self->_hostWakeupsCountHistograms;
  if (p_hostWakeupsCountHistograms->count)
  {
    v7 = 0;
    do
    {
      v8 = p_hostWakeupsCountHistograms->list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v9;
      ++v7;
    }

    while (v7 < p_hostWakeupsCountHistograms->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_hostWakeupsCount;
    *(toCopy + 36) |= 1u;
  }

  v8 = toCopy;
  if ([(AWDCountersPowerS *)self hostWakeupsCountHistogramsCount])
  {
    [v8 clearHostWakeupsCountHistograms];
    hostWakeupsCountHistogramsCount = [(AWDCountersPowerS *)self hostWakeupsCountHistogramsCount];
    if (hostWakeupsCountHistogramsCount)
    {
      v6 = hostWakeupsCountHistogramsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addHostWakeupsCountHistogram:{-[AWDCountersPowerS hostWakeupsCountHistogramAtIndex:](self, "hostWakeupsCountHistogramAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 8) = self->_hostWakeupsCount;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_hostWakeupsCount != *(equalCopy + 8))
    {
      goto LABEL_8;
    }

LABEL_7:
    IsEqual = PBRepeatedUInt32IsEqual();

    return IsEqual;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  return 0;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_hostWakeupsCount;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_hostWakeupsCount = fromCopy[8];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  hostWakeupsCountHistogramsCount = [fromCopy hostWakeupsCountHistogramsCount];
  if (hostWakeupsCountHistogramsCount)
  {
    v6 = hostWakeupsCountHistogramsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCountersPowerS addHostWakeupsCountHistogram:](self, "addHostWakeupsCountHistogram:", [v8 hostWakeupsCountHistogramAtIndex:i]);
    }
  }
}

@end
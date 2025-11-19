@interface AWDCountersPowerS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)hostWakeupsCountHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersPowerS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersPowerS;
  [(AWDCountersPowerS *)&v3 dealloc];
}

- (unsigned)hostWakeupsCountHistogramAtIndex:(unint64_t)a3
{
  p_hostWakeupsCountHistograms = &self->_hostWakeupsCountHistograms;
  count = self->_hostWakeupsCountHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_hostWakeupsCountHistograms->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersPowerS;
  v3 = [(AWDCountersPowerS *)&v7 description];
  v4 = [(AWDCountersPowerS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*&self->_has)
  {
    hostWakeupsCount = self->_hostWakeupsCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  p_hostWakeupsCountHistograms = &self->_hostWakeupsCountHistograms;
  if (p_hostWakeupsCountHistograms->count)
  {
    v7 = 0;
    do
    {
      v8 = p_hostWakeupsCountHistograms->list[v7];
      PBDataWriterWriteUint32Field();
      v4 = v9;
      ++v7;
    }

    while (v7 < p_hostWakeupsCountHistograms->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_hostWakeupsCount;
    *(v4 + 36) |= 1u;
  }

  v8 = v4;
  if ([(AWDCountersPowerS *)self hostWakeupsCountHistogramsCount])
  {
    [v8 clearHostWakeupsCountHistograms];
    v5 = [(AWDCountersPowerS *)self hostWakeupsCountHistogramsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addHostWakeupsCountHistogram:{-[AWDCountersPowerS hostWakeupsCountHistogramAtIndex:](self, "hostWakeupsCountHistogramAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 8) = self->_hostWakeupsCount;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_hostWakeupsCount != *(v4 + 8))
    {
      goto LABEL_8;
    }

LABEL_7:
    IsEqual = PBRepeatedUInt32IsEqual();

    return IsEqual;
  }

  if ((*(v4 + 36) & 1) == 0)
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_hostWakeupsCount = v4[8];
    *&self->_has |= 1u;
  }

  v8 = v4;
  v5 = [v4 hostWakeupsCountHistogramsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCountersPowerS addHostWakeupsCountHistogram:](self, "addHostWakeupsCountHistogram:", [v8 hostWakeupsCountHistogramAtIndex:i]);
    }
  }
}

@end
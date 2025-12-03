@interface AWDCountersJoinerS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)attachFailLatencyHistogramAtIndex:(unint64_t)index;
- (unsigned)attachLatencyHistogramAtIndex:(unint64_t)index;
- (unsigned)joinerFailLatencyHistogramAtIndex:(unint64_t)index;
- (unsigned)joinerLatencyHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasJoinSuccessRate:(BOOL)rate;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersJoinerS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersJoinerS;
  [(AWDCountersJoinerS *)&v3 dealloc];
}

- (void)setHasJoinSuccessRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)attachLatencyHistogramAtIndex:(unint64_t)index
{
  p_attachLatencyHistograms = &self->_attachLatencyHistograms;
  count = self->_attachLatencyHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_attachLatencyHistograms->list[index];
}

- (unsigned)joinerLatencyHistogramAtIndex:(unint64_t)index
{
  p_joinerLatencyHistograms = &self->_joinerLatencyHistograms;
  count = self->_joinerLatencyHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_joinerLatencyHistograms->list[index];
}

- (unsigned)attachFailLatencyHistogramAtIndex:(unint64_t)index
{
  p_attachFailLatencyHistograms = &self->_attachFailLatencyHistograms;
  count = self->_attachFailLatencyHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_attachFailLatencyHistograms->list[index];
}

- (unsigned)joinerFailLatencyHistogramAtIndex:(unint64_t)index
{
  p_joinerFailLatencyHistograms = &self->_joinerFailLatencyHistograms;
  count = self->_joinerFailLatencyHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_joinerFailLatencyHistograms->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersJoinerS;
  v3 = [(AWDCountersJoinerS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersJoinerS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v4 = self->_joinSuccessRate;
    v6 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"join_success_rate"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_joinAttempts];
    [v3 setObject:v7 forKey:@"join_attempts"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"attach_latency_histogram"];

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"joiner_latency_histogram"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"attach_fail_latency_histogram"];

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"joiner_fail_latency_histogram"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    joinSuccessRate = self->_joinSuccessRate;
    PBDataWriterWriteFloatField();
    toCopy = v17;
    if ((*&self->_has & 1) == 0)
    {
LABEL_3:
      p_attachLatencyHistograms = &self->_attachLatencyHistograms;
      if (!self->_attachLatencyHistograms.count)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  joinAttempts = self->_joinAttempts;
  PBDataWriterWriteUint32Field();
  toCopy = v17;
  p_attachLatencyHistograms = &self->_attachLatencyHistograms;
  if (!self->_attachLatencyHistograms.count)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 0;
  do
  {
    v9 = p_attachLatencyHistograms->list[v8];
    PBDataWriterWriteUint32Field();
    toCopy = v17;
    ++v8;
  }

  while (v8 < p_attachLatencyHistograms->count);
LABEL_9:
  if (self->_joinerLatencyHistograms.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_joinerLatencyHistograms.list[v10];
      PBDataWriterWriteUint32Field();
      toCopy = v17;
      ++v10;
    }

    while (v10 < self->_joinerLatencyHistograms.count);
  }

  if (self->_attachFailLatencyHistograms.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_attachFailLatencyHistograms.list[v12];
      PBDataWriterWriteUint32Field();
      toCopy = v17;
      ++v12;
    }

    while (v12 < self->_attachFailLatencyHistograms.count);
  }

  p_joinerFailLatencyHistograms = &self->_joinerFailLatencyHistograms;
  if (p_joinerFailLatencyHistograms->count)
  {
    v15 = 0;
    do
    {
      v16 = p_joinerFailLatencyHistograms->list[v15];
      PBDataWriterWriteUint32Field();
      toCopy = v17;
      ++v15;
    }

    while (v15 < p_joinerFailLatencyHistograms->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    toCopy[26] = self->_joinAttempts;
    *(toCopy + 112) |= 1u;
    v17 = toCopy;
    if (![(AWDCountersJoinerS *)self attachLatencyHistogramsCount])
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  toCopy[27] = LODWORD(self->_joinSuccessRate);
  *(toCopy + 112) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = toCopy;
  if (![(AWDCountersJoinerS *)self attachLatencyHistogramsCount])
  {
    goto LABEL_10;
  }

LABEL_7:
  [v17 clearAttachLatencyHistograms];
  attachLatencyHistogramsCount = [(AWDCountersJoinerS *)self attachLatencyHistogramsCount];
  if (attachLatencyHistogramsCount)
  {
    v6 = attachLatencyHistogramsCount;
    for (i = 0; i != v6; ++i)
    {
      [v17 addAttachLatencyHistogram:{-[AWDCountersJoinerS attachLatencyHistogramAtIndex:](self, "attachLatencyHistogramAtIndex:", i)}];
    }
  }

LABEL_10:
  if ([(AWDCountersJoinerS *)self joinerLatencyHistogramsCount])
  {
    [v17 clearJoinerLatencyHistograms];
    joinerLatencyHistogramsCount = [(AWDCountersJoinerS *)self joinerLatencyHistogramsCount];
    if (joinerLatencyHistogramsCount)
    {
      v9 = joinerLatencyHistogramsCount;
      for (j = 0; j != v9; ++j)
      {
        [v17 addJoinerLatencyHistogram:{-[AWDCountersJoinerS joinerLatencyHistogramAtIndex:](self, "joinerLatencyHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCountersJoinerS *)self attachFailLatencyHistogramsCount])
  {
    [v17 clearAttachFailLatencyHistograms];
    attachFailLatencyHistogramsCount = [(AWDCountersJoinerS *)self attachFailLatencyHistogramsCount];
    if (attachFailLatencyHistogramsCount)
    {
      v12 = attachFailLatencyHistogramsCount;
      for (k = 0; k != v12; ++k)
      {
        [v17 addAttachFailLatencyHistogram:{-[AWDCountersJoinerS attachFailLatencyHistogramAtIndex:](self, "attachFailLatencyHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDCountersJoinerS *)self joinerFailLatencyHistogramsCount])
  {
    [v17 clearJoinerFailLatencyHistograms];
    joinerFailLatencyHistogramsCount = [(AWDCountersJoinerS *)self joinerFailLatencyHistogramsCount];
    if (joinerFailLatencyHistogramsCount)
    {
      v15 = joinerFailLatencyHistogramsCount;
      for (m = 0; m != v15; ++m)
      {
        [v17 addJoinerFailLatencyHistogram:{-[AWDCountersJoinerS joinerFailLatencyHistogramAtIndex:](self, "joinerFailLatencyHistogramAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 27) = LODWORD(self->_joinSuccessRate);
    *(v4 + 112) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 26) = self->_joinAttempts;
    *(v4 + 112) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(equalCopy + 112);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 112) & 2) == 0 || self->_joinSuccessRate != *(equalCopy + 27))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 112) & 2) != 0)
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_joinAttempts != *(equalCopy + 26))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_16;
  }

  if (PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    IsEqual = PBRepeatedUInt32IsEqual();

    return IsEqual;
  }

LABEL_16:

  return 0;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    joinSuccessRate = self->_joinSuccessRate;
    if (joinSuccessRate < 0.0)
    {
      joinSuccessRate = -joinSuccessRate;
    }

    *v2.i32 = floorf(joinSuccessRate + 0.5);
    v6 = (joinSuccessRate - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v4 = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabsf(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (*&self->_has)
  {
    v8 = 2654435761 * self->_joinAttempts;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 ^ v4 ^ PBRepeatedUInt32Hash();
  v10 = PBRepeatedUInt32Hash();
  v11 = v9 ^ v10 ^ PBRepeatedUInt32Hash();
  return v11 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 112) & 2) != 0)
  {
    self->_joinSuccessRate = *(fromCopy + 27);
    *&self->_has |= 2u;
    if ((*(fromCopy + 112) & 1) == 0)
    {
LABEL_3:
      v17 = fromCopy;
      attachLatencyHistogramsCount = [fromCopy attachLatencyHistogramsCount];
      if (!attachLatencyHistogramsCount)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(fromCopy + 112) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_joinAttempts = *(fromCopy + 26);
  *&self->_has |= 1u;
  v17 = fromCopy;
  attachLatencyHistogramsCount = [fromCopy attachLatencyHistogramsCount];
  if (!attachLatencyHistogramsCount)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = attachLatencyHistogramsCount;
  for (i = 0; i != v6; ++i)
  {
    -[AWDCountersJoinerS addAttachLatencyHistogram:](self, "addAttachLatencyHistogram:", [v17 attachLatencyHistogramAtIndex:i]);
  }

LABEL_9:
  joinerLatencyHistogramsCount = [v17 joinerLatencyHistogramsCount];
  if (joinerLatencyHistogramsCount)
  {
    v9 = joinerLatencyHistogramsCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDCountersJoinerS addJoinerLatencyHistogram:](self, "addJoinerLatencyHistogram:", [v17 joinerLatencyHistogramAtIndex:j]);
    }
  }

  attachFailLatencyHistogramsCount = [v17 attachFailLatencyHistogramsCount];
  if (attachFailLatencyHistogramsCount)
  {
    v12 = attachFailLatencyHistogramsCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDCountersJoinerS addAttachFailLatencyHistogram:](self, "addAttachFailLatencyHistogram:", [v17 attachFailLatencyHistogramAtIndex:k]);
    }
  }

  joinerFailLatencyHistogramsCount = [v17 joinerFailLatencyHistogramsCount];
  if (joinerFailLatencyHistogramsCount)
  {
    v15 = joinerFailLatencyHistogramsCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDCountersJoinerS addJoinerFailLatencyHistogram:](self, "addJoinerFailLatencyHistogram:", [v17 joinerFailLatencyHistogramAtIndex:m]);
    }
  }
}

@end
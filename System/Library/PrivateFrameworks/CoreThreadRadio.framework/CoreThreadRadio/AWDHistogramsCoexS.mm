@interface AWDHistogramsCoexS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)coexAbortsDueToGrantRevokesHistogramAtIndex:(unint64_t)index;
- (unsigned)coexRxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)index;
- (unsigned)coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)index;
- (unsigned)coexTotalGrantTimeHistogramAtIndex:(unint64_t)index;
- (unsigned)coexTxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)index;
- (unsigned)coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDHistogramsCoexS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDHistogramsCoexS;
  [(AWDHistogramsCoexS *)&v3 dealloc];
}

- (unsigned)coexTotalGrantTimeHistogramAtIndex:(unint64_t)index
{
  p_coexTotalGrantTimeHistograms = &self->_coexTotalGrantTimeHistograms;
  count = self->_coexTotalGrantTimeHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTotalGrantTimeHistograms->list[index];
}

- (unsigned)coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)index
{
  p_coexTxUnsolicitedGrantDutyCycleHistograms = &self->_coexTxUnsolicitedGrantDutyCycleHistograms;
  count = self->_coexTxUnsolicitedGrantDutyCycleHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTxUnsolicitedGrantDutyCycleHistograms->list[index];
}

- (unsigned)coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)index
{
  p_coexRxUnsolicitedGrantDutyCycleHistograms = &self->_coexRxUnsolicitedGrantDutyCycleHistograms;
  count = self->_coexRxUnsolicitedGrantDutyCycleHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexRxUnsolicitedGrantDutyCycleHistograms->list[index];
}

- (unsigned)coexTxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)index
{
  p_coexTxTotalGrantDutyCycleHistograms = &self->_coexTxTotalGrantDutyCycleHistograms;
  count = self->_coexTxTotalGrantDutyCycleHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTxTotalGrantDutyCycleHistograms->list[index];
}

- (unsigned)coexRxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)index
{
  p_coexRxTotalGrantDutyCycleHistograms = &self->_coexRxTotalGrantDutyCycleHistograms;
  count = self->_coexRxTotalGrantDutyCycleHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexRxTotalGrantDutyCycleHistograms->list[index];
}

- (unsigned)coexAbortsDueToGrantRevokesHistogramAtIndex:(unint64_t)index
{
  p_coexAbortsDueToGrantRevokesHistograms = &self->_coexAbortsDueToGrantRevokesHistograms;
  count = self->_coexAbortsDueToGrantRevokesHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexAbortsDueToGrantRevokesHistograms->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDHistogramsCoexS;
  v3 = [(AWDHistogramsCoexS *)&v7 description];
  dictionaryRepresentation = [(AWDHistogramsCoexS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PBRepeatedUInt32NSArray();
  [v2 setObject:v3 forKey:@"coex_total_grant_time_histogram"];

  v4 = PBRepeatedUInt32NSArray();
  [v2 setObject:v4 forKey:@"coex_tx_unsolicited_grant_duty_cycle_histogram"];

  v5 = PBRepeatedUInt32NSArray();
  [v2 setObject:v5 forKey:@"coex_rx_unsolicited_grant_duty_cycle_histogram"];

  v6 = PBRepeatedUInt32NSArray();
  [v2 setObject:v6 forKey:@"coex_tx_total_grant_duty_cycle_histogram"];

  v7 = PBRepeatedUInt32NSArray();
  [v2 setObject:v7 forKey:@"coex_rx_total_grant_duty_cycle_histogram"];

  v8 = PBRepeatedUInt32NSArray();
  [v2 setObject:v8 forKey:@"coex_aborts_due_to_grant_revokes_histogram"];

  return v2;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_coexTotalGrantTimeHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_coexTotalGrantTimeHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v5;
    }

    while (v5 < self->_coexTotalGrantTimeHistograms.count);
  }

  if (self->_coexTxUnsolicitedGrantDutyCycleHistograms.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_coexTxUnsolicitedGrantDutyCycleHistograms.list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v7;
    }

    while (v7 < self->_coexTxUnsolicitedGrantDutyCycleHistograms.count);
  }

  if (self->_coexRxUnsolicitedGrantDutyCycleHistograms.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_coexRxUnsolicitedGrantDutyCycleHistograms.list[v9];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v9;
    }

    while (v9 < self->_coexRxUnsolicitedGrantDutyCycleHistograms.count);
  }

  if (self->_coexTxTotalGrantDutyCycleHistograms.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_coexTxTotalGrantDutyCycleHistograms.list[v11];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v11;
    }

    while (v11 < self->_coexTxTotalGrantDutyCycleHistograms.count);
  }

  if (self->_coexRxTotalGrantDutyCycleHistograms.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_coexRxTotalGrantDutyCycleHistograms.list[v13];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v13;
    }

    while (v13 < self->_coexRxTotalGrantDutyCycleHistograms.count);
  }

  p_coexAbortsDueToGrantRevokesHistograms = &self->_coexAbortsDueToGrantRevokesHistograms;
  if (p_coexAbortsDueToGrantRevokesHistograms->count)
  {
    v16 = 0;
    do
    {
      v17 = p_coexAbortsDueToGrantRevokesHistograms->list[v16];
      PBDataWriterWriteUint32Field();
      toCopy = v18;
      ++v16;
    }

    while (v16 < p_coexAbortsDueToGrantRevokesHistograms->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDHistogramsCoexS *)self coexTotalGrantTimeHistogramsCount])
  {
    [toCopy clearCoexTotalGrantTimeHistograms];
    coexTotalGrantTimeHistogramsCount = [(AWDHistogramsCoexS *)self coexTotalGrantTimeHistogramsCount];
    if (coexTotalGrantTimeHistogramsCount)
    {
      v5 = coexTotalGrantTimeHistogramsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addCoexTotalGrantTimeHistogram:{-[AWDHistogramsCoexS coexTotalGrantTimeHistogramAtIndex:](self, "coexTotalGrantTimeHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexTxUnsolicitedGrantDutyCycleHistogramsCount])
  {
    [toCopy clearCoexTxUnsolicitedGrantDutyCycleHistograms];
    coexTxUnsolicitedGrantDutyCycleHistogramsCount = [(AWDHistogramsCoexS *)self coexTxUnsolicitedGrantDutyCycleHistogramsCount];
    if (coexTxUnsolicitedGrantDutyCycleHistogramsCount)
    {
      v8 = coexTxUnsolicitedGrantDutyCycleHistogramsCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addCoexTxUnsolicitedGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:](self, "coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexRxUnsolicitedGrantDutyCycleHistogramsCount])
  {
    [toCopy clearCoexRxUnsolicitedGrantDutyCycleHistograms];
    coexRxUnsolicitedGrantDutyCycleHistogramsCount = [(AWDHistogramsCoexS *)self coexRxUnsolicitedGrantDutyCycleHistogramsCount];
    if (coexRxUnsolicitedGrantDutyCycleHistogramsCount)
    {
      v11 = coexRxUnsolicitedGrantDutyCycleHistogramsCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addCoexRxUnsolicitedGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:](self, "coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexTxTotalGrantDutyCycleHistogramsCount])
  {
    [toCopy clearCoexTxTotalGrantDutyCycleHistograms];
    coexTxTotalGrantDutyCycleHistogramsCount = [(AWDHistogramsCoexS *)self coexTxTotalGrantDutyCycleHistogramsCount];
    if (coexTxTotalGrantDutyCycleHistogramsCount)
    {
      v14 = coexTxTotalGrantDutyCycleHistogramsCount;
      for (m = 0; m != v14; ++m)
      {
        [toCopy addCoexTxTotalGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexTxTotalGrantDutyCycleHistogramAtIndex:](self, "coexTxTotalGrantDutyCycleHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexRxTotalGrantDutyCycleHistogramsCount])
  {
    [toCopy clearCoexRxTotalGrantDutyCycleHistograms];
    coexRxTotalGrantDutyCycleHistogramsCount = [(AWDHistogramsCoexS *)self coexRxTotalGrantDutyCycleHistogramsCount];
    if (coexRxTotalGrantDutyCycleHistogramsCount)
    {
      v17 = coexRxTotalGrantDutyCycleHistogramsCount;
      for (n = 0; n != v17; ++n)
      {
        [toCopy addCoexRxTotalGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexRxTotalGrantDutyCycleHistogramAtIndex:](self, "coexRxTotalGrantDutyCycleHistogramAtIndex:", n)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexAbortsDueToGrantRevokesHistogramsCount])
  {
    [toCopy clearCoexAbortsDueToGrantRevokesHistograms];
    coexAbortsDueToGrantRevokesHistogramsCount = [(AWDHistogramsCoexS *)self coexAbortsDueToGrantRevokesHistogramsCount];
    if (coexAbortsDueToGrantRevokesHistogramsCount)
    {
      v20 = coexAbortsDueToGrantRevokesHistogramsCount;
      for (ii = 0; ii != v20; ++ii)
      {
        [toCopy addCoexAbortsDueToGrantRevokesHistogram:{-[AWDHistogramsCoexS coexAbortsDueToGrantRevokesHistogramAtIndex:](self, "coexAbortsDueToGrantRevokesHistogramAtIndex:", ii)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    IsEqual = PBRepeatedUInt32IsEqual();

    return IsEqual;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v2 = PBRepeatedUInt32Hash();
  v3 = PBRepeatedUInt32Hash() ^ v2;
  v4 = PBRepeatedUInt32Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  return v5 ^ v6 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  coexTotalGrantTimeHistogramsCount = [fromCopy coexTotalGrantTimeHistogramsCount];
  if (coexTotalGrantTimeHistogramsCount)
  {
    v5 = coexTotalGrantTimeHistogramsCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDHistogramsCoexS addCoexTotalGrantTimeHistogram:](self, "addCoexTotalGrantTimeHistogram:", [fromCopy coexTotalGrantTimeHistogramAtIndex:i]);
    }
  }

  coexTxUnsolicitedGrantDutyCycleHistogramsCount = [fromCopy coexTxUnsolicitedGrantDutyCycleHistogramsCount];
  if (coexTxUnsolicitedGrantDutyCycleHistogramsCount)
  {
    v8 = coexTxUnsolicitedGrantDutyCycleHistogramsCount;
    for (j = 0; j != v8; ++j)
    {
      -[AWDHistogramsCoexS addCoexTxUnsolicitedGrantDutyCycleHistogram:](self, "addCoexTxUnsolicitedGrantDutyCycleHistogram:", [fromCopy coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:j]);
    }
  }

  coexRxUnsolicitedGrantDutyCycleHistogramsCount = [fromCopy coexRxUnsolicitedGrantDutyCycleHistogramsCount];
  if (coexRxUnsolicitedGrantDutyCycleHistogramsCount)
  {
    v11 = coexRxUnsolicitedGrantDutyCycleHistogramsCount;
    for (k = 0; k != v11; ++k)
    {
      -[AWDHistogramsCoexS addCoexRxUnsolicitedGrantDutyCycleHistogram:](self, "addCoexRxUnsolicitedGrantDutyCycleHistogram:", [fromCopy coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:k]);
    }
  }

  coexTxTotalGrantDutyCycleHistogramsCount = [fromCopy coexTxTotalGrantDutyCycleHistogramsCount];
  if (coexTxTotalGrantDutyCycleHistogramsCount)
  {
    v14 = coexTxTotalGrantDutyCycleHistogramsCount;
    for (m = 0; m != v14; ++m)
    {
      -[AWDHistogramsCoexS addCoexTxTotalGrantDutyCycleHistogram:](self, "addCoexTxTotalGrantDutyCycleHistogram:", [fromCopy coexTxTotalGrantDutyCycleHistogramAtIndex:m]);
    }
  }

  coexRxTotalGrantDutyCycleHistogramsCount = [fromCopy coexRxTotalGrantDutyCycleHistogramsCount];
  if (coexRxTotalGrantDutyCycleHistogramsCount)
  {
    v17 = coexRxTotalGrantDutyCycleHistogramsCount;
    for (n = 0; n != v17; ++n)
    {
      -[AWDHistogramsCoexS addCoexRxTotalGrantDutyCycleHistogram:](self, "addCoexRxTotalGrantDutyCycleHistogram:", [fromCopy coexRxTotalGrantDutyCycleHistogramAtIndex:n]);
    }
  }

  coexAbortsDueToGrantRevokesHistogramsCount = [fromCopy coexAbortsDueToGrantRevokesHistogramsCount];
  if (coexAbortsDueToGrantRevokesHistogramsCount)
  {
    v20 = coexAbortsDueToGrantRevokesHistogramsCount;
    for (ii = 0; ii != v20; ++ii)
    {
      -[AWDHistogramsCoexS addCoexAbortsDueToGrantRevokesHistogram:](self, "addCoexAbortsDueToGrantRevokesHistogram:", [fromCopy coexAbortsDueToGrantRevokesHistogramAtIndex:ii]);
    }
  }
}

@end
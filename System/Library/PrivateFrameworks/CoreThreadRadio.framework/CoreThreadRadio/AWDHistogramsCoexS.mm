@interface AWDHistogramsCoexS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)coexAbortsDueToGrantRevokesHistogramAtIndex:(unint64_t)a3;
- (unsigned)coexRxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)a3;
- (unsigned)coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)a3;
- (unsigned)coexTotalGrantTimeHistogramAtIndex:(unint64_t)a3;
- (unsigned)coexTxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)a3;
- (unsigned)coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unsigned)coexTotalGrantTimeHistogramAtIndex:(unint64_t)a3
{
  p_coexTotalGrantTimeHistograms = &self->_coexTotalGrantTimeHistograms;
  count = self->_coexTotalGrantTimeHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTotalGrantTimeHistograms->list[a3];
}

- (unsigned)coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)a3
{
  p_coexTxUnsolicitedGrantDutyCycleHistograms = &self->_coexTxUnsolicitedGrantDutyCycleHistograms;
  count = self->_coexTxUnsolicitedGrantDutyCycleHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTxUnsolicitedGrantDutyCycleHistograms->list[a3];
}

- (unsigned)coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:(unint64_t)a3
{
  p_coexRxUnsolicitedGrantDutyCycleHistograms = &self->_coexRxUnsolicitedGrantDutyCycleHistograms;
  count = self->_coexRxUnsolicitedGrantDutyCycleHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexRxUnsolicitedGrantDutyCycleHistograms->list[a3];
}

- (unsigned)coexTxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)a3
{
  p_coexTxTotalGrantDutyCycleHistograms = &self->_coexTxTotalGrantDutyCycleHistograms;
  count = self->_coexTxTotalGrantDutyCycleHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTxTotalGrantDutyCycleHistograms->list[a3];
}

- (unsigned)coexRxTotalGrantDutyCycleHistogramAtIndex:(unint64_t)a3
{
  p_coexRxTotalGrantDutyCycleHistograms = &self->_coexRxTotalGrantDutyCycleHistograms;
  count = self->_coexRxTotalGrantDutyCycleHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexRxTotalGrantDutyCycleHistograms->list[a3];
}

- (unsigned)coexAbortsDueToGrantRevokesHistogramAtIndex:(unint64_t)a3
{
  p_coexAbortsDueToGrantRevokesHistograms = &self->_coexAbortsDueToGrantRevokesHistograms;
  count = self->_coexAbortsDueToGrantRevokesHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexAbortsDueToGrantRevokesHistograms->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDHistogramsCoexS;
  v3 = [(AWDHistogramsCoexS *)&v7 description];
  v4 = [(AWDHistogramsCoexS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (self->_coexTotalGrantTimeHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_coexTotalGrantTimeHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      v4 = v18;
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
      v4 = v18;
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
      v4 = v18;
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
      v4 = v18;
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
      v4 = v18;
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
      v4 = v18;
      ++v16;
    }

    while (v16 < p_coexAbortsDueToGrantRevokesHistograms->count);
  }
}

- (void)copyTo:(id)a3
{
  v22 = a3;
  if ([(AWDHistogramsCoexS *)self coexTotalGrantTimeHistogramsCount])
  {
    [v22 clearCoexTotalGrantTimeHistograms];
    v4 = [(AWDHistogramsCoexS *)self coexTotalGrantTimeHistogramsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v22 addCoexTotalGrantTimeHistogram:{-[AWDHistogramsCoexS coexTotalGrantTimeHistogramAtIndex:](self, "coexTotalGrantTimeHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexTxUnsolicitedGrantDutyCycleHistogramsCount])
  {
    [v22 clearCoexTxUnsolicitedGrantDutyCycleHistograms];
    v7 = [(AWDHistogramsCoexS *)self coexTxUnsolicitedGrantDutyCycleHistogramsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v22 addCoexTxUnsolicitedGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:](self, "coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexRxUnsolicitedGrantDutyCycleHistogramsCount])
  {
    [v22 clearCoexRxUnsolicitedGrantDutyCycleHistograms];
    v10 = [(AWDHistogramsCoexS *)self coexRxUnsolicitedGrantDutyCycleHistogramsCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [v22 addCoexRxUnsolicitedGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:](self, "coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexTxTotalGrantDutyCycleHistogramsCount])
  {
    [v22 clearCoexTxTotalGrantDutyCycleHistograms];
    v13 = [(AWDHistogramsCoexS *)self coexTxTotalGrantDutyCycleHistogramsCount];
    if (v13)
    {
      v14 = v13;
      for (m = 0; m != v14; ++m)
      {
        [v22 addCoexTxTotalGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexTxTotalGrantDutyCycleHistogramAtIndex:](self, "coexTxTotalGrantDutyCycleHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexRxTotalGrantDutyCycleHistogramsCount])
  {
    [v22 clearCoexRxTotalGrantDutyCycleHistograms];
    v16 = [(AWDHistogramsCoexS *)self coexRxTotalGrantDutyCycleHistogramsCount];
    if (v16)
    {
      v17 = v16;
      for (n = 0; n != v17; ++n)
      {
        [v22 addCoexRxTotalGrantDutyCycleHistogram:{-[AWDHistogramsCoexS coexRxTotalGrantDutyCycleHistogramAtIndex:](self, "coexRxTotalGrantDutyCycleHistogramAtIndex:", n)}];
      }
    }
  }

  if ([(AWDHistogramsCoexS *)self coexAbortsDueToGrantRevokesHistogramsCount])
  {
    [v22 clearCoexAbortsDueToGrantRevokesHistograms];
    v19 = [(AWDHistogramsCoexS *)self coexAbortsDueToGrantRevokesHistogramsCount];
    if (v19)
    {
      v20 = v19;
      for (ii = 0; ii != v20; ++ii)
      {
        [v22 addCoexAbortsDueToGrantRevokesHistogram:{-[AWDHistogramsCoexS coexAbortsDueToGrantRevokesHistogramAtIndex:](self, "coexAbortsDueToGrantRevokesHistogramAtIndex:", ii)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v22 = a3;
  v4 = [v22 coexTotalGrantTimeHistogramsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDHistogramsCoexS addCoexTotalGrantTimeHistogram:](self, "addCoexTotalGrantTimeHistogram:", [v22 coexTotalGrantTimeHistogramAtIndex:i]);
    }
  }

  v7 = [v22 coexTxUnsolicitedGrantDutyCycleHistogramsCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      -[AWDHistogramsCoexS addCoexTxUnsolicitedGrantDutyCycleHistogram:](self, "addCoexTxUnsolicitedGrantDutyCycleHistogram:", [v22 coexTxUnsolicitedGrantDutyCycleHistogramAtIndex:j]);
    }
  }

  v10 = [v22 coexRxUnsolicitedGrantDutyCycleHistogramsCount];
  if (v10)
  {
    v11 = v10;
    for (k = 0; k != v11; ++k)
    {
      -[AWDHistogramsCoexS addCoexRxUnsolicitedGrantDutyCycleHistogram:](self, "addCoexRxUnsolicitedGrantDutyCycleHistogram:", [v22 coexRxUnsolicitedGrantDutyCycleHistogramAtIndex:k]);
    }
  }

  v13 = [v22 coexTxTotalGrantDutyCycleHistogramsCount];
  if (v13)
  {
    v14 = v13;
    for (m = 0; m != v14; ++m)
    {
      -[AWDHistogramsCoexS addCoexTxTotalGrantDutyCycleHistogram:](self, "addCoexTxTotalGrantDutyCycleHistogram:", [v22 coexTxTotalGrantDutyCycleHistogramAtIndex:m]);
    }
  }

  v16 = [v22 coexRxTotalGrantDutyCycleHistogramsCount];
  if (v16)
  {
    v17 = v16;
    for (n = 0; n != v17; ++n)
    {
      -[AWDHistogramsCoexS addCoexRxTotalGrantDutyCycleHistogram:](self, "addCoexRxTotalGrantDutyCycleHistogram:", [v22 coexRxTotalGrantDutyCycleHistogramAtIndex:n]);
    }
  }

  v19 = [v22 coexAbortsDueToGrantRevokesHistogramsCount];
  if (v19)
  {
    v20 = v19;
    for (ii = 0; ii != v20; ++ii)
    {
      -[AWDHistogramsCoexS addCoexAbortsDueToGrantRevokesHistogram:](self, "addCoexAbortsDueToGrantRevokesHistogram:", [v22 coexAbortsDueToGrantRevokesHistogramAtIndex:ii]);
    }
  }
}

@end
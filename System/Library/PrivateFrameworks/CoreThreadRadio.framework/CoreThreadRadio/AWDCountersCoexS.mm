@interface AWDCountersCoexS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)coexRxGrantTimeHistogramAtIndex:(unint64_t)index;
- (unsigned)coexTxGrantTimeHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCoexRxGrantedRequests:(BOOL)requests;
- (void)setHasCoexRxRequests:(BOOL)requests;
- (void)setHasCoexTxDeniedRequests:(BOOL)requests;
- (void)setHasCoexTxGrantedRequests:(BOOL)requests;
- (void)setHasCoexTxRequests:(BOOL)requests;
- (void)setHasCoexUnsolicitedGrants:(BOOL)grants;
- (void)setHasRxDeniedReqPercentage:(BOOL)percentage;
- (void)setHasRxGrantedReqPercentage:(BOOL)percentage;
- (void)setHasTxDeniedReqPercentage:(BOOL)percentage;
- (void)setHasTxGrantedReqPercentage:(BOOL)percentage;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersCoexS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersCoexS;
  [(AWDCountersCoexS *)&v3 dealloc];
}

- (void)setHasCoexUnsolicitedGrants:(BOOL)grants
{
  if (grants)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCoexTxRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCoexTxGrantedRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCoexTxDeniedRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCoexRxRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCoexRxGrantedRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (unsigned)coexRxGrantTimeHistogramAtIndex:(unint64_t)index
{
  p_coexRxGrantTimeHistograms = &self->_coexRxGrantTimeHistograms;
  count = self->_coexRxGrantTimeHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexRxGrantTimeHistograms->list[index];
}

- (unsigned)coexTxGrantTimeHistogramAtIndex:(unint64_t)index
{
  p_coexTxGrantTimeHistograms = &self->_coexTxGrantTimeHistograms;
  count = self->_coexTxGrantTimeHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coexTxGrantTimeHistograms->list[index];
}

- (void)setHasTxGrantedReqPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRxGrantedReqPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTxDeniedReqPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRxDeniedReqPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersCoexS;
  v3 = [(AWDCountersCoexS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersCoexS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_coexUnsolicitedGrants];
    [v3 setObject:v11 forKey:@"coex_unsolicited_grants"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_coexTxRequests];
  [v3 setObject:v12 forKey:@"coex_tx_requests"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedInt:self->_coexTxGrantedRequests];
  [v3 setObject:v13 forKey:@"coex_tx_granted_requests"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [NSNumber numberWithUnsignedInt:self->_coexTxDeniedRequests];
  [v3 setObject:v14 forKey:@"coex_tx_denied_requests"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = [NSNumber numberWithUnsignedInt:self->_coexRxRequests];
  [v3 setObject:v15 forKey:@"coex_rx_requests"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  v16 = [NSNumber numberWithUnsignedInt:self->_coexRxGrantedRequests];
  [v3 setObject:v16 forKey:@"coex_rx_granted_requests"];

  if (*&self->_has)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_coexRxDeniedRequests];
    [v3 setObject:v5 forKey:@"coex_rx_denied_requests"];
  }

LABEL_9:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"coex_rx_grant_time_histogram"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"coex_tx_grant_time_histogram"];

  v8 = self->_has;
  if ((v8 & 0x400) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_txGrantedReqPercentage];
    [v3 setObject:v17 forKey:@"tx_granted_req_percentage"];

    v8 = self->_has;
    if ((v8 & 0x100) == 0)
    {
LABEL_11:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_rxGrantedReqPercentage];
  [v3 setObject:v18 forKey:@"rx_granted_req_percentage"];

  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  v19 = [NSNumber numberWithUnsignedInt:self->_txDeniedReqPercentage];
  [v3 setObject:v19 forKey:@"tx_denied_req_percentage"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_13:
    v9 = [NSNumber numberWithUnsignedInt:self->_rxDeniedReqPercentage];
    [v3 setObject:v9 forKey:@"rx_denied_req_percentage"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v23 = toCopy;
  if ((has & 0x40) != 0)
  {
    coexUnsolicitedGrants = self->_coexUnsolicitedGrants;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  coexTxRequests = self->_coexTxRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  coexTxGrantedRequests = self->_coexTxGrantedRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  coexTxDeniedRequests = self->_coexTxDeniedRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  coexRxRequests = self->_coexRxRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  coexRxGrantedRequests = self->_coexRxGrantedRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  if ((*&self->_has & 1) == 0)
  {
LABEL_8:
    p_coexRxGrantTimeHistograms = &self->_coexRxGrantTimeHistograms;
    if (!self->_coexRxGrantTimeHistograms.count)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  coexRxDeniedRequests = self->_coexRxDeniedRequests;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  p_coexRxGrantTimeHistograms = &self->_coexRxGrantTimeHistograms;
  if (!self->_coexRxGrantTimeHistograms.count)
  {
    goto LABEL_19;
  }

LABEL_17:
  v14 = 0;
  do
  {
    v15 = p_coexRxGrantTimeHistograms->list[v14];
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    ++v14;
  }

  while (v14 < p_coexRxGrantTimeHistograms->count);
LABEL_19:
  if (self->_coexTxGrantTimeHistograms.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_coexTxGrantTimeHistograms.list[v16];
      PBDataWriterWriteUint32Field();
      toCopy = v23;
      ++v16;
    }

    while (v16 < self->_coexTxGrantTimeHistograms.count);
  }

  v18 = self->_has;
  if ((v18 & 0x400) != 0)
  {
    txGrantedReqPercentage = self->_txGrantedReqPercentage;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    v18 = self->_has;
    if ((v18 & 0x100) == 0)
    {
LABEL_24:
      if ((v18 & 0x200) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

  rxGrantedReqPercentage = self->_rxGrantedReqPercentage;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  v18 = self->_has;
  if ((v18 & 0x200) == 0)
  {
LABEL_25:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_31:
  txDeniedReqPercentage = self->_txDeniedReqPercentage;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  if ((*&self->_has & 0x80) == 0)
  {
LABEL_26:

    goto LABEL_28;
  }

LABEL_32:
  rxDeniedReqPercentage = self->_rxDeniedReqPercentage;
  PBDataWriterWriteUint32Field();
  toCopy = v23;

LABEL_28:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    toCopy[20] = self->_coexUnsolicitedGrants;
    *(toCopy + 50) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  toCopy[19] = self->_coexTxRequests;
  *(toCopy + 50) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[18] = self->_coexTxGrantedRequests;
  *(toCopy + 50) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  toCopy[17] = self->_coexTxDeniedRequests;
  *(toCopy + 50) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[16] = self->_coexRxRequests;
  *(toCopy + 50) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    toCopy[14] = self->_coexRxDeniedRequests;
    *(toCopy + 50) |= 1u;
    v13 = toCopy;
    if (![(AWDCountersCoexS *)self coexRxGrantTimeHistogramsCount])
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_15:
  toCopy[15] = self->_coexRxGrantedRequests;
  *(toCopy + 50) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_16;
  }

LABEL_8:
  v13 = toCopy;
  if (![(AWDCountersCoexS *)self coexRxGrantTimeHistogramsCount])
  {
    goto LABEL_20;
  }

LABEL_17:
  [v13 clearCoexRxGrantTimeHistograms];
  coexRxGrantTimeHistogramsCount = [(AWDCountersCoexS *)self coexRxGrantTimeHistogramsCount];
  if (coexRxGrantTimeHistogramsCount)
  {
    v7 = coexRxGrantTimeHistogramsCount;
    for (i = 0; i != v7; ++i)
    {
      [v13 addCoexRxGrantTimeHistogram:{-[AWDCountersCoexS coexRxGrantTimeHistogramAtIndex:](self, "coexRxGrantTimeHistogramAtIndex:", i)}];
    }
  }

LABEL_20:
  if ([(AWDCountersCoexS *)self coexTxGrantTimeHistogramsCount])
  {
    [v13 clearCoexTxGrantTimeHistograms];
    coexTxGrantTimeHistogramsCount = [(AWDCountersCoexS *)self coexTxGrantTimeHistogramsCount];
    if (coexTxGrantTimeHistogramsCount)
    {
      v10 = coexTxGrantTimeHistogramsCount;
      for (j = 0; j != v10; ++j)
      {
        [v13 addCoexTxGrantTimeHistogram:{-[AWDCountersCoexS coexTxGrantTimeHistogramAtIndex:](self, "coexTxGrantTimeHistogramAtIndex:", j)}];
      }
    }
  }

  v12 = self->_has;
  if ((v12 & 0x400) != 0)
  {
    *(v13 + 24) = self->_txGrantedReqPercentage;
    *(v13 + 50) |= 0x400u;
    v12 = self->_has;
    if ((v12 & 0x100) == 0)
    {
LABEL_26:
      if ((v12 & 0x200) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_26;
  }

  *(v13 + 22) = self->_rxGrantedReqPercentage;
  *(v13 + 50) |= 0x100u;
  v12 = self->_has;
  if ((v12 & 0x200) == 0)
  {
LABEL_27:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v13 + 23) = self->_txDeniedReqPercentage;
  *(v13 + 50) |= 0x200u;
  if ((*&self->_has & 0x80) == 0)
  {
LABEL_28:

    goto LABEL_30;
  }

LABEL_34:
  *(v13 + 21) = self->_rxDeniedReqPercentage;
  *(v13 + 50) |= 0x80u;

LABEL_30:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v4[20] = self->_coexUnsolicitedGrants;
    *(v4 + 50) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v4[19] = self->_coexTxRequests;
  *(v4 + 50) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[18] = self->_coexTxGrantedRequests;
  *(v4 + 50) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[17] = self->_coexTxDeniedRequests;
  *(v4 + 50) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[16] = self->_coexRxRequests;
  *(v4 + 50) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v4[15] = self->_coexRxGrantedRequests;
  *(v4 + 50) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    v4[14] = self->_coexRxDeniedRequests;
    *(v4 + 50) |= 1u;
  }

LABEL_9:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((v7 & 0x400) != 0)
  {
    v5[24] = self->_txGrantedReqPercentage;
    *(v5 + 50) |= 0x400u;
    v7 = self->_has;
    if ((v7 & 0x100) == 0)
    {
LABEL_11:
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_12;
      }

LABEL_23:
      v5[23] = self->_txDeniedReqPercentage;
      *(v5 + 50) |= 0x200u;
      if ((*&self->_has & 0x80) == 0)
      {
        return v5;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  v5[22] = self->_rxGrantedReqPercentage;
  *(v5 + 50) |= 0x100u;
  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v7 & 0x80) == 0)
  {
    return v5;
  }

LABEL_24:
  v5[21] = self->_rxDeniedReqPercentage;
  *(v5 + 50) |= 0x80u;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  has = self->_has;
  v6 = *(equalCopy + 50);
  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_coexUnsolicitedGrants != *(equalCopy + 20))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
LABEL_59:
    v9 = 0;
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_coexTxRequests != *(equalCopy + 19))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_coexTxGrantedRequests != *(equalCopy + 18))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_coexTxDeniedRequests != *(equalCopy + 17))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_coexRxRequests != *(equalCopy + 16))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_59;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_coexRxGrantedRequests != *(equalCopy + 15))
    {
      goto LABEL_59;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_59;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_coexRxDeniedRequests != *(equalCopy + 14))
    {
      goto LABEL_59;
    }
  }

  else if (v6)
  {
    goto LABEL_59;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_59;
  }

  v7 = self->_has;
  v8 = *(equalCopy + 50);
  if ((v7 & 0x400) != 0)
  {
    if ((*(equalCopy + 50) & 0x400) == 0 || self->_txGrantedReqPercentage != *(equalCopy + 24))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 50) & 0x400) != 0)
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 50) & 0x100) == 0 || self->_rxGrantedReqPercentage != *(equalCopy + 22))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 50) & 0x100) != 0)
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 50) & 0x200) == 0 || self->_txDeniedReqPercentage != *(equalCopy + 23))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 50) & 0x200) != 0)
  {
    goto LABEL_59;
  }

  if ((v7 & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_rxDeniedReqPercentage != *(equalCopy + 21))
    {
      goto LABEL_59;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x80) == 0;
  }

LABEL_60:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v18 = 2654435761 * self->_coexUnsolicitedGrants;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_coexTxRequests;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_coexTxGrantedRequests;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_coexTxDeniedRequests;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_coexRxRequests;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if (has)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_coexRxGrantedRequests;
  if (has)
  {
LABEL_8:
    v9 = 2654435761 * self->_coexRxDeniedRequests;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = PBRepeatedUInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = self->_has;
  if ((v12 & 0x400) != 0)
  {
    v13 = 2654435761 * self->_txGrantedReqPercentage;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_18:
      v14 = 2654435761 * self->_rxGrantedReqPercentage;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      v15 = 0;
      if ((v12 & 0x80) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v16 = 0;
      return v4 ^ v18 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_18;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v15 = 2654435761 * self->_txDeniedReqPercentage;
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v16 = 2654435761 * self->_rxDeniedReqPercentage;
  return v4 ^ v18 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 50);
  if ((v5 & 0x40) != 0)
  {
    self->_coexUnsolicitedGrants = *(fromCopy + 20);
    *&self->_has |= 0x40u;
    v5 = *(fromCopy + 50);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_coexTxRequests = *(fromCopy + 19);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 50);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_coexTxGrantedRequests = *(fromCopy + 18);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 50);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_coexTxDeniedRequests = *(fromCopy + 17);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 50);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_coexRxRequests = *(fromCopy + 16);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 50);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_coexRxGrantedRequests = *(fromCopy + 15);
  *&self->_has |= 2u;
  if ((*(fromCopy + 50) & 1) == 0)
  {
LABEL_8:
    v13 = fromCopy;
    coexRxGrantTimeHistogramsCount = [fromCopy coexRxGrantTimeHistogramsCount];
    if (!coexRxGrantTimeHistogramsCount)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_coexRxDeniedRequests = *(fromCopy + 14);
  *&self->_has |= 1u;
  v13 = fromCopy;
  coexRxGrantTimeHistogramsCount = [fromCopy coexRxGrantTimeHistogramsCount];
  if (!coexRxGrantTimeHistogramsCount)
  {
    goto LABEL_19;
  }

LABEL_17:
  v7 = coexRxGrantTimeHistogramsCount;
  for (i = 0; i != v7; ++i)
  {
    -[AWDCountersCoexS addCoexRxGrantTimeHistogram:](self, "addCoexRxGrantTimeHistogram:", [v13 coexRxGrantTimeHistogramAtIndex:i]);
  }

LABEL_19:
  coexTxGrantTimeHistogramsCount = [v13 coexTxGrantTimeHistogramsCount];
  if (coexTxGrantTimeHistogramsCount)
  {
    v10 = coexTxGrantTimeHistogramsCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDCountersCoexS addCoexTxGrantTimeHistogram:](self, "addCoexTxGrantTimeHistogram:", [v13 coexTxGrantTimeHistogramAtIndex:j]);
    }
  }

  v12 = *(v13 + 50);
  if ((v12 & 0x400) != 0)
  {
    self->_txGrantedReqPercentage = v13[24];
    *&self->_has |= 0x400u;
    v12 = *(v13 + 50);
    if ((v12 & 0x100) == 0)
    {
LABEL_24:
      if ((v12 & 0x200) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  else if ((v13[25] & 0x100) == 0)
  {
    goto LABEL_24;
  }

  self->_rxGrantedReqPercentage = v13[22];
  *&self->_has |= 0x100u;
  v12 = *(v13 + 50);
  if ((v12 & 0x200) == 0)
  {
LABEL_25:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_txDeniedReqPercentage = v13[23];
  *&self->_has |= 0x200u;
  if ((v13[25] & 0x80) == 0)
  {
LABEL_26:

    goto LABEL_28;
  }

LABEL_32:
  self->_rxDeniedReqPercentage = v13[21];
  *&self->_has |= 0x80u;

LABEL_28:
}

@end
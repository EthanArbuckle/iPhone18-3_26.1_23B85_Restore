@interface AWDCountersMacRxS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxPacketCountHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRxData:(BOOL)a3;
- (void)setHasRxErrDuplicated:(BOOL)a3;
- (void)setHasRxErrFcs:(BOOL)a3;
- (void)setHasRxErrInvalidSrcAddr:(BOOL)a3;
- (void)setHasRxErrNoframe:(BOOL)a3;
- (void)setHasRxErrOther:(BOOL)a3;
- (void)setHasRxErrPercentage:(BOOL)a3;
- (void)setHasRxErrSecurity:(BOOL)a3;
- (void)setHasRxErrUnknownNeighbor:(BOOL)a3;
- (void)setHasRxTotal:(BOOL)a3;
- (void)setHasRxUnicast:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersMacRxS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersMacRxS;
  [(AWDCountersMacRxS *)&v3 dealloc];
}

- (void)setHasRxTotal:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRxData:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasRxUnicast:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRxErrFcs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRxErrUnknownNeighbor:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRxErrInvalidSrcAddr:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRxErrSecurity:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRxErrNoframe:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRxErrDuplicated:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRxErrOther:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (unsigned)rxPacketCountHistogramAtIndex:(unint64_t)a3
{
  p_rxPacketCountHistograms = &self->_rxPacketCountHistograms;
  count = self->_rxPacketCountHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rxPacketCountHistograms->list[a3];
}

- (void)setHasRxErrPercentage:(BOOL)a3
{
  if (a3)
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
  v7.super_class = AWDCountersMacRxS;
  v3 = [(AWDCountersMacRxS *)&v7 description];
  v4 = [(AWDCountersMacRxS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_rxTotal];
    [v3 setObject:v9 forKey:@"rx_total"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_rxData];
  [v3 setObject:v10 forKey:@"rx_data"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [NSNumber numberWithUnsignedInt:self->_rxUnicast];
  [v3 setObject:v11 forKey:@"rx_unicast"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [NSNumber numberWithUnsignedInt:self->_rxBroadcast];
  [v3 setObject:v12 forKey:@"rx_broadcast"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [NSNumber numberWithUnsignedInt:self->_rxErrFcs];
  [v3 setObject:v13 forKey:@"rx_err_fcs"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [NSNumber numberWithUnsignedInt:self->_rxErrUnknownNeighbor];
  [v3 setObject:v14 forKey:@"rx_err_unknown_neighbor"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [NSNumber numberWithUnsignedInt:self->_rxErrInvalidSrcAddr];
  [v3 setObject:v15 forKey:@"rx_err_invalid_src_addr"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [NSNumber numberWithUnsignedInt:self->_rxErrSecurity];
  [v3 setObject:v16 forKey:@"rx_err_security"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [NSNumber numberWithUnsignedInt:self->_rxErrNoframe];
  [v3 setObject:v17 forKey:@"rx_err_noframe"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_27:
  v18 = [NSNumber numberWithUnsignedInt:self->_rxErrDuplicated];
  [v3 setObject:v18 forKey:@"rx_err_duplicated"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v5 = [NSNumber numberWithUnsignedInt:self->_rxErrOther];
    [v3 setObject:v5 forKey:@"rx_err_other"];
  }

LABEL_13:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"rx_packet_count_histogram"];

  if ((*&self->_has & 0x80) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_rxErrPercentage];
    [v3 setObject:v7 forKey:@"rx_err_percentage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v21 = v4;
  if ((has & 0x400) != 0)
  {
    rxTotal = self->_rxTotal;
    PBDataWriterWriteUint32Field();
    v4 = v21;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  rxData = self->_rxData;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  rxUnicast = self->_rxUnicast;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  rxBroadcast = self->_rxBroadcast;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  rxErrFcs = self->_rxErrFcs;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  rxErrUnknownNeighbor = self->_rxErrUnknownNeighbor;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  rxErrInvalidSrcAddr = self->_rxErrInvalidSrcAddr;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  rxErrSecurity = self->_rxErrSecurity;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  rxErrNoframe = self->_rxErrNoframe;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  rxErrDuplicated = self->_rxErrDuplicated;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  if ((*&self->_has & 0x40) == 0)
  {
LABEL_12:
    p_rxPacketCountHistograms = &self->_rxPacketCountHistograms;
    if (!self->_rxPacketCountHistograms.count)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_24:
  rxErrOther = self->_rxErrOther;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  p_rxPacketCountHistograms = &self->_rxPacketCountHistograms;
  if (!self->_rxPacketCountHistograms.count)
  {
    goto LABEL_27;
  }

LABEL_25:
  v18 = 0;
  do
  {
    v19 = p_rxPacketCountHistograms->list[v18];
    PBDataWriterWriteUint32Field();
    v4 = v21;
    ++v18;
  }

  while (v18 < p_rxPacketCountHistograms->count);
LABEL_27:
  if ((*&self->_has & 0x80) != 0)
  {
    rxErrPercentage = self->_rxErrPercentage;
    PBDataWriterWriteUint32Field();
    v4 = v21;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v4[18] = self->_rxTotal;
    *(v4 + 40) |= 0x400u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[9] = self->_rxData;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[19] = self->_rxUnicast;
  *(v4 + 40) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[8] = self->_rxBroadcast;
  *(v4 + 40) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[11] = self->_rxErrFcs;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[17] = self->_rxErrUnknownNeighbor;
  *(v4 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[12] = self->_rxErrInvalidSrcAddr;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[16] = self->_rxErrSecurity;
  *(v4 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[13] = self->_rxErrNoframe;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[10] = self->_rxErrDuplicated;
  *(v4 + 40) |= 4u;
  if ((*&self->_has & 0x40) == 0)
  {
LABEL_12:
    v9 = v4;
    if (![(AWDCountersMacRxS *)self rxPacketCountHistogramsCount])
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[14] = self->_rxErrOther;
  *(v4 + 40) |= 0x40u;
  v9 = v4;
  if (![(AWDCountersMacRxS *)self rxPacketCountHistogramsCount])
  {
    goto LABEL_28;
  }

LABEL_25:
  [v9 clearRxPacketCountHistograms];
  v6 = [(AWDCountersMacRxS *)self rxPacketCountHistogramsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v9 addRxPacketCountHistogram:{-[AWDCountersMacRxS rxPacketCountHistogramAtIndex:](self, "rxPacketCountHistogramAtIndex:", i)}];
    }
  }

LABEL_28:
  if ((*&self->_has & 0x80) != 0)
  {
    *(v9 + 15) = self->_rxErrPercentage;
    *(v9 + 40) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v4[18] = self->_rxTotal;
    *(v4 + 40) |= 0x400u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[9] = self->_rxData;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[19] = self->_rxUnicast;
  *(v4 + 40) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[8] = self->_rxBroadcast;
  *(v4 + 40) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[11] = self->_rxErrFcs;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[17] = self->_rxErrUnknownNeighbor;
  *(v4 + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[12] = self->_rxErrInvalidSrcAddr;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[16] = self->_rxErrSecurity;
  *(v4 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[13] = self->_rxErrNoframe;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v4[10] = self->_rxErrDuplicated;
  *(v4 + 40) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v4[14] = self->_rxErrOther;
    *(v4 + 40) |= 0x40u;
  }

LABEL_13:
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x80) != 0)
  {
    v5[15] = self->_rxErrPercentage;
    *(v5 + 40) |= 0x80u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 40) & 0x400) == 0 || self->_rxTotal != *(v4 + 18))
    {
      goto LABEL_63;
    }
  }

  else if ((*(v4 + 40) & 0x400) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_rxData != *(v4 + 9))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 40) & 0x800) == 0 || self->_rxUnicast != *(v4 + 19))
    {
      goto LABEL_63;
    }
  }

  else if ((*(v4 + 40) & 0x800) != 0)
  {
    goto LABEL_63;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_rxBroadcast != *(v4 + 8))
    {
      goto LABEL_63;
    }
  }

  else if (v6)
  {
    goto LABEL_63;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_rxErrFcs != *(v4 + 11))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 40) & 0x200) == 0 || self->_rxErrUnknownNeighbor != *(v4 + 17))
    {
      goto LABEL_63;
    }
  }

  else if ((*(v4 + 40) & 0x200) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rxErrInvalidSrcAddr != *(v4 + 12))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0 || self->_rxErrSecurity != *(v4 + 16))
    {
      goto LABEL_63;
    }
  }

  else if ((*(v4 + 40) & 0x100) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rxErrNoframe != *(v4 + 13))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_rxErrDuplicated != *(v4 + 10))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rxErrOther != *(v4 + 14))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_63;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_63:
    v8 = 0;
    goto LABEL_64;
  }

  v7 = *(v4 + 40);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_rxErrPercentage != *(v4 + 15))
    {
      goto LABEL_63;
    }

    v8 = 1;
  }

  else
  {
    v8 = (v7 & 0x80) == 0;
  }

LABEL_64:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v17 = 2654435761 * self->_rxTotal;
    if ((has & 2) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_rxData;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v15 = 2654435761 * self->_rxUnicast;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = 0;
  if (has)
  {
LABEL_5:
    v14 = 2654435761 * self->_rxBroadcast;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_rxErrFcs;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_rxErrUnknownNeighbor;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v6 = 2654435761 * self->_rxErrInvalidSrcAddr;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v7 = 2654435761 * self->_rxErrSecurity;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v8 = 2654435761 * self->_rxErrNoframe;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v9 = 2654435761 * self->_rxErrDuplicated;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v10 = 0;
    v11 = PBRepeatedUInt32Hash();
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v12 = 0;
    return v16 ^ v17 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
  }

LABEL_23:
  v9 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v10 = 2654435761 * self->_rxErrOther;
  v11 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v12 = 2654435761 * self->_rxErrPercentage;
  return v16 ^ v17 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 0x400) != 0)
  {
    self->_rxTotal = *(v4 + 18);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_rxData = *(v4 + 9);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rxUnicast = *(v4 + 19);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_rxBroadcast = *(v4 + 8);
  *&self->_has |= 1u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rxErrFcs = *(v4 + 11);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rxErrUnknownNeighbor = *(v4 + 17);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_rxErrInvalidSrcAddr = *(v4 + 12);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rxErrSecurity = *(v4 + 16);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_rxErrNoframe = *(v4 + 13);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_rxErrDuplicated = *(v4 + 10);
  *&self->_has |= 4u;
  if ((*(v4 + 40) & 0x40) == 0)
  {
LABEL_12:
    v9 = v4;
    v6 = [v4 rxPacketCountHistogramsCount];
    if (!v6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rxErrOther = *(v4 + 14);
  *&self->_has |= 0x40u;
  v9 = v4;
  v6 = [v4 rxPacketCountHistogramsCount];
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_25:
  v7 = v6;
  for (i = 0; i != v7; ++i)
  {
    -[AWDCountersMacRxS addRxPacketCountHistogram:](self, "addRxPacketCountHistogram:", [v9 rxPacketCountHistogramAtIndex:i]);
  }

LABEL_27:
  if ((v9[20] & 0x80) != 0)
  {
    self->_rxErrPercentage = v9[15];
    *&self->_has |= 0x80u;
  }
}

@end
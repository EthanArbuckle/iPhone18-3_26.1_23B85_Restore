@interface AWDCountersIpv6S
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxSuccess:(BOOL)success;
- (void)setHasRxSuccessRate:(BOOL)rate;
- (void)setHasTxAppPktSucess:(BOOL)sucess;
- (void)setHasTxDelayavg:(BOOL)delayavg;
- (void)setHasTxDelaymax:(BOOL)delaymax;
- (void)setHasTxDelaymin:(BOOL)delaymin;
- (void)setHasTxFailure:(BOOL)failure;
- (void)setHasTxSuccess:(BOOL)success;
- (void)setHasTxSuccessRate:(BOOL)rate;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersIpv6S

- (void)setHasTxSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTxFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRxSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTxAppPktSucess:(BOOL)sucess
{
  if (sucess)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTxDelaymin:(BOOL)delaymin
{
  if (delaymin)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTxDelaymax:(BOOL)delaymax
{
  if (delaymax)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTxDelayavg:(BOOL)delayavg
{
  if (delayavg)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTxSuccessRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRxSuccessRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersIpv6S;
  v3 = [(AWDCountersIpv6S *)&v7 description];
  dictionaryRepresentation = [(AWDCountersIpv6S *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_txSuccess];
    [v3 setObject:v7 forKey:@"tx_success"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_txFailure];
  [v3 setObject:v8 forKey:@"tx_failure"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [NSNumber numberWithUnsignedInt:self->_rxSuccess];
  [v3 setObject:v9 forKey:@"rx_success"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [NSNumber numberWithUnsignedInt:self->_rxFailure];
  [v3 setObject:v10 forKey:@"rx_failure"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [NSNumber numberWithUnsignedInt:self->_txAppPktSucess];
  [v3 setObject:v11 forKey:@"tx_app_pkt_sucess"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [NSNumber numberWithUnsignedInt:self->_txDelaymin];
  [v3 setObject:v12 forKey:@"tx_delaymin"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [NSNumber numberWithUnsignedInt:self->_txDelaymax];
  [v3 setObject:v13 forKey:@"tx_delaymax"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [NSNumber numberWithUnsignedInt:self->_txDelayavg];
  [v3 setObject:v14 forKey:@"tx_delayavg"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [NSNumber numberWithUnsignedInt:self->_txSuccessRate];
  [v3 setObject:v15 forKey:@"tx_success_rate"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v5 = [NSNumber numberWithUnsignedInt:self->_rxSuccessRate];
    [v3 setObject:v5 forKey:@"rx_success_rate"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    txSuccess = self->_txSuccess;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  txFailure = self->_txFailure;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  rxSuccess = self->_rxSuccess;
  PBDataWriterWriteUint32Field();
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
  rxFailure = self->_rxFailure;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  txAppPktSucess = self->_txAppPktSucess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  txDelaymin = self->_txDelaymin;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  txDelaymax = self->_txDelaymax;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  txDelayavg = self->_txDelayavg;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  txSuccessRate = self->_txSuccessRate;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) == 0)
  {
LABEL_11:
    v5 = toCopy;

    goto LABEL_13;
  }

LABEL_23:
  rxSuccessRate = self->_rxSuccessRate;
  PBDataWriterWriteUint32Field();
  v5 = toCopy;

LABEL_13:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[10] = self->_txSuccess;
    *(toCopy + 24) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = self->_txFailure;
  *(toCopy + 24) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[3] = self->_rxSuccess;
  *(toCopy + 24) |= 2u;
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
  toCopy[2] = self->_rxFailure;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[5] = self->_txAppPktSucess;
  *(toCopy + 24) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[8] = self->_txDelaymin;
  *(toCopy + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[7] = self->_txDelaymax;
  *(toCopy + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[6] = self->_txDelayavg;
  *(toCopy + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[11] = self->_txSuccessRate;
  *(toCopy + 24) |= 0x200u;
  if ((*&self->_has & 4) == 0)
  {
LABEL_11:

    goto LABEL_13;
  }

LABEL_23:
  toCopy[4] = self->_rxSuccessRate;
  *(toCopy + 24) |= 4u;

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 10) = self->_txSuccess;
    *(result + 24) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_txFailure;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 3) = self->_rxSuccess;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 2) = self->_rxFailure;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 5) = self->_txAppPktSucess;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_txDelaymin;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 7) = self->_txDelaymax;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_txDelayavg;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      return result;
    }

LABEL_21:
    *(result + 4) = self->_rxSuccessRate;
    *(result + 24) |= 4u;
    return result;
  }

LABEL_20:
  *(result + 11) = self->_txSuccessRate;
  *(result + 24) |= 0x200u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_21;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 24) & 0x100) == 0 || self->_txSuccess != *(equalCopy + 10))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 0x100) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_txFailure != *(equalCopy + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_rxSuccess != *(equalCopy + 3))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_rxFailure != *(equalCopy + 2))
    {
      goto LABEL_52;
    }
  }

  else if (v6)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_txAppPktSucess != *(equalCopy + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_txDelaymin != *(equalCopy + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_txDelaymax != *(equalCopy + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_txDelayavg != *(equalCopy + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 24) & 0x200) == 0 || self->_txSuccessRate != *(equalCopy + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 0x200) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) == 0)
  {
    v7 = (v6 & 4) == 0;

    return v7;
  }

  if ((v6 & 4) != 0 && self->_rxSuccessRate == *(equalCopy + 4))
  {

    return 1;
  }

LABEL_52:

  return 0;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v3 = 2654435761 * self->_txSuccess;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_txFailure;
      if ((has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_rxSuccess;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if (has)
  {
LABEL_5:
    v6 = 2654435761 * self->_rxFailure;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_txAppPktSucess;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_txDelaymin;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_txDelaymax;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txDelayavg;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_txSuccessRate;
  if ((has & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_rxSuccessRate;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x100) != 0)
  {
    self->_txSuccess = *(fromCopy + 10);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 24);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_txFailure = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rxSuccess = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
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
  self->_rxFailure = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_txAppPktSucess = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txDelaymin = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txDelaymax = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txDelayavg = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txSuccessRate = *(fromCopy + 11);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 24) & 4) == 0)
  {
LABEL_11:

    goto LABEL_13;
  }

LABEL_23:
  self->_rxSuccessRate = *(fromCopy + 4);
  *&self->_has |= 4u;

LABEL_13:
}

@end
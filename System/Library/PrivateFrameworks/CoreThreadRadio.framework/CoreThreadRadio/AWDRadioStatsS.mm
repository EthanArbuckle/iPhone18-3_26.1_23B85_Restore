@interface AWDRadioStatsS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasReceivingTime:(BOOL)time;
- (void)setHasRetryInterval90perc:(BOOL)interval90perc;
- (void)setHasRetryIntervalAvg:(BOOL)avg;
- (void)setHasRetryIntervalMax:(BOOL)max;
- (void)setHasRetryIntervalMin:(BOOL)min;
- (void)setHasRtt90perc:(BOOL)rtt90perc;
- (void)setHasRttAvgVal:(BOOL)val;
- (void)setHasRttMaxVal:(BOOL)val;
- (void)setHasRttMinVal:(BOOL)val;
- (void)setHasTransmittingTime:(BOOL)time;
- (void)setHasTxDelay90perc:(BOOL)delay90perc;
- (void)setHasTxDelayAvg:(BOOL)avg;
- (void)setHasTxDelayMax:(BOOL)max;
- (void)setHasTxDelayMin:(BOOL)min;
- (void)writeTo:(id)to;
@end

@implementation AWDRadioStatsS

- (void)setHasRttMinVal:(BOOL)val
{
  if (val)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRttMaxVal:(BOOL)val
{
  if (val)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRttAvgVal:(BOOL)val
{
  if (val)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRtt90perc:(BOOL)rtt90perc
{
  if (rtt90perc)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRetryIntervalMin:(BOOL)min
{
  if (min)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRetryIntervalMax:(BOOL)max
{
  if (max)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRetryIntervalAvg:(BOOL)avg
{
  if (avg)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRetryInterval90perc:(BOOL)interval90perc
{
  if (interval90perc)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTxDelayMin:(BOOL)min
{
  if (min)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasTxDelayMax:(BOOL)max
{
  if (max)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasTxDelayAvg:(BOOL)avg
{
  if (avg)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTxDelay90perc:(BOOL)delay90perc
{
  if (delay90perc)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasReceivingTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTransmittingTime:(BOOL)time
{
  if (time)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDRadioStatsS;
  v3 = [(AWDRadioStatsS *)&v7 description];
  dictionaryRepresentation = [(AWDRadioStatsS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_rttMinVal];
    [v3 setObject:v7 forKey:@"rtt_min_val"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_rttMaxVal];
  [v3 setObject:v8 forKey:@"rtt_max_val"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = [NSNumber numberWithUnsignedInt:self->_rttAvgVal];
  [v3 setObject:v9 forKey:@"rtt_avg_val"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = [NSNumber numberWithUnsignedInt:self->_rtt90perc];
  [v3 setObject:v10 forKey:@"rtt_90perc"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = [NSNumber numberWithUnsignedInt:self->_retryIntervalMin];
  [v3 setObject:v11 forKey:@"retry_interval_min"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [NSNumber numberWithUnsignedInt:self->_retryIntervalMax];
  [v3 setObject:v12 forKey:@"retry_interval_max"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [NSNumber numberWithUnsignedInt:self->_retryIntervalAvg];
  [v3 setObject:v13 forKey:@"retry_interval_avg"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [NSNumber numberWithUnsignedInt:self->_retryInterval90perc];
  [v3 setObject:v14 forKey:@"retry_interval_90perc"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [NSNumber numberWithUnsignedInt:self->_txDelayMin];
  [v3 setObject:v15 forKey:@"tx_delay_min"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [NSNumber numberWithUnsignedInt:self->_txDelayMax];
  [v3 setObject:v16 forKey:@"tx_delay_max"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithUnsignedInt:self->_txDelayAvg];
  [v3 setObject:v17 forKey:@"tx_delay_avg"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithUnsignedInt:self->_txDelay90perc];
  [v3 setObject:v18 forKey:@"tx_delay_90perc"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [NSNumber numberWithUnsignedInt:self->_listeningTime];
  [v3 setObject:v19 forKey:@"listening_time"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  v20 = [NSNumber numberWithUnsignedInt:self->_receivingTime];
  [v3 setObject:v20 forKey:@"receiving_time"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    v5 = [NSNumber numberWithUnsignedInt:self->_transmittingTime];
    [v3 setObject:v5 forKey:@"transmitting_time"];
  }

LABEL_17:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    rttMinVal = self->_rttMinVal;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  rttMaxVal = self->_rttMaxVal;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  rttAvgVal = self->_rttAvgVal;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  rtt90perc = self->_rtt90perc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  retryIntervalMin = self->_retryIntervalMin;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  retryIntervalMax = self->_retryIntervalMax;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  retryIntervalAvg = self->_retryIntervalAvg;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  retryInterval90perc = self->_retryInterval90perc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  txDelayMin = self->_txDelayMin;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  txDelayMax = self->_txDelayMax;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  txDelayAvg = self->_txDelayAvg;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  txDelay90perc = self->_txDelay90perc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  listeningTime = self->_listeningTime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  receivingTime = self->_receivingTime;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) == 0)
  {
LABEL_16:
    v5 = toCopy;

    goto LABEL_18;
  }

LABEL_33:
  transmittingTime = self->_transmittingTime;
  PBDataWriterWriteUint32Field();
  v5 = toCopy;

LABEL_18:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    toCopy[11] = self->_rttMinVal;
    *(toCopy + 34) |= 0x200u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  toCopy[10] = self->_rttMaxVal;
  *(toCopy + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[9] = self->_rttAvgVal;
  *(toCopy + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[8] = self->_rtt90perc;
  *(toCopy + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  toCopy[7] = self->_retryIntervalMin;
  *(toCopy + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[6] = self->_retryIntervalMax;
  *(toCopy + 34) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[5] = self->_retryIntervalAvg;
  *(toCopy + 34) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[4] = self->_retryInterval90perc;
  *(toCopy + 34) |= 4u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[16] = self->_txDelayMin;
  *(toCopy + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[15] = self->_txDelayMax;
  *(toCopy + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[14] = self->_txDelayAvg;
  *(toCopy + 34) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[13] = self->_txDelay90perc;
  *(toCopy + 34) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[2] = self->_listeningTime;
  *(toCopy + 34) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[3] = self->_receivingTime;
  *(toCopy + 34) |= 2u;
  if ((*&self->_has & 0x400) == 0)
  {
LABEL_16:

    goto LABEL_18;
  }

LABEL_33:
  toCopy[12] = self->_transmittingTime;
  *(toCopy + 34) |= 0x400u;

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(result + 11) = self->_rttMinVal;
    *(result + 34) |= 0x200u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_rttMaxVal;
  *(result + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_rttAvgVal;
  *(result + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 8) = self->_rtt90perc;
  *(result + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 7) = self->_retryIntervalMin;
  *(result + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 6) = self->_retryIntervalMax;
  *(result + 34) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 5) = self->_retryIntervalAvg;
  *(result + 34) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 4) = self->_retryInterval90perc;
  *(result + 34) |= 4u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 16) = self->_txDelayMin;
  *(result + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 15) = self->_txDelayMax;
  *(result + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 14) = self->_txDelayAvg;
  *(result + 34) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 13) = self->_txDelay90perc;
  *(result + 34) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 2) = self->_listeningTime;
  *(result + 34) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      return result;
    }

LABEL_31:
    *(result + 12) = self->_transmittingTime;
    *(result + 34) |= 0x400u;
    return result;
  }

LABEL_30:
  *(result + 3) = self->_receivingTime;
  *(result + 34) |= 2u;
  if ((*&self->_has & 0x400) != 0)
  {
    goto LABEL_31;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  has = self->_has;
  v6 = *(equalCopy + 34);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 34) & 0x200) == 0 || self->_rttMinVal != *(equalCopy + 11))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 34) & 0x100) == 0 || self->_rttMaxVal != *(equalCopy + 10))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rttAvgVal != *(equalCopy + 9))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rtt90perc != *(equalCopy + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_retryIntervalMin != *(equalCopy + 7))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_retryIntervalMax != *(equalCopy + 6))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_retryIntervalAvg != *(equalCopy + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_retryInterval90perc != *(equalCopy + 4))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 34) & 0x4000) == 0 || self->_txDelayMin != *(equalCopy + 16))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x4000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 34) & 0x2000) == 0 || self->_txDelayMax != *(equalCopy + 15))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x2000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 34) & 0x1000) == 0 || self->_txDelayAvg != *(equalCopy + 14))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x1000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 34) & 0x800) == 0 || self->_txDelay90perc != *(equalCopy + 13))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_listeningTime != *(equalCopy + 2))
    {
      goto LABEL_77;
    }
  }

  else if (v6)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_receivingTime != *(equalCopy + 3))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) == 0)
  {
    v7 = (v6 & 0x400) == 0;

    return v7;
  }

  if ((*(equalCopy + 34) & 0x400) != 0 && self->_transmittingTime == *(equalCopy + 12))
  {

    return 1;
  }

LABEL_77:

  return 0;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v3 = 2654435761 * self->_rttMinVal;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rttMaxVal;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_rttAvgVal;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_rtt90perc;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_retryIntervalMin;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_retryIntervalMax;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_retryIntervalAvg;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_retryInterval90perc;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_txDelayMin;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_txDelayMax;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_txDelayAvg;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_txDelay90perc;
    if (has)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if (has)
  {
LABEL_14:
    v15 = 2654435761 * self->_listeningTime;
    if ((has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_29:
  v15 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_receivingTime;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v17 = 2654435761 * self->_transmittingTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x200) != 0)
  {
    self->_rttMinVal = *(fromCopy + 11);
    *&self->_has |= 0x200u;
    v5 = *(fromCopy + 34);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 34) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_rttMaxVal = *(fromCopy + 10);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rttAvgVal = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_rtt90perc = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_retryIntervalMin = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_retryIntervalMax = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 34);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_retryIntervalAvg = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 34);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_retryInterval90perc = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_txDelayMin = *(fromCopy + 16);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x2000) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_txDelayMax = *(fromCopy + 15);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_txDelayAvg = *(fromCopy + 14);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_txDelay90perc = *(fromCopy + 13);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 34);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_listeningTime = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 34);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_receivingTime = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 34) & 0x400) == 0)
  {
LABEL_16:

    goto LABEL_18;
  }

LABEL_33:
  self->_transmittingTime = *(fromCopy + 12);
  *&self->_has |= 0x400u;

LABEL_18:
}

@end
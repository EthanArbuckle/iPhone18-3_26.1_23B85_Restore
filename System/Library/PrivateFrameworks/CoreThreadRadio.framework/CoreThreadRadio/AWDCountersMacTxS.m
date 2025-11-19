@interface AWDCountersMacTxS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)txCcaEnergyDetectedHistogramAtIndex:(unint64_t)a3;
- (unsigned)txCsmaBackoffHistogramAtIndex:(unint64_t)a3;
- (unsigned)txDirectChannelaccessfailureHistogramAtIndex:(unint64_t)a3;
- (unsigned)txDirectNoackHistogramAtIndex:(unint64_t)a3;
- (unsigned)txDirectRetryAttemptsHistogramAtIndex:(unint64_t)a3;
- (unsigned)txIndirectRetryAttemptsHistogramAtIndex:(unint64_t)a3;
- (unsigned)txPacketCountHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCslLossOfSyncDueToMaxRetx:(BOOL)a3;
- (void)setHasCslTxErrAbort:(BOOL)a3;
- (void)setHasCslTxErrBusyChannel:(BOOL)a3;
- (void)setHasCslTxErrCca:(BOOL)a3;
- (void)setHasCslTxErrNoack:(BOOL)a3;
- (void)setHasCslTxTotal:(BOOL)a3;
- (void)setHasTxBroadcast:(BOOL)a3;
- (void)setHasTxData:(BOOL)a3;
- (void)setHasTxDirectMaxRetryExpiry:(BOOL)a3;
- (void)setHasTxErrAbort:(BOOL)a3;
- (void)setHasTxErrAbortPercentage:(BOOL)a3;
- (void)setHasTxErrBusyChannel:(BOOL)a3;
- (void)setHasTxErrBusyChannelPercentage:(BOOL)a3;
- (void)setHasTxErrCca:(BOOL)a3;
- (void)setHasTxErrCcaPercentage:(BOOL)a3;
- (void)setHasTxErrPercentage:(BOOL)a3;
- (void)setHasTxIndirectMaxRetryExpiry:(BOOL)a3;
- (void)setHasTxTotal:(BOOL)a3;
- (void)setHasTxUnicast:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersMacTxS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersMacTxS;
  [(AWDCountersMacTxS *)&v3 dealloc];
}

- (void)setHasTxTotal:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTxData:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTxUnicast:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasTxBroadcast:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasTxErrCca:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTxErrAbort:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTxErrBusyChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTxDirectMaxRetryExpiry:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTxIndirectMaxRetryExpiry:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (unsigned)txPacketCountHistogramAtIndex:(unint64_t)a3
{
  p_txPacketCountHistograms = &self->_txPacketCountHistograms;
  count = self->_txPacketCountHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txPacketCountHistograms->list[a3];
}

- (unsigned)txDirectRetryAttemptsHistogramAtIndex:(unint64_t)a3
{
  p_txDirectRetryAttemptsHistograms = &self->_txDirectRetryAttemptsHistograms;
  count = self->_txDirectRetryAttemptsHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txDirectRetryAttemptsHistograms->list[a3];
}

- (unsigned)txIndirectRetryAttemptsHistogramAtIndex:(unint64_t)a3
{
  p_txIndirectRetryAttemptsHistograms = &self->_txIndirectRetryAttemptsHistograms;
  count = self->_txIndirectRetryAttemptsHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txIndirectRetryAttemptsHistograms->list[a3];
}

- (unsigned)txCcaEnergyDetectedHistogramAtIndex:(unint64_t)a3
{
  p_txCcaEnergyDetectedHistograms = &self->_txCcaEnergyDetectedHistograms;
  count = self->_txCcaEnergyDetectedHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txCcaEnergyDetectedHistograms->list[a3];
}

- (unsigned)txDirectNoackHistogramAtIndex:(unint64_t)a3
{
  p_txDirectNoackHistograms = &self->_txDirectNoackHistograms;
  count = self->_txDirectNoackHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txDirectNoackHistograms->list[a3];
}

- (unsigned)txDirectChannelaccessfailureHistogramAtIndex:(unint64_t)a3
{
  p_txDirectChannelaccessfailureHistograms = &self->_txDirectChannelaccessfailureHistograms;
  count = self->_txDirectChannelaccessfailureHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txDirectChannelaccessfailureHistograms->list[a3];
}

- (unsigned)txCsmaBackoffHistogramAtIndex:(unint64_t)a3
{
  p_txCsmaBackoffHistograms = &self->_txCsmaBackoffHistograms;
  count = self->_txCsmaBackoffHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txCsmaBackoffHistograms->list[a3];
}

- (void)setHasCslTxTotal:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasCslTxErrNoack:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCslTxErrCca:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasCslTxErrAbort:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCslTxErrBusyChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasCslLossOfSyncDueToMaxRetx:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTxErrCcaPercentage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTxErrAbortPercentage:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTxErrBusyChannelPercentage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTxErrPercentage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersMacTxS;
  v3 = [(AWDCountersMacTxS *)&v7 description];
  v4 = [(AWDCountersMacTxS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_txTotal];
    [v3 setObject:v16 forKey:@"tx_total"];

    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v17 = [NSNumber numberWithUnsignedInt:self->_txData];
  [v3 setObject:v17 forKey:@"tx_data"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [NSNumber numberWithUnsignedInt:self->_txUnicast];
  [v3 setObject:v18 forKey:@"tx_unicast"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [NSNumber numberWithUnsignedInt:self->_txBroadcast];
  [v3 setObject:v19 forKey:@"tx_broadcast"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [NSNumber numberWithUnsignedInt:self->_txErrCca];
  [v3 setObject:v20 forKey:@"tx_err_cca"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [NSNumber numberWithUnsignedInt:self->_txErrAbort];
  [v3 setObject:v21 forKey:@"tx_err_abort"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = [NSNumber numberWithUnsignedInt:self->_txErrBusyChannel];
  [v3 setObject:v22 forKey:@"tx_err_busy_channel"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  v23 = [NSNumber numberWithUnsignedInt:self->_txDirectMaxRetryExpiry];
  [v3 setObject:v23 forKey:@"tx_direct_max_retry_expiry"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_10:
    v5 = [NSNumber numberWithUnsignedInt:self->_txIndirectMaxRetryExpiry];
    [v3 setObject:v5 forKey:@"tx_indirect_max_retry_expiry"];
  }

LABEL_11:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"tx_packet_count_histogram"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"tx_direct_retry_attempts_histogram"];

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"tx_indirect_retry_attempts_histogram"];

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"tx_cca_energy_detected_histogram"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"tx_direct_noack_histogram"];

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"tx_direct_channelaccessfailure_histogram"];

  v12 = PBRepeatedUInt32NSArray();
  [v3 setObject:v12 forKey:@"tx_csma_backoff_histogram"];

  v13 = self->_has;
  if ((*&v13 & 0x40) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_cslTxTotal];
    [v3 setObject:v24 forKey:@"csl_tx_total"];

    v13 = self->_has;
    if ((*&v13 & 0x20) == 0)
    {
LABEL_13:
      if ((*&v13 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v13 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v25 = [NSNumber numberWithUnsignedInt:self->_cslTxErrNoack];
  [v3 setObject:v25 forKey:@"csl_tx_err_noack"];

  v13 = self->_has;
  if ((*&v13 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v13 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v26 = [NSNumber numberWithUnsignedInt:self->_cslTxErrCca];
  [v3 setObject:v26 forKey:@"csl_tx_err_cca"];

  v13 = self->_has;
  if ((*&v13 & 4) == 0)
  {
LABEL_15:
    if ((*&v13 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v27 = [NSNumber numberWithUnsignedInt:self->_cslTxErrAbort];
  [v3 setObject:v27 forKey:@"csl_tx_err_abort"];

  v13 = self->_has;
  if ((*&v13 & 8) == 0)
  {
LABEL_16:
    if ((*&v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v28 = [NSNumber numberWithUnsignedInt:self->_cslTxErrBusyChannel];
  [v3 setObject:v28 forKey:@"csl_tx_err_busy_channel"];

  v13 = self->_has;
  if ((*&v13 & 1) == 0)
  {
LABEL_17:
    if ((*&v13 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v29 = [NSNumber numberWithUnsignedInt:self->_cslLossOfSyncDueToCslTimeout];
  [v3 setObject:v29 forKey:@"csl_loss_of_sync_due_to_csl_timeout"];

  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_18:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v30 = [NSNumber numberWithUnsignedInt:self->_cslLossOfSyncDueToMaxRetx];
  [v3 setObject:v30 forKey:@"csl_loss_of_sync_due_to_max_retx"];

  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_19:
    if ((*&v13 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v31 = [NSNumber numberWithUnsignedInt:self->_txErrCcaPercentage];
  [v3 setObject:v31 forKey:@"tx_err_cca_percentage"];

  v13 = self->_has;
  if ((*&v13 & 0x800) == 0)
  {
LABEL_20:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v32 = [NSNumber numberWithUnsignedInt:self->_txErrAbortPercentage];
  [v3 setObject:v32 forKey:@"tx_err_abort_percentage"];

  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_21:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_44:
  v33 = [NSNumber numberWithUnsignedInt:self->_txErrBusyChannelPercentage];
  [v3 setObject:v33 forKey:@"tx_err_busy_channel_percentage"];

  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_22:
    v14 = [NSNumber numberWithUnsignedInt:self->_txErrPercentage];
    [v3 setObject:v14 forKey:@"tx_err_percentage"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v42 = v4;
  if ((*&has & 0x40000) != 0)
  {
    txTotal = self->_txTotal;
    PBDataWriterWriteUint32Field();
    v4 = v42;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  txData = self->_txData;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  txUnicast = self->_txUnicast;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  txBroadcast = self->_txBroadcast;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  txErrCca = self->_txErrCca;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  txErrAbort = self->_txErrAbort;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  txErrBusyChannel = self->_txErrBusyChannel;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  txDirectMaxRetryExpiry = self->_txDirectMaxRetryExpiry;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  if ((*&self->_has & 0x20000) == 0)
  {
LABEL_10:
    p_txPacketCountHistograms = &self->_txPacketCountHistograms;
    if (!self->_txPacketCountHistograms.count)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_20:
  txIndirectMaxRetryExpiry = self->_txIndirectMaxRetryExpiry;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  p_txPacketCountHistograms = &self->_txPacketCountHistograms;
  if (!self->_txPacketCountHistograms.count)
  {
    goto LABEL_23;
  }

LABEL_21:
  v16 = 0;
  do
  {
    v17 = p_txPacketCountHistograms->list[v16];
    PBDataWriterWriteUint32Field();
    v4 = v42;
    ++v16;
  }

  while (v16 < p_txPacketCountHistograms->count);
LABEL_23:
  if (self->_txDirectRetryAttemptsHistograms.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_txDirectRetryAttemptsHistograms.list[v18];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v18;
    }

    while (v18 < self->_txDirectRetryAttemptsHistograms.count);
  }

  if (self->_txIndirectRetryAttemptsHistograms.count)
  {
    v20 = 0;
    do
    {
      v21 = self->_txIndirectRetryAttemptsHistograms.list[v20];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v20;
    }

    while (v20 < self->_txIndirectRetryAttemptsHistograms.count);
  }

  if (self->_txCcaEnergyDetectedHistograms.count)
  {
    v22 = 0;
    do
    {
      v23 = self->_txCcaEnergyDetectedHistograms.list[v22];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v22;
    }

    while (v22 < self->_txCcaEnergyDetectedHistograms.count);
  }

  if (self->_txDirectNoackHistograms.count)
  {
    v24 = 0;
    do
    {
      v25 = self->_txDirectNoackHistograms.list[v24];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v24;
    }

    while (v24 < self->_txDirectNoackHistograms.count);
  }

  if (self->_txDirectChannelaccessfailureHistograms.count)
  {
    v26 = 0;
    do
    {
      v27 = self->_txDirectChannelaccessfailureHistograms.list[v26];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v26;
    }

    while (v26 < self->_txDirectChannelaccessfailureHistograms.count);
  }

  if (self->_txCsmaBackoffHistograms.count)
  {
    v28 = 0;
    do
    {
      v29 = self->_txCsmaBackoffHistograms.list[v28];
      PBDataWriterWriteUint32Field();
      v4 = v42;
      ++v28;
    }

    while (v28 < self->_txCsmaBackoffHistograms.count);
  }

  v30 = self->_has;
  if ((*&v30 & 0x40) != 0)
  {
    cslTxTotal = self->_cslTxTotal;
    PBDataWriterWriteUint32Field();
    v4 = v42;
    v30 = self->_has;
    if ((*&v30 & 0x20) == 0)
    {
LABEL_43:
      if ((*&v30 & 0x10) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v30 & 0x20) == 0)
  {
    goto LABEL_43;
  }

  cslTxErrNoack = self->_cslTxErrNoack;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 0x10) == 0)
  {
LABEL_44:
    if ((*&v30 & 4) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  cslTxErrCca = self->_cslTxErrCca;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 4) == 0)
  {
LABEL_45:
    if ((*&v30 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

LABEL_58:
  cslTxErrAbort = self->_cslTxErrAbort;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 8) == 0)
  {
LABEL_46:
    if ((*&v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_60;
  }

LABEL_59:
  cslTxErrBusyChannel = self->_cslTxErrBusyChannel;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 1) == 0)
  {
LABEL_47:
    if ((*&v30 & 2) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

LABEL_60:
  cslLossOfSyncDueToCslTimeout = self->_cslLossOfSyncDueToCslTimeout;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 2) == 0)
  {
LABEL_48:
    if ((*&v30 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

LABEL_61:
  cslLossOfSyncDueToMaxRetx = self->_cslLossOfSyncDueToMaxRetx;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 0x8000) == 0)
  {
LABEL_49:
    if ((*&v30 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_62:
  txErrCcaPercentage = self->_txErrCcaPercentage;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 0x800) == 0)
  {
LABEL_50:
    if ((*&v30 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

LABEL_63:
  txErrAbortPercentage = self->_txErrAbortPercentage;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  v30 = self->_has;
  if ((*&v30 & 0x2000) == 0)
  {
LABEL_51:
    if ((*&v30 & 0x10000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_65;
  }

LABEL_64:
  txErrBusyChannelPercentage = self->_txErrBusyChannelPercentage;
  PBDataWriterWriteUint32Field();
  v4 = v42;
  if ((*&self->_has & 0x10000) == 0)
  {
LABEL_52:

    goto LABEL_54;
  }

LABEL_65:
  txErrPercentage = self->_txErrPercentage;
  PBDataWriterWriteUint32Field();
  v4 = v42;

LABEL_54:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v4[62] = self->_txTotal;
    v4[64] |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v4[52] = self->_txData;
  v4[64] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[63] = self->_txUnicast;
  v4[64] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[51] = self->_txBroadcast;
  v4[64] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[58] = self->_txErrCca;
  v4[64] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[54] = self->_txErrAbort;
  v4[64] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[56] = self->_txErrBusyChannel;
  v4[64] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v4[61] = self->_txIndirectMaxRetryExpiry;
    v4[64] |= 0x20000u;
    v28 = v4;
    if (![(AWDCountersMacTxS *)self txPacketCountHistogramsCount])
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  v4[53] = self->_txDirectMaxRetryExpiry;
  v4[64] |= 0x200u;
  if ((*&self->_has & 0x20000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v28 = v4;
  if (![(AWDCountersMacTxS *)self txPacketCountHistogramsCount])
  {
    goto LABEL_24;
  }

LABEL_21:
  [v28 clearTxPacketCountHistograms];
  v6 = [(AWDCountersMacTxS *)self txPacketCountHistogramsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v28 addTxPacketCountHistogram:{-[AWDCountersMacTxS txPacketCountHistogramAtIndex:](self, "txPacketCountHistogramAtIndex:", i)}];
    }
  }

LABEL_24:
  if ([(AWDCountersMacTxS *)self txDirectRetryAttemptsHistogramsCount])
  {
    [v28 clearTxDirectRetryAttemptsHistograms];
    v9 = [(AWDCountersMacTxS *)self txDirectRetryAttemptsHistogramsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v28 addTxDirectRetryAttemptsHistogram:{-[AWDCountersMacTxS txDirectRetryAttemptsHistogramAtIndex:](self, "txDirectRetryAttemptsHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCountersMacTxS *)self txIndirectRetryAttemptsHistogramsCount])
  {
    [v28 clearTxIndirectRetryAttemptsHistograms];
    v12 = [(AWDCountersMacTxS *)self txIndirectRetryAttemptsHistogramsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v28 addTxIndirectRetryAttemptsHistogram:{-[AWDCountersMacTxS txIndirectRetryAttemptsHistogramAtIndex:](self, "txIndirectRetryAttemptsHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDCountersMacTxS *)self txCcaEnergyDetectedHistogramsCount])
  {
    [v28 clearTxCcaEnergyDetectedHistograms];
    v15 = [(AWDCountersMacTxS *)self txCcaEnergyDetectedHistogramsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [v28 addTxCcaEnergyDetectedHistogram:{-[AWDCountersMacTxS txCcaEnergyDetectedHistogramAtIndex:](self, "txCcaEnergyDetectedHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDCountersMacTxS *)self txDirectNoackHistogramsCount])
  {
    [v28 clearTxDirectNoackHistograms];
    v18 = [(AWDCountersMacTxS *)self txDirectNoackHistogramsCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [v28 addTxDirectNoackHistogram:{-[AWDCountersMacTxS txDirectNoackHistogramAtIndex:](self, "txDirectNoackHistogramAtIndex:", n)}];
      }
    }
  }

  if ([(AWDCountersMacTxS *)self txDirectChannelaccessfailureHistogramsCount])
  {
    [v28 clearTxDirectChannelaccessfailureHistograms];
    v21 = [(AWDCountersMacTxS *)self txDirectChannelaccessfailureHistogramsCount];
    if (v21)
    {
      v22 = v21;
      for (ii = 0; ii != v22; ++ii)
      {
        [v28 addTxDirectChannelaccessfailureHistogram:{-[AWDCountersMacTxS txDirectChannelaccessfailureHistogramAtIndex:](self, "txDirectChannelaccessfailureHistogramAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDCountersMacTxS *)self txCsmaBackoffHistogramsCount])
  {
    [v28 clearTxCsmaBackoffHistograms];
    v24 = [(AWDCountersMacTxS *)self txCsmaBackoffHistogramsCount];
    if (v24)
    {
      v25 = v24;
      for (jj = 0; jj != v25; ++jj)
      {
        [v28 addTxCsmaBackoffHistogram:{-[AWDCountersMacTxS txCsmaBackoffHistogramAtIndex:](self, "txCsmaBackoffHistogramAtIndex:", jj)}];
      }
    }
  }

  v27 = self->_has;
  if ((*&v27 & 0x40) != 0)
  {
    v28[50] = self->_cslTxTotal;
    v28[64] |= 0x40u;
    v27 = self->_has;
    if ((*&v27 & 0x20) == 0)
    {
LABEL_50:
      if ((*&v27 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v27 & 0x20) == 0)
  {
    goto LABEL_50;
  }

  v28[49] = self->_cslTxErrNoack;
  v28[64] |= 0x20u;
  v27 = self->_has;
  if ((*&v27 & 0x10) == 0)
  {
LABEL_51:
    if ((*&v27 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_65;
  }

LABEL_64:
  v28[48] = self->_cslTxErrCca;
  v28[64] |= 0x10u;
  v27 = self->_has;
  if ((*&v27 & 4) == 0)
  {
LABEL_52:
    if ((*&v27 & 8) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_66;
  }

LABEL_65:
  v28[46] = self->_cslTxErrAbort;
  v28[64] |= 4u;
  v27 = self->_has;
  if ((*&v27 & 8) == 0)
  {
LABEL_53:
    if ((*&v27 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28[47] = self->_cslTxErrBusyChannel;
  v28[64] |= 8u;
  v27 = self->_has;
  if ((*&v27 & 1) == 0)
  {
LABEL_54:
    if ((*&v27 & 2) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28[44] = self->_cslLossOfSyncDueToCslTimeout;
  v28[64] |= 1u;
  v27 = self->_has;
  if ((*&v27 & 2) == 0)
  {
LABEL_55:
    if ((*&v27 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_69;
  }

LABEL_68:
  v28[45] = self->_cslLossOfSyncDueToMaxRetx;
  v28[64] |= 2u;
  v27 = self->_has;
  if ((*&v27 & 0x8000) == 0)
  {
LABEL_56:
    if ((*&v27 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28[59] = self->_txErrCcaPercentage;
  v28[64] |= 0x8000u;
  v27 = self->_has;
  if ((*&v27 & 0x800) == 0)
  {
LABEL_57:
    if ((*&v27 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28[55] = self->_txErrAbortPercentage;
  v28[64] |= 0x800u;
  v27 = self->_has;
  if ((*&v27 & 0x2000) == 0)
  {
LABEL_58:
    if ((*&v27 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28[57] = self->_txErrBusyChannelPercentage;
  v28[64] |= 0x2000u;
  if ((*&self->_has & 0x10000) == 0)
  {
LABEL_59:

    goto LABEL_61;
  }

LABEL_72:
  v28[60] = self->_txErrPercentage;
  v28[64] |= 0x10000u;

LABEL_61:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v4[62] = self->_txTotal;
    v4[64] |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v4[52] = self->_txData;
  v4[64] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[63] = self->_txUnicast;
  v4[64] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[51] = self->_txBroadcast;
  v4[64] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[58] = self->_txErrCca;
  v4[64] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[54] = self->_txErrAbort;
  v4[64] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[56] = self->_txErrBusyChannel;
  v4[64] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_30:
  v4[53] = self->_txDirectMaxRetryExpiry;
  v4[64] |= 0x200u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_10:
    v4[61] = self->_txIndirectMaxRetryExpiry;
    v4[64] |= 0x20000u;
  }

LABEL_11:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((*&v7 & 0x40) != 0)
  {
    v5[50] = self->_cslTxTotal;
    v5[64] |= 0x40u;
    v7 = self->_has;
    if ((*&v7 & 0x20) == 0)
    {
LABEL_13:
      if ((*&v7 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v7 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v5[49] = self->_cslTxErrNoack;
  v5[64] |= 0x20u;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5[48] = self->_cslTxErrCca;
  v5[64] |= 0x10u;
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_15:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5[46] = self->_cslTxErrAbort;
  v5[64] |= 4u;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_16:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v5[47] = self->_cslTxErrBusyChannel;
  v5[64] |= 8u;
  v7 = self->_has;
  if ((*&v7 & 1) == 0)
  {
LABEL_17:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v5[44] = self->_cslLossOfSyncDueToCslTimeout;
  v5[64] |= 1u;
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v5[45] = self->_cslLossOfSyncDueToMaxRetx;
  v5[64] |= 2u;
  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v5[59] = self->_txErrCcaPercentage;
  v5[64] |= 0x8000u;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

LABEL_41:
    v5[57] = self->_txErrBusyChannelPercentage;
    v5[64] |= 0x2000u;
    if ((*&self->_has & 0x10000) == 0)
    {
      return v5;
    }

    goto LABEL_42;
  }

LABEL_40:
  v5[55] = self->_txErrAbortPercentage;
  v5[64] |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x2000) != 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  if ((*&v7 & 0x10000) == 0)
  {
    return v5;
  }

LABEL_42:
  v5[60] = self->_txErrPercentage;
  v5[64] |= 0x10000u;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_109;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_txTotal != v4[62])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
LABEL_109:
    v9 = 0;
    goto LABEL_110;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_txData != v4[52])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_txUnicast != v4[63])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_txBroadcast != v4[51])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_txErrCca != v4[58])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_txErrAbort != v4[54])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_txErrBusyChannel != v4[56])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_txDirectMaxRetryExpiry != v4[53])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_109;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_txIndirectMaxRetryExpiry != v4[61])
    {
      goto LABEL_109;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_109;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_109;
  }

  v7 = self->_has;
  v8 = v4[64];
  if ((*&v7 & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_cslTxTotal != v4[50])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_cslTxErrNoack != v4[49])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_cslTxErrCca != v4[48])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_cslTxErrAbort != v4[46])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_cslTxErrBusyChannel != v4[47])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_109;
  }

  if (*&v7)
  {
    if ((v8 & 1) == 0 || self->_cslLossOfSyncDueToCslTimeout != v4[44])
    {
      goto LABEL_109;
    }
  }

  else if (v8)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_cslLossOfSyncDueToMaxRetx != v4[45])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_txErrCcaPercentage != v4[59])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_txErrAbortPercentage != v4[55])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_txErrBusyChannelPercentage != v4[57])
    {
      goto LABEL_109;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v7 & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_txErrPercentage != v4[60])
    {
      goto LABEL_109;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x10000) == 0;
  }

LABEL_110:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v32 = 2654435761 * self->_txTotal;
    if ((*&has & 0x100) != 0)
    {
LABEL_3:
      v31 = 2654435761 * self->_txData;
      if ((*&has & 0x80000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_4:
    v30 = 2654435761 * self->_txUnicast;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v30 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v29 = 2654435761 * self->_txBroadcast;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_6:
    v28 = 2654435761 * self->_txErrCca;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v28 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_7:
    v27 = 2654435761 * self->_txErrAbort;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v27 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_8:
    v26 = 2654435761 * self->_txErrBusyChannel;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v25 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v26 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v25 = 2654435761 * self->_txDirectMaxRetryExpiry;
  if ((*&has & 0x20000) != 0)
  {
LABEL_10:
    v4 = 2654435761 * self->_txIndirectMaxRetryExpiry;
    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
LABEL_20:
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = PBRepeatedUInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = self->_has;
  if ((*&v12 & 0x40) != 0)
  {
    v13 = 2654435761 * self->_cslTxTotal;
    if ((*&v12 & 0x20) != 0)
    {
LABEL_22:
      v14 = 2654435761 * self->_cslTxErrNoack;
      if ((*&v12 & 0x10) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_22;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x10) != 0)
  {
LABEL_23:
    v15 = 2654435761 * self->_cslTxErrCca;
    if ((*&v12 & 4) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = 0;
  if ((*&v12 & 4) != 0)
  {
LABEL_24:
    v16 = 2654435761 * self->_cslTxErrAbort;
    if ((*&v12 & 8) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = 0;
  if ((*&v12 & 8) != 0)
  {
LABEL_25:
    v17 = 2654435761 * self->_cslTxErrBusyChannel;
    if (*&v12)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = 0;
  if (*&v12)
  {
LABEL_26:
    v18 = 2654435761 * self->_cslLossOfSyncDueToCslTimeout;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = 0;
  if ((*&v12 & 2) != 0)
  {
LABEL_27:
    v19 = 2654435761 * self->_cslLossOfSyncDueToMaxRetx;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = 0;
  if ((*&v12 & 0x8000) != 0)
  {
LABEL_28:
    v20 = 2654435761 * self->_txErrCcaPercentage;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_29:
    v21 = 2654435761 * self->_txErrAbortPercentage;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_30;
    }

LABEL_41:
    v22 = 0;
    if ((*&v12 & 0x10000) != 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v23 = 0;
    return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_40:
  v21 = 0;
  if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v22 = 2654435761 * self->_txErrBusyChannelPercentage;
  if ((*&v12 & 0x10000) == 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  v23 = 2654435761 * self->_txErrPercentage;
  return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[64];
  if ((v5 & 0x40000) != 0)
  {
    self->_txTotal = v4[62];
    *&self->_has |= 0x40000u;
    v5 = v4[64];
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_txData = v4[52];
  *&self->_has |= 0x100u;
  v5 = v4[64];
  if ((v5 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_txUnicast = v4[63];
  *&self->_has |= 0x80000u;
  v5 = v4[64];
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_txBroadcast = v4[51];
  *&self->_has |= 0x80u;
  v5 = v4[64];
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_txErrCca = v4[58];
  *&self->_has |= 0x4000u;
  v5 = v4[64];
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txErrAbort = v4[54];
  *&self->_has |= 0x400u;
  v5 = v4[64];
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_txErrBusyChannel = v4[56];
  *&self->_has |= 0x1000u;
  v5 = v4[64];
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txDirectMaxRetryExpiry = v4[53];
  *&self->_has |= 0x200u;
  if ((v4[64] & 0x20000) == 0)
  {
LABEL_10:
    v28 = v4;
    v6 = [v4 txPacketCountHistogramsCount];
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txIndirectMaxRetryExpiry = v4[61];
  *&self->_has |= 0x20000u;
  v28 = v4;
  v6 = [v4 txPacketCountHistogramsCount];
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_21:
  v7 = v6;
  for (i = 0; i != v7; ++i)
  {
    -[AWDCountersMacTxS addTxPacketCountHistogram:](self, "addTxPacketCountHistogram:", [v28 txPacketCountHistogramAtIndex:i]);
  }

LABEL_23:
  v9 = [v28 txDirectRetryAttemptsHistogramsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDCountersMacTxS addTxDirectRetryAttemptsHistogram:](self, "addTxDirectRetryAttemptsHistogram:", [v28 txDirectRetryAttemptsHistogramAtIndex:j]);
    }
  }

  v12 = [v28 txIndirectRetryAttemptsHistogramsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[AWDCountersMacTxS addTxIndirectRetryAttemptsHistogram:](self, "addTxIndirectRetryAttemptsHistogram:", [v28 txIndirectRetryAttemptsHistogramAtIndex:k]);
    }
  }

  v15 = [v28 txCcaEnergyDetectedHistogramsCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[AWDCountersMacTxS addTxCcaEnergyDetectedHistogram:](self, "addTxCcaEnergyDetectedHistogram:", [v28 txCcaEnergyDetectedHistogramAtIndex:m]);
    }
  }

  v18 = [v28 txDirectNoackHistogramsCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[AWDCountersMacTxS addTxDirectNoackHistogram:](self, "addTxDirectNoackHistogram:", [v28 txDirectNoackHistogramAtIndex:n]);
    }
  }

  v21 = [v28 txDirectChannelaccessfailureHistogramsCount];
  if (v21)
  {
    v22 = v21;
    for (ii = 0; ii != v22; ++ii)
    {
      -[AWDCountersMacTxS addTxDirectChannelaccessfailureHistogram:](self, "addTxDirectChannelaccessfailureHistogram:", [v28 txDirectChannelaccessfailureHistogramAtIndex:ii]);
    }
  }

  v24 = [v28 txCsmaBackoffHistogramsCount];
  if (v24)
  {
    v25 = v24;
    for (jj = 0; jj != v25; ++jj)
    {
      -[AWDCountersMacTxS addTxCsmaBackoffHistogram:](self, "addTxCsmaBackoffHistogram:", [v28 txCsmaBackoffHistogramAtIndex:jj]);
    }
  }

  v27 = v28[64];
  if ((v27 & 0x40) != 0)
  {
    self->_cslTxTotal = v28[50];
    *&self->_has |= 0x40u;
    v27 = v28[64];
    if ((v27 & 0x20) == 0)
    {
LABEL_43:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    }
  }

  else if ((v27 & 0x20) == 0)
  {
    goto LABEL_43;
  }

  self->_cslTxErrNoack = v28[49];
  *&self->_has |= 0x20u;
  v27 = v28[64];
  if ((v27 & 0x10) == 0)
  {
LABEL_44:
    if ((v27 & 4) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_cslTxErrCca = v28[48];
  *&self->_has |= 0x10u;
  v27 = v28[64];
  if ((v27 & 4) == 0)
  {
LABEL_45:
    if ((v27 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_cslTxErrAbort = v28[46];
  *&self->_has |= 4u;
  v27 = v28[64];
  if ((v27 & 8) == 0)
  {
LABEL_46:
    if ((v27 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_cslTxErrBusyChannel = v28[47];
  *&self->_has |= 8u;
  v27 = v28[64];
  if ((v27 & 1) == 0)
  {
LABEL_47:
    if ((v27 & 2) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_cslLossOfSyncDueToCslTimeout = v28[44];
  *&self->_has |= 1u;
  v27 = v28[64];
  if ((v27 & 2) == 0)
  {
LABEL_48:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_cslLossOfSyncDueToMaxRetx = v28[45];
  *&self->_has |= 2u;
  v27 = v28[64];
  if ((v27 & 0x8000) == 0)
  {
LABEL_49:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_txErrCcaPercentage = v28[59];
  *&self->_has |= 0x8000u;
  v27 = v28[64];
  if ((v27 & 0x800) == 0)
  {
LABEL_50:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_txErrAbortPercentage = v28[55];
  *&self->_has |= 0x800u;
  v27 = v28[64];
  if ((v27 & 0x2000) == 0)
  {
LABEL_51:
    if ((v27 & 0x10000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_txErrBusyChannelPercentage = v28[57];
  *&self->_has |= 0x2000u;
  if ((v28[64] & 0x10000) == 0)
  {
LABEL_52:

    goto LABEL_54;
  }

LABEL_65:
  self->_txErrPercentage = v28[60];
  *&self->_has |= 0x10000u;

LABEL_54:
}

@end
@interface AWDCountersRadioS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnergyDetectedEvents:(BOOL)events;
- (void)setHasEnergyDetectedRequests:(BOOL)requests;
- (void)setHasListeningTime:(BOOL)time;
- (void)setHasRadioReceivedFrames:(BOOL)frames;
- (void)setHasRadioStatusDoubleNotification:(BOOL)notification;
- (void)setHasReceivedEnergyEvents:(BOOL)events;
- (void)setHasReceivedFrames:(BOOL)frames;
- (void)setHasReceivedPreambles:(BOOL)preambles;
- (void)setHasReceivingTime:(BOOL)time;
- (void)setHasRetryInterval90perc:(BOOL)interval90perc;
- (void)setHasRetryIntervalAvg:(BOOL)avg;
- (void)setHasRetryIntervalMax:(BOOL)max;
- (void)setHasRetryIntervalMin:(BOOL)min;
- (void)setHasRtt90perc:(BOOL)rtt90perc;
- (void)setHasRttAvgVal:(BOOL)val;
- (void)setHasRttMaxVal:(BOOL)val;
- (void)setHasRttMinVal:(BOOL)val;
- (void)setHasRxErrorAborted:(BOOL)aborted;
- (void)setHasRxErrorAckAborted:(BOOL)aborted;
- (void)setHasRxErrorAckDenied:(BOOL)denied;
- (void)setHasRxErrorAckFailedRadioDelay:(BOOL)delay;
- (void)setHasRxErrorAckFailedRadioState:(BOOL)state;
- (void)setHasRxErrorDelayedTimeout:(BOOL)timeout;
- (void)setHasRxErrorDelayedTimeslotEnded:(BOOL)ended;
- (void)setHasRxErrorDestAddrFiltered:(BOOL)filtered;
- (void)setHasRxErrorInvalidData:(BOOL)data;
- (void)setHasRxErrorInvalidFcs:(BOOL)fcs;
- (void)setHasRxErrorInvalidFrame:(BOOL)frame;
- (void)setHasRxErrorInvalidLength:(BOOL)length;
- (void)setHasRxErrorReceiveFailed:(BOOL)failed;
- (void)setHasRxErrorRuntimeDelay:(BOOL)delay;
- (void)setHasRxErrorTimeslotEnded:(BOOL)ended;
- (void)setHasSleepState:(BOOL)state;
- (void)setHasTransmittedFrames:(BOOL)frames;
- (void)setHasTransmittingTime:(BOOL)time;
- (void)setHasTxDelay90perc:(BOOL)delay90perc;
- (void)setHasTxDelayAvg:(BOOL)avg;
- (void)setHasTxDelayMax:(BOOL)max;
- (void)setHasTxDelayMin:(BOOL)min;
- (void)setHasTxErrorAckNoMem:(BOOL)mem;
- (void)setHasTxErrorBusyChannelCcaNotStarted:(BOOL)started;
- (void)setHasTxErrorChannelAccessCcaBusy:(BOOL)busy;
- (void)setHasTxErrorChannelAccessFailure:(BOOL)failure;
- (void)setHasTxErrorInvalidAck:(BOOL)ack;
- (void)setHasTxErrorNoAck:(BOOL)ack;
- (void)setHasTxErrorNotGranted:(BOOL)granted;
- (void)setHasTxErrorTimeslotDenied:(BOOL)denied;
- (void)setHasTxErrorTimeslotEnded:(BOOL)ended;
- (void)setHasTxErrorTxAborted:(BOOL)aborted;
- (void)setHasTxErrorTxAbortedCcaTx:(BOOL)tx;
- (void)setHasTxErrorTxAbortedCsmaBackoff:(BOOL)backoff;
- (void)setHasTxErrorTxAbortedCsmaCfgBackoff:(BOOL)backoff;
- (void)setHasTxErrorTxAbortedCsmaPrepare:(BOOL)prepare;
- (void)setHasTxErrorTxAbortedIfs:(BOOL)ifs;
- (void)setHasTxErrorTxAbortedRxAck:(BOOL)ack;
- (void)setHasTxErrorTxAbortedTx:(BOOL)tx;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersRadioS

- (void)setHasRadioReceivedFrames:(BOOL)frames
{
  v3 = 16;
  if (!frames)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasReceivedEnergyEvents:(BOOL)events
{
  v3 = 64;
  if (!events)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasReceivedPreambles:(BOOL)preambles
{
  v3 = 256;
  if (!preambles)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasRttMinVal:(BOOL)val
{
  v3 = 0x20000;
  if (!val)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasRttMaxVal:(BOOL)val
{
  v3 = 0x10000;
  if (!val)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasRttAvgVal:(BOOL)val
{
  v3 = 0x8000;
  if (!val)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasRtt90perc:(BOOL)rtt90perc
{
  v3 = 0x4000;
  if (!rtt90perc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasRetryIntervalMin:(BOOL)min
{
  v3 = 0x2000;
  if (!min)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasRetryIntervalMax:(BOOL)max
{
  v3 = 4096;
  if (!max)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasRetryIntervalAvg:(BOOL)avg
{
  v3 = 2048;
  if (!avg)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasRetryInterval90perc:(BOOL)interval90perc
{
  v3 = 1024;
  if (!interval90perc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTxDelayMin:(BOOL)min
{
  v3 = 0x8000000000;
  if (!min)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasTxDelayMax:(BOOL)max
{
  v3 = 0x4000000000;
  if (!max)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTxDelayAvg:(BOOL)avg
{
  v3 = 0x2000000000;
  if (!avg)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasTxDelay90perc:(BOOL)delay90perc
{
  v3 = 0x1000000000;
  if (!delay90perc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasListeningTime:(BOOL)time
{
  v3 = 8;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasReceivingTime:(BOOL)time
{
  v3 = 512;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasTransmittingTime:(BOOL)time
{
  v3 = 0x800000000;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasTransmittedFrames:(BOOL)frames
{
  v3 = 0x400000000;
  if (!frames)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTimeslotEnded:(BOOL)ended
{
  v3 = 0x1000000000000;
  if (!ended)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTimeslotDenied:(BOOL)denied
{
  v3 = 0x800000000000;
  if (!denied)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorBusyChannelCcaNotStarted:(BOOL)started
{
  v3 = 0x20000000000;
  if (!started)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorChannelAccessCcaBusy:(BOOL)busy
{
  v3 = 0x40000000000;
  if (!busy)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorChannelAccessFailure:(BOOL)failure
{
  v3 = 0x80000000000;
  if (!failure)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAborted:(BOOL)aborted
{
  v3 = 0x2000000000000;
  if (!aborted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedCsmaCfgBackoff:(BOOL)backoff
{
  v3 = 0x10000000000000;
  if (!backoff)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedCsmaBackoff:(BOOL)backoff
{
  v3 = 0x8000000000000;
  if (!backoff)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedCsmaPrepare:(BOOL)prepare
{
  v3 = 0x20000000000000;
  if (!prepare)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedIfs:(BOOL)ifs
{
  v3 = 0x40000000000000;
  if (!ifs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedRxAck:(BOOL)ack
{
  v3 = 0x80000000000000;
  if (!ack)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedCcaTx:(BOOL)tx
{
  v3 = 0x4000000000000;
  if (!tx)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorTxAbortedTx:(BOOL)tx
{
  v3 = 0x100000000000000;
  if (!tx)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorNotGranted:(BOOL)granted
{
  v3 = 0x400000000000;
  if (!granted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorInvalidAck:(BOOL)ack
{
  v3 = 0x100000000000;
  if (!ack)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorNoAck:(BOOL)ack
{
  v3 = 0x200000000000;
  if (!ack)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasTxErrorAckNoMem:(BOOL)mem
{
  v3 = 0x10000000000;
  if (!mem)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasReceivedFrames:(BOOL)frames
{
  v3 = 128;
  if (!frames)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasRxErrorReceiveFailed:(BOOL)failed
{
  v3 = 0x40000000;
  if (!failed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasRxErrorInvalidFrame:(BOOL)frame
{
  v3 = 0x10000000;
  if (!frame)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasRxErrorDelayedTimeout:(BOOL)timeout
{
  v3 = 0x800000;
  if (!timeout)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasRxErrorInvalidFcs:(BOOL)fcs
{
  v3 = 0x8000000;
  if (!fcs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasRxErrorDestAddrFiltered:(BOOL)filtered
{
  v3 = 0x2000000;
  if (!filtered)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasRxErrorRuntimeDelay:(BOOL)delay
{
  v3 = 0x80000000;
  if (!delay)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasRxErrorTimeslotEnded:(BOOL)ended
{
  v3 = &_mh_execute_header;
  if (!ended)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasRxErrorAborted:(BOOL)aborted
{
  v3 = 0x40000;
  if (!aborted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasRxErrorDelayedTimeslotEnded:(BOOL)ended
{
  v3 = 0x1000000;
  if (!ended)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasRxErrorInvalidLength:(BOOL)length
{
  v3 = 0x20000000;
  if (!length)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasRxErrorInvalidData:(BOOL)data
{
  v3 = 0x4000000;
  if (!data)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasRxErrorAckFailedRadioState:(BOOL)state
{
  v3 = 0x400000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasRxErrorAckFailedRadioDelay:(BOOL)delay
{
  v3 = 0x200000;
  if (!delay)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasRxErrorAckDenied:(BOOL)denied
{
  v3 = 0x100000;
  if (!denied)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasRxErrorAckAborted:(BOOL)aborted
{
  v3 = 0x80000;
  if (!aborted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSleepState:(BOOL)state
{
  v3 = 0x200000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasEnergyDetectedRequests:(BOOL)requests
{
  v3 = 4;
  if (!requests)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasEnergyDetectedEvents:(BOOL)events
{
  v3 = 2;
  if (!events)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasRadioStatusDoubleNotification:(BOOL)notification
{
  v3 = 32;
  if (!notification)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersRadioS;
  v3 = [(AWDCountersRadioS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersRadioS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_ccaFailedAttempts];
    [v3 setObject:v11 forKey:@"cca_failed_attempts"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_radioReceivedFrames];
  [v3 setObject:v12 forKey:@"radio_received_frames"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  v13 = [NSNumber numberWithUnsignedInt:self->_receivedEnergyEvents];
  [v3 setObject:v13 forKey:@"received_energy_events"];

  if ((*&self->_has & 0x100) == 0)
  {
LABEL_5:
    sRadioStats = self->_sRadioStats;
    if (!sRadioStats)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_65:
  v14 = [NSNumber numberWithUnsignedInt:self->_receivedPreambles];
  [v3 setObject:v14 forKey:@"received_preambles"];

  sRadioStats = self->_sRadioStats;
  if (sRadioStats)
  {
LABEL_6:
    dictionaryRepresentation = [(AWDRadioStatsS *)sRadioStats dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"s_radio_stats"];
  }

LABEL_7:
  v7 = self->_has;
  if ((*&v7 & 0x20000) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_rttMinVal];
    [v3 setObject:v15 forKey:@"rtt_min_val"];

    v7 = self->_has;
    if ((*&v7 & 0x10000) == 0)
    {
LABEL_9:
      if ((*&v7 & 0x8000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v7 & 0x10000) == 0)
  {
    goto LABEL_9;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_rttMaxVal];
  [v3 setObject:v16 forKey:@"rtt_max_val"];

  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_10:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  v17 = [NSNumber numberWithUnsignedInt:self->_rttAvgVal];
  [v3 setObject:v17 forKey:@"rtt_avg_val"];

  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_11:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  v18 = [NSNumber numberWithUnsignedInt:self->_rtt90perc];
  [v3 setObject:v18 forKey:@"rtt_90perc"];

  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_12:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_71:
  v19 = [NSNumber numberWithUnsignedInt:self->_retryIntervalMin];
  [v3 setObject:v19 forKey:@"retry_interval_min"];

  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_73;
  }

LABEL_72:
  v20 = [NSNumber numberWithUnsignedInt:self->_retryIntervalMax];
  [v3 setObject:v20 forKey:@"retry_interval_max"];

  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_74;
  }

LABEL_73:
  v21 = [NSNumber numberWithUnsignedInt:self->_retryIntervalAvg];
  [v3 setObject:v21 forKey:@"retry_interval_avg"];

  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x8000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_75;
  }

LABEL_74:
  v22 = [NSNumber numberWithUnsignedInt:self->_retryInterval90perc];
  [v3 setObject:v22 forKey:@"retry_interval_90perc"];

  v7 = self->_has;
  if ((*&v7 & 0x8000000000) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_76;
  }

LABEL_75:
  v23 = [NSNumber numberWithUnsignedInt:self->_txDelayMin];
  [v3 setObject:v23 forKey:@"tx_delay_min"];

  v7 = self->_has;
  if ((*&v7 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_76:
  v24 = [NSNumber numberWithUnsignedInt:self->_txDelayMax];
  [v3 setObject:v24 forKey:@"tx_delay_max"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x1000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

LABEL_77:
  v25 = [NSNumber numberWithUnsignedInt:self->_txDelayAvg];
  [v3 setObject:v25 forKey:@"tx_delay_avg"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000000) == 0)
  {
LABEL_19:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_79;
  }

LABEL_78:
  v26 = [NSNumber numberWithUnsignedInt:self->_txDelay90perc];
  [v3 setObject:v26 forKey:@"tx_delay_90perc"];

  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_80;
  }

LABEL_79:
  v27 = [NSNumber numberWithUnsignedInt:self->_listeningTime];
  [v3 setObject:v27 forKey:@"listening_time"];

  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = [NSNumber numberWithUnsignedInt:self->_receivingTime];
  [v3 setObject:v28 forKey:@"receiving_time"];

  v7 = self->_has;
  if ((*&v7 & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_81:
  v29 = [NSNumber numberWithUnsignedInt:self->_transmittingTime];
  [v3 setObject:v29 forKey:@"transmitting_time"];

  v7 = self->_has;
  if ((*&v7 & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x1000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_83;
  }

LABEL_82:
  v30 = [NSNumber numberWithUnsignedInt:self->_transmittedFrames];
  [v3 setObject:v30 forKey:@"transmitted_frames"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000000000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x800000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_84;
  }

LABEL_83:
  v31 = [NSNumber numberWithUnsignedInt:self->_txErrorTimeslotEnded];
  [v3 setObject:v31 forKey:@"tx_error_timeslot_ended"];

  v7 = self->_has;
  if ((*&v7 & 0x800000000000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_85;
  }

LABEL_84:
  v32 = [NSNumber numberWithUnsignedInt:self->_txErrorTimeslotDenied];
  [v3 setObject:v32 forKey:@"tx_error_timeslot_denied"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x40000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_86;
  }

LABEL_85:
  v33 = [NSNumber numberWithUnsignedInt:self->_txErrorBusyChannelCcaNotStarted];
  [v3 setObject:v33 forKey:@"tx_error_busy_channel_cca_not_started"];

  v7 = self->_has;
  if ((*&v7 & 0x40000000000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_87;
  }

LABEL_86:
  v34 = [NSNumber numberWithUnsignedInt:self->_txErrorChannelAccessCcaBusy];
  [v3 setObject:v34 forKey:@"tx_error_channel_access_cca_busy"];

  v7 = self->_has;
  if ((*&v7 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x2000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_88;
  }

LABEL_87:
  v35 = [NSNumber numberWithUnsignedInt:self->_txErrorChannelAccessFailure];
  [v3 setObject:v35 forKey:@"tx_error_channel_access_failure"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000000000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x10000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_89;
  }

LABEL_88:
  v36 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAborted];
  [v3 setObject:v36 forKey:@"tx_error_tx_aborted"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000000000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x8000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_90;
  }

LABEL_89:
  v37 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedCsmaCfgBackoff];
  [v3 setObject:v37 forKey:@"tx_error_tx_aborted_csma_cfg_backoff"];

  v7 = self->_has;
  if ((*&v7 & 0x8000000000000) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x20000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_91;
  }

LABEL_90:
  v38 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedCsmaBackoff];
  [v3 setObject:v38 forKey:@"tx_error_tx_aborted_csma_backoff"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_92;
  }

LABEL_91:
  v39 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedCsmaPrepare];
  [v3 setObject:v39 forKey:@"tx_error_tx_aborted_csma_prepare"];

  v7 = self->_has;
  if ((*&v7 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x80000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_93;
  }

LABEL_92:
  v40 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedIfs];
  [v3 setObject:v40 forKey:@"tx_error_tx_aborted_ifs"];

  v7 = self->_has;
  if ((*&v7 & 0x80000000000000) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_94;
  }

LABEL_93:
  v41 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedRxAck];
  [v3 setObject:v41 forKey:@"tx_error_tx_aborted_rx_ack"];

  v7 = self->_has;
  if ((*&v7 & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x100000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_95;
  }

LABEL_94:
  v42 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedCcaTx];
  [v3 setObject:v42 forKey:@"tx_error_tx_aborted_cca_tx"];

  v7 = self->_has;
  if ((*&v7 & 0x100000000000000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x400000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_96;
  }

LABEL_95:
  v43 = [NSNumber numberWithUnsignedInt:self->_txErrorTxAbortedTx];
  [v3 setObject:v43 forKey:@"tx_error_tx_aborted_tx"];

  v7 = self->_has;
  if ((*&v7 & 0x400000000000) == 0)
  {
LABEL_37:
    if ((*&v7 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_97;
  }

LABEL_96:
  v44 = [NSNumber numberWithUnsignedInt:self->_txErrorNotGranted];
  [v3 setObject:v44 forKey:@"tx_error_not_granted"];

  v7 = self->_has;
  if ((*&v7 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((*&v7 & 0x200000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_98;
  }

LABEL_97:
  v45 = [NSNumber numberWithUnsignedInt:self->_txErrorInvalidAck];
  [v3 setObject:v45 forKey:@"tx_error_invalid_ack"];

  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_39:
    if ((*&v7 & 0x10000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_99;
  }

LABEL_98:
  v46 = [NSNumber numberWithUnsignedInt:self->_txErrorNoAck];
  [v3 setObject:v46 forKey:@"tx_error_no_ack"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000000) == 0)
  {
LABEL_40:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_100;
  }

LABEL_99:
  v47 = [NSNumber numberWithUnsignedInt:self->_txErrorAckNoMem];
  [v3 setObject:v47 forKey:@"tx_error_ack_no_mem"];

  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_41:
    if ((*&v7 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_101;
  }

LABEL_100:
  v48 = [NSNumber numberWithUnsignedInt:self->_receivedFrames];
  [v3 setObject:v48 forKey:@"received_frames"];

  v7 = self->_has;
  if ((*&v7 & 0x40000000) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_102;
  }

LABEL_101:
  v49 = [NSNumber numberWithUnsignedInt:self->_rxErrorReceiveFailed];
  [v3 setObject:v49 forKey:@"rx_error_receive_failed"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_103;
  }

LABEL_102:
  v50 = [NSNumber numberWithUnsignedInt:self->_rxErrorInvalidFrame];
  [v3 setObject:v50 forKey:@"rx_error_invalid_frame"];

  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_44:
    if ((*&v7 & 0x8000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_104;
  }

LABEL_103:
  v51 = [NSNumber numberWithUnsignedInt:self->_rxErrorDelayedTimeout];
  [v3 setObject:v51 forKey:@"rx_error_delayed_timeout"];

  v7 = self->_has;
  if ((*&v7 & 0x8000000) == 0)
  {
LABEL_45:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_105;
  }

LABEL_104:
  v52 = [NSNumber numberWithUnsignedInt:self->_rxErrorInvalidFcs];
  [v3 setObject:v52 forKey:@"rx_error_invalid_fcs"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&v7 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_106;
  }

LABEL_105:
  v53 = [NSNumber numberWithUnsignedInt:self->_rxErrorDestAddrFiltered];
  [v3 setObject:v53 forKey:@"rx_error_dest_addr_filtered"];

  v7 = self->_has;
  if ((*&v7 & 0x80000000) == 0)
  {
LABEL_47:
    if ((*&v7 & 0x100000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_107;
  }

LABEL_106:
  v54 = [NSNumber numberWithUnsignedInt:self->_rxErrorRuntimeDelay];
  [v3 setObject:v54 forKey:@"rx_error_runtime_delay"];

  v7 = self->_has;
  if ((*&v7 & 0x100000000) == 0)
  {
LABEL_48:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_108;
  }

LABEL_107:
  v55 = [NSNumber numberWithUnsignedInt:self->_rxErrorTimeslotEnded];
  [v3 setObject:v55 forKey:@"rx_error_timeslot_ended"];

  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_49:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_109;
  }

LABEL_108:
  v56 = [NSNumber numberWithUnsignedInt:self->_rxErrorAborted];
  [v3 setObject:v56 forKey:@"rx_error_aborted"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_50:
    if ((*&v7 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_110;
  }

LABEL_109:
  v57 = [NSNumber numberWithUnsignedInt:self->_rxErrorDelayedTimeslotEnded];
  [v3 setObject:v57 forKey:@"rx_error_delayed_timeslot_ended"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000) == 0)
  {
LABEL_51:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_111;
  }

LABEL_110:
  v58 = [NSNumber numberWithUnsignedInt:self->_rxErrorInvalidLength];
  [v3 setObject:v58 forKey:@"rx_error_invalid_length"];

  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_52:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_112;
  }

LABEL_111:
  v59 = [NSNumber numberWithUnsignedInt:self->_rxErrorInvalidData];
  [v3 setObject:v59 forKey:@"rx_error_invalid_data"];

  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_53:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_113;
  }

LABEL_112:
  v60 = [NSNumber numberWithUnsignedInt:self->_rxErrorAckFailedRadioState];
  [v3 setObject:v60 forKey:@"rx_error_ack_failed_radio_state"];

  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_54:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_114;
  }

LABEL_113:
  v61 = [NSNumber numberWithUnsignedInt:self->_rxErrorAckFailedRadioDelay];
  [v3 setObject:v61 forKey:@"rx_error_ack_failed_radio_delay"];

  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_55:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_115;
  }

LABEL_114:
  v62 = [NSNumber numberWithUnsignedInt:self->_rxErrorAckDenied];
  [v3 setObject:v62 forKey:@"rx_error_ack_denied"];

  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_56:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

LABEL_115:
  v63 = [NSNumber numberWithUnsignedInt:self->_rxErrorAckAborted];
  [v3 setObject:v63 forKey:@"rx_error_ack_aborted"];

  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_117;
  }

LABEL_116:
  v64 = [NSNumber numberWithUnsignedInt:self->_sleepState];
  [v3 setObject:v64 forKey:@"sleep_state"];

  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_58:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_59;
    }

LABEL_118:
    v66 = [NSNumber numberWithUnsignedInt:self->_energyDetectedEvents];
    [v3 setObject:v66 forKey:@"energy_detected_events"];

    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_117:
  v65 = [NSNumber numberWithUnsignedInt:self->_energyDetectedRequests];
  [v3 setObject:v65 forKey:@"energy_detected_requests"];

  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    goto LABEL_118;
  }

LABEL_59:
  if ((*&v7 & 0x20) != 0)
  {
LABEL_60:
    v8 = [NSNumber numberWithUnsignedInt:self->_radioStatusDoubleNotification];
    [v3 setObject:v8 forKey:@"radio_status_double_notification"];
  }

LABEL_61:
  v9 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    ccaFailedAttempts = self->_ccaFailedAttempts;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  radioReceivedFrames = self->_radioReceivedFrames;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  receivedEnergyEvents = self->_receivedEnergyEvents;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) == 0)
  {
LABEL_5:
    if (!self->_sRadioStats)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_66:
  receivedPreambles = self->_receivedPreambles;
  PBDataWriterWriteUint32Field();
  if (self->_sRadioStats)
  {
LABEL_6:
    PBDataWriterWriteSubmessage();
  }

LABEL_7:
  v5 = self->_has;
  if ((*&v5 & 0x20000) != 0)
  {
    rttMinVal = self->_rttMinVal;
    PBDataWriterWriteUint32Field();
    v5 = self->_has;
    if ((*&v5 & 0x10000) == 0)
    {
LABEL_9:
      if ((*&v5 & 0x8000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_70;
    }
  }

  else if ((*&v5 & 0x10000) == 0)
  {
    goto LABEL_9;
  }

  rttMaxVal = self->_rttMaxVal;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((*&v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  rttAvgVal = self->_rttAvgVal;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((*&v5 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  rtt90perc = self->_rtt90perc;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((*&v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  retryIntervalMin = self->_retryIntervalMin;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  retryIntervalMax = self->_retryIntervalMax;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x800) == 0)
  {
LABEL_14:
    if ((*&v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  retryIntervalAvg = self->_retryIntervalAvg;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x400) == 0)
  {
LABEL_15:
    if ((*&v5 & 0x8000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  retryInterval90perc = self->_retryInterval90perc;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x8000000000) == 0)
  {
LABEL_16:
    if ((*&v5 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  txDelayMin = self->_txDelayMin;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((*&v5 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  txDelayMax = self->_txDelayMax;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((*&v5 & 0x1000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  txDelayAvg = self->_txDelayAvg;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x1000000000) == 0)
  {
LABEL_19:
    if ((*&v5 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  txDelay90perc = self->_txDelay90perc;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 8) == 0)
  {
LABEL_20:
    if ((*&v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  listeningTime = self->_listeningTime;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x200) == 0)
  {
LABEL_21:
    if ((*&v5 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_81:
  receivingTime = self->_receivingTime;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&v5 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  transmittingTime = self->_transmittingTime;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&v5 & 0x1000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  transmittedFrames = self->_transmittedFrames;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x1000000000000) == 0)
  {
LABEL_24:
    if ((*&v5 & 0x800000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  txErrorTimeslotEnded = self->_txErrorTimeslotEnded;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x800000000000) == 0)
  {
LABEL_25:
    if ((*&v5 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

LABEL_85:
  txErrorTimeslotDenied = self->_txErrorTimeslotDenied;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x20000000000) == 0)
  {
LABEL_26:
    if ((*&v5 & 0x40000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  txErrorBusyChannelCcaNotStarted = self->_txErrorBusyChannelCcaNotStarted;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x40000000000) == 0)
  {
LABEL_27:
    if ((*&v5 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  txErrorChannelAccessCcaBusy = self->_txErrorChannelAccessCcaBusy;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((*&v5 & 0x2000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  txErrorChannelAccessFailure = self->_txErrorChannelAccessFailure;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x2000000000000) == 0)
  {
LABEL_29:
    if ((*&v5 & 0x10000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_89:
  txErrorTxAborted = self->_txErrorTxAborted;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x10000000000000) == 0)
  {
LABEL_30:
    if ((*&v5 & 0x8000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

LABEL_90:
  txErrorTxAbortedCsmaCfgBackoff = self->_txErrorTxAbortedCsmaCfgBackoff;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x8000000000000) == 0)
  {
LABEL_31:
    if ((*&v5 & 0x20000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_92;
  }

LABEL_91:
  txErrorTxAbortedCsmaBackoff = self->_txErrorTxAbortedCsmaBackoff;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x20000000000000) == 0)
  {
LABEL_32:
    if ((*&v5 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_93;
  }

LABEL_92:
  txErrorTxAbortedCsmaPrepare = self->_txErrorTxAbortedCsmaPrepare;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&v5 & 0x80000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_94;
  }

LABEL_93:
  txErrorTxAbortedIfs = self->_txErrorTxAbortedIfs;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x80000000000000) == 0)
  {
LABEL_34:
    if ((*&v5 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_95;
  }

LABEL_94:
  txErrorTxAbortedRxAck = self->_txErrorTxAbortedRxAck;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((*&v5 & 0x100000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_96;
  }

LABEL_95:
  txErrorTxAbortedCcaTx = self->_txErrorTxAbortedCcaTx;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x100000000000000) == 0)
  {
LABEL_36:
    if ((*&v5 & 0x400000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_97;
  }

LABEL_96:
  txErrorTxAbortedTx = self->_txErrorTxAbortedTx;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x400000000000) == 0)
  {
LABEL_37:
    if ((*&v5 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_98;
  }

LABEL_97:
  txErrorNotGranted = self->_txErrorNotGranted;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((*&v5 & 0x200000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_99;
  }

LABEL_98:
  txErrorInvalidAck = self->_txErrorInvalidAck;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x200000000000) == 0)
  {
LABEL_39:
    if ((*&v5 & 0x10000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_100;
  }

LABEL_99:
  txErrorNoAck = self->_txErrorNoAck;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x10000000000) == 0)
  {
LABEL_40:
    if ((*&v5 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_101;
  }

LABEL_100:
  txErrorAckNoMem = self->_txErrorAckNoMem;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x80) == 0)
  {
LABEL_41:
    if ((*&v5 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_102;
  }

LABEL_101:
  receivedFrames = self->_receivedFrames;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x40000000) == 0)
  {
LABEL_42:
    if ((*&v5 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_103;
  }

LABEL_102:
  rxErrorReceiveFailed = self->_rxErrorReceiveFailed;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x10000000) == 0)
  {
LABEL_43:
    if ((*&v5 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_104;
  }

LABEL_103:
  rxErrorInvalidFrame = self->_rxErrorInvalidFrame;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x800000) == 0)
  {
LABEL_44:
    if ((*&v5 & 0x8000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_105;
  }

LABEL_104:
  rxErrorDelayedTimeout = self->_rxErrorDelayedTimeout;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x8000000) == 0)
  {
LABEL_45:
    if ((*&v5 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_106;
  }

LABEL_105:
  rxErrorInvalidFcs = self->_rxErrorInvalidFcs;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&v5 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_107;
  }

LABEL_106:
  rxErrorDestAddrFiltered = self->_rxErrorDestAddrFiltered;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x80000000) == 0)
  {
LABEL_47:
    if ((*&v5 & 0x100000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_108;
  }

LABEL_107:
  rxErrorRuntimeDelay = self->_rxErrorRuntimeDelay;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x100000000) == 0)
  {
LABEL_48:
    if ((*&v5 & 0x40000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_109;
  }

LABEL_108:
  rxErrorTimeslotEnded = self->_rxErrorTimeslotEnded;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x40000) == 0)
  {
LABEL_49:
    if ((*&v5 & 0x1000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_109:
  rxErrorAborted = self->_rxErrorAborted;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x1000000) == 0)
  {
LABEL_50:
    if ((*&v5 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_111;
  }

LABEL_110:
  rxErrorDelayedTimeslotEnded = self->_rxErrorDelayedTimeslotEnded;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x20000000) == 0)
  {
LABEL_51:
    if ((*&v5 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_112;
  }

LABEL_111:
  rxErrorInvalidLength = self->_rxErrorInvalidLength;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x4000000) == 0)
  {
LABEL_52:
    if ((*&v5 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_113;
  }

LABEL_112:
  rxErrorInvalidData = self->_rxErrorInvalidData;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x400000) == 0)
  {
LABEL_53:
    if ((*&v5 & 0x200000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_114;
  }

LABEL_113:
  rxErrorAckFailedRadioState = self->_rxErrorAckFailedRadioState;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x200000) == 0)
  {
LABEL_54:
    if ((*&v5 & 0x100000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_115;
  }

LABEL_114:
  rxErrorAckFailedRadioDelay = self->_rxErrorAckFailedRadioDelay;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x100000) == 0)
  {
LABEL_55:
    if ((*&v5 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_116;
  }

LABEL_115:
  rxErrorAckDenied = self->_rxErrorAckDenied;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x80000) == 0)
  {
LABEL_56:
    if ((*&v5 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_117;
  }

LABEL_116:
  rxErrorAckAborted = self->_rxErrorAckAborted;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v5 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_118;
  }

LABEL_117:
  sleepState = self->_sleepState;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 4) == 0)
  {
LABEL_58:
    if ((*&v5 & 2) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_119;
  }

LABEL_118:
  energyDetectedRequests = self->_energyDetectedRequests;
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((*&v5 & 2) == 0)
  {
LABEL_59:
    if ((*&v5 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_120;
  }

LABEL_119:
  energyDetectedEvents = self->_energyDetectedEvents;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) == 0)
  {
LABEL_60:
    v6 = toCopy;

    goto LABEL_62;
  }

LABEL_120:
  radioStatusDoubleNotification = self->_radioStatusDoubleNotification;
  PBDataWriterWriteUint32Field();
  v6 = toCopy;

LABEL_62:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[2] = self->_ccaFailedAttempts;
    *(toCopy + 31) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = self->_radioReceivedFrames;
  *(toCopy + 31) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  toCopy[8] = self->_receivedEnergyEvents;
  *(toCopy + 31) |= 0x40uLL;
  if ((*&self->_has & 0x100) == 0)
  {
LABEL_5:
    if (!self->_sRadioStats)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_66:
  toCopy[10] = self->_receivedPreambles;
  *(toCopy + 31) |= 0x100uLL;
  if (self->_sRadioStats)
  {
LABEL_6:
    v7 = toCopy;
    [toCopy setSRadioStats:?];
    toCopy = v7;
  }

LABEL_7:
  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    toCopy[19] = self->_rttMinVal;
    *(toCopy + 31) |= 0x20000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x10000) == 0)
    {
LABEL_9:
      if ((*&v6 & 0x8000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_70;
    }
  }

  else if ((*&v6 & 0x10000) == 0)
  {
    goto LABEL_9;
  }

  toCopy[18] = self->_rttMaxVal;
  *(toCopy + 31) |= 0x10000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_10:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  toCopy[17] = self->_rttAvgVal;
  *(toCopy + 31) |= 0x8000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_11:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  toCopy[16] = self->_rtt90perc;
  *(toCopy + 31) |= 0x4000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  toCopy[15] = self->_retryIntervalMin;
  *(toCopy + 31) |= 0x2000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  toCopy[14] = self->_retryIntervalMax;
  *(toCopy + 31) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  toCopy[13] = self->_retryIntervalAvg;
  *(toCopy + 31) |= 0x800uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x8000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  toCopy[12] = self->_retryInterval90perc;
  *(toCopy + 31) |= 0x400uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000000000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  toCopy[44] = self->_txDelayMin;
  *(toCopy + 31) |= 0x8000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  toCopy[43] = self->_txDelayMax;
  *(toCopy + 31) |= 0x4000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x1000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  toCopy[42] = self->_txDelayAvg;
  *(toCopy + 31) |= 0x2000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  toCopy[41] = self->_txDelay90perc;
  *(toCopy + 31) |= 0x1000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  toCopy[5] = self->_listeningTime;
  *(toCopy + 31) |= 8uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_81:
  toCopy[11] = self->_receivingTime;
  *(toCopy + 31) |= 0x200uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  toCopy[40] = self->_transmittingTime;
  *(toCopy + 31) |= 0x800000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x1000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  toCopy[39] = self->_transmittedFrames;
  *(toCopy + 31) |= 0x400000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000000000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x800000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  toCopy[53] = self->_txErrorTimeslotEnded;
  *(toCopy + 31) |= 0x1000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000000000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

LABEL_85:
  toCopy[52] = self->_txErrorTimeslotDenied;
  *(toCopy + 31) |= 0x800000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000000000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  toCopy[46] = self->_txErrorBusyChannelCcaNotStarted;
  *(toCopy + 31) |= 0x20000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  toCopy[47] = self->_txErrorChannelAccessCcaBusy;
  *(toCopy + 31) |= 0x40000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x2000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  toCopy[48] = self->_txErrorChannelAccessFailure;
  *(toCopy + 31) |= 0x80000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000000000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x10000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_89:
  toCopy[54] = self->_txErrorTxAborted;
  *(toCopy + 31) |= 0x2000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000000000000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x8000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

LABEL_90:
  toCopy[57] = self->_txErrorTxAbortedCsmaCfgBackoff;
  *(toCopy + 31) |= 0x10000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000000000000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x20000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_92;
  }

LABEL_91:
  toCopy[56] = self->_txErrorTxAbortedCsmaBackoff;
  *(toCopy + 31) |= 0x8000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000000000000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_93;
  }

LABEL_92:
  toCopy[58] = self->_txErrorTxAbortedCsmaPrepare;
  *(toCopy + 31) |= 0x20000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x80000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_94;
  }

LABEL_93:
  toCopy[59] = self->_txErrorTxAbortedIfs;
  *(toCopy + 31) |= 0x40000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000000000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_95;
  }

LABEL_94:
  toCopy[60] = self->_txErrorTxAbortedRxAck;
  *(toCopy + 31) |= 0x80000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x100000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_96;
  }

LABEL_95:
  toCopy[55] = self->_txErrorTxAbortedCcaTx;
  *(toCopy + 31) |= 0x4000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000000000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x400000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_97;
  }

LABEL_96:
  toCopy[61] = self->_txErrorTxAbortedTx;
  *(toCopy + 31) |= 0x100000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000000000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_98;
  }

LABEL_97:
  toCopy[51] = self->_txErrorNotGranted;
  *(toCopy + 31) |= 0x400000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x200000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_99;
  }

LABEL_98:
  toCopy[49] = self->_txErrorInvalidAck;
  *(toCopy + 31) |= 0x100000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000000) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x10000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_100;
  }

LABEL_99:
  toCopy[50] = self->_txErrorNoAck;
  *(toCopy + 31) |= 0x200000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000000000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_101;
  }

LABEL_100:
  toCopy[45] = self->_txErrorAckNoMem;
  *(toCopy + 31) |= 0x10000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_41:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_102;
  }

LABEL_101:
  toCopy[9] = self->_receivedFrames;
  *(toCopy + 31) |= 0x80uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_42:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_103;
  }

LABEL_102:
  toCopy[32] = self->_rxErrorReceiveFailed;
  *(toCopy + 31) |= 0x40000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_43:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_104;
  }

LABEL_103:
  toCopy[30] = self->_rxErrorInvalidFrame;
  *(toCopy + 31) |= 0x10000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_44:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_105;
  }

LABEL_104:
  toCopy[25] = self->_rxErrorDelayedTimeout;
  *(toCopy + 31) |= 0x800000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_45:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_106;
  }

LABEL_105:
  toCopy[29] = self->_rxErrorInvalidFcs;
  *(toCopy + 31) |= 0x8000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_107;
  }

LABEL_106:
  toCopy[27] = self->_rxErrorDestAddrFiltered;
  *(toCopy + 31) |= 0x2000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_47:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_108;
  }

LABEL_107:
  toCopy[33] = self->_rxErrorRuntimeDelay;
  *(toCopy + 31) |= 0x80000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_48:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_109;
  }

LABEL_108:
  toCopy[34] = self->_rxErrorTimeslotEnded;
  *(toCopy + 31) |= &_mh_execute_header;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_49:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_109:
  toCopy[20] = self->_rxErrorAborted;
  *(toCopy + 31) |= 0x40000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_50:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_111;
  }

LABEL_110:
  toCopy[26] = self->_rxErrorDelayedTimeslotEnded;
  *(toCopy + 31) |= 0x1000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_51:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_112;
  }

LABEL_111:
  toCopy[31] = self->_rxErrorInvalidLength;
  *(toCopy + 31) |= 0x20000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_52:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_113;
  }

LABEL_112:
  toCopy[28] = self->_rxErrorInvalidData;
  *(toCopy + 31) |= 0x4000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_53:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_114;
  }

LABEL_113:
  toCopy[24] = self->_rxErrorAckFailedRadioState;
  *(toCopy + 31) |= 0x400000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_54:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_115;
  }

LABEL_114:
  toCopy[23] = self->_rxErrorAckFailedRadioDelay;
  *(toCopy + 31) |= 0x200000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_55:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_116;
  }

LABEL_115:
  toCopy[22] = self->_rxErrorAckDenied;
  *(toCopy + 31) |= 0x100000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_56:
    if ((*&v6 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_117;
  }

LABEL_116:
  toCopy[21] = self->_rxErrorAckAborted;
  *(toCopy + 31) |= 0x80000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_118;
  }

LABEL_117:
  toCopy[38] = self->_sleepState;
  *(toCopy + 31) |= 0x200000000uLL;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_58:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_119;
  }

LABEL_118:
  toCopy[4] = self->_energyDetectedRequests;
  *(toCopy + 31) |= 4uLL;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_59:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_120;
  }

LABEL_119:
  toCopy[3] = self->_energyDetectedEvents;
  *(toCopy + 31) |= 2uLL;
  if ((*&self->_has & 0x20) == 0)
  {
LABEL_60:

    goto LABEL_62;
  }

LABEL_120:
  toCopy[7] = self->_radioStatusDoubleNotification;
  *(toCopy + 31) |= 0x20uLL;

LABEL_62:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[2] = self->_ccaFailedAttempts;
    *(v5 + 31) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_63;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v5[6] = self->_radioReceivedFrames;
  *(v5 + 31) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_63:
  v5[8] = self->_receivedEnergyEvents;
  *(v5 + 31) |= 0x40uLL;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v5[10] = self->_receivedPreambles;
    *(v5 + 31) |= 0x100uLL;
  }

LABEL_6:
  v8 = [(AWDRadioStatsS *)self->_sRadioStats copyWithZone:zone];
  v9 = v6[18];
  v6[18] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x20000) != 0)
  {
    *(v6 + 19) = self->_rttMinVal;
    v6[31] |= 0x20000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x10000) == 0)
    {
LABEL_8:
      if ((*&v10 & 0x8000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v10 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  *(v6 + 18) = self->_rttMaxVal;
  v6[31] |= 0x10000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_9:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 17) = self->_rttAvgVal;
  v6[31] |= 0x8000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_10:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 16) = self->_rtt90perc;
  v6[31] |= 0x4000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_11:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 15) = self->_retryIntervalMin;
  v6[31] |= 0x2000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v6 + 14) = self->_retryIntervalMax;
  v6[31] |= 0x1000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v6 + 13) = self->_retryIntervalAvg;
  v6[31] |= 0x800uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x8000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 12) = self->_retryInterval90perc;
  v6[31] |= 0x400uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000000000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x4000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 44) = self->_txDelayMin;
  v6[31] |= 0x8000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000000000) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x2000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 43) = self->_txDelayMax;
  v6[31] |= 0x4000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000000) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x1000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 42) = self->_txDelayAvg;
  v6[31] |= 0x2000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000000) == 0)
  {
LABEL_18:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 41) = self->_txDelay90perc;
  v6[31] |= 0x1000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 5) = self->_listeningTime;
  v6[31] |= 8uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x800000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v6 + 11) = self->_receivingTime;
  v6[31] |= 0x200uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000000) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x400000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 40) = self->_transmittingTime;
  v6[31] |= 0x800000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000000) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x1000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 39) = self->_transmittedFrames;
  v6[31] |= 0x400000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000000000) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 53) = self->_txErrorTimeslotEnded;
  v6[31] |= 0x1000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000000000) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x20000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v6 + 52) = self->_txErrorTimeslotDenied;
  v6[31] |= 0x800000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000000) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x40000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v6 + 46) = self->_txErrorBusyChannelCcaNotStarted;
  v6[31] |= 0x20000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000000) == 0)
  {
LABEL_26:
    if ((*&v10 & 0x80000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v6 + 47) = self->_txErrorChannelAccessCcaBusy;
  v6[31] |= 0x40000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000000) == 0)
  {
LABEL_27:
    if ((*&v10 & 0x2000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v6 + 48) = self->_txErrorChannelAccessFailure;
  v6[31] |= 0x80000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000000000) == 0)
  {
LABEL_28:
    if ((*&v10 & 0x10000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 54) = self->_txErrorTxAborted;
  v6[31] |= 0x2000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000000000) == 0)
  {
LABEL_29:
    if ((*&v10 & 0x8000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 57) = self->_txErrorTxAbortedCsmaCfgBackoff;
  v6[31] |= 0x10000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000000000000) == 0)
  {
LABEL_30:
    if ((*&v10 & 0x20000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v6 + 56) = self->_txErrorTxAbortedCsmaBackoff;
  v6[31] |= 0x8000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000000000) == 0)
  {
LABEL_31:
    if ((*&v10 & 0x40000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 58) = self->_txErrorTxAbortedCsmaPrepare;
  v6[31] |= 0x20000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000000000) == 0)
  {
LABEL_32:
    if ((*&v10 & 0x80000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 59) = self->_txErrorTxAbortedIfs;
  v6[31] |= 0x40000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000000000) == 0)
  {
LABEL_33:
    if ((*&v10 & 0x4000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 60) = self->_txErrorTxAbortedRxAck;
  v6[31] |= 0x80000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000000000000) == 0)
  {
LABEL_34:
    if ((*&v10 & 0x100000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 55) = self->_txErrorTxAbortedCcaTx;
  v6[31] |= 0x4000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000000000) == 0)
  {
LABEL_35:
    if ((*&v10 & 0x400000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 61) = self->_txErrorTxAbortedTx;
  v6[31] |= 0x100000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000000000) == 0)
  {
LABEL_36:
    if ((*&v10 & 0x100000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 51) = self->_txErrorNotGranted;
  v6[31] |= 0x400000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000000) == 0)
  {
LABEL_37:
    if ((*&v10 & 0x200000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 49) = self->_txErrorInvalidAck;
  v6[31] |= 0x100000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000000) == 0)
  {
LABEL_38:
    if ((*&v10 & 0x10000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v6 + 50) = self->_txErrorNoAck;
  v6[31] |= 0x200000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000000) == 0)
  {
LABEL_39:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 45) = self->_txErrorAckNoMem;
  v6[31] |= 0x10000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_40:
    if ((*&v10 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 9) = self->_receivedFrames;
  v6[31] |= 0x80uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000) == 0)
  {
LABEL_41:
    if ((*&v10 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 32) = self->_rxErrorReceiveFailed;
  v6[31] |= 0x40000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000) == 0)
  {
LABEL_42:
    if ((*&v10 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 30) = self->_rxErrorInvalidFrame;
  v6[31] |= 0x10000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000) == 0)
  {
LABEL_43:
    if ((*&v10 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v6 + 25) = self->_rxErrorDelayedTimeout;
  v6[31] |= 0x800000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000000) == 0)
  {
LABEL_44:
    if ((*&v10 & 0x2000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v6 + 29) = self->_rxErrorInvalidFcs;
  v6[31] |= 0x8000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000) == 0)
  {
LABEL_45:
    if ((*&v10 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v6 + 27) = self->_rxErrorDestAddrFiltered;
  v6[31] |= 0x2000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000) == 0)
  {
LABEL_46:
    if ((*&v10 & 0x100000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v6 + 33) = self->_rxErrorRuntimeDelay;
  v6[31] |= 0x80000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000) == 0)
  {
LABEL_47:
    if ((*&v10 & 0x40000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v6 + 34) = self->_rxErrorTimeslotEnded;
  v6[31] |= &_mh_execute_header;
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_48:
    if ((*&v10 & 0x1000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v6 + 20) = self->_rxErrorAborted;
  v6[31] |= 0x40000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000) == 0)
  {
LABEL_49:
    if ((*&v10 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v6 + 26) = self->_rxErrorDelayedTimeslotEnded;
  v6[31] |= 0x1000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_50:
    if ((*&v10 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v6 + 31) = self->_rxErrorInvalidLength;
  v6[31] |= 0x20000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000000) == 0)
  {
LABEL_51:
    if ((*&v10 & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v6 + 28) = self->_rxErrorInvalidData;
  v6[31] |= 0x4000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000) == 0)
  {
LABEL_52:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v6 + 24) = self->_rxErrorAckFailedRadioState;
  v6[31] |= 0x400000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000) == 0)
  {
LABEL_53:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v6 + 23) = self->_rxErrorAckFailedRadioDelay;
  v6[31] |= 0x200000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_54:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v6 + 22) = self->_rxErrorAckDenied;
  v6[31] |= 0x100000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_55:
    if ((*&v10 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v6 + 21) = self->_rxErrorAckAborted;
  v6[31] |= 0x80000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000) == 0)
  {
LABEL_56:
    if ((*&v10 & 4) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v6 + 38) = self->_sleepState;
  v6[31] |= 0x200000000uLL;
  v10 = self->_has;
  if ((*&v10 & 4) == 0)
  {
LABEL_57:
    if ((*&v10 & 2) == 0)
    {
      goto LABEL_58;
    }

LABEL_116:
    *(v6 + 3) = self->_energyDetectedEvents;
    v6[31] |= 2uLL;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_115:
  *(v6 + 4) = self->_energyDetectedRequests;
  v6[31] |= 4uLL;
  v10 = self->_has;
  if ((*&v10 & 2) != 0)
  {
    goto LABEL_116;
  }

LABEL_58:
  if ((*&v10 & 0x20) != 0)
  {
LABEL_59:
    *(v6 + 7) = self->_radioStatusDoubleNotification;
    v6[31] |= 0x20uLL;
  }

LABEL_60:
  v11 = v6;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_290;
  }

  has = self->_has;
  v6 = *(equalCopy + 31);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_ccaFailedAttempts != *(equalCopy + 2))
    {
      goto LABEL_290;
    }
  }

  else if (v6)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_radioReceivedFrames != *(equalCopy + 6))
    {
      goto LABEL_290;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_receivedEnergyEvents != *(equalCopy + 8))
    {
      goto LABEL_290;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_receivedPreambles != *(equalCopy + 10))
    {
      goto LABEL_290;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_290;
  }

  sRadioStats = self->_sRadioStats;
  if (sRadioStats | *(equalCopy + 18))
  {
    if (![(AWDRadioStatsS *)sRadioStats isEqual:?])
    {
      goto LABEL_290;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 31);
  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_rttMinVal != *(equalCopy + 19))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_rttMaxVal != *(equalCopy + 18))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_rttAvgVal != *(equalCopy + 17))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_rtt90perc != *(equalCopy + 16))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_retryIntervalMin != *(equalCopy + 15))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_retryIntervalMax != *(equalCopy + 14))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_retryIntervalAvg != *(equalCopy + 13))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_retryInterval90perc != *(equalCopy + 12))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v8 & 0x8000000000) == 0 || self->_txDelayMin != *(equalCopy + 44))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x8000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v8 & 0x4000000000) == 0 || self->_txDelayMax != *(equalCopy + 43))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x4000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v8 & 0x2000000000) == 0 || self->_txDelayAvg != *(equalCopy + 42))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x2000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v8 & 0x1000000000) == 0 || self->_txDelay90perc != *(equalCopy + 41))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_listeningTime != *(equalCopy + 5))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_receivingTime != *(equalCopy + 11))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v8 & 0x800000000) == 0 || self->_transmittingTime != *(equalCopy + 40))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x800000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v8 & 0x400000000) == 0 || self->_transmittedFrames != *(equalCopy + 39))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x400000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v8 & 0x1000000000000) == 0 || self->_txErrorTimeslotEnded != *(equalCopy + 53))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x1000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    if ((v8 & 0x800000000000) == 0 || self->_txErrorTimeslotDenied != *(equalCopy + 52))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x800000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v8 & 0x20000000000) == 0 || self->_txErrorBusyChannelCcaNotStarted != *(equalCopy + 46))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x20000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v8 & 0x40000000000) == 0 || self->_txErrorChannelAccessCcaBusy != *(equalCopy + 47))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x40000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v8 & 0x80000000000) == 0 || self->_txErrorChannelAccessFailure != *(equalCopy + 48))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x80000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v8 & 0x2000000000000) == 0 || self->_txErrorTxAborted != *(equalCopy + 54))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x2000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x10000000000000) != 0)
  {
    if ((v8 & 0x10000000000000) == 0 || self->_txErrorTxAbortedCsmaCfgBackoff != *(equalCopy + 57))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x10000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x8000000000000) != 0)
  {
    if ((v8 & 0x8000000000000) == 0 || self->_txErrorTxAbortedCsmaBackoff != *(equalCopy + 56))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x8000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x20000000000000) != 0)
  {
    if ((v8 & 0x20000000000000) == 0 || self->_txErrorTxAbortedCsmaPrepare != *(equalCopy + 58))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x20000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x40000000000000) != 0)
  {
    if ((v8 & 0x40000000000000) == 0 || self->_txErrorTxAbortedIfs != *(equalCopy + 59))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x40000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x80000000000000) != 0)
  {
    if ((v8 & 0x80000000000000) == 0 || self->_txErrorTxAbortedRxAck != *(equalCopy + 60))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x80000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v8 & 0x4000000000000) == 0 || self->_txErrorTxAbortedCcaTx != *(equalCopy + 55))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x4000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x100000000000000) != 0)
  {
    if ((v8 & 0x100000000000000) == 0 || self->_txErrorTxAbortedTx != *(equalCopy + 61))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x100000000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v8 & 0x400000000000) == 0 || self->_txErrorNotGranted != *(equalCopy + 51))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x400000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v8 & 0x100000000000) == 0 || self->_txErrorInvalidAck != *(equalCopy + 49))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x100000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v8 & 0x200000000000) == 0 || self->_txErrorNoAck != *(equalCopy + 50))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x200000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v8 & 0x10000000000) == 0 || self->_txErrorAckNoMem != *(equalCopy + 45))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x10000000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_receivedFrames != *(equalCopy + 9))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0 || self->_rxErrorReceiveFailed != *(equalCopy + 32))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_rxErrorInvalidFrame != *(equalCopy + 30))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_rxErrorDelayedTimeout != *(equalCopy + 25))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0 || self->_rxErrorInvalidFcs != *(equalCopy + 29))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_rxErrorDestAddrFiltered != *(equalCopy + 27))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_rxErrorRuntimeDelay != *(equalCopy + 33))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0 || self->_rxErrorTimeslotEnded != *(equalCopy + 34))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_rxErrorAborted != *(equalCopy + 20))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_rxErrorDelayedTimeslotEnded != *(equalCopy + 26))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0 || self->_rxErrorInvalidLength != *(equalCopy + 31))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x20000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0 || self->_rxErrorInvalidData != *(equalCopy + 28))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_rxErrorAckFailedRadioState != *(equalCopy + 24))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_rxErrorAckFailedRadioDelay != *(equalCopy + 23))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_rxErrorAckDenied != *(equalCopy + 22))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_rxErrorAckAborted != *(equalCopy + 21))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0 || self->_sleepState != *(equalCopy + 38))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_290;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_energyDetectedRequests != *(equalCopy + 4))
    {
      goto LABEL_290;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_290;
  }

  v9 = *(equalCopy + 31);
  if ((*&has & 2) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_285;
    }

LABEL_290:
    v10 = 0;
    goto LABEL_291;
  }

  if ((v9 & 2) == 0 || self->_energyDetectedEvents != *(equalCopy + 3))
  {
    goto LABEL_290;
  }

LABEL_285:
  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_radioStatusDoubleNotification != *(equalCopy + 7))
    {
      goto LABEL_290;
    }

    v10 = 1;
  }

  else
  {
    v10 = (*(equalCopy + 31) & 0x20) == 0;
  }

LABEL_291:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v63 = 2654435761 * self->_ccaFailedAttempts;
    if ((*&has & 0x10) != 0)
    {
LABEL_3:
      v62 = 2654435761 * self->_radioReceivedFrames;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v61 = 0;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v63 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v62 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v61 = 2654435761 * self->_receivedEnergyEvents;
  if ((*&has & 0x100) != 0)
  {
LABEL_5:
    v60 = 2654435761 * self->_receivedPreambles;
    goto LABEL_10;
  }

LABEL_9:
  v60 = 0;
LABEL_10:
  v59 = [(AWDRadioStatsS *)self->_sRadioStats hash];
  v4 = self->_has;
  if ((*&v4 & 0x20000) != 0)
  {
    v58 = 2654435761 * self->_rttMinVal;
    if ((*&v4 & 0x10000) != 0)
    {
LABEL_12:
      v57 = 2654435761 * self->_rttMaxVal;
      if ((*&v4 & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v58 = 0;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_12;
    }
  }

  v57 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_13:
    v56 = 2654435761 * self->_rttAvgVal;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_66:
  v56 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_14:
    v55 = 2654435761 * self->_rtt90perc;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_67:
  v55 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_15:
    v54 = 2654435761 * self->_retryIntervalMin;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_69;
  }

LABEL_68:
  v54 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_16:
    v53 = 2654435761 * self->_retryIntervalMax;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_69:
  v53 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_17:
    v52 = 2654435761 * self->_retryIntervalAvg;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_71;
  }

LABEL_70:
  v52 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_18:
    v51 = 2654435761 * self->_retryInterval90perc;
    if ((*&v4 & 0x8000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  v51 = 0;
  if ((*&v4 & 0x8000000000) != 0)
  {
LABEL_19:
    v50 = 2654435761 * self->_txDelayMin;
    if ((*&v4 & 0x4000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  v50 = 0;
  if ((*&v4 & 0x4000000000) != 0)
  {
LABEL_20:
    v49 = 2654435761 * self->_txDelayMax;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_74;
  }

LABEL_73:
  v49 = 0;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_21:
    v48 = 2654435761 * self->_txDelayAvg;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_75;
  }

LABEL_74:
  v48 = 0;
  if ((*&v4 & 0x1000000000) != 0)
  {
LABEL_22:
    v47 = 2654435761 * self->_txDelay90perc;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_75:
  v47 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_23:
    v46 = 2654435761 * self->_listeningTime;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_77;
  }

LABEL_76:
  v46 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_24:
    v45 = 2654435761 * self->_receivingTime;
    if ((*&v4 & 0x800000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_78;
  }

LABEL_77:
  v45 = 0;
  if ((*&v4 & 0x800000000) != 0)
  {
LABEL_25:
    v44 = 2654435761 * self->_transmittingTime;
    if ((*&v4 & 0x400000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

LABEL_78:
  v44 = 0;
  if ((*&v4 & 0x400000000) != 0)
  {
LABEL_26:
    v43 = 2654435761 * self->_transmittedFrames;
    if ((*&v4 & 0x1000000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_79:
  v43 = 0;
  if ((*&v4 & 0x1000000000000) != 0)
  {
LABEL_27:
    v42 = 2654435761 * self->_txErrorTimeslotEnded;
    if ((*&v4 & 0x800000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

LABEL_80:
  v42 = 0;
  if ((*&v4 & 0x800000000000) != 0)
  {
LABEL_28:
    v41 = 2654435761 * self->_txErrorTimeslotDenied;
    if ((*&v4 & 0x20000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_82;
  }

LABEL_81:
  v41 = 0;
  if ((*&v4 & 0x20000000000) != 0)
  {
LABEL_29:
    v40 = 2654435761 * self->_txErrorBusyChannelCcaNotStarted;
    if ((*&v4 & 0x40000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = 0;
  if ((*&v4 & 0x40000000000) != 0)
  {
LABEL_30:
    v39 = 2654435761 * self->_txErrorChannelAccessCcaBusy;
    if ((*&v4 & 0x80000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_83:
  v39 = 0;
  if ((*&v4 & 0x80000000000) != 0)
  {
LABEL_31:
    v38 = 2654435761 * self->_txErrorChannelAccessFailure;
    if ((*&v4 & 0x2000000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_85;
  }

LABEL_84:
  v38 = 0;
  if ((*&v4 & 0x2000000000000) != 0)
  {
LABEL_32:
    v37 = 2654435761 * self->_txErrorTxAborted;
    if ((*&v4 & 0x10000000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

LABEL_85:
  v37 = 0;
  if ((*&v4 & 0x10000000000000) != 0)
  {
LABEL_33:
    v36 = 2654435761 * self->_txErrorTxAbortedCsmaCfgBackoff;
    if ((*&v4 & 0x8000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_87;
  }

LABEL_86:
  v36 = 0;
  if ((*&v4 & 0x8000000000000) != 0)
  {
LABEL_34:
    v35 = 2654435761 * self->_txErrorTxAbortedCsmaBackoff;
    if ((*&v4 & 0x20000000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_87:
  v35 = 0;
  if ((*&v4 & 0x20000000000000) != 0)
  {
LABEL_35:
    v34 = 2654435761 * self->_txErrorTxAbortedCsmaPrepare;
    if ((*&v4 & 0x40000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_89;
  }

LABEL_88:
  v34 = 0;
  if ((*&v4 & 0x40000000000000) != 0)
  {
LABEL_36:
    v33 = 2654435761 * self->_txErrorTxAbortedIfs;
    if ((*&v4 & 0x80000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_90;
  }

LABEL_89:
  v33 = 0;
  if ((*&v4 & 0x80000000000000) != 0)
  {
LABEL_37:
    v32 = 2654435761 * self->_txErrorTxAbortedRxAck;
    if ((*&v4 & 0x4000000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_91;
  }

LABEL_90:
  v32 = 0;
  if ((*&v4 & 0x4000000000000) != 0)
  {
LABEL_38:
    v5 = 2654435761 * self->_txErrorTxAbortedCcaTx;
    if ((*&v4 & 0x100000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_92;
  }

LABEL_91:
  v5 = 0;
  if ((*&v4 & 0x100000000000000) != 0)
  {
LABEL_39:
    v6 = 2654435761 * self->_txErrorTxAbortedTx;
    if ((*&v4 & 0x400000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_93;
  }

LABEL_92:
  v6 = 0;
  if ((*&v4 & 0x400000000000) != 0)
  {
LABEL_40:
    v7 = 2654435761 * self->_txErrorNotGranted;
    if ((*&v4 & 0x100000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_93:
  v7 = 0;
  if ((*&v4 & 0x100000000000) != 0)
  {
LABEL_41:
    v8 = 2654435761 * self->_txErrorInvalidAck;
    if ((*&v4 & 0x200000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_95;
  }

LABEL_94:
  v8 = 0;
  if ((*&v4 & 0x200000000000) != 0)
  {
LABEL_42:
    v9 = 2654435761 * self->_txErrorNoAck;
    if ((*&v4 & 0x10000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_96;
  }

LABEL_95:
  v9 = 0;
  if ((*&v4 & 0x10000000000) != 0)
  {
LABEL_43:
    v10 = 2654435761 * self->_txErrorAckNoMem;
    if ((*&v4 & 0x80) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_97;
  }

LABEL_96:
  v10 = 0;
  if ((*&v4 & 0x80) != 0)
  {
LABEL_44:
    v11 = 2654435761 * self->_receivedFrames;
    if ((*&v4 & 0x40000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_98;
  }

LABEL_97:
  v11 = 0;
  if ((*&v4 & 0x40000000) != 0)
  {
LABEL_45:
    v12 = 2654435761 * self->_rxErrorReceiveFailed;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_99;
  }

LABEL_98:
  v12 = 0;
  if ((*&v4 & 0x10000000) != 0)
  {
LABEL_46:
    v13 = 2654435761 * self->_rxErrorInvalidFrame;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_100;
  }

LABEL_99:
  v13 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_47:
    v14 = 2654435761 * self->_rxErrorDelayedTimeout;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_101;
  }

LABEL_100:
  v14 = 0;
  if ((*&v4 & 0x8000000) != 0)
  {
LABEL_48:
    v15 = 2654435761 * self->_rxErrorInvalidFcs;
    if ((*&v4 & 0x2000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_102;
  }

LABEL_101:
  v15 = 0;
  if ((*&v4 & 0x2000000) != 0)
  {
LABEL_49:
    v16 = 2654435761 * self->_rxErrorDestAddrFiltered;
    if ((*&v4 & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_103;
  }

LABEL_102:
  v16 = 0;
  if ((*&v4 & 0x80000000) != 0)
  {
LABEL_50:
    v17 = 2654435761 * self->_rxErrorRuntimeDelay;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_104;
  }

LABEL_103:
  v17 = 0;
  if ((*&v4 & 0x100000000) != 0)
  {
LABEL_51:
    v18 = 2654435761 * self->_rxErrorTimeslotEnded;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_105;
  }

LABEL_104:
  v18 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_52:
    v19 = 2654435761 * self->_rxErrorAborted;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_106;
  }

LABEL_105:
  v19 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_53:
    v20 = 2654435761 * self->_rxErrorDelayedTimeslotEnded;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_107;
  }

LABEL_106:
  v20 = 0;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_54:
    v21 = 2654435761 * self->_rxErrorInvalidLength;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_108;
  }

LABEL_107:
  v21 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_55:
    v22 = 2654435761 * self->_rxErrorInvalidData;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_109;
  }

LABEL_108:
  v22 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_56:
    v23 = 2654435761 * self->_rxErrorAckFailedRadioState;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_110;
  }

LABEL_109:
  v23 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_57:
    v24 = 2654435761 * self->_rxErrorAckFailedRadioDelay;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_111;
  }

LABEL_110:
  v24 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_58:
    v25 = 2654435761 * self->_rxErrorAckDenied;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_112;
  }

LABEL_111:
  v25 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_59:
    v26 = 2654435761 * self->_rxErrorAckAborted;
    if ((*&v4 & 0x200000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_113;
  }

LABEL_112:
  v26 = 0;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_60:
    v27 = 2654435761 * self->_sleepState;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_114;
  }

LABEL_113:
  v27 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_61:
    v28 = 2654435761 * self->_energyDetectedRequests;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_62;
    }

LABEL_115:
    v29 = 0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_63;
    }

LABEL_116:
    v30 = 0;
    return v62 ^ v63 ^ v61 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v59 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_114:
  v28 = 0;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_115;
  }

LABEL_62:
  v29 = 2654435761 * self->_energyDetectedEvents;
  if ((*&v4 & 0x20) == 0)
  {
    goto LABEL_116;
  }

LABEL_63:
  v30 = 2654435761 * self->_radioStatusDoubleNotification;
  return v62 ^ v63 ^ v61 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v59 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 31);
  if (v6)
  {
    self->_ccaFailedAttempts = fromCopy[2];
    *&self->_has |= 1uLL;
    v6 = *(fromCopy + 31);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_radioReceivedFrames = fromCopy[6];
  *&self->_has |= 0x10uLL;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    self->_receivedPreambles = fromCopy[10];
    *&self->_has |= 0x100uLL;
    sRadioStats = self->_sRadioStats;
    v8 = *(v5 + 18);
    if (sRadioStats)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_10:
  self->_receivedEnergyEvents = fromCopy[8];
  *&self->_has |= 0x40uLL;
  if ((*(fromCopy + 31) & 0x100) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  sRadioStats = self->_sRadioStats;
  v8 = *(v5 + 18);
  if (sRadioStats)
  {
LABEL_6:
    if (!v8)
    {
      goto LABEL_15;
    }

    v10 = v5;
    [(AWDRadioStatsS *)sRadioStats mergeFrom:?];
    goto LABEL_14;
  }

LABEL_12:
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = v5;
  [(AWDCountersRadioS *)self setSRadioStats:?];
LABEL_14:
  v5 = v10;
LABEL_15:
  v9 = *(v5 + 31);
  if ((v9 & 0x20000) != 0)
  {
    self->_rttMinVal = v5[19];
    *&self->_has |= 0x20000uLL;
    v9 = *(v5 + 31);
    if ((v9 & 0x10000) == 0)
    {
LABEL_17:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_73;
    }
  }

  else if ((v9 & 0x10000) == 0)
  {
    goto LABEL_17;
  }

  self->_rttMaxVal = v5[18];
  *&self->_has |= 0x10000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x8000) == 0)
  {
LABEL_18:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_rttAvgVal = v5[17];
  *&self->_has |= 0x8000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x4000) == 0)
  {
LABEL_19:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_rtt90perc = v5[16];
  *&self->_has |= 0x4000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x2000) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_retryIntervalMin = v5[15];
  *&self->_has |= 0x2000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_retryIntervalMax = v5[14];
  *&self->_has |= 0x1000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x800) == 0)
  {
LABEL_22:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_retryIntervalAvg = v5[13];
  *&self->_has |= 0x800uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x400) == 0)
  {
LABEL_23:
    if ((v9 & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_retryInterval90perc = v5[12];
  *&self->_has |= 0x400uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x8000000000) == 0)
  {
LABEL_24:
    if ((v9 & 0x4000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_txDelayMin = v5[44];
  *&self->_has |= 0x8000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x4000000000) == 0)
  {
LABEL_25:
    if ((v9 & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_txDelayMax = v5[43];
  *&self->_has |= 0x4000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x2000000000) == 0)
  {
LABEL_26:
    if ((v9 & 0x1000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_txDelayAvg = v5[42];
  *&self->_has |= 0x2000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x1000000000) == 0)
  {
LABEL_27:
    if ((v9 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_txDelay90perc = v5[41];
  *&self->_has |= 0x1000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 8) == 0)
  {
LABEL_28:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_listeningTime = v5[5];
  *&self->_has |= 8uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x200) == 0)
  {
LABEL_29:
    if ((v9 & 0x800000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_receivingTime = v5[11];
  *&self->_has |= 0x200uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x800000000) == 0)
  {
LABEL_30:
    if ((v9 & 0x400000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_transmittingTime = v5[40];
  *&self->_has |= 0x800000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x400000000) == 0)
  {
LABEL_31:
    if ((v9 & 0x1000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_transmittedFrames = v5[39];
  *&self->_has |= 0x400000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x1000000000000) == 0)
  {
LABEL_32:
    if ((v9 & 0x800000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_txErrorTimeslotEnded = v5[53];
  *&self->_has |= 0x1000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x800000000000) == 0)
  {
LABEL_33:
    if ((v9 & 0x20000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_txErrorTimeslotDenied = v5[52];
  *&self->_has |= 0x800000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x20000000000) == 0)
  {
LABEL_34:
    if ((v9 & 0x40000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_txErrorBusyChannelCcaNotStarted = v5[46];
  *&self->_has |= 0x20000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x40000000000) == 0)
  {
LABEL_35:
    if ((v9 & 0x80000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_txErrorChannelAccessCcaBusy = v5[47];
  *&self->_has |= 0x40000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x80000000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_txErrorChannelAccessFailure = v5[48];
  *&self->_has |= 0x80000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x2000000000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x10000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_txErrorTxAborted = v5[54];
  *&self->_has |= 0x2000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x10000000000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x8000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_txErrorTxAbortedCsmaCfgBackoff = v5[57];
  *&self->_has |= 0x10000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x8000000000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x20000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_txErrorTxAbortedCsmaBackoff = v5[56];
  *&self->_has |= 0x8000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x20000000000000) == 0)
  {
LABEL_40:
    if ((v9 & 0x40000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_txErrorTxAbortedCsmaPrepare = v5[58];
  *&self->_has |= 0x20000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x40000000000000) == 0)
  {
LABEL_41:
    if ((v9 & 0x80000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_txErrorTxAbortedIfs = v5[59];
  *&self->_has |= 0x40000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x80000000000000) == 0)
  {
LABEL_42:
    if ((v9 & 0x4000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_txErrorTxAbortedRxAck = v5[60];
  *&self->_has |= 0x80000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x4000000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x100000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_txErrorTxAbortedCcaTx = v5[55];
  *&self->_has |= 0x4000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x100000000000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x400000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_txErrorTxAbortedTx = v5[61];
  *&self->_has |= 0x100000000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x400000000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_txErrorNotGranted = v5[51];
  *&self->_has |= 0x400000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x200000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_txErrorInvalidAck = v5[49];
  *&self->_has |= 0x100000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x200000000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_txErrorNoAck = v5[50];
  *&self->_has |= 0x200000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_txErrorAckNoMem = v5[45];
  *&self->_has |= 0x10000000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x80) == 0)
  {
LABEL_49:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_receivedFrames = v5[9];
  *&self->_has |= 0x80uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_50:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_rxErrorReceiveFailed = v5[32];
  *&self->_has |= 0x40000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_51:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_rxErrorInvalidFrame = v5[30];
  *&self->_has |= 0x10000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x800000) == 0)
  {
LABEL_52:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_rxErrorDelayedTimeout = v5[25];
  *&self->_has |= 0x800000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_53:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_rxErrorInvalidFcs = v5[29];
  *&self->_has |= 0x8000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_54:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_rxErrorDestAddrFiltered = v5[27];
  *&self->_has |= 0x2000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_55:
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_rxErrorRuntimeDelay = v5[33];
  *&self->_has |= 0x80000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x100000000) == 0)
  {
LABEL_56:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_rxErrorTimeslotEnded = v5[34];
  *&self->_has |= &_mh_execute_header;
  v9 = *(v5 + 31);
  if ((v9 & 0x40000) == 0)
  {
LABEL_57:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_rxErrorAborted = v5[20];
  *&self->_has |= 0x40000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_114;
  }

LABEL_113:
  self->_rxErrorDelayedTimeslotEnded = v5[26];
  *&self->_has |= 0x1000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_59:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_115;
  }

LABEL_114:
  self->_rxErrorInvalidLength = v5[31];
  *&self->_has |= 0x20000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_60:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_116;
  }

LABEL_115:
  self->_rxErrorInvalidData = v5[28];
  *&self->_has |= 0x4000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x400000) == 0)
  {
LABEL_61:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_rxErrorAckFailedRadioState = v5[24];
  *&self->_has |= 0x400000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x200000) == 0)
  {
LABEL_62:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_rxErrorAckFailedRadioDelay = v5[23];
  *&self->_has |= 0x200000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x100000) == 0)
  {
LABEL_63:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_rxErrorAckDenied = v5[22];
  *&self->_has |= 0x100000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x80000) == 0)
  {
LABEL_64:
    if ((v9 & 0x200000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_rxErrorAckAborted = v5[21];
  *&self->_has |= 0x80000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 0x200000000) == 0)
  {
LABEL_65:
    if ((v9 & 4) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_sleepState = v5[38];
  *&self->_has |= 0x200000000uLL;
  v9 = *(v5 + 31);
  if ((v9 & 4) == 0)
  {
LABEL_66:
    if ((v9 & 2) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_energyDetectedRequests = v5[4];
  *&self->_has |= 4uLL;
  v9 = *(v5 + 31);
  if ((v9 & 2) == 0)
  {
LABEL_67:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_energyDetectedEvents = v5[3];
  *&self->_has |= 2uLL;
  if ((*(v5 + 31) & 0x20) == 0)
  {
LABEL_68:

    goto LABEL_70;
  }

LABEL_123:
  self->_radioStatusDoubleNotification = v5[7];
  *&self->_has |= 0x20uLL;

LABEL_70:
}

@end
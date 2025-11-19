@interface NWSSnapshot
- (id)_createCountsForProvider:(int)a3;
- (id)_initWithCounts:(const nstat_counts *)a3 sourceIdent:(unint64_t)a4 seqno:(unint64_t)a5;
@end

@implementation NWSSnapshot

- (id)_initWithCounts:(const nstat_counts *)a3 sourceIdent:(unint64_t)a4 seqno:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = NWSSnapshot;
  result = [(NWSSnapshot *)&v14 init];
  if (result)
  {
    v9 = *&a3->nstat_rxpackets;
    v10 = *&a3->nstat_txpackets;
    *(result + 40) = *&a3->nstat_cell_rxbytes;
    *(result + 24) = v10;
    *(result + 8) = v9;
    v11 = *&a3->nstat_wifi_rxbytes;
    v12 = *&a3->nstat_wired_rxbytes;
    v13 = *&a3->nstat_rxduplicatebytes;
    *(result + 104) = *&a3->nstat_connectsuccesses;
    *(result + 88) = v13;
    *(result + 72) = v12;
    *(result + 56) = v11;
    *(result + 15) = a5;
    *(result + 16) = a4;
  }

  return result;
}

- (id)_createCountsForProvider:(int)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    if ((a3 - 1) < 3)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counts.nstat_connectattempts];
      [v5 setObject:v7 forKeyedSubscript:kNStatSrcKeyConnectAttempt];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counts.nstat_connectsuccesses];
      [v5 setObject:v8 forKeyedSubscript:kNStatSrcKeyConnectSuccess];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counts.nstat_rxduplicatebytes];
      [v5 setObject:v9 forKeyedSubscript:kNStatSrcKeyRxDupeBytes];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counts.nstat_rxoutoforderbytes];
      [v5 setObject:v10 forKeyedSubscript:kNStatSrcKeyRxOOOBytes];

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counts.nstat_txretransmit];
      [v5 setObject:v11 forKeyedSubscript:kNStatSrcKeyTxReTx];
    }

    else
    {
      if ((a3 - 4) < 2)
      {
LABEL_8:
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_cell_rxbytes];
        [v5 setObject:v17 forKeyedSubscript:kNStatSrcKeyRxCellularBytes];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_cell_txbytes];
        [v5 setObject:v18 forKeyedSubscript:kNStatSrcKeyTxCellularBytes];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_wifi_rxbytes];
        [v5 setObject:v19 forKeyedSubscript:kNStatSrcKeyRxWiFiBytes];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_wifi_txbytes];
        [v5 setObject:v20 forKeyedSubscript:kNStatSrcKeyTxWiFiBytes];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_wired_rxbytes];
        [v5 setObject:v21 forKeyedSubscript:kNStatSrcKeyRxWiredBytes];

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_wired_txbytes];
        [v5 setObject:v22 forKeyedSubscript:kNStatSrcKeyTxWiredBytes];

LABEL_9:
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_rxpackets];
        [v5 setObject:v23 forKeyedSubscript:kNStatSrcKeyRxPackets];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_rxbytes];
        [v5 setObject:v24 forKeyedSubscript:kNStatSrcKeyRxBytes];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_txpackets];
        [v5 setObject:v25 forKeyedSubscript:kNStatSrcKeyTxPackets];

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_counts.nstat_txbytes];
        [v5 setObject:v26 forKeyedSubscript:kNStatSrcKeyTxBytes];

        v27 = v5;
        goto LABEL_10;
      }

      if (a3 != 8)
      {
        goto LABEL_9;
      }
    }

    LODWORD(v6) = self->_counts.nstat_min_rtt;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / 32000.0];
    [v5 setObject:v12 forKeyedSubscript:kNStatSrcKeyMinRTT];

    LODWORD(v13) = self->_counts.nstat_avg_rtt;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / 32000.0];
    [v5 setObject:v14 forKeyedSubscript:kNStatSrcKeyAvgRTT];

    LODWORD(v15) = self->_counts.nstat_var_rtt;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15 / 16000.0];
    [v5 setObject:v16 forKeyedSubscript:kNStatSrcKeyVarRTT];

    goto LABEL_8;
  }

LABEL_10:

  return v5;
}

@end
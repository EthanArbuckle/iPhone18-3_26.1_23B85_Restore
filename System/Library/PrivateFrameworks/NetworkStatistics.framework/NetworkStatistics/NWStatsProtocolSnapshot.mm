@interface NWStatsProtocolSnapshot
+ (double)_intervalWithContinuousTime:(unint64_t)a3;
+ (double)_referenceIntervalWithContinuousTime:(unint64_t)a3;
+ (id)_snapshotWithDictionary:(id)a3;
+ (id)snapshotWithDictionary:(id)a3;
+ (void)_initializeQUICDescriptor:(nstat_tcp_descriptor *)a3 fromDictionary:(id)a4;
+ (void)_initializeTCPDescriptor:(nstat_tcp_descriptor *)a3 fromDictionary:(id)a4;
+ (void)_initializeUDPDescriptor:(nstat_udp_descriptor *)a3 fromDictionary:(id)a4;
+ (void)initialize;
+ (void)logFlowAnomaly:(id)a3 anomaly:(id)a4;
- (BOOL)attributedEntityIsBundleName;
- (BOOL)attributedEntityIsProcessName;
- (BOOL)hasTrafficDelta;
- (BOOL)isSimpleInterface:(unsigned int)a3;
- (NSString)countsDescription;
- (NSString)flowType;
- (NSString)flowTypeLowerCase;
- (NSString)interfaceCellularViaFallbackString;
- (NSString)savedAccumulatorCountsDescription;
- (NSString)savedCountsDescription;
- (NSString)verboseDescription;
- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16];
- (id)_interfaceCellularViaFallbackConciseString;
- (id)attributionReasonString;
- (id)briefDescription;
- (id)description;
- (id)domainDescription;
- (id)snapshotReasonString;
- (int)numSpecificBitmaps;
- (unint64_t)_adjustedByteCount:(unint64_t)a3 packets:(unint64_t)a4;
- (unint64_t)_byteOverheadForPacketCount:(unint64_t)a3;
- (unint64_t)_deltaForCurrentBytes:(unint64_t)a3 packets:(unint64_t)a4 prevBytes:(unint64_t)a5 prevPackets:(unint64_t)a6;
- (unint64_t)deltaAccountingRxAlternateBytes;
- (unint64_t)deltaAccountingRxCellularBytes;
- (unint64_t)deltaAccountingRxCompanionLinkBluetoothBytes;
- (unint64_t)deltaAccountingRxWiFiInfraBytes;
- (unint64_t)deltaAccountingRxWiFiNonInfraBytes;
- (unint64_t)deltaAccountingRxWiredBytes;
- (unint64_t)deltaAccountingTxAlternateBytes;
- (unint64_t)deltaAccountingTxCellularBytes;
- (unint64_t)deltaAccountingTxCompanionLinkBluetoothBytes;
- (unint64_t)deltaAccountingTxWiFiInfraBytes;
- (unint64_t)deltaAccountingTxWiFiNonInfraBytes;
- (unint64_t)deltaAccountingTxWiredBytes;
- (void)applyTrafficAdjustmentFactor:(double)a3;
- (void)donateBytesToAccumulator;
- (void)removeBytesFromAccumulator;
- (void)runConsistencyChecks;
- (xnu_activity_bitmap)networkActivityMapAlternate;
- (xnu_activity_bitmap)networkActivityMapBT;
- (xnu_activity_bitmap)networkActivityMapCell;
- (xnu_activity_bitmap)networkActivityMapTotal;
- (xnu_activity_bitmap)networkActivityMapWiFiInfra;
- (xnu_activity_bitmap)networkActivityMapWiFiNonInfra;
- (xnu_activity_bitmap)networkActivityMapWired;
@end

@implementation NWStatsProtocolSnapshot

- (void)runConsistencyChecks
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v4 = [(NWStatsProtocolSnapshot *)self _details_delta_ptr];
  if (v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxpackets >= v4->savedRxPackets && v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes >= v4->savedRxBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txpackets >= v4->savedTxPackets && v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txbytes >= v4->savedTxBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes >= v4->savedRxCellularBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txbytes >= v4->savedTxCellularBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes >= v4->savedRxWiFiInfraBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txbytes >= v4->savedTxWiFiInfraBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes >= v4->savedRxWiFiNonInfraBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txbytes >= v4->savedTxWiFiNonInfraBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes >= v4->savedRxWiredBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txbytes >= v4->savedTxWiredBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes >= v4->savedRxCompanionLinkBluetoothBytes && v3->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txbytes >= v4->savedTxCompanionLinkBluetoothBytes && v3->hdr.detailed_counts.nstat_rxduplicatebytes >= v4->savedRxDuplicateBytes && v3->hdr.detailed_counts.nstat_rxoutoforderbytes >= v4->savedRxOutOfOrderBytes && v3->hdr.detailed_counts.nstat_txretransmit >= v4->savedTxRetransmittedBytes)
  {
    if ((self->_flags & 2) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v5 = self->_flags | 0x100;
    self->_flags = v5;
    if ((v5 & 2) == 0)
    {
      goto LABEL_26;
    }
  }

  v6 = v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes + v3->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes + v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes + v3->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes + v3->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes + v3->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_rxbytes;
  if (v6 < v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes && ![(NWStatsProtocolSnapshot *)self interfaceUnknown]&& ![(NWStatsProtocolSnapshot *)self interfaceLoopback]&& ![(NWStatsProtocolSnapshot *)self interfaceCompanionLink])
  {
    flags = self->_flags;
    if ((flags & 0x50) != 0 && v6 + 100 < v3->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes)
    {
      self->_flags = flags | 0x200;
    }
  }

LABEL_26:
  if ((self->_flags & 0x10) != 0)
  {
    if (v3->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxpackets || (ts_txpackets = v3->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txpackets) != 0)
    {
      LODWORD(ts_txpackets) = 1;
    }

    if (v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxpackets || v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxpackets || v3->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (v3->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxpackets || v3->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (v3->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxpackets || v3->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (ts_txpackets >= 2 && [(NWStatsProtocolSnapshot *)self fixedInterfaceUseExpected:[(NWStatsProtocolSnapshot *)self interfaceIndex]])
    {
      self->_flags |= 0x400u;
    }
  }

  v9 = [(NWStatsProtocolSnapshot *)self failedSkywalkAction];
  v10 = self->_flags;
  if (v9)
  {
    v10 |= 0x800u;
    self->_flags = v10;
  }

  if ((v10 & 0xF00) != 0)
  {
    v11 = NStatGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_flags;
      v13 = &stru_286D30F78;
      if ((v12 & 0x100) != 0)
      {
        v14 = @"(negative delta) ";
      }

      else
      {
        v14 = &stru_286D30F78;
      }

      if ((v12 & 0x200) != 0)
      {
        v15 = @"(inconsistent rx counts) ";
      }

      else
      {
        v15 = &stru_286D30F78;
      }

      if ((v12 & 0x400) != 0)
      {
        v16 = @"(multiple TCP interfaces) ";
      }

      else
      {
        v16 = &stru_286D30F78;
      }

      if ([(NWStatsProtocolSnapshot *)self failedRouteValuesLookup])
      {
        v17 = @"(no route lookup) ";
      }

      else
      {
        v17 = &stru_286D30F78;
      }

      if ([(NWStatsProtocolSnapshot *)self failedFlowswitchValuesLookup])
      {
        v13 = @"(no flowswitch lookup) ";
      }

      v18 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v20 = 138413570;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_ERROR, "failed consistency checks %@%@%@%@%@ %@", &v20, 0x3Eu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (xnu_activity_bitmap)networkActivityMapWiFiInfra
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)deltaAccountingRxCellularBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxCellularBytes];
  rxCellularBytes = self->_adjustment_bytes.rxCellularBytes;
  v5 = v3 >= rxCellularBytes;
  result = v3 - rxCellularBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxCellularBytes];
      v9 = self->_adjustment_bytes.rxCellularBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaRxCellularBytes = %llu, adjustmentRxCellularBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingRxWiredBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxWiredBytes];
  rxWiredBytes = self->_adjustment_bytes.rxWiredBytes;
  v5 = v3 >= rxWiredBytes;
  result = v3 - rxWiredBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxWiredBytes];
      v9 = self->_adjustment_bytes.rxWiredBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaRxWiredBytes = %llu, adjustmentRxWiredBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasTrafficDelta
{
  if ([(NWStatsProtocolSnapshot *)self hasCellTrafficDelta]|| [(NWStatsProtocolSnapshot *)self hasWiFiTrafficDelta]|| [(NWStatsProtocolSnapshot *)self hasWiredTrafficDelta])
  {
    return 1;
  }

  return [(NWStatsProtocolSnapshot *)self hasCompanionLinkBluetoothTrafficDelta];
}

- (BOOL)attributedEntityIsProcessName
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesProcessName(v2);
}

- (unint64_t)deltaAccountingTxWiredBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxWiredBytes];
  txWiredBytes = self->_adjustment_bytes.txWiredBytes;
  v5 = v3 >= txWiredBytes;
  result = v3 - txWiredBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxWiredBytes];
      v9 = self->_adjustment_bytes.txWiredBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxWiredBytes = %llu, adjustmentTxWiredBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingRxWiFiInfraBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiInfraBytes];
  rxWiFiInfraBytes = self->_adjustment_bytes.rxWiFiInfraBytes;
  v5 = v3 >= rxWiFiInfraBytes;
  result = v3 - rxWiFiInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiInfraBytes];
      v9 = self->_adjustment_bytes.rxWiFiInfraBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaRxWiFiInfraBytes = %llu, adjustmentRxWiFiInfraBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingTxCellularBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxCellularBytes];
  txCellularBytes = self->_adjustment_bytes.txCellularBytes;
  v5 = v3 >= txCellularBytes;
  result = v3 - txCellularBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxCellularBytes];
      v9 = self->_adjustment_bytes.txCellularBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxCellularBytes = %llu, adjustmentTxCellularBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)attributedEntityIsBundleName
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesBundleName(v2);
}

- (unint64_t)deltaAccountingTxCompanionLinkBluetoothBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxCompanionLinkBluetoothBytes];
  txCompanionLinkBluetoothBytes = self->_adjustment_bytes.txCompanionLinkBluetoothBytes;
  v5 = v3 >= txCompanionLinkBluetoothBytes;
  result = v3 - txCompanionLinkBluetoothBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxCompanionLinkBluetoothBytes];
      v9 = self->_adjustment_bytes.txCompanionLinkBluetoothBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxCompanionLinkBluetoothBytes = %llu, adjustmentTxCompanionLinkBluetoothBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingRxCompanionLinkBluetoothBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxCompanionLinkBluetoothBytes];
  rxCompanionLinkBluetoothBytes = self->_adjustment_bytes.rxCompanionLinkBluetoothBytes;
  v5 = v3 >= rxCompanionLinkBluetoothBytes;
  result = v3 - rxCompanionLinkBluetoothBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxCompanionLinkBluetoothBytes];
      v9 = self->_adjustment_bytes.rxCompanionLinkBluetoothBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "adjustment counts > actual deltas in the snapshot. deltaRxCompanionLinkBluetoothBytes = %llu, adjustmentRxCompanionLinkBluetoothBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingTxWiFiNonInfraBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiNonInfraBytes];
  txWiFiNonInfraBytes = self->_adjustment_bytes.txWiFiNonInfraBytes;
  v5 = v3 >= txWiFiNonInfraBytes;
  result = v3 - txWiFiNonInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiNonInfraBytes];
      v9 = self->_adjustment_bytes.txWiFiNonInfraBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxWiFiNonInfraBytes = %llu, adjustmentTxWiFiNonInfraBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingRxWiFiNonInfraBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiNonInfraBytes];
  rxWiFiNonInfraBytes = self->_adjustment_bytes.rxWiFiNonInfraBytes;
  v5 = v3 >= rxWiFiNonInfraBytes;
  result = v3 - rxWiFiNonInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiNonInfraBytes];
      v9 = self->_adjustment_bytes.rxWiFiNonInfraBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaRxWiFiNonInfraBytes = %llu, adjustmentRxWiFiNonInfraBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingTxWiFiInfraBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiInfraBytes];
  txWiFiInfraBytes = self->_adjustment_bytes.txWiFiInfraBytes;
  v5 = v3 >= txWiFiInfraBytes;
  result = v3 - txWiFiInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiInfraBytes];
      v9 = self->_adjustment_bytes.txWiFiInfraBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxWiFiInfraBytes = %llu, adjustmentTxWiFiInfraBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)donateBytesToAccumulator
{
  v3 = +[NWStatsInterfaceRegistry sharedInstance];
  [v3 addVPNBytesForInterfaceIndex:-[NWStatsProtocolSnapshot interfaceIndex](self fromSnapshot:{"interfaceIndex"), self}];
  self->_isKnownVPNClient = 1;
}

- (xnu_activity_bitmap)networkActivityMapWiFiNonInfra
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (void)removeBytesFromAccumulator
{
  v4 = +[NWStatsInterfaceRegistry sharedInstance];
  v3 = [(NWStatsSnapshot *)self euuid];
  [v4 subtractVPNBytesForVPNProviderAppUUID:v3 fromSnapshot:self];

  self->_isKnownVPNProvider = 1;
}

- (xnu_activity_bitmap)networkActivityMapBT
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [(NWStatsSnapshot *)self processName];
  v13 = [(NWStatsProtocolSnapshot *)self flowType];
  v12 = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  v11 = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  v3 = [(NWStatsProtocolSnapshot *)self failedConsistencyChecks];
  v4 = &stru_286D30F78;
  if (v3)
  {
    v4 = @"-inconsistent";
  }

  v10 = v4;
  v9 = [(NWStatsProtocolSnapshot *)self _interfaceCellularViaFallbackConciseString];
  v5 = [(NWStatsProtocolSnapshot *)self flowUsesChannels];
  v6 = @"so";
  if (v5)
  {
    v6 = @"ch";
  }

  v7 = [v15 initWithFormat:@"%@ %@ flow id %lld (%@%@) %@%@ i/f %d props 0x%x first %d pkts rx %lld tx %lld, bytes %lld %lld cell %lld %lld wifi %lld %lld wired %lld %lld comp_bt %lld %lld deltas %lld %lld %lld %lld %lld %lld %lld %lld %lld %lld acct_deltas %lld %lld %lld %lld %lld %lld %lld %lld", v14, v13, v12, v11, v10, v9, v6, -[NWStatsProtocolSnapshot interfaceIndex](self, "interfaceIndex"), -[NWStatsProtocolSnapshot ifnet_properties](self, "ifnet_properties"), -[NWStatsSnapshot firstOccurrence](self, "firstOccurrence"), -[NWStatsProtocolSnapshot rxPackets](self, "rxPackets"), -[NWStatsProtocolSnapshot txPackets](self, "txPackets"), -[NWStatsProtocolSnapshot rxBytes](self, "rxBytes"), -[NWStatsProtocolSnapshot txBytes](self, "txBytes"), -[NWStatsProtocolSnapshot rxCellularBytes](self, "rxCellularBytes"), -[NWStatsProtocolSnapshot txCellularBytes](self, "txCellularBytes"), -[NWStatsProtocolSnapshot rxWiFiBytes](self, "rxWiFiBytes"), -[NWStatsProtocolSnapshot txWiFiBytes](self, "txWiFiBytes"), -[NWStatsProtocolSnapshot rxWiredBytes](self, "rxWiredBytes"), -[NWStatsProtocolSnapshot txWiredBytes](self, "txWiredBytes"), -[NWStatsProtocolSnapshot rxCompanionLinkBluetoothBytes](self, "rxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot txCompanionLinkBluetoothBytes](self, "txCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaRxBytes](self, "deltaRxBytes"), -[NWStatsProtocolSnapshot deltaTxBytes](self, "deltaTxBytes"), -[NWStatsProtocolSnapshot deltaRxCellularBytes](self, "deltaRxCellularBytes"), -[NWStatsProtocolSnapshot deltaTxCellularBytes](self, "deltaTxCellularBytes"), -[NWStatsProtocolSnapshot deltaRxWiFiBytes](self, "deltaRxWiFiBytes"), -[NWStatsProtocolSnapshot deltaTxWiFiBytes](self, "deltaTxWiFiBytes"), -[NWStatsProtocolSnapshot deltaRxWiredBytes](self, "deltaRxWiredBytes"), -[NWStatsProtocolSnapshot deltaTxWiredBytes](self, "deltaTxWiredBytes"), -[NWStatsProtocolSnapshot deltaRxCompanionLinkBluetoothBytes](self, "deltaRxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaTxCompanionLinkBluetoothBytes](self, "deltaTxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxCellularBytes](self, "deltaAccountingRxCellularBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxCellularBytes](self, "deltaAccountingTxCellularBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxWiFiBytes](self, "deltaAccountingRxWiFiBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxWiFiBytes](self, "deltaAccountingTxWiFiBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxWiredBytes](self, "deltaAccountingRxWiredBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxWiredBytes](self, "deltaAccountingTxWiredBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxCompanionLinkBluetoothBytes](self, "deltaAccountingRxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxCompanionLinkBluetoothBytes](self, "deltaAccountingTxCompanionLinkBluetoothBytes")];

  return v7;
}

- (id)_interfaceCellularViaFallbackConciseString
{
  if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaFastFallback])
  {
    v3 = @"fastRNF ";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaSlowFallback])
  {
    v3 = @"slowRNF ";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaPreferredFallback])
  {
    v3 = @"prefRNF ";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaIndependentFallback])
  {
    v3 = @"indRNF ";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaAnyFallback])
  {
    v3 = @"unqualifiedRNF ";
  }

  else
  {
    v3 = &stru_286D30F78;
  }

  return v3;
}

- (id)snapshotReasonString
{
  v2 = [(NWStatsSnapshot *)self snapshotReason]- 1;
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_27996E1F0 + v2);
  }
}

- (NSString)flowType
{
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    if ((flags & 4) != 0)
    {
      return @"TCP4";
    }

    else if ((flags & 8) != 0)
    {
      return @"TCP6";
    }

    else
    {
      return @"TCP??";
    }
  }

  else
  {
    if ((flags & 0x20) == 0)
    {
      return @"???";
    }

    v4 = self->_flags & 0xCC;
    if (v4 > 0x47)
    {
      if (v4 == 72)
      {
        return @"QUIC6";
      }

      if (v4 != 132)
      {
        if (v4 == 136)
        {
          return @"UDPSUBFLOW6";
        }

        return @"UDP??";
      }

      return @"UDPSUBFLOW4";
    }

    else
    {
      if (v4 == 4)
      {
        return @"UDP4";
      }

      if (v4 != 8)
      {
        if (v4 == 68)
        {
          return @"QUIC4";
        }

        return @"UDP??";
      }

      return @"UDP6";
    }
  }
}

- (NSString)interfaceCellularViaFallbackString
{
  if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaFastFallback])
  {
    v3 = @"fastFallback";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaSlowFallback])
  {
    v3 = @"slowFallback";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaPreferredFallback])
  {
    v3 = @"preferredFallback";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaIndependentFallback])
  {
    v3 = @"independentFallback";
  }

  else if ([(NWStatsProtocolSnapshot *)self interfaceCellularViaAnyFallback])
  {
    v3 = @"unqualifiedFallback";
  }

  else
  {
    v3 = &stru_286D30F78;
  }

  return v3;
}

- (id)briefDescription
{
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [(NWStatsSnapshot *)self processName];
  v4 = [(NWStatsProtocolSnapshot *)self flowType];
  v11 = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  v5 = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  if ([(NWStatsProtocolSnapshot *)self failedConsistencyChecks])
  {
    v6 = @"-inconsistent";
  }

  else
  {
    v6 = &stru_286D30F78;
  }

  v7 = [(NWStatsProtocolSnapshot *)self _interfaceCellularViaFallbackConciseString];
  if ([(NWStatsProtocolSnapshot *)self flowUsesChannels])
  {
    v8 = @"ch";
  }

  else
  {
    v8 = @"so";
  }

  v9 = [v12 initWithFormat:@"%@ %@ flow id %lld (%@%@) %@%@ pkts rx %lld tx %lld, bytes %lld %lld", v3, v4, v11, v5, v6, v7, v8, -[NWStatsProtocolSnapshot rxPackets](self, "rxPackets"), -[NWStatsProtocolSnapshot txPackets](self, "txPackets"), -[NWStatsProtocolSnapshot rxBytes](self, "rxBytes"), -[NWStatsProtocolSnapshot txBytes](self, "txBytes")];

  return v9;
}

- (id)domainDescription
{
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [(NWStatsSnapshot *)self processName];
  v4 = [(NWStatsProtocolSnapshot *)self flowType];
  v5 = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  v6 = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  v7 = [(NWStatsProtocolSnapshot *)self flowuuid];
  v8 = [(NWStatsSnapshot *)self domainName];
  v9 = [(NWStatsSnapshot *)self domainOwner];
  v10 = [(NWStatsSnapshot *)self domainTrackerContext];
  v11 = [(NWStatsSnapshot *)self domainAttributedBundleId];
  v12 = [v14 initWithFormat:@"%@ %@ flow id %lld (%@) fuuid %@ domain name %@ owner %@ context %@ attributed %@ silent %d", v3, v4, v5, v6, v7, v8, v9, v10, v11, -[NWStatsSnapshot isSilent](self, "isSilent")];

  return v12;
}

- (NSString)countsDescription
{
  v2 = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ts_txbytes = v2->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txbytes;
  v5 = v2->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_txbytes;
  v6 = [v3 initWithFormat:@"count rx/tx pkts %lld %lld bytes %lld %lld cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld alternate %lld %lld dup %lld ooo %lld retx %lld", v2->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxpackets, v2->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txpackets, v2->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes, ts_txbytes, v2->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_rxbytes, v5, v2->hdr.detailed_counts.nstat_rxduplicatebytes, v2->hdr.detailed_counts.nstat_rxoutoforderbytes, v2->hdr.detailed_counts.nstat_txretransmit];

  return v6;
}

- (NSString)savedCountsDescription
{
  v2 = [(NWStatsProtocolSnapshot *)self _details_delta_ptr];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  savedTxCompanionLinkBluetoothBytes = v2->savedTxCompanionLinkBluetoothBytes;
  v5 = [v3 initWithFormat:@"saved rx/tx pkts %lld %lld bytes %lld %lld cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld alternate %lld %lld dup %d ooo %d retx %d", v2->savedRxPackets, v2->savedTxPackets, v2->savedRxBytes, v2->savedTxBytes, v2->savedRxCellularBytes, v2->savedTxCellularBytes, v2->savedRxWiFiInfraBytes, v2->savedTxWiFiInfraBytes, v2->savedRxWiFiNonInfraBytes, v2->savedTxWiFiNonInfraBytes, v2->savedRxWiredBytes, v2->savedTxWiredBytes, v2->savedRxCompanionLinkBluetoothBytes, savedTxCompanionLinkBluetoothBytes, v2->savedRxAlternateBytes, v2->savedTxAlternateBytes, v2->savedRxDuplicateBytes, v2->savedRxOutOfOrderBytes, v2->savedTxRetransmittedBytes];

  return v5;
}

- (NSString)savedAccumulatorCountsDescription
{
  v2 = [(NWStatsProtocolSnapshot *)self _details_adjustment_bytes];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  rxCellularBytes = v2->rxCellularBytes;
  rxCompanionLinkBluetoothBytes = v2->rxCompanionLinkBluetoothBytes;
  v6 = [v3 initWithFormat:@"accumulator rx/tx cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld", v2->rxCellularBytes, v2->txCellularBytes, v2->rxWiFiInfraBytes, v2->txWiFiInfraBytes, v2->rxWiFiNonInfraBytes, v2->txWiFiNonInfraBytes, v2->rxWiredBytes, v2->txWiredBytes, rxCompanionLinkBluetoothBytes, v2->txCompanionLinkBluetoothBytes];

  return v6;
}

- (NSString)verboseDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NWStatsProtocolSnapshot *)self briefDescription];
  v5 = [(NWStatsProtocolSnapshot *)self countsDescription];
  v6 = [(NWStatsProtocolSnapshot *)self savedCountsDescription];
  v7 = [(NWStatsProtocolSnapshot *)self savedAccumulatorCountsDescription];
  v8 = [(NWStatsProtocolSnapshot *)self descriptorDescription];
  v9 = [v3 initWithFormat:@"%@\n    %@\n    %@\n    %@\n    %@", v4, v5, v6, v7, v8];

  return v9;
}

- (NSString)flowTypeLowerCase
{
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    if ((flags & 4) != 0)
    {
      return @"tcp4";
    }

    else if ((flags & 8) != 0)
    {
      return @"tcp6";
    }

    else
    {
      return @"tcp??";
    }
  }

  else
  {
    if ((flags & 0x20) == 0)
    {
      return @"???";
    }

    v4 = self->_flags & 0xCC;
    if (v4 > 0x47)
    {
      if (v4 == 72)
      {
        return @"quic6";
      }

      if (v4 != 132)
      {
        if (v4 == 136)
        {
          return @"udp-sflow6";
        }

        return @"udp??";
      }

      return @"udp-sflow4";
    }

    else
    {
      if (v4 == 4)
      {
        return @"udp4";
      }

      if (v4 != 8)
      {
        if (v4 == 68)
        {
          return @"quic4";
        }

        return @"udp??";
      }

      return @"udp6";
    }
  }
}

- (unint64_t)_byteOverheadForPacketCount:(unint64_t)a3
{
  flags = self->_flags;
  LODWORD(v4) = (flags >> 2) & 8;
  if ((flags & 0x10) != 0)
  {
    v4 = 20;
  }

  else
  {
    v4 = v4;
  }

  v5 = v4 + 40;
  if ((flags & 8) == 0)
  {
    v5 = v4;
  }

  v6 = v4 + 20;
  if ((flags & 4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return v7 * a3;
}

- (unint64_t)_adjustedByteCount:(unint64_t)a3 packets:(unint64_t)a4
{
  if (a3)
  {
    v7 = [(NWStatsProtocolSnapshot *)self _byteOverheadForPacketCount:a4];
    if (a4 >= 0x65 && v7 > 16 * a3)
    {
      if ((self->_flags & 0x1000000) == 0)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Possible flow anomaly, flow %lld has minimal average payload when packet counts %lld byte count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), a4, a3];
        [NWStatsProtocolSnapshot logFlowAnomaly:self anomaly:v8];
        self->_flags |= 0x1000000u;
      }

      v7 = [(NWStatsProtocolSnapshot *)self _byteOverheadForPacketCount:100];
      if (16 * a3 > v7)
      {
        v7 = 16 * a3;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 + a3;
}

- (unint64_t)_deltaForCurrentBytes:(unint64_t)a3 packets:(unint64_t)a4 prevBytes:(unint64_t)a5 prevPackets:(unint64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 < a5)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Flow anomaly: flow %lld has negative bytecount delta, old count %lld new count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), a5, a3];
LABEL_5:
    v12 = v9;
    [NWStatsProtocolSnapshot logFlowAnomaly:self anomaly:v9];

    goto LABEL_6;
  }

  if (a4 < a6)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Flow anomaly: flow %lld has negative packet count delta, old count %lld new count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), a6, a4];
    goto LABEL_5;
  }

  v15 = [(NWStatsProtocolSnapshot *)self _adjustedByteCount:a3 packets:a4];
  v16 = [(NWStatsProtocolSnapshot *)self _adjustedByteCount:a5 packets:a6];
  v17 = v15 >= v16;
  result = v15 - v16;
  if (v17)
  {
    goto LABEL_7;
  }

  v18 = NStatGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134219008;
    v20 = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a6;
    _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_ERROR, "Inverted numbers in delta calculations for flow %lld, current bytes %lld pkts %lld when previous bytes %lld pkts %lld", buf, 0x34u);
  }

LABEL_6:
  result = 0;
LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingRxAlternateBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaRxAlternateBytes];
  rxAlternateBytes = self->_adjustment_bytes.rxAlternateBytes;
  v5 = v3 >= rxAlternateBytes;
  result = v3 - rxAlternateBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaRxAlternateBytes];
      txAlternateBytes = self->_adjustment_bytes.txAlternateBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = txAlternateBytes;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaRxAlternateBytes = %llu, adjustmentRxAlternateBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)deltaAccountingTxAlternateBytes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatsProtocolSnapshot *)self deltaTxAlternateBytes];
  txAlternateBytes = self->_adjustment_bytes.txAlternateBytes;
  v5 = v3 >= txAlternateBytes;
  result = v3 - txAlternateBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NWStatsProtocolSnapshot *)self deltaTxAlternateBytes];
      v9 = self->_adjustment_bytes.txAlternateBytes;
      v10 = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxAlternateBytes = %llu, adjustmentTxAlternateBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)numSpecificBitmaps
{
  start = self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_bitmap.start;
  v3 = start == 0;
  v4 = start != 0;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_bitmap.start)
  {
    v4 = v5;
  }

  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_bitmap.start)
  {
    ++v4;
  }

  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wired.ts_bitmap.start)
  {
    ++v4;
  }

  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_bitmap.start)
  {
    ++v4;
  }

  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_bitmap.start)
  {
    return v4 + 1;
  }

  else
  {
    return v4;
  }
}

- (xnu_activity_bitmap)networkActivityMapTotal
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_total.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_total.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (xnu_activity_bitmap)networkActivityMapCell
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (xnu_activity_bitmap)networkActivityMapWired
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wired.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_wired.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (xnu_activity_bitmap)networkActivityMapAlternate
{
  if (self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_bitmap.start)
  {
    return &self->_nstat_details.hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_bitmap;
  }

  else
  {
    return 0;
  }
}

- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16]
{
  if (uuid_is_null(a3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  }

  return v4;
}

- (BOOL)isSimpleInterface:(unsigned int)a3
{
  v9 = 0;
  if ((getifaddrs(&v9) & 0x80000000) == 0)
  {
    if (v9)
    {
      v4 = v9;
      do
      {
        ifa_addr = v4->ifa_addr;
        if (ifa_addr)
        {
          ifa_name = v4->ifa_name;
          if (ifa_name)
          {
            if (ifa_addr->sa_family == 18 && *ifa_addr->sa_data == a3)
            {
              v7 = *ifa_name;
              if (v7 == 112)
              {
                if (ifa_name[1] == 100 && ifa_name[2] == 112)
                {
LABEL_18:
                  MEMORY[0x25F875230]();
                  return 1;
                }
              }

              else if (v7 == 101 && ifa_name[1] == 110)
              {
                goto LABEL_18;
              }
            }
          }
        }

        v4 = v4->ifa_next;
      }

      while (v4);
    }

    MEMORY[0x25F875230]();
  }

  return 0;
}

+ (void)logFlowAnomaly:(id)a3 anomaly:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&flowsWithAnomaliesLock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
  if ([v5 snapshotReason] == 2)
  {
    [flowsWithAnomalies removeObject:v7];
  }

  else
  {
    if ([flowsWithAnomalies count] > 0x64 || (objc_msgSend(flowsWithAnomalies, "containsObject:", v7) & 1) != 0)
    {
      goto LABEL_10;
    }

    [flowsWithAnomalies addObject:v7];
  }

  v8 = NStatGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", &v12, 0xCu);
  }

  v9 = NStatGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 verboseDescription];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEFAULT, "Flow details for anomalous flow condition: %{pubic}@", &v12, 0xCu);
  }

LABEL_10:
  os_unfair_lock_unlock(&flowsWithAnomaliesLock);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_initializeTCPDescriptor:(nstat_tcp_descriptor *)a3 fromDictionary:(id)a4
{
  v76 = a4;
  v5 = [v76 objectForKeyedSubscript:@"upid"];
  a3->upid = [v5 unsignedLongLongValue];

  v6 = [v76 objectForKeyedSubscript:@"eupid"];
  a3->eupid = [v6 unsignedLongLongValue];

  v7 = [v76 objectForKeyedSubscript:@"start_timestamp"];
  a3->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [v76 objectForKeyedSubscript:@"timestamp"];
  a3->timestamp = [v8 unsignedLongLongValue];

  v9 = [v76 objectForKeyedSubscript:@"ifindex"];
  a3->ifindex = [v9 unsignedIntValue];

  v10 = [v76 objectForKeyedSubscript:@"state"];
  a3->state = [v10 unsignedIntValue];

  v11 = [v76 objectForKeyedSubscript:@"sndbufsize"];
  a3->sndbufsize = [v11 unsignedIntValue];

  v12 = [v76 objectForKeyedSubscript:@"sndbufused"];
  a3->sndbufused = [v12 unsignedIntValue];

  v13 = [v76 objectForKeyedSubscript:@"rcvbufsize"];
  a3->rcvbufsize = [v13 unsignedIntValue];

  v14 = [v76 objectForKeyedSubscript:@"rcvbufused"];
  a3->rcvbufused = [v14 unsignedIntValue];

  v15 = [v76 objectForKeyedSubscript:@"txunacked"];
  a3->txunacked = [v15 unsignedIntValue];

  v16 = [v76 objectForKeyedSubscript:@"txwindow"];
  a3->txwindow = [v16 unsignedIntValue];

  v17 = [v76 objectForKeyedSubscript:@"txcwindow"];
  a3->txcwindow = [v17 unsignedIntValue];

  v18 = [v76 objectForKeyedSubscript:@"traffic_class"];
  a3->traffic_class = [v18 unsignedIntValue];

  v19 = [v76 objectForKeyedSubscript:@"traffic_mgt_flags"];
  a3->traffic_mgt_flags = [v19 unsignedIntValue];

  v20 = [v76 objectForKeyedSubscript:@"pid"];
  a3->pid = [v20 unsignedIntValue];

  v21 = [v76 objectForKeyedSubscript:@"epid"];
  a3->epid = [v21 unsignedIntValue];

  v22 = [v76 objectForKeyedSubscript:@"cc_algo"];
  if (v22)
  {
    v23 = v22;
    v24 = [v76 objectForKeyedSubscript:@"cc_algo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [v76 objectForKeyedSubscript:@"cc_algo"];
      v27 = [v26 UTF8String];
      if (!v27)
      {
        goto LABEL_49;
      }

      cc_algo = a3->cc_algo;
      v29 = 16;
      while (1)
      {
        v30 = *v27;
        *cc_algo = v30;
        if (!v30)
        {
          break;
        }

        ++cc_algo;
        ++v27;
        if (--v29 <= 1)
        {
          *cc_algo = 0;
          break;
        }
      }
    }
  }

  v31 = [v76 objectForKeyedSubscript:@"pname"];
  if (v31)
  {
    v32 = v31;
    v33 = [v76 objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = [v76 objectForKeyedSubscript:@"pname"];
      v36 = [v35 UTF8String];
      if (v36)
      {
        pname = a3->pname;
        v38 = 64;
        while (1)
        {
          v39 = *v36;
          *pname = v39;
          if (!v39)
          {
            break;
          }

          ++pname;
          ++v36;
          if (--v38 <= 1)
          {
            *pname = 0;
            break;
          }
        }

        goto LABEL_17;
      }

LABEL_49:
      __break(1u);
      return;
    }
  }

LABEL_17:
  v40 = [v76 objectForKeyedSubscript:@"uuid"];
  if (v40)
  {
    v41 = v40;
    v42 = [v76 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = objc_alloc(MEMORY[0x277CCAD78]);
      v45 = [v76 objectForKeyedSubscript:@"uuid"];
      v46 = [v44 initWithUUIDString:v45];

      if (v46)
      {
        [v46 getUUIDBytes:a3->uuid];
      }
    }
  }

  v47 = [v76 objectForKeyedSubscript:@"euuid"];
  if (v47)
  {
    v48 = v47;
    v49 = [v76 objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = objc_alloc(MEMORY[0x277CCAD78]);
      v52 = [v76 objectForKeyedSubscript:@"euuid"];
      v53 = [v51 initWithUUIDString:v52];

      if (v53)
      {
        [v53 getUUIDBytes:a3->euuid];
      }
    }
  }

  v54 = [v76 objectForKeyedSubscript:@"vuuid"];
  if (v54)
  {
    v55 = v54;
    v56 = [v76 objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = objc_alloc(MEMORY[0x277CCAD78]);
      v59 = [v76 objectForKeyedSubscript:@"vuuid"];
      v60 = [v58 initWithUUIDString:v59];

      if (v60)
      {
        [v60 getUUIDBytes:a3->vuuid];
      }
    }
  }

  v61 = [v76 objectForKeyedSubscript:@"fuuid"];
  if (v61)
  {
    v62 = v61;
    v63 = [v76 objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = objc_alloc(MEMORY[0x277CCAD78]);
      v66 = [v76 objectForKeyedSubscript:@"fuuid"];
      v67 = [v65 initWithUUIDString:v66];

      if (v67)
      {
        [v67 getUUIDBytes:a3->fuuid];
      }
    }
  }

  v68 = [v76 objectForKeyedSubscript:@"ifnet_properties"];
  a3->ifnet_properties = [v68 unsignedShortValue];

  v69 = [v76 objectForKeyedSubscript:@"probe_activated"];
  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFE | [v69 BOOLValue];

  v70 = [v76 objectForKeyedSubscript:@"write_probe_failed"];
  if ([v70 BOOLValue])
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFD | v71;

  v72 = [v76 objectForKeyedSubscript:@"read_probe_failed"];
  if ([v72 BOOLValue])
  {
    v73 = 4;
  }

  else
  {
    v73 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFB | v73;

  v74 = [v76 objectForKeyedSubscript:@"conn_probe_failed"];
  if ([v74 BOOLValue])
  {
    v75 = 8;
  }

  else
  {
    v75 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xF7 | v75;
}

+ (void)_initializeUDPDescriptor:(nstat_udp_descriptor *)a3 fromDictionary:(id)a4
{
  v53 = a4;
  v5 = [v53 objectForKeyedSubscript:@"upid"];
  a3->upid = [v5 unsignedLongLongValue];

  v6 = [v53 objectForKeyedSubscript:@"eupid"];
  a3->eupid = [v6 unsignedLongLongValue];

  v7 = [v53 objectForKeyedSubscript:@"start_timestamp"];
  a3->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [v53 objectForKeyedSubscript:@"timestamp"];
  a3->timestamp = [v8 unsignedLongLongValue];

  v9 = [v53 objectForKeyedSubscript:@"ifindex"];
  a3->ifindex = [v9 unsignedIntValue];

  v10 = [v53 objectForKeyedSubscript:@"rcvbufsize"];
  a3->rcvbufsize = [v10 unsignedIntValue];

  v11 = [v53 objectForKeyedSubscript:@"rcvbufused"];
  a3->rcvbufused = [v11 unsignedIntValue];

  v12 = [v53 objectForKeyedSubscript:@"traffic_class"];
  a3->traffic_class = [v12 unsignedIntValue];

  v13 = [v53 objectForKeyedSubscript:@"pid"];
  a3->pid = [v13 unsignedIntValue];

  v14 = [v53 objectForKeyedSubscript:@"epid"];
  a3->epid = [v14 unsignedIntValue];

  v15 = [v53 objectForKeyedSubscript:@"pname"];
  if (v15)
  {
    v16 = v15;
    v17 = [v53 objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [v53 objectForKeyedSubscript:@"pname"];
      v20 = [v19 UTF8String];
      if (!v20)
      {
        __break(1u);
        return;
      }

      pname = a3->pname;
      v22 = 64;
      while (1)
      {
        v23 = *v20;
        *pname = v23;
        if (!v23)
        {
          break;
        }

        ++pname;
        ++v20;
        if (--v22 <= 1)
        {
          *pname = 0;
          break;
        }
      }
    }
  }

  v24 = [v53 objectForKeyedSubscript:@"uuid"];
  if (v24)
  {
    v25 = v24;
    v26 = [v53 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = [v53 objectForKeyedSubscript:@"uuid"];
      v30 = [v28 initWithUUIDString:v29];

      if (v30)
      {
        [v30 getUUIDBytes:a3->uuid];
      }
    }
  }

  v31 = [v53 objectForKeyedSubscript:@"euuid"];
  if (v31)
  {
    v32 = v31;
    v33 = [v53 objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = objc_alloc(MEMORY[0x277CCAD78]);
      v36 = [v53 objectForKeyedSubscript:@"euuid"];
      v37 = [v35 initWithUUIDString:v36];

      if (v37)
      {
        [v37 getUUIDBytes:a3->euuid];
      }
    }
  }

  v38 = [v53 objectForKeyedSubscript:@"vuuid"];
  if (v38)
  {
    v39 = v38;
    v40 = [v53 objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if (v41)
    {
      v42 = objc_alloc(MEMORY[0x277CCAD78]);
      v43 = [v53 objectForKeyedSubscript:@"vuuid"];
      v44 = [v42 initWithUUIDString:v43];

      if (v44)
      {
        [v44 getUUIDBytes:a3->vuuid];
      }
    }
  }

  v45 = [v53 objectForKeyedSubscript:@"fuuid"];
  if (v45)
  {
    v46 = v45;
    v47 = [v53 objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if (v48)
    {
      v49 = objc_alloc(MEMORY[0x277CCAD78]);
      v50 = [v53 objectForKeyedSubscript:@"fuuid"];
      v51 = [v49 initWithUUIDString:v50];

      if (v51)
      {
        [v51 getUUIDBytes:a3->fuuid];
      }
    }
  }

  v52 = [v53 objectForKeyedSubscript:@"ifnet_properties"];
  a3->ifnet_properties = [v52 unsignedShortValue];
}

+ (void)_initializeQUICDescriptor:(nstat_tcp_descriptor *)a3 fromDictionary:(id)a4
{
  v76 = a4;
  v5 = [v76 objectForKeyedSubscript:@"upid"];
  a3->upid = [v5 unsignedLongLongValue];

  v6 = [v76 objectForKeyedSubscript:@"eupid"];
  a3->eupid = [v6 unsignedLongLongValue];

  v7 = [v76 objectForKeyedSubscript:@"start_timestamp"];
  a3->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [v76 objectForKeyedSubscript:@"timestamp"];
  a3->timestamp = [v8 unsignedLongLongValue];

  v9 = [v76 objectForKeyedSubscript:@"ifindex"];
  a3->ifindex = [v9 unsignedIntValue];

  v10 = [v76 objectForKeyedSubscript:@"state"];
  a3->state = [v10 unsignedIntValue];

  v11 = [v76 objectForKeyedSubscript:@"sndbufsize"];
  a3->sndbufsize = [v11 unsignedIntValue];

  v12 = [v76 objectForKeyedSubscript:@"sndbufused"];
  a3->sndbufused = [v12 unsignedIntValue];

  v13 = [v76 objectForKeyedSubscript:@"rcvbufsize"];
  a3->rcvbufsize = [v13 unsignedIntValue];

  v14 = [v76 objectForKeyedSubscript:@"rcvbufused"];
  a3->rcvbufused = [v14 unsignedIntValue];

  v15 = [v76 objectForKeyedSubscript:@"txunacked"];
  a3->txunacked = [v15 unsignedIntValue];

  v16 = [v76 objectForKeyedSubscript:@"txwindow"];
  a3->txwindow = [v16 unsignedIntValue];

  v17 = [v76 objectForKeyedSubscript:@"txcwindow"];
  a3->txcwindow = [v17 unsignedIntValue];

  v18 = [v76 objectForKeyedSubscript:@"traffic_class"];
  a3->traffic_class = [v18 unsignedIntValue];

  v19 = [v76 objectForKeyedSubscript:@"traffic_mgt_flags"];
  a3->traffic_mgt_flags = [v19 unsignedIntValue];

  v20 = [v76 objectForKeyedSubscript:@"pid"];
  a3->pid = [v20 unsignedIntValue];

  v21 = [v76 objectForKeyedSubscript:@"epid"];
  a3->epid = [v21 unsignedIntValue];

  v22 = [v76 objectForKeyedSubscript:@"cc_algo"];
  if (v22)
  {
    v23 = v22;
    v24 = [v76 objectForKeyedSubscript:@"cc_algo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [v76 objectForKeyedSubscript:@"cc_algo"];
      v27 = [v26 UTF8String];
      if (!v27)
      {
        goto LABEL_49;
      }

      cc_algo = a3->cc_algo;
      v29 = 16;
      while (1)
      {
        v30 = *v27;
        *cc_algo = v30;
        if (!v30)
        {
          break;
        }

        ++cc_algo;
        ++v27;
        if (--v29 <= 1)
        {
          *cc_algo = 0;
          break;
        }
      }
    }
  }

  v31 = [v76 objectForKeyedSubscript:@"pname"];
  if (v31)
  {
    v32 = v31;
    v33 = [v76 objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = [v76 objectForKeyedSubscript:@"pname"];
      v36 = [v35 UTF8String];
      if (v36)
      {
        pname = a3->pname;
        v38 = 64;
        while (1)
        {
          v39 = *v36;
          *pname = v39;
          if (!v39)
          {
            break;
          }

          ++pname;
          ++v36;
          if (--v38 <= 1)
          {
            *pname = 0;
            break;
          }
        }

        goto LABEL_17;
      }

LABEL_49:
      __break(1u);
      return;
    }
  }

LABEL_17:
  v40 = [v76 objectForKeyedSubscript:@"uuid"];
  if (v40)
  {
    v41 = v40;
    v42 = [v76 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = objc_alloc(MEMORY[0x277CCAD78]);
      v45 = [v76 objectForKeyedSubscript:@"uuid"];
      v46 = [v44 initWithUUIDString:v45];

      if (v46)
      {
        [v46 getUUIDBytes:a3->uuid];
      }
    }
  }

  v47 = [v76 objectForKeyedSubscript:@"euuid"];
  if (v47)
  {
    v48 = v47;
    v49 = [v76 objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = objc_alloc(MEMORY[0x277CCAD78]);
      v52 = [v76 objectForKeyedSubscript:@"euuid"];
      v53 = [v51 initWithUUIDString:v52];

      if (v53)
      {
        [v53 getUUIDBytes:a3->euuid];
      }
    }
  }

  v54 = [v76 objectForKeyedSubscript:@"vuuid"];
  if (v54)
  {
    v55 = v54;
    v56 = [v76 objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = objc_alloc(MEMORY[0x277CCAD78]);
      v59 = [v76 objectForKeyedSubscript:@"vuuid"];
      v60 = [v58 initWithUUIDString:v59];

      if (v60)
      {
        [v60 getUUIDBytes:a3->vuuid];
      }
    }
  }

  v61 = [v76 objectForKeyedSubscript:@"fuuid"];
  if (v61)
  {
    v62 = v61;
    v63 = [v76 objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = objc_alloc(MEMORY[0x277CCAD78]);
      v66 = [v76 objectForKeyedSubscript:@"fuuid"];
      v67 = [v65 initWithUUIDString:v66];

      if (v67)
      {
        [v67 getUUIDBytes:a3->fuuid];
      }
    }
  }

  v68 = [v76 objectForKeyedSubscript:@"ifnet_properties"];
  a3->ifnet_properties = [v68 unsignedShortValue];

  v69 = [v76 objectForKeyedSubscript:@"probe_activated"];
  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFE | [v69 BOOLValue];

  v70 = [v76 objectForKeyedSubscript:@"write_probe_failed"];
  if ([v70 BOOLValue])
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFD | v71;

  v72 = [v76 objectForKeyedSubscript:@"read_probe_failed"];
  if ([v72 BOOLValue])
  {
    v73 = 4;
  }

  else
  {
    v73 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xFB | v73;

  v74 = [v76 objectForKeyedSubscript:@"conn_probe_failed"];
  if ([v74 BOOLValue])
  {
    v75 = 8;
  }

  else
  {
    v75 = 0;
  }

  a3->var0.__pad_connstatus[0] = a3->var0.__pad_connstatus[0] & 0xF7 | v75;
}

+ (id)_snapshotWithDictionary:(id)a3
{
  v139[43] = *MEMORY[0x277D85DE8];
  v4 = a3;
  bzero(&v115, 0x338uLL);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v103 = 0u;
  v100 = 0u;
  v97 = 0u;
  v5 = [v4 objectForKeyedSubscript:@"details"];
  v6 = [v4 objectForKeyedSubscript:@"_prev_items"];
  v7 = [v5 objectForKeyedSubscript:@"hdr"];
  v8 = [v5 objectForKeyedSubscript:@"counts"];
  v9 = [v6 objectForKeyedSubscript:@"savedRxPackets"];
  v96[0] = [v9 longLongValue];

  v10 = [v6 objectForKeyedSubscript:@"savedTxPackets"];
  v96[2] = [v10 longLongValue];

  v11 = [v6 objectForKeyedSubscript:@"savedRxBytes"];
  v96[1] = [v11 longLongValue];

  v12 = [v6 objectForKeyedSubscript:@"savedTxBytes"];
  v96[3] = [v12 longLongValue];

  v13 = [v6 objectForKeyedSubscript:@"savedRxCellularBytes"];
  v96[4] = [v13 longLongValue];

  v14 = [v6 objectForKeyedSubscript:@"savedTxCellularBytes"];
  v96[5] = [v14 longLongValue];

  v15 = [v6 objectForKeyedSubscript:@"savedRxWiFiInfraBytes"];
  v98 = [v15 longLongValue];

  v16 = [v6 objectForKeyedSubscript:@"savedTxWiFiInfraBytes"];
  v99 = [v16 longLongValue];

  v17 = [v6 objectForKeyedSubscript:@"savedRxWiFiNonInfraBytes"];
  v101 = [v17 longLongValue];

  v18 = [v6 objectForKeyedSubscript:@"savedTxWiFiNonInfraBytes"];
  v102 = [v18 longLongValue];

  v19 = [v6 objectForKeyedSubscript:@"savedRxWiredBytes"];
  v104 = [v19 longLongValue];

  v20 = [v6 objectForKeyedSubscript:@"savedTxWiredBytes"];
  v105 = [v20 longLongValue];

  v21 = [v6 objectForKeyedSubscript:@"savedRxDuplicateBytes"];
  LODWORD(v111) = [v21 unsignedIntValue];

  v22 = [v6 objectForKeyedSubscript:@"savedRxOutOfOrderBytes"];
  DWORD1(v111) = [v22 unsignedIntValue];

  v23 = [v6 objectForKeyedSubscript:@"savedTxRetransmittedBytes"];
  DWORD2(v111) = [v23 unsignedIntValue];

  v24 = [v7 objectForKeyedSubscript:@"context"];
  v114 = [v24 longLongValue];

  v25 = [v7 objectForKeyedSubscript:@"type"];
  v115 = [v25 unsignedIntValue];

  v26 = [v7 objectForKeyedSubscript:@"length"];
  v116 = [v26 unsignedShortValue];

  v27 = [v7 objectForKeyedSubscript:@"flags"];
  v117 = [v27 unsignedShortValue];

  v28 = [v5 objectForKeyedSubscript:@"srcref"];
  v118 = [v28 longLongValue];

  v29 = [v5 objectForKeyedSubscript:@"event_flags"];
  v119 = [v29 longLongValue];

  v30 = [v8 objectForKeyedSubscript:@"nstat_rxpackets"];
  v120 = [v30 longLongValue];

  v31 = [v8 objectForKeyedSubscript:@"nstat_txpackets"];
  v122 = [v31 longLongValue];

  v32 = [v8 objectForKeyedSubscript:@"nstat_rxbytes"];
  v121 = [v32 longLongValue];

  v33 = [v8 objectForKeyedSubscript:@"nstat_txbytes"];
  v123 = [v33 longLongValue];

  v34 = [v8 objectForKeyedSubscript:@"nstat_cell_rxbytes"];
  v124 = [v34 longLongValue];

  v35 = [v8 objectForKeyedSubscript:@"nstat_cell_txbytes"];
  v125 = [v35 longLongValue];

  v36 = [v8 objectForKeyedSubscript:@"nstat_wifi_infra_rxbytes"];
  v126 = [v36 longLongValue];

  v37 = [v8 objectForKeyedSubscript:@"nstat_wifi_infra_txbytes"];
  v127 = [v37 longLongValue];

  v38 = [v8 objectForKeyedSubscript:@"nstat_wifi_non_infra_rxbytes"];
  v128 = [v38 longLongValue];

  v39 = [v8 objectForKeyedSubscript:@"nstat_wifi_non_infra_txbytes"];
  v129 = [v39 longLongValue];

  v40 = [v8 objectForKeyedSubscript:@"nstat_wired_rxbytes"];
  v130 = [v40 longLongValue];

  v41 = [v8 objectForKeyedSubscript:@"nstat_wired_txbytes"];
  v131 = [v41 longLongValue];

  v42 = [v8 objectForKeyedSubscript:@"nstat_rxduplicatebytes"];
  v132 = [v42 unsignedIntValue];

  v43 = [v8 objectForKeyedSubscript:@"nstat_rxoutoforderbytes"];
  v133 = [v43 unsignedIntValue];

  v44 = [v8 objectForKeyedSubscript:@"nstat_txretransmit"];
  v134 = [v44 unsignedIntValue];

  v45 = [v8 objectForKeyedSubscript:@"nstat_min_rtt"];
  v135 = [v45 unsignedIntValue];

  v46 = [v8 objectForKeyedSubscript:@"nstat_avg_rtt"];
  v136 = [v46 unsignedIntValue];

  v47 = [v8 objectForKeyedSubscript:@"nstat_var_rtt"];
  v137 = [v47 unsignedIntValue];

  v48 = [v5 objectForKeyedSubscript:@"provider"];
  v49 = [v48 unsignedIntValue];
  v138 = v49;

  v50 = [v4 objectForKeyedSubscript:@"_startStamp"];

  if (v50)
  {
    v51 = [v4 objectForKeyedSubscript:@"_startStamp"];
    [v51 floatValue];
    v53 = v52;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = [v4 objectForKeyedSubscript:@"_startStampUsecs"];

  if (v54)
  {
    v55 = [v4 objectForKeyedSubscript:@"_startStampUsecs"];
    v53 = [v55 unsignedLongLongValue] / 1000000.0;
  }

  if (v49 > 0xA)
  {
    goto LABEL_26;
  }

  if (((1 << v49) & 0x430) != 0)
  {
    v56 = [v5 objectForKeyedSubscript:@"udp_descriptor"];
    [a1 _initializeUDPDescriptor:v139 fromDictionary:v56];
    v57 = off_27996D9C8;
    goto LABEL_13;
  }

  if (((1 << v49) & 0xC) == 0)
  {
    if (v49 == 8)
    {
      v56 = [v5 objectForKeyedSubscript:@"quic_descriptor"];
      [a1 _initializeQUICDescriptor:v139 fromDictionary:v56];
      v57 = off_27996D9A8;
      goto LABEL_13;
    }

LABEL_26:
    v88 = NStatGetLog();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v113 = v49;
      _os_log_impl(&dword_25BA3A000, v88, OS_LOG_TYPE_ERROR, "unknown provider %d type for snapshot", buf, 8u);
    }

    v60 = 0;
    goto LABEL_29;
  }

  v56 = [v5 objectForKeyedSubscript:@"tcp_descriptor"];
  [a1 _initializeTCPDescriptor:v139 fromDictionary:v56];
  v57 = off_27996D9B8;
LABEL_13:

  v58 = objc_alloc(*v57);
  v59 = [v4 objectForKeyedSubscript:@"_flags"];
  v60 = [v58 initWithDetails:&v114 startTime:objc_msgSend(v59 flowFlags:"unsignedIntValue") previously:v96 peerEgressCellularCounts:{0, v53}];

  if (!v60)
  {
    goto LABEL_30;
  }

  v61 = [v4 objectForKeyedSubscript:@"snapshotReason"];
  [v60 setSnapshotReason:{objc_msgSend(v61, "intValue")}];

  v62 = [v4 objectForKeyedSubscript:@"attributedEntity"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v64 = [v4 objectForKeyedSubscript:@"attributedEntity"];
  }

  else
  {
    v64 = @"<unknown>";
  }

  v65 = [v4 objectForKeyedSubscript:@"delegateName"];
  objc_opt_class();
  v66 = objc_opt_isKindOfClass();

  v94 = v6;
  v95 = v5;
  v93 = v7;
  if (v66)
  {
    v67 = [v4 objectForKeyedSubscript:@"delegateName"];
  }

  else
  {
    v67 = 0;
  }

  v68 = [v4 objectForKeyedSubscript:@"attributionReason"];
  v69 = [v68 intValue];
  [v4 objectForKeyedSubscript:@"delegateAttributionReason"];
  v71 = v70 = v4;
  v91 = v67;
  v92 = v64;
  [v60 setAttribution:v64 derivation:v69 delegateName:v67 delegateDerivation:objc_msgSend(v71 extensionName:{"intValue"), 0}];

  v72 = [v70 objectForKeyedSubscript:@"uiBackgroundAudioCapable"];
  [v60 setIsUIBackgroundAudioCapable:{objc_msgSend(v72, "BOOLValue")}];

  v73 = [v70 objectForKeyedSubscript:@"snapshotAppStateIsForeground"];
  v74 = [v73 BOOLValue];
  v75 = [v70 objectForKeyedSubscript:@"snapshotScreenStateOn"];
  v76 = [v75 BOOLValue];
  v77 = [v70 objectForKeyedSubscript:@"startAppStateIsForeground"];
  v78 = [v77 BOOLValue];
  v79 = [v70 objectForKeyedSubscript:@"startScreenStateOn"];
  v80 = [v79 BOOLValue];
  v81 = v74;
  v4 = v70;
  [v60 setAppStateIsForeground:v81 screenStateOn:v76 startAppStateIsForeground:v78 startScreenStateOn:v80];

  v82 = [v70 objectForKeyedSubscript:@"_snapStampUsecs"];
  if (v82 && (v83 = v82, [v70 objectForKeyedSubscript:@"_snapStampUsecs"], v84 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v85 = objc_opt_isKindOfClass(), v84, v83, (v85 & 1) != 0))
  {
    v86 = [v70 objectForKeyedSubscript:@"_snapStampUsecs"];
    v87 = [v86 unsignedLongLongValue] / 1000000.0;

    [v60 setFlowSnapshotTimeIntervalSinceReferenceDate:v87];
    v6 = v94;
    v5 = v95;
    v7 = v93;
  }

  else
  {
    v6 = v94;
    v5 = v95;
    v7 = v93;
    if ((reportSnapshotWithDictionaryIssues & 1) == 0)
    {
      reportSnapshotWithDictionaryIssues = 1;
    }
  }

  [v60 runConsistencyChecks];

  v88 = v92;
LABEL_29:

LABEL_30:
  v89 = *MEMORY[0x277D85DE8];

  return v60;
}

+ (id)snapshotWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  v5 = [v4 objectForKeyedSubscript:@"details"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_20;
  }

  v6 = [v5 objectForKeyedSubscript:@"tcp_descriptor"];
  v7 = [v5 objectForKeyedSubscript:@"udp_descriptor"];
  v8 = [v5 objectForKeyedSubscript:@"quic_descriptor"];
  v9 = v8;
  v10 = v6 != 0;
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v7)
  {
    v10 = v11;
  }

  if (v8)
  {
    ++v10;
  }

  if (v10 != 1)
  {
    goto LABEL_20;
  }

  v12 = [v5 objectForKeyedSubscript:@"provider"];
  v13 = [v12 unsignedIntValue];

  v14 = 0;
  if (v13 <= 0xA)
  {
    if (((1 << v13) & 0x430) != 0)
    {
      if (v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (((1 << v13) & 0xC) == 0)
      {
        if (v13 != 8)
        {
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }

      if (v6)
      {
LABEL_26:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [a1 _snapshotWithDictionary:v4];
          goto LABEL_21;
        }
      }
    }

LABEL_20:
    v14 = 0;
  }

LABEL_21:
  v15 = v14;

  return v14;
}

- (id)attributionReasonString
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonString(v2);
}

+ (double)_intervalWithContinuousTime:(unint64_t)a3
{
  LODWORD(v3) = timebase_info_0;
  LODWORD(v4) = *algn_280C54FD4;
  return a3 * v3 / v4 / 1000000000.0;
}

+ (double)_referenceIntervalWithContinuousTime:(unint64_t)a3
{
  v5 = 9;
  do
  {
    v6 = mach_continuous_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = mach_continuous_time() - v6;
    [a1 _intervalWithContinuousTime:v9];
  }

  while (v10 * 1000000.0 >= 50.0 && v5-- != 0);
  v12 = v6 + (v9 >> 1);
  if (v12 <= a3)
  {
    [a1 _intervalWithContinuousTime:a3 - v12];
    return v8 + v15;
  }

  else
  {
    [a1 _intervalWithContinuousTime:v12 - a3];
    return v8 - v13;
  }
}

- (void)applyTrafficAdjustmentFactor:(double)a3
{
  [(NWStatsProtocolSnapshot *)self flowDuration];
  if (a3 > 0.0 && v5 > a3)
  {
    v7 = (v5 - a3) / v5;
    self->_adjustment_bytes.rxCellularBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxCellularBytes]);
    self->_adjustment_bytes.txCellularBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxCellularBytes]);
    self->_adjustment_bytes.rxWiFiInfraBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxWiFiInfraBytes]);
    self->_adjustment_bytes.txWiFiInfraBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxWiFiInfraBytes]);
    self->_adjustment_bytes.rxWiFiNonInfraBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxWiFiNonInfraBytes]);
    self->_adjustment_bytes.txWiFiNonInfraBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxWiFiNonInfraBytes]);
    self->_adjustment_bytes.rxWiredBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxWiredBytes]);
    self->_adjustment_bytes.txWiredBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxWiredBytes]);
    self->_adjustment_bytes.rxCompanionLinkBluetoothBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxCompanionLinkBluetoothBytes]);
    self->_adjustment_bytes.txCompanionLinkBluetoothBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxCompanionLinkBluetoothBytes]);
    self->_adjustment_bytes.rxAlternateBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingRxAlternateBytes]);
    self->_adjustment_bytes.txAlternateBytes = (v7 * [(NWStatsProtocolSnapshot *)self deltaAccountingTxAlternateBytes]);
  }
}

+ (void)initialize
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = mach_timebase_info(&timebase_info_0);
  if (v2)
  {
    v3 = v2;
    v4 = NStatGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_25BA3A000, v4, OS_LOG_TYPE_ERROR, "mach_timebase_info failed %d", v8, 8u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = flowsWithAnomalies;
  flowsWithAnomalies = v5;

  flowsWithAnomaliesLock = 0;
  v7 = *MEMORY[0x277D85DE8];
}

@end
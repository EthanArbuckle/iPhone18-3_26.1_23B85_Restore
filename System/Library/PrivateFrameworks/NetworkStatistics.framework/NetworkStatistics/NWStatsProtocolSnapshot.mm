@interface NWStatsProtocolSnapshot
+ (double)_intervalWithContinuousTime:(unint64_t)time;
+ (double)_referenceIntervalWithContinuousTime:(unint64_t)time;
+ (id)_snapshotWithDictionary:(id)dictionary;
+ (id)snapshotWithDictionary:(id)dictionary;
+ (void)_initializeQUICDescriptor:(nstat_tcp_descriptor *)descriptor fromDictionary:(id)dictionary;
+ (void)_initializeTCPDescriptor:(nstat_tcp_descriptor *)descriptor fromDictionary:(id)dictionary;
+ (void)_initializeUDPDescriptor:(nstat_udp_descriptor *)descriptor fromDictionary:(id)dictionary;
+ (void)initialize;
+ (void)logFlowAnomaly:(id)anomaly anomaly:(id)a4;
- (BOOL)attributedEntityIsBundleName;
- (BOOL)attributedEntityIsProcessName;
- (BOOL)hasTrafficDelta;
- (BOOL)isSimpleInterface:(unsigned int)interface;
- (NSString)countsDescription;
- (NSString)flowType;
- (NSString)flowTypeLowerCase;
- (NSString)interfaceCellularViaFallbackString;
- (NSString)savedAccumulatorCountsDescription;
- (NSString)savedCountsDescription;
- (NSString)verboseDescription;
- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16];
- (id)_interfaceCellularViaFallbackConciseString;
- (id)attributionReasonString;
- (id)briefDescription;
- (id)description;
- (id)domainDescription;
- (id)snapshotReasonString;
- (int)numSpecificBitmaps;
- (unint64_t)_adjustedByteCount:(unint64_t)count packets:(unint64_t)packets;
- (unint64_t)_byteOverheadForPacketCount:(unint64_t)count;
- (unint64_t)_deltaForCurrentBytes:(unint64_t)bytes packets:(unint64_t)packets prevBytes:(unint64_t)prevBytes prevPackets:(unint64_t)prevPackets;
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
- (void)applyTrafficAdjustmentFactor:(double)factor;
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
  _details_ptr = [(NWStatsProtocolSnapshot *)self _details_ptr];
  _details_delta_ptr = [(NWStatsProtocolSnapshot *)self _details_delta_ptr];
  if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxpackets >= _details_delta_ptr->savedRxPackets && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes >= _details_delta_ptr->savedRxBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txpackets >= _details_delta_ptr->savedTxPackets && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txbytes >= _details_delta_ptr->savedTxBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes >= _details_delta_ptr->savedRxCellularBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txbytes >= _details_delta_ptr->savedTxCellularBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes >= _details_delta_ptr->savedRxWiFiInfraBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txbytes >= _details_delta_ptr->savedTxWiFiInfraBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes >= _details_delta_ptr->savedRxWiFiNonInfraBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txbytes >= _details_delta_ptr->savedTxWiFiNonInfraBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes >= _details_delta_ptr->savedRxWiredBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txbytes >= _details_delta_ptr->savedTxWiredBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes >= _details_delta_ptr->savedRxCompanionLinkBluetoothBytes && _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txbytes >= _details_delta_ptr->savedTxCompanionLinkBluetoothBytes && _details_ptr->hdr.detailed_counts.nstat_rxduplicatebytes >= _details_delta_ptr->savedRxDuplicateBytes && _details_ptr->hdr.detailed_counts.nstat_rxoutoforderbytes >= _details_delta_ptr->savedRxOutOfOrderBytes && _details_ptr->hdr.detailed_counts.nstat_txretransmit >= _details_delta_ptr->savedTxRetransmittedBytes)
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

  v6 = _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes + _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes + _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes + _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes + _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes + _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_rxbytes;
  if (v6 < _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes && ![(NWStatsProtocolSnapshot *)self interfaceUnknown]&& ![(NWStatsProtocolSnapshot *)self interfaceLoopback]&& ![(NWStatsProtocolSnapshot *)self interfaceCompanionLink])
  {
    flags = self->_flags;
    if ((flags & 0x50) != 0 && v6 + 100 < _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes)
    {
      self->_flags = flags | 0x200;
    }
  }

LABEL_26:
  if ((self->_flags & 0x10) != 0)
  {
    if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxpackets || (ts_txpackets = _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txpackets) != 0)
    {
      LODWORD(ts_txpackets) = 1;
    }

    if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxpackets || _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxpackets || _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxpackets || _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (_details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxpackets || _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txpackets)
    {
      LODWORD(ts_txpackets) = ts_txpackets + 1;
    }

    if (ts_txpackets >= 2 && [(NWStatsProtocolSnapshot *)self fixedInterfaceUseExpected:[(NWStatsProtocolSnapshot *)self interfaceIndex]])
    {
      self->_flags |= 0x400u;
    }
  }

  failedSkywalkAction = [(NWStatsProtocolSnapshot *)self failedSkywalkAction];
  v10 = self->_flags;
  if (failedSkywalkAction)
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

      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
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
      v31 = verboseDescription;
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
  deltaRxCellularBytes = [(NWStatsProtocolSnapshot *)self deltaRxCellularBytes];
  rxCellularBytes = self->_adjustment_bytes.rxCellularBytes;
  v5 = deltaRxCellularBytes >= rxCellularBytes;
  result = deltaRxCellularBytes - rxCellularBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxCellularBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxCellularBytes];
      v9 = self->_adjustment_bytes.rxCellularBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxCellularBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaRxWiredBytes = [(NWStatsProtocolSnapshot *)self deltaRxWiredBytes];
  rxWiredBytes = self->_adjustment_bytes.rxWiredBytes;
  v5 = deltaRxWiredBytes >= rxWiredBytes;
  result = deltaRxWiredBytes - rxWiredBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxWiredBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxWiredBytes];
      v9 = self->_adjustment_bytes.rxWiredBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxWiredBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesProcessName(attributionReason);
}

- (unint64_t)deltaAccountingTxWiredBytes
{
  v18 = *MEMORY[0x277D85DE8];
  deltaTxWiredBytes = [(NWStatsProtocolSnapshot *)self deltaTxWiredBytes];
  txWiredBytes = self->_adjustment_bytes.txWiredBytes;
  v5 = deltaTxWiredBytes >= txWiredBytes;
  result = deltaTxWiredBytes - txWiredBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxWiredBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxWiredBytes];
      v9 = self->_adjustment_bytes.txWiredBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxWiredBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaRxWiFiInfraBytes = [(NWStatsProtocolSnapshot *)self deltaRxWiFiInfraBytes];
  rxWiFiInfraBytes = self->_adjustment_bytes.rxWiFiInfraBytes;
  v5 = deltaRxWiFiInfraBytes >= rxWiFiInfraBytes;
  result = deltaRxWiFiInfraBytes - rxWiFiInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxWiFiInfraBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiInfraBytes];
      v9 = self->_adjustment_bytes.rxWiFiInfraBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxWiFiInfraBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaTxCellularBytes = [(NWStatsProtocolSnapshot *)self deltaTxCellularBytes];
  txCellularBytes = self->_adjustment_bytes.txCellularBytes;
  v5 = deltaTxCellularBytes >= txCellularBytes;
  result = deltaTxCellularBytes - txCellularBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxCellularBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxCellularBytes];
      v9 = self->_adjustment_bytes.txCellularBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxCellularBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Accounting adjustment counts > actual deltas in the snapshot. deltaTxCellularBytes = %llu, adjustmentTxCellularBytes = %llu\n%@", &v12, 0x20u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)attributedEntityIsBundleName
{
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesBundleName(attributionReason);
}

- (unint64_t)deltaAccountingTxCompanionLinkBluetoothBytes
{
  v18 = *MEMORY[0x277D85DE8];
  deltaTxCompanionLinkBluetoothBytes = [(NWStatsProtocolSnapshot *)self deltaTxCompanionLinkBluetoothBytes];
  txCompanionLinkBluetoothBytes = self->_adjustment_bytes.txCompanionLinkBluetoothBytes;
  v5 = deltaTxCompanionLinkBluetoothBytes >= txCompanionLinkBluetoothBytes;
  result = deltaTxCompanionLinkBluetoothBytes - txCompanionLinkBluetoothBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxCompanionLinkBluetoothBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxCompanionLinkBluetoothBytes];
      v9 = self->_adjustment_bytes.txCompanionLinkBluetoothBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxCompanionLinkBluetoothBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaRxCompanionLinkBluetoothBytes = [(NWStatsProtocolSnapshot *)self deltaRxCompanionLinkBluetoothBytes];
  rxCompanionLinkBluetoothBytes = self->_adjustment_bytes.rxCompanionLinkBluetoothBytes;
  v5 = deltaRxCompanionLinkBluetoothBytes >= rxCompanionLinkBluetoothBytes;
  result = deltaRxCompanionLinkBluetoothBytes - rxCompanionLinkBluetoothBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxCompanionLinkBluetoothBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxCompanionLinkBluetoothBytes];
      v9 = self->_adjustment_bytes.rxCompanionLinkBluetoothBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxCompanionLinkBluetoothBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaTxWiFiNonInfraBytes = [(NWStatsProtocolSnapshot *)self deltaTxWiFiNonInfraBytes];
  txWiFiNonInfraBytes = self->_adjustment_bytes.txWiFiNonInfraBytes;
  v5 = deltaTxWiFiNonInfraBytes >= txWiFiNonInfraBytes;
  result = deltaTxWiFiNonInfraBytes - txWiFiNonInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxWiFiNonInfraBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiNonInfraBytes];
      v9 = self->_adjustment_bytes.txWiFiNonInfraBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxWiFiNonInfraBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaRxWiFiNonInfraBytes = [(NWStatsProtocolSnapshot *)self deltaRxWiFiNonInfraBytes];
  rxWiFiNonInfraBytes = self->_adjustment_bytes.rxWiFiNonInfraBytes;
  v5 = deltaRxWiFiNonInfraBytes >= rxWiFiNonInfraBytes;
  result = deltaRxWiFiNonInfraBytes - rxWiFiNonInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxWiFiNonInfraBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxWiFiNonInfraBytes];
      v9 = self->_adjustment_bytes.rxWiFiNonInfraBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxWiFiNonInfraBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaTxWiFiInfraBytes = [(NWStatsProtocolSnapshot *)self deltaTxWiFiInfraBytes];
  txWiFiInfraBytes = self->_adjustment_bytes.txWiFiInfraBytes;
  v5 = deltaTxWiFiInfraBytes >= txWiFiInfraBytes;
  result = deltaTxWiFiInfraBytes - txWiFiInfraBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxWiFiInfraBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxWiFiInfraBytes];
      v9 = self->_adjustment_bytes.txWiFiInfraBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxWiFiInfraBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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
  euuid = [(NWStatsSnapshot *)self euuid];
  [v4 subtractVPNBytesForVPNProviderAppUUID:euuid fromSnapshot:self];

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
  processName = [(NWStatsSnapshot *)self processName];
  flowType = [(NWStatsProtocolSnapshot *)self flowType];
  sourceIdentifier = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  snapshotReasonString = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  failedConsistencyChecks = [(NWStatsProtocolSnapshot *)self failedConsistencyChecks];
  v4 = &stru_286D30F78;
  if (failedConsistencyChecks)
  {
    v4 = @"-inconsistent";
  }

  v10 = v4;
  _interfaceCellularViaFallbackConciseString = [(NWStatsProtocolSnapshot *)self _interfaceCellularViaFallbackConciseString];
  flowUsesChannels = [(NWStatsProtocolSnapshot *)self flowUsesChannels];
  v6 = @"so";
  if (flowUsesChannels)
  {
    v6 = @"ch";
  }

  v7 = [v15 initWithFormat:@"%@ %@ flow id %lld (%@%@) %@%@ i/f %d props 0x%x first %d pkts rx %lld tx %lld, bytes %lld %lld cell %lld %lld wifi %lld %lld wired %lld %lld comp_bt %lld %lld deltas %lld %lld %lld %lld %lld %lld %lld %lld %lld %lld acct_deltas %lld %lld %lld %lld %lld %lld %lld %lld", processName, flowType, sourceIdentifier, snapshotReasonString, v10, _interfaceCellularViaFallbackConciseString, v6, -[NWStatsProtocolSnapshot interfaceIndex](self, "interfaceIndex"), -[NWStatsProtocolSnapshot ifnet_properties](self, "ifnet_properties"), -[NWStatsSnapshot firstOccurrence](self, "firstOccurrence"), -[NWStatsProtocolSnapshot rxPackets](self, "rxPackets"), -[NWStatsProtocolSnapshot txPackets](self, "txPackets"), -[NWStatsProtocolSnapshot rxBytes](self, "rxBytes"), -[NWStatsProtocolSnapshot txBytes](self, "txBytes"), -[NWStatsProtocolSnapshot rxCellularBytes](self, "rxCellularBytes"), -[NWStatsProtocolSnapshot txCellularBytes](self, "txCellularBytes"), -[NWStatsProtocolSnapshot rxWiFiBytes](self, "rxWiFiBytes"), -[NWStatsProtocolSnapshot txWiFiBytes](self, "txWiFiBytes"), -[NWStatsProtocolSnapshot rxWiredBytes](self, "rxWiredBytes"), -[NWStatsProtocolSnapshot txWiredBytes](self, "txWiredBytes"), -[NWStatsProtocolSnapshot rxCompanionLinkBluetoothBytes](self, "rxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot txCompanionLinkBluetoothBytes](self, "txCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaRxBytes](self, "deltaRxBytes"), -[NWStatsProtocolSnapshot deltaTxBytes](self, "deltaTxBytes"), -[NWStatsProtocolSnapshot deltaRxCellularBytes](self, "deltaRxCellularBytes"), -[NWStatsProtocolSnapshot deltaTxCellularBytes](self, "deltaTxCellularBytes"), -[NWStatsProtocolSnapshot deltaRxWiFiBytes](self, "deltaRxWiFiBytes"), -[NWStatsProtocolSnapshot deltaTxWiFiBytes](self, "deltaTxWiFiBytes"), -[NWStatsProtocolSnapshot deltaRxWiredBytes](self, "deltaRxWiredBytes"), -[NWStatsProtocolSnapshot deltaTxWiredBytes](self, "deltaTxWiredBytes"), -[NWStatsProtocolSnapshot deltaRxCompanionLinkBluetoothBytes](self, "deltaRxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaTxCompanionLinkBluetoothBytes](self, "deltaTxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxCellularBytes](self, "deltaAccountingRxCellularBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxCellularBytes](self, "deltaAccountingTxCellularBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxWiFiBytes](self, "deltaAccountingRxWiFiBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxWiFiBytes](self, "deltaAccountingTxWiFiBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxWiredBytes](self, "deltaAccountingRxWiredBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxWiredBytes](self, "deltaAccountingTxWiredBytes"), -[NWStatsProtocolSnapshot deltaAccountingRxCompanionLinkBluetoothBytes](self, "deltaAccountingRxCompanionLinkBluetoothBytes"), -[NWStatsProtocolSnapshot deltaAccountingTxCompanionLinkBluetoothBytes](self, "deltaAccountingTxCompanionLinkBluetoothBytes")];

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
  processName = [(NWStatsSnapshot *)self processName];
  flowType = [(NWStatsProtocolSnapshot *)self flowType];
  sourceIdentifier = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  snapshotReasonString = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  if ([(NWStatsProtocolSnapshot *)self failedConsistencyChecks])
  {
    v6 = @"-inconsistent";
  }

  else
  {
    v6 = &stru_286D30F78;
  }

  _interfaceCellularViaFallbackConciseString = [(NWStatsProtocolSnapshot *)self _interfaceCellularViaFallbackConciseString];
  if ([(NWStatsProtocolSnapshot *)self flowUsesChannels])
  {
    v8 = @"ch";
  }

  else
  {
    v8 = @"so";
  }

  v9 = [v12 initWithFormat:@"%@ %@ flow id %lld (%@%@) %@%@ pkts rx %lld tx %lld, bytes %lld %lld", processName, flowType, sourceIdentifier, snapshotReasonString, v6, _interfaceCellularViaFallbackConciseString, v8, -[NWStatsProtocolSnapshot rxPackets](self, "rxPackets"), -[NWStatsProtocolSnapshot txPackets](self, "txPackets"), -[NWStatsProtocolSnapshot rxBytes](self, "rxBytes"), -[NWStatsProtocolSnapshot txBytes](self, "txBytes")];

  return v9;
}

- (id)domainDescription
{
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  processName = [(NWStatsSnapshot *)self processName];
  flowType = [(NWStatsProtocolSnapshot *)self flowType];
  sourceIdentifier = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
  snapshotReasonString = [(NWStatsProtocolSnapshot *)self snapshotReasonString];
  flowuuid = [(NWStatsProtocolSnapshot *)self flowuuid];
  domainName = [(NWStatsSnapshot *)self domainName];
  domainOwner = [(NWStatsSnapshot *)self domainOwner];
  domainTrackerContext = [(NWStatsSnapshot *)self domainTrackerContext];
  domainAttributedBundleId = [(NWStatsSnapshot *)self domainAttributedBundleId];
  v12 = [v14 initWithFormat:@"%@ %@ flow id %lld (%@) fuuid %@ domain name %@ owner %@ context %@ attributed %@ silent %d", processName, flowType, sourceIdentifier, snapshotReasonString, flowuuid, domainName, domainOwner, domainTrackerContext, domainAttributedBundleId, -[NWStatsSnapshot isSilent](self, "isSilent")];

  return v12;
}

- (NSString)countsDescription
{
  _details_ptr = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ts_txbytes = _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_txbytes;
  v5 = _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_txbytes;
  v6 = [v3 initWithFormat:@"count rx/tx pkts %lld %lld bytes %lld %lld cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld alternate %lld %lld dup %lld ooo %lld retx %lld", _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxpackets, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txpackets, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_rxbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_total.ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_rxbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_cellular.ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_rxbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_infra.ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_rxbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wifi_non_infra.ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_rxbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_wired.ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_bluetooth.ts_rxbytes, ts_txbytes, _details_ptr->hdr.detailed_counts.nstat_media_stats.ms_alternate.ts_rxbytes, v5, _details_ptr->hdr.detailed_counts.nstat_rxduplicatebytes, _details_ptr->hdr.detailed_counts.nstat_rxoutoforderbytes, _details_ptr->hdr.detailed_counts.nstat_txretransmit];

  return v6;
}

- (NSString)savedCountsDescription
{
  _details_delta_ptr = [(NWStatsProtocolSnapshot *)self _details_delta_ptr];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  savedTxCompanionLinkBluetoothBytes = _details_delta_ptr->savedTxCompanionLinkBluetoothBytes;
  v5 = [v3 initWithFormat:@"saved rx/tx pkts %lld %lld bytes %lld %lld cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld alternate %lld %lld dup %d ooo %d retx %d", _details_delta_ptr->savedRxPackets, _details_delta_ptr->savedTxPackets, _details_delta_ptr->savedRxBytes, _details_delta_ptr->savedTxBytes, _details_delta_ptr->savedRxCellularBytes, _details_delta_ptr->savedTxCellularBytes, _details_delta_ptr->savedRxWiFiInfraBytes, _details_delta_ptr->savedTxWiFiInfraBytes, _details_delta_ptr->savedRxWiFiNonInfraBytes, _details_delta_ptr->savedTxWiFiNonInfraBytes, _details_delta_ptr->savedRxWiredBytes, _details_delta_ptr->savedTxWiredBytes, _details_delta_ptr->savedRxCompanionLinkBluetoothBytes, savedTxCompanionLinkBluetoothBytes, _details_delta_ptr->savedRxAlternateBytes, _details_delta_ptr->savedTxAlternateBytes, _details_delta_ptr->savedRxDuplicateBytes, _details_delta_ptr->savedRxOutOfOrderBytes, _details_delta_ptr->savedTxRetransmittedBytes];

  return v5;
}

- (NSString)savedAccumulatorCountsDescription
{
  _details_adjustment_bytes = [(NWStatsProtocolSnapshot *)self _details_adjustment_bytes];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  rxCellularBytes = _details_adjustment_bytes->rxCellularBytes;
  rxCompanionLinkBluetoothBytes = _details_adjustment_bytes->rxCompanionLinkBluetoothBytes;
  v6 = [v3 initWithFormat:@"accumulator rx/tx cell %lld %lld wifi-infra %lld %lld non-infra %lld %lld wired %lld %lld bt %lld %lld", _details_adjustment_bytes->rxCellularBytes, _details_adjustment_bytes->txCellularBytes, _details_adjustment_bytes->rxWiFiInfraBytes, _details_adjustment_bytes->txWiFiInfraBytes, _details_adjustment_bytes->rxWiFiNonInfraBytes, _details_adjustment_bytes->txWiFiNonInfraBytes, _details_adjustment_bytes->rxWiredBytes, _details_adjustment_bytes->txWiredBytes, rxCompanionLinkBluetoothBytes, _details_adjustment_bytes->txCompanionLinkBluetoothBytes];

  return v6;
}

- (NSString)verboseDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  briefDescription = [(NWStatsProtocolSnapshot *)self briefDescription];
  countsDescription = [(NWStatsProtocolSnapshot *)self countsDescription];
  savedCountsDescription = [(NWStatsProtocolSnapshot *)self savedCountsDescription];
  savedAccumulatorCountsDescription = [(NWStatsProtocolSnapshot *)self savedAccumulatorCountsDescription];
  descriptorDescription = [(NWStatsProtocolSnapshot *)self descriptorDescription];
  v9 = [v3 initWithFormat:@"%@\n    %@\n    %@\n    %@\n    %@", briefDescription, countsDescription, savedCountsDescription, savedAccumulatorCountsDescription, descriptorDescription];

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

- (unint64_t)_byteOverheadForPacketCount:(unint64_t)count
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

  return v7 * count;
}

- (unint64_t)_adjustedByteCount:(unint64_t)count packets:(unint64_t)packets
{
  if (count)
  {
    v7 = [(NWStatsProtocolSnapshot *)self _byteOverheadForPacketCount:packets];
    if (packets >= 0x65 && v7 > 16 * count)
    {
      if ((self->_flags & 0x1000000) == 0)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Possible flow anomaly, flow %lld has minimal average payload when packet counts %lld byte count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), packets, count];
        [NWStatsProtocolSnapshot logFlowAnomaly:self anomaly:v8];
        self->_flags |= 0x1000000u;
      }

      v7 = [(NWStatsProtocolSnapshot *)self _byteOverheadForPacketCount:100];
      if (16 * count > v7)
      {
        v7 = 16 * count;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 + count;
}

- (unint64_t)_deltaForCurrentBytes:(unint64_t)bytes packets:(unint64_t)packets prevBytes:(unint64_t)prevBytes prevPackets:(unint64_t)prevPackets
{
  v29 = *MEMORY[0x277D85DE8];
  if (bytes < prevBytes)
  {
    bytes = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Flow anomaly: flow %lld has negative bytecount delta, old count %lld new count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), prevBytes, bytes];
LABEL_5:
    v12 = bytes;
    [NWStatsProtocolSnapshot logFlowAnomaly:self anomaly:bytes];

    goto LABEL_6;
  }

  if (packets < prevPackets)
  {
    bytes = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Flow anomaly: flow %lld has negative packet count delta, old count %lld new count %lld", -[NWStatsProtocolSnapshot sourceIdentifier](self, "sourceIdentifier"), prevPackets, packets];
    goto LABEL_5;
  }

  v15 = [(NWStatsProtocolSnapshot *)self _adjustedByteCount:bytes packets:packets];
  v16 = [(NWStatsProtocolSnapshot *)self _adjustedByteCount:prevBytes packets:prevPackets];
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
    sourceIdentifier = [(NWStatsProtocolSnapshot *)self sourceIdentifier];
    v21 = 2048;
    bytesCopy = bytes;
    v23 = 2048;
    packetsCopy = packets;
    v25 = 2048;
    prevBytesCopy = prevBytes;
    v27 = 2048;
    prevPacketsCopy = prevPackets;
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
  deltaRxAlternateBytes = [(NWStatsProtocolSnapshot *)self deltaRxAlternateBytes];
  rxAlternateBytes = self->_adjustment_bytes.rxAlternateBytes;
  v5 = deltaRxAlternateBytes >= rxAlternateBytes;
  result = deltaRxAlternateBytes - rxAlternateBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaRxAlternateBytes2 = [(NWStatsProtocolSnapshot *)self deltaRxAlternateBytes];
      txAlternateBytes = self->_adjustment_bytes.txAlternateBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaRxAlternateBytes2;
      v14 = 2048;
      v15 = txAlternateBytes;
      v16 = 2112;
      v17 = verboseDescription;
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
  deltaTxAlternateBytes = [(NWStatsProtocolSnapshot *)self deltaTxAlternateBytes];
  txAlternateBytes = self->_adjustment_bytes.txAlternateBytes;
  v5 = deltaTxAlternateBytes >= txAlternateBytes;
  result = deltaTxAlternateBytes - txAlternateBytes;
  if (!v5)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      deltaTxAlternateBytes2 = [(NWStatsProtocolSnapshot *)self deltaTxAlternateBytes];
      v9 = self->_adjustment_bytes.txAlternateBytes;
      verboseDescription = [(NWStatsProtocolSnapshot *)self verboseDescription];
      v12 = 134218498;
      v13 = deltaTxAlternateBytes2;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = verboseDescription;
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

- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16]
{
  if (uuid_is_null(bytes))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
  }

  return v4;
}

- (BOOL)isSimpleInterface:(unsigned int)interface
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
            if (ifa_addr->sa_family == 18 && *ifa_addr->sa_data == interface)
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

+ (void)logFlowAnomaly:(id)anomaly anomaly:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  v6 = a4;
  os_unfair_lock_lock(&flowsWithAnomaliesLock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(anomalyCopy, "sourceIdentifier")}];
  if ([anomalyCopy snapshotReason] == 2)
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
    verboseDescription = [anomalyCopy verboseDescription];
    v12 = 138412290;
    v13 = verboseDescription;
    _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEFAULT, "Flow details for anomalous flow condition: %{pubic}@", &v12, 0xCu);
  }

LABEL_10:
  os_unfair_lock_unlock(&flowsWithAnomaliesLock);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_initializeTCPDescriptor:(nstat_tcp_descriptor *)descriptor fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"upid"];
  descriptor->upid = [v5 unsignedLongLongValue];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"eupid"];
  descriptor->eupid = [v6 unsignedLongLongValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"start_timestamp"];
  descriptor->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  descriptor->timestamp = [v8 unsignedLongLongValue];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"ifindex"];
  descriptor->ifindex = [v9 unsignedIntValue];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  descriptor->state = [v10 unsignedIntValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"sndbufsize"];
  descriptor->sndbufsize = [v11 unsignedIntValue];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"sndbufused"];
  descriptor->sndbufused = [v12 unsignedIntValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufsize"];
  descriptor->rcvbufsize = [v13 unsignedIntValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufused"];
  descriptor->rcvbufused = [v14 unsignedIntValue];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"txunacked"];
  descriptor->txunacked = [v15 unsignedIntValue];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"txwindow"];
  descriptor->txwindow = [v16 unsignedIntValue];

  v17 = [dictionaryCopy objectForKeyedSubscript:@"txcwindow"];
  descriptor->txcwindow = [v17 unsignedIntValue];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"traffic_class"];
  descriptor->traffic_class = [v18 unsignedIntValue];

  v19 = [dictionaryCopy objectForKeyedSubscript:@"traffic_mgt_flags"];
  descriptor->traffic_mgt_flags = [v19 unsignedIntValue];

  v20 = [dictionaryCopy objectForKeyedSubscript:@"pid"];
  descriptor->pid = [v20 unsignedIntValue];

  v21 = [dictionaryCopy objectForKeyedSubscript:@"epid"];
  descriptor->epid = [v21 unsignedIntValue];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
  if (v22)
  {
    v23 = v22;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
      uTF8String = [v26 UTF8String];
      if (!uTF8String)
      {
        goto LABEL_49;
      }

      cc_algo = descriptor->cc_algo;
      v29 = 16;
      while (1)
      {
        v30 = *uTF8String;
        *cc_algo = v30;
        if (!v30)
        {
          break;
        }

        ++cc_algo;
        ++uTF8String;
        if (--v29 <= 1)
        {
          *cc_algo = 0;
          break;
        }
      }
    }
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
  if (v31)
  {
    v32 = v31;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
      uTF8String2 = [v35 UTF8String];
      if (uTF8String2)
      {
        pname = descriptor->pname;
        v38 = 64;
        while (1)
        {
          v39 = *uTF8String2;
          *pname = v39;
          if (!v39)
          {
            break;
          }

          ++pname;
          ++uTF8String2;
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
  v40 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
  if (v40)
  {
    v41 = v40;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = objc_alloc(MEMORY[0x277CCAD78]);
      v45 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
      v46 = [v44 initWithUUIDString:v45];

      if (v46)
      {
        [v46 getUUIDBytes:descriptor->uuid];
      }
    }
  }

  v47 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
  if (v47)
  {
    v48 = v47;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = objc_alloc(MEMORY[0x277CCAD78]);
      v52 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
      v53 = [v51 initWithUUIDString:v52];

      if (v53)
      {
        [v53 getUUIDBytes:descriptor->euuid];
      }
    }
  }

  v54 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
  if (v54)
  {
    v55 = v54;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = objc_alloc(MEMORY[0x277CCAD78]);
      v59 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
      v60 = [v58 initWithUUIDString:v59];

      if (v60)
      {
        [v60 getUUIDBytes:descriptor->vuuid];
      }
    }
  }

  v61 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
  if (v61)
  {
    v62 = v61;
    v63 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = objc_alloc(MEMORY[0x277CCAD78]);
      v66 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
      v67 = [v65 initWithUUIDString:v66];

      if (v67)
      {
        [v67 getUUIDBytes:descriptor->fuuid];
      }
    }
  }

  v68 = [dictionaryCopy objectForKeyedSubscript:@"ifnet_properties"];
  descriptor->ifnet_properties = [v68 unsignedShortValue];

  v69 = [dictionaryCopy objectForKeyedSubscript:@"probe_activated"];
  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFE | [v69 BOOLValue];

  v70 = [dictionaryCopy objectForKeyedSubscript:@"write_probe_failed"];
  if ([v70 BOOLValue])
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFD | v71;

  v72 = [dictionaryCopy objectForKeyedSubscript:@"read_probe_failed"];
  if ([v72 BOOLValue])
  {
    v73 = 4;
  }

  else
  {
    v73 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFB | v73;

  v74 = [dictionaryCopy objectForKeyedSubscript:@"conn_probe_failed"];
  if ([v74 BOOLValue])
  {
    v75 = 8;
  }

  else
  {
    v75 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xF7 | v75;
}

+ (void)_initializeUDPDescriptor:(nstat_udp_descriptor *)descriptor fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"upid"];
  descriptor->upid = [v5 unsignedLongLongValue];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"eupid"];
  descriptor->eupid = [v6 unsignedLongLongValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"start_timestamp"];
  descriptor->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  descriptor->timestamp = [v8 unsignedLongLongValue];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"ifindex"];
  descriptor->ifindex = [v9 unsignedIntValue];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufsize"];
  descriptor->rcvbufsize = [v10 unsignedIntValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufused"];
  descriptor->rcvbufused = [v11 unsignedIntValue];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"traffic_class"];
  descriptor->traffic_class = [v12 unsignedIntValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"pid"];
  descriptor->pid = [v13 unsignedIntValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"epid"];
  descriptor->epid = [v14 unsignedIntValue];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
  if (v15)
  {
    v16 = v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
      uTF8String = [v19 UTF8String];
      if (!uTF8String)
      {
        __break(1u);
        return;
      }

      pname = descriptor->pname;
      v22 = 64;
      while (1)
      {
        v23 = *uTF8String;
        *pname = v23;
        if (!v23)
        {
          break;
        }

        ++pname;
        ++uTF8String;
        if (--v22 <= 1)
        {
          *pname = 0;
          break;
        }
      }
    }
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
  if (v24)
  {
    v25 = v24;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
      v30 = [v28 initWithUUIDString:v29];

      if (v30)
      {
        [v30 getUUIDBytes:descriptor->uuid];
      }
    }
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
  if (v31)
  {
    v32 = v31;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = objc_alloc(MEMORY[0x277CCAD78]);
      v36 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
      v37 = [v35 initWithUUIDString:v36];

      if (v37)
      {
        [v37 getUUIDBytes:descriptor->euuid];
      }
    }
  }

  v38 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
  if (v38)
  {
    v39 = v38;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if (v41)
    {
      v42 = objc_alloc(MEMORY[0x277CCAD78]);
      v43 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
      v44 = [v42 initWithUUIDString:v43];

      if (v44)
      {
        [v44 getUUIDBytes:descriptor->vuuid];
      }
    }
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
  if (v45)
  {
    v46 = v45;
    v47 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if (v48)
    {
      v49 = objc_alloc(MEMORY[0x277CCAD78]);
      v50 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
      v51 = [v49 initWithUUIDString:v50];

      if (v51)
      {
        [v51 getUUIDBytes:descriptor->fuuid];
      }
    }
  }

  v52 = [dictionaryCopy objectForKeyedSubscript:@"ifnet_properties"];
  descriptor->ifnet_properties = [v52 unsignedShortValue];
}

+ (void)_initializeQUICDescriptor:(nstat_tcp_descriptor *)descriptor fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"upid"];
  descriptor->upid = [v5 unsignedLongLongValue];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"eupid"];
  descriptor->eupid = [v6 unsignedLongLongValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"start_timestamp"];
  descriptor->start_timestamp = [v7 unsignedLongLongValue];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  descriptor->timestamp = [v8 unsignedLongLongValue];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"ifindex"];
  descriptor->ifindex = [v9 unsignedIntValue];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  descriptor->state = [v10 unsignedIntValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"sndbufsize"];
  descriptor->sndbufsize = [v11 unsignedIntValue];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"sndbufused"];
  descriptor->sndbufused = [v12 unsignedIntValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufsize"];
  descriptor->rcvbufsize = [v13 unsignedIntValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"rcvbufused"];
  descriptor->rcvbufused = [v14 unsignedIntValue];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"txunacked"];
  descriptor->txunacked = [v15 unsignedIntValue];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"txwindow"];
  descriptor->txwindow = [v16 unsignedIntValue];

  v17 = [dictionaryCopy objectForKeyedSubscript:@"txcwindow"];
  descriptor->txcwindow = [v17 unsignedIntValue];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"traffic_class"];
  descriptor->traffic_class = [v18 unsignedIntValue];

  v19 = [dictionaryCopy objectForKeyedSubscript:@"traffic_mgt_flags"];
  descriptor->traffic_mgt_flags = [v19 unsignedIntValue];

  v20 = [dictionaryCopy objectForKeyedSubscript:@"pid"];
  descriptor->pid = [v20 unsignedIntValue];

  v21 = [dictionaryCopy objectForKeyedSubscript:@"epid"];
  descriptor->epid = [v21 unsignedIntValue];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
  if (v22)
  {
    v23 = v22;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"cc_algo"];
      uTF8String = [v26 UTF8String];
      if (!uTF8String)
      {
        goto LABEL_49;
      }

      cc_algo = descriptor->cc_algo;
      v29 = 16;
      while (1)
      {
        v30 = *uTF8String;
        *cc_algo = v30;
        if (!v30)
        {
          break;
        }

        ++cc_algo;
        ++uTF8String;
        if (--v29 <= 1)
        {
          *cc_algo = 0;
          break;
        }
      }
    }
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
  if (v31)
  {
    v32 = v31;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"pname"];
      uTF8String2 = [v35 UTF8String];
      if (uTF8String2)
      {
        pname = descriptor->pname;
        v38 = 64;
        while (1)
        {
          v39 = *uTF8String2;
          *pname = v39;
          if (!v39)
          {
            break;
          }

          ++pname;
          ++uTF8String2;
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
  v40 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
  if (v40)
  {
    v41 = v40;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = objc_alloc(MEMORY[0x277CCAD78]);
      v45 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
      v46 = [v44 initWithUUIDString:v45];

      if (v46)
      {
        [v46 getUUIDBytes:descriptor->uuid];
      }
    }
  }

  v47 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
  if (v47)
  {
    v48 = v47;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = objc_alloc(MEMORY[0x277CCAD78]);
      v52 = [dictionaryCopy objectForKeyedSubscript:@"euuid"];
      v53 = [v51 initWithUUIDString:v52];

      if (v53)
      {
        [v53 getUUIDBytes:descriptor->euuid];
      }
    }
  }

  v54 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
  if (v54)
  {
    v55 = v54;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = objc_alloc(MEMORY[0x277CCAD78]);
      v59 = [dictionaryCopy objectForKeyedSubscript:@"vuuid"];
      v60 = [v58 initWithUUIDString:v59];

      if (v60)
      {
        [v60 getUUIDBytes:descriptor->vuuid];
      }
    }
  }

  v61 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
  if (v61)
  {
    v62 = v61;
    v63 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = objc_alloc(MEMORY[0x277CCAD78]);
      v66 = [dictionaryCopy objectForKeyedSubscript:@"fuuid"];
      v67 = [v65 initWithUUIDString:v66];

      if (v67)
      {
        [v67 getUUIDBytes:descriptor->fuuid];
      }
    }
  }

  v68 = [dictionaryCopy objectForKeyedSubscript:@"ifnet_properties"];
  descriptor->ifnet_properties = [v68 unsignedShortValue];

  v69 = [dictionaryCopy objectForKeyedSubscript:@"probe_activated"];
  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFE | [v69 BOOLValue];

  v70 = [dictionaryCopy objectForKeyedSubscript:@"write_probe_failed"];
  if ([v70 BOOLValue])
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFD | v71;

  v72 = [dictionaryCopy objectForKeyedSubscript:@"read_probe_failed"];
  if ([v72 BOOLValue])
  {
    v73 = 4;
  }

  else
  {
    v73 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xFB | v73;

  v74 = [dictionaryCopy objectForKeyedSubscript:@"conn_probe_failed"];
  if ([v74 BOOLValue])
  {
    v75 = 8;
  }

  else
  {
    v75 = 0;
  }

  descriptor->var0.__pad_connstatus[0] = descriptor->var0.__pad_connstatus[0] & 0xF7 | v75;
}

+ (id)_snapshotWithDictionary:(id)dictionary
{
  v139[43] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  bzero(&unsignedIntValue, 0x338uLL);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v103 = 0u;
  v100 = 0u;
  v97 = 0u;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"details"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"_prev_items"];
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
  longLongValue = [v15 longLongValue];

  v16 = [v6 objectForKeyedSubscript:@"savedTxWiFiInfraBytes"];
  longLongValue2 = [v16 longLongValue];

  v17 = [v6 objectForKeyedSubscript:@"savedRxWiFiNonInfraBytes"];
  longLongValue3 = [v17 longLongValue];

  v18 = [v6 objectForKeyedSubscript:@"savedTxWiFiNonInfraBytes"];
  longLongValue4 = [v18 longLongValue];

  v19 = [v6 objectForKeyedSubscript:@"savedRxWiredBytes"];
  longLongValue5 = [v19 longLongValue];

  v20 = [v6 objectForKeyedSubscript:@"savedTxWiredBytes"];
  longLongValue6 = [v20 longLongValue];

  v21 = [v6 objectForKeyedSubscript:@"savedRxDuplicateBytes"];
  LODWORD(v111) = [v21 unsignedIntValue];

  v22 = [v6 objectForKeyedSubscript:@"savedRxOutOfOrderBytes"];
  DWORD1(v111) = [v22 unsignedIntValue];

  v23 = [v6 objectForKeyedSubscript:@"savedTxRetransmittedBytes"];
  DWORD2(v111) = [v23 unsignedIntValue];

  v24 = [v7 objectForKeyedSubscript:@"context"];
  longLongValue7 = [v24 longLongValue];

  v25 = [v7 objectForKeyedSubscript:@"type"];
  unsignedIntValue = [v25 unsignedIntValue];

  v26 = [v7 objectForKeyedSubscript:@"length"];
  unsignedShortValue = [v26 unsignedShortValue];

  v27 = [v7 objectForKeyedSubscript:@"flags"];
  unsignedShortValue2 = [v27 unsignedShortValue];

  v28 = [v5 objectForKeyedSubscript:@"srcref"];
  longLongValue8 = [v28 longLongValue];

  v29 = [v5 objectForKeyedSubscript:@"event_flags"];
  longLongValue9 = [v29 longLongValue];

  v30 = [v8 objectForKeyedSubscript:@"nstat_rxpackets"];
  longLongValue10 = [v30 longLongValue];

  v31 = [v8 objectForKeyedSubscript:@"nstat_txpackets"];
  longLongValue11 = [v31 longLongValue];

  v32 = [v8 objectForKeyedSubscript:@"nstat_rxbytes"];
  longLongValue12 = [v32 longLongValue];

  v33 = [v8 objectForKeyedSubscript:@"nstat_txbytes"];
  longLongValue13 = [v33 longLongValue];

  v34 = [v8 objectForKeyedSubscript:@"nstat_cell_rxbytes"];
  longLongValue14 = [v34 longLongValue];

  v35 = [v8 objectForKeyedSubscript:@"nstat_cell_txbytes"];
  longLongValue15 = [v35 longLongValue];

  v36 = [v8 objectForKeyedSubscript:@"nstat_wifi_infra_rxbytes"];
  longLongValue16 = [v36 longLongValue];

  v37 = [v8 objectForKeyedSubscript:@"nstat_wifi_infra_txbytes"];
  longLongValue17 = [v37 longLongValue];

  v38 = [v8 objectForKeyedSubscript:@"nstat_wifi_non_infra_rxbytes"];
  longLongValue18 = [v38 longLongValue];

  v39 = [v8 objectForKeyedSubscript:@"nstat_wifi_non_infra_txbytes"];
  longLongValue19 = [v39 longLongValue];

  v40 = [v8 objectForKeyedSubscript:@"nstat_wired_rxbytes"];
  longLongValue20 = [v40 longLongValue];

  v41 = [v8 objectForKeyedSubscript:@"nstat_wired_txbytes"];
  longLongValue21 = [v41 longLongValue];

  v42 = [v8 objectForKeyedSubscript:@"nstat_rxduplicatebytes"];
  unsignedIntValue2 = [v42 unsignedIntValue];

  v43 = [v8 objectForKeyedSubscript:@"nstat_rxoutoforderbytes"];
  unsignedIntValue3 = [v43 unsignedIntValue];

  v44 = [v8 objectForKeyedSubscript:@"nstat_txretransmit"];
  unsignedIntValue4 = [v44 unsignedIntValue];

  v45 = [v8 objectForKeyedSubscript:@"nstat_min_rtt"];
  unsignedIntValue5 = [v45 unsignedIntValue];

  v46 = [v8 objectForKeyedSubscript:@"nstat_avg_rtt"];
  unsignedIntValue6 = [v46 unsignedIntValue];

  v47 = [v8 objectForKeyedSubscript:@"nstat_var_rtt"];
  unsignedIntValue7 = [v47 unsignedIntValue];

  v48 = [v5 objectForKeyedSubscript:@"provider"];
  unsignedIntValue8 = [v48 unsignedIntValue];
  v138 = unsignedIntValue8;

  v50 = [dictionaryCopy objectForKeyedSubscript:@"_startStamp"];

  if (v50)
  {
    v51 = [dictionaryCopy objectForKeyedSubscript:@"_startStamp"];
    [v51 floatValue];
    v53 = v52;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = [dictionaryCopy objectForKeyedSubscript:@"_startStampUsecs"];

  if (v54)
  {
    v55 = [dictionaryCopy objectForKeyedSubscript:@"_startStampUsecs"];
    v53 = [v55 unsignedLongLongValue] / 1000000.0;
  }

  if (unsignedIntValue8 > 0xA)
  {
    goto LABEL_26;
  }

  if (((1 << unsignedIntValue8) & 0x430) != 0)
  {
    v56 = [v5 objectForKeyedSubscript:@"udp_descriptor"];
    [self _initializeUDPDescriptor:v139 fromDictionary:v56];
    v57 = off_27996D9C8;
    goto LABEL_13;
  }

  if (((1 << unsignedIntValue8) & 0xC) == 0)
  {
    if (unsignedIntValue8 == 8)
    {
      v56 = [v5 objectForKeyedSubscript:@"quic_descriptor"];
      [self _initializeQUICDescriptor:v139 fromDictionary:v56];
      v57 = off_27996D9A8;
      goto LABEL_13;
    }

LABEL_26:
    v88 = NStatGetLog();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v113 = unsignedIntValue8;
      _os_log_impl(&dword_25BA3A000, v88, OS_LOG_TYPE_ERROR, "unknown provider %d type for snapshot", buf, 8u);
    }

    v60 = 0;
    goto LABEL_29;
  }

  v56 = [v5 objectForKeyedSubscript:@"tcp_descriptor"];
  [self _initializeTCPDescriptor:v139 fromDictionary:v56];
  v57 = off_27996D9B8;
LABEL_13:

  v58 = objc_alloc(*v57);
  v59 = [dictionaryCopy objectForKeyedSubscript:@"_flags"];
  v60 = [v58 initWithDetails:&longLongValue7 startTime:objc_msgSend(v59 flowFlags:"unsignedIntValue") previously:v96 peerEgressCellularCounts:{0, v53}];

  if (!v60)
  {
    goto LABEL_30;
  }

  v61 = [dictionaryCopy objectForKeyedSubscript:@"snapshotReason"];
  [v60 setSnapshotReason:{objc_msgSend(v61, "intValue")}];

  v62 = [dictionaryCopy objectForKeyedSubscript:@"attributedEntity"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v64 = [dictionaryCopy objectForKeyedSubscript:@"attributedEntity"];
  }

  else
  {
    v64 = @"<unknown>";
  }

  v65 = [dictionaryCopy objectForKeyedSubscript:@"delegateName"];
  objc_opt_class();
  v66 = objc_opt_isKindOfClass();

  v94 = v6;
  v95 = v5;
  v93 = v7;
  if (v66)
  {
    v67 = [dictionaryCopy objectForKeyedSubscript:@"delegateName"];
  }

  else
  {
    v67 = 0;
  }

  v68 = [dictionaryCopy objectForKeyedSubscript:@"attributionReason"];
  intValue = [v68 intValue];
  [dictionaryCopy objectForKeyedSubscript:@"delegateAttributionReason"];
  v71 = v70 = dictionaryCopy;
  v91 = v67;
  v92 = v64;
  [v60 setAttribution:v64 derivation:intValue delegateName:v67 delegateDerivation:objc_msgSend(v71 extensionName:{"intValue"), 0}];

  v72 = [v70 objectForKeyedSubscript:@"uiBackgroundAudioCapable"];
  [v60 setIsUIBackgroundAudioCapable:{objc_msgSend(v72, "BOOLValue")}];

  v73 = [v70 objectForKeyedSubscript:@"snapshotAppStateIsForeground"];
  bOOLValue = [v73 BOOLValue];
  v75 = [v70 objectForKeyedSubscript:@"snapshotScreenStateOn"];
  bOOLValue2 = [v75 BOOLValue];
  v77 = [v70 objectForKeyedSubscript:@"startAppStateIsForeground"];
  bOOLValue3 = [v77 BOOLValue];
  v79 = [v70 objectForKeyedSubscript:@"startScreenStateOn"];
  bOOLValue4 = [v79 BOOLValue];
  v81 = bOOLValue;
  dictionaryCopy = v70;
  [v60 setAppStateIsForeground:v81 screenStateOn:bOOLValue2 startAppStateIsForeground:bOOLValue3 startScreenStateOn:bOOLValue4];

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

+ (id)snapshotWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"details"];
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
  unsignedIntValue = [v12 unsignedIntValue];

  v14 = 0;
  if (unsignedIntValue <= 0xA)
  {
    if (((1 << unsignedIntValue) & 0x430) != 0)
    {
      if (v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (((1 << unsignedIntValue) & 0xC) == 0)
      {
        if (unsignedIntValue != 8)
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
          v14 = [self _snapshotWithDictionary:dictionaryCopy];
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
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonString(attributionReason);
}

+ (double)_intervalWithContinuousTime:(unint64_t)time
{
  LODWORD(v3) = timebase_info_0;
  LODWORD(v4) = *algn_280C54FD4;
  return time * v3 / v4 / 1000000000.0;
}

+ (double)_referenceIntervalWithContinuousTime:(unint64_t)time
{
  v5 = 9;
  do
  {
    v6 = mach_continuous_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = mach_continuous_time() - v6;
    [self _intervalWithContinuousTime:v9];
  }

  while (v10 * 1000000.0 >= 50.0 && v5-- != 0);
  v12 = v6 + (v9 >> 1);
  if (v12 <= time)
  {
    [self _intervalWithContinuousTime:time - v12];
    return v8 + v15;
  }

  else
  {
    [self _intervalWithContinuousTime:v12 - time];
    return v8 - v13;
  }
}

- (void)applyTrafficAdjustmentFactor:(double)factor
{
  [(NWStatsProtocolSnapshot *)self flowDuration];
  if (factor > 0.0 && v5 > factor)
  {
    v7 = (v5 - factor) / v5;
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
@interface NWStatsSource
- (BOOL)bundleNameImpliesNonAppInitiated:(id)a3;
- (BOOL)handleDomainInfo:(nstat_domain_info *)a3;
- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)a3 length:(int64_t)a4;
- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16];
- (unsigned)flagsForProvider:(unsigned int)a3;
- (unsigned)flagsForProvider:(unsigned int)a3 sockaddr:(sockaddr *)a4;
- (void)logAddressChangeOn:(unint64_t)a3 procName:(char *)a4 variant:(id)a5 oldAddress:(sockaddr *)a6 newAddress:(sockaddr *)a7;
- (void)saveOldValues:(nstat_detailed_counts *)a3;
@end

@implementation NWStatsSource

- (unsigned)flagsForProvider:(unsigned int)a3
{
  v3 = a3 - 2;
  if (a3 - 2 >= 9 || ((0x1CFu >> v3) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:];
  }

  return dword_25BA77980[v3];
}

- (unsigned)flagsForProvider:(unsigned int)a3 sockaddr:(sockaddr *)a4
{
  v4 = a3 - 2;
  if (a3 - 2 >= 9 || ((0x1CFu >> v4) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:sockaddr:];
  }

  v5 = dword_25BA77980[v4];
  sa_family = a4->sa_family;
  v7 = v5 | 8;
  if (sa_family == 2)
  {
    v5 |= 4u;
  }

  if (sa_family == 30)
  {
    return v7;
  }

  else
  {
    return v5;
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

- (void)saveOldValues:(nstat_detailed_counts *)a3
{
  self->_prevItems.savedTxBytes = a3->nstat_media_stats.ms_total.ts_txbytes;
  *&self->_prevItems.savedRxPackets = *&a3->nstat_media_stats.ms_total.ts_rxpackets;
  self->_prevItems.savedTxPackets = a3->nstat_media_stats.ms_total.ts_txpackets;
  v3 = *&a3->nstat_media_stats.ms_cellular.ts_txpackets;
  v4 = *&a3->nstat_media_stats.ms_cellular.ts_rxpackets;
  *&self->_prevItems.savedRxCellularPackets = vzip1q_s64(v4, v3);
  *&self->_prevItems.savedRxCellularBytes = vzip2q_s64(v4, v3);
  v6 = *&a3->nstat_media_stats.ms_wifi_infra.ts_rxpackets;
  v5 = *&a3->nstat_media_stats.ms_wifi_infra.ts_txpackets;
  *&self->_prevItems.savedRxWiFiInfraPackets = vzip1q_s64(v6, v5);
  *&self->_prevItems.savedRxWiFiInfraBytes = vzip2q_s64(v6, v5);
  v7 = *&a3->nstat_media_stats.ms_wifi_non_infra.ts_txpackets;
  v8 = *&a3->nstat_media_stats.ms_wifi_non_infra.ts_rxpackets;
  *&self->_prevItems.savedRxWiFiNonInfraPackets = vzip1q_s64(v8, v7);
  *&self->_prevItems.savedRxWiFiNonInfraBytes = vzip2q_s64(v8, v7);
  v10 = *&a3->nstat_media_stats.ms_wired.ts_rxpackets;
  v9 = *&a3->nstat_media_stats.ms_wired.ts_txpackets;
  *&self->_prevItems.savedRxWiredPackets = vzip1q_s64(v10, v9);
  *&self->_prevItems.savedRxWiredBytes = vzip2q_s64(v10, v9);
  v12 = *&a3->nstat_media_stats.ms_bluetooth.ts_rxpackets;
  v11 = *&a3->nstat_media_stats.ms_bluetooth.ts_txpackets;
  *&self->_prevItems.savedRxCompanionLinkBluetoothPackets = vzip1q_s64(v12, v11);
  *&self->_prevItems.savedRxCompanionLinkBluetoothBytes = vzip2q_s64(v12, v11);
  v14 = *&a3->nstat_media_stats.ms_alternate.ts_rxpackets;
  v13 = *&a3->nstat_media_stats.ms_alternate.ts_txpackets;
  *&self->_prevItems.savedRxAlternatePackets = vzip1q_s64(v14, v13);
  *&self->_prevItems.savedRxAlternateBytes = vzip2q_s64(v14, v13);
  self->_prevItems.savedRxDuplicateBytes = a3->nstat_rxduplicatebytes;
  *&self->_prevItems.savedRxOutOfOrderBytes = vmovn_s64(*&a3->nstat_rxoutoforderbytes);
}

- (void)logAddressChangeOn:(unint64_t)a3 procName:(char *)a4 variant:(id)a5 oldAddress:(sockaddr *)a6 newAddress:(sockaddr *)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = NStatGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NWStatsSource *)self attributedEntity];
    v15 = sockaddrForLogging(a6);
    v16 = sockaddrForLogging(a7);
    v18 = 138413570;
    v19 = v12;
    v20 = 2048;
    v21 = a3;
    v22 = 2080;
    v23 = a4;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected %@ on flow %lld for process %s attributed %@, was %@ now %@", &v18, 0x3Eu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleDomainInfo:(nstat_domain_info *)a3
{
  if (!a3)
  {
    [NWStatsSource handleDomainInfo:];
  }

  if (a3->var0[0])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
    [(NWStatsSource *)self setDomainName:v5];
  }

  else
  {
    [(NWStatsSource *)self setDomainName:0];
  }

  if (a3->var1[0])
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3->var1];
    [(NWStatsSource *)self setDomainOwner:v6];
  }

  else
  {
    [(NWStatsSource *)self setDomainOwner:0];
  }

  if (a3->var2[0])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3->var2];
    [(NWStatsSource *)self setDomainTrackerContext:v7];
  }

  else
  {
    [(NWStatsSource *)self setDomainTrackerContext:0];
  }

  if (a3->var3[0])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3->var3];
    [(NWStatsSource *)self setDomainAttributedBundleId:v8];
  }

  else
  {
    [(NWStatsSource *)self setDomainAttributedBundleId:0];
  }

  [(NWStatsSource *)self setIsTracker:a3->var5];
  [(NWStatsSource *)self setIsNonAppInitiated:a3->var6];
  [(NWStatsSource *)self setIsSilent:a3->var7];
  [(NWStatsSource *)self isSilent];
  return 1;
}

- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)a3 length:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a4 >= 8)
  {
    v6 = a3;
    if (a3)
    {
      while (1)
      {
        var0 = v6->var0;
        var1 = v6->var1;
        v9 = a4 - 8;
        if (a4 - 8 < var1)
        {
          v10 = NStatGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v17 = var1;
            *&v17[8] = 2048;
            *&v17[10] = v9;
            _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "Parsing extensions, item length %zd > remaining size for extensions %zd", buf, 0x16u);
          }

          var1 = v9;
        }

        if (var0 == 1)
        {
          if (var1 <= 0x41F)
          {
            [NWStatsSource processExtendedDetails:length:];
          }

          if (v9 <= 0x41F)
          {
            [NWStatsSource processExtendedDetails:length:];
          }

          if (![(NWStatsSource *)self handleDomainInfo:&v6[1]])
          {
            goto LABEL_17;
          }
        }

        else
        {
          v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v6[1] length:var1];
          v12 = NStatGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *v17 = var0;
            *&v17[4] = 2048;
            *&v17[6] = var1;
            *&v17[14] = 2112;
            *&v17[16] = v11;
            _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "Unexpected extended item type: %d, length: %zd contents %@", buf, 0x1Cu);
          }

          v13 = [(NWStatsSource *)self handleUnknownExtension:var0 data:v11];
          if (!v13)
          {
LABEL_17:
            result = 0;
            break;
          }
        }

        v14 = (var1 + 7) & 0xFFFFFFFFFFFFFFF8;
        a4 = v9 - v14;
        v6 = (v6 + v14 + 8);
        if (v9 - v14 <= 7)
        {
          result = 1;
          break;
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)bundleNameImpliesNonAppInitiated:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (bundleNameImpliesNonAppInitiated__onceToken != -1)
  {
    [NWStatsSource bundleNameImpliesNonAppInitiated:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs containsObject:v4];
LABEL_6:

  return v5;
}

void __50__NWStatsSource_bundleNameImpliesNonAppInitiated___block_invoke()
{
  v0 = bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs;
  bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs = &unk_286D3E5B8;
}

@end
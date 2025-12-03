@interface NWStatsSource
- (BOOL)bundleNameImpliesNonAppInitiated:(id)initiated;
- (BOOL)handleDomainInfo:(nstat_domain_info *)info;
- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length;
- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16];
- (unsigned)flagsForProvider:(unsigned int)provider;
- (unsigned)flagsForProvider:(unsigned int)provider sockaddr:(sockaddr *)sockaddr;
- (void)logAddressChangeOn:(unint64_t)on procName:(char *)name variant:(id)variant oldAddress:(sockaddr *)address newAddress:(sockaddr *)newAddress;
- (void)saveOldValues:(nstat_detailed_counts *)values;
@end

@implementation NWStatsSource

- (unsigned)flagsForProvider:(unsigned int)provider
{
  v3 = provider - 2;
  if (provider - 2 >= 9 || ((0x1CFu >> v3) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:];
  }

  return dword_25BA77980[v3];
}

- (unsigned)flagsForProvider:(unsigned int)provider sockaddr:(sockaddr *)sockaddr
{
  v4 = provider - 2;
  if (provider - 2 >= 9 || ((0x1CFu >> v4) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:sockaddr:];
  }

  v5 = dword_25BA77980[v4];
  sa_family = sockaddr->sa_family;
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

- (void)saveOldValues:(nstat_detailed_counts *)values
{
  self->_prevItems.savedTxBytes = values->nstat_media_stats.ms_total.ts_txbytes;
  *&self->_prevItems.savedRxPackets = *&values->nstat_media_stats.ms_total.ts_rxpackets;
  self->_prevItems.savedTxPackets = values->nstat_media_stats.ms_total.ts_txpackets;
  v3 = *&values->nstat_media_stats.ms_cellular.ts_txpackets;
  v4 = *&values->nstat_media_stats.ms_cellular.ts_rxpackets;
  *&self->_prevItems.savedRxCellularPackets = vzip1q_s64(v4, v3);
  *&self->_prevItems.savedRxCellularBytes = vzip2q_s64(v4, v3);
  v6 = *&values->nstat_media_stats.ms_wifi_infra.ts_rxpackets;
  v5 = *&values->nstat_media_stats.ms_wifi_infra.ts_txpackets;
  *&self->_prevItems.savedRxWiFiInfraPackets = vzip1q_s64(v6, v5);
  *&self->_prevItems.savedRxWiFiInfraBytes = vzip2q_s64(v6, v5);
  v7 = *&values->nstat_media_stats.ms_wifi_non_infra.ts_txpackets;
  v8 = *&values->nstat_media_stats.ms_wifi_non_infra.ts_rxpackets;
  *&self->_prevItems.savedRxWiFiNonInfraPackets = vzip1q_s64(v8, v7);
  *&self->_prevItems.savedRxWiFiNonInfraBytes = vzip2q_s64(v8, v7);
  v10 = *&values->nstat_media_stats.ms_wired.ts_rxpackets;
  v9 = *&values->nstat_media_stats.ms_wired.ts_txpackets;
  *&self->_prevItems.savedRxWiredPackets = vzip1q_s64(v10, v9);
  *&self->_prevItems.savedRxWiredBytes = vzip2q_s64(v10, v9);
  v12 = *&values->nstat_media_stats.ms_bluetooth.ts_rxpackets;
  v11 = *&values->nstat_media_stats.ms_bluetooth.ts_txpackets;
  *&self->_prevItems.savedRxCompanionLinkBluetoothPackets = vzip1q_s64(v12, v11);
  *&self->_prevItems.savedRxCompanionLinkBluetoothBytes = vzip2q_s64(v12, v11);
  v14 = *&values->nstat_media_stats.ms_alternate.ts_rxpackets;
  v13 = *&values->nstat_media_stats.ms_alternate.ts_txpackets;
  *&self->_prevItems.savedRxAlternatePackets = vzip1q_s64(v14, v13);
  *&self->_prevItems.savedRxAlternateBytes = vzip2q_s64(v14, v13);
  self->_prevItems.savedRxDuplicateBytes = values->nstat_rxduplicatebytes;
  *&self->_prevItems.savedRxOutOfOrderBytes = vmovn_s64(*&values->nstat_rxoutoforderbytes);
}

- (void)logAddressChangeOn:(unint64_t)on procName:(char *)name variant:(id)variant oldAddress:(sockaddr *)address newAddress:(sockaddr *)newAddress
{
  v30 = *MEMORY[0x277D85DE8];
  variantCopy = variant;
  v13 = NStatGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    attributedEntity = [(NWStatsSource *)self attributedEntity];
    v15 = sockaddrForLogging(address);
    v16 = sockaddrForLogging(newAddress);
    v18 = 138413570;
    v19 = variantCopy;
    v20 = 2048;
    onCopy = on;
    v22 = 2080;
    nameCopy = name;
    v24 = 2112;
    v25 = attributedEntity;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected %@ on flow %lld for process %s attributed %@, was %@ now %@", &v18, 0x3Eu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleDomainInfo:(nstat_domain_info *)info
{
  if (!info)
  {
    [NWStatsSource handleDomainInfo:];
  }

  if (info->var0[0])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info];
    [(NWStatsSource *)self setDomainName:v5];
  }

  else
  {
    [(NWStatsSource *)self setDomainName:0];
  }

  if (info->var1[0])
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var1];
    [(NWStatsSource *)self setDomainOwner:v6];
  }

  else
  {
    [(NWStatsSource *)self setDomainOwner:0];
  }

  if (info->var2[0])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var2];
    [(NWStatsSource *)self setDomainTrackerContext:v7];
  }

  else
  {
    [(NWStatsSource *)self setDomainTrackerContext:0];
  }

  if (info->var3[0])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var3];
    [(NWStatsSource *)self setDomainAttributedBundleId:v8];
  }

  else
  {
    [(NWStatsSource *)self setDomainAttributedBundleId:0];
  }

  [(NWStatsSource *)self setIsTracker:info->var5];
  [(NWStatsSource *)self setIsNonAppInitiated:info->var6];
  [(NWStatsSource *)self setIsSilent:info->var7];
  [(NWStatsSource *)self isSilent];
  return 1;
}

- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length
{
  v18 = *MEMORY[0x277D85DE8];
  result = 1;
  if (length >= 8)
  {
    detailsCopy = details;
    if (details)
    {
      while (1)
      {
        var0 = detailsCopy->var0;
        var1 = detailsCopy->var1;
        v9 = length - 8;
        if (length - 8 < var1)
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

          if (![(NWStatsSource *)self handleDomainInfo:&detailsCopy[1]])
          {
            goto LABEL_17;
          }
        }

        else
        {
          v11 = [MEMORY[0x277CBEA90] dataWithBytes:&detailsCopy[1] length:var1];
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
        length = v9 - v14;
        detailsCopy = (detailsCopy + v14 + 8);
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

- (BOOL)bundleNameImpliesNonAppInitiated:(id)initiated
{
  initiatedCopy = initiated;
  v4 = initiatedCopy;
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

  if (!initiatedCopy)
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
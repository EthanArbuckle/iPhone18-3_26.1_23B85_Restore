@interface AWDNetworkPerformanceMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAcceptablePerformanceResult:(BOOL)a3;
- (void)setHasAwdlPowerState:(BOOL)a3;
- (void)setHasBtIsConnectable:(BOOL)a3;
- (void)setHasBtIsDiscoverable:(BOOL)a3;
- (void)setHasBtIsPowerOn:(BOOL)a3;
- (void)setHasBtIsScanning:(BOOL)a3;
- (void)setHasCellularAllowsVoip:(BOOL)a3;
- (void)setHasCellularDataIsEnabled:(BOOL)a3;
- (void)setHasDownloadIsCellular:(BOOL)a3;
- (void)setHasDownloadIsConstrained:(BOOL)a3;
- (void)setHasDownloadIsExpensive:(BOOL)a3;
- (void)setHasDownloadIsMultipath:(BOOL)a3;
- (void)setHasDownloadIsProxyConnection:(BOOL)a3;
- (void)setHasDownloadIsReusedConnection:(BOOL)a3;
- (void)setHasNetworkIsAppleReachable:(BOOL)a3;
- (void)setHasSystemLowPowerModeEnabled:(BOOL)a3;
- (void)setHasSystemPowersourceConnected:(BOOL)a3;
- (void)setHasUploadIsCellular:(BOOL)a3;
- (void)setHasUploadIsConstrained:(BOOL)a3;
- (void)setHasUploadIsExpensive:(BOOL)a3;
- (void)setHasUploadIsMultipath:(BOOL)a3;
- (void)setHasUploadIsProxyConnection:(BOOL)a3;
- (void)setHasUploadIsReusedConnection:(BOOL)a3;
- (void)setHasUseWifiWasSpecified:(BOOL)a3;
- (void)setHasWifiIsCaptive:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNetworkPerformanceMetric

- (void)setHasAcceptablePerformanceResult:(BOOL)a3
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

- (void)setHasAwdlPowerState:(BOOL)a3
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

- (void)setHasBtIsConnectable:(BOOL)a3
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

- (void)setHasBtIsDiscoverable:(BOOL)a3
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

- (void)setHasBtIsPowerOn:(BOOL)a3
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

- (void)setHasBtIsScanning:(BOOL)a3
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

- (void)setHasCellularAllowsVoip:(BOOL)a3
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

- (void)setHasDownloadIsCellular:(BOOL)a3
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

- (void)setHasDownloadIsConstrained:(BOOL)a3
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

- (void)setHasDownloadIsExpensive:(BOOL)a3
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

- (void)setHasDownloadIsMultipath:(BOOL)a3
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

- (void)setHasDownloadIsProxyConnection:(BOOL)a3
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

- (void)setHasDownloadIsReusedConnection:(BOOL)a3
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

- (void)setHasNetworkIsAppleReachable:(BOOL)a3
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

- (void)setHasSystemLowPowerModeEnabled:(BOOL)a3
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

- (void)setHasSystemPowersourceConnected:(BOOL)a3
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

- (void)setHasUploadIsCellular:(BOOL)a3
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

- (void)setHasUploadIsConstrained:(BOOL)a3
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

- (void)setHasUploadIsExpensive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasUploadIsMultipath:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasUploadIsProxyConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasUploadIsReusedConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasUseWifiWasSpecified:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasWifiIsCaptive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasCellularDataIsEnabled:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDNetworkPerformanceMetric;
  v4 = [(AWDNetworkPerformanceMetric *)&v8 description];
  v5 = [(AWDNetworkPerformanceMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((*&has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_acceptablePerformanceResult];
    [v3 setObject:v6 forKey:@"acceptable_performance_result"];
  }

  awdlElectionParameters = self->_awdlElectionParameters;
  if (awdlElectionParameters)
  {
    [v3 setObject:awdlElectionParameters forKey:@"awdl_election_parameters"];
  }

  awdlMasterChannel = self->_awdlMasterChannel;
  if (awdlMasterChannel)
  {
    [v3 setObject:awdlMasterChannel forKey:@"awdl_master_channel"];
  }

  awdlOpMode = self->_awdlOpMode;
  if (awdlOpMode)
  {
    [v3 setObject:awdlOpMode forKey:@"awdl_op_mode"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_awdlPowerState];
    [v3 setObject:v10 forKey:@"awdl_power_state"];
  }

  awdlSchedule = self->_awdlSchedule;
  if (awdlSchedule)
  {
    [v3 setObject:awdlSchedule forKey:@"awdl_schedule"];
  }

  awdlSecondaryMasterChannel = self->_awdlSecondaryMasterChannel;
  if (awdlSecondaryMasterChannel)
  {
    [v3 setObject:awdlSecondaryMasterChannel forKey:@"awdl_secondary_master_channel"];
  }

  awdlSyncChannelSequence = self->_awdlSyncChannelSequence;
  if (awdlSyncChannelSequence)
  {
    [v3 setObject:awdlSyncChannelSequence forKey:@"awdl_sync_channel_sequence"];
  }

  awdlSyncState = self->_awdlSyncState;
  if (awdlSyncState)
  {
    [v3 setObject:awdlSyncState forKey:@"awdl_sync_state"];
  }

  btConnectedDevicesCount = self->_btConnectedDevicesCount;
  if (btConnectedDevicesCount)
  {
    [v3 setObject:btConnectedDevicesCount forKey:@"bt_connected_devices_count"];
  }

  v16 = self->_has;
  if ((*&v16 & 8) != 0)
  {
    v228 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsConnectable];
    [v3 setObject:v228 forKey:@"bt_is_connectable"];

    v16 = self->_has;
    if ((*&v16 & 0x10) == 0)
    {
LABEL_25:
      if ((*&v16 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_453;
    }
  }

  else if ((*&v16 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v229 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsDiscoverable];
  [v3 setObject:v229 forKey:@"bt_is_discoverable"];

  v16 = self->_has;
  if ((*&v16 & 0x20) == 0)
  {
LABEL_26:
    if ((*&v16 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_453:
  v230 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsPowerOn];
  [v3 setObject:v230 forKey:@"bt_is_power_on"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsScanning];
    [v3 setObject:v17 forKey:@"bt_is_scanning"];
  }

LABEL_28:
  callingClient = self->_callingClient;
  if (callingClient)
  {
    [v3 setObject:callingClient forKey:@"calling_client"];
  }

  cellularActiveContexts = self->_cellularActiveContexts;
  if (cellularActiveContexts)
  {
    [v3 setObject:cellularActiveContexts forKey:@"cellular_active_contexts"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularAllowsVoip];
    [v3 setObject:v20 forKey:@"cellular_allows_voip"];
  }

  cellularAttached = self->_cellularAttached;
  if (cellularAttached)
  {
    [v3 setObject:cellularAttached forKey:@"cellular_attached"];
  }

  cellularBandinfo = self->_cellularBandinfo;
  if (cellularBandinfo)
  {
    [v3 setObject:cellularBandinfo forKey:@"cellular_bandinfo"];
  }

  cellularBandwidth = self->_cellularBandwidth;
  if (cellularBandwidth)
  {
    [v3 setObject:cellularBandwidth forKey:@"cellular_bandwidth"];
  }

  cellularCarrierName = self->_cellularCarrierName;
  if (cellularCarrierName)
  {
    [v3 setObject:cellularCarrierName forKey:@"cellular_carrier_name"];
  }

  cellularDataBearerSoMask = self->_cellularDataBearerSoMask;
  if (cellularDataBearerSoMask)
  {
    [v3 setObject:cellularDataBearerSoMask forKey:@"cellular_data_bearer_so_mask"];
  }

  cellularDataBearerTechnology = self->_cellularDataBearerTechnology;
  if (cellularDataBearerTechnology)
  {
    [v3 setObject:cellularDataBearerTechnology forKey:@"cellular_data_bearer_technology"];
  }

  cellularDataPlanSignalingReductionOverride = self->_cellularDataPlanSignalingReductionOverride;
  if (cellularDataPlanSignalingReductionOverride)
  {
    [v3 setObject:cellularDataPlanSignalingReductionOverride forKey:@"cellular_data_plan_signaling_reduction_override"];
  }

  cellularDataPossible = self->_cellularDataPossible;
  if (cellularDataPossible)
  {
    [v3 setObject:cellularDataPossible forKey:@"cellular_data_possible"];
  }

  cellularInHomeCountry = self->_cellularInHomeCountry;
  if (cellularInHomeCountry)
  {
    [v3 setObject:cellularInHomeCountry forKey:@"cellular_in_home_country"];
  }

  cellularIndicator = self->_cellularIndicator;
  if (cellularIndicator)
  {
    [v3 setObject:cellularIndicator forKey:@"cellular_indicator"];
  }

  cellularIndicatorOverride = self->_cellularIndicatorOverride;
  if (cellularIndicatorOverride)
  {
    [v3 setObject:cellularIndicatorOverride forKey:@"cellular_indicator_override"];
  }

  cellularIsoCountryCode = self->_cellularIsoCountryCode;
  if (cellularIsoCountryCode)
  {
    [v3 setObject:cellularIsoCountryCode forKey:@"cellular_iso_country_code"];
  }

  cellularLqm = self->_cellularLqm;
  if (cellularLqm)
  {
    [v3 setObject:cellularLqm forKey:@"cellular_lqm"];
  }

  cellularLteMaxScheduledLayers = self->_cellularLteMaxScheduledLayers;
  if (cellularLteMaxScheduledLayers)
  {
    [v3 setObject:cellularLteMaxScheduledLayers forKey:@"cellular_lte_max_scheduled_layers"];
  }

  cellularMobileCountryCode = self->_cellularMobileCountryCode;
  if (cellularMobileCountryCode)
  {
    [v3 setObject:cellularMobileCountryCode forKey:@"cellular_mobile_country_code"];
  }

  cellularMobileNetworkCode = self->_cellularMobileNetworkCode;
  if (cellularMobileNetworkCode)
  {
    [v3 setObject:cellularMobileNetworkCode forKey:@"cellular_mobile_network_code"];
  }

  cellularNewRadioCoverage = self->_cellularNewRadioCoverage;
  if (cellularNewRadioCoverage)
  {
    [v3 setObject:cellularNewRadioCoverage forKey:@"cellular_new_radio_coverage"];
  }

  cellularNewRadioDataBearer = self->_cellularNewRadioDataBearer;
  if (cellularNewRadioDataBearer)
  {
    [v3 setObject:cellularNewRadioDataBearer forKey:@"cellular_new_radio_data_bearer"];
  }

  cellularNewRadioMmwaveDataBearer = self->_cellularNewRadioMmwaveDataBearer;
  if (cellularNewRadioMmwaveDataBearer)
  {
    [v3 setObject:cellularNewRadioMmwaveDataBearer forKey:@"cellular_new_radio_mmwave_data_bearer"];
  }

  cellularNewRadioNsaCoverage = self->_cellularNewRadioNsaCoverage;
  if (cellularNewRadioNsaCoverage)
  {
    [v3 setObject:cellularNewRadioNsaCoverage forKey:@"cellular_new_radio_nsa_coverage"];
  }

  cellularNewRadioNsaDataBearer = self->_cellularNewRadioNsaDataBearer;
  if (cellularNewRadioNsaDataBearer)
  {
    [v3 setObject:cellularNewRadioNsaDataBearer forKey:@"cellular_new_radio_nsa_data_bearer"];
  }

  cellularNewRadioSaCoverage = self->_cellularNewRadioSaCoverage;
  if (cellularNewRadioSaCoverage)
  {
    [v3 setObject:cellularNewRadioSaCoverage forKey:@"cellular_new_radio_sa_coverage"];
  }

  cellularNewRadioSaDataBearer = self->_cellularNewRadioSaDataBearer;
  if (cellularNewRadioSaDataBearer)
  {
    [v3 setObject:cellularNewRadioSaDataBearer forKey:@"cellular_new_radio_sa_data_bearer"];
  }

  cellularNewRadioSub6DataBearer = self->_cellularNewRadioSub6DataBearer;
  if (cellularNewRadioSub6DataBearer)
  {
    [v3 setObject:cellularNewRadioSub6DataBearer forKey:@"cellular_new_radio_sub6_data_bearer"];
  }

  cellularNrConfiguredBw = self->_cellularNrConfiguredBw;
  if (cellularNrConfiguredBw)
  {
    [v3 setObject:cellularNrConfiguredBw forKey:@"cellular_nr_configured_bw"];
  }

  cellularNrLayers = self->_cellularNrLayers;
  if (cellularNrLayers)
  {
    [v3 setObject:cellularNrLayers forKey:@"cellular_nr_layers"];
  }

  cellularNrModulation = self->_cellularNrModulation;
  if (cellularNrModulation)
  {
    [v3 setObject:cellularNrModulation forKey:@"cellular_nr_modulation"];
  }

  cellularNrRsrp = self->_cellularNrRsrp;
  if (cellularNrRsrp)
  {
    [v3 setObject:cellularNrRsrp forKey:@"cellular_nr_rsrp"];
  }

  cellularNrRsrq = self->_cellularNrRsrq;
  if (cellularNrRsrq)
  {
    [v3 setObject:cellularNrRsrq forKey:@"cellular_nr_rsrq"];
  }

  cellularNrSnr = self->_cellularNrSnr;
  if (cellularNrSnr)
  {
    [v3 setObject:cellularNrSnr forKey:@"cellular_nr_snr"];
  }

  cellularPid = self->_cellularPid;
  if (cellularPid)
  {
    [v3 setObject:cellularPid forKey:@"cellular_pid"];
  }

  cellularRadioAccessTechnology = self->_cellularRadioAccessTechnology;
  if (cellularRadioAccessTechnology)
  {
    [v3 setObject:cellularRadioAccessTechnology forKey:@"cellular_radio_access_technology"];
  }

  cellularRadioAccessTechnologyCtDataStatus = self->_cellularRadioAccessTechnologyCtDataStatus;
  if (cellularRadioAccessTechnologyCtDataStatus)
  {
    [v3 setObject:cellularRadioAccessTechnologyCtDataStatus forKey:@"cellular_radio_access_technology_ct_data_status"];
  }

  cellularRoamAllowed = self->_cellularRoamAllowed;
  if (cellularRoamAllowed)
  {
    [v3 setObject:cellularRoamAllowed forKey:@"cellular_roam_allowed"];
  }

  cellularRsrp = self->_cellularRsrp;
  if (cellularRsrp)
  {
    [v3 setObject:cellularRsrp forKey:@"cellular_rsrp"];
  }

  cellularSnr = self->_cellularSnr;
  if (cellularSnr)
  {
    [v3 setObject:cellularSnr forKey:@"cellular_snr"];
  }

  cellularTac = self->_cellularTac;
  if (cellularTac)
  {
    [v3 setObject:cellularTac forKey:@"cellular_tac"];
  }

  cellularTotalActiveContexts = self->_cellularTotalActiveContexts;
  if (cellularTotalActiveContexts)
  {
    [v3 setObject:cellularTotalActiveContexts forKey:@"cellular_total_active_contexts"];
  }

  cellularTotalBw = self->_cellularTotalBw;
  if (cellularTotalBw)
  {
    [v3 setObject:cellularTotalBw forKey:@"cellular_total_bw"];
  }

  cellularTotalCcs = self->_cellularTotalCcs;
  if (cellularTotalCcs)
  {
    [v3 setObject:cellularTotalCcs forKey:@"cellular_total_ccs"];
  }

  cellularTotalLayers = self->_cellularTotalLayers;
  if (cellularTotalLayers)
  {
    [v3 setObject:cellularTotalLayers forKey:@"cellular_total_layers"];
  }

  cellularUarfcn = self->_cellularUarfcn;
  if (cellularUarfcn)
  {
    [v3 setObject:cellularUarfcn forKey:@"cellular_uarfcn"];
  }

  downloadCdnPop = self->_downloadCdnPop;
  if (downloadCdnPop)
  {
    [v3 setObject:downloadCdnPop forKey:@"download_cdn_pop"];
  }

  downloadCdnUuid = self->_downloadCdnUuid;
  if (downloadCdnUuid)
  {
    [v3 setObject:downloadCdnUuid forKey:@"download_cdn_uuid"];
  }

  downloadConnectionTime = self->_downloadConnectionTime;
  if (downloadConnectionTime)
  {
    [v3 setObject:downloadConnectionTime forKey:@"download_connection_time"];
  }

  downloadDomainLookupTime = self->_downloadDomainLookupTime;
  if (downloadDomainLookupTime)
  {
    [v3 setObject:downloadDomainLookupTime forKey:@"download_domain_lookup_time"];
  }

  downloadEndDataBearerTechnology = self->_downloadEndDataBearerTechnology;
  if (downloadEndDataBearerTechnology)
  {
    [v3 setObject:downloadEndDataBearerTechnology forKey:@"download_end_data_bearer_technology"];
  }

  downloadEndPrimaryIpv4Interface = self->_downloadEndPrimaryIpv4Interface;
  if (downloadEndPrimaryIpv4Interface)
  {
    [v3 setObject:downloadEndPrimaryIpv4Interface forKey:@"download_end_primary_ipv4_interface"];
  }

  downloadEndRat = self->_downloadEndRat;
  if (downloadEndRat)
  {
    [v3 setObject:downloadEndRat forKey:@"download_end_rat"];
  }

  downloadFileSize = self->_downloadFileSize;
  if (downloadFileSize)
  {
    [v3 setObject:downloadFileSize forKey:@"download_file_size"];
  }

  downloadInterfaceName = self->_downloadInterfaceName;
  if (downloadInterfaceName)
  {
    [v3 setObject:downloadInterfaceName forKey:@"download_interface_name"];
  }

  downloadInterfaceServiceName = self->_downloadInterfaceServiceName;
  if (downloadInterfaceServiceName)
  {
    [v3 setObject:downloadInterfaceServiceName forKey:@"download_interface_service_name"];
  }

  v73 = self->_has;
  if ((*&v73 & 0x200) != 0)
  {
    v231 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsCellular];
    [v3 setObject:v231 forKey:@"download_is_cellular"];

    v73 = self->_has;
    if ((*&v73 & 0x400) == 0)
    {
LABEL_140:
      if ((*&v73 & 0x800) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_457;
    }
  }

  else if ((*&v73 & 0x400) == 0)
  {
    goto LABEL_140;
  }

  v232 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsConstrained];
  [v3 setObject:v232 forKey:@"download_is_constrained"];

  v73 = self->_has;
  if ((*&v73 & 0x800) == 0)
  {
LABEL_141:
    if ((*&v73 & 0x1000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_458;
  }

LABEL_457:
  v233 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsExpensive];
  [v3 setObject:v233 forKey:@"download_is_expensive"];

  v73 = self->_has;
  if ((*&v73 & 0x1000) == 0)
  {
LABEL_142:
    if ((*&v73 & 0x2000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_459;
  }

LABEL_458:
  v234 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsMultipath];
  [v3 setObject:v234 forKey:@"download_is_multipath"];

  v73 = self->_has;
  if ((*&v73 & 0x2000) == 0)
  {
LABEL_143:
    if ((*&v73 & 0x4000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

LABEL_459:
  v235 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsProxyConnection];
  [v3 setObject:v235 forKey:@"download_is_proxy_connection"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_144:
    v74 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsReusedConnection];
    [v3 setObject:v74 forKey:@"download_is_reused_connection"];
  }

LABEL_145:
  downloadMaxSpeedObserved = self->_downloadMaxSpeedObserved;
  if (downloadMaxSpeedObserved)
  {
    [v3 setObject:downloadMaxSpeedObserved forKey:@"download_max_speed_observed"];
  }

  downloadNumberOfStreams = self->_downloadNumberOfStreams;
  if (downloadNumberOfStreams)
  {
    [v3 setObject:downloadNumberOfStreams forKey:@"download_number_of_streams"];
  }

  downloadProtocolName = self->_downloadProtocolName;
  if (downloadProtocolName)
  {
    [v3 setObject:downloadProtocolName forKey:@"download_protocol_name"];
  }

  downloadRemoteAddress = self->_downloadRemoteAddress;
  if (downloadRemoteAddress)
  {
    [v3 setObject:downloadRemoteAddress forKey:@"download_remote_address"];
  }

  downloadRemotePort = self->_downloadRemotePort;
  if (downloadRemotePort)
  {
    [v3 setObject:downloadRemotePort forKey:@"download_remote_port"];
  }

  downloadRequestTime = self->_downloadRequestTime;
  if (downloadRequestTime)
  {
    [v3 setObject:downloadRequestTime forKey:@"download_request_time"];
  }

  downloadRequestToResponseTime = self->_downloadRequestToResponseTime;
  if (downloadRequestToResponseTime)
  {
    [v3 setObject:downloadRequestToResponseTime forKey:@"download_request_to_response_time"];
  }

  downloadResponseTime = self->_downloadResponseTime;
  if (downloadResponseTime)
  {
    [v3 setObject:downloadResponseTime forKey:@"download_response_time"];
  }

  downloadSecureConnectionTime = self->_downloadSecureConnectionTime;
  if (downloadSecureConnectionTime)
  {
    [v3 setObject:downloadSecureConnectionTime forKey:@"download_secure_connection_time"];
  }

  downloadServer = self->_downloadServer;
  if (downloadServer)
  {
    [v3 setObject:downloadServer forKey:@"download_server"];
  }

  downloadSpeed = self->_downloadSpeed;
  if (downloadSpeed)
  {
    [v3 setObject:downloadSpeed forKey:@"download_speed"];
  }

  downloadStableSpeed = self->_downloadStableSpeed;
  if (downloadStableSpeed)
  {
    [v3 setObject:downloadStableSpeed forKey:@"download_stable_speed"];
  }

  downloadStartDataBearerTechnology = self->_downloadStartDataBearerTechnology;
  if (downloadStartDataBearerTechnology)
  {
    [v3 setObject:downloadStartDataBearerTechnology forKey:@"download_start_data_bearer_technology"];
  }

  downloadStartPrimaryIpv4Interface = self->_downloadStartPrimaryIpv4Interface;
  if (downloadStartPrimaryIpv4Interface)
  {
    [v3 setObject:downloadStartPrimaryIpv4Interface forKey:@"download_start_primary_ipv4_interface"];
  }

  downloadStartRat = self->_downloadStartRat;
  if (downloadStartRat)
  {
    [v3 setObject:downloadStartRat forKey:@"download_start_rat"];
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v90 = [MEMORY[0x277CCABB0] numberWithBool:self->_networkIsAppleReachable];
    [v3 setObject:v90 forKey:@"network_is_apple_reachable"];
  }

  networkPrimaryIpv4InterfaceName = self->_networkPrimaryIpv4InterfaceName;
  if (networkPrimaryIpv4InterfaceName)
  {
    [v3 setObject:networkPrimaryIpv4InterfaceName forKey:@"network_primary_ipv4_interface_name"];
  }

  networkPrimaryIpv4ServiceName = self->_networkPrimaryIpv4ServiceName;
  if (networkPrimaryIpv4ServiceName)
  {
    [v3 setObject:networkPrimaryIpv4ServiceName forKey:@"network_primary_ipv4_service_name"];
  }

  nptkitFrameworkVersion = self->_nptkitFrameworkVersion;
  if (nptkitFrameworkVersion)
  {
    [v3 setObject:nptkitFrameworkVersion forKey:@"nptkit_framework_version"];
  }

  performanceTestStartTime = self->_performanceTestStartTime;
  if (performanceTestStartTime)
  {
    [v3 setObject:performanceTestStartTime forKey:@"performance_test_start_time"];
  }

  pingAddress = self->_pingAddress;
  if (pingAddress)
  {
    [v3 setObject:pingAddress forKey:@"ping_address"];
  }

  pingLossPercent = self->_pingLossPercent;
  if (pingLossPercent)
  {
    [v3 setObject:pingLossPercent forKey:@"ping_loss_percent"];
  }

  pingMaxLatency = self->_pingMaxLatency;
  if (pingMaxLatency)
  {
    [v3 setObject:pingMaxLatency forKey:@"ping_max_latency"];
  }

  pingMeanLatency = self->_pingMeanLatency;
  if (pingMeanLatency)
  {
    [v3 setObject:pingMeanLatency forKey:@"ping_mean_latency"];
  }

  pingMinLatency = self->_pingMinLatency;
  if (pingMinLatency)
  {
    [v3 setObject:pingMinLatency forKey:@"ping_min_latency"];
  }

  pingStandardDeviation = self->_pingStandardDeviation;
  if (pingStandardDeviation)
  {
    [v3 setObject:pingStandardDeviation forKey:@"ping_standard_deviation"];
  }

  powerBatteryWarningLevel = self->_powerBatteryWarningLevel;
  if (powerBatteryWarningLevel)
  {
    [v3 setObject:powerBatteryWarningLevel forKey:@"power_battery_warning_level"];
  }

  powerSourceType = self->_powerSourceType;
  if (powerSourceType)
  {
    [v3 setObject:powerSourceType forKey:@"power_source_type"];
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps)
  {
    [v3 setObject:powerStateCaps forKey:@"power_state_caps"];
  }

  systemActiveProcessorCount = self->_systemActiveProcessorCount;
  if (systemActiveProcessorCount)
  {
    [v3 setObject:systemActiveProcessorCount forKey:@"system_active_processor_count"];
  }

  systemBatteryLevel = self->_systemBatteryLevel;
  if (systemBatteryLevel)
  {
    [v3 setObject:systemBatteryLevel forKey:@"system_battery_level"];
  }

  systemBatteryState = self->_systemBatteryState;
  if (systemBatteryState)
  {
    [v3 setObject:systemBatteryState forKey:@"system_battery_state"];
  }

  systemDeviceClass = self->_systemDeviceClass;
  if (systemDeviceClass)
  {
    [v3 setObject:systemDeviceClass forKey:@"system_device_class"];
  }

  systemDeviceModel = self->_systemDeviceModel;
  if (systemDeviceModel)
  {
    [v3 setObject:systemDeviceModel forKey:@"system_device_model"];
  }

  if (*(&self->_has + 2))
  {
    v109 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemLowPowerModeEnabled];
    [v3 setObject:v109 forKey:@"system_low_power_mode_enabled"];
  }

  systemName = self->_systemName;
  if (systemName)
  {
    [v3 setObject:systemName forKey:@"system_name"];
  }

  systemOsVariant = self->_systemOsVariant;
  if (systemOsVariant)
  {
    [v3 setObject:systemOsVariant forKey:@"system_os_variant"];
  }

  systemPhysicalMemory = self->_systemPhysicalMemory;
  if (systemPhysicalMemory)
  {
    [v3 setObject:systemPhysicalMemory forKey:@"system_physical_memory"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v113 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemPowersourceConnected];
    [v3 setObject:v113 forKey:@"system_powersource_connected"];
  }

  systemProcessorCount = self->_systemProcessorCount;
  if (systemProcessorCount)
  {
    [v3 setObject:systemProcessorCount forKey:@"system_processor_count"];
  }

  systemVersion = self->_systemVersion;
  if (systemVersion)
  {
    [v3 setObject:systemVersion forKey:@"system_version"];
  }

  uploadCdnPop = self->_uploadCdnPop;
  if (uploadCdnPop)
  {
    [v3 setObject:uploadCdnPop forKey:@"upload_cdn_pop"];
  }

  uploadCdnUuid = self->_uploadCdnUuid;
  if (uploadCdnUuid)
  {
    [v3 setObject:uploadCdnUuid forKey:@"upload_cdn_uuid"];
  }

  uploadConnectionTime = self->_uploadConnectionTime;
  if (uploadConnectionTime)
  {
    [v3 setObject:uploadConnectionTime forKey:@"upload_connection_time"];
  }

  uploadDomainLookupTime = self->_uploadDomainLookupTime;
  if (uploadDomainLookupTime)
  {
    [v3 setObject:uploadDomainLookupTime forKey:@"upload_domain_lookup_time"];
  }

  uploadEndDataBearerTechnology = self->_uploadEndDataBearerTechnology;
  if (uploadEndDataBearerTechnology)
  {
    [v3 setObject:uploadEndDataBearerTechnology forKey:@"upload_end_data_bearer_technology"];
  }

  uploadEndPrimaryIpv4Interface = self->_uploadEndPrimaryIpv4Interface;
  if (uploadEndPrimaryIpv4Interface)
  {
    [v3 setObject:uploadEndPrimaryIpv4Interface forKey:@"upload_end_primary_ipv4_interface"];
  }

  uploadEndRat = self->_uploadEndRat;
  if (uploadEndRat)
  {
    [v3 setObject:uploadEndRat forKey:@"upload_end_rat"];
  }

  uploadFileSize = self->_uploadFileSize;
  if (uploadFileSize)
  {
    [v3 setObject:uploadFileSize forKey:@"upload_file_size"];
  }

  uploadInterfaceName = self->_uploadInterfaceName;
  if (uploadInterfaceName)
  {
    [v3 setObject:uploadInterfaceName forKey:@"upload_interface_name"];
  }

  uploadInterfaceServiceName = self->_uploadInterfaceServiceName;
  if (uploadInterfaceServiceName)
  {
    [v3 setObject:uploadInterfaceServiceName forKey:@"upload_interface_service_name"];
  }

  v126 = self->_has;
  if ((*&v126 & 0x40000) != 0)
  {
    v236 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsCellular];
    [v3 setObject:v236 forKey:@"upload_is_cellular"];

    v126 = self->_has;
    if ((*&v126 & 0x80000) == 0)
    {
LABEL_249:
      if ((*&v126 & 0x100000) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_463;
    }
  }

  else if ((*&v126 & 0x80000) == 0)
  {
    goto LABEL_249;
  }

  v237 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsConstrained];
  [v3 setObject:v237 forKey:@"upload_is_constrained"];

  v126 = self->_has;
  if ((*&v126 & 0x100000) == 0)
  {
LABEL_250:
    if ((*&v126 & 0x200000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_464;
  }

LABEL_463:
  v238 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsExpensive];
  [v3 setObject:v238 forKey:@"upload_is_expensive"];

  v126 = self->_has;
  if ((*&v126 & 0x200000) == 0)
  {
LABEL_251:
    if ((*&v126 & 0x400000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_465;
  }

LABEL_464:
  v239 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsMultipath];
  [v3 setObject:v239 forKey:@"upload_is_multipath"];

  v126 = self->_has;
  if ((*&v126 & 0x400000) == 0)
  {
LABEL_252:
    if ((*&v126 & 0x800000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_253;
  }

LABEL_465:
  v240 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsProxyConnection];
  [v3 setObject:v240 forKey:@"upload_is_proxy_connection"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_253:
    v127 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsReusedConnection];
    [v3 setObject:v127 forKey:@"upload_is_reused_connection"];
  }

LABEL_254:
  uploadMaxSpeedObserved = self->_uploadMaxSpeedObserved;
  if (uploadMaxSpeedObserved)
  {
    [v3 setObject:uploadMaxSpeedObserved forKey:@"upload_max_speed_observed"];
  }

  uploadNumberOfStreams = self->_uploadNumberOfStreams;
  if (uploadNumberOfStreams)
  {
    [v3 setObject:uploadNumberOfStreams forKey:@"upload_number_of_streams"];
  }

  uploadProtocolName = self->_uploadProtocolName;
  if (uploadProtocolName)
  {
    [v3 setObject:uploadProtocolName forKey:@"upload_protocol_name"];
  }

  uploadRemoteAddress = self->_uploadRemoteAddress;
  if (uploadRemoteAddress)
  {
    [v3 setObject:uploadRemoteAddress forKey:@"upload_remote_address"];
  }

  uploadRemotePort = self->_uploadRemotePort;
  if (uploadRemotePort)
  {
    [v3 setObject:uploadRemotePort forKey:@"upload_remote_port"];
  }

  uploadRequestTime = self->_uploadRequestTime;
  if (uploadRequestTime)
  {
    [v3 setObject:uploadRequestTime forKey:@"upload_request_time"];
  }

  uploadRequestToResponseTime = self->_uploadRequestToResponseTime;
  if (uploadRequestToResponseTime)
  {
    [v3 setObject:uploadRequestToResponseTime forKey:@"upload_request_to_response_time"];
  }

  uploadResponseTime = self->_uploadResponseTime;
  if (uploadResponseTime)
  {
    [v3 setObject:uploadResponseTime forKey:@"upload_response_time"];
  }

  uploadSecureConnectionTime = self->_uploadSecureConnectionTime;
  if (uploadSecureConnectionTime)
  {
    [v3 setObject:uploadSecureConnectionTime forKey:@"upload_secure_connection_time"];
  }

  uploadServer = self->_uploadServer;
  if (uploadServer)
  {
    [v3 setObject:uploadServer forKey:@"upload_server"];
  }

  uploadSpeed = self->_uploadSpeed;
  if (uploadSpeed)
  {
    [v3 setObject:uploadSpeed forKey:@"upload_speed"];
  }

  uploadStableSpeed = self->_uploadStableSpeed;
  if (uploadStableSpeed)
  {
    [v3 setObject:uploadStableSpeed forKey:@"upload_stable_speed"];
  }

  uploadStartDataBearerTechnology = self->_uploadStartDataBearerTechnology;
  if (uploadStartDataBearerTechnology)
  {
    [v3 setObject:uploadStartDataBearerTechnology forKey:@"upload_start_data_bearer_technology"];
  }

  uploadStartPrimaryIpv4Interface = self->_uploadStartPrimaryIpv4Interface;
  if (uploadStartPrimaryIpv4Interface)
  {
    [v3 setObject:uploadStartPrimaryIpv4Interface forKey:@"upload_start_primary_ipv4_interface"];
  }

  uploadStartRat = self->_uploadStartRat;
  if (uploadStartRat)
  {
    [v3 setObject:uploadStartRat forKey:@"upload_start_rat"];
  }

  if (*(&self->_has + 3))
  {
    v143 = [MEMORY[0x277CCABB0] numberWithBool:self->_useWifiWasSpecified];
    [v3 setObject:v143 forKey:@"use_wifi_was_specified"];
  }

  wifiAveragePhyRateRx = self->_wifiAveragePhyRateRx;
  if (wifiAveragePhyRateRx)
  {
    [v3 setObject:wifiAveragePhyRateRx forKey:@"wifi_average_phy_rate_rx"];
  }

  wifiAverageRssi = self->_wifiAverageRssi;
  if (wifiAverageRssi)
  {
    [v3 setObject:wifiAverageRssi forKey:@"wifi_average_rssi"];
  }

  wifiAverageSnr = self->_wifiAverageSnr;
  if (wifiAverageSnr)
  {
    [v3 setObject:wifiAverageSnr forKey:@"wifi_average_snr"];
  }

  wifiAverageTcpRtt = self->_wifiAverageTcpRtt;
  if (wifiAverageTcpRtt)
  {
    [v3 setObject:wifiAverageTcpRtt forKey:@"wifi_average_tcp_rtt"];
  }

  wifiBtcMode = self->_wifiBtcMode;
  if (wifiBtcMode)
  {
    [v3 setObject:wifiBtcMode forKey:@"wifi_btc_mode"];
  }

  wifiCca = self->_wifiCca;
  if (wifiCca)
  {
    [v3 setObject:wifiCca forKey:@"wifi_cca"];
  }

  wifiChannel = self->_wifiChannel;
  if (wifiChannel)
  {
    [v3 setObject:wifiChannel forKey:@"wifi_channel"];
  }

  wifiCwfCca = self->_wifiCwfCca;
  if (wifiCwfCca)
  {
    [v3 setObject:wifiCwfCca forKey:@"wifi_cwf_cca"];
  }

  wifiEapolControlMode = self->_wifiEapolControlMode;
  if (wifiEapolControlMode)
  {
    [v3 setObject:wifiEapolControlMode forKey:@"wifi_eapol_control_mode"];
  }

  wifiEapolSupplicantState = self->_wifiEapolSupplicantState;
  if (wifiEapolSupplicantState)
  {
    [v3 setObject:wifiEapolSupplicantState forKey:@"wifi_eapol_supplicant_state"];
  }

  wifiGuardInterval = self->_wifiGuardInterval;
  if (wifiGuardInterval)
  {
    [v3 setObject:wifiGuardInterval forKey:@"wifi_guard_interval"];
  }

  wifiHiddenState = self->_wifiHiddenState;
  if (wifiHiddenState)
  {
    [v3 setObject:wifiHiddenState forKey:@"wifi_hidden_state"];
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v156 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiIsCaptive];
    [v3 setObject:v156 forKey:@"wifi_is_captive"];
  }

  wifiMcsIndex = self->_wifiMcsIndex;
  if (wifiMcsIndex)
  {
    [v3 setObject:wifiMcsIndex forKey:@"wifi_mcs_index"];
  }

  wifiNoise = self->_wifiNoise;
  if (wifiNoise)
  {
    [v3 setObject:wifiNoise forKey:@"wifi_noise"];
  }

  wifiNumberOfSpatialStreams = self->_wifiNumberOfSpatialStreams;
  if (wifiNumberOfSpatialStreams)
  {
    [v3 setObject:wifiNumberOfSpatialStreams forKey:@"wifi_number_of_spatial_streams"];
  }

  wifiOpMode = self->_wifiOpMode;
  if (wifiOpMode)
  {
    [v3 setObject:wifiOpMode forKey:@"wifi_op_mode"];
  }

  wifiPhyMode = self->_wifiPhyMode;
  if (wifiPhyMode)
  {
    [v3 setObject:wifiPhyMode forKey:@"wifi_phy_mode"];
  }

  wifiRssi = self->_wifiRssi;
  if (wifiRssi)
  {
    [v3 setObject:wifiRssi forKey:@"wifi_rssi"];
  }

  wifiSecurity = self->_wifiSecurity;
  if (wifiSecurity)
  {
    [v3 setObject:wifiSecurity forKey:@"wifi_security"];
  }

  wifiTxRate = self->_wifiTxRate;
  if (wifiTxRate)
  {
    [v3 setObject:wifiTxRate forKey:@"wifi_tx_rate"];
  }

  wrmChannelType = self->_wrmChannelType;
  if (wrmChannelType)
  {
    [v3 setObject:wrmChannelType forKey:@"wrm_channel_type"];
  }

  cellularCellid = self->_cellularCellid;
  if (cellularCellid)
  {
    [v3 setObject:cellularCellid forKey:@"cellular_cellid"];
  }

  networkQualityResponsiveness = self->_networkQualityResponsiveness;
  if (networkQualityResponsiveness)
  {
    [v3 setObject:networkQualityResponsiveness forKey:@"network_quality_responsiveness"];
  }

  cellularAggregatedDLBW = self->_cellularAggregatedDLBW;
  if (cellularAggregatedDLBW)
  {
    [v3 setObject:cellularAggregatedDLBW forKey:@"cellular_aggregated_DL_BW"];
  }

  cellularAggregatedULBW = self->_cellularAggregatedULBW;
  if (cellularAggregatedULBW)
  {
    [v3 setObject:cellularAggregatedULBW forKey:@"cellular_aggregated_UL_BW"];
  }

  cellularIssa = self->_cellularIssa;
  if (cellularIssa)
  {
    [v3 setObject:cellularIssa forKey:@"cellular_issa"];
  }

  cellularLac = self->_cellularLac;
  if (cellularLac)
  {
    [v3 setObject:cellularLac forKey:@"cellular_lac"];
  }

  cellularLteNrConfiguredBw = self->_cellularLteNrConfiguredBw;
  if (cellularLteNrConfiguredBw)
  {
    [v3 setObject:cellularLteNrConfiguredBw forKey:@"cellular_lte_nr_configured_bw"];
  }

  cellularMaxDlMod = self->_cellularMaxDlMod;
  if (cellularMaxDlMod)
  {
    [v3 setObject:cellularMaxDlMod forKey:@"cellular_max_dl_mod"];
  }

  cellularMaxNwMimoLyr = self->_cellularMaxNwMimoLyr;
  if (cellularMaxNwMimoLyr)
  {
    [v3 setObject:cellularMaxNwMimoLyr forKey:@"cellular_max_nw_mimo_lyr"];
  }

  cellularMaxSchdMimoLyr = self->_cellularMaxSchdMimoLyr;
  if (cellularMaxSchdMimoLyr)
  {
    [v3 setObject:cellularMaxSchdMimoLyr forKey:@"cellular_max_schd_mimo_lyr"];
  }

  cellularMaxUeRank = self->_cellularMaxUeRank;
  if (cellularMaxUeRank)
  {
    [v3 setObject:cellularMaxUeRank forKey:@"cellular_max_ue_rank"];
  }

  cellularMaxUlMod = self->_cellularMaxUlMod;
  if (cellularMaxUlMod)
  {
    [v3 setObject:cellularMaxUlMod forKey:@"cellular_max_ul_mod"];
  }

  cellularNrSinr = self->_cellularNrSinr;
  if (cellularNrSinr)
  {
    [v3 setObject:cellularNrSinr forKey:@"cellular_nr_sinr"];
  }

  cellularNrarfcn = self->_cellularNrarfcn;
  if (cellularNrarfcn)
  {
    [v3 setObject:cellularNrarfcn forKey:@"cellular_nrarfcn"];
  }

  cellularRadioFrequency = self->_cellularRadioFrequency;
  if (cellularRadioFrequency)
  {
    [v3 setObject:cellularRadioFrequency forKey:@"cellular_radio_frequency"];
  }

  cellularTotalDlMimoLayers = self->_cellularTotalDlMimoLayers;
  if (cellularTotalDlMimoLayers)
  {
    [v3 setObject:cellularTotalDlMimoLayers forKey:@"cellular_total_dl_mimo_layers"];
  }

  cellularTotalNumCcs = self->_cellularTotalNumCcs;
  if (cellularTotalNumCcs)
  {
    [v3 setObject:cellularTotalNumCcs forKey:@"cellular_total_num_ccs"];
  }

  downloadStartRadioFrequency = self->_downloadStartRadioFrequency;
  if (downloadStartRadioFrequency)
  {
    [v3 setObject:downloadStartRadioFrequency forKey:@"download_start_radio_frequency"];
  }

  downloadEndRadioFrequency = self->_downloadEndRadioFrequency;
  if (downloadEndRadioFrequency)
  {
    [v3 setObject:downloadEndRadioFrequency forKey:@"download_end_radio_frequency"];
  }

  networkPrimaryIpv6InterfaceName = self->_networkPrimaryIpv6InterfaceName;
  if (networkPrimaryIpv6InterfaceName)
  {
    [v3 setObject:networkPrimaryIpv6InterfaceName forKey:@"network_primary_ipv6_interface_name"];
  }

  networkPrimaryIpv6ServiceName = self->_networkPrimaryIpv6ServiceName;
  if (networkPrimaryIpv6ServiceName)
  {
    [v3 setObject:networkPrimaryIpv6ServiceName forKey:@"network_primary_ipv6_service_name"];
  }

  uploadStartRadioFrequency = self->_uploadStartRadioFrequency;
  if (uploadStartRadioFrequency)
  {
    [v3 setObject:uploadStartRadioFrequency forKey:@"upload_start_radio_frequency"];
  }

  uploadEndRadioFrequency = self->_uploadEndRadioFrequency;
  if (uploadEndRadioFrequency)
  {
    [v3 setObject:uploadEndRadioFrequency forKey:@"upload_end_radio_frequency"];
  }

  downloadError = self->_downloadError;
  if (downloadError)
  {
    [v3 setObject:downloadError forKey:@"download_error"];
  }

  networkQualityError = self->_networkQualityError;
  if (networkQualityError)
  {
    [v3 setObject:networkQualityError forKey:@"network_quality_error"];
  }

  networkQualityDownloadSpeed = self->_networkQualityDownloadSpeed;
  if (networkQualityDownloadSpeed)
  {
    [v3 setObject:networkQualityDownloadSpeed forKey:@"network_quality_download_speed"];
  }

  networkQualityUploadSpeed = self->_networkQualityUploadSpeed;
  if (networkQualityUploadSpeed)
  {
    [v3 setObject:networkQualityUploadSpeed forKey:@"network_quality_upload_speed"];
  }

  networkQualityRating = self->_networkQualityRating;
  if (networkQualityRating)
  {
    [v3 setObject:networkQualityRating forKey:@"network_quality_rating"];
  }

  vpnConnectionState = self->_vpnConnectionState;
  if (vpnConnectionState)
  {
    [v3 setObject:vpnConnectionState forKey:@"vpn_connection_state"];
  }

  uploadError = self->_uploadError;
  if (uploadError)
  {
    [v3 setObject:uploadError forKey:@"upload_error"];
  }

  uploadErrorDomain = self->_uploadErrorDomain;
  if (uploadErrorDomain)
  {
    [v3 setObject:uploadErrorDomain forKey:@"upload_error_domain"];
  }

  uploadErrorCode = self->_uploadErrorCode;
  if (uploadErrorCode)
  {
    [v3 setObject:uploadErrorCode forKey:@"upload_error_code"];
  }

  downloadErrorDomain = self->_downloadErrorDomain;
  if (downloadErrorDomain)
  {
    [v3 setObject:downloadErrorDomain forKey:@"download_error_domain"];
  }

  downloadErrorCode = self->_downloadErrorCode;
  if (downloadErrorCode)
  {
    [v3 setObject:downloadErrorCode forKey:@"download_error_code"];
  }

  pingError = self->_pingError;
  if (pingError)
  {
    [v3 setObject:pingError forKey:@"ping_error"];
  }

  pingErrorDomain = self->_pingErrorDomain;
  if (pingErrorDomain)
  {
    [v3 setObject:pingErrorDomain forKey:@"ping_error_domain"];
  }

  pingErrorCode = self->_pingErrorCode;
  if (pingErrorCode)
  {
    [v3 setObject:pingErrorCode forKey:@"ping_error_code"];
  }

  networkQualityErrorDomain = self->_networkQualityErrorDomain;
  if (networkQualityErrorDomain)
  {
    [v3 setObject:networkQualityErrorDomain forKey:@"network_quality_error_domain"];
  }

  networkQualityErrorCode = self->_networkQualityErrorCode;
  if (networkQualityErrorCode)
  {
    [v3 setObject:networkQualityErrorCode forKey:@"network_quality_error_code"];
  }

  cellularRnMobileCountryCode = self->_cellularRnMobileCountryCode;
  if (cellularRnMobileCountryCode)
  {
    [v3 setObject:cellularRnMobileCountryCode forKey:@"cellular_rn_mobile_country_code"];
  }

  cellularRnMobileNetworkCode = self->_cellularRnMobileNetworkCode;
  if (cellularRnMobileNetworkCode)
  {
    [v3 setObject:cellularRnMobileNetworkCode forKey:@"cellular_rn_mobile_network_code"];
  }

  if (*(&self->_has + 1))
  {
    v207 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularDataIsEnabled];
    [v3 setObject:v207 forKey:@"cellular_data_is_enabled"];
  }

  downloadStartCellularEstimate = self->_downloadStartCellularEstimate;
  if (downloadStartCellularEstimate)
  {
    [v3 setObject:downloadStartCellularEstimate forKey:@"download_start_cellular_estimate"];
  }

  downloadEndCellularEstimate = self->_downloadEndCellularEstimate;
  if (downloadEndCellularEstimate)
  {
    [v3 setObject:downloadEndCellularEstimate forKey:@"download_end_cellular_estimate"];
  }

  downloadMaxCellularEstimate = self->_downloadMaxCellularEstimate;
  if (downloadMaxCellularEstimate)
  {
    [v3 setObject:downloadMaxCellularEstimate forKey:@"download_max_cellular_estimate"];
  }

  uploadStartCellularEstimate = self->_uploadStartCellularEstimate;
  if (uploadStartCellularEstimate)
  {
    [v3 setObject:uploadStartCellularEstimate forKey:@"upload_start_cellular_estimate"];
  }

  uploadEndCellularEstimate = self->_uploadEndCellularEstimate;
  if (uploadEndCellularEstimate)
  {
    [v3 setObject:uploadEndCellularEstimate forKey:@"upload_end_cellular_estimate"];
  }

  uploadMaxCellularEstimate = self->_uploadMaxCellularEstimate;
  if (uploadMaxCellularEstimate)
  {
    [v3 setObject:uploadMaxCellularEstimate forKey:@"upload_max_cellular_estimate"];
  }

  downloadResponsiveness = self->_downloadResponsiveness;
  if (downloadResponsiveness)
  {
    [v3 setObject:downloadResponsiveness forKey:@"download_responsiveness"];
  }

  downloadResponsivenessConfidence = self->_downloadResponsivenessConfidence;
  if (downloadResponsivenessConfidence)
  {
    [v3 setObject:downloadResponsivenessConfidence forKey:@"download_responsiveness_confidence"];
  }

  downloadResponsivenessRating = self->_downloadResponsivenessRating;
  if (downloadResponsivenessRating)
  {
    [v3 setObject:downloadResponsivenessRating forKey:@"download_responsiveness_rating"];
  }

  downloadSpeedConfidence = self->_downloadSpeedConfidence;
  if (downloadSpeedConfidence)
  {
    [v3 setObject:downloadSpeedConfidence forKey:@"download_speed_confidence"];
  }

  downloadSpeedRating = self->_downloadSpeedRating;
  if (downloadSpeedRating)
  {
    [v3 setObject:downloadSpeedRating forKey:@"download_speed_rating"];
  }

  uploadResponsiveness = self->_uploadResponsiveness;
  if (uploadResponsiveness)
  {
    [v3 setObject:uploadResponsiveness forKey:@"upload_responsiveness"];
  }

  uploadResponsivenessConfidence = self->_uploadResponsivenessConfidence;
  if (uploadResponsivenessConfidence)
  {
    [v3 setObject:uploadResponsivenessConfidence forKey:@"upload_responsiveness_confidence"];
  }

  uploadResponsivenessRating = self->_uploadResponsivenessRating;
  if (uploadResponsivenessRating)
  {
    [v3 setObject:uploadResponsivenessRating forKey:@"upload_responsiveness_rating"];
  }

  uploadSpeedConfidence = self->_uploadSpeedConfidence;
  if (uploadSpeedConfidence)
  {
    [v3 setObject:uploadSpeedConfidence forKey:@"upload_speed_confidence"];
  }

  uploadSpeedRating = self->_uploadSpeedRating;
  if (uploadSpeedRating)
  {
    [v3 setObject:uploadSpeedRating forKey:@"upload_speed_rating"];
  }

  wifiChannelBand = self->_wifiChannelBand;
  if (wifiChannelBand)
  {
    [v3 setObject:wifiChannelBand forKey:@"wifi_channel_band"];
  }

  wifiChannelWidth = self->_wifiChannelWidth;
  if (wifiChannelWidth)
  {
    [v3 setObject:wifiChannelWidth forKey:@"wifi_channel_width"];
  }

  v226 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v34 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v34;
  }

  if (self->_awdlElectionParameters)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_awdlMasterChannel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_awdlOpMode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*&self->_has & 4) != 0)
  {
    awdlPowerState = self->_awdlPowerState;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_awdlSchedule)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_awdlSecondaryMasterChannel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_awdlSyncChannelSequence)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_awdlSyncState)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_btConnectedDevicesCount)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    btIsConnectable = self->_btIsConnectable;
    PBDataWriterWriteBOOLField();
    v4 = v34;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_23:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_455;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  btIsDiscoverable = self->_btIsDiscoverable;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_455:
  btIsPowerOn = self->_btIsPowerOn;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_25:
    btIsScanning = self->_btIsScanning;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

LABEL_26:
  if (self->_callingClient)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularActiveContexts)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    cellularAllowsVoip = self->_cellularAllowsVoip;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_cellularAttached)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularBandinfo)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularBandwidth)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularCarrierName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularDataBearerSoMask)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularDataPlanSignalingReductionOverride)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularDataPossible)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularInHomeCountry)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularIndicator)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularIndicatorOverride)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularIsoCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularLqm)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularLteMaxScheduledLayers)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMobileCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMobileNetworkCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioCoverage)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioDataBearer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioMmwaveDataBearer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioNsaCoverage)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioNsaDataBearer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioSaCoverage)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioSaDataBearer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNewRadioSub6DataBearer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrConfiguredBw)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrLayers)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrModulation)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrRsrp)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrRsrq)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrSnr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularPid)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRadioAccessTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRadioAccessTechnologyCtDataStatus)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRoamAllowed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRsrp)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularSnr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTac)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalActiveContexts)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalBw)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalCcs)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalLayers)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularUarfcn)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadCdnPop)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadCdnUuid)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadConnectionTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadDomainLookupTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadEndDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadEndPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadEndRat)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadFileSize)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadInterfaceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadInterfaceServiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  v10 = self->_has;
  if ((*&v10 & 0x200) != 0)
  {
    downloadIsCellular = self->_downloadIsCellular;
    PBDataWriterWriteBOOLField();
    v4 = v34;
    v10 = self->_has;
    if ((*&v10 & 0x400) == 0)
    {
LABEL_138:
      if ((*&v10 & 0x800) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_459;
    }
  }

  else if ((*&v10 & 0x400) == 0)
  {
    goto LABEL_138;
  }

  downloadIsConstrained = self->_downloadIsConstrained;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_139:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_460;
  }

LABEL_459:
  downloadIsExpensive = self->_downloadIsExpensive;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_140:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_461;
  }

LABEL_460:
  downloadIsMultipath = self->_downloadIsMultipath;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_141:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_461:
  downloadIsProxyConnection = self->_downloadIsProxyConnection;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_142:
    downloadIsReusedConnection = self->_downloadIsReusedConnection;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

LABEL_143:
  if (self->_downloadMaxSpeedObserved)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadNumberOfStreams)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadProtocolName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadRemoteAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadRemotePort)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadRequestTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadRequestToResponseTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadResponseTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadSecureConnectionTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadServer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadStableSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadStartDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadStartPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadStartRat)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    networkIsAppleReachable = self->_networkIsAppleReachable;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_networkPrimaryIpv4InterfaceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkPrimaryIpv4ServiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_nptkitFrameworkVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_performanceTestStartTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingLossPercent)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingMaxLatency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingMeanLatency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingMinLatency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingStandardDeviation)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_powerBatteryWarningLevel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_powerSourceType)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_powerStateCaps)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemActiveProcessorCount)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemBatteryLevel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemBatteryState)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemDeviceClass)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemDeviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (*(&self->_has + 2))
  {
    systemLowPowerModeEnabled = self->_systemLowPowerModeEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_systemName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemOsVariant)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemPhysicalMemory)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    systemPowersourceConnected = self->_systemPowersourceConnected;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_systemProcessorCount)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadCdnPop)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadCdnUuid)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadConnectionTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadDomainLookupTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadEndDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadEndPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadEndRat)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadFileSize)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadInterfaceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadInterfaceServiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  v15 = self->_has;
  if ((*&v15 & 0x40000) != 0)
  {
    uploadIsCellular = self->_uploadIsCellular;
    PBDataWriterWriteBOOLField();
    v4 = v34;
    v15 = self->_has;
    if ((*&v15 & 0x80000) == 0)
    {
LABEL_247:
      if ((*&v15 & 0x100000) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_465;
    }
  }

  else if ((*&v15 & 0x80000) == 0)
  {
    goto LABEL_247;
  }

  uploadIsConstrained = self->_uploadIsConstrained;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v15 = self->_has;
  if ((*&v15 & 0x100000) == 0)
  {
LABEL_248:
    if ((*&v15 & 0x200000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_466;
  }

LABEL_465:
  uploadIsExpensive = self->_uploadIsExpensive;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v15 = self->_has;
  if ((*&v15 & 0x200000) == 0)
  {
LABEL_249:
    if ((*&v15 & 0x400000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_467;
  }

LABEL_466:
  uploadIsMultipath = self->_uploadIsMultipath;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  v15 = self->_has;
  if ((*&v15 & 0x400000) == 0)
  {
LABEL_250:
    if ((*&v15 & 0x800000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

LABEL_467:
  uploadIsProxyConnection = self->_uploadIsProxyConnection;
  PBDataWriterWriteBOOLField();
  v4 = v34;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_251:
    uploadIsReusedConnection = self->_uploadIsReusedConnection;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

LABEL_252:
  if (self->_uploadMaxSpeedObserved)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadNumberOfStreams)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadProtocolName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadRemoteAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadRemotePort)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadRequestTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadRequestToResponseTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadResponseTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadSecureConnectionTime)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadServer)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStableSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStartDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStartPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStartRat)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (*(&self->_has + 3))
  {
    useWifiWasSpecified = self->_useWifiWasSpecified;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_wifiAveragePhyRateRx)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiAverageRssi)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiAverageSnr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiAverageTcpRtt)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiBtcMode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiCca)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiChannel)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiCwfCca)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiEapolControlMode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiEapolSupplicantState)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiGuardInterval)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiHiddenState)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    wifiIsCaptive = self->_wifiIsCaptive;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_wifiMcsIndex)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiNoise)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiNumberOfSpatialStreams)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiOpMode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiPhyMode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiRssi)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiSecurity)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiTxRate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wrmChannelType)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularCellid)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if ((*&self->_has & 2) != 0)
  {
    acceptablePerformanceResult = self->_acceptablePerformanceResult;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_networkQualityResponsiveness)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularAggregatedDLBW)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularAggregatedULBW)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularIssa)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularLac)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularLteNrConfiguredBw)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMaxDlMod)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMaxNwMimoLyr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMaxSchdMimoLyr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMaxUeRank)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularMaxUlMod)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrSinr)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularNrarfcn)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRadioFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalDlMimoLayers)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularTotalNumCcs)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadStartRadioFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadEndRadioFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkPrimaryIpv6InterfaceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkPrimaryIpv6ServiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStartRadioFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadEndRadioFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadError)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityError)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityDownloadSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityUploadSpeed)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityRating)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_vpnConnectionState)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadError)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadErrorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadErrorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadErrorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadErrorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingError)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingErrorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_pingErrorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityErrorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_networkQualityErrorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRnMobileCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_cellularRnMobileNetworkCode)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (*(&self->_has + 1))
  {
    cellularDataIsEnabled = self->_cellularDataIsEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v34;
  }

  if (self->_downloadStartCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadEndCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadMaxCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadStartCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadEndCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadMaxCellularEstimate)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadResponsiveness)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadResponsivenessConfidence)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadResponsivenessRating)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadSpeedConfidence)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_downloadSpeedRating)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadResponsiveness)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadResponsivenessConfidence)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadResponsivenessRating)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadSpeedConfidence)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_uploadSpeedRating)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiChannelBand)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }

  if (self->_wifiChannelWidth)
  {
    PBDataWriterWriteStringField();
    v4 = v34;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 421) |= 1u;
  }

  v8 = v4;
  if (self->_awdlElectionParameters)
  {
    [v4 setAwdlElectionParameters:?];
    v4 = v8;
  }

  if (self->_awdlMasterChannel)
  {
    [v8 setAwdlMasterChannel:?];
    v4 = v8;
  }

  if (self->_awdlOpMode)
  {
    [v8 setAwdlOpMode:?];
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 1657) = self->_awdlPowerState;
    *(v4 + 421) |= 4u;
  }

  if (self->_awdlSchedule)
  {
    [v8 setAwdlSchedule:?];
    v4 = v8;
  }

  if (self->_awdlSecondaryMasterChannel)
  {
    [v8 setAwdlSecondaryMasterChannel:?];
    v4 = v8;
  }

  if (self->_awdlSyncChannelSequence)
  {
    [v8 setAwdlSyncChannelSequence:?];
    v4 = v8;
  }

  if (self->_awdlSyncState)
  {
    [v8 setAwdlSyncState:?];
    v4 = v8;
  }

  if (self->_btConnectedDevicesCount)
  {
    [v8 setBtConnectedDevicesCount:?];
    v4 = v8;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v4 + 1658) = self->_btIsConnectable;
    *(v4 + 421) |= 8u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_23:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_455;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v4 + 1659) = self->_btIsDiscoverable;
  *(v4 + 421) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_455:
  *(v4 + 1660) = self->_btIsPowerOn;
  *(v4 + 421) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_25:
    *(v4 + 1661) = self->_btIsScanning;
    *(v4 + 421) |= 0x40u;
  }

LABEL_26:
  if (self->_callingClient)
  {
    [v8 setCallingClient:?];
    v4 = v8;
  }

  if (self->_cellularActiveContexts)
  {
    [v8 setCellularActiveContexts:?];
    v4 = v8;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v4 + 1662) = self->_cellularAllowsVoip;
    *(v4 + 421) |= 0x80u;
  }

  if (self->_cellularAttached)
  {
    [v8 setCellularAttached:?];
    v4 = v8;
  }

  if (self->_cellularBandinfo)
  {
    [v8 setCellularBandinfo:?];
    v4 = v8;
  }

  if (self->_cellularBandwidth)
  {
    [v8 setCellularBandwidth:?];
    v4 = v8;
  }

  if (self->_cellularCarrierName)
  {
    [v8 setCellularCarrierName:?];
    v4 = v8;
  }

  if (self->_cellularDataBearerSoMask)
  {
    [v8 setCellularDataBearerSoMask:?];
    v4 = v8;
  }

  if (self->_cellularDataBearerTechnology)
  {
    [v8 setCellularDataBearerTechnology:?];
    v4 = v8;
  }

  if (self->_cellularDataPlanSignalingReductionOverride)
  {
    [v8 setCellularDataPlanSignalingReductionOverride:?];
    v4 = v8;
  }

  if (self->_cellularDataPossible)
  {
    [v8 setCellularDataPossible:?];
    v4 = v8;
  }

  if (self->_cellularInHomeCountry)
  {
    [v8 setCellularInHomeCountry:?];
    v4 = v8;
  }

  if (self->_cellularIndicator)
  {
    [v8 setCellularIndicator:?];
    v4 = v8;
  }

  if (self->_cellularIndicatorOverride)
  {
    [v8 setCellularIndicatorOverride:?];
    v4 = v8;
  }

  if (self->_cellularIsoCountryCode)
  {
    [v8 setCellularIsoCountryCode:?];
    v4 = v8;
  }

  if (self->_cellularLqm)
  {
    [v8 setCellularLqm:?];
    v4 = v8;
  }

  if (self->_cellularLteMaxScheduledLayers)
  {
    [v8 setCellularLteMaxScheduledLayers:?];
    v4 = v8;
  }

  if (self->_cellularMobileCountryCode)
  {
    [v8 setCellularMobileCountryCode:?];
    v4 = v8;
  }

  if (self->_cellularMobileNetworkCode)
  {
    [v8 setCellularMobileNetworkCode:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioCoverage)
  {
    [v8 setCellularNewRadioCoverage:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioDataBearer)
  {
    [v8 setCellularNewRadioDataBearer:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioMmwaveDataBearer)
  {
    [v8 setCellularNewRadioMmwaveDataBearer:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioNsaCoverage)
  {
    [v8 setCellularNewRadioNsaCoverage:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioNsaDataBearer)
  {
    [v8 setCellularNewRadioNsaDataBearer:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioSaCoverage)
  {
    [v8 setCellularNewRadioSaCoverage:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioSaDataBearer)
  {
    [v8 setCellularNewRadioSaDataBearer:?];
    v4 = v8;
  }

  if (self->_cellularNewRadioSub6DataBearer)
  {
    [v8 setCellularNewRadioSub6DataBearer:?];
    v4 = v8;
  }

  if (self->_cellularNrConfiguredBw)
  {
    [v8 setCellularNrConfiguredBw:?];
    v4 = v8;
  }

  if (self->_cellularNrLayers)
  {
    [v8 setCellularNrLayers:?];
    v4 = v8;
  }

  if (self->_cellularNrModulation)
  {
    [v8 setCellularNrModulation:?];
    v4 = v8;
  }

  if (self->_cellularNrRsrp)
  {
    [v8 setCellularNrRsrp:?];
    v4 = v8;
  }

  if (self->_cellularNrRsrq)
  {
    [v8 setCellularNrRsrq:?];
    v4 = v8;
  }

  if (self->_cellularNrSnr)
  {
    [v8 setCellularNrSnr:?];
    v4 = v8;
  }

  if (self->_cellularPid)
  {
    [v8 setCellularPid:?];
    v4 = v8;
  }

  if (self->_cellularRadioAccessTechnology)
  {
    [v8 setCellularRadioAccessTechnology:?];
    v4 = v8;
  }

  if (self->_cellularRadioAccessTechnologyCtDataStatus)
  {
    [v8 setCellularRadioAccessTechnologyCtDataStatus:?];
    v4 = v8;
  }

  if (self->_cellularRoamAllowed)
  {
    [v8 setCellularRoamAllowed:?];
    v4 = v8;
  }

  if (self->_cellularRsrp)
  {
    [v8 setCellularRsrp:?];
    v4 = v8;
  }

  if (self->_cellularSnr)
  {
    [v8 setCellularSnr:?];
    v4 = v8;
  }

  if (self->_cellularTac)
  {
    [v8 setCellularTac:?];
    v4 = v8;
  }

  if (self->_cellularTotalActiveContexts)
  {
    [v8 setCellularTotalActiveContexts:?];
    v4 = v8;
  }

  if (self->_cellularTotalBw)
  {
    [v8 setCellularTotalBw:?];
    v4 = v8;
  }

  if (self->_cellularTotalCcs)
  {
    [v8 setCellularTotalCcs:?];
    v4 = v8;
  }

  if (self->_cellularTotalLayers)
  {
    [v8 setCellularTotalLayers:?];
    v4 = v8;
  }

  if (self->_cellularUarfcn)
  {
    [v8 setCellularUarfcn:?];
    v4 = v8;
  }

  if (self->_downloadCdnPop)
  {
    [v8 setDownloadCdnPop:?];
    v4 = v8;
  }

  if (self->_downloadCdnUuid)
  {
    [v8 setDownloadCdnUuid:?];
    v4 = v8;
  }

  if (self->_downloadConnectionTime)
  {
    [v8 setDownloadConnectionTime:?];
    v4 = v8;
  }

  if (self->_downloadDomainLookupTime)
  {
    [v8 setDownloadDomainLookupTime:?];
    v4 = v8;
  }

  if (self->_downloadEndDataBearerTechnology)
  {
    [v8 setDownloadEndDataBearerTechnology:?];
    v4 = v8;
  }

  if (self->_downloadEndPrimaryIpv4Interface)
  {
    [v8 setDownloadEndPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (self->_downloadEndRat)
  {
    [v8 setDownloadEndRat:?];
    v4 = v8;
  }

  if (self->_downloadFileSize)
  {
    [v8 setDownloadFileSize:?];
    v4 = v8;
  }

  if (self->_downloadInterfaceName)
  {
    [v8 setDownloadInterfaceName:?];
    v4 = v8;
  }

  if (self->_downloadInterfaceServiceName)
  {
    [v8 setDownloadInterfaceServiceName:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(v4 + 1664) = self->_downloadIsCellular;
    *(v4 + 421) |= 0x200u;
    v6 = self->_has;
    if ((*&v6 & 0x400) == 0)
    {
LABEL_138:
      if ((*&v6 & 0x800) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_459;
    }
  }

  else if ((*&v6 & 0x400) == 0)
  {
    goto LABEL_138;
  }

  *(v4 + 1665) = self->_downloadIsConstrained;
  *(v4 + 421) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_139:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_460;
  }

LABEL_459:
  *(v4 + 1666) = self->_downloadIsExpensive;
  *(v4 + 421) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_140:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_461;
  }

LABEL_460:
  *(v4 + 1667) = self->_downloadIsMultipath;
  *(v4 + 421) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_141:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_461:
  *(v4 + 1668) = self->_downloadIsProxyConnection;
  *(v4 + 421) |= 0x2000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_142:
    *(v4 + 1669) = self->_downloadIsReusedConnection;
    *(v4 + 421) |= 0x4000u;
  }

LABEL_143:
  if (self->_downloadMaxSpeedObserved)
  {
    [v8 setDownloadMaxSpeedObserved:?];
    v4 = v8;
  }

  if (self->_downloadNumberOfStreams)
  {
    [v8 setDownloadNumberOfStreams:?];
    v4 = v8;
  }

  if (self->_downloadProtocolName)
  {
    [v8 setDownloadProtocolName:?];
    v4 = v8;
  }

  if (self->_downloadRemoteAddress)
  {
    [v8 setDownloadRemoteAddress:?];
    v4 = v8;
  }

  if (self->_downloadRemotePort)
  {
    [v8 setDownloadRemotePort:?];
    v4 = v8;
  }

  if (self->_downloadRequestTime)
  {
    [v8 setDownloadRequestTime:?];
    v4 = v8;
  }

  if (self->_downloadRequestToResponseTime)
  {
    [v8 setDownloadRequestToResponseTime:?];
    v4 = v8;
  }

  if (self->_downloadResponseTime)
  {
    [v8 setDownloadResponseTime:?];
    v4 = v8;
  }

  if (self->_downloadSecureConnectionTime)
  {
    [v8 setDownloadSecureConnectionTime:?];
    v4 = v8;
  }

  if (self->_downloadServer)
  {
    [v8 setDownloadServer:?];
    v4 = v8;
  }

  if (self->_downloadSpeed)
  {
    [v8 setDownloadSpeed:?];
    v4 = v8;
  }

  if (self->_downloadStableSpeed)
  {
    [v8 setDownloadStableSpeed:?];
    v4 = v8;
  }

  if (self->_downloadStartDataBearerTechnology)
  {
    [v8 setDownloadStartDataBearerTechnology:?];
    v4 = v8;
  }

  if (self->_downloadStartPrimaryIpv4Interface)
  {
    [v8 setDownloadStartPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (self->_downloadStartRat)
  {
    [v8 setDownloadStartRat:?];
    v4 = v8;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v4 + 1670) = self->_networkIsAppleReachable;
    *(v4 + 421) |= 0x8000u;
  }

  if (self->_networkPrimaryIpv4InterfaceName)
  {
    [v8 setNetworkPrimaryIpv4InterfaceName:?];
    v4 = v8;
  }

  if (self->_networkPrimaryIpv4ServiceName)
  {
    [v8 setNetworkPrimaryIpv4ServiceName:?];
    v4 = v8;
  }

  if (self->_nptkitFrameworkVersion)
  {
    [v8 setNptkitFrameworkVersion:?];
    v4 = v8;
  }

  if (self->_performanceTestStartTime)
  {
    [v8 setPerformanceTestStartTime:?];
    v4 = v8;
  }

  if (self->_pingAddress)
  {
    [v8 setPingAddress:?];
    v4 = v8;
  }

  if (self->_pingLossPercent)
  {
    [v8 setPingLossPercent:?];
    v4 = v8;
  }

  if (self->_pingMaxLatency)
  {
    [v8 setPingMaxLatency:?];
    v4 = v8;
  }

  if (self->_pingMeanLatency)
  {
    [v8 setPingMeanLatency:?];
    v4 = v8;
  }

  if (self->_pingMinLatency)
  {
    [v8 setPingMinLatency:?];
    v4 = v8;
  }

  if (self->_pingStandardDeviation)
  {
    [v8 setPingStandardDeviation:?];
    v4 = v8;
  }

  if (self->_powerBatteryWarningLevel)
  {
    [v8 setPowerBatteryWarningLevel:?];
    v4 = v8;
  }

  if (self->_powerSourceType)
  {
    [v8 setPowerSourceType:?];
    v4 = v8;
  }

  if (self->_powerStateCaps)
  {
    [v8 setPowerStateCaps:?];
    v4 = v8;
  }

  if (self->_systemActiveProcessorCount)
  {
    [v8 setSystemActiveProcessorCount:?];
    v4 = v8;
  }

  if (self->_systemBatteryLevel)
  {
    [v8 setSystemBatteryLevel:?];
    v4 = v8;
  }

  if (self->_systemBatteryState)
  {
    [v8 setSystemBatteryState:?];
    v4 = v8;
  }

  if (self->_systemDeviceClass)
  {
    [v8 setSystemDeviceClass:?];
    v4 = v8;
  }

  if (self->_systemDeviceModel)
  {
    [v8 setSystemDeviceModel:?];
    v4 = v8;
  }

  if (*(&self->_has + 2))
  {
    *(v4 + 1671) = self->_systemLowPowerModeEnabled;
    *(v4 + 421) |= 0x10000u;
  }

  if (self->_systemName)
  {
    [v8 setSystemName:?];
    v4 = v8;
  }

  if (self->_systemOsVariant)
  {
    [v8 setSystemOsVariant:?];
    v4 = v8;
  }

  if (self->_systemPhysicalMemory)
  {
    [v8 setSystemPhysicalMemory:?];
    v4 = v8;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v4 + 1672) = self->_systemPowersourceConnected;
    *(v4 + 421) |= 0x20000u;
  }

  if (self->_systemProcessorCount)
  {
    [v8 setSystemProcessorCount:?];
    v4 = v8;
  }

  if (self->_systemVersion)
  {
    [v8 setSystemVersion:?];
    v4 = v8;
  }

  if (self->_uploadCdnPop)
  {
    [v8 setUploadCdnPop:?];
    v4 = v8;
  }

  if (self->_uploadCdnUuid)
  {
    [v8 setUploadCdnUuid:?];
    v4 = v8;
  }

  if (self->_uploadConnectionTime)
  {
    [v8 setUploadConnectionTime:?];
    v4 = v8;
  }

  if (self->_uploadDomainLookupTime)
  {
    [v8 setUploadDomainLookupTime:?];
    v4 = v8;
  }

  if (self->_uploadEndDataBearerTechnology)
  {
    [v8 setUploadEndDataBearerTechnology:?];
    v4 = v8;
  }

  if (self->_uploadEndPrimaryIpv4Interface)
  {
    [v8 setUploadEndPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (self->_uploadEndRat)
  {
    [v8 setUploadEndRat:?];
    v4 = v8;
  }

  if (self->_uploadFileSize)
  {
    [v8 setUploadFileSize:?];
    v4 = v8;
  }

  if (self->_uploadInterfaceName)
  {
    [v8 setUploadInterfaceName:?];
    v4 = v8;
  }

  if (self->_uploadInterfaceServiceName)
  {
    [v8 setUploadInterfaceServiceName:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    *(v4 + 1673) = self->_uploadIsCellular;
    *(v4 + 421) |= 0x40000u;
    v7 = self->_has;
    if ((*&v7 & 0x80000) == 0)
    {
LABEL_247:
      if ((*&v7 & 0x100000) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_465;
    }
  }

  else if ((*&v7 & 0x80000) == 0)
  {
    goto LABEL_247;
  }

  *(v4 + 1674) = self->_uploadIsConstrained;
  *(v4 + 421) |= 0x80000u;
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_248:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_466;
  }

LABEL_465:
  *(v4 + 1675) = self->_uploadIsExpensive;
  *(v4 + 421) |= 0x100000u;
  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_249:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_467;
  }

LABEL_466:
  *(v4 + 1676) = self->_uploadIsMultipath;
  *(v4 + 421) |= 0x200000u;
  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_250:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

LABEL_467:
  *(v4 + 1677) = self->_uploadIsProxyConnection;
  *(v4 + 421) |= 0x400000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_251:
    *(v4 + 1678) = self->_uploadIsReusedConnection;
    *(v4 + 421) |= 0x800000u;
  }

LABEL_252:
  if (self->_uploadMaxSpeedObserved)
  {
    [v8 setUploadMaxSpeedObserved:?];
    v4 = v8;
  }

  if (self->_uploadNumberOfStreams)
  {
    [v8 setUploadNumberOfStreams:?];
    v4 = v8;
  }

  if (self->_uploadProtocolName)
  {
    [v8 setUploadProtocolName:?];
    v4 = v8;
  }

  if (self->_uploadRemoteAddress)
  {
    [v8 setUploadRemoteAddress:?];
    v4 = v8;
  }

  if (self->_uploadRemotePort)
  {
    [v8 setUploadRemotePort:?];
    v4 = v8;
  }

  if (self->_uploadRequestTime)
  {
    [v8 setUploadRequestTime:?];
    v4 = v8;
  }

  if (self->_uploadRequestToResponseTime)
  {
    [v8 setUploadRequestToResponseTime:?];
    v4 = v8;
  }

  if (self->_uploadResponseTime)
  {
    [v8 setUploadResponseTime:?];
    v4 = v8;
  }

  if (self->_uploadSecureConnectionTime)
  {
    [v8 setUploadSecureConnectionTime:?];
    v4 = v8;
  }

  if (self->_uploadServer)
  {
    [v8 setUploadServer:?];
    v4 = v8;
  }

  if (self->_uploadSpeed)
  {
    [v8 setUploadSpeed:?];
    v4 = v8;
  }

  if (self->_uploadStableSpeed)
  {
    [v8 setUploadStableSpeed:?];
    v4 = v8;
  }

  if (self->_uploadStartDataBearerTechnology)
  {
    [v8 setUploadStartDataBearerTechnology:?];
    v4 = v8;
  }

  if (self->_uploadStartPrimaryIpv4Interface)
  {
    [v8 setUploadStartPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (self->_uploadStartRat)
  {
    [v8 setUploadStartRat:?];
    v4 = v8;
  }

  if (*(&self->_has + 3))
  {
    *(v4 + 1679) = self->_useWifiWasSpecified;
    *(v4 + 421) |= 0x1000000u;
  }

  if (self->_wifiAveragePhyRateRx)
  {
    [v8 setWifiAveragePhyRateRx:?];
    v4 = v8;
  }

  if (self->_wifiAverageRssi)
  {
    [v8 setWifiAverageRssi:?];
    v4 = v8;
  }

  if (self->_wifiAverageSnr)
  {
    [v8 setWifiAverageSnr:?];
    v4 = v8;
  }

  if (self->_wifiAverageTcpRtt)
  {
    [v8 setWifiAverageTcpRtt:?];
    v4 = v8;
  }

  if (self->_wifiBtcMode)
  {
    [v8 setWifiBtcMode:?];
    v4 = v8;
  }

  if (self->_wifiCca)
  {
    [v8 setWifiCca:?];
    v4 = v8;
  }

  if (self->_wifiChannel)
  {
    [v8 setWifiChannel:?];
    v4 = v8;
  }

  if (self->_wifiCwfCca)
  {
    [v8 setWifiCwfCca:?];
    v4 = v8;
  }

  if (self->_wifiEapolControlMode)
  {
    [v8 setWifiEapolControlMode:?];
    v4 = v8;
  }

  if (self->_wifiEapolSupplicantState)
  {
    [v8 setWifiEapolSupplicantState:?];
    v4 = v8;
  }

  if (self->_wifiGuardInterval)
  {
    [v8 setWifiGuardInterval:?];
    v4 = v8;
  }

  if (self->_wifiHiddenState)
  {
    [v8 setWifiHiddenState:?];
    v4 = v8;
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v4 + 1680) = self->_wifiIsCaptive;
    *(v4 + 421) |= 0x2000000u;
  }

  if (self->_wifiMcsIndex)
  {
    [v8 setWifiMcsIndex:?];
    v4 = v8;
  }

  if (self->_wifiNoise)
  {
    [v8 setWifiNoise:?];
    v4 = v8;
  }

  if (self->_wifiNumberOfSpatialStreams)
  {
    [v8 setWifiNumberOfSpatialStreams:?];
    v4 = v8;
  }

  if (self->_wifiOpMode)
  {
    [v8 setWifiOpMode:?];
    v4 = v8;
  }

  if (self->_wifiPhyMode)
  {
    [v8 setWifiPhyMode:?];
    v4 = v8;
  }

  if (self->_wifiRssi)
  {
    [v8 setWifiRssi:?];
    v4 = v8;
  }

  if (self->_wifiSecurity)
  {
    [v8 setWifiSecurity:?];
    v4 = v8;
  }

  if (self->_wifiTxRate)
  {
    [v8 setWifiTxRate:?];
    v4 = v8;
  }

  if (self->_wrmChannelType)
  {
    [v8 setWrmChannelType:?];
    v4 = v8;
  }

  if (self->_cellularCellid)
  {
    [v8 setCellularCellid:?];
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 1656) = self->_acceptablePerformanceResult;
    *(v4 + 421) |= 2u;
  }

  if (self->_networkQualityResponsiveness)
  {
    [v8 setNetworkQualityResponsiveness:?];
    v4 = v8;
  }

  if (self->_cellularAggregatedDLBW)
  {
    [v8 setCellularAggregatedDLBW:?];
    v4 = v8;
  }

  if (self->_cellularAggregatedULBW)
  {
    [v8 setCellularAggregatedULBW:?];
    v4 = v8;
  }

  if (self->_cellularIssa)
  {
    [v8 setCellularIssa:?];
    v4 = v8;
  }

  if (self->_cellularLac)
  {
    [v8 setCellularLac:?];
    v4 = v8;
  }

  if (self->_cellularLteNrConfiguredBw)
  {
    [v8 setCellularLteNrConfiguredBw:?];
    v4 = v8;
  }

  if (self->_cellularMaxDlMod)
  {
    [v8 setCellularMaxDlMod:?];
    v4 = v8;
  }

  if (self->_cellularMaxNwMimoLyr)
  {
    [v8 setCellularMaxNwMimoLyr:?];
    v4 = v8;
  }

  if (self->_cellularMaxSchdMimoLyr)
  {
    [v8 setCellularMaxSchdMimoLyr:?];
    v4 = v8;
  }

  if (self->_cellularMaxUeRank)
  {
    [v8 setCellularMaxUeRank:?];
    v4 = v8;
  }

  if (self->_cellularMaxUlMod)
  {
    [v8 setCellularMaxUlMod:?];
    v4 = v8;
  }

  if (self->_cellularNrSinr)
  {
    [v8 setCellularNrSinr:?];
    v4 = v8;
  }

  if (self->_cellularNrarfcn)
  {
    [v8 setCellularNrarfcn:?];
    v4 = v8;
  }

  if (self->_cellularRadioFrequency)
  {
    [v8 setCellularRadioFrequency:?];
    v4 = v8;
  }

  if (self->_cellularTotalDlMimoLayers)
  {
    [v8 setCellularTotalDlMimoLayers:?];
    v4 = v8;
  }

  if (self->_cellularTotalNumCcs)
  {
    [v8 setCellularTotalNumCcs:?];
    v4 = v8;
  }

  if (self->_downloadStartRadioFrequency)
  {
    [v8 setDownloadStartRadioFrequency:?];
    v4 = v8;
  }

  if (self->_downloadEndRadioFrequency)
  {
    [v8 setDownloadEndRadioFrequency:?];
    v4 = v8;
  }

  if (self->_networkPrimaryIpv6InterfaceName)
  {
    [v8 setNetworkPrimaryIpv6InterfaceName:?];
    v4 = v8;
  }

  if (self->_networkPrimaryIpv6ServiceName)
  {
    [v8 setNetworkPrimaryIpv6ServiceName:?];
    v4 = v8;
  }

  if (self->_uploadStartRadioFrequency)
  {
    [v8 setUploadStartRadioFrequency:?];
    v4 = v8;
  }

  if (self->_uploadEndRadioFrequency)
  {
    [v8 setUploadEndRadioFrequency:?];
    v4 = v8;
  }

  if (self->_downloadError)
  {
    [v8 setDownloadError:?];
    v4 = v8;
  }

  if (self->_networkQualityError)
  {
    [v8 setNetworkQualityError:?];
    v4 = v8;
  }

  if (self->_networkQualityDownloadSpeed)
  {
    [v8 setNetworkQualityDownloadSpeed:?];
    v4 = v8;
  }

  if (self->_networkQualityUploadSpeed)
  {
    [v8 setNetworkQualityUploadSpeed:?];
    v4 = v8;
  }

  if (self->_networkQualityRating)
  {
    [v8 setNetworkQualityRating:?];
    v4 = v8;
  }

  if (self->_vpnConnectionState)
  {
    [v8 setVpnConnectionState:?];
    v4 = v8;
  }

  if (self->_uploadError)
  {
    [v8 setUploadError:?];
    v4 = v8;
  }

  if (self->_uploadErrorDomain)
  {
    [v8 setUploadErrorDomain:?];
    v4 = v8;
  }

  if (self->_uploadErrorCode)
  {
    [v8 setUploadErrorCode:?];
    v4 = v8;
  }

  if (self->_downloadErrorDomain)
  {
    [v8 setDownloadErrorDomain:?];
    v4 = v8;
  }

  if (self->_downloadErrorCode)
  {
    [v8 setDownloadErrorCode:?];
    v4 = v8;
  }

  if (self->_pingError)
  {
    [v8 setPingError:?];
    v4 = v8;
  }

  if (self->_pingErrorDomain)
  {
    [v8 setPingErrorDomain:?];
    v4 = v8;
  }

  if (self->_pingErrorCode)
  {
    [v8 setPingErrorCode:?];
    v4 = v8;
  }

  if (self->_networkQualityErrorDomain)
  {
    [v8 setNetworkQualityErrorDomain:?];
    v4 = v8;
  }

  if (self->_networkQualityErrorCode)
  {
    [v8 setNetworkQualityErrorCode:?];
    v4 = v8;
  }

  if (self->_cellularRnMobileCountryCode)
  {
    [v8 setCellularRnMobileCountryCode:?];
    v4 = v8;
  }

  if (self->_cellularRnMobileNetworkCode)
  {
    [v8 setCellularRnMobileNetworkCode:?];
    v4 = v8;
  }

  if (*(&self->_has + 1))
  {
    *(v4 + 1663) = self->_cellularDataIsEnabled;
    *(v4 + 421) |= 0x100u;
  }

  if (self->_downloadStartCellularEstimate)
  {
    [v8 setDownloadStartCellularEstimate:?];
    v4 = v8;
  }

  if (self->_downloadEndCellularEstimate)
  {
    [v8 setDownloadEndCellularEstimate:?];
    v4 = v8;
  }

  if (self->_downloadMaxCellularEstimate)
  {
    [v8 setDownloadMaxCellularEstimate:?];
    v4 = v8;
  }

  if (self->_uploadStartCellularEstimate)
  {
    [v8 setUploadStartCellularEstimate:?];
    v4 = v8;
  }

  if (self->_uploadEndCellularEstimate)
  {
    [v8 setUploadEndCellularEstimate:?];
    v4 = v8;
  }

  if (self->_uploadMaxCellularEstimate)
  {
    [v8 setUploadMaxCellularEstimate:?];
    v4 = v8;
  }

  if (self->_downloadResponsiveness)
  {
    [v8 setDownloadResponsiveness:?];
    v4 = v8;
  }

  if (self->_downloadResponsivenessConfidence)
  {
    [v8 setDownloadResponsivenessConfidence:?];
    v4 = v8;
  }

  if (self->_downloadResponsivenessRating)
  {
    [v8 setDownloadResponsivenessRating:?];
    v4 = v8;
  }

  if (self->_downloadSpeedConfidence)
  {
    [v8 setDownloadSpeedConfidence:?];
    v4 = v8;
  }

  if (self->_downloadSpeedRating)
  {
    [v8 setDownloadSpeedRating:?];
    v4 = v8;
  }

  if (self->_uploadResponsiveness)
  {
    [v8 setUploadResponsiveness:?];
    v4 = v8;
  }

  if (self->_uploadResponsivenessConfidence)
  {
    [v8 setUploadResponsivenessConfidence:?];
    v4 = v8;
  }

  if (self->_uploadResponsivenessRating)
  {
    [v8 setUploadResponsivenessRating:?];
    v4 = v8;
  }

  if (self->_uploadSpeedConfidence)
  {
    [v8 setUploadSpeedConfidence:?];
    v4 = v8;
  }

  if (self->_uploadSpeedRating)
  {
    [v8 setUploadSpeedRating:?];
    v4 = v8;
  }

  if (self->_wifiChannelBand)
  {
    [v8 setWifiChannelBand:?];
    v4 = v8;
  }

  if (self->_wifiChannelWidth)
  {
    [v8 setWifiChannelWidth:?];
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 1684) |= 1u;
  }

  v7 = [(NSString *)self->_awdlElectionParameters copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_awdlMasterChannel copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSString *)self->_awdlOpMode copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 1657) = self->_awdlPowerState;
    *(v6 + 1684) |= 4u;
  }

  v13 = [(NSString *)self->_awdlSchedule copyWithZone:a3];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  v15 = [(NSString *)self->_awdlSecondaryMasterChannel copyWithZone:a3];
  v16 = *(v6 + 48);
  *(v6 + 48) = v15;

  v17 = [(NSString *)self->_awdlSyncChannelSequence copyWithZone:a3];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  v19 = [(NSString *)self->_awdlSyncState copyWithZone:a3];
  v20 = *(v6 + 64);
  *(v6 + 64) = v19;

  v21 = [(NSString *)self->_btConnectedDevicesCount copyWithZone:a3];
  v22 = *(v6 + 72);
  *(v6 + 72) = v21;

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v6 + 1658) = self->_btIsConnectable;
    *(v6 + 1684) |= 8u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_7:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 1659) = self->_btIsDiscoverable;
  *(v6 + 1684) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_43:
  *(v6 + 1660) = self->_btIsPowerOn;
  *(v6 + 1684) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(v6 + 1661) = self->_btIsScanning;
    *(v6 + 1684) |= 0x40u;
  }

LABEL_10:
  v24 = [(NSString *)self->_callingClient copyWithZone:a3];
  v25 = *(v6 + 80);
  *(v6 + 80) = v24;

  v26 = [(NSString *)self->_cellularActiveContexts copyWithZone:a3];
  v27 = *(v6 + 88);
  *(v6 + 88) = v26;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 1662) = self->_cellularAllowsVoip;
    *(v6 + 1684) |= 0x80u;
  }

  v28 = [(NSString *)self->_cellularAttached copyWithZone:a3];
  v29 = *(v6 + 112);
  *(v6 + 112) = v28;

  v30 = [(NSString *)self->_cellularBandinfo copyWithZone:a3];
  v31 = *(v6 + 120);
  *(v6 + 120) = v30;

  v32 = [(NSString *)self->_cellularBandwidth copyWithZone:a3];
  v33 = *(v6 + 128);
  *(v6 + 128) = v32;

  v34 = [(NSString *)self->_cellularCarrierName copyWithZone:a3];
  v35 = *(v6 + 136);
  *(v6 + 136) = v34;

  v36 = [(NSString *)self->_cellularDataBearerSoMask copyWithZone:a3];
  v37 = *(v6 + 152);
  *(v6 + 152) = v36;

  v38 = [(NSString *)self->_cellularDataBearerTechnology copyWithZone:a3];
  v39 = *(v6 + 160);
  *(v6 + 160) = v38;

  v40 = [(NSString *)self->_cellularDataPlanSignalingReductionOverride copyWithZone:a3];
  v41 = *(v6 + 168);
  *(v6 + 168) = v40;

  v42 = [(NSString *)self->_cellularDataPossible copyWithZone:a3];
  v43 = *(v6 + 176);
  *(v6 + 176) = v42;

  v44 = [(NSString *)self->_cellularInHomeCountry copyWithZone:a3];
  v45 = *(v6 + 184);
  *(v6 + 184) = v44;

  v46 = [(NSString *)self->_cellularIndicator copyWithZone:a3];
  v47 = *(v6 + 192);
  *(v6 + 192) = v46;

  v48 = [(NSString *)self->_cellularIndicatorOverride copyWithZone:a3];
  v49 = *(v6 + 200);
  *(v6 + 200) = v48;

  v50 = [(NSString *)self->_cellularIsoCountryCode copyWithZone:a3];
  v51 = *(v6 + 208);
  *(v6 + 208) = v50;

  v52 = [(NSString *)self->_cellularLqm copyWithZone:a3];
  v53 = *(v6 + 232);
  *(v6 + 232) = v52;

  v54 = [(NSString *)self->_cellularLteMaxScheduledLayers copyWithZone:a3];
  v55 = *(v6 + 240);
  *(v6 + 240) = v54;

  v56 = [(NSString *)self->_cellularMobileCountryCode copyWithZone:a3];
  v57 = *(v6 + 296);
  *(v6 + 296) = v56;

  v58 = [(NSString *)self->_cellularMobileNetworkCode copyWithZone:a3];
  v59 = *(v6 + 304);
  *(v6 + 304) = v58;

  v60 = [(NSString *)self->_cellularNewRadioCoverage copyWithZone:a3];
  v61 = *(v6 + 312);
  *(v6 + 312) = v60;

  v62 = [(NSString *)self->_cellularNewRadioDataBearer copyWithZone:a3];
  v63 = *(v6 + 320);
  *(v6 + 320) = v62;

  v64 = [(NSString *)self->_cellularNewRadioMmwaveDataBearer copyWithZone:a3];
  v65 = *(v6 + 328);
  *(v6 + 328) = v64;

  v66 = [(NSString *)self->_cellularNewRadioNsaCoverage copyWithZone:a3];
  v67 = *(v6 + 336);
  *(v6 + 336) = v66;

  v68 = [(NSString *)self->_cellularNewRadioNsaDataBearer copyWithZone:a3];
  v69 = *(v6 + 344);
  *(v6 + 344) = v68;

  v70 = [(NSString *)self->_cellularNewRadioSaCoverage copyWithZone:a3];
  v71 = *(v6 + 352);
  *(v6 + 352) = v70;

  v72 = [(NSString *)self->_cellularNewRadioSaDataBearer copyWithZone:a3];
  v73 = *(v6 + 360);
  *(v6 + 360) = v72;

  v74 = [(NSString *)self->_cellularNewRadioSub6DataBearer copyWithZone:a3];
  v75 = *(v6 + 368);
  *(v6 + 368) = v74;

  v76 = [(NSString *)self->_cellularNrConfiguredBw copyWithZone:a3];
  v77 = *(v6 + 376);
  *(v6 + 376) = v76;

  v78 = [(NSString *)self->_cellularNrLayers copyWithZone:a3];
  v79 = *(v6 + 384);
  *(v6 + 384) = v78;

  v80 = [(NSString *)self->_cellularNrModulation copyWithZone:a3];
  v81 = *(v6 + 392);
  *(v6 + 392) = v80;

  v82 = [(NSString *)self->_cellularNrRsrp copyWithZone:a3];
  v83 = *(v6 + 400);
  *(v6 + 400) = v82;

  v84 = [(NSString *)self->_cellularNrRsrq copyWithZone:a3];
  v85 = *(v6 + 408);
  *(v6 + 408) = v84;

  v86 = [(NSString *)self->_cellularNrSnr copyWithZone:a3];
  v87 = *(v6 + 424);
  *(v6 + 424) = v86;

  v88 = [(NSString *)self->_cellularPid copyWithZone:a3];
  v89 = *(v6 + 440);
  *(v6 + 440) = v88;

  v90 = [(NSString *)self->_cellularRadioAccessTechnology copyWithZone:a3];
  v91 = *(v6 + 448);
  *(v6 + 448) = v90;

  v92 = [(NSString *)self->_cellularRadioAccessTechnologyCtDataStatus copyWithZone:a3];
  v93 = *(v6 + 456);
  *(v6 + 456) = v92;

  v94 = [(NSString *)self->_cellularRoamAllowed copyWithZone:a3];
  v95 = *(v6 + 488);
  *(v6 + 488) = v94;

  v96 = [(NSString *)self->_cellularRsrp copyWithZone:a3];
  v97 = *(v6 + 496);
  *(v6 + 496) = v96;

  v98 = [(NSString *)self->_cellularSnr copyWithZone:a3];
  v99 = *(v6 + 504);
  *(v6 + 504) = v98;

  v100 = [(NSString *)self->_cellularTac copyWithZone:a3];
  v101 = *(v6 + 512);
  *(v6 + 512) = v100;

  v102 = [(NSString *)self->_cellularTotalActiveContexts copyWithZone:a3];
  v103 = *(v6 + 520);
  *(v6 + 520) = v102;

  v104 = [(NSString *)self->_cellularTotalBw copyWithZone:a3];
  v105 = *(v6 + 528);
  *(v6 + 528) = v104;

  v106 = [(NSString *)self->_cellularTotalCcs copyWithZone:a3];
  v107 = *(v6 + 536);
  *(v6 + 536) = v106;

  v108 = [(NSString *)self->_cellularTotalLayers copyWithZone:a3];
  v109 = *(v6 + 552);
  *(v6 + 552) = v108;

  v110 = [(NSString *)self->_cellularUarfcn copyWithZone:a3];
  v111 = *(v6 + 568);
  *(v6 + 568) = v110;

  v112 = [(NSString *)self->_downloadCdnPop copyWithZone:a3];
  v113 = *(v6 + 576);
  *(v6 + 576) = v112;

  v114 = [(NSString *)self->_downloadCdnUuid copyWithZone:a3];
  v115 = *(v6 + 584);
  *(v6 + 584) = v114;

  v116 = [(NSString *)self->_downloadConnectionTime copyWithZone:a3];
  v117 = *(v6 + 592);
  *(v6 + 592) = v116;

  v118 = [(NSString *)self->_downloadDomainLookupTime copyWithZone:a3];
  v119 = *(v6 + 600);
  *(v6 + 600) = v118;

  v120 = [(NSString *)self->_downloadEndDataBearerTechnology copyWithZone:a3];
  v121 = *(v6 + 616);
  *(v6 + 616) = v120;

  v122 = [(NSString *)self->_downloadEndPrimaryIpv4Interface copyWithZone:a3];
  v123 = *(v6 + 624);
  *(v6 + 624) = v122;

  v124 = [(NSString *)self->_downloadEndRat copyWithZone:a3];
  v125 = *(v6 + 640);
  *(v6 + 640) = v124;

  v126 = [(NSString *)self->_downloadFileSize copyWithZone:a3];
  v127 = *(v6 + 672);
  *(v6 + 672) = v126;

  v128 = [(NSString *)self->_downloadInterfaceName copyWithZone:a3];
  v129 = *(v6 + 680);
  *(v6 + 680) = v128;

  v130 = [(NSString *)self->_downloadInterfaceServiceName copyWithZone:a3];
  v131 = *(v6 + 688);
  *(v6 + 688) = v130;

  v132 = self->_has;
  if ((*&v132 & 0x200) != 0)
  {
    *(v6 + 1664) = self->_downloadIsCellular;
    *(v6 + 1684) |= 0x200u;
    v132 = self->_has;
    if ((*&v132 & 0x400) == 0)
    {
LABEL_14:
      if ((*&v132 & 0x800) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v132 & 0x400) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 1665) = self->_downloadIsConstrained;
  *(v6 + 1684) |= 0x400u;
  v132 = self->_has;
  if ((*&v132 & 0x800) == 0)
  {
LABEL_15:
    if ((*&v132 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 1666) = self->_downloadIsExpensive;
  *(v6 + 1684) |= 0x800u;
  v132 = self->_has;
  if ((*&v132 & 0x1000) == 0)
  {
LABEL_16:
    if ((*&v132 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 1667) = self->_downloadIsMultipath;
  *(v6 + 1684) |= 0x1000u;
  v132 = self->_has;
  if ((*&v132 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v132 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_49:
  *(v6 + 1668) = self->_downloadIsProxyConnection;
  *(v6 + 1684) |= 0x2000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    *(v6 + 1669) = self->_downloadIsReusedConnection;
    *(v6 + 1684) |= 0x4000u;
  }

LABEL_19:
  v133 = [(NSString *)self->_downloadMaxSpeedObserved copyWithZone:a3];
  v134 = *(v6 + 704);
  *(v6 + 704) = v133;

  v135 = [(NSString *)self->_downloadNumberOfStreams copyWithZone:a3];
  v136 = *(v6 + 712);
  *(v6 + 712) = v135;

  v137 = [(NSString *)self->_downloadProtocolName copyWithZone:a3];
  v138 = *(v6 + 720);
  *(v6 + 720) = v137;

  v139 = [(NSString *)self->_downloadRemoteAddress copyWithZone:a3];
  v140 = *(v6 + 728);
  *(v6 + 728) = v139;

  v141 = [(NSString *)self->_downloadRemotePort copyWithZone:a3];
  v142 = *(v6 + 736);
  *(v6 + 736) = v141;

  v143 = [(NSString *)self->_downloadRequestTime copyWithZone:a3];
  v144 = *(v6 + 744);
  *(v6 + 744) = v143;

  v145 = [(NSString *)self->_downloadRequestToResponseTime copyWithZone:a3];
  v146 = *(v6 + 752);
  *(v6 + 752) = v145;

  v147 = [(NSString *)self->_downloadResponseTime copyWithZone:a3];
  v148 = *(v6 + 760);
  *(v6 + 760) = v147;

  v149 = [(NSString *)self->_downloadSecureConnectionTime copyWithZone:a3];
  v150 = *(v6 + 792);
  *(v6 + 792) = v149;

  v151 = [(NSString *)self->_downloadServer copyWithZone:a3];
  v152 = *(v6 + 800);
  *(v6 + 800) = v151;

  v153 = [(NSString *)self->_downloadSpeed copyWithZone:a3];
  v154 = *(v6 + 808);
  *(v6 + 808) = v153;

  v155 = [(NSString *)self->_downloadStableSpeed copyWithZone:a3];
  v156 = *(v6 + 832);
  *(v6 + 832) = v155;

  v157 = [(NSString *)self->_downloadStartDataBearerTechnology copyWithZone:a3];
  v158 = *(v6 + 848);
  *(v6 + 848) = v157;

  v159 = [(NSString *)self->_downloadStartPrimaryIpv4Interface copyWithZone:a3];
  v160 = *(v6 + 856);
  *(v6 + 856) = v159;

  v161 = [(NSString *)self->_downloadStartRat copyWithZone:a3];
  v162 = *(v6 + 872);
  *(v6 + 872) = v161;

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v6 + 1670) = self->_networkIsAppleReachable;
    *(v6 + 1684) |= 0x8000u;
  }

  v163 = [(NSString *)self->_networkPrimaryIpv4InterfaceName copyWithZone:a3];
  v164 = *(v6 + 880);
  *(v6 + 880) = v163;

  v165 = [(NSString *)self->_networkPrimaryIpv4ServiceName copyWithZone:a3];
  v166 = *(v6 + 888);
  *(v6 + 888) = v165;

  v167 = [(NSString *)self->_nptkitFrameworkVersion copyWithZone:a3];
  v168 = *(v6 + 968);
  *(v6 + 968) = v167;

  v169 = [(NSString *)self->_performanceTestStartTime copyWithZone:a3];
  v170 = *(v6 + 976);
  *(v6 + 976) = v169;

  v171 = [(NSString *)self->_pingAddress copyWithZone:a3];
  v172 = *(v6 + 984);
  *(v6 + 984) = v171;

  v173 = [(NSString *)self->_pingLossPercent copyWithZone:a3];
  v174 = *(v6 + 1016);
  *(v6 + 1016) = v173;

  v175 = [(NSString *)self->_pingMaxLatency copyWithZone:a3];
  v176 = *(v6 + 1024);
  *(v6 + 1024) = v175;

  v177 = [(NSString *)self->_pingMeanLatency copyWithZone:a3];
  v178 = *(v6 + 1032);
  *(v6 + 1032) = v177;

  v179 = [(NSString *)self->_pingMinLatency copyWithZone:a3];
  v180 = *(v6 + 1040);
  *(v6 + 1040) = v179;

  v181 = [(NSString *)self->_pingStandardDeviation copyWithZone:a3];
  v182 = *(v6 + 1048);
  *(v6 + 1048) = v181;

  v183 = [(NSString *)self->_powerBatteryWarningLevel copyWithZone:a3];
  v184 = *(v6 + 1056);
  *(v6 + 1056) = v183;

  v185 = [(NSString *)self->_powerSourceType copyWithZone:a3];
  v186 = *(v6 + 1064);
  *(v6 + 1064) = v185;

  v187 = [(NSString *)self->_powerStateCaps copyWithZone:a3];
  v188 = *(v6 + 1072);
  *(v6 + 1072) = v187;

  v189 = [(NSString *)self->_systemActiveProcessorCount copyWithZone:a3];
  v190 = *(v6 + 1080);
  *(v6 + 1080) = v189;

  v191 = [(NSString *)self->_systemBatteryLevel copyWithZone:a3];
  v192 = *(v6 + 1088);
  *(v6 + 1088) = v191;

  v193 = [(NSString *)self->_systemBatteryState copyWithZone:a3];
  v194 = *(v6 + 1096);
  *(v6 + 1096) = v193;

  v195 = [(NSString *)self->_systemDeviceClass copyWithZone:a3];
  v196 = *(v6 + 1104);
  *(v6 + 1104) = v195;

  v197 = [(NSString *)self->_systemDeviceModel copyWithZone:a3];
  v198 = *(v6 + 1112);
  *(v6 + 1112) = v197;

  if (*(&self->_has + 2))
  {
    *(v6 + 1671) = self->_systemLowPowerModeEnabled;
    *(v6 + 1684) |= 0x10000u;
  }

  v199 = [(NSString *)self->_systemName copyWithZone:a3];
  v200 = *(v6 + 1120);
  *(v6 + 1120) = v199;

  v201 = [(NSString *)self->_systemOsVariant copyWithZone:a3];
  v202 = *(v6 + 1128);
  *(v6 + 1128) = v201;

  v203 = [(NSString *)self->_systemPhysicalMemory copyWithZone:a3];
  v204 = *(v6 + 1136);
  *(v6 + 1136) = v203;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v6 + 1672) = self->_systemPowersourceConnected;
    *(v6 + 1684) |= 0x20000u;
  }

  v205 = [(NSString *)self->_systemProcessorCount copyWithZone:a3];
  v206 = *(v6 + 1144);
  *(v6 + 1144) = v205;

  v207 = [(NSString *)self->_systemVersion copyWithZone:a3];
  v208 = *(v6 + 1152);
  *(v6 + 1152) = v207;

  v209 = [(NSString *)self->_uploadCdnPop copyWithZone:a3];
  v210 = *(v6 + 1160);
  *(v6 + 1160) = v209;

  v211 = [(NSString *)self->_uploadCdnUuid copyWithZone:a3];
  v212 = *(v6 + 1168);
  *(v6 + 1168) = v211;

  v213 = [(NSString *)self->_uploadConnectionTime copyWithZone:a3];
  v214 = *(v6 + 1176);
  *(v6 + 1176) = v213;

  v215 = [(NSString *)self->_uploadDomainLookupTime copyWithZone:a3];
  v216 = *(v6 + 1184);
  *(v6 + 1184) = v215;

  v217 = [(NSString *)self->_uploadEndDataBearerTechnology copyWithZone:a3];
  v218 = *(v6 + 1200);
  *(v6 + 1200) = v217;

  v219 = [(NSString *)self->_uploadEndPrimaryIpv4Interface copyWithZone:a3];
  v220 = *(v6 + 1208);
  *(v6 + 1208) = v219;

  v221 = [(NSString *)self->_uploadEndRat copyWithZone:a3];
  v222 = *(v6 + 1224);
  *(v6 + 1224) = v221;

  v223 = [(NSString *)self->_uploadFileSize copyWithZone:a3];
  v224 = *(v6 + 1256);
  *(v6 + 1256) = v223;

  v225 = [(NSString *)self->_uploadInterfaceName copyWithZone:a3];
  v226 = *(v6 + 1264);
  *(v6 + 1264) = v225;

  v227 = [(NSString *)self->_uploadInterfaceServiceName copyWithZone:a3];
  v228 = *(v6 + 1272);
  *(v6 + 1272) = v227;

  v229 = self->_has;
  if ((*&v229 & 0x40000) != 0)
  {
    *(v6 + 1673) = self->_uploadIsCellular;
    *(v6 + 1684) |= 0x40000u;
    v229 = self->_has;
    if ((*&v229 & 0x80000) == 0)
    {
LABEL_27:
      if ((*&v229 & 0x100000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v229 & 0x80000) == 0)
  {
    goto LABEL_27;
  }

  *(v6 + 1674) = self->_uploadIsConstrained;
  *(v6 + 1684) |= 0x80000u;
  v229 = self->_has;
  if ((*&v229 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v229 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 1675) = self->_uploadIsExpensive;
  *(v6 + 1684) |= 0x100000u;
  v229 = self->_has;
  if ((*&v229 & 0x200000) == 0)
  {
LABEL_29:
    if ((*&v229 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 1676) = self->_uploadIsMultipath;
  *(v6 + 1684) |= 0x200000u;
  v229 = self->_has;
  if ((*&v229 & 0x400000) == 0)
  {
LABEL_30:
    if ((*&v229 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_55:
  *(v6 + 1677) = self->_uploadIsProxyConnection;
  *(v6 + 1684) |= 0x400000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_31:
    *(v6 + 1678) = self->_uploadIsReusedConnection;
    *(v6 + 1684) |= 0x800000u;
  }

LABEL_32:
  v230 = [(NSString *)self->_uploadMaxSpeedObserved copyWithZone:a3];
  v231 = *(v6 + 1288);
  *(v6 + 1288) = v230;

  v232 = [(NSString *)self->_uploadNumberOfStreams copyWithZone:a3];
  v233 = *(v6 + 1296);
  *(v6 + 1296) = v232;

  v234 = [(NSString *)self->_uploadProtocolName copyWithZone:a3];
  v235 = *(v6 + 1304);
  *(v6 + 1304) = v234;

  v236 = [(NSString *)self->_uploadRemoteAddress copyWithZone:a3];
  v237 = *(v6 + 1312);
  *(v6 + 1312) = v236;

  v238 = [(NSString *)self->_uploadRemotePort copyWithZone:a3];
  v239 = *(v6 + 1320);
  *(v6 + 1320) = v238;

  v240 = [(NSString *)self->_uploadRequestTime copyWithZone:a3];
  v241 = *(v6 + 1328);
  *(v6 + 1328) = v240;

  v242 = [(NSString *)self->_uploadRequestToResponseTime copyWithZone:a3];
  v243 = *(v6 + 1336);
  *(v6 + 1336) = v242;

  v244 = [(NSString *)self->_uploadResponseTime copyWithZone:a3];
  v245 = *(v6 + 1344);
  *(v6 + 1344) = v244;

  v246 = [(NSString *)self->_uploadSecureConnectionTime copyWithZone:a3];
  v247 = *(v6 + 1376);
  *(v6 + 1376) = v246;

  v248 = [(NSString *)self->_uploadServer copyWithZone:a3];
  v249 = *(v6 + 1384);
  *(v6 + 1384) = v248;

  v250 = [(NSString *)self->_uploadSpeed copyWithZone:a3];
  v251 = *(v6 + 1392);
  *(v6 + 1392) = v250;

  v252 = [(NSString *)self->_uploadStableSpeed copyWithZone:a3];
  v253 = *(v6 + 1416);
  *(v6 + 1416) = v252;

  v254 = [(NSString *)self->_uploadStartDataBearerTechnology copyWithZone:a3];
  v255 = *(v6 + 1432);
  *(v6 + 1432) = v254;

  v256 = [(NSString *)self->_uploadStartPrimaryIpv4Interface copyWithZone:a3];
  v257 = *(v6 + 1440);
  *(v6 + 1440) = v256;

  v258 = [(NSString *)self->_uploadStartRat copyWithZone:a3];
  v259 = *(v6 + 1456);
  *(v6 + 1456) = v258;

  if (*(&self->_has + 3))
  {
    *(v6 + 1679) = self->_useWifiWasSpecified;
    *(v6 + 1684) |= 0x1000000u;
  }

  v260 = [(NSString *)self->_wifiAveragePhyRateRx copyWithZone:a3];
  v261 = *(v6 + 1472);
  *(v6 + 1472) = v260;

  v262 = [(NSString *)self->_wifiAverageRssi copyWithZone:a3];
  v263 = *(v6 + 1480);
  *(v6 + 1480) = v262;

  v264 = [(NSString *)self->_wifiAverageSnr copyWithZone:a3];
  v265 = *(v6 + 1488);
  *(v6 + 1488) = v264;

  v266 = [(NSString *)self->_wifiAverageTcpRtt copyWithZone:a3];
  v267 = *(v6 + 1496);
  *(v6 + 1496) = v266;

  v268 = [(NSString *)self->_wifiBtcMode copyWithZone:a3];
  v269 = *(v6 + 1504);
  *(v6 + 1504) = v268;

  v270 = [(NSString *)self->_wifiCca copyWithZone:a3];
  v271 = *(v6 + 1512);
  *(v6 + 1512) = v270;

  v272 = [(NSString *)self->_wifiChannel copyWithZone:a3];
  v273 = *(v6 + 1520);
  *(v6 + 1520) = v272;

  v274 = [(NSString *)self->_wifiCwfCca copyWithZone:a3];
  v275 = *(v6 + 1544);
  *(v6 + 1544) = v274;

  v276 = [(NSString *)self->_wifiEapolControlMode copyWithZone:a3];
  v277 = *(v6 + 1552);
  *(v6 + 1552) = v276;

  v278 = [(NSString *)self->_wifiEapolSupplicantState copyWithZone:a3];
  v279 = *(v6 + 1560);
  *(v6 + 1560) = v278;

  v280 = [(NSString *)self->_wifiGuardInterval copyWithZone:a3];
  v281 = *(v6 + 1568);
  *(v6 + 1568) = v280;

  v282 = [(NSString *)self->_wifiHiddenState copyWithZone:a3];
  v283 = *(v6 + 1576);
  *(v6 + 1576) = v282;

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v6 + 1680) = self->_wifiIsCaptive;
    *(v6 + 1684) |= 0x2000000u;
  }

  v284 = [(NSString *)self->_wifiMcsIndex copyWithZone:a3];
  v285 = *(v6 + 1584);
  *(v6 + 1584) = v284;

  v286 = [(NSString *)self->_wifiNoise copyWithZone:a3];
  v287 = *(v6 + 1592);
  *(v6 + 1592) = v286;

  v288 = [(NSString *)self->_wifiNumberOfSpatialStreams copyWithZone:a3];
  v289 = *(v6 + 1600);
  *(v6 + 1600) = v288;

  v290 = [(NSString *)self->_wifiOpMode copyWithZone:a3];
  v291 = *(v6 + 1608);
  *(v6 + 1608) = v290;

  v292 = [(NSString *)self->_wifiPhyMode copyWithZone:a3];
  v293 = *(v6 + 1616);
  *(v6 + 1616) = v292;

  v294 = [(NSString *)self->_wifiRssi copyWithZone:a3];
  v295 = *(v6 + 1624);
  *(v6 + 1624) = v294;

  v296 = [(NSString *)self->_wifiSecurity copyWithZone:a3];
  v297 = *(v6 + 1632);
  *(v6 + 1632) = v296;

  v298 = [(NSString *)self->_wifiTxRate copyWithZone:a3];
  v299 = *(v6 + 1640);
  *(v6 + 1640) = v298;

  v300 = [(NSString *)self->_wrmChannelType copyWithZone:a3];
  v301 = *(v6 + 1648);
  *(v6 + 1648) = v300;

  v302 = [(NSString *)self->_cellularCellid copyWithZone:a3];
  v303 = *(v6 + 144);
  *(v6 + 144) = v302;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 1656) = self->_acceptablePerformanceResult;
    *(v6 + 1684) |= 2u;
  }

  v304 = [(NSString *)self->_networkQualityResponsiveness copyWithZone:a3];
  v305 = *(v6 + 952);
  *(v6 + 952) = v304;

  v306 = [(NSString *)self->_cellularAggregatedDLBW copyWithZone:a3];
  v307 = *(v6 + 96);
  *(v6 + 96) = v306;

  v308 = [(NSString *)self->_cellularAggregatedULBW copyWithZone:a3];
  v309 = *(v6 + 104);
  *(v6 + 104) = v308;

  v310 = [(NSString *)self->_cellularIssa copyWithZone:a3];
  v311 = *(v6 + 216);
  *(v6 + 216) = v310;

  v312 = [(NSString *)self->_cellularLac copyWithZone:a3];
  v313 = *(v6 + 224);
  *(v6 + 224) = v312;

  v314 = [(NSString *)self->_cellularLteNrConfiguredBw copyWithZone:a3];
  v315 = *(v6 + 248);
  *(v6 + 248) = v314;

  v316 = [(NSString *)self->_cellularMaxDlMod copyWithZone:a3];
  v317 = *(v6 + 256);
  *(v6 + 256) = v316;

  v318 = [(NSString *)self->_cellularMaxNwMimoLyr copyWithZone:a3];
  v319 = *(v6 + 264);
  *(v6 + 264) = v318;

  v320 = [(NSString *)self->_cellularMaxSchdMimoLyr copyWithZone:a3];
  v321 = *(v6 + 272);
  *(v6 + 272) = v320;

  v322 = [(NSString *)self->_cellularMaxUeRank copyWithZone:a3];
  v323 = *(v6 + 280);
  *(v6 + 280) = v322;

  v324 = [(NSString *)self->_cellularMaxUlMod copyWithZone:a3];
  v325 = *(v6 + 288);
  *(v6 + 288) = v324;

  v326 = [(NSString *)self->_cellularNrSinr copyWithZone:a3];
  v327 = *(v6 + 416);
  *(v6 + 416) = v326;

  v328 = [(NSString *)self->_cellularNrarfcn copyWithZone:a3];
  v329 = *(v6 + 432);
  *(v6 + 432) = v328;

  v330 = [(NSString *)self->_cellularRadioFrequency copyWithZone:a3];
  v331 = *(v6 + 464);
  *(v6 + 464) = v330;

  v332 = [(NSString *)self->_cellularTotalDlMimoLayers copyWithZone:a3];
  v333 = *(v6 + 544);
  *(v6 + 544) = v332;

  v334 = [(NSString *)self->_cellularTotalNumCcs copyWithZone:a3];
  v335 = *(v6 + 560);
  *(v6 + 560) = v334;

  v336 = [(NSString *)self->_downloadStartRadioFrequency copyWithZone:a3];
  v337 = *(v6 + 864);
  *(v6 + 864) = v336;

  v338 = [(NSString *)self->_downloadEndRadioFrequency copyWithZone:a3];
  v339 = *(v6 + 632);
  *(v6 + 632) = v338;

  v340 = [(NSString *)self->_networkPrimaryIpv6InterfaceName copyWithZone:a3];
  v341 = *(v6 + 896);
  *(v6 + 896) = v340;

  v342 = [(NSString *)self->_networkPrimaryIpv6ServiceName copyWithZone:a3];
  v343 = *(v6 + 904);
  *(v6 + 904) = v342;

  v344 = [(NSString *)self->_uploadStartRadioFrequency copyWithZone:a3];
  v345 = *(v6 + 1448);
  *(v6 + 1448) = v344;

  v346 = [(NSString *)self->_uploadEndRadioFrequency copyWithZone:a3];
  v347 = *(v6 + 1216);
  *(v6 + 1216) = v346;

  v348 = [(NSString *)self->_downloadError copyWithZone:a3];
  v349 = *(v6 + 648);
  *(v6 + 648) = v348;

  v350 = [(NSString *)self->_networkQualityError copyWithZone:a3];
  v351 = *(v6 + 920);
  *(v6 + 920) = v350;

  v352 = [(NSString *)self->_networkQualityDownloadSpeed copyWithZone:a3];
  v353 = *(v6 + 912);
  *(v6 + 912) = v352;

  v354 = [(NSString *)self->_networkQualityUploadSpeed copyWithZone:a3];
  v355 = *(v6 + 960);
  *(v6 + 960) = v354;

  v356 = [(NSString *)self->_networkQualityRating copyWithZone:a3];
  v357 = *(v6 + 944);
  *(v6 + 944) = v356;

  v358 = [(NSString *)self->_vpnConnectionState copyWithZone:a3];
  v359 = *(v6 + 1464);
  *(v6 + 1464) = v358;

  v360 = [(NSString *)self->_uploadError copyWithZone:a3];
  v361 = *(v6 + 1232);
  *(v6 + 1232) = v360;

  v362 = [(NSString *)self->_uploadErrorDomain copyWithZone:a3];
  v363 = *(v6 + 1248);
  *(v6 + 1248) = v362;

  v364 = [(NSString *)self->_uploadErrorCode copyWithZone:a3];
  v365 = *(v6 + 1240);
  *(v6 + 1240) = v364;

  v366 = [(NSString *)self->_downloadErrorDomain copyWithZone:a3];
  v367 = *(v6 + 664);
  *(v6 + 664) = v366;

  v368 = [(NSString *)self->_downloadErrorCode copyWithZone:a3];
  v369 = *(v6 + 656);
  *(v6 + 656) = v368;

  v370 = [(NSString *)self->_pingError copyWithZone:a3];
  v371 = *(v6 + 992);
  *(v6 + 992) = v370;

  v372 = [(NSString *)self->_pingErrorDomain copyWithZone:a3];
  v373 = *(v6 + 1008);
  *(v6 + 1008) = v372;

  v374 = [(NSString *)self->_pingErrorCode copyWithZone:a3];
  v375 = *(v6 + 1000);
  *(v6 + 1000) = v374;

  v376 = [(NSString *)self->_networkQualityErrorDomain copyWithZone:a3];
  v377 = *(v6 + 936);
  *(v6 + 936) = v376;

  v378 = [(NSString *)self->_networkQualityErrorCode copyWithZone:a3];
  v379 = *(v6 + 928);
  *(v6 + 928) = v378;

  v380 = [(NSString *)self->_cellularRnMobileCountryCode copyWithZone:a3];
  v381 = *(v6 + 472);
  *(v6 + 472) = v380;

  v382 = [(NSString *)self->_cellularRnMobileNetworkCode copyWithZone:a3];
  v383 = *(v6 + 480);
  *(v6 + 480) = v382;

  if (*(&self->_has + 1))
  {
    *(v6 + 1663) = self->_cellularDataIsEnabled;
    *(v6 + 1684) |= 0x100u;
  }

  v384 = [(NSString *)self->_downloadStartCellularEstimate copyWithZone:a3];
  v385 = *(v6 + 840);
  *(v6 + 840) = v384;

  v386 = [(NSString *)self->_downloadEndCellularEstimate copyWithZone:a3];
  v387 = *(v6 + 608);
  *(v6 + 608) = v386;

  v388 = [(NSString *)self->_downloadMaxCellularEstimate copyWithZone:a3];
  v389 = *(v6 + 696);
  *(v6 + 696) = v388;

  v390 = [(NSString *)self->_uploadStartCellularEstimate copyWithZone:a3];
  v391 = *(v6 + 1424);
  *(v6 + 1424) = v390;

  v392 = [(NSString *)self->_uploadEndCellularEstimate copyWithZone:a3];
  v393 = *(v6 + 1192);
  *(v6 + 1192) = v392;

  v394 = [(NSString *)self->_uploadMaxCellularEstimate copyWithZone:a3];
  v395 = *(v6 + 1280);
  *(v6 + 1280) = v394;

  v396 = [(NSString *)self->_downloadResponsiveness copyWithZone:a3];
  v397 = *(v6 + 768);
  *(v6 + 768) = v396;

  v398 = [(NSString *)self->_downloadResponsivenessConfidence copyWithZone:a3];
  v399 = *(v6 + 776);
  *(v6 + 776) = v398;

  v400 = [(NSString *)self->_downloadResponsivenessRating copyWithZone:a3];
  v401 = *(v6 + 784);
  *(v6 + 784) = v400;

  v402 = [(NSString *)self->_downloadSpeedConfidence copyWithZone:a3];
  v403 = *(v6 + 816);
  *(v6 + 816) = v402;

  v404 = [(NSString *)self->_downloadSpeedRating copyWithZone:a3];
  v405 = *(v6 + 824);
  *(v6 + 824) = v404;

  v406 = [(NSString *)self->_uploadResponsiveness copyWithZone:a3];
  v407 = *(v6 + 1352);
  *(v6 + 1352) = v406;

  v408 = [(NSString *)self->_uploadResponsivenessConfidence copyWithZone:a3];
  v409 = *(v6 + 1360);
  *(v6 + 1360) = v408;

  v410 = [(NSString *)self->_uploadResponsivenessRating copyWithZone:a3];
  v411 = *(v6 + 1368);
  *(v6 + 1368) = v410;

  v412 = [(NSString *)self->_uploadSpeedConfidence copyWithZone:a3];
  v413 = *(v6 + 1400);
  *(v6 + 1400) = v412;

  v414 = [(NSString *)self->_uploadSpeedRating copyWithZone:a3];
  v415 = *(v6 + 1408);
  *(v6 + 1408) = v414;

  v416 = [(NSString *)self->_wifiChannelBand copyWithZone:a3];
  v417 = *(v6 + 1528);
  *(v6 + 1528) = v416;

  v418 = [(NSString *)self->_wifiChannelWidth copyWithZone:a3];
  v419 = *(v6 + 1536);
  *(v6 + 1536) = v418;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_149;
  }

  v5 = *(v4 + 421);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_149;
    }
  }

  else if (v5)
  {
    goto LABEL_149;
  }

  awdlElectionParameters = self->_awdlElectionParameters;
  if (awdlElectionParameters | *(v4 + 2) && ![(NSString *)awdlElectionParameters isEqual:?])
  {
    goto LABEL_149;
  }

  awdlMasterChannel = self->_awdlMasterChannel;
  if (awdlMasterChannel | *(v4 + 3))
  {
    if (![(NSString *)awdlMasterChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlOpMode = self->_awdlOpMode;
  if (awdlOpMode | *(v4 + 4))
  {
    if (![(NSString *)awdlOpMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v9 = *(v4 + 421);
  if ((*&self->_has & 4) != 0)
  {
    if ((v9 & 4) == 0)
    {
      goto LABEL_149;
    }

    v76 = *(v4 + 1657);
    if (self->_awdlPowerState)
    {
      if ((*(v4 + 1657) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1657))
    {
      goto LABEL_149;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_149;
  }

  awdlSchedule = self->_awdlSchedule;
  if (awdlSchedule | *(v4 + 5) && ![(NSString *)awdlSchedule isEqual:?])
  {
    goto LABEL_149;
  }

  awdlSecondaryMasterChannel = self->_awdlSecondaryMasterChannel;
  if (awdlSecondaryMasterChannel | *(v4 + 6))
  {
    if (![(NSString *)awdlSecondaryMasterChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlSyncChannelSequence = self->_awdlSyncChannelSequence;
  if (awdlSyncChannelSequence | *(v4 + 7))
  {
    if (![(NSString *)awdlSyncChannelSequence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlSyncState = self->_awdlSyncState;
  if (awdlSyncState | *(v4 + 8))
  {
    if (![(NSString *)awdlSyncState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  btConnectedDevicesCount = self->_btConnectedDevicesCount;
  if (btConnectedDevicesCount | *(v4 + 9))
  {
    if (![(NSString *)btConnectedDevicesCount isEqual:?])
    {
      goto LABEL_149;
    }
  }

  has = self->_has;
  v16 = *(v4 + 421);
  if ((*&has & 8) != 0)
  {
    if ((v16 & 8) == 0)
    {
      goto LABEL_149;
    }

    v77 = *(v4 + 1658);
    if (self->_btIsConnectable)
    {
      if ((*(v4 + 1658) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1658))
    {
      goto LABEL_149;
    }
  }

  else if ((v16 & 8) != 0)
  {
    goto LABEL_149;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_149;
    }

    v78 = *(v4 + 1659);
    if (self->_btIsDiscoverable)
    {
      if ((*(v4 + 1659) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1659))
    {
      goto LABEL_149;
    }
  }

  else if ((v16 & 0x10) != 0)
  {
    goto LABEL_149;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_149;
    }

    v79 = *(v4 + 1660);
    if (self->_btIsPowerOn)
    {
      if ((*(v4 + 1660) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1660))
    {
      goto LABEL_149;
    }
  }

  else if ((v16 & 0x20) != 0)
  {
    goto LABEL_149;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_149;
    }

    v80 = *(v4 + 1661);
    if (self->_btIsScanning)
    {
      if ((*(v4 + 1661) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1661))
    {
      goto LABEL_149;
    }
  }

  else if ((v16 & 0x40) != 0)
  {
    goto LABEL_149;
  }

  callingClient = self->_callingClient;
  if (callingClient | *(v4 + 10) && ![(NSString *)callingClient isEqual:?])
  {
    goto LABEL_149;
  }

  cellularActiveContexts = self->_cellularActiveContexts;
  if (cellularActiveContexts | *(v4 + 11))
  {
    if (![(NSString *)cellularActiveContexts isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v19 = *(v4 + 421);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_149;
    }

    v81 = *(v4 + 1662);
    if (self->_cellularAllowsVoip)
    {
      if ((*(v4 + 1662) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1662))
    {
      goto LABEL_149;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_149;
  }

  cellularAttached = self->_cellularAttached;
  if (cellularAttached | *(v4 + 14) && ![(NSString *)cellularAttached isEqual:?])
  {
    goto LABEL_149;
  }

  cellularBandinfo = self->_cellularBandinfo;
  if (cellularBandinfo | *(v4 + 15))
  {
    if (![(NSString *)cellularBandinfo isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularBandwidth = self->_cellularBandwidth;
  if (cellularBandwidth | *(v4 + 16))
  {
    if (![(NSString *)cellularBandwidth isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularCarrierName = self->_cellularCarrierName;
  if (cellularCarrierName | *(v4 + 17))
  {
    if (![(NSString *)cellularCarrierName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataBearerSoMask = self->_cellularDataBearerSoMask;
  if (cellularDataBearerSoMask | *(v4 + 19))
  {
    if (![(NSString *)cellularDataBearerSoMask isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataBearerTechnology = self->_cellularDataBearerTechnology;
  if (cellularDataBearerTechnology | *(v4 + 20))
  {
    if (![(NSString *)cellularDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataPlanSignalingReductionOverride = self->_cellularDataPlanSignalingReductionOverride;
  if (cellularDataPlanSignalingReductionOverride | *(v4 + 21))
  {
    if (![(NSString *)cellularDataPlanSignalingReductionOverride isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataPossible = self->_cellularDataPossible;
  if (cellularDataPossible | *(v4 + 22))
  {
    if (![(NSString *)cellularDataPossible isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularInHomeCountry = self->_cellularInHomeCountry;
  if (cellularInHomeCountry | *(v4 + 23))
  {
    if (![(NSString *)cellularInHomeCountry isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIndicator = self->_cellularIndicator;
  if (cellularIndicator | *(v4 + 24))
  {
    if (![(NSString *)cellularIndicator isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIndicatorOverride = self->_cellularIndicatorOverride;
  if (cellularIndicatorOverride | *(v4 + 25))
  {
    if (![(NSString *)cellularIndicatorOverride isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIsoCountryCode = self->_cellularIsoCountryCode;
  if (cellularIsoCountryCode | *(v4 + 26))
  {
    if (![(NSString *)cellularIsoCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLqm = self->_cellularLqm;
  if (cellularLqm | *(v4 + 29))
  {
    if (![(NSString *)cellularLqm isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLteMaxScheduledLayers = self->_cellularLteMaxScheduledLayers;
  if (cellularLteMaxScheduledLayers | *(v4 + 30))
  {
    if (![(NSString *)cellularLteMaxScheduledLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMobileCountryCode = self->_cellularMobileCountryCode;
  if (cellularMobileCountryCode | *(v4 + 37))
  {
    if (![(NSString *)cellularMobileCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMobileNetworkCode = self->_cellularMobileNetworkCode;
  if (cellularMobileNetworkCode | *(v4 + 38))
  {
    if (![(NSString *)cellularMobileNetworkCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioCoverage = self->_cellularNewRadioCoverage;
  if (cellularNewRadioCoverage | *(v4 + 39))
  {
    if (![(NSString *)cellularNewRadioCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioDataBearer = self->_cellularNewRadioDataBearer;
  if (cellularNewRadioDataBearer | *(v4 + 40))
  {
    if (![(NSString *)cellularNewRadioDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioMmwaveDataBearer = self->_cellularNewRadioMmwaveDataBearer;
  if (cellularNewRadioMmwaveDataBearer | *(v4 + 41))
  {
    if (![(NSString *)cellularNewRadioMmwaveDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioNsaCoverage = self->_cellularNewRadioNsaCoverage;
  if (cellularNewRadioNsaCoverage | *(v4 + 42))
  {
    if (![(NSString *)cellularNewRadioNsaCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioNsaDataBearer = self->_cellularNewRadioNsaDataBearer;
  if (cellularNewRadioNsaDataBearer | *(v4 + 43))
  {
    if (![(NSString *)cellularNewRadioNsaDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSaCoverage = self->_cellularNewRadioSaCoverage;
  if (cellularNewRadioSaCoverage | *(v4 + 44))
  {
    if (![(NSString *)cellularNewRadioSaCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSaDataBearer = self->_cellularNewRadioSaDataBearer;
  if (cellularNewRadioSaDataBearer | *(v4 + 45))
  {
    if (![(NSString *)cellularNewRadioSaDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSub6DataBearer = self->_cellularNewRadioSub6DataBearer;
  if (cellularNewRadioSub6DataBearer | *(v4 + 46))
  {
    if (![(NSString *)cellularNewRadioSub6DataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrConfiguredBw = self->_cellularNrConfiguredBw;
  if (cellularNrConfiguredBw | *(v4 + 47))
  {
    if (![(NSString *)cellularNrConfiguredBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrLayers = self->_cellularNrLayers;
  if (cellularNrLayers | *(v4 + 48))
  {
    if (![(NSString *)cellularNrLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrModulation = self->_cellularNrModulation;
  if (cellularNrModulation | *(v4 + 49))
  {
    if (![(NSString *)cellularNrModulation isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrRsrp = self->_cellularNrRsrp;
  if (cellularNrRsrp | *(v4 + 50))
  {
    if (![(NSString *)cellularNrRsrp isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrRsrq = self->_cellularNrRsrq;
  if (cellularNrRsrq | *(v4 + 51))
  {
    if (![(NSString *)cellularNrRsrq isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrSnr = self->_cellularNrSnr;
  if (cellularNrSnr | *(v4 + 53))
  {
    if (![(NSString *)cellularNrSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularPid = self->_cellularPid;
  if (cellularPid | *(v4 + 55))
  {
    if (![(NSString *)cellularPid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioAccessTechnology = self->_cellularRadioAccessTechnology;
  if (cellularRadioAccessTechnology | *(v4 + 56))
  {
    if (![(NSString *)cellularRadioAccessTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioAccessTechnologyCtDataStatus = self->_cellularRadioAccessTechnologyCtDataStatus;
  if (cellularRadioAccessTechnologyCtDataStatus | *(v4 + 57))
  {
    if (![(NSString *)cellularRadioAccessTechnologyCtDataStatus isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRoamAllowed = self->_cellularRoamAllowed;
  if (cellularRoamAllowed | *(v4 + 61))
  {
    if (![(NSString *)cellularRoamAllowed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRsrp = self->_cellularRsrp;
  if (cellularRsrp | *(v4 + 62))
  {
    if (![(NSString *)cellularRsrp isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularSnr = self->_cellularSnr;
  if (cellularSnr | *(v4 + 63))
  {
    if (![(NSString *)cellularSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTac = self->_cellularTac;
  if (cellularTac | *(v4 + 64))
  {
    if (![(NSString *)cellularTac isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalActiveContexts = self->_cellularTotalActiveContexts;
  if (cellularTotalActiveContexts | *(v4 + 65))
  {
    if (![(NSString *)cellularTotalActiveContexts isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalBw = self->_cellularTotalBw;
  if (cellularTotalBw | *(v4 + 66))
  {
    if (![(NSString *)cellularTotalBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalCcs = self->_cellularTotalCcs;
  if (cellularTotalCcs | *(v4 + 67))
  {
    if (![(NSString *)cellularTotalCcs isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalLayers = self->_cellularTotalLayers;
  if (cellularTotalLayers | *(v4 + 69))
  {
    if (![(NSString *)cellularTotalLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularUarfcn = self->_cellularUarfcn;
  if (cellularUarfcn | *(v4 + 71))
  {
    if (![(NSString *)cellularUarfcn isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadCdnPop = self->_downloadCdnPop;
  if (downloadCdnPop | *(v4 + 72))
  {
    if (![(NSString *)downloadCdnPop isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadCdnUuid = self->_downloadCdnUuid;
  if (downloadCdnUuid | *(v4 + 73))
  {
    if (![(NSString *)downloadCdnUuid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadConnectionTime = self->_downloadConnectionTime;
  if (downloadConnectionTime | *(v4 + 74))
  {
    if (![(NSString *)downloadConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadDomainLookupTime = self->_downloadDomainLookupTime;
  if (downloadDomainLookupTime | *(v4 + 75))
  {
    if (![(NSString *)downloadDomainLookupTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndDataBearerTechnology = self->_downloadEndDataBearerTechnology;
  if (downloadEndDataBearerTechnology | *(v4 + 77))
  {
    if (![(NSString *)downloadEndDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndPrimaryIpv4Interface = self->_downloadEndPrimaryIpv4Interface;
  if (downloadEndPrimaryIpv4Interface | *(v4 + 78))
  {
    if (![(NSString *)downloadEndPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndRat = self->_downloadEndRat;
  if (downloadEndRat | *(v4 + 80))
  {
    if (![(NSString *)downloadEndRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadFileSize = self->_downloadFileSize;
  if (downloadFileSize | *(v4 + 84))
  {
    if (![(NSString *)downloadFileSize isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadInterfaceName = self->_downloadInterfaceName;
  if (downloadInterfaceName | *(v4 + 85))
  {
    if (![(NSString *)downloadInterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadInterfaceServiceName = self->_downloadInterfaceServiceName;
  if (downloadInterfaceServiceName | *(v4 + 86))
  {
    if (![(NSString *)downloadInterfaceServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v72 = self->_has;
  v73 = *(v4 + 421);
  if ((*&v72 & 0x200) != 0)
  {
    if ((v73 & 0x200) == 0)
    {
      goto LABEL_149;
    }

    v82 = *(v4 + 1664);
    if (self->_downloadIsCellular)
    {
      if ((*(v4 + 1664) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1664))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x200) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v72 & 0x400) != 0)
  {
    if ((v73 & 0x400) == 0)
    {
      goto LABEL_149;
    }

    v83 = *(v4 + 1665);
    if (self->_downloadIsConstrained)
    {
      if ((*(v4 + 1665) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1665))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x400) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v72 & 0x800) != 0)
  {
    if ((v73 & 0x800) == 0)
    {
      goto LABEL_149;
    }

    v84 = *(v4 + 1666);
    if (self->_downloadIsExpensive)
    {
      if ((*(v4 + 1666) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1666))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x800) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v72 & 0x1000) != 0)
  {
    if ((v73 & 0x1000) == 0)
    {
      goto LABEL_149;
    }

    v85 = *(v4 + 1667);
    if (self->_downloadIsMultipath)
    {
      if ((*(v4 + 1667) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1667))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x1000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v72 & 0x2000) != 0)
  {
    if ((v73 & 0x2000) == 0)
    {
      goto LABEL_149;
    }

    v86 = *(v4 + 1668);
    if (self->_downloadIsProxyConnection)
    {
      if ((*(v4 + 1668) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1668))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x2000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v72 & 0x4000) != 0)
  {
    if ((v73 & 0x4000) == 0)
    {
      goto LABEL_149;
    }

    v87 = *(v4 + 1669);
    if (self->_downloadIsReusedConnection)
    {
      if ((*(v4 + 1669) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1669))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x4000) != 0)
  {
    goto LABEL_149;
  }

  downloadMaxSpeedObserved = self->_downloadMaxSpeedObserved;
  if (downloadMaxSpeedObserved | *(v4 + 88) && ![(NSString *)downloadMaxSpeedObserved isEqual:?])
  {
    goto LABEL_149;
  }

  downloadNumberOfStreams = self->_downloadNumberOfStreams;
  if (downloadNumberOfStreams | *(v4 + 89))
  {
    if (![(NSString *)downloadNumberOfStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadProtocolName = self->_downloadProtocolName;
  if (downloadProtocolName | *(v4 + 90))
  {
    if (![(NSString *)downloadProtocolName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRemoteAddress = self->_downloadRemoteAddress;
  if (downloadRemoteAddress | *(v4 + 91))
  {
    if (![(NSString *)downloadRemoteAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRemotePort = self->_downloadRemotePort;
  if (downloadRemotePort | *(v4 + 92))
  {
    if (![(NSString *)downloadRemotePort isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRequestTime = self->_downloadRequestTime;
  if (downloadRequestTime | *(v4 + 93))
  {
    if (![(NSString *)downloadRequestTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRequestToResponseTime = self->_downloadRequestToResponseTime;
  if (downloadRequestToResponseTime | *(v4 + 94))
  {
    if (![(NSString *)downloadRequestToResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponseTime = self->_downloadResponseTime;
  if (downloadResponseTime | *(v4 + 95))
  {
    if (![(NSString *)downloadResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSecureConnectionTime = self->_downloadSecureConnectionTime;
  if (downloadSecureConnectionTime | *(v4 + 99))
  {
    if (![(NSString *)downloadSecureConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadServer = self->_downloadServer;
  if (downloadServer | *(v4 + 100))
  {
    if (![(NSString *)downloadServer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeed = self->_downloadSpeed;
  if (downloadSpeed | *(v4 + 101))
  {
    if (![(NSString *)downloadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStableSpeed = self->_downloadStableSpeed;
  if (downloadStableSpeed | *(v4 + 104))
  {
    if (![(NSString *)downloadStableSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartDataBearerTechnology = self->_downloadStartDataBearerTechnology;
  if (downloadStartDataBearerTechnology | *(v4 + 106))
  {
    if (![(NSString *)downloadStartDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartPrimaryIpv4Interface = self->_downloadStartPrimaryIpv4Interface;
  if (downloadStartPrimaryIpv4Interface | *(v4 + 107))
  {
    if (![(NSString *)downloadStartPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartRat = self->_downloadStartRat;
  if (downloadStartRat | *(v4 + 109))
  {
    if (![(NSString *)downloadStartRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v103 = *(v4 + 421);
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    v104 = *(v4 + 1670);
    if (self->_networkIsAppleReachable)
    {
      if ((*(v4 + 1670) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1670))
    {
      goto LABEL_149;
    }
  }

  else if ((v103 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  networkPrimaryIpv4InterfaceName = self->_networkPrimaryIpv4InterfaceName;
  if (networkPrimaryIpv4InterfaceName | *(v4 + 110) && ![(NSString *)networkPrimaryIpv4InterfaceName isEqual:?])
  {
    goto LABEL_149;
  }

  networkPrimaryIpv4ServiceName = self->_networkPrimaryIpv4ServiceName;
  if (networkPrimaryIpv4ServiceName | *(v4 + 111))
  {
    if (![(NSString *)networkPrimaryIpv4ServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  nptkitFrameworkVersion = self->_nptkitFrameworkVersion;
  if (nptkitFrameworkVersion | *(v4 + 121))
  {
    if (![(NSString *)nptkitFrameworkVersion isEqual:?])
    {
      goto LABEL_149;
    }
  }

  performanceTestStartTime = self->_performanceTestStartTime;
  if (performanceTestStartTime | *(v4 + 122))
  {
    if (![(NSString *)performanceTestStartTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingAddress = self->_pingAddress;
  if (pingAddress | *(v4 + 123))
  {
    if (![(NSString *)pingAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingLossPercent = self->_pingLossPercent;
  if (pingLossPercent | *(v4 + 127))
  {
    if (![(NSString *)pingLossPercent isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMaxLatency = self->_pingMaxLatency;
  if (pingMaxLatency | *(v4 + 128))
  {
    if (![(NSString *)pingMaxLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMeanLatency = self->_pingMeanLatency;
  if (pingMeanLatency | *(v4 + 129))
  {
    if (![(NSString *)pingMeanLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMinLatency = self->_pingMinLatency;
  if (pingMinLatency | *(v4 + 130))
  {
    if (![(NSString *)pingMinLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingStandardDeviation = self->_pingStandardDeviation;
  if (pingStandardDeviation | *(v4 + 131))
  {
    if (![(NSString *)pingStandardDeviation isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerBatteryWarningLevel = self->_powerBatteryWarningLevel;
  if (powerBatteryWarningLevel | *(v4 + 132))
  {
    if (![(NSString *)powerBatteryWarningLevel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerSourceType = self->_powerSourceType;
  if (powerSourceType | *(v4 + 133))
  {
    if (![(NSString *)powerSourceType isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps | *(v4 + 134))
  {
    if (![(NSString *)powerStateCaps isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemActiveProcessorCount = self->_systemActiveProcessorCount;
  if (systemActiveProcessorCount | *(v4 + 135))
  {
    if (![(NSString *)systemActiveProcessorCount isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemBatteryLevel = self->_systemBatteryLevel;
  if (systemBatteryLevel | *(v4 + 136))
  {
    if (![(NSString *)systemBatteryLevel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemBatteryState = self->_systemBatteryState;
  if (systemBatteryState | *(v4 + 137))
  {
    if (![(NSString *)systemBatteryState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemDeviceClass = self->_systemDeviceClass;
  if (systemDeviceClass | *(v4 + 138))
  {
    if (![(NSString *)systemDeviceClass isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemDeviceModel = self->_systemDeviceModel;
  if (systemDeviceModel | *(v4 + 139))
  {
    if (![(NSString *)systemDeviceModel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v123 = *(v4 + 421);
  if (*(&self->_has + 2))
  {
    if ((v123 & 0x10000) == 0)
    {
      goto LABEL_149;
    }

    v124 = *(v4 + 1671);
    if (self->_systemLowPowerModeEnabled)
    {
      if ((*(v4 + 1671) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1671))
    {
      goto LABEL_149;
    }
  }

  else if ((v123 & 0x10000) != 0)
  {
    goto LABEL_149;
  }

  systemName = self->_systemName;
  if (systemName | *(v4 + 140) && ![(NSString *)systemName isEqual:?])
  {
    goto LABEL_149;
  }

  systemOsVariant = self->_systemOsVariant;
  if (systemOsVariant | *(v4 + 141))
  {
    if (![(NSString *)systemOsVariant isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemPhysicalMemory = self->_systemPhysicalMemory;
  if (systemPhysicalMemory | *(v4 + 142))
  {
    if (![(NSString *)systemPhysicalMemory isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v128 = *(v4 + 421);
  if ((*(&self->_has + 2) & 2) != 0)
  {
    if ((v128 & 0x20000) == 0)
    {
      goto LABEL_149;
    }

    v129 = *(v4 + 1672);
    if (self->_systemPowersourceConnected)
    {
      if ((*(v4 + 1672) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1672))
    {
      goto LABEL_149;
    }
  }

  else if ((v128 & 0x20000) != 0)
  {
    goto LABEL_149;
  }

  systemProcessorCount = self->_systemProcessorCount;
  if (systemProcessorCount | *(v4 + 143) && ![(NSString *)systemProcessorCount isEqual:?])
  {
    goto LABEL_149;
  }

  systemVersion = self->_systemVersion;
  if (systemVersion | *(v4 + 144))
  {
    if (![(NSString *)systemVersion isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadCdnPop = self->_uploadCdnPop;
  if (uploadCdnPop | *(v4 + 145))
  {
    if (![(NSString *)uploadCdnPop isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadCdnUuid = self->_uploadCdnUuid;
  if (uploadCdnUuid | *(v4 + 146))
  {
    if (![(NSString *)uploadCdnUuid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadConnectionTime = self->_uploadConnectionTime;
  if (uploadConnectionTime | *(v4 + 147))
  {
    if (![(NSString *)uploadConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadDomainLookupTime = self->_uploadDomainLookupTime;
  if (uploadDomainLookupTime | *(v4 + 148))
  {
    if (![(NSString *)uploadDomainLookupTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndDataBearerTechnology = self->_uploadEndDataBearerTechnology;
  if (uploadEndDataBearerTechnology | *(v4 + 150))
  {
    if (![(NSString *)uploadEndDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndPrimaryIpv4Interface = self->_uploadEndPrimaryIpv4Interface;
  if (uploadEndPrimaryIpv4Interface | *(v4 + 151))
  {
    if (![(NSString *)uploadEndPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndRat = self->_uploadEndRat;
  if (uploadEndRat | *(v4 + 153))
  {
    if (![(NSString *)uploadEndRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadFileSize = self->_uploadFileSize;
  if (uploadFileSize | *(v4 + 157))
  {
    if (![(NSString *)uploadFileSize isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadInterfaceName = self->_uploadInterfaceName;
  if (uploadInterfaceName | *(v4 + 158))
  {
    if (![(NSString *)uploadInterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadInterfaceServiceName = self->_uploadInterfaceServiceName;
  if (uploadInterfaceServiceName | *(v4 + 159))
  {
    if (![(NSString *)uploadInterfaceServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v142 = self->_has;
  v143 = *(v4 + 421);
  if ((*&v142 & 0x40000) != 0)
  {
    if ((v143 & 0x40000) == 0)
    {
      goto LABEL_149;
    }

    v144 = *(v4 + 1673);
    if (self->_uploadIsCellular)
    {
      if ((*(v4 + 1673) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1673))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x40000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v142 & 0x80000) != 0)
  {
    if ((v143 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    v145 = *(v4 + 1674);
    if (self->_uploadIsConstrained)
    {
      if ((*(v4 + 1674) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1674))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x80000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v142 & 0x100000) != 0)
  {
    if ((v143 & 0x100000) == 0)
    {
      goto LABEL_149;
    }

    v146 = *(v4 + 1675);
    if (self->_uploadIsExpensive)
    {
      if ((*(v4 + 1675) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1675))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x100000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v142 & 0x200000) != 0)
  {
    if ((v143 & 0x200000) == 0)
    {
      goto LABEL_149;
    }

    v147 = *(v4 + 1676);
    if (self->_uploadIsMultipath)
    {
      if ((*(v4 + 1676) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1676))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x200000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v142 & 0x400000) != 0)
  {
    if ((v143 & 0x400000) == 0)
    {
      goto LABEL_149;
    }

    v148 = *(v4 + 1677);
    if (self->_uploadIsProxyConnection)
    {
      if ((*(v4 + 1677) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1677))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x400000) != 0)
  {
    goto LABEL_149;
  }

  if ((*&v142 & 0x800000) != 0)
  {
    if ((v143 & 0x800000) == 0)
    {
      goto LABEL_149;
    }

    v149 = *(v4 + 1678);
    if (self->_uploadIsReusedConnection)
    {
      if ((*(v4 + 1678) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1678))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x800000) != 0)
  {
    goto LABEL_149;
  }

  uploadMaxSpeedObserved = self->_uploadMaxSpeedObserved;
  if (uploadMaxSpeedObserved | *(v4 + 161) && ![(NSString *)uploadMaxSpeedObserved isEqual:?])
  {
    goto LABEL_149;
  }

  uploadNumberOfStreams = self->_uploadNumberOfStreams;
  if (uploadNumberOfStreams | *(v4 + 162))
  {
    if (![(NSString *)uploadNumberOfStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadProtocolName = self->_uploadProtocolName;
  if (uploadProtocolName | *(v4 + 163))
  {
    if (![(NSString *)uploadProtocolName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRemoteAddress = self->_uploadRemoteAddress;
  if (uploadRemoteAddress | *(v4 + 164))
  {
    if (![(NSString *)uploadRemoteAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRemotePort = self->_uploadRemotePort;
  if (uploadRemotePort | *(v4 + 165))
  {
    if (![(NSString *)uploadRemotePort isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRequestTime = self->_uploadRequestTime;
  if (uploadRequestTime | *(v4 + 166))
  {
    if (![(NSString *)uploadRequestTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRequestToResponseTime = self->_uploadRequestToResponseTime;
  if (uploadRequestToResponseTime | *(v4 + 167))
  {
    if (![(NSString *)uploadRequestToResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponseTime = self->_uploadResponseTime;
  if (uploadResponseTime | *(v4 + 168))
  {
    if (![(NSString *)uploadResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSecureConnectionTime = self->_uploadSecureConnectionTime;
  if (uploadSecureConnectionTime | *(v4 + 172))
  {
    if (![(NSString *)uploadSecureConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadServer = self->_uploadServer;
  if (uploadServer | *(v4 + 173))
  {
    if (![(NSString *)uploadServer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeed = self->_uploadSpeed;
  if (uploadSpeed | *(v4 + 174))
  {
    if (![(NSString *)uploadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStableSpeed = self->_uploadStableSpeed;
  if (uploadStableSpeed | *(v4 + 177))
  {
    if (![(NSString *)uploadStableSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartDataBearerTechnology = self->_uploadStartDataBearerTechnology;
  if (uploadStartDataBearerTechnology | *(v4 + 179))
  {
    if (![(NSString *)uploadStartDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartPrimaryIpv4Interface = self->_uploadStartPrimaryIpv4Interface;
  if (uploadStartPrimaryIpv4Interface | *(v4 + 180))
  {
    if (![(NSString *)uploadStartPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartRat = self->_uploadStartRat;
  if (uploadStartRat | *(v4 + 182))
  {
    if (![(NSString *)uploadStartRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v165 = *(v4 + 421);
  if (*(&self->_has + 3))
  {
    if ((v165 & 0x1000000) == 0)
    {
      goto LABEL_149;
    }

    v166 = *(v4 + 1679);
    if (self->_useWifiWasSpecified)
    {
      if ((*(v4 + 1679) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1679))
    {
      goto LABEL_149;
    }
  }

  else if ((v165 & 0x1000000) != 0)
  {
    goto LABEL_149;
  }

  wifiAveragePhyRateRx = self->_wifiAveragePhyRateRx;
  if (wifiAveragePhyRateRx | *(v4 + 184) && ![(NSString *)wifiAveragePhyRateRx isEqual:?])
  {
    goto LABEL_149;
  }

  wifiAverageRssi = self->_wifiAverageRssi;
  if (wifiAverageRssi | *(v4 + 185))
  {
    if (![(NSString *)wifiAverageRssi isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiAverageSnr = self->_wifiAverageSnr;
  if (wifiAverageSnr | *(v4 + 186))
  {
    if (![(NSString *)wifiAverageSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiAverageTcpRtt = self->_wifiAverageTcpRtt;
  if (wifiAverageTcpRtt | *(v4 + 187))
  {
    if (![(NSString *)wifiAverageTcpRtt isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiBtcMode = self->_wifiBtcMode;
  if (wifiBtcMode | *(v4 + 188))
  {
    if (![(NSString *)wifiBtcMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiCca = self->_wifiCca;
  if (wifiCca | *(v4 + 189))
  {
    if (![(NSString *)wifiCca isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannel = self->_wifiChannel;
  if (wifiChannel | *(v4 + 190))
  {
    if (![(NSString *)wifiChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiCwfCca = self->_wifiCwfCca;
  if (wifiCwfCca | *(v4 + 193))
  {
    if (![(NSString *)wifiCwfCca isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiEapolControlMode = self->_wifiEapolControlMode;
  if (wifiEapolControlMode | *(v4 + 194))
  {
    if (![(NSString *)wifiEapolControlMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiEapolSupplicantState = self->_wifiEapolSupplicantState;
  if (wifiEapolSupplicantState | *(v4 + 195))
  {
    if (![(NSString *)wifiEapolSupplicantState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiGuardInterval = self->_wifiGuardInterval;
  if (wifiGuardInterval | *(v4 + 196))
  {
    if (![(NSString *)wifiGuardInterval isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiHiddenState = self->_wifiHiddenState;
  if (wifiHiddenState | *(v4 + 197))
  {
    if (![(NSString *)wifiHiddenState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v179 = *(v4 + 421);
  if ((*(&self->_has + 3) & 2) != 0)
  {
    if ((v179 & 0x2000000) == 0)
    {
      goto LABEL_149;
    }

    v180 = *(v4 + 1680);
    if (self->_wifiIsCaptive)
    {
      if ((*(v4 + 1680) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1680))
    {
      goto LABEL_149;
    }
  }

  else if ((v179 & 0x2000000) != 0)
  {
    goto LABEL_149;
  }

  wifiMcsIndex = self->_wifiMcsIndex;
  if (wifiMcsIndex | *(v4 + 198) && ![(NSString *)wifiMcsIndex isEqual:?])
  {
    goto LABEL_149;
  }

  wifiNoise = self->_wifiNoise;
  if (wifiNoise | *(v4 + 199))
  {
    if (![(NSString *)wifiNoise isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiNumberOfSpatialStreams = self->_wifiNumberOfSpatialStreams;
  if (wifiNumberOfSpatialStreams | *(v4 + 200))
  {
    if (![(NSString *)wifiNumberOfSpatialStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiOpMode = self->_wifiOpMode;
  if (wifiOpMode | *(v4 + 201))
  {
    if (![(NSString *)wifiOpMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiPhyMode = self->_wifiPhyMode;
  if (wifiPhyMode | *(v4 + 202))
  {
    if (![(NSString *)wifiPhyMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiRssi = self->_wifiRssi;
  if (wifiRssi | *(v4 + 203))
  {
    if (![(NSString *)wifiRssi isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiSecurity = self->_wifiSecurity;
  if (wifiSecurity | *(v4 + 204))
  {
    if (![(NSString *)wifiSecurity isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiTxRate = self->_wifiTxRate;
  if (wifiTxRate | *(v4 + 205))
  {
    if (![(NSString *)wifiTxRate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wrmChannelType = self->_wrmChannelType;
  if (wrmChannelType | *(v4 + 206))
  {
    if (![(NSString *)wrmChannelType isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularCellid = self->_cellularCellid;
  if (cellularCellid | *(v4 + 18))
  {
    if (![(NSString *)cellularCellid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v191 = *(v4 + 421);
  if ((*&self->_has & 2) != 0)
  {
    if ((v191 & 2) == 0)
    {
      goto LABEL_149;
    }

    v192 = *(v4 + 1656);
    if (self->_acceptablePerformanceResult)
    {
      if ((*(v4 + 1656) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(v4 + 1656))
    {
      goto LABEL_149;
    }
  }

  else if ((v191 & 2) != 0)
  {
    goto LABEL_149;
  }

  networkQualityResponsiveness = self->_networkQualityResponsiveness;
  if (networkQualityResponsiveness | *(v4 + 119) && ![(NSString *)networkQualityResponsiveness isEqual:?])
  {
    goto LABEL_149;
  }

  cellularAggregatedDLBW = self->_cellularAggregatedDLBW;
  if (cellularAggregatedDLBW | *(v4 + 12))
  {
    if (![(NSString *)cellularAggregatedDLBW isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularAggregatedULBW = self->_cellularAggregatedULBW;
  if (cellularAggregatedULBW | *(v4 + 13))
  {
    if (![(NSString *)cellularAggregatedULBW isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIssa = self->_cellularIssa;
  if (cellularIssa | *(v4 + 27))
  {
    if (![(NSString *)cellularIssa isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLac = self->_cellularLac;
  if (cellularLac | *(v4 + 28))
  {
    if (![(NSString *)cellularLac isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLteNrConfiguredBw = self->_cellularLteNrConfiguredBw;
  if (cellularLteNrConfiguredBw | *(v4 + 31))
  {
    if (![(NSString *)cellularLteNrConfiguredBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxDlMod = self->_cellularMaxDlMod;
  if (cellularMaxDlMod | *(v4 + 32))
  {
    if (![(NSString *)cellularMaxDlMod isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxNwMimoLyr = self->_cellularMaxNwMimoLyr;
  if (cellularMaxNwMimoLyr | *(v4 + 33))
  {
    if (![(NSString *)cellularMaxNwMimoLyr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxSchdMimoLyr = self->_cellularMaxSchdMimoLyr;
  if (cellularMaxSchdMimoLyr | *(v4 + 34))
  {
    if (![(NSString *)cellularMaxSchdMimoLyr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxUeRank = self->_cellularMaxUeRank;
  if (cellularMaxUeRank | *(v4 + 35))
  {
    if (![(NSString *)cellularMaxUeRank isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxUlMod = self->_cellularMaxUlMod;
  if (cellularMaxUlMod | *(v4 + 36))
  {
    if (![(NSString *)cellularMaxUlMod isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrSinr = self->_cellularNrSinr;
  if (cellularNrSinr | *(v4 + 52))
  {
    if (![(NSString *)cellularNrSinr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrarfcn = self->_cellularNrarfcn;
  if (cellularNrarfcn | *(v4 + 54))
  {
    if (![(NSString *)cellularNrarfcn isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioFrequency = self->_cellularRadioFrequency;
  if (cellularRadioFrequency | *(v4 + 58))
  {
    if (![(NSString *)cellularRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalDlMimoLayers = self->_cellularTotalDlMimoLayers;
  if (cellularTotalDlMimoLayers | *(v4 + 68))
  {
    if (![(NSString *)cellularTotalDlMimoLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalNumCcs = self->_cellularTotalNumCcs;
  if (cellularTotalNumCcs | *(v4 + 70))
  {
    if (![(NSString *)cellularTotalNumCcs isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartRadioFrequency = self->_downloadStartRadioFrequency;
  if (downloadStartRadioFrequency | *(v4 + 108))
  {
    if (![(NSString *)downloadStartRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndRadioFrequency = self->_downloadEndRadioFrequency;
  if (downloadEndRadioFrequency | *(v4 + 79))
  {
    if (![(NSString *)downloadEndRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkPrimaryIpv6InterfaceName = self->_networkPrimaryIpv6InterfaceName;
  if (networkPrimaryIpv6InterfaceName | *(v4 + 112))
  {
    if (![(NSString *)networkPrimaryIpv6InterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkPrimaryIpv6ServiceName = self->_networkPrimaryIpv6ServiceName;
  if (networkPrimaryIpv6ServiceName | *(v4 + 113))
  {
    if (![(NSString *)networkPrimaryIpv6ServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartRadioFrequency = self->_uploadStartRadioFrequency;
  if (uploadStartRadioFrequency | *(v4 + 181))
  {
    if (![(NSString *)uploadStartRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndRadioFrequency = self->_uploadEndRadioFrequency;
  if (uploadEndRadioFrequency | *(v4 + 152))
  {
    if (![(NSString *)uploadEndRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadError = self->_downloadError;
  if (downloadError | *(v4 + 81))
  {
    if (![(NSString *)downloadError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityError = self->_networkQualityError;
  if (networkQualityError | *(v4 + 115))
  {
    if (![(NSString *)networkQualityError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityDownloadSpeed = self->_networkQualityDownloadSpeed;
  if (networkQualityDownloadSpeed | *(v4 + 114))
  {
    if (![(NSString *)networkQualityDownloadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityUploadSpeed = self->_networkQualityUploadSpeed;
  if (networkQualityUploadSpeed | *(v4 + 120))
  {
    if (![(NSString *)networkQualityUploadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityRating = self->_networkQualityRating;
  if (networkQualityRating | *(v4 + 118))
  {
    if (![(NSString *)networkQualityRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  vpnConnectionState = self->_vpnConnectionState;
  if (vpnConnectionState | *(v4 + 183))
  {
    if (![(NSString *)vpnConnectionState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadError = self->_uploadError;
  if (uploadError | *(v4 + 154))
  {
    if (![(NSString *)uploadError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadErrorDomain = self->_uploadErrorDomain;
  if (uploadErrorDomain | *(v4 + 156))
  {
    if (![(NSString *)uploadErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadErrorCode = self->_uploadErrorCode;
  if (uploadErrorCode | *(v4 + 155))
  {
    if (![(NSString *)uploadErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadErrorDomain = self->_downloadErrorDomain;
  if (downloadErrorDomain | *(v4 + 83))
  {
    if (![(NSString *)downloadErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadErrorCode = self->_downloadErrorCode;
  if (downloadErrorCode | *(v4 + 82))
  {
    if (![(NSString *)downloadErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingError = self->_pingError;
  if (pingError | *(v4 + 124))
  {
    if (![(NSString *)pingError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingErrorDomain = self->_pingErrorDomain;
  if (pingErrorDomain | *(v4 + 126))
  {
    if (![(NSString *)pingErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingErrorCode = self->_pingErrorCode;
  if (pingErrorCode | *(v4 + 125))
  {
    if (![(NSString *)pingErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityErrorDomain = self->_networkQualityErrorDomain;
  if (networkQualityErrorDomain | *(v4 + 117))
  {
    if (![(NSString *)networkQualityErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityErrorCode = self->_networkQualityErrorCode;
  if (networkQualityErrorCode | *(v4 + 116))
  {
    if (![(NSString *)networkQualityErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRnMobileCountryCode = self->_cellularRnMobileCountryCode;
  if (cellularRnMobileCountryCode | *(v4 + 59))
  {
    if (![(NSString *)cellularRnMobileCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRnMobileNetworkCode = self->_cellularRnMobileNetworkCode;
  if (cellularRnMobileNetworkCode | *(v4 + 60))
  {
    if (![(NSString *)cellularRnMobileNetworkCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v233 = *(v4 + 421);
  if (*(&self->_has + 1))
  {
    if ((v233 & 0x100) != 0)
    {
      v234 = *(v4 + 1663);
      if (self->_cellularDataIsEnabled)
      {
        if ((*(v4 + 1663) & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_583;
      }

      if ((*(v4 + 1663) & 1) == 0)
      {
        goto LABEL_583;
      }
    }

LABEL_149:
    v74 = 0;
    goto LABEL_150;
  }

  if ((v233 & 0x100) != 0)
  {
    goto LABEL_149;
  }

LABEL_583:
  downloadStartCellularEstimate = self->_downloadStartCellularEstimate;
  if (downloadStartCellularEstimate | *(v4 + 105) && ![(NSString *)downloadStartCellularEstimate isEqual:?])
  {
    goto LABEL_149;
  }

  downloadEndCellularEstimate = self->_downloadEndCellularEstimate;
  if (downloadEndCellularEstimate | *(v4 + 76))
  {
    if (![(NSString *)downloadEndCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadMaxCellularEstimate = self->_downloadMaxCellularEstimate;
  if (downloadMaxCellularEstimate | *(v4 + 87))
  {
    if (![(NSString *)downloadMaxCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartCellularEstimate = self->_uploadStartCellularEstimate;
  if (uploadStartCellularEstimate | *(v4 + 178))
  {
    if (![(NSString *)uploadStartCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndCellularEstimate = self->_uploadEndCellularEstimate;
  if (uploadEndCellularEstimate | *(v4 + 149))
  {
    if (![(NSString *)uploadEndCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadMaxCellularEstimate = self->_uploadMaxCellularEstimate;
  if (uploadMaxCellularEstimate | *(v4 + 160))
  {
    if (![(NSString *)uploadMaxCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsiveness = self->_downloadResponsiveness;
  if (downloadResponsiveness | *(v4 + 96))
  {
    if (![(NSString *)downloadResponsiveness isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsivenessConfidence = self->_downloadResponsivenessConfidence;
  if (downloadResponsivenessConfidence | *(v4 + 97))
  {
    if (![(NSString *)downloadResponsivenessConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsivenessRating = self->_downloadResponsivenessRating;
  if (downloadResponsivenessRating | *(v4 + 98))
  {
    if (![(NSString *)downloadResponsivenessRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeedConfidence = self->_downloadSpeedConfidence;
  if (downloadSpeedConfidence | *(v4 + 102))
  {
    if (![(NSString *)downloadSpeedConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeedRating = self->_downloadSpeedRating;
  if (downloadSpeedRating | *(v4 + 103))
  {
    if (![(NSString *)downloadSpeedRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsiveness = self->_uploadResponsiveness;
  if (uploadResponsiveness | *(v4 + 169))
  {
    if (![(NSString *)uploadResponsiveness isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsivenessConfidence = self->_uploadResponsivenessConfidence;
  if (uploadResponsivenessConfidence | *(v4 + 170))
  {
    if (![(NSString *)uploadResponsivenessConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsivenessRating = self->_uploadResponsivenessRating;
  if (uploadResponsivenessRating | *(v4 + 171))
  {
    if (![(NSString *)uploadResponsivenessRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeedConfidence = self->_uploadSpeedConfidence;
  if (uploadSpeedConfidence | *(v4 + 175))
  {
    if (![(NSString *)uploadSpeedConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeedRating = self->_uploadSpeedRating;
  if (uploadSpeedRating | *(v4 + 176))
  {
    if (![(NSString *)uploadSpeedRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannelBand = self->_wifiChannelBand;
  if (wifiChannelBand | *(v4 + 191))
  {
    if (![(NSString *)wifiChannelBand isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannelWidth = self->_wifiChannelWidth;
  if (wifiChannelWidth | *(v4 + 192))
  {
    v74 = [(NSString *)wifiChannelWidth isEqual:?];
  }

  else
  {
    v74 = 1;
  }

LABEL_150:

  return v74;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v238 = 2654435761u * self->_timestamp;
  }

  else
  {
    v238 = 0;
  }

  v237 = [(NSString *)self->_awdlElectionParameters hash];
  v236 = [(NSString *)self->_awdlMasterChannel hash];
  v235 = [(NSString *)self->_awdlOpMode hash];
  if ((*&self->_has & 4) != 0)
  {
    v234 = 2654435761 * self->_awdlPowerState;
  }

  else
  {
    v234 = 0;
  }

  v233 = [(NSString *)self->_awdlSchedule hash];
  v232 = [(NSString *)self->_awdlSecondaryMasterChannel hash];
  v231 = [(NSString *)self->_awdlSyncChannelSequence hash];
  v230 = [(NSString *)self->_awdlSyncState hash];
  v229 = [(NSString *)self->_btConnectedDevicesCount hash];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v228 = 2654435761 * self->_btIsConnectable;
    if ((*&has & 0x10) != 0)
    {
LABEL_9:
      v227 = 2654435761 * self->_btIsDiscoverable;
      if ((*&has & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v226 = 0;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v228 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_9;
    }
  }

  v227 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v226 = 2654435761 * self->_btIsPowerOn;
  if ((*&has & 0x40) != 0)
  {
LABEL_11:
    v225 = 2654435761 * self->_btIsScanning;
    goto LABEL_16;
  }

LABEL_15:
  v225 = 0;
LABEL_16:
  v224 = [(NSString *)self->_callingClient hash];
  v223 = [(NSString *)self->_cellularActiveContexts hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v222 = 2654435761 * self->_cellularAllowsVoip;
  }

  else
  {
    v222 = 0;
  }

  v221 = [(NSString *)self->_cellularAttached hash];
  v220 = [(NSString *)self->_cellularBandinfo hash];
  v219 = [(NSString *)self->_cellularBandwidth hash];
  v218 = [(NSString *)self->_cellularCarrierName hash];
  v217 = [(NSString *)self->_cellularDataBearerSoMask hash];
  v216 = [(NSString *)self->_cellularDataBearerTechnology hash];
  v215 = [(NSString *)self->_cellularDataPlanSignalingReductionOverride hash];
  v214 = [(NSString *)self->_cellularDataPossible hash];
  v213 = [(NSString *)self->_cellularInHomeCountry hash];
  v212 = [(NSString *)self->_cellularIndicator hash];
  v211 = [(NSString *)self->_cellularIndicatorOverride hash];
  v210 = [(NSString *)self->_cellularIsoCountryCode hash];
  v209 = [(NSString *)self->_cellularLqm hash];
  v208 = [(NSString *)self->_cellularLteMaxScheduledLayers hash];
  v207 = [(NSString *)self->_cellularMobileCountryCode hash];
  v206 = [(NSString *)self->_cellularMobileNetworkCode hash];
  v205 = [(NSString *)self->_cellularNewRadioCoverage hash];
  v204 = [(NSString *)self->_cellularNewRadioDataBearer hash];
  v203 = [(NSString *)self->_cellularNewRadioMmwaveDataBearer hash];
  v202 = [(NSString *)self->_cellularNewRadioNsaCoverage hash];
  v201 = [(NSString *)self->_cellularNewRadioNsaDataBearer hash];
  v200 = [(NSString *)self->_cellularNewRadioSaCoverage hash];
  v199 = [(NSString *)self->_cellularNewRadioSaDataBearer hash];
  v198 = [(NSString *)self->_cellularNewRadioSub6DataBearer hash];
  v197 = [(NSString *)self->_cellularNrConfiguredBw hash];
  v196 = [(NSString *)self->_cellularNrLayers hash];
  v195 = [(NSString *)self->_cellularNrModulation hash];
  v194 = [(NSString *)self->_cellularNrRsrp hash];
  v193 = [(NSString *)self->_cellularNrRsrq hash];
  v192 = [(NSString *)self->_cellularNrSnr hash];
  v191 = [(NSString *)self->_cellularPid hash];
  v190 = [(NSString *)self->_cellularRadioAccessTechnology hash];
  v189 = [(NSString *)self->_cellularRadioAccessTechnologyCtDataStatus hash];
  v188 = [(NSString *)self->_cellularRoamAllowed hash];
  v187 = [(NSString *)self->_cellularRsrp hash];
  v186 = [(NSString *)self->_cellularSnr hash];
  v185 = [(NSString *)self->_cellularTac hash];
  v184 = [(NSString *)self->_cellularTotalActiveContexts hash];
  v183 = [(NSString *)self->_cellularTotalBw hash];
  v182 = [(NSString *)self->_cellularTotalCcs hash];
  v181 = [(NSString *)self->_cellularTotalLayers hash];
  v180 = [(NSString *)self->_cellularUarfcn hash];
  v179 = [(NSString *)self->_downloadCdnPop hash];
  v178 = [(NSString *)self->_downloadCdnUuid hash];
  v177 = [(NSString *)self->_downloadConnectionTime hash];
  v176 = [(NSString *)self->_downloadDomainLookupTime hash];
  v175 = [(NSString *)self->_downloadEndDataBearerTechnology hash];
  v174 = [(NSString *)self->_downloadEndPrimaryIpv4Interface hash];
  v173 = [(NSString *)self->_downloadEndRat hash];
  v172 = [(NSString *)self->_downloadFileSize hash];
  v171 = [(NSString *)self->_downloadInterfaceName hash];
  v170 = [(NSString *)self->_downloadInterfaceServiceName hash];
  v4 = self->_has;
  if ((*&v4 & 0x200) != 0)
  {
    v169 = 2654435761 * self->_downloadIsCellular;
    if ((*&v4 & 0x400) != 0)
    {
LABEL_21:
      v168 = 2654435761 * self->_downloadIsConstrained;
      if ((*&v4 & 0x800) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v169 = 0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_21;
    }
  }

  v168 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_22:
    v167 = 2654435761 * self->_downloadIsExpensive;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_28:
  v167 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_23:
    v166 = 2654435761 * self->_downloadIsMultipath;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    v165 = 0;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_29:
  v166 = 0;
  if ((*&v4 & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v165 = 2654435761 * self->_downloadIsProxyConnection;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_25:
    v164 = 2654435761 * self->_downloadIsReusedConnection;
    goto LABEL_32;
  }

LABEL_31:
  v164 = 0;
LABEL_32:
  v163 = [(NSString *)self->_downloadMaxSpeedObserved hash];
  v162 = [(NSString *)self->_downloadNumberOfStreams hash];
  v161 = [(NSString *)self->_downloadProtocolName hash];
  v160 = [(NSString *)self->_downloadRemoteAddress hash];
  v159 = [(NSString *)self->_downloadRemotePort hash];
  v158 = [(NSString *)self->_downloadRequestTime hash];
  v157 = [(NSString *)self->_downloadRequestToResponseTime hash];
  v156 = [(NSString *)self->_downloadResponseTime hash];
  v155 = [(NSString *)self->_downloadSecureConnectionTime hash];
  v154 = [(NSString *)self->_downloadServer hash];
  v153 = [(NSString *)self->_downloadSpeed hash];
  v152 = [(NSString *)self->_downloadStableSpeed hash];
  v151 = [(NSString *)self->_downloadStartDataBearerTechnology hash];
  v150 = [(NSString *)self->_downloadStartPrimaryIpv4Interface hash];
  v149 = [(NSString *)self->_downloadStartRat hash];
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v148 = 2654435761 * self->_networkIsAppleReachable;
  }

  else
  {
    v148 = 0;
  }

  v147 = [(NSString *)self->_networkPrimaryIpv4InterfaceName hash];
  v146 = [(NSString *)self->_networkPrimaryIpv4ServiceName hash];
  v145 = [(NSString *)self->_nptkitFrameworkVersion hash];
  v144 = [(NSString *)self->_performanceTestStartTime hash];
  v143 = [(NSString *)self->_pingAddress hash];
  v142 = [(NSString *)self->_pingLossPercent hash];
  v141 = [(NSString *)self->_pingMaxLatency hash];
  v140 = [(NSString *)self->_pingMeanLatency hash];
  v139 = [(NSString *)self->_pingMinLatency hash];
  v138 = [(NSString *)self->_pingStandardDeviation hash];
  v137 = [(NSString *)self->_powerBatteryWarningLevel hash];
  v136 = [(NSString *)self->_powerSourceType hash];
  v135 = [(NSString *)self->_powerStateCaps hash];
  v134 = [(NSString *)self->_systemActiveProcessorCount hash];
  v133 = [(NSString *)self->_systemBatteryLevel hash];
  v132 = [(NSString *)self->_systemBatteryState hash];
  v131 = [(NSString *)self->_systemDeviceClass hash];
  v130 = [(NSString *)self->_systemDeviceModel hash];
  if (*(&self->_has + 2))
  {
    v129 = 2654435761 * self->_systemLowPowerModeEnabled;
  }

  else
  {
    v129 = 0;
  }

  v128 = [(NSString *)self->_systemName hash];
  v127 = [(NSString *)self->_systemOsVariant hash];
  v126 = [(NSString *)self->_systemPhysicalMemory hash];
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v125 = 2654435761 * self->_systemPowersourceConnected;
  }

  else
  {
    v125 = 0;
  }

  v124 = [(NSString *)self->_systemProcessorCount hash];
  v123 = [(NSString *)self->_systemVersion hash];
  v122 = [(NSString *)self->_uploadCdnPop hash];
  v121 = [(NSString *)self->_uploadCdnUuid hash];
  v120 = [(NSString *)self->_uploadConnectionTime hash];
  v119 = [(NSString *)self->_uploadDomainLookupTime hash];
  v118 = [(NSString *)self->_uploadEndDataBearerTechnology hash];
  v117 = [(NSString *)self->_uploadEndPrimaryIpv4Interface hash];
  v116 = [(NSString *)self->_uploadEndRat hash];
  v115 = [(NSString *)self->_uploadFileSize hash];
  v114 = [(NSString *)self->_uploadInterfaceName hash];
  v113 = [(NSString *)self->_uploadInterfaceServiceName hash];
  v5 = self->_has;
  if ((*&v5 & 0x40000) != 0)
  {
    v112 = 2654435761 * self->_uploadIsCellular;
    if ((*&v5 & 0x80000) != 0)
    {
LABEL_43:
      v111 = 2654435761 * self->_uploadIsConstrained;
      if ((*&v5 & 0x100000) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v112 = 0;
    if ((*&v5 & 0x80000) != 0)
    {
      goto LABEL_43;
    }
  }

  v111 = 0;
  if ((*&v5 & 0x100000) != 0)
  {
LABEL_44:
    v110 = 2654435761 * self->_uploadIsExpensive;
    if ((*&v5 & 0x200000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_50:
  v110 = 0;
  if ((*&v5 & 0x200000) != 0)
  {
LABEL_45:
    v109 = 2654435761 * self->_uploadIsMultipath;
    if ((*&v5 & 0x400000) != 0)
    {
      goto LABEL_46;
    }

LABEL_52:
    v108 = 0;
    if ((*&v5 & 0x800000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

LABEL_51:
  v109 = 0;
  if ((*&v5 & 0x400000) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  v108 = 2654435761 * self->_uploadIsProxyConnection;
  if ((*&v5 & 0x800000) != 0)
  {
LABEL_47:
    v107 = 2654435761 * self->_uploadIsReusedConnection;
    goto LABEL_54;
  }

LABEL_53:
  v107 = 0;
LABEL_54:
  v106 = [(NSString *)self->_uploadMaxSpeedObserved hash];
  v105 = [(NSString *)self->_uploadNumberOfStreams hash];
  v104 = [(NSString *)self->_uploadProtocolName hash];
  v103 = [(NSString *)self->_uploadRemoteAddress hash];
  v102 = [(NSString *)self->_uploadRemotePort hash];
  v101 = [(NSString *)self->_uploadRequestTime hash];
  v100 = [(NSString *)self->_uploadRequestToResponseTime hash];
  v99 = [(NSString *)self->_uploadResponseTime hash];
  v98 = [(NSString *)self->_uploadSecureConnectionTime hash];
  v97 = [(NSString *)self->_uploadServer hash];
  v96 = [(NSString *)self->_uploadSpeed hash];
  v95 = [(NSString *)self->_uploadStableSpeed hash];
  v94 = [(NSString *)self->_uploadStartDataBearerTechnology hash];
  v93 = [(NSString *)self->_uploadStartPrimaryIpv4Interface hash];
  v92 = [(NSString *)self->_uploadStartRat hash];
  if (*(&self->_has + 3))
  {
    v91 = 2654435761 * self->_useWifiWasSpecified;
  }

  else
  {
    v91 = 0;
  }

  v90 = [(NSString *)self->_wifiAveragePhyRateRx hash];
  v89 = [(NSString *)self->_wifiAverageRssi hash];
  v88 = [(NSString *)self->_wifiAverageSnr hash];
  v87 = [(NSString *)self->_wifiAverageTcpRtt hash];
  v86 = [(NSString *)self->_wifiBtcMode hash];
  v85 = [(NSString *)self->_wifiCca hash];
  v84 = [(NSString *)self->_wifiChannel hash];
  v83 = [(NSString *)self->_wifiCwfCca hash];
  v82 = [(NSString *)self->_wifiEapolControlMode hash];
  v81 = [(NSString *)self->_wifiEapolSupplicantState hash];
  v80 = [(NSString *)self->_wifiGuardInterval hash];
  v79 = [(NSString *)self->_wifiHiddenState hash];
  if ((*(&self->_has + 3) & 2) != 0)
  {
    v78 = 2654435761 * self->_wifiIsCaptive;
  }

  else
  {
    v78 = 0;
  }

  v77 = [(NSString *)self->_wifiMcsIndex hash];
  v76 = [(NSString *)self->_wifiNoise hash];
  v75 = [(NSString *)self->_wifiNumberOfSpatialStreams hash];
  v74 = [(NSString *)self->_wifiOpMode hash];
  v73 = [(NSString *)self->_wifiPhyMode hash];
  v72 = [(NSString *)self->_wifiRssi hash];
  v71 = [(NSString *)self->_wifiSecurity hash];
  v70 = [(NSString *)self->_wifiTxRate hash];
  v69 = [(NSString *)self->_wrmChannelType hash];
  v68 = [(NSString *)self->_cellularCellid hash];
  if ((*&self->_has & 2) != 0)
  {
    v67 = 2654435761 * self->_acceptablePerformanceResult;
  }

  else
  {
    v67 = 0;
  }

  v66 = [(NSString *)self->_networkQualityResponsiveness hash];
  v65 = [(NSString *)self->_cellularAggregatedDLBW hash];
  v64 = [(NSString *)self->_cellularAggregatedULBW hash];
  v63 = [(NSString *)self->_cellularIssa hash];
  v62 = [(NSString *)self->_cellularLac hash];
  v61 = [(NSString *)self->_cellularLteNrConfiguredBw hash];
  v60 = [(NSString *)self->_cellularMaxDlMod hash];
  v59 = [(NSString *)self->_cellularMaxNwMimoLyr hash];
  v58 = [(NSString *)self->_cellularMaxSchdMimoLyr hash];
  v57 = [(NSString *)self->_cellularMaxUeRank hash];
  v56 = [(NSString *)self->_cellularMaxUlMod hash];
  v55 = [(NSString *)self->_cellularNrSinr hash];
  v54 = [(NSString *)self->_cellularNrarfcn hash];
  v53 = [(NSString *)self->_cellularRadioFrequency hash];
  v52 = [(NSString *)self->_cellularTotalDlMimoLayers hash];
  v51 = [(NSString *)self->_cellularTotalNumCcs hash];
  v50 = [(NSString *)self->_downloadStartRadioFrequency hash];
  v49 = [(NSString *)self->_downloadEndRadioFrequency hash];
  v48 = [(NSString *)self->_networkPrimaryIpv6InterfaceName hash];
  v47 = [(NSString *)self->_networkPrimaryIpv6ServiceName hash];
  v46 = [(NSString *)self->_uploadStartRadioFrequency hash];
  v45 = [(NSString *)self->_uploadEndRadioFrequency hash];
  v44 = [(NSString *)self->_downloadError hash];
  v43 = [(NSString *)self->_networkQualityError hash];
  v42 = [(NSString *)self->_networkQualityDownloadSpeed hash];
  v41 = [(NSString *)self->_networkQualityUploadSpeed hash];
  v40 = [(NSString *)self->_networkQualityRating hash];
  v39 = [(NSString *)self->_vpnConnectionState hash];
  v38 = [(NSString *)self->_uploadError hash];
  v37 = [(NSString *)self->_uploadErrorDomain hash];
  v36 = [(NSString *)self->_uploadErrorCode hash];
  v6 = [(NSString *)self->_downloadErrorDomain hash];
  v7 = [(NSString *)self->_downloadErrorCode hash];
  v8 = [(NSString *)self->_pingError hash];
  v9 = [(NSString *)self->_pingErrorDomain hash];
  v10 = [(NSString *)self->_pingErrorCode hash];
  v11 = [(NSString *)self->_networkQualityErrorDomain hash];
  v12 = [(NSString *)self->_networkQualityErrorCode hash];
  v13 = [(NSString *)self->_cellularRnMobileCountryCode hash];
  v14 = [(NSString *)self->_cellularRnMobileNetworkCode hash];
  if (*(&self->_has + 1))
  {
    v15 = 2654435761 * self->_cellularDataIsEnabled;
  }

  else
  {
    v15 = 0;
  }

  v16 = v237 ^ v238 ^ v236 ^ v235 ^ v234 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v223 ^ v222 ^ v221 ^ v220 ^ v219 ^ v218 ^ v217 ^ v216 ^ v215 ^ v214 ^ v213 ^ v212 ^ v211 ^ v210 ^ v209 ^ v208 ^ v207 ^ v206 ^ v205 ^ v204 ^ v203 ^ v202 ^ v201 ^ v200 ^ v199 ^ v198 ^ v197 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153;
  v17 = v16 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38;
  v18 = v37 ^ v36 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSString *)self->_downloadStartCellularEstimate hash];
  v19 = v18 ^ [(NSString *)self->_downloadEndCellularEstimate hash];
  v20 = v19 ^ [(NSString *)self->_downloadMaxCellularEstimate hash];
  v21 = v20 ^ [(NSString *)self->_uploadStartCellularEstimate hash];
  v22 = v21 ^ [(NSString *)self->_uploadEndCellularEstimate hash];
  v23 = v22 ^ [(NSString *)self->_uploadMaxCellularEstimate hash];
  v24 = v23 ^ [(NSString *)self->_downloadResponsiveness hash];
  v25 = v17 ^ v24 ^ [(NSString *)self->_downloadResponsivenessConfidence hash];
  v26 = [(NSString *)self->_downloadResponsivenessRating hash];
  v27 = v26 ^ [(NSString *)self->_downloadSpeedConfidence hash];
  v28 = v27 ^ [(NSString *)self->_downloadSpeedRating hash];
  v29 = v28 ^ [(NSString *)self->_uploadResponsiveness hash];
  v30 = v29 ^ [(NSString *)self->_uploadResponsivenessConfidence hash];
  v31 = v30 ^ [(NSString *)self->_uploadResponsivenessRating hash];
  v32 = v31 ^ [(NSString *)self->_uploadSpeedConfidence hash];
  v33 = v32 ^ [(NSString *)self->_uploadSpeedRating hash];
  v34 = v33 ^ [(NSString *)self->_wifiChannelBand hash];
  return v25 ^ v34 ^ [(NSString *)self->_wifiChannelWidth hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1684))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 2))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlElectionParameters:?];
    v4 = v8;
  }

  if (*(v4 + 3))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlMasterChannel:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlOpMode:?];
    v4 = v8;
  }

  if ((*(v4 + 1684) & 4) != 0)
  {
    self->_awdlPowerState = *(v4 + 1657);
    *&self->_has |= 4u;
  }

  if (*(v4 + 5))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSchedule:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSecondaryMasterChannel:?];
    v4 = v8;
  }

  if (*(v4 + 7))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSyncChannelSequence:?];
    v4 = v8;
  }

  if (*(v4 + 8))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSyncState:?];
    v4 = v8;
  }

  if (*(v4 + 9))
  {
    [(AWDNetworkPerformanceMetric *)self setBtConnectedDevicesCount:?];
    v4 = v8;
  }

  v5 = *(v4 + 421);
  if ((v5 & 8) != 0)
  {
    self->_btIsConnectable = *(v4 + 1658);
    *&self->_has |= 8u;
    v5 = *(v4 + 421);
    if ((v5 & 0x10) == 0)
    {
LABEL_23:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_455;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  self->_btIsDiscoverable = *(v4 + 1659);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 421);
  if ((v5 & 0x20) == 0)
  {
LABEL_24:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_455:
  self->_btIsPowerOn = *(v4 + 1660);
  *&self->_has |= 0x20u;
  if ((*(v4 + 421) & 0x40) != 0)
  {
LABEL_25:
    self->_btIsScanning = *(v4 + 1661);
    *&self->_has |= 0x40u;
  }

LABEL_26:
  if (*(v4 + 10))
  {
    [(AWDNetworkPerformanceMetric *)self setCallingClient:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularActiveContexts:?];
    v4 = v8;
  }

  if ((*(v4 + 1684) & 0x80) != 0)
  {
    self->_cellularAllowsVoip = *(v4 + 1662);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 14))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAttached:?];
    v4 = v8;
  }

  if (*(v4 + 15))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularBandinfo:?];
    v4 = v8;
  }

  if (*(v4 + 16))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularBandwidth:?];
    v4 = v8;
  }

  if (*(v4 + 17))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularCarrierName:?];
    v4 = v8;
  }

  if (*(v4 + 19))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataBearerSoMask:?];
    v4 = v8;
  }

  if (*(v4 + 20))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataBearerTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 21))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataPlanSignalingReductionOverride:?];
    v4 = v8;
  }

  if (*(v4 + 22))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataPossible:?];
    v4 = v8;
  }

  if (*(v4 + 23))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularInHomeCountry:?];
    v4 = v8;
  }

  if (*(v4 + 24))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIndicator:?];
    v4 = v8;
  }

  if (*(v4 + 25))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIndicatorOverride:?];
    v4 = v8;
  }

  if (*(v4 + 26))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIsoCountryCode:?];
    v4 = v8;
  }

  if (*(v4 + 29))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLqm:?];
    v4 = v8;
  }

  if (*(v4 + 30))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLteMaxScheduledLayers:?];
    v4 = v8;
  }

  if (*(v4 + 37))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMobileCountryCode:?];
    v4 = v8;
  }

  if (*(v4 + 38))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMobileNetworkCode:?];
    v4 = v8;
  }

  if (*(v4 + 39))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioCoverage:?];
    v4 = v8;
  }

  if (*(v4 + 40))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioDataBearer:?];
    v4 = v8;
  }

  if (*(v4 + 41))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioMmwaveDataBearer:?];
    v4 = v8;
  }

  if (*(v4 + 42))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioNsaCoverage:?];
    v4 = v8;
  }

  if (*(v4 + 43))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioNsaDataBearer:?];
    v4 = v8;
  }

  if (*(v4 + 44))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSaCoverage:?];
    v4 = v8;
  }

  if (*(v4 + 45))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSaDataBearer:?];
    v4 = v8;
  }

  if (*(v4 + 46))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSub6DataBearer:?];
    v4 = v8;
  }

  if (*(v4 + 47))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrConfiguredBw:?];
    v4 = v8;
  }

  if (*(v4 + 48))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrLayers:?];
    v4 = v8;
  }

  if (*(v4 + 49))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrModulation:?];
    v4 = v8;
  }

  if (*(v4 + 50))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrRsrp:?];
    v4 = v8;
  }

  if (*(v4 + 51))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrRsrq:?];
    v4 = v8;
  }

  if (*(v4 + 53))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrSnr:?];
    v4 = v8;
  }

  if (*(v4 + 55))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularPid:?];
    v4 = v8;
  }

  if (*(v4 + 56))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioAccessTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 57))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioAccessTechnologyCtDataStatus:?];
    v4 = v8;
  }

  if (*(v4 + 61))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRoamAllowed:?];
    v4 = v8;
  }

  if (*(v4 + 62))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRsrp:?];
    v4 = v8;
  }

  if (*(v4 + 63))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularSnr:?];
    v4 = v8;
  }

  if (*(v4 + 64))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTac:?];
    v4 = v8;
  }

  if (*(v4 + 65))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalActiveContexts:?];
    v4 = v8;
  }

  if (*(v4 + 66))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalBw:?];
    v4 = v8;
  }

  if (*(v4 + 67))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalCcs:?];
    v4 = v8;
  }

  if (*(v4 + 69))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalLayers:?];
    v4 = v8;
  }

  if (*(v4 + 71))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularUarfcn:?];
    v4 = v8;
  }

  if (*(v4 + 72))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadCdnPop:?];
    v4 = v8;
  }

  if (*(v4 + 73))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadCdnUuid:?];
    v4 = v8;
  }

  if (*(v4 + 74))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadConnectionTime:?];
    v4 = v8;
  }

  if (*(v4 + 75))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadDomainLookupTime:?];
    v4 = v8;
  }

  if (*(v4 + 77))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndDataBearerTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 78))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (*(v4 + 80))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndRat:?];
    v4 = v8;
  }

  if (*(v4 + 84))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadFileSize:?];
    v4 = v8;
  }

  if (*(v4 + 85))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadInterfaceName:?];
    v4 = v8;
  }

  if (*(v4 + 86))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadInterfaceServiceName:?];
    v4 = v8;
  }

  v6 = *(v4 + 421);
  if ((v6 & 0x200) != 0)
  {
    self->_downloadIsCellular = *(v4 + 1664);
    *&self->_has |= 0x200u;
    v6 = *(v4 + 421);
    if ((v6 & 0x400) == 0)
    {
LABEL_138:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_459;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_138;
  }

  self->_downloadIsConstrained = *(v4 + 1665);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 421);
  if ((v6 & 0x800) == 0)
  {
LABEL_139:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_460;
  }

LABEL_459:
  self->_downloadIsExpensive = *(v4 + 1666);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 421);
  if ((v6 & 0x1000) == 0)
  {
LABEL_140:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_461;
  }

LABEL_460:
  self->_downloadIsMultipath = *(v4 + 1667);
  *&self->_has |= 0x1000u;
  v6 = *(v4 + 421);
  if ((v6 & 0x2000) == 0)
  {
LABEL_141:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_461:
  self->_downloadIsProxyConnection = *(v4 + 1668);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 421) & 0x4000) != 0)
  {
LABEL_142:
    self->_downloadIsReusedConnection = *(v4 + 1669);
    *&self->_has |= 0x4000u;
  }

LABEL_143:
  if (*(v4 + 88))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadMaxSpeedObserved:?];
    v4 = v8;
  }

  if (*(v4 + 89))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadNumberOfStreams:?];
    v4 = v8;
  }

  if (*(v4 + 90))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadProtocolName:?];
    v4 = v8;
  }

  if (*(v4 + 91))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRemoteAddress:?];
    v4 = v8;
  }

  if (*(v4 + 92))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRemotePort:?];
    v4 = v8;
  }

  if (*(v4 + 93))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRequestTime:?];
    v4 = v8;
  }

  if (*(v4 + 94))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRequestToResponseTime:?];
    v4 = v8;
  }

  if (*(v4 + 95))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponseTime:?];
    v4 = v8;
  }

  if (*(v4 + 99))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSecureConnectionTime:?];
    v4 = v8;
  }

  if (*(v4 + 100))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadServer:?];
    v4 = v8;
  }

  if (*(v4 + 101))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 104))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStableSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 106))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartDataBearerTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 107))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (*(v4 + 109))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartRat:?];
    v4 = v8;
  }

  if ((*(v4 + 1685) & 0x80) != 0)
  {
    self->_networkIsAppleReachable = *(v4 + 1670);
    *&self->_has |= 0x8000u;
  }

  if (*(v4 + 110))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv4InterfaceName:?];
    v4 = v8;
  }

  if (*(v4 + 111))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv4ServiceName:?];
    v4 = v8;
  }

  if (*(v4 + 121))
  {
    [(AWDNetworkPerformanceMetric *)self setNptkitFrameworkVersion:?];
    v4 = v8;
  }

  if (*(v4 + 122))
  {
    [(AWDNetworkPerformanceMetric *)self setPerformanceTestStartTime:?];
    v4 = v8;
  }

  if (*(v4 + 123))
  {
    [(AWDNetworkPerformanceMetric *)self setPingAddress:?];
    v4 = v8;
  }

  if (*(v4 + 127))
  {
    [(AWDNetworkPerformanceMetric *)self setPingLossPercent:?];
    v4 = v8;
  }

  if (*(v4 + 128))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMaxLatency:?];
    v4 = v8;
  }

  if (*(v4 + 129))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMeanLatency:?];
    v4 = v8;
  }

  if (*(v4 + 130))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMinLatency:?];
    v4 = v8;
  }

  if (*(v4 + 131))
  {
    [(AWDNetworkPerformanceMetric *)self setPingStandardDeviation:?];
    v4 = v8;
  }

  if (*(v4 + 132))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerBatteryWarningLevel:?];
    v4 = v8;
  }

  if (*(v4 + 133))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerSourceType:?];
    v4 = v8;
  }

  if (*(v4 + 134))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerStateCaps:?];
    v4 = v8;
  }

  if (*(v4 + 135))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemActiveProcessorCount:?];
    v4 = v8;
  }

  if (*(v4 + 136))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemBatteryLevel:?];
    v4 = v8;
  }

  if (*(v4 + 137))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemBatteryState:?];
    v4 = v8;
  }

  if (*(v4 + 138))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemDeviceClass:?];
    v4 = v8;
  }

  if (*(v4 + 139))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemDeviceModel:?];
    v4 = v8;
  }

  if (*(v4 + 1686))
  {
    self->_systemLowPowerModeEnabled = *(v4 + 1671);
    *&self->_has |= 0x10000u;
  }

  if (*(v4 + 140))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemName:?];
    v4 = v8;
  }

  if (*(v4 + 141))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemOsVariant:?];
    v4 = v8;
  }

  if (*(v4 + 142))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemPhysicalMemory:?];
    v4 = v8;
  }

  if ((*(v4 + 1686) & 2) != 0)
  {
    self->_systemPowersourceConnected = *(v4 + 1672);
    *&self->_has |= 0x20000u;
  }

  if (*(v4 + 143))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemProcessorCount:?];
    v4 = v8;
  }

  if (*(v4 + 144))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemVersion:?];
    v4 = v8;
  }

  if (*(v4 + 145))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadCdnPop:?];
    v4 = v8;
  }

  if (*(v4 + 146))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadCdnUuid:?];
    v4 = v8;
  }

  if (*(v4 + 147))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadConnectionTime:?];
    v4 = v8;
  }

  if (*(v4 + 148))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadDomainLookupTime:?];
    v4 = v8;
  }

  if (*(v4 + 150))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndDataBearerTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 151))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (*(v4 + 153))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndRat:?];
    v4 = v8;
  }

  if (*(v4 + 157))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadFileSize:?];
    v4 = v8;
  }

  if (*(v4 + 158))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadInterfaceName:?];
    v4 = v8;
  }

  if (*(v4 + 159))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadInterfaceServiceName:?];
    v4 = v8;
  }

  v7 = *(v4 + 421);
  if ((v7 & 0x40000) != 0)
  {
    self->_uploadIsCellular = *(v4 + 1673);
    *&self->_has |= 0x40000u;
    v7 = *(v4 + 421);
    if ((v7 & 0x80000) == 0)
    {
LABEL_247:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_465;
    }
  }

  else if ((v7 & 0x80000) == 0)
  {
    goto LABEL_247;
  }

  self->_uploadIsConstrained = *(v4 + 1674);
  *&self->_has |= 0x80000u;
  v7 = *(v4 + 421);
  if ((v7 & 0x100000) == 0)
  {
LABEL_248:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_466;
  }

LABEL_465:
  self->_uploadIsExpensive = *(v4 + 1675);
  *&self->_has |= 0x100000u;
  v7 = *(v4 + 421);
  if ((v7 & 0x200000) == 0)
  {
LABEL_249:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_467;
  }

LABEL_466:
  self->_uploadIsMultipath = *(v4 + 1676);
  *&self->_has |= 0x200000u;
  v7 = *(v4 + 421);
  if ((v7 & 0x400000) == 0)
  {
LABEL_250:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

LABEL_467:
  self->_uploadIsProxyConnection = *(v4 + 1677);
  *&self->_has |= 0x400000u;
  if ((*(v4 + 421) & 0x800000) != 0)
  {
LABEL_251:
    self->_uploadIsReusedConnection = *(v4 + 1678);
    *&self->_has |= 0x800000u;
  }

LABEL_252:
  if (*(v4 + 161))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadMaxSpeedObserved:?];
    v4 = v8;
  }

  if (*(v4 + 162))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadNumberOfStreams:?];
    v4 = v8;
  }

  if (*(v4 + 163))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadProtocolName:?];
    v4 = v8;
  }

  if (*(v4 + 164))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRemoteAddress:?];
    v4 = v8;
  }

  if (*(v4 + 165))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRemotePort:?];
    v4 = v8;
  }

  if (*(v4 + 166))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRequestTime:?];
    v4 = v8;
  }

  if (*(v4 + 167))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRequestToResponseTime:?];
    v4 = v8;
  }

  if (*(v4 + 168))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponseTime:?];
    v4 = v8;
  }

  if (*(v4 + 172))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSecureConnectionTime:?];
    v4 = v8;
  }

  if (*(v4 + 173))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadServer:?];
    v4 = v8;
  }

  if (*(v4 + 174))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 177))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStableSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 179))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartDataBearerTechnology:?];
    v4 = v8;
  }

  if (*(v4 + 180))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartPrimaryIpv4Interface:?];
    v4 = v8;
  }

  if (*(v4 + 182))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartRat:?];
    v4 = v8;
  }

  if (*(v4 + 1687))
  {
    self->_useWifiWasSpecified = *(v4 + 1679);
    *&self->_has |= 0x1000000u;
  }

  if (*(v4 + 184))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAveragePhyRateRx:?];
    v4 = v8;
  }

  if (*(v4 + 185))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageRssi:?];
    v4 = v8;
  }

  if (*(v4 + 186))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageSnr:?];
    v4 = v8;
  }

  if (*(v4 + 187))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageTcpRtt:?];
    v4 = v8;
  }

  if (*(v4 + 188))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiBtcMode:?];
    v4 = v8;
  }

  if (*(v4 + 189))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiCca:?];
    v4 = v8;
  }

  if (*(v4 + 190))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannel:?];
    v4 = v8;
  }

  if (*(v4 + 193))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiCwfCca:?];
    v4 = v8;
  }

  if (*(v4 + 194))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiEapolControlMode:?];
    v4 = v8;
  }

  if (*(v4 + 195))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiEapolSupplicantState:?];
    v4 = v8;
  }

  if (*(v4 + 196))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiGuardInterval:?];
    v4 = v8;
  }

  if (*(v4 + 197))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiHiddenState:?];
    v4 = v8;
  }

  if ((*(v4 + 1687) & 2) != 0)
  {
    self->_wifiIsCaptive = *(v4 + 1680);
    *&self->_has |= 0x2000000u;
  }

  if (*(v4 + 198))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiMcsIndex:?];
    v4 = v8;
  }

  if (*(v4 + 199))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiNoise:?];
    v4 = v8;
  }

  if (*(v4 + 200))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiNumberOfSpatialStreams:?];
    v4 = v8;
  }

  if (*(v4 + 201))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiOpMode:?];
    v4 = v8;
  }

  if (*(v4 + 202))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiPhyMode:?];
    v4 = v8;
  }

  if (*(v4 + 203))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiRssi:?];
    v4 = v8;
  }

  if (*(v4 + 204))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiSecurity:?];
    v4 = v8;
  }

  if (*(v4 + 205))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiTxRate:?];
    v4 = v8;
  }

  if (*(v4 + 206))
  {
    [(AWDNetworkPerformanceMetric *)self setWrmChannelType:?];
    v4 = v8;
  }

  if (*(v4 + 18))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularCellid:?];
    v4 = v8;
  }

  if ((*(v4 + 1684) & 2) != 0)
  {
    self->_acceptablePerformanceResult = *(v4 + 1656);
    *&self->_has |= 2u;
  }

  if (*(v4 + 119))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityResponsiveness:?];
    v4 = v8;
  }

  if (*(v4 + 12))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAggregatedDLBW:?];
    v4 = v8;
  }

  if (*(v4 + 13))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAggregatedULBW:?];
    v4 = v8;
  }

  if (*(v4 + 27))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIssa:?];
    v4 = v8;
  }

  if (*(v4 + 28))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLac:?];
    v4 = v8;
  }

  if (*(v4 + 31))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLteNrConfiguredBw:?];
    v4 = v8;
  }

  if (*(v4 + 32))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxDlMod:?];
    v4 = v8;
  }

  if (*(v4 + 33))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxNwMimoLyr:?];
    v4 = v8;
  }

  if (*(v4 + 34))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxSchdMimoLyr:?];
    v4 = v8;
  }

  if (*(v4 + 35))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxUeRank:?];
    v4 = v8;
  }

  if (*(v4 + 36))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxUlMod:?];
    v4 = v8;
  }

  if (*(v4 + 52))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrSinr:?];
    v4 = v8;
  }

  if (*(v4 + 54))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrarfcn:?];
    v4 = v8;
  }

  if (*(v4 + 58))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioFrequency:?];
    v4 = v8;
  }

  if (*(v4 + 68))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalDlMimoLayers:?];
    v4 = v8;
  }

  if (*(v4 + 70))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalNumCcs:?];
    v4 = v8;
  }

  if (*(v4 + 108))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartRadioFrequency:?];
    v4 = v8;
  }

  if (*(v4 + 79))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndRadioFrequency:?];
    v4 = v8;
  }

  if (*(v4 + 112))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv6InterfaceName:?];
    v4 = v8;
  }

  if (*(v4 + 113))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv6ServiceName:?];
    v4 = v8;
  }

  if (*(v4 + 181))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartRadioFrequency:?];
    v4 = v8;
  }

  if (*(v4 + 152))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndRadioFrequency:?];
    v4 = v8;
  }

  if (*(v4 + 81))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadError:?];
    v4 = v8;
  }

  if (*(v4 + 115))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityError:?];
    v4 = v8;
  }

  if (*(v4 + 114))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityDownloadSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 120))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityUploadSpeed:?];
    v4 = v8;
  }

  if (*(v4 + 118))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityRating:?];
    v4 = v8;
  }

  if (*(v4 + 183))
  {
    [(AWDNetworkPerformanceMetric *)self setVpnConnectionState:?];
    v4 = v8;
  }

  if (*(v4 + 154))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadError:?];
    v4 = v8;
  }

  if (*(v4 + 156))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadErrorDomain:?];
    v4 = v8;
  }

  if (*(v4 + 155))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadErrorCode:?];
    v4 = v8;
  }

  if (*(v4 + 83))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadErrorDomain:?];
    v4 = v8;
  }

  if (*(v4 + 82))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadErrorCode:?];
    v4 = v8;
  }

  if (*(v4 + 124))
  {
    [(AWDNetworkPerformanceMetric *)self setPingError:?];
    v4 = v8;
  }

  if (*(v4 + 126))
  {
    [(AWDNetworkPerformanceMetric *)self setPingErrorDomain:?];
    v4 = v8;
  }

  if (*(v4 + 125))
  {
    [(AWDNetworkPerformanceMetric *)self setPingErrorCode:?];
    v4 = v8;
  }

  if (*(v4 + 117))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityErrorDomain:?];
    v4 = v8;
  }

  if (*(v4 + 116))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityErrorCode:?];
    v4 = v8;
  }

  if (*(v4 + 59))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRnMobileCountryCode:?];
    v4 = v8;
  }

  if (*(v4 + 60))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRnMobileNetworkCode:?];
    v4 = v8;
  }

  if (*(v4 + 1685))
  {
    self->_cellularDataIsEnabled = *(v4 + 1663);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 105))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 76))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 87))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadMaxCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 178))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 149))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 160))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadMaxCellularEstimate:?];
    v4 = v8;
  }

  if (*(v4 + 96))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsiveness:?];
    v4 = v8;
  }

  if (*(v4 + 97))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsivenessConfidence:?];
    v4 = v8;
  }

  if (*(v4 + 98))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsivenessRating:?];
    v4 = v8;
  }

  if (*(v4 + 102))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeedConfidence:?];
    v4 = v8;
  }

  if (*(v4 + 103))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeedRating:?];
    v4 = v8;
  }

  if (*(v4 + 169))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsiveness:?];
    v4 = v8;
  }

  if (*(v4 + 170))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsivenessConfidence:?];
    v4 = v8;
  }

  if (*(v4 + 171))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsivenessRating:?];
    v4 = v8;
  }

  if (*(v4 + 175))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeedConfidence:?];
    v4 = v8;
  }

  if (*(v4 + 176))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeedRating:?];
    v4 = v8;
  }

  if (*(v4 + 191))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannelBand:?];
    v4 = v8;
  }

  if (*(v4 + 192))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannelWidth:?];
    v4 = v8;
  }
}

@end
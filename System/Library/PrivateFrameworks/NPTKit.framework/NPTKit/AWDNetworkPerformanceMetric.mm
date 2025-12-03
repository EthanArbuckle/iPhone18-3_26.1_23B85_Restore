@interface AWDNetworkPerformanceMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAcceptablePerformanceResult:(BOOL)result;
- (void)setHasAwdlPowerState:(BOOL)state;
- (void)setHasBtIsConnectable:(BOOL)connectable;
- (void)setHasBtIsDiscoverable:(BOOL)discoverable;
- (void)setHasBtIsPowerOn:(BOOL)on;
- (void)setHasBtIsScanning:(BOOL)scanning;
- (void)setHasCellularAllowsVoip:(BOOL)voip;
- (void)setHasCellularDataIsEnabled:(BOOL)enabled;
- (void)setHasDownloadIsCellular:(BOOL)cellular;
- (void)setHasDownloadIsConstrained:(BOOL)constrained;
- (void)setHasDownloadIsExpensive:(BOOL)expensive;
- (void)setHasDownloadIsMultipath:(BOOL)multipath;
- (void)setHasDownloadIsProxyConnection:(BOOL)connection;
- (void)setHasDownloadIsReusedConnection:(BOOL)connection;
- (void)setHasNetworkIsAppleReachable:(BOOL)reachable;
- (void)setHasSystemLowPowerModeEnabled:(BOOL)enabled;
- (void)setHasSystemPowersourceConnected:(BOOL)connected;
- (void)setHasUploadIsCellular:(BOOL)cellular;
- (void)setHasUploadIsConstrained:(BOOL)constrained;
- (void)setHasUploadIsExpensive:(BOOL)expensive;
- (void)setHasUploadIsMultipath:(BOOL)multipath;
- (void)setHasUploadIsProxyConnection:(BOOL)connection;
- (void)setHasUploadIsReusedConnection:(BOOL)connection;
- (void)setHasUseWifiWasSpecified:(BOOL)specified;
- (void)setHasWifiIsCaptive:(BOOL)captive;
- (void)writeTo:(id)to;
@end

@implementation AWDNetworkPerformanceMetric

- (void)setHasAcceptablePerformanceResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasAwdlPowerState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasBtIsConnectable:(BOOL)connectable
{
  if (connectable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasBtIsDiscoverable:(BOOL)discoverable
{
  if (discoverable)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasBtIsPowerOn:(BOOL)on
{
  if (on)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasBtIsScanning:(BOOL)scanning
{
  if (scanning)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasCellularAllowsVoip:(BOOL)voip
{
  if (voip)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasDownloadIsCellular:(BOOL)cellular
{
  if (cellular)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasDownloadIsConstrained:(BOOL)constrained
{
  if (constrained)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDownloadIsExpensive:(BOOL)expensive
{
  if (expensive)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasDownloadIsMultipath:(BOOL)multipath
{
  if (multipath)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasDownloadIsProxyConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasDownloadIsReusedConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasNetworkIsAppleReachable:(BOOL)reachable
{
  if (reachable)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasSystemLowPowerModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasSystemPowersourceConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasUploadIsCellular:(BOOL)cellular
{
  if (cellular)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasUploadIsConstrained:(BOOL)constrained
{
  if (constrained)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasUploadIsExpensive:(BOOL)expensive
{
  if (expensive)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasUploadIsMultipath:(BOOL)multipath
{
  if (multipath)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasUploadIsProxyConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasUploadIsReusedConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasUseWifiWasSpecified:(BOOL)specified
{
  if (specified)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasWifiIsCaptive:(BOOL)captive
{
  if (captive)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasCellularDataIsEnabled:(BOOL)enabled
{
  if (enabled)
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
  dictionaryRepresentation = [(AWDNetworkPerformanceMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((*&has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_acceptablePerformanceResult];
    [dictionary setObject:v6 forKey:@"acceptable_performance_result"];
  }

  awdlElectionParameters = self->_awdlElectionParameters;
  if (awdlElectionParameters)
  {
    [dictionary setObject:awdlElectionParameters forKey:@"awdl_election_parameters"];
  }

  awdlMasterChannel = self->_awdlMasterChannel;
  if (awdlMasterChannel)
  {
    [dictionary setObject:awdlMasterChannel forKey:@"awdl_master_channel"];
  }

  awdlOpMode = self->_awdlOpMode;
  if (awdlOpMode)
  {
    [dictionary setObject:awdlOpMode forKey:@"awdl_op_mode"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_awdlPowerState];
    [dictionary setObject:v10 forKey:@"awdl_power_state"];
  }

  awdlSchedule = self->_awdlSchedule;
  if (awdlSchedule)
  {
    [dictionary setObject:awdlSchedule forKey:@"awdl_schedule"];
  }

  awdlSecondaryMasterChannel = self->_awdlSecondaryMasterChannel;
  if (awdlSecondaryMasterChannel)
  {
    [dictionary setObject:awdlSecondaryMasterChannel forKey:@"awdl_secondary_master_channel"];
  }

  awdlSyncChannelSequence = self->_awdlSyncChannelSequence;
  if (awdlSyncChannelSequence)
  {
    [dictionary setObject:awdlSyncChannelSequence forKey:@"awdl_sync_channel_sequence"];
  }

  awdlSyncState = self->_awdlSyncState;
  if (awdlSyncState)
  {
    [dictionary setObject:awdlSyncState forKey:@"awdl_sync_state"];
  }

  btConnectedDevicesCount = self->_btConnectedDevicesCount;
  if (btConnectedDevicesCount)
  {
    [dictionary setObject:btConnectedDevicesCount forKey:@"bt_connected_devices_count"];
  }

  v16 = self->_has;
  if ((*&v16 & 8) != 0)
  {
    v228 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsConnectable];
    [dictionary setObject:v228 forKey:@"bt_is_connectable"];

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
  [dictionary setObject:v229 forKey:@"bt_is_discoverable"];

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
  [dictionary setObject:v230 forKey:@"bt_is_power_on"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_btIsScanning];
    [dictionary setObject:v17 forKey:@"bt_is_scanning"];
  }

LABEL_28:
  callingClient = self->_callingClient;
  if (callingClient)
  {
    [dictionary setObject:callingClient forKey:@"calling_client"];
  }

  cellularActiveContexts = self->_cellularActiveContexts;
  if (cellularActiveContexts)
  {
    [dictionary setObject:cellularActiveContexts forKey:@"cellular_active_contexts"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularAllowsVoip];
    [dictionary setObject:v20 forKey:@"cellular_allows_voip"];
  }

  cellularAttached = self->_cellularAttached;
  if (cellularAttached)
  {
    [dictionary setObject:cellularAttached forKey:@"cellular_attached"];
  }

  cellularBandinfo = self->_cellularBandinfo;
  if (cellularBandinfo)
  {
    [dictionary setObject:cellularBandinfo forKey:@"cellular_bandinfo"];
  }

  cellularBandwidth = self->_cellularBandwidth;
  if (cellularBandwidth)
  {
    [dictionary setObject:cellularBandwidth forKey:@"cellular_bandwidth"];
  }

  cellularCarrierName = self->_cellularCarrierName;
  if (cellularCarrierName)
  {
    [dictionary setObject:cellularCarrierName forKey:@"cellular_carrier_name"];
  }

  cellularDataBearerSoMask = self->_cellularDataBearerSoMask;
  if (cellularDataBearerSoMask)
  {
    [dictionary setObject:cellularDataBearerSoMask forKey:@"cellular_data_bearer_so_mask"];
  }

  cellularDataBearerTechnology = self->_cellularDataBearerTechnology;
  if (cellularDataBearerTechnology)
  {
    [dictionary setObject:cellularDataBearerTechnology forKey:@"cellular_data_bearer_technology"];
  }

  cellularDataPlanSignalingReductionOverride = self->_cellularDataPlanSignalingReductionOverride;
  if (cellularDataPlanSignalingReductionOverride)
  {
    [dictionary setObject:cellularDataPlanSignalingReductionOverride forKey:@"cellular_data_plan_signaling_reduction_override"];
  }

  cellularDataPossible = self->_cellularDataPossible;
  if (cellularDataPossible)
  {
    [dictionary setObject:cellularDataPossible forKey:@"cellular_data_possible"];
  }

  cellularInHomeCountry = self->_cellularInHomeCountry;
  if (cellularInHomeCountry)
  {
    [dictionary setObject:cellularInHomeCountry forKey:@"cellular_in_home_country"];
  }

  cellularIndicator = self->_cellularIndicator;
  if (cellularIndicator)
  {
    [dictionary setObject:cellularIndicator forKey:@"cellular_indicator"];
  }

  cellularIndicatorOverride = self->_cellularIndicatorOverride;
  if (cellularIndicatorOverride)
  {
    [dictionary setObject:cellularIndicatorOverride forKey:@"cellular_indicator_override"];
  }

  cellularIsoCountryCode = self->_cellularIsoCountryCode;
  if (cellularIsoCountryCode)
  {
    [dictionary setObject:cellularIsoCountryCode forKey:@"cellular_iso_country_code"];
  }

  cellularLqm = self->_cellularLqm;
  if (cellularLqm)
  {
    [dictionary setObject:cellularLqm forKey:@"cellular_lqm"];
  }

  cellularLteMaxScheduledLayers = self->_cellularLteMaxScheduledLayers;
  if (cellularLteMaxScheduledLayers)
  {
    [dictionary setObject:cellularLteMaxScheduledLayers forKey:@"cellular_lte_max_scheduled_layers"];
  }

  cellularMobileCountryCode = self->_cellularMobileCountryCode;
  if (cellularMobileCountryCode)
  {
    [dictionary setObject:cellularMobileCountryCode forKey:@"cellular_mobile_country_code"];
  }

  cellularMobileNetworkCode = self->_cellularMobileNetworkCode;
  if (cellularMobileNetworkCode)
  {
    [dictionary setObject:cellularMobileNetworkCode forKey:@"cellular_mobile_network_code"];
  }

  cellularNewRadioCoverage = self->_cellularNewRadioCoverage;
  if (cellularNewRadioCoverage)
  {
    [dictionary setObject:cellularNewRadioCoverage forKey:@"cellular_new_radio_coverage"];
  }

  cellularNewRadioDataBearer = self->_cellularNewRadioDataBearer;
  if (cellularNewRadioDataBearer)
  {
    [dictionary setObject:cellularNewRadioDataBearer forKey:@"cellular_new_radio_data_bearer"];
  }

  cellularNewRadioMmwaveDataBearer = self->_cellularNewRadioMmwaveDataBearer;
  if (cellularNewRadioMmwaveDataBearer)
  {
    [dictionary setObject:cellularNewRadioMmwaveDataBearer forKey:@"cellular_new_radio_mmwave_data_bearer"];
  }

  cellularNewRadioNsaCoverage = self->_cellularNewRadioNsaCoverage;
  if (cellularNewRadioNsaCoverage)
  {
    [dictionary setObject:cellularNewRadioNsaCoverage forKey:@"cellular_new_radio_nsa_coverage"];
  }

  cellularNewRadioNsaDataBearer = self->_cellularNewRadioNsaDataBearer;
  if (cellularNewRadioNsaDataBearer)
  {
    [dictionary setObject:cellularNewRadioNsaDataBearer forKey:@"cellular_new_radio_nsa_data_bearer"];
  }

  cellularNewRadioSaCoverage = self->_cellularNewRadioSaCoverage;
  if (cellularNewRadioSaCoverage)
  {
    [dictionary setObject:cellularNewRadioSaCoverage forKey:@"cellular_new_radio_sa_coverage"];
  }

  cellularNewRadioSaDataBearer = self->_cellularNewRadioSaDataBearer;
  if (cellularNewRadioSaDataBearer)
  {
    [dictionary setObject:cellularNewRadioSaDataBearer forKey:@"cellular_new_radio_sa_data_bearer"];
  }

  cellularNewRadioSub6DataBearer = self->_cellularNewRadioSub6DataBearer;
  if (cellularNewRadioSub6DataBearer)
  {
    [dictionary setObject:cellularNewRadioSub6DataBearer forKey:@"cellular_new_radio_sub6_data_bearer"];
  }

  cellularNrConfiguredBw = self->_cellularNrConfiguredBw;
  if (cellularNrConfiguredBw)
  {
    [dictionary setObject:cellularNrConfiguredBw forKey:@"cellular_nr_configured_bw"];
  }

  cellularNrLayers = self->_cellularNrLayers;
  if (cellularNrLayers)
  {
    [dictionary setObject:cellularNrLayers forKey:@"cellular_nr_layers"];
  }

  cellularNrModulation = self->_cellularNrModulation;
  if (cellularNrModulation)
  {
    [dictionary setObject:cellularNrModulation forKey:@"cellular_nr_modulation"];
  }

  cellularNrRsrp = self->_cellularNrRsrp;
  if (cellularNrRsrp)
  {
    [dictionary setObject:cellularNrRsrp forKey:@"cellular_nr_rsrp"];
  }

  cellularNrRsrq = self->_cellularNrRsrq;
  if (cellularNrRsrq)
  {
    [dictionary setObject:cellularNrRsrq forKey:@"cellular_nr_rsrq"];
  }

  cellularNrSnr = self->_cellularNrSnr;
  if (cellularNrSnr)
  {
    [dictionary setObject:cellularNrSnr forKey:@"cellular_nr_snr"];
  }

  cellularPid = self->_cellularPid;
  if (cellularPid)
  {
    [dictionary setObject:cellularPid forKey:@"cellular_pid"];
  }

  cellularRadioAccessTechnology = self->_cellularRadioAccessTechnology;
  if (cellularRadioAccessTechnology)
  {
    [dictionary setObject:cellularRadioAccessTechnology forKey:@"cellular_radio_access_technology"];
  }

  cellularRadioAccessTechnologyCtDataStatus = self->_cellularRadioAccessTechnologyCtDataStatus;
  if (cellularRadioAccessTechnologyCtDataStatus)
  {
    [dictionary setObject:cellularRadioAccessTechnologyCtDataStatus forKey:@"cellular_radio_access_technology_ct_data_status"];
  }

  cellularRoamAllowed = self->_cellularRoamAllowed;
  if (cellularRoamAllowed)
  {
    [dictionary setObject:cellularRoamAllowed forKey:@"cellular_roam_allowed"];
  }

  cellularRsrp = self->_cellularRsrp;
  if (cellularRsrp)
  {
    [dictionary setObject:cellularRsrp forKey:@"cellular_rsrp"];
  }

  cellularSnr = self->_cellularSnr;
  if (cellularSnr)
  {
    [dictionary setObject:cellularSnr forKey:@"cellular_snr"];
  }

  cellularTac = self->_cellularTac;
  if (cellularTac)
  {
    [dictionary setObject:cellularTac forKey:@"cellular_tac"];
  }

  cellularTotalActiveContexts = self->_cellularTotalActiveContexts;
  if (cellularTotalActiveContexts)
  {
    [dictionary setObject:cellularTotalActiveContexts forKey:@"cellular_total_active_contexts"];
  }

  cellularTotalBw = self->_cellularTotalBw;
  if (cellularTotalBw)
  {
    [dictionary setObject:cellularTotalBw forKey:@"cellular_total_bw"];
  }

  cellularTotalCcs = self->_cellularTotalCcs;
  if (cellularTotalCcs)
  {
    [dictionary setObject:cellularTotalCcs forKey:@"cellular_total_ccs"];
  }

  cellularTotalLayers = self->_cellularTotalLayers;
  if (cellularTotalLayers)
  {
    [dictionary setObject:cellularTotalLayers forKey:@"cellular_total_layers"];
  }

  cellularUarfcn = self->_cellularUarfcn;
  if (cellularUarfcn)
  {
    [dictionary setObject:cellularUarfcn forKey:@"cellular_uarfcn"];
  }

  downloadCdnPop = self->_downloadCdnPop;
  if (downloadCdnPop)
  {
    [dictionary setObject:downloadCdnPop forKey:@"download_cdn_pop"];
  }

  downloadCdnUuid = self->_downloadCdnUuid;
  if (downloadCdnUuid)
  {
    [dictionary setObject:downloadCdnUuid forKey:@"download_cdn_uuid"];
  }

  downloadConnectionTime = self->_downloadConnectionTime;
  if (downloadConnectionTime)
  {
    [dictionary setObject:downloadConnectionTime forKey:@"download_connection_time"];
  }

  downloadDomainLookupTime = self->_downloadDomainLookupTime;
  if (downloadDomainLookupTime)
  {
    [dictionary setObject:downloadDomainLookupTime forKey:@"download_domain_lookup_time"];
  }

  downloadEndDataBearerTechnology = self->_downloadEndDataBearerTechnology;
  if (downloadEndDataBearerTechnology)
  {
    [dictionary setObject:downloadEndDataBearerTechnology forKey:@"download_end_data_bearer_technology"];
  }

  downloadEndPrimaryIpv4Interface = self->_downloadEndPrimaryIpv4Interface;
  if (downloadEndPrimaryIpv4Interface)
  {
    [dictionary setObject:downloadEndPrimaryIpv4Interface forKey:@"download_end_primary_ipv4_interface"];
  }

  downloadEndRat = self->_downloadEndRat;
  if (downloadEndRat)
  {
    [dictionary setObject:downloadEndRat forKey:@"download_end_rat"];
  }

  downloadFileSize = self->_downloadFileSize;
  if (downloadFileSize)
  {
    [dictionary setObject:downloadFileSize forKey:@"download_file_size"];
  }

  downloadInterfaceName = self->_downloadInterfaceName;
  if (downloadInterfaceName)
  {
    [dictionary setObject:downloadInterfaceName forKey:@"download_interface_name"];
  }

  downloadInterfaceServiceName = self->_downloadInterfaceServiceName;
  if (downloadInterfaceServiceName)
  {
    [dictionary setObject:downloadInterfaceServiceName forKey:@"download_interface_service_name"];
  }

  v73 = self->_has;
  if ((*&v73 & 0x200) != 0)
  {
    v231 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsCellular];
    [dictionary setObject:v231 forKey:@"download_is_cellular"];

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
  [dictionary setObject:v232 forKey:@"download_is_constrained"];

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
  [dictionary setObject:v233 forKey:@"download_is_expensive"];

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
  [dictionary setObject:v234 forKey:@"download_is_multipath"];

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
  [dictionary setObject:v235 forKey:@"download_is_proxy_connection"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_144:
    v74 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadIsReusedConnection];
    [dictionary setObject:v74 forKey:@"download_is_reused_connection"];
  }

LABEL_145:
  downloadMaxSpeedObserved = self->_downloadMaxSpeedObserved;
  if (downloadMaxSpeedObserved)
  {
    [dictionary setObject:downloadMaxSpeedObserved forKey:@"download_max_speed_observed"];
  }

  downloadNumberOfStreams = self->_downloadNumberOfStreams;
  if (downloadNumberOfStreams)
  {
    [dictionary setObject:downloadNumberOfStreams forKey:@"download_number_of_streams"];
  }

  downloadProtocolName = self->_downloadProtocolName;
  if (downloadProtocolName)
  {
    [dictionary setObject:downloadProtocolName forKey:@"download_protocol_name"];
  }

  downloadRemoteAddress = self->_downloadRemoteAddress;
  if (downloadRemoteAddress)
  {
    [dictionary setObject:downloadRemoteAddress forKey:@"download_remote_address"];
  }

  downloadRemotePort = self->_downloadRemotePort;
  if (downloadRemotePort)
  {
    [dictionary setObject:downloadRemotePort forKey:@"download_remote_port"];
  }

  downloadRequestTime = self->_downloadRequestTime;
  if (downloadRequestTime)
  {
    [dictionary setObject:downloadRequestTime forKey:@"download_request_time"];
  }

  downloadRequestToResponseTime = self->_downloadRequestToResponseTime;
  if (downloadRequestToResponseTime)
  {
    [dictionary setObject:downloadRequestToResponseTime forKey:@"download_request_to_response_time"];
  }

  downloadResponseTime = self->_downloadResponseTime;
  if (downloadResponseTime)
  {
    [dictionary setObject:downloadResponseTime forKey:@"download_response_time"];
  }

  downloadSecureConnectionTime = self->_downloadSecureConnectionTime;
  if (downloadSecureConnectionTime)
  {
    [dictionary setObject:downloadSecureConnectionTime forKey:@"download_secure_connection_time"];
  }

  downloadServer = self->_downloadServer;
  if (downloadServer)
  {
    [dictionary setObject:downloadServer forKey:@"download_server"];
  }

  downloadSpeed = self->_downloadSpeed;
  if (downloadSpeed)
  {
    [dictionary setObject:downloadSpeed forKey:@"download_speed"];
  }

  downloadStableSpeed = self->_downloadStableSpeed;
  if (downloadStableSpeed)
  {
    [dictionary setObject:downloadStableSpeed forKey:@"download_stable_speed"];
  }

  downloadStartDataBearerTechnology = self->_downloadStartDataBearerTechnology;
  if (downloadStartDataBearerTechnology)
  {
    [dictionary setObject:downloadStartDataBearerTechnology forKey:@"download_start_data_bearer_technology"];
  }

  downloadStartPrimaryIpv4Interface = self->_downloadStartPrimaryIpv4Interface;
  if (downloadStartPrimaryIpv4Interface)
  {
    [dictionary setObject:downloadStartPrimaryIpv4Interface forKey:@"download_start_primary_ipv4_interface"];
  }

  downloadStartRat = self->_downloadStartRat;
  if (downloadStartRat)
  {
    [dictionary setObject:downloadStartRat forKey:@"download_start_rat"];
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v90 = [MEMORY[0x277CCABB0] numberWithBool:self->_networkIsAppleReachable];
    [dictionary setObject:v90 forKey:@"network_is_apple_reachable"];
  }

  networkPrimaryIpv4InterfaceName = self->_networkPrimaryIpv4InterfaceName;
  if (networkPrimaryIpv4InterfaceName)
  {
    [dictionary setObject:networkPrimaryIpv4InterfaceName forKey:@"network_primary_ipv4_interface_name"];
  }

  networkPrimaryIpv4ServiceName = self->_networkPrimaryIpv4ServiceName;
  if (networkPrimaryIpv4ServiceName)
  {
    [dictionary setObject:networkPrimaryIpv4ServiceName forKey:@"network_primary_ipv4_service_name"];
  }

  nptkitFrameworkVersion = self->_nptkitFrameworkVersion;
  if (nptkitFrameworkVersion)
  {
    [dictionary setObject:nptkitFrameworkVersion forKey:@"nptkit_framework_version"];
  }

  performanceTestStartTime = self->_performanceTestStartTime;
  if (performanceTestStartTime)
  {
    [dictionary setObject:performanceTestStartTime forKey:@"performance_test_start_time"];
  }

  pingAddress = self->_pingAddress;
  if (pingAddress)
  {
    [dictionary setObject:pingAddress forKey:@"ping_address"];
  }

  pingLossPercent = self->_pingLossPercent;
  if (pingLossPercent)
  {
    [dictionary setObject:pingLossPercent forKey:@"ping_loss_percent"];
  }

  pingMaxLatency = self->_pingMaxLatency;
  if (pingMaxLatency)
  {
    [dictionary setObject:pingMaxLatency forKey:@"ping_max_latency"];
  }

  pingMeanLatency = self->_pingMeanLatency;
  if (pingMeanLatency)
  {
    [dictionary setObject:pingMeanLatency forKey:@"ping_mean_latency"];
  }

  pingMinLatency = self->_pingMinLatency;
  if (pingMinLatency)
  {
    [dictionary setObject:pingMinLatency forKey:@"ping_min_latency"];
  }

  pingStandardDeviation = self->_pingStandardDeviation;
  if (pingStandardDeviation)
  {
    [dictionary setObject:pingStandardDeviation forKey:@"ping_standard_deviation"];
  }

  powerBatteryWarningLevel = self->_powerBatteryWarningLevel;
  if (powerBatteryWarningLevel)
  {
    [dictionary setObject:powerBatteryWarningLevel forKey:@"power_battery_warning_level"];
  }

  powerSourceType = self->_powerSourceType;
  if (powerSourceType)
  {
    [dictionary setObject:powerSourceType forKey:@"power_source_type"];
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps)
  {
    [dictionary setObject:powerStateCaps forKey:@"power_state_caps"];
  }

  systemActiveProcessorCount = self->_systemActiveProcessorCount;
  if (systemActiveProcessorCount)
  {
    [dictionary setObject:systemActiveProcessorCount forKey:@"system_active_processor_count"];
  }

  systemBatteryLevel = self->_systemBatteryLevel;
  if (systemBatteryLevel)
  {
    [dictionary setObject:systemBatteryLevel forKey:@"system_battery_level"];
  }

  systemBatteryState = self->_systemBatteryState;
  if (systemBatteryState)
  {
    [dictionary setObject:systemBatteryState forKey:@"system_battery_state"];
  }

  systemDeviceClass = self->_systemDeviceClass;
  if (systemDeviceClass)
  {
    [dictionary setObject:systemDeviceClass forKey:@"system_device_class"];
  }

  systemDeviceModel = self->_systemDeviceModel;
  if (systemDeviceModel)
  {
    [dictionary setObject:systemDeviceModel forKey:@"system_device_model"];
  }

  if (*(&self->_has + 2))
  {
    v109 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemLowPowerModeEnabled];
    [dictionary setObject:v109 forKey:@"system_low_power_mode_enabled"];
  }

  systemName = self->_systemName;
  if (systemName)
  {
    [dictionary setObject:systemName forKey:@"system_name"];
  }

  systemOsVariant = self->_systemOsVariant;
  if (systemOsVariant)
  {
    [dictionary setObject:systemOsVariant forKey:@"system_os_variant"];
  }

  systemPhysicalMemory = self->_systemPhysicalMemory;
  if (systemPhysicalMemory)
  {
    [dictionary setObject:systemPhysicalMemory forKey:@"system_physical_memory"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v113 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemPowersourceConnected];
    [dictionary setObject:v113 forKey:@"system_powersource_connected"];
  }

  systemProcessorCount = self->_systemProcessorCount;
  if (systemProcessorCount)
  {
    [dictionary setObject:systemProcessorCount forKey:@"system_processor_count"];
  }

  systemVersion = self->_systemVersion;
  if (systemVersion)
  {
    [dictionary setObject:systemVersion forKey:@"system_version"];
  }

  uploadCdnPop = self->_uploadCdnPop;
  if (uploadCdnPop)
  {
    [dictionary setObject:uploadCdnPop forKey:@"upload_cdn_pop"];
  }

  uploadCdnUuid = self->_uploadCdnUuid;
  if (uploadCdnUuid)
  {
    [dictionary setObject:uploadCdnUuid forKey:@"upload_cdn_uuid"];
  }

  uploadConnectionTime = self->_uploadConnectionTime;
  if (uploadConnectionTime)
  {
    [dictionary setObject:uploadConnectionTime forKey:@"upload_connection_time"];
  }

  uploadDomainLookupTime = self->_uploadDomainLookupTime;
  if (uploadDomainLookupTime)
  {
    [dictionary setObject:uploadDomainLookupTime forKey:@"upload_domain_lookup_time"];
  }

  uploadEndDataBearerTechnology = self->_uploadEndDataBearerTechnology;
  if (uploadEndDataBearerTechnology)
  {
    [dictionary setObject:uploadEndDataBearerTechnology forKey:@"upload_end_data_bearer_technology"];
  }

  uploadEndPrimaryIpv4Interface = self->_uploadEndPrimaryIpv4Interface;
  if (uploadEndPrimaryIpv4Interface)
  {
    [dictionary setObject:uploadEndPrimaryIpv4Interface forKey:@"upload_end_primary_ipv4_interface"];
  }

  uploadEndRat = self->_uploadEndRat;
  if (uploadEndRat)
  {
    [dictionary setObject:uploadEndRat forKey:@"upload_end_rat"];
  }

  uploadFileSize = self->_uploadFileSize;
  if (uploadFileSize)
  {
    [dictionary setObject:uploadFileSize forKey:@"upload_file_size"];
  }

  uploadInterfaceName = self->_uploadInterfaceName;
  if (uploadInterfaceName)
  {
    [dictionary setObject:uploadInterfaceName forKey:@"upload_interface_name"];
  }

  uploadInterfaceServiceName = self->_uploadInterfaceServiceName;
  if (uploadInterfaceServiceName)
  {
    [dictionary setObject:uploadInterfaceServiceName forKey:@"upload_interface_service_name"];
  }

  v126 = self->_has;
  if ((*&v126 & 0x40000) != 0)
  {
    v236 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsCellular];
    [dictionary setObject:v236 forKey:@"upload_is_cellular"];

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
  [dictionary setObject:v237 forKey:@"upload_is_constrained"];

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
  [dictionary setObject:v238 forKey:@"upload_is_expensive"];

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
  [dictionary setObject:v239 forKey:@"upload_is_multipath"];

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
  [dictionary setObject:v240 forKey:@"upload_is_proxy_connection"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_253:
    v127 = [MEMORY[0x277CCABB0] numberWithBool:self->_uploadIsReusedConnection];
    [dictionary setObject:v127 forKey:@"upload_is_reused_connection"];
  }

LABEL_254:
  uploadMaxSpeedObserved = self->_uploadMaxSpeedObserved;
  if (uploadMaxSpeedObserved)
  {
    [dictionary setObject:uploadMaxSpeedObserved forKey:@"upload_max_speed_observed"];
  }

  uploadNumberOfStreams = self->_uploadNumberOfStreams;
  if (uploadNumberOfStreams)
  {
    [dictionary setObject:uploadNumberOfStreams forKey:@"upload_number_of_streams"];
  }

  uploadProtocolName = self->_uploadProtocolName;
  if (uploadProtocolName)
  {
    [dictionary setObject:uploadProtocolName forKey:@"upload_protocol_name"];
  }

  uploadRemoteAddress = self->_uploadRemoteAddress;
  if (uploadRemoteAddress)
  {
    [dictionary setObject:uploadRemoteAddress forKey:@"upload_remote_address"];
  }

  uploadRemotePort = self->_uploadRemotePort;
  if (uploadRemotePort)
  {
    [dictionary setObject:uploadRemotePort forKey:@"upload_remote_port"];
  }

  uploadRequestTime = self->_uploadRequestTime;
  if (uploadRequestTime)
  {
    [dictionary setObject:uploadRequestTime forKey:@"upload_request_time"];
  }

  uploadRequestToResponseTime = self->_uploadRequestToResponseTime;
  if (uploadRequestToResponseTime)
  {
    [dictionary setObject:uploadRequestToResponseTime forKey:@"upload_request_to_response_time"];
  }

  uploadResponseTime = self->_uploadResponseTime;
  if (uploadResponseTime)
  {
    [dictionary setObject:uploadResponseTime forKey:@"upload_response_time"];
  }

  uploadSecureConnectionTime = self->_uploadSecureConnectionTime;
  if (uploadSecureConnectionTime)
  {
    [dictionary setObject:uploadSecureConnectionTime forKey:@"upload_secure_connection_time"];
  }

  uploadServer = self->_uploadServer;
  if (uploadServer)
  {
    [dictionary setObject:uploadServer forKey:@"upload_server"];
  }

  uploadSpeed = self->_uploadSpeed;
  if (uploadSpeed)
  {
    [dictionary setObject:uploadSpeed forKey:@"upload_speed"];
  }

  uploadStableSpeed = self->_uploadStableSpeed;
  if (uploadStableSpeed)
  {
    [dictionary setObject:uploadStableSpeed forKey:@"upload_stable_speed"];
  }

  uploadStartDataBearerTechnology = self->_uploadStartDataBearerTechnology;
  if (uploadStartDataBearerTechnology)
  {
    [dictionary setObject:uploadStartDataBearerTechnology forKey:@"upload_start_data_bearer_technology"];
  }

  uploadStartPrimaryIpv4Interface = self->_uploadStartPrimaryIpv4Interface;
  if (uploadStartPrimaryIpv4Interface)
  {
    [dictionary setObject:uploadStartPrimaryIpv4Interface forKey:@"upload_start_primary_ipv4_interface"];
  }

  uploadStartRat = self->_uploadStartRat;
  if (uploadStartRat)
  {
    [dictionary setObject:uploadStartRat forKey:@"upload_start_rat"];
  }

  if (*(&self->_has + 3))
  {
    v143 = [MEMORY[0x277CCABB0] numberWithBool:self->_useWifiWasSpecified];
    [dictionary setObject:v143 forKey:@"use_wifi_was_specified"];
  }

  wifiAveragePhyRateRx = self->_wifiAveragePhyRateRx;
  if (wifiAveragePhyRateRx)
  {
    [dictionary setObject:wifiAveragePhyRateRx forKey:@"wifi_average_phy_rate_rx"];
  }

  wifiAverageRssi = self->_wifiAverageRssi;
  if (wifiAverageRssi)
  {
    [dictionary setObject:wifiAverageRssi forKey:@"wifi_average_rssi"];
  }

  wifiAverageSnr = self->_wifiAverageSnr;
  if (wifiAverageSnr)
  {
    [dictionary setObject:wifiAverageSnr forKey:@"wifi_average_snr"];
  }

  wifiAverageTcpRtt = self->_wifiAverageTcpRtt;
  if (wifiAverageTcpRtt)
  {
    [dictionary setObject:wifiAverageTcpRtt forKey:@"wifi_average_tcp_rtt"];
  }

  wifiBtcMode = self->_wifiBtcMode;
  if (wifiBtcMode)
  {
    [dictionary setObject:wifiBtcMode forKey:@"wifi_btc_mode"];
  }

  wifiCca = self->_wifiCca;
  if (wifiCca)
  {
    [dictionary setObject:wifiCca forKey:@"wifi_cca"];
  }

  wifiChannel = self->_wifiChannel;
  if (wifiChannel)
  {
    [dictionary setObject:wifiChannel forKey:@"wifi_channel"];
  }

  wifiCwfCca = self->_wifiCwfCca;
  if (wifiCwfCca)
  {
    [dictionary setObject:wifiCwfCca forKey:@"wifi_cwf_cca"];
  }

  wifiEapolControlMode = self->_wifiEapolControlMode;
  if (wifiEapolControlMode)
  {
    [dictionary setObject:wifiEapolControlMode forKey:@"wifi_eapol_control_mode"];
  }

  wifiEapolSupplicantState = self->_wifiEapolSupplicantState;
  if (wifiEapolSupplicantState)
  {
    [dictionary setObject:wifiEapolSupplicantState forKey:@"wifi_eapol_supplicant_state"];
  }

  wifiGuardInterval = self->_wifiGuardInterval;
  if (wifiGuardInterval)
  {
    [dictionary setObject:wifiGuardInterval forKey:@"wifi_guard_interval"];
  }

  wifiHiddenState = self->_wifiHiddenState;
  if (wifiHiddenState)
  {
    [dictionary setObject:wifiHiddenState forKey:@"wifi_hidden_state"];
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v156 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiIsCaptive];
    [dictionary setObject:v156 forKey:@"wifi_is_captive"];
  }

  wifiMcsIndex = self->_wifiMcsIndex;
  if (wifiMcsIndex)
  {
    [dictionary setObject:wifiMcsIndex forKey:@"wifi_mcs_index"];
  }

  wifiNoise = self->_wifiNoise;
  if (wifiNoise)
  {
    [dictionary setObject:wifiNoise forKey:@"wifi_noise"];
  }

  wifiNumberOfSpatialStreams = self->_wifiNumberOfSpatialStreams;
  if (wifiNumberOfSpatialStreams)
  {
    [dictionary setObject:wifiNumberOfSpatialStreams forKey:@"wifi_number_of_spatial_streams"];
  }

  wifiOpMode = self->_wifiOpMode;
  if (wifiOpMode)
  {
    [dictionary setObject:wifiOpMode forKey:@"wifi_op_mode"];
  }

  wifiPhyMode = self->_wifiPhyMode;
  if (wifiPhyMode)
  {
    [dictionary setObject:wifiPhyMode forKey:@"wifi_phy_mode"];
  }

  wifiRssi = self->_wifiRssi;
  if (wifiRssi)
  {
    [dictionary setObject:wifiRssi forKey:@"wifi_rssi"];
  }

  wifiSecurity = self->_wifiSecurity;
  if (wifiSecurity)
  {
    [dictionary setObject:wifiSecurity forKey:@"wifi_security"];
  }

  wifiTxRate = self->_wifiTxRate;
  if (wifiTxRate)
  {
    [dictionary setObject:wifiTxRate forKey:@"wifi_tx_rate"];
  }

  wrmChannelType = self->_wrmChannelType;
  if (wrmChannelType)
  {
    [dictionary setObject:wrmChannelType forKey:@"wrm_channel_type"];
  }

  cellularCellid = self->_cellularCellid;
  if (cellularCellid)
  {
    [dictionary setObject:cellularCellid forKey:@"cellular_cellid"];
  }

  networkQualityResponsiveness = self->_networkQualityResponsiveness;
  if (networkQualityResponsiveness)
  {
    [dictionary setObject:networkQualityResponsiveness forKey:@"network_quality_responsiveness"];
  }

  cellularAggregatedDLBW = self->_cellularAggregatedDLBW;
  if (cellularAggregatedDLBW)
  {
    [dictionary setObject:cellularAggregatedDLBW forKey:@"cellular_aggregated_DL_BW"];
  }

  cellularAggregatedULBW = self->_cellularAggregatedULBW;
  if (cellularAggregatedULBW)
  {
    [dictionary setObject:cellularAggregatedULBW forKey:@"cellular_aggregated_UL_BW"];
  }

  cellularIssa = self->_cellularIssa;
  if (cellularIssa)
  {
    [dictionary setObject:cellularIssa forKey:@"cellular_issa"];
  }

  cellularLac = self->_cellularLac;
  if (cellularLac)
  {
    [dictionary setObject:cellularLac forKey:@"cellular_lac"];
  }

  cellularLteNrConfiguredBw = self->_cellularLteNrConfiguredBw;
  if (cellularLteNrConfiguredBw)
  {
    [dictionary setObject:cellularLteNrConfiguredBw forKey:@"cellular_lte_nr_configured_bw"];
  }

  cellularMaxDlMod = self->_cellularMaxDlMod;
  if (cellularMaxDlMod)
  {
    [dictionary setObject:cellularMaxDlMod forKey:@"cellular_max_dl_mod"];
  }

  cellularMaxNwMimoLyr = self->_cellularMaxNwMimoLyr;
  if (cellularMaxNwMimoLyr)
  {
    [dictionary setObject:cellularMaxNwMimoLyr forKey:@"cellular_max_nw_mimo_lyr"];
  }

  cellularMaxSchdMimoLyr = self->_cellularMaxSchdMimoLyr;
  if (cellularMaxSchdMimoLyr)
  {
    [dictionary setObject:cellularMaxSchdMimoLyr forKey:@"cellular_max_schd_mimo_lyr"];
  }

  cellularMaxUeRank = self->_cellularMaxUeRank;
  if (cellularMaxUeRank)
  {
    [dictionary setObject:cellularMaxUeRank forKey:@"cellular_max_ue_rank"];
  }

  cellularMaxUlMod = self->_cellularMaxUlMod;
  if (cellularMaxUlMod)
  {
    [dictionary setObject:cellularMaxUlMod forKey:@"cellular_max_ul_mod"];
  }

  cellularNrSinr = self->_cellularNrSinr;
  if (cellularNrSinr)
  {
    [dictionary setObject:cellularNrSinr forKey:@"cellular_nr_sinr"];
  }

  cellularNrarfcn = self->_cellularNrarfcn;
  if (cellularNrarfcn)
  {
    [dictionary setObject:cellularNrarfcn forKey:@"cellular_nrarfcn"];
  }

  cellularRadioFrequency = self->_cellularRadioFrequency;
  if (cellularRadioFrequency)
  {
    [dictionary setObject:cellularRadioFrequency forKey:@"cellular_radio_frequency"];
  }

  cellularTotalDlMimoLayers = self->_cellularTotalDlMimoLayers;
  if (cellularTotalDlMimoLayers)
  {
    [dictionary setObject:cellularTotalDlMimoLayers forKey:@"cellular_total_dl_mimo_layers"];
  }

  cellularTotalNumCcs = self->_cellularTotalNumCcs;
  if (cellularTotalNumCcs)
  {
    [dictionary setObject:cellularTotalNumCcs forKey:@"cellular_total_num_ccs"];
  }

  downloadStartRadioFrequency = self->_downloadStartRadioFrequency;
  if (downloadStartRadioFrequency)
  {
    [dictionary setObject:downloadStartRadioFrequency forKey:@"download_start_radio_frequency"];
  }

  downloadEndRadioFrequency = self->_downloadEndRadioFrequency;
  if (downloadEndRadioFrequency)
  {
    [dictionary setObject:downloadEndRadioFrequency forKey:@"download_end_radio_frequency"];
  }

  networkPrimaryIpv6InterfaceName = self->_networkPrimaryIpv6InterfaceName;
  if (networkPrimaryIpv6InterfaceName)
  {
    [dictionary setObject:networkPrimaryIpv6InterfaceName forKey:@"network_primary_ipv6_interface_name"];
  }

  networkPrimaryIpv6ServiceName = self->_networkPrimaryIpv6ServiceName;
  if (networkPrimaryIpv6ServiceName)
  {
    [dictionary setObject:networkPrimaryIpv6ServiceName forKey:@"network_primary_ipv6_service_name"];
  }

  uploadStartRadioFrequency = self->_uploadStartRadioFrequency;
  if (uploadStartRadioFrequency)
  {
    [dictionary setObject:uploadStartRadioFrequency forKey:@"upload_start_radio_frequency"];
  }

  uploadEndRadioFrequency = self->_uploadEndRadioFrequency;
  if (uploadEndRadioFrequency)
  {
    [dictionary setObject:uploadEndRadioFrequency forKey:@"upload_end_radio_frequency"];
  }

  downloadError = self->_downloadError;
  if (downloadError)
  {
    [dictionary setObject:downloadError forKey:@"download_error"];
  }

  networkQualityError = self->_networkQualityError;
  if (networkQualityError)
  {
    [dictionary setObject:networkQualityError forKey:@"network_quality_error"];
  }

  networkQualityDownloadSpeed = self->_networkQualityDownloadSpeed;
  if (networkQualityDownloadSpeed)
  {
    [dictionary setObject:networkQualityDownloadSpeed forKey:@"network_quality_download_speed"];
  }

  networkQualityUploadSpeed = self->_networkQualityUploadSpeed;
  if (networkQualityUploadSpeed)
  {
    [dictionary setObject:networkQualityUploadSpeed forKey:@"network_quality_upload_speed"];
  }

  networkQualityRating = self->_networkQualityRating;
  if (networkQualityRating)
  {
    [dictionary setObject:networkQualityRating forKey:@"network_quality_rating"];
  }

  vpnConnectionState = self->_vpnConnectionState;
  if (vpnConnectionState)
  {
    [dictionary setObject:vpnConnectionState forKey:@"vpn_connection_state"];
  }

  uploadError = self->_uploadError;
  if (uploadError)
  {
    [dictionary setObject:uploadError forKey:@"upload_error"];
  }

  uploadErrorDomain = self->_uploadErrorDomain;
  if (uploadErrorDomain)
  {
    [dictionary setObject:uploadErrorDomain forKey:@"upload_error_domain"];
  }

  uploadErrorCode = self->_uploadErrorCode;
  if (uploadErrorCode)
  {
    [dictionary setObject:uploadErrorCode forKey:@"upload_error_code"];
  }

  downloadErrorDomain = self->_downloadErrorDomain;
  if (downloadErrorDomain)
  {
    [dictionary setObject:downloadErrorDomain forKey:@"download_error_domain"];
  }

  downloadErrorCode = self->_downloadErrorCode;
  if (downloadErrorCode)
  {
    [dictionary setObject:downloadErrorCode forKey:@"download_error_code"];
  }

  pingError = self->_pingError;
  if (pingError)
  {
    [dictionary setObject:pingError forKey:@"ping_error"];
  }

  pingErrorDomain = self->_pingErrorDomain;
  if (pingErrorDomain)
  {
    [dictionary setObject:pingErrorDomain forKey:@"ping_error_domain"];
  }

  pingErrorCode = self->_pingErrorCode;
  if (pingErrorCode)
  {
    [dictionary setObject:pingErrorCode forKey:@"ping_error_code"];
  }

  networkQualityErrorDomain = self->_networkQualityErrorDomain;
  if (networkQualityErrorDomain)
  {
    [dictionary setObject:networkQualityErrorDomain forKey:@"network_quality_error_domain"];
  }

  networkQualityErrorCode = self->_networkQualityErrorCode;
  if (networkQualityErrorCode)
  {
    [dictionary setObject:networkQualityErrorCode forKey:@"network_quality_error_code"];
  }

  cellularRnMobileCountryCode = self->_cellularRnMobileCountryCode;
  if (cellularRnMobileCountryCode)
  {
    [dictionary setObject:cellularRnMobileCountryCode forKey:@"cellular_rn_mobile_country_code"];
  }

  cellularRnMobileNetworkCode = self->_cellularRnMobileNetworkCode;
  if (cellularRnMobileNetworkCode)
  {
    [dictionary setObject:cellularRnMobileNetworkCode forKey:@"cellular_rn_mobile_network_code"];
  }

  if (*(&self->_has + 1))
  {
    v207 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularDataIsEnabled];
    [dictionary setObject:v207 forKey:@"cellular_data_is_enabled"];
  }

  downloadStartCellularEstimate = self->_downloadStartCellularEstimate;
  if (downloadStartCellularEstimate)
  {
    [dictionary setObject:downloadStartCellularEstimate forKey:@"download_start_cellular_estimate"];
  }

  downloadEndCellularEstimate = self->_downloadEndCellularEstimate;
  if (downloadEndCellularEstimate)
  {
    [dictionary setObject:downloadEndCellularEstimate forKey:@"download_end_cellular_estimate"];
  }

  downloadMaxCellularEstimate = self->_downloadMaxCellularEstimate;
  if (downloadMaxCellularEstimate)
  {
    [dictionary setObject:downloadMaxCellularEstimate forKey:@"download_max_cellular_estimate"];
  }

  uploadStartCellularEstimate = self->_uploadStartCellularEstimate;
  if (uploadStartCellularEstimate)
  {
    [dictionary setObject:uploadStartCellularEstimate forKey:@"upload_start_cellular_estimate"];
  }

  uploadEndCellularEstimate = self->_uploadEndCellularEstimate;
  if (uploadEndCellularEstimate)
  {
    [dictionary setObject:uploadEndCellularEstimate forKey:@"upload_end_cellular_estimate"];
  }

  uploadMaxCellularEstimate = self->_uploadMaxCellularEstimate;
  if (uploadMaxCellularEstimate)
  {
    [dictionary setObject:uploadMaxCellularEstimate forKey:@"upload_max_cellular_estimate"];
  }

  downloadResponsiveness = self->_downloadResponsiveness;
  if (downloadResponsiveness)
  {
    [dictionary setObject:downloadResponsiveness forKey:@"download_responsiveness"];
  }

  downloadResponsivenessConfidence = self->_downloadResponsivenessConfidence;
  if (downloadResponsivenessConfidence)
  {
    [dictionary setObject:downloadResponsivenessConfidence forKey:@"download_responsiveness_confidence"];
  }

  downloadResponsivenessRating = self->_downloadResponsivenessRating;
  if (downloadResponsivenessRating)
  {
    [dictionary setObject:downloadResponsivenessRating forKey:@"download_responsiveness_rating"];
  }

  downloadSpeedConfidence = self->_downloadSpeedConfidence;
  if (downloadSpeedConfidence)
  {
    [dictionary setObject:downloadSpeedConfidence forKey:@"download_speed_confidence"];
  }

  downloadSpeedRating = self->_downloadSpeedRating;
  if (downloadSpeedRating)
  {
    [dictionary setObject:downloadSpeedRating forKey:@"download_speed_rating"];
  }

  uploadResponsiveness = self->_uploadResponsiveness;
  if (uploadResponsiveness)
  {
    [dictionary setObject:uploadResponsiveness forKey:@"upload_responsiveness"];
  }

  uploadResponsivenessConfidence = self->_uploadResponsivenessConfidence;
  if (uploadResponsivenessConfidence)
  {
    [dictionary setObject:uploadResponsivenessConfidence forKey:@"upload_responsiveness_confidence"];
  }

  uploadResponsivenessRating = self->_uploadResponsivenessRating;
  if (uploadResponsivenessRating)
  {
    [dictionary setObject:uploadResponsivenessRating forKey:@"upload_responsiveness_rating"];
  }

  uploadSpeedConfidence = self->_uploadSpeedConfidence;
  if (uploadSpeedConfidence)
  {
    [dictionary setObject:uploadSpeedConfidence forKey:@"upload_speed_confidence"];
  }

  uploadSpeedRating = self->_uploadSpeedRating;
  if (uploadSpeedRating)
  {
    [dictionary setObject:uploadSpeedRating forKey:@"upload_speed_rating"];
  }

  wifiChannelBand = self->_wifiChannelBand;
  if (wifiChannelBand)
  {
    [dictionary setObject:wifiChannelBand forKey:@"wifi_channel_band"];
  }

  wifiChannelWidth = self->_wifiChannelWidth;
  if (wifiChannelWidth)
  {
    [dictionary setObject:wifiChannelWidth forKey:@"wifi_channel_width"];
  }

  v226 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v34 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v34;
  }

  if (self->_awdlElectionParameters)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_awdlMasterChannel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_awdlOpMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*&self->_has & 4) != 0)
  {
    awdlPowerState = self->_awdlPowerState;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_awdlSchedule)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_awdlSecondaryMasterChannel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_awdlSyncChannelSequence)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_awdlSyncState)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_btConnectedDevicesCount)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    btIsConnectable = self->_btIsConnectable;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_25:
    btIsScanning = self->_btIsScanning;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

LABEL_26:
  if (self->_callingClient)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularActiveContexts)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    cellularAllowsVoip = self->_cellularAllowsVoip;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_cellularAttached)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularBandinfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularBandwidth)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularCarrierName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularDataBearerSoMask)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularDataPlanSignalingReductionOverride)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularDataPossible)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularInHomeCountry)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularIndicator)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularIndicatorOverride)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularIsoCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularLqm)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularLteMaxScheduledLayers)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMobileCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMobileNetworkCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioCoverage)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioDataBearer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioMmwaveDataBearer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioNsaCoverage)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioNsaDataBearer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioSaCoverage)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioSaDataBearer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNewRadioSub6DataBearer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrConfiguredBw)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrLayers)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrModulation)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrRsrp)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrRsrq)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrSnr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularPid)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRadioAccessTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRadioAccessTechnologyCtDataStatus)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRoamAllowed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRsrp)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularSnr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTac)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalActiveContexts)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalBw)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalCcs)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalLayers)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularUarfcn)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadCdnPop)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadCdnUuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadConnectionTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadDomainLookupTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadEndDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadEndPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadEndRat)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadFileSize)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadInterfaceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadInterfaceServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  v10 = self->_has;
  if ((*&v10 & 0x200) != 0)
  {
    downloadIsCellular = self->_downloadIsCellular;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_142:
    downloadIsReusedConnection = self->_downloadIsReusedConnection;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

LABEL_143:
  if (self->_downloadMaxSpeedObserved)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadNumberOfStreams)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadProtocolName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadRemoteAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadRemotePort)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadRequestTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadRequestToResponseTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadResponseTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadSecureConnectionTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadServer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadStableSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadStartDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadStartPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadStartRat)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    networkIsAppleReachable = self->_networkIsAppleReachable;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_networkPrimaryIpv4InterfaceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkPrimaryIpv4ServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_nptkitFrameworkVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_performanceTestStartTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingLossPercent)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingMaxLatency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingMeanLatency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingMinLatency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingStandardDeviation)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_powerBatteryWarningLevel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_powerSourceType)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_powerStateCaps)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemActiveProcessorCount)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemBatteryLevel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemBatteryState)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemDeviceClass)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemDeviceModel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (*(&self->_has + 2))
  {
    systemLowPowerModeEnabled = self->_systemLowPowerModeEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_systemName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemOsVariant)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemPhysicalMemory)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    systemPowersourceConnected = self->_systemPowersourceConnected;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_systemProcessorCount)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadCdnPop)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadCdnUuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadConnectionTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadDomainLookupTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadEndDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadEndPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadEndRat)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadFileSize)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadInterfaceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadInterfaceServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  v15 = self->_has;
  if ((*&v15 & 0x40000) != 0)
  {
    uploadIsCellular = self->_uploadIsCellular;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
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
  toCopy = v34;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_251:
    uploadIsReusedConnection = self->_uploadIsReusedConnection;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

LABEL_252:
  if (self->_uploadMaxSpeedObserved)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadNumberOfStreams)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadProtocolName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadRemoteAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadRemotePort)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadRequestTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadRequestToResponseTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadResponseTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadSecureConnectionTime)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadServer)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStableSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStartDataBearerTechnology)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStartPrimaryIpv4Interface)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStartRat)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (*(&self->_has + 3))
  {
    useWifiWasSpecified = self->_useWifiWasSpecified;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_wifiAveragePhyRateRx)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiAverageRssi)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiAverageSnr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiAverageTcpRtt)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiBtcMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiCca)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiChannel)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiCwfCca)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiEapolControlMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiEapolSupplicantState)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiGuardInterval)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiHiddenState)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    wifiIsCaptive = self->_wifiIsCaptive;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_wifiMcsIndex)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiNoise)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiNumberOfSpatialStreams)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiOpMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiPhyMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiRssi)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiSecurity)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiTxRate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wrmChannelType)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularCellid)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if ((*&self->_has & 2) != 0)
  {
    acceptablePerformanceResult = self->_acceptablePerformanceResult;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_networkQualityResponsiveness)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularAggregatedDLBW)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularAggregatedULBW)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularIssa)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularLac)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularLteNrConfiguredBw)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMaxDlMod)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMaxNwMimoLyr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMaxSchdMimoLyr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMaxUeRank)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularMaxUlMod)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrSinr)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularNrarfcn)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRadioFrequency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalDlMimoLayers)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularTotalNumCcs)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadStartRadioFrequency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadEndRadioFrequency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkPrimaryIpv6InterfaceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkPrimaryIpv6ServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStartRadioFrequency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadEndRadioFrequency)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadError)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityError)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityDownloadSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityUploadSpeed)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_vpnConnectionState)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadError)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadErrorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadErrorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadErrorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadErrorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingError)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingErrorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_pingErrorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityErrorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_networkQualityErrorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRnMobileCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_cellularRnMobileNetworkCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (*(&self->_has + 1))
  {
    cellularDataIsEnabled = self->_cellularDataIsEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
  }

  if (self->_downloadStartCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadEndCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadMaxCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadStartCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadEndCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadMaxCellularEstimate)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadResponsiveness)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadResponsivenessConfidence)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadResponsivenessRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadSpeedConfidence)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_downloadSpeedRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadResponsiveness)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadResponsivenessConfidence)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadResponsivenessRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadSpeedConfidence)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_uploadSpeedRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiChannelBand)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  if (self->_wifiChannelWidth)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 421) |= 1u;
  }

  v8 = toCopy;
  if (self->_awdlElectionParameters)
  {
    [toCopy setAwdlElectionParameters:?];
    toCopy = v8;
  }

  if (self->_awdlMasterChannel)
  {
    [v8 setAwdlMasterChannel:?];
    toCopy = v8;
  }

  if (self->_awdlOpMode)
  {
    [v8 setAwdlOpMode:?];
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 1657) = self->_awdlPowerState;
    *(toCopy + 421) |= 4u;
  }

  if (self->_awdlSchedule)
  {
    [v8 setAwdlSchedule:?];
    toCopy = v8;
  }

  if (self->_awdlSecondaryMasterChannel)
  {
    [v8 setAwdlSecondaryMasterChannel:?];
    toCopy = v8;
  }

  if (self->_awdlSyncChannelSequence)
  {
    [v8 setAwdlSyncChannelSequence:?];
    toCopy = v8;
  }

  if (self->_awdlSyncState)
  {
    [v8 setAwdlSyncState:?];
    toCopy = v8;
  }

  if (self->_btConnectedDevicesCount)
  {
    [v8 setBtConnectedDevicesCount:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(toCopy + 1658) = self->_btIsConnectable;
    *(toCopy + 421) |= 8u;
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

  *(toCopy + 1659) = self->_btIsDiscoverable;
  *(toCopy + 421) |= 0x10u;
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
  *(toCopy + 1660) = self->_btIsPowerOn;
  *(toCopy + 421) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_25:
    *(toCopy + 1661) = self->_btIsScanning;
    *(toCopy + 421) |= 0x40u;
  }

LABEL_26:
  if (self->_callingClient)
  {
    [v8 setCallingClient:?];
    toCopy = v8;
  }

  if (self->_cellularActiveContexts)
  {
    [v8 setCellularActiveContexts:?];
    toCopy = v8;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(toCopy + 1662) = self->_cellularAllowsVoip;
    *(toCopy + 421) |= 0x80u;
  }

  if (self->_cellularAttached)
  {
    [v8 setCellularAttached:?];
    toCopy = v8;
  }

  if (self->_cellularBandinfo)
  {
    [v8 setCellularBandinfo:?];
    toCopy = v8;
  }

  if (self->_cellularBandwidth)
  {
    [v8 setCellularBandwidth:?];
    toCopy = v8;
  }

  if (self->_cellularCarrierName)
  {
    [v8 setCellularCarrierName:?];
    toCopy = v8;
  }

  if (self->_cellularDataBearerSoMask)
  {
    [v8 setCellularDataBearerSoMask:?];
    toCopy = v8;
  }

  if (self->_cellularDataBearerTechnology)
  {
    [v8 setCellularDataBearerTechnology:?];
    toCopy = v8;
  }

  if (self->_cellularDataPlanSignalingReductionOverride)
  {
    [v8 setCellularDataPlanSignalingReductionOverride:?];
    toCopy = v8;
  }

  if (self->_cellularDataPossible)
  {
    [v8 setCellularDataPossible:?];
    toCopy = v8;
  }

  if (self->_cellularInHomeCountry)
  {
    [v8 setCellularInHomeCountry:?];
    toCopy = v8;
  }

  if (self->_cellularIndicator)
  {
    [v8 setCellularIndicator:?];
    toCopy = v8;
  }

  if (self->_cellularIndicatorOverride)
  {
    [v8 setCellularIndicatorOverride:?];
    toCopy = v8;
  }

  if (self->_cellularIsoCountryCode)
  {
    [v8 setCellularIsoCountryCode:?];
    toCopy = v8;
  }

  if (self->_cellularLqm)
  {
    [v8 setCellularLqm:?];
    toCopy = v8;
  }

  if (self->_cellularLteMaxScheduledLayers)
  {
    [v8 setCellularLteMaxScheduledLayers:?];
    toCopy = v8;
  }

  if (self->_cellularMobileCountryCode)
  {
    [v8 setCellularMobileCountryCode:?];
    toCopy = v8;
  }

  if (self->_cellularMobileNetworkCode)
  {
    [v8 setCellularMobileNetworkCode:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioCoverage)
  {
    [v8 setCellularNewRadioCoverage:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioDataBearer)
  {
    [v8 setCellularNewRadioDataBearer:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioMmwaveDataBearer)
  {
    [v8 setCellularNewRadioMmwaveDataBearer:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioNsaCoverage)
  {
    [v8 setCellularNewRadioNsaCoverage:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioNsaDataBearer)
  {
    [v8 setCellularNewRadioNsaDataBearer:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioSaCoverage)
  {
    [v8 setCellularNewRadioSaCoverage:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioSaDataBearer)
  {
    [v8 setCellularNewRadioSaDataBearer:?];
    toCopy = v8;
  }

  if (self->_cellularNewRadioSub6DataBearer)
  {
    [v8 setCellularNewRadioSub6DataBearer:?];
    toCopy = v8;
  }

  if (self->_cellularNrConfiguredBw)
  {
    [v8 setCellularNrConfiguredBw:?];
    toCopy = v8;
  }

  if (self->_cellularNrLayers)
  {
    [v8 setCellularNrLayers:?];
    toCopy = v8;
  }

  if (self->_cellularNrModulation)
  {
    [v8 setCellularNrModulation:?];
    toCopy = v8;
  }

  if (self->_cellularNrRsrp)
  {
    [v8 setCellularNrRsrp:?];
    toCopy = v8;
  }

  if (self->_cellularNrRsrq)
  {
    [v8 setCellularNrRsrq:?];
    toCopy = v8;
  }

  if (self->_cellularNrSnr)
  {
    [v8 setCellularNrSnr:?];
    toCopy = v8;
  }

  if (self->_cellularPid)
  {
    [v8 setCellularPid:?];
    toCopy = v8;
  }

  if (self->_cellularRadioAccessTechnology)
  {
    [v8 setCellularRadioAccessTechnology:?];
    toCopy = v8;
  }

  if (self->_cellularRadioAccessTechnologyCtDataStatus)
  {
    [v8 setCellularRadioAccessTechnologyCtDataStatus:?];
    toCopy = v8;
  }

  if (self->_cellularRoamAllowed)
  {
    [v8 setCellularRoamAllowed:?];
    toCopy = v8;
  }

  if (self->_cellularRsrp)
  {
    [v8 setCellularRsrp:?];
    toCopy = v8;
  }

  if (self->_cellularSnr)
  {
    [v8 setCellularSnr:?];
    toCopy = v8;
  }

  if (self->_cellularTac)
  {
    [v8 setCellularTac:?];
    toCopy = v8;
  }

  if (self->_cellularTotalActiveContexts)
  {
    [v8 setCellularTotalActiveContexts:?];
    toCopy = v8;
  }

  if (self->_cellularTotalBw)
  {
    [v8 setCellularTotalBw:?];
    toCopy = v8;
  }

  if (self->_cellularTotalCcs)
  {
    [v8 setCellularTotalCcs:?];
    toCopy = v8;
  }

  if (self->_cellularTotalLayers)
  {
    [v8 setCellularTotalLayers:?];
    toCopy = v8;
  }

  if (self->_cellularUarfcn)
  {
    [v8 setCellularUarfcn:?];
    toCopy = v8;
  }

  if (self->_downloadCdnPop)
  {
    [v8 setDownloadCdnPop:?];
    toCopy = v8;
  }

  if (self->_downloadCdnUuid)
  {
    [v8 setDownloadCdnUuid:?];
    toCopy = v8;
  }

  if (self->_downloadConnectionTime)
  {
    [v8 setDownloadConnectionTime:?];
    toCopy = v8;
  }

  if (self->_downloadDomainLookupTime)
  {
    [v8 setDownloadDomainLookupTime:?];
    toCopy = v8;
  }

  if (self->_downloadEndDataBearerTechnology)
  {
    [v8 setDownloadEndDataBearerTechnology:?];
    toCopy = v8;
  }

  if (self->_downloadEndPrimaryIpv4Interface)
  {
    [v8 setDownloadEndPrimaryIpv4Interface:?];
    toCopy = v8;
  }

  if (self->_downloadEndRat)
  {
    [v8 setDownloadEndRat:?];
    toCopy = v8;
  }

  if (self->_downloadFileSize)
  {
    [v8 setDownloadFileSize:?];
    toCopy = v8;
  }

  if (self->_downloadInterfaceName)
  {
    [v8 setDownloadInterfaceName:?];
    toCopy = v8;
  }

  if (self->_downloadInterfaceServiceName)
  {
    [v8 setDownloadInterfaceServiceName:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(toCopy + 1664) = self->_downloadIsCellular;
    *(toCopy + 421) |= 0x200u;
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

  *(toCopy + 1665) = self->_downloadIsConstrained;
  *(toCopy + 421) |= 0x400u;
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
  *(toCopy + 1666) = self->_downloadIsExpensive;
  *(toCopy + 421) |= 0x800u;
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
  *(toCopy + 1667) = self->_downloadIsMultipath;
  *(toCopy + 421) |= 0x1000u;
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
  *(toCopy + 1668) = self->_downloadIsProxyConnection;
  *(toCopy + 421) |= 0x2000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_142:
    *(toCopy + 1669) = self->_downloadIsReusedConnection;
    *(toCopy + 421) |= 0x4000u;
  }

LABEL_143:
  if (self->_downloadMaxSpeedObserved)
  {
    [v8 setDownloadMaxSpeedObserved:?];
    toCopy = v8;
  }

  if (self->_downloadNumberOfStreams)
  {
    [v8 setDownloadNumberOfStreams:?];
    toCopy = v8;
  }

  if (self->_downloadProtocolName)
  {
    [v8 setDownloadProtocolName:?];
    toCopy = v8;
  }

  if (self->_downloadRemoteAddress)
  {
    [v8 setDownloadRemoteAddress:?];
    toCopy = v8;
  }

  if (self->_downloadRemotePort)
  {
    [v8 setDownloadRemotePort:?];
    toCopy = v8;
  }

  if (self->_downloadRequestTime)
  {
    [v8 setDownloadRequestTime:?];
    toCopy = v8;
  }

  if (self->_downloadRequestToResponseTime)
  {
    [v8 setDownloadRequestToResponseTime:?];
    toCopy = v8;
  }

  if (self->_downloadResponseTime)
  {
    [v8 setDownloadResponseTime:?];
    toCopy = v8;
  }

  if (self->_downloadSecureConnectionTime)
  {
    [v8 setDownloadSecureConnectionTime:?];
    toCopy = v8;
  }

  if (self->_downloadServer)
  {
    [v8 setDownloadServer:?];
    toCopy = v8;
  }

  if (self->_downloadSpeed)
  {
    [v8 setDownloadSpeed:?];
    toCopy = v8;
  }

  if (self->_downloadStableSpeed)
  {
    [v8 setDownloadStableSpeed:?];
    toCopy = v8;
  }

  if (self->_downloadStartDataBearerTechnology)
  {
    [v8 setDownloadStartDataBearerTechnology:?];
    toCopy = v8;
  }

  if (self->_downloadStartPrimaryIpv4Interface)
  {
    [v8 setDownloadStartPrimaryIpv4Interface:?];
    toCopy = v8;
  }

  if (self->_downloadStartRat)
  {
    [v8 setDownloadStartRat:?];
    toCopy = v8;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(toCopy + 1670) = self->_networkIsAppleReachable;
    *(toCopy + 421) |= 0x8000u;
  }

  if (self->_networkPrimaryIpv4InterfaceName)
  {
    [v8 setNetworkPrimaryIpv4InterfaceName:?];
    toCopy = v8;
  }

  if (self->_networkPrimaryIpv4ServiceName)
  {
    [v8 setNetworkPrimaryIpv4ServiceName:?];
    toCopy = v8;
  }

  if (self->_nptkitFrameworkVersion)
  {
    [v8 setNptkitFrameworkVersion:?];
    toCopy = v8;
  }

  if (self->_performanceTestStartTime)
  {
    [v8 setPerformanceTestStartTime:?];
    toCopy = v8;
  }

  if (self->_pingAddress)
  {
    [v8 setPingAddress:?];
    toCopy = v8;
  }

  if (self->_pingLossPercent)
  {
    [v8 setPingLossPercent:?];
    toCopy = v8;
  }

  if (self->_pingMaxLatency)
  {
    [v8 setPingMaxLatency:?];
    toCopy = v8;
  }

  if (self->_pingMeanLatency)
  {
    [v8 setPingMeanLatency:?];
    toCopy = v8;
  }

  if (self->_pingMinLatency)
  {
    [v8 setPingMinLatency:?];
    toCopy = v8;
  }

  if (self->_pingStandardDeviation)
  {
    [v8 setPingStandardDeviation:?];
    toCopy = v8;
  }

  if (self->_powerBatteryWarningLevel)
  {
    [v8 setPowerBatteryWarningLevel:?];
    toCopy = v8;
  }

  if (self->_powerSourceType)
  {
    [v8 setPowerSourceType:?];
    toCopy = v8;
  }

  if (self->_powerStateCaps)
  {
    [v8 setPowerStateCaps:?];
    toCopy = v8;
  }

  if (self->_systemActiveProcessorCount)
  {
    [v8 setSystemActiveProcessorCount:?];
    toCopy = v8;
  }

  if (self->_systemBatteryLevel)
  {
    [v8 setSystemBatteryLevel:?];
    toCopy = v8;
  }

  if (self->_systemBatteryState)
  {
    [v8 setSystemBatteryState:?];
    toCopy = v8;
  }

  if (self->_systemDeviceClass)
  {
    [v8 setSystemDeviceClass:?];
    toCopy = v8;
  }

  if (self->_systemDeviceModel)
  {
    [v8 setSystemDeviceModel:?];
    toCopy = v8;
  }

  if (*(&self->_has + 2))
  {
    *(toCopy + 1671) = self->_systemLowPowerModeEnabled;
    *(toCopy + 421) |= 0x10000u;
  }

  if (self->_systemName)
  {
    [v8 setSystemName:?];
    toCopy = v8;
  }

  if (self->_systemOsVariant)
  {
    [v8 setSystemOsVariant:?];
    toCopy = v8;
  }

  if (self->_systemPhysicalMemory)
  {
    [v8 setSystemPhysicalMemory:?];
    toCopy = v8;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(toCopy + 1672) = self->_systemPowersourceConnected;
    *(toCopy + 421) |= 0x20000u;
  }

  if (self->_systemProcessorCount)
  {
    [v8 setSystemProcessorCount:?];
    toCopy = v8;
  }

  if (self->_systemVersion)
  {
    [v8 setSystemVersion:?];
    toCopy = v8;
  }

  if (self->_uploadCdnPop)
  {
    [v8 setUploadCdnPop:?];
    toCopy = v8;
  }

  if (self->_uploadCdnUuid)
  {
    [v8 setUploadCdnUuid:?];
    toCopy = v8;
  }

  if (self->_uploadConnectionTime)
  {
    [v8 setUploadConnectionTime:?];
    toCopy = v8;
  }

  if (self->_uploadDomainLookupTime)
  {
    [v8 setUploadDomainLookupTime:?];
    toCopy = v8;
  }

  if (self->_uploadEndDataBearerTechnology)
  {
    [v8 setUploadEndDataBearerTechnology:?];
    toCopy = v8;
  }

  if (self->_uploadEndPrimaryIpv4Interface)
  {
    [v8 setUploadEndPrimaryIpv4Interface:?];
    toCopy = v8;
  }

  if (self->_uploadEndRat)
  {
    [v8 setUploadEndRat:?];
    toCopy = v8;
  }

  if (self->_uploadFileSize)
  {
    [v8 setUploadFileSize:?];
    toCopy = v8;
  }

  if (self->_uploadInterfaceName)
  {
    [v8 setUploadInterfaceName:?];
    toCopy = v8;
  }

  if (self->_uploadInterfaceServiceName)
  {
    [v8 setUploadInterfaceServiceName:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    *(toCopy + 1673) = self->_uploadIsCellular;
    *(toCopy + 421) |= 0x40000u;
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

  *(toCopy + 1674) = self->_uploadIsConstrained;
  *(toCopy + 421) |= 0x80000u;
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
  *(toCopy + 1675) = self->_uploadIsExpensive;
  *(toCopy + 421) |= 0x100000u;
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
  *(toCopy + 1676) = self->_uploadIsMultipath;
  *(toCopy + 421) |= 0x200000u;
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
  *(toCopy + 1677) = self->_uploadIsProxyConnection;
  *(toCopy + 421) |= 0x400000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_251:
    *(toCopy + 1678) = self->_uploadIsReusedConnection;
    *(toCopy + 421) |= 0x800000u;
  }

LABEL_252:
  if (self->_uploadMaxSpeedObserved)
  {
    [v8 setUploadMaxSpeedObserved:?];
    toCopy = v8;
  }

  if (self->_uploadNumberOfStreams)
  {
    [v8 setUploadNumberOfStreams:?];
    toCopy = v8;
  }

  if (self->_uploadProtocolName)
  {
    [v8 setUploadProtocolName:?];
    toCopy = v8;
  }

  if (self->_uploadRemoteAddress)
  {
    [v8 setUploadRemoteAddress:?];
    toCopy = v8;
  }

  if (self->_uploadRemotePort)
  {
    [v8 setUploadRemotePort:?];
    toCopy = v8;
  }

  if (self->_uploadRequestTime)
  {
    [v8 setUploadRequestTime:?];
    toCopy = v8;
  }

  if (self->_uploadRequestToResponseTime)
  {
    [v8 setUploadRequestToResponseTime:?];
    toCopy = v8;
  }

  if (self->_uploadResponseTime)
  {
    [v8 setUploadResponseTime:?];
    toCopy = v8;
  }

  if (self->_uploadSecureConnectionTime)
  {
    [v8 setUploadSecureConnectionTime:?];
    toCopy = v8;
  }

  if (self->_uploadServer)
  {
    [v8 setUploadServer:?];
    toCopy = v8;
  }

  if (self->_uploadSpeed)
  {
    [v8 setUploadSpeed:?];
    toCopy = v8;
  }

  if (self->_uploadStableSpeed)
  {
    [v8 setUploadStableSpeed:?];
    toCopy = v8;
  }

  if (self->_uploadStartDataBearerTechnology)
  {
    [v8 setUploadStartDataBearerTechnology:?];
    toCopy = v8;
  }

  if (self->_uploadStartPrimaryIpv4Interface)
  {
    [v8 setUploadStartPrimaryIpv4Interface:?];
    toCopy = v8;
  }

  if (self->_uploadStartRat)
  {
    [v8 setUploadStartRat:?];
    toCopy = v8;
  }

  if (*(&self->_has + 3))
  {
    *(toCopy + 1679) = self->_useWifiWasSpecified;
    *(toCopy + 421) |= 0x1000000u;
  }

  if (self->_wifiAveragePhyRateRx)
  {
    [v8 setWifiAveragePhyRateRx:?];
    toCopy = v8;
  }

  if (self->_wifiAverageRssi)
  {
    [v8 setWifiAverageRssi:?];
    toCopy = v8;
  }

  if (self->_wifiAverageSnr)
  {
    [v8 setWifiAverageSnr:?];
    toCopy = v8;
  }

  if (self->_wifiAverageTcpRtt)
  {
    [v8 setWifiAverageTcpRtt:?];
    toCopy = v8;
  }

  if (self->_wifiBtcMode)
  {
    [v8 setWifiBtcMode:?];
    toCopy = v8;
  }

  if (self->_wifiCca)
  {
    [v8 setWifiCca:?];
    toCopy = v8;
  }

  if (self->_wifiChannel)
  {
    [v8 setWifiChannel:?];
    toCopy = v8;
  }

  if (self->_wifiCwfCca)
  {
    [v8 setWifiCwfCca:?];
    toCopy = v8;
  }

  if (self->_wifiEapolControlMode)
  {
    [v8 setWifiEapolControlMode:?];
    toCopy = v8;
  }

  if (self->_wifiEapolSupplicantState)
  {
    [v8 setWifiEapolSupplicantState:?];
    toCopy = v8;
  }

  if (self->_wifiGuardInterval)
  {
    [v8 setWifiGuardInterval:?];
    toCopy = v8;
  }

  if (self->_wifiHiddenState)
  {
    [v8 setWifiHiddenState:?];
    toCopy = v8;
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(toCopy + 1680) = self->_wifiIsCaptive;
    *(toCopy + 421) |= 0x2000000u;
  }

  if (self->_wifiMcsIndex)
  {
    [v8 setWifiMcsIndex:?];
    toCopy = v8;
  }

  if (self->_wifiNoise)
  {
    [v8 setWifiNoise:?];
    toCopy = v8;
  }

  if (self->_wifiNumberOfSpatialStreams)
  {
    [v8 setWifiNumberOfSpatialStreams:?];
    toCopy = v8;
  }

  if (self->_wifiOpMode)
  {
    [v8 setWifiOpMode:?];
    toCopy = v8;
  }

  if (self->_wifiPhyMode)
  {
    [v8 setWifiPhyMode:?];
    toCopy = v8;
  }

  if (self->_wifiRssi)
  {
    [v8 setWifiRssi:?];
    toCopy = v8;
  }

  if (self->_wifiSecurity)
  {
    [v8 setWifiSecurity:?];
    toCopy = v8;
  }

  if (self->_wifiTxRate)
  {
    [v8 setWifiTxRate:?];
    toCopy = v8;
  }

  if (self->_wrmChannelType)
  {
    [v8 setWrmChannelType:?];
    toCopy = v8;
  }

  if (self->_cellularCellid)
  {
    [v8 setCellularCellid:?];
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 1656) = self->_acceptablePerformanceResult;
    *(toCopy + 421) |= 2u;
  }

  if (self->_networkQualityResponsiveness)
  {
    [v8 setNetworkQualityResponsiveness:?];
    toCopy = v8;
  }

  if (self->_cellularAggregatedDLBW)
  {
    [v8 setCellularAggregatedDLBW:?];
    toCopy = v8;
  }

  if (self->_cellularAggregatedULBW)
  {
    [v8 setCellularAggregatedULBW:?];
    toCopy = v8;
  }

  if (self->_cellularIssa)
  {
    [v8 setCellularIssa:?];
    toCopy = v8;
  }

  if (self->_cellularLac)
  {
    [v8 setCellularLac:?];
    toCopy = v8;
  }

  if (self->_cellularLteNrConfiguredBw)
  {
    [v8 setCellularLteNrConfiguredBw:?];
    toCopy = v8;
  }

  if (self->_cellularMaxDlMod)
  {
    [v8 setCellularMaxDlMod:?];
    toCopy = v8;
  }

  if (self->_cellularMaxNwMimoLyr)
  {
    [v8 setCellularMaxNwMimoLyr:?];
    toCopy = v8;
  }

  if (self->_cellularMaxSchdMimoLyr)
  {
    [v8 setCellularMaxSchdMimoLyr:?];
    toCopy = v8;
  }

  if (self->_cellularMaxUeRank)
  {
    [v8 setCellularMaxUeRank:?];
    toCopy = v8;
  }

  if (self->_cellularMaxUlMod)
  {
    [v8 setCellularMaxUlMod:?];
    toCopy = v8;
  }

  if (self->_cellularNrSinr)
  {
    [v8 setCellularNrSinr:?];
    toCopy = v8;
  }

  if (self->_cellularNrarfcn)
  {
    [v8 setCellularNrarfcn:?];
    toCopy = v8;
  }

  if (self->_cellularRadioFrequency)
  {
    [v8 setCellularRadioFrequency:?];
    toCopy = v8;
  }

  if (self->_cellularTotalDlMimoLayers)
  {
    [v8 setCellularTotalDlMimoLayers:?];
    toCopy = v8;
  }

  if (self->_cellularTotalNumCcs)
  {
    [v8 setCellularTotalNumCcs:?];
    toCopy = v8;
  }

  if (self->_downloadStartRadioFrequency)
  {
    [v8 setDownloadStartRadioFrequency:?];
    toCopy = v8;
  }

  if (self->_downloadEndRadioFrequency)
  {
    [v8 setDownloadEndRadioFrequency:?];
    toCopy = v8;
  }

  if (self->_networkPrimaryIpv6InterfaceName)
  {
    [v8 setNetworkPrimaryIpv6InterfaceName:?];
    toCopy = v8;
  }

  if (self->_networkPrimaryIpv6ServiceName)
  {
    [v8 setNetworkPrimaryIpv6ServiceName:?];
    toCopy = v8;
  }

  if (self->_uploadStartRadioFrequency)
  {
    [v8 setUploadStartRadioFrequency:?];
    toCopy = v8;
  }

  if (self->_uploadEndRadioFrequency)
  {
    [v8 setUploadEndRadioFrequency:?];
    toCopy = v8;
  }

  if (self->_downloadError)
  {
    [v8 setDownloadError:?];
    toCopy = v8;
  }

  if (self->_networkQualityError)
  {
    [v8 setNetworkQualityError:?];
    toCopy = v8;
  }

  if (self->_networkQualityDownloadSpeed)
  {
    [v8 setNetworkQualityDownloadSpeed:?];
    toCopy = v8;
  }

  if (self->_networkQualityUploadSpeed)
  {
    [v8 setNetworkQualityUploadSpeed:?];
    toCopy = v8;
  }

  if (self->_networkQualityRating)
  {
    [v8 setNetworkQualityRating:?];
    toCopy = v8;
  }

  if (self->_vpnConnectionState)
  {
    [v8 setVpnConnectionState:?];
    toCopy = v8;
  }

  if (self->_uploadError)
  {
    [v8 setUploadError:?];
    toCopy = v8;
  }

  if (self->_uploadErrorDomain)
  {
    [v8 setUploadErrorDomain:?];
    toCopy = v8;
  }

  if (self->_uploadErrorCode)
  {
    [v8 setUploadErrorCode:?];
    toCopy = v8;
  }

  if (self->_downloadErrorDomain)
  {
    [v8 setDownloadErrorDomain:?];
    toCopy = v8;
  }

  if (self->_downloadErrorCode)
  {
    [v8 setDownloadErrorCode:?];
    toCopy = v8;
  }

  if (self->_pingError)
  {
    [v8 setPingError:?];
    toCopy = v8;
  }

  if (self->_pingErrorDomain)
  {
    [v8 setPingErrorDomain:?];
    toCopy = v8;
  }

  if (self->_pingErrorCode)
  {
    [v8 setPingErrorCode:?];
    toCopy = v8;
  }

  if (self->_networkQualityErrorDomain)
  {
    [v8 setNetworkQualityErrorDomain:?];
    toCopy = v8;
  }

  if (self->_networkQualityErrorCode)
  {
    [v8 setNetworkQualityErrorCode:?];
    toCopy = v8;
  }

  if (self->_cellularRnMobileCountryCode)
  {
    [v8 setCellularRnMobileCountryCode:?];
    toCopy = v8;
  }

  if (self->_cellularRnMobileNetworkCode)
  {
    [v8 setCellularRnMobileNetworkCode:?];
    toCopy = v8;
  }

  if (*(&self->_has + 1))
  {
    *(toCopy + 1663) = self->_cellularDataIsEnabled;
    *(toCopy + 421) |= 0x100u;
  }

  if (self->_downloadStartCellularEstimate)
  {
    [v8 setDownloadStartCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_downloadEndCellularEstimate)
  {
    [v8 setDownloadEndCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_downloadMaxCellularEstimate)
  {
    [v8 setDownloadMaxCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_uploadStartCellularEstimate)
  {
    [v8 setUploadStartCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_uploadEndCellularEstimate)
  {
    [v8 setUploadEndCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_uploadMaxCellularEstimate)
  {
    [v8 setUploadMaxCellularEstimate:?];
    toCopy = v8;
  }

  if (self->_downloadResponsiveness)
  {
    [v8 setDownloadResponsiveness:?];
    toCopy = v8;
  }

  if (self->_downloadResponsivenessConfidence)
  {
    [v8 setDownloadResponsivenessConfidence:?];
    toCopy = v8;
  }

  if (self->_downloadResponsivenessRating)
  {
    [v8 setDownloadResponsivenessRating:?];
    toCopy = v8;
  }

  if (self->_downloadSpeedConfidence)
  {
    [v8 setDownloadSpeedConfidence:?];
    toCopy = v8;
  }

  if (self->_downloadSpeedRating)
  {
    [v8 setDownloadSpeedRating:?];
    toCopy = v8;
  }

  if (self->_uploadResponsiveness)
  {
    [v8 setUploadResponsiveness:?];
    toCopy = v8;
  }

  if (self->_uploadResponsivenessConfidence)
  {
    [v8 setUploadResponsivenessConfidence:?];
    toCopy = v8;
  }

  if (self->_uploadResponsivenessRating)
  {
    [v8 setUploadResponsivenessRating:?];
    toCopy = v8;
  }

  if (self->_uploadSpeedConfidence)
  {
    [v8 setUploadSpeedConfidence:?];
    toCopy = v8;
  }

  if (self->_uploadSpeedRating)
  {
    [v8 setUploadSpeedRating:?];
    toCopy = v8;
  }

  if (self->_wifiChannelBand)
  {
    [v8 setWifiChannelBand:?];
    toCopy = v8;
  }

  if (self->_wifiChannelWidth)
  {
    [v8 setWifiChannelWidth:?];
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 1684) |= 1u;
  }

  v7 = [(NSString *)self->_awdlElectionParameters copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_awdlMasterChannel copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSString *)self->_awdlOpMode copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 1657) = self->_awdlPowerState;
    *(v6 + 1684) |= 4u;
  }

  v13 = [(NSString *)self->_awdlSchedule copyWithZone:zone];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  v15 = [(NSString *)self->_awdlSecondaryMasterChannel copyWithZone:zone];
  v16 = *(v6 + 48);
  *(v6 + 48) = v15;

  v17 = [(NSString *)self->_awdlSyncChannelSequence copyWithZone:zone];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  v19 = [(NSString *)self->_awdlSyncState copyWithZone:zone];
  v20 = *(v6 + 64);
  *(v6 + 64) = v19;

  v21 = [(NSString *)self->_btConnectedDevicesCount copyWithZone:zone];
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
  v24 = [(NSString *)self->_callingClient copyWithZone:zone];
  v25 = *(v6 + 80);
  *(v6 + 80) = v24;

  v26 = [(NSString *)self->_cellularActiveContexts copyWithZone:zone];
  v27 = *(v6 + 88);
  *(v6 + 88) = v26;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 1662) = self->_cellularAllowsVoip;
    *(v6 + 1684) |= 0x80u;
  }

  v28 = [(NSString *)self->_cellularAttached copyWithZone:zone];
  v29 = *(v6 + 112);
  *(v6 + 112) = v28;

  v30 = [(NSString *)self->_cellularBandinfo copyWithZone:zone];
  v31 = *(v6 + 120);
  *(v6 + 120) = v30;

  v32 = [(NSString *)self->_cellularBandwidth copyWithZone:zone];
  v33 = *(v6 + 128);
  *(v6 + 128) = v32;

  v34 = [(NSString *)self->_cellularCarrierName copyWithZone:zone];
  v35 = *(v6 + 136);
  *(v6 + 136) = v34;

  v36 = [(NSString *)self->_cellularDataBearerSoMask copyWithZone:zone];
  v37 = *(v6 + 152);
  *(v6 + 152) = v36;

  v38 = [(NSString *)self->_cellularDataBearerTechnology copyWithZone:zone];
  v39 = *(v6 + 160);
  *(v6 + 160) = v38;

  v40 = [(NSString *)self->_cellularDataPlanSignalingReductionOverride copyWithZone:zone];
  v41 = *(v6 + 168);
  *(v6 + 168) = v40;

  v42 = [(NSString *)self->_cellularDataPossible copyWithZone:zone];
  v43 = *(v6 + 176);
  *(v6 + 176) = v42;

  v44 = [(NSString *)self->_cellularInHomeCountry copyWithZone:zone];
  v45 = *(v6 + 184);
  *(v6 + 184) = v44;

  v46 = [(NSString *)self->_cellularIndicator copyWithZone:zone];
  v47 = *(v6 + 192);
  *(v6 + 192) = v46;

  v48 = [(NSString *)self->_cellularIndicatorOverride copyWithZone:zone];
  v49 = *(v6 + 200);
  *(v6 + 200) = v48;

  v50 = [(NSString *)self->_cellularIsoCountryCode copyWithZone:zone];
  v51 = *(v6 + 208);
  *(v6 + 208) = v50;

  v52 = [(NSString *)self->_cellularLqm copyWithZone:zone];
  v53 = *(v6 + 232);
  *(v6 + 232) = v52;

  v54 = [(NSString *)self->_cellularLteMaxScheduledLayers copyWithZone:zone];
  v55 = *(v6 + 240);
  *(v6 + 240) = v54;

  v56 = [(NSString *)self->_cellularMobileCountryCode copyWithZone:zone];
  v57 = *(v6 + 296);
  *(v6 + 296) = v56;

  v58 = [(NSString *)self->_cellularMobileNetworkCode copyWithZone:zone];
  v59 = *(v6 + 304);
  *(v6 + 304) = v58;

  v60 = [(NSString *)self->_cellularNewRadioCoverage copyWithZone:zone];
  v61 = *(v6 + 312);
  *(v6 + 312) = v60;

  v62 = [(NSString *)self->_cellularNewRadioDataBearer copyWithZone:zone];
  v63 = *(v6 + 320);
  *(v6 + 320) = v62;

  v64 = [(NSString *)self->_cellularNewRadioMmwaveDataBearer copyWithZone:zone];
  v65 = *(v6 + 328);
  *(v6 + 328) = v64;

  v66 = [(NSString *)self->_cellularNewRadioNsaCoverage copyWithZone:zone];
  v67 = *(v6 + 336);
  *(v6 + 336) = v66;

  v68 = [(NSString *)self->_cellularNewRadioNsaDataBearer copyWithZone:zone];
  v69 = *(v6 + 344);
  *(v6 + 344) = v68;

  v70 = [(NSString *)self->_cellularNewRadioSaCoverage copyWithZone:zone];
  v71 = *(v6 + 352);
  *(v6 + 352) = v70;

  v72 = [(NSString *)self->_cellularNewRadioSaDataBearer copyWithZone:zone];
  v73 = *(v6 + 360);
  *(v6 + 360) = v72;

  v74 = [(NSString *)self->_cellularNewRadioSub6DataBearer copyWithZone:zone];
  v75 = *(v6 + 368);
  *(v6 + 368) = v74;

  v76 = [(NSString *)self->_cellularNrConfiguredBw copyWithZone:zone];
  v77 = *(v6 + 376);
  *(v6 + 376) = v76;

  v78 = [(NSString *)self->_cellularNrLayers copyWithZone:zone];
  v79 = *(v6 + 384);
  *(v6 + 384) = v78;

  v80 = [(NSString *)self->_cellularNrModulation copyWithZone:zone];
  v81 = *(v6 + 392);
  *(v6 + 392) = v80;

  v82 = [(NSString *)self->_cellularNrRsrp copyWithZone:zone];
  v83 = *(v6 + 400);
  *(v6 + 400) = v82;

  v84 = [(NSString *)self->_cellularNrRsrq copyWithZone:zone];
  v85 = *(v6 + 408);
  *(v6 + 408) = v84;

  v86 = [(NSString *)self->_cellularNrSnr copyWithZone:zone];
  v87 = *(v6 + 424);
  *(v6 + 424) = v86;

  v88 = [(NSString *)self->_cellularPid copyWithZone:zone];
  v89 = *(v6 + 440);
  *(v6 + 440) = v88;

  v90 = [(NSString *)self->_cellularRadioAccessTechnology copyWithZone:zone];
  v91 = *(v6 + 448);
  *(v6 + 448) = v90;

  v92 = [(NSString *)self->_cellularRadioAccessTechnologyCtDataStatus copyWithZone:zone];
  v93 = *(v6 + 456);
  *(v6 + 456) = v92;

  v94 = [(NSString *)self->_cellularRoamAllowed copyWithZone:zone];
  v95 = *(v6 + 488);
  *(v6 + 488) = v94;

  v96 = [(NSString *)self->_cellularRsrp copyWithZone:zone];
  v97 = *(v6 + 496);
  *(v6 + 496) = v96;

  v98 = [(NSString *)self->_cellularSnr copyWithZone:zone];
  v99 = *(v6 + 504);
  *(v6 + 504) = v98;

  v100 = [(NSString *)self->_cellularTac copyWithZone:zone];
  v101 = *(v6 + 512);
  *(v6 + 512) = v100;

  v102 = [(NSString *)self->_cellularTotalActiveContexts copyWithZone:zone];
  v103 = *(v6 + 520);
  *(v6 + 520) = v102;

  v104 = [(NSString *)self->_cellularTotalBw copyWithZone:zone];
  v105 = *(v6 + 528);
  *(v6 + 528) = v104;

  v106 = [(NSString *)self->_cellularTotalCcs copyWithZone:zone];
  v107 = *(v6 + 536);
  *(v6 + 536) = v106;

  v108 = [(NSString *)self->_cellularTotalLayers copyWithZone:zone];
  v109 = *(v6 + 552);
  *(v6 + 552) = v108;

  v110 = [(NSString *)self->_cellularUarfcn copyWithZone:zone];
  v111 = *(v6 + 568);
  *(v6 + 568) = v110;

  v112 = [(NSString *)self->_downloadCdnPop copyWithZone:zone];
  v113 = *(v6 + 576);
  *(v6 + 576) = v112;

  v114 = [(NSString *)self->_downloadCdnUuid copyWithZone:zone];
  v115 = *(v6 + 584);
  *(v6 + 584) = v114;

  v116 = [(NSString *)self->_downloadConnectionTime copyWithZone:zone];
  v117 = *(v6 + 592);
  *(v6 + 592) = v116;

  v118 = [(NSString *)self->_downloadDomainLookupTime copyWithZone:zone];
  v119 = *(v6 + 600);
  *(v6 + 600) = v118;

  v120 = [(NSString *)self->_downloadEndDataBearerTechnology copyWithZone:zone];
  v121 = *(v6 + 616);
  *(v6 + 616) = v120;

  v122 = [(NSString *)self->_downloadEndPrimaryIpv4Interface copyWithZone:zone];
  v123 = *(v6 + 624);
  *(v6 + 624) = v122;

  v124 = [(NSString *)self->_downloadEndRat copyWithZone:zone];
  v125 = *(v6 + 640);
  *(v6 + 640) = v124;

  v126 = [(NSString *)self->_downloadFileSize copyWithZone:zone];
  v127 = *(v6 + 672);
  *(v6 + 672) = v126;

  v128 = [(NSString *)self->_downloadInterfaceName copyWithZone:zone];
  v129 = *(v6 + 680);
  *(v6 + 680) = v128;

  v130 = [(NSString *)self->_downloadInterfaceServiceName copyWithZone:zone];
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
  v133 = [(NSString *)self->_downloadMaxSpeedObserved copyWithZone:zone];
  v134 = *(v6 + 704);
  *(v6 + 704) = v133;

  v135 = [(NSString *)self->_downloadNumberOfStreams copyWithZone:zone];
  v136 = *(v6 + 712);
  *(v6 + 712) = v135;

  v137 = [(NSString *)self->_downloadProtocolName copyWithZone:zone];
  v138 = *(v6 + 720);
  *(v6 + 720) = v137;

  v139 = [(NSString *)self->_downloadRemoteAddress copyWithZone:zone];
  v140 = *(v6 + 728);
  *(v6 + 728) = v139;

  v141 = [(NSString *)self->_downloadRemotePort copyWithZone:zone];
  v142 = *(v6 + 736);
  *(v6 + 736) = v141;

  v143 = [(NSString *)self->_downloadRequestTime copyWithZone:zone];
  v144 = *(v6 + 744);
  *(v6 + 744) = v143;

  v145 = [(NSString *)self->_downloadRequestToResponseTime copyWithZone:zone];
  v146 = *(v6 + 752);
  *(v6 + 752) = v145;

  v147 = [(NSString *)self->_downloadResponseTime copyWithZone:zone];
  v148 = *(v6 + 760);
  *(v6 + 760) = v147;

  v149 = [(NSString *)self->_downloadSecureConnectionTime copyWithZone:zone];
  v150 = *(v6 + 792);
  *(v6 + 792) = v149;

  v151 = [(NSString *)self->_downloadServer copyWithZone:zone];
  v152 = *(v6 + 800);
  *(v6 + 800) = v151;

  v153 = [(NSString *)self->_downloadSpeed copyWithZone:zone];
  v154 = *(v6 + 808);
  *(v6 + 808) = v153;

  v155 = [(NSString *)self->_downloadStableSpeed copyWithZone:zone];
  v156 = *(v6 + 832);
  *(v6 + 832) = v155;

  v157 = [(NSString *)self->_downloadStartDataBearerTechnology copyWithZone:zone];
  v158 = *(v6 + 848);
  *(v6 + 848) = v157;

  v159 = [(NSString *)self->_downloadStartPrimaryIpv4Interface copyWithZone:zone];
  v160 = *(v6 + 856);
  *(v6 + 856) = v159;

  v161 = [(NSString *)self->_downloadStartRat copyWithZone:zone];
  v162 = *(v6 + 872);
  *(v6 + 872) = v161;

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v6 + 1670) = self->_networkIsAppleReachable;
    *(v6 + 1684) |= 0x8000u;
  }

  v163 = [(NSString *)self->_networkPrimaryIpv4InterfaceName copyWithZone:zone];
  v164 = *(v6 + 880);
  *(v6 + 880) = v163;

  v165 = [(NSString *)self->_networkPrimaryIpv4ServiceName copyWithZone:zone];
  v166 = *(v6 + 888);
  *(v6 + 888) = v165;

  v167 = [(NSString *)self->_nptkitFrameworkVersion copyWithZone:zone];
  v168 = *(v6 + 968);
  *(v6 + 968) = v167;

  v169 = [(NSString *)self->_performanceTestStartTime copyWithZone:zone];
  v170 = *(v6 + 976);
  *(v6 + 976) = v169;

  v171 = [(NSString *)self->_pingAddress copyWithZone:zone];
  v172 = *(v6 + 984);
  *(v6 + 984) = v171;

  v173 = [(NSString *)self->_pingLossPercent copyWithZone:zone];
  v174 = *(v6 + 1016);
  *(v6 + 1016) = v173;

  v175 = [(NSString *)self->_pingMaxLatency copyWithZone:zone];
  v176 = *(v6 + 1024);
  *(v6 + 1024) = v175;

  v177 = [(NSString *)self->_pingMeanLatency copyWithZone:zone];
  v178 = *(v6 + 1032);
  *(v6 + 1032) = v177;

  v179 = [(NSString *)self->_pingMinLatency copyWithZone:zone];
  v180 = *(v6 + 1040);
  *(v6 + 1040) = v179;

  v181 = [(NSString *)self->_pingStandardDeviation copyWithZone:zone];
  v182 = *(v6 + 1048);
  *(v6 + 1048) = v181;

  v183 = [(NSString *)self->_powerBatteryWarningLevel copyWithZone:zone];
  v184 = *(v6 + 1056);
  *(v6 + 1056) = v183;

  v185 = [(NSString *)self->_powerSourceType copyWithZone:zone];
  v186 = *(v6 + 1064);
  *(v6 + 1064) = v185;

  v187 = [(NSString *)self->_powerStateCaps copyWithZone:zone];
  v188 = *(v6 + 1072);
  *(v6 + 1072) = v187;

  v189 = [(NSString *)self->_systemActiveProcessorCount copyWithZone:zone];
  v190 = *(v6 + 1080);
  *(v6 + 1080) = v189;

  v191 = [(NSString *)self->_systemBatteryLevel copyWithZone:zone];
  v192 = *(v6 + 1088);
  *(v6 + 1088) = v191;

  v193 = [(NSString *)self->_systemBatteryState copyWithZone:zone];
  v194 = *(v6 + 1096);
  *(v6 + 1096) = v193;

  v195 = [(NSString *)self->_systemDeviceClass copyWithZone:zone];
  v196 = *(v6 + 1104);
  *(v6 + 1104) = v195;

  v197 = [(NSString *)self->_systemDeviceModel copyWithZone:zone];
  v198 = *(v6 + 1112);
  *(v6 + 1112) = v197;

  if (*(&self->_has + 2))
  {
    *(v6 + 1671) = self->_systemLowPowerModeEnabled;
    *(v6 + 1684) |= 0x10000u;
  }

  v199 = [(NSString *)self->_systemName copyWithZone:zone];
  v200 = *(v6 + 1120);
  *(v6 + 1120) = v199;

  v201 = [(NSString *)self->_systemOsVariant copyWithZone:zone];
  v202 = *(v6 + 1128);
  *(v6 + 1128) = v201;

  v203 = [(NSString *)self->_systemPhysicalMemory copyWithZone:zone];
  v204 = *(v6 + 1136);
  *(v6 + 1136) = v203;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v6 + 1672) = self->_systemPowersourceConnected;
    *(v6 + 1684) |= 0x20000u;
  }

  v205 = [(NSString *)self->_systemProcessorCount copyWithZone:zone];
  v206 = *(v6 + 1144);
  *(v6 + 1144) = v205;

  v207 = [(NSString *)self->_systemVersion copyWithZone:zone];
  v208 = *(v6 + 1152);
  *(v6 + 1152) = v207;

  v209 = [(NSString *)self->_uploadCdnPop copyWithZone:zone];
  v210 = *(v6 + 1160);
  *(v6 + 1160) = v209;

  v211 = [(NSString *)self->_uploadCdnUuid copyWithZone:zone];
  v212 = *(v6 + 1168);
  *(v6 + 1168) = v211;

  v213 = [(NSString *)self->_uploadConnectionTime copyWithZone:zone];
  v214 = *(v6 + 1176);
  *(v6 + 1176) = v213;

  v215 = [(NSString *)self->_uploadDomainLookupTime copyWithZone:zone];
  v216 = *(v6 + 1184);
  *(v6 + 1184) = v215;

  v217 = [(NSString *)self->_uploadEndDataBearerTechnology copyWithZone:zone];
  v218 = *(v6 + 1200);
  *(v6 + 1200) = v217;

  v219 = [(NSString *)self->_uploadEndPrimaryIpv4Interface copyWithZone:zone];
  v220 = *(v6 + 1208);
  *(v6 + 1208) = v219;

  v221 = [(NSString *)self->_uploadEndRat copyWithZone:zone];
  v222 = *(v6 + 1224);
  *(v6 + 1224) = v221;

  v223 = [(NSString *)self->_uploadFileSize copyWithZone:zone];
  v224 = *(v6 + 1256);
  *(v6 + 1256) = v223;

  v225 = [(NSString *)self->_uploadInterfaceName copyWithZone:zone];
  v226 = *(v6 + 1264);
  *(v6 + 1264) = v225;

  v227 = [(NSString *)self->_uploadInterfaceServiceName copyWithZone:zone];
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
  v230 = [(NSString *)self->_uploadMaxSpeedObserved copyWithZone:zone];
  v231 = *(v6 + 1288);
  *(v6 + 1288) = v230;

  v232 = [(NSString *)self->_uploadNumberOfStreams copyWithZone:zone];
  v233 = *(v6 + 1296);
  *(v6 + 1296) = v232;

  v234 = [(NSString *)self->_uploadProtocolName copyWithZone:zone];
  v235 = *(v6 + 1304);
  *(v6 + 1304) = v234;

  v236 = [(NSString *)self->_uploadRemoteAddress copyWithZone:zone];
  v237 = *(v6 + 1312);
  *(v6 + 1312) = v236;

  v238 = [(NSString *)self->_uploadRemotePort copyWithZone:zone];
  v239 = *(v6 + 1320);
  *(v6 + 1320) = v238;

  v240 = [(NSString *)self->_uploadRequestTime copyWithZone:zone];
  v241 = *(v6 + 1328);
  *(v6 + 1328) = v240;

  v242 = [(NSString *)self->_uploadRequestToResponseTime copyWithZone:zone];
  v243 = *(v6 + 1336);
  *(v6 + 1336) = v242;

  v244 = [(NSString *)self->_uploadResponseTime copyWithZone:zone];
  v245 = *(v6 + 1344);
  *(v6 + 1344) = v244;

  v246 = [(NSString *)self->_uploadSecureConnectionTime copyWithZone:zone];
  v247 = *(v6 + 1376);
  *(v6 + 1376) = v246;

  v248 = [(NSString *)self->_uploadServer copyWithZone:zone];
  v249 = *(v6 + 1384);
  *(v6 + 1384) = v248;

  v250 = [(NSString *)self->_uploadSpeed copyWithZone:zone];
  v251 = *(v6 + 1392);
  *(v6 + 1392) = v250;

  v252 = [(NSString *)self->_uploadStableSpeed copyWithZone:zone];
  v253 = *(v6 + 1416);
  *(v6 + 1416) = v252;

  v254 = [(NSString *)self->_uploadStartDataBearerTechnology copyWithZone:zone];
  v255 = *(v6 + 1432);
  *(v6 + 1432) = v254;

  v256 = [(NSString *)self->_uploadStartPrimaryIpv4Interface copyWithZone:zone];
  v257 = *(v6 + 1440);
  *(v6 + 1440) = v256;

  v258 = [(NSString *)self->_uploadStartRat copyWithZone:zone];
  v259 = *(v6 + 1456);
  *(v6 + 1456) = v258;

  if (*(&self->_has + 3))
  {
    *(v6 + 1679) = self->_useWifiWasSpecified;
    *(v6 + 1684) |= 0x1000000u;
  }

  v260 = [(NSString *)self->_wifiAveragePhyRateRx copyWithZone:zone];
  v261 = *(v6 + 1472);
  *(v6 + 1472) = v260;

  v262 = [(NSString *)self->_wifiAverageRssi copyWithZone:zone];
  v263 = *(v6 + 1480);
  *(v6 + 1480) = v262;

  v264 = [(NSString *)self->_wifiAverageSnr copyWithZone:zone];
  v265 = *(v6 + 1488);
  *(v6 + 1488) = v264;

  v266 = [(NSString *)self->_wifiAverageTcpRtt copyWithZone:zone];
  v267 = *(v6 + 1496);
  *(v6 + 1496) = v266;

  v268 = [(NSString *)self->_wifiBtcMode copyWithZone:zone];
  v269 = *(v6 + 1504);
  *(v6 + 1504) = v268;

  v270 = [(NSString *)self->_wifiCca copyWithZone:zone];
  v271 = *(v6 + 1512);
  *(v6 + 1512) = v270;

  v272 = [(NSString *)self->_wifiChannel copyWithZone:zone];
  v273 = *(v6 + 1520);
  *(v6 + 1520) = v272;

  v274 = [(NSString *)self->_wifiCwfCca copyWithZone:zone];
  v275 = *(v6 + 1544);
  *(v6 + 1544) = v274;

  v276 = [(NSString *)self->_wifiEapolControlMode copyWithZone:zone];
  v277 = *(v6 + 1552);
  *(v6 + 1552) = v276;

  v278 = [(NSString *)self->_wifiEapolSupplicantState copyWithZone:zone];
  v279 = *(v6 + 1560);
  *(v6 + 1560) = v278;

  v280 = [(NSString *)self->_wifiGuardInterval copyWithZone:zone];
  v281 = *(v6 + 1568);
  *(v6 + 1568) = v280;

  v282 = [(NSString *)self->_wifiHiddenState copyWithZone:zone];
  v283 = *(v6 + 1576);
  *(v6 + 1576) = v282;

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v6 + 1680) = self->_wifiIsCaptive;
    *(v6 + 1684) |= 0x2000000u;
  }

  v284 = [(NSString *)self->_wifiMcsIndex copyWithZone:zone];
  v285 = *(v6 + 1584);
  *(v6 + 1584) = v284;

  v286 = [(NSString *)self->_wifiNoise copyWithZone:zone];
  v287 = *(v6 + 1592);
  *(v6 + 1592) = v286;

  v288 = [(NSString *)self->_wifiNumberOfSpatialStreams copyWithZone:zone];
  v289 = *(v6 + 1600);
  *(v6 + 1600) = v288;

  v290 = [(NSString *)self->_wifiOpMode copyWithZone:zone];
  v291 = *(v6 + 1608);
  *(v6 + 1608) = v290;

  v292 = [(NSString *)self->_wifiPhyMode copyWithZone:zone];
  v293 = *(v6 + 1616);
  *(v6 + 1616) = v292;

  v294 = [(NSString *)self->_wifiRssi copyWithZone:zone];
  v295 = *(v6 + 1624);
  *(v6 + 1624) = v294;

  v296 = [(NSString *)self->_wifiSecurity copyWithZone:zone];
  v297 = *(v6 + 1632);
  *(v6 + 1632) = v296;

  v298 = [(NSString *)self->_wifiTxRate copyWithZone:zone];
  v299 = *(v6 + 1640);
  *(v6 + 1640) = v298;

  v300 = [(NSString *)self->_wrmChannelType copyWithZone:zone];
  v301 = *(v6 + 1648);
  *(v6 + 1648) = v300;

  v302 = [(NSString *)self->_cellularCellid copyWithZone:zone];
  v303 = *(v6 + 144);
  *(v6 + 144) = v302;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 1656) = self->_acceptablePerformanceResult;
    *(v6 + 1684) |= 2u;
  }

  v304 = [(NSString *)self->_networkQualityResponsiveness copyWithZone:zone];
  v305 = *(v6 + 952);
  *(v6 + 952) = v304;

  v306 = [(NSString *)self->_cellularAggregatedDLBW copyWithZone:zone];
  v307 = *(v6 + 96);
  *(v6 + 96) = v306;

  v308 = [(NSString *)self->_cellularAggregatedULBW copyWithZone:zone];
  v309 = *(v6 + 104);
  *(v6 + 104) = v308;

  v310 = [(NSString *)self->_cellularIssa copyWithZone:zone];
  v311 = *(v6 + 216);
  *(v6 + 216) = v310;

  v312 = [(NSString *)self->_cellularLac copyWithZone:zone];
  v313 = *(v6 + 224);
  *(v6 + 224) = v312;

  v314 = [(NSString *)self->_cellularLteNrConfiguredBw copyWithZone:zone];
  v315 = *(v6 + 248);
  *(v6 + 248) = v314;

  v316 = [(NSString *)self->_cellularMaxDlMod copyWithZone:zone];
  v317 = *(v6 + 256);
  *(v6 + 256) = v316;

  v318 = [(NSString *)self->_cellularMaxNwMimoLyr copyWithZone:zone];
  v319 = *(v6 + 264);
  *(v6 + 264) = v318;

  v320 = [(NSString *)self->_cellularMaxSchdMimoLyr copyWithZone:zone];
  v321 = *(v6 + 272);
  *(v6 + 272) = v320;

  v322 = [(NSString *)self->_cellularMaxUeRank copyWithZone:zone];
  v323 = *(v6 + 280);
  *(v6 + 280) = v322;

  v324 = [(NSString *)self->_cellularMaxUlMod copyWithZone:zone];
  v325 = *(v6 + 288);
  *(v6 + 288) = v324;

  v326 = [(NSString *)self->_cellularNrSinr copyWithZone:zone];
  v327 = *(v6 + 416);
  *(v6 + 416) = v326;

  v328 = [(NSString *)self->_cellularNrarfcn copyWithZone:zone];
  v329 = *(v6 + 432);
  *(v6 + 432) = v328;

  v330 = [(NSString *)self->_cellularRadioFrequency copyWithZone:zone];
  v331 = *(v6 + 464);
  *(v6 + 464) = v330;

  v332 = [(NSString *)self->_cellularTotalDlMimoLayers copyWithZone:zone];
  v333 = *(v6 + 544);
  *(v6 + 544) = v332;

  v334 = [(NSString *)self->_cellularTotalNumCcs copyWithZone:zone];
  v335 = *(v6 + 560);
  *(v6 + 560) = v334;

  v336 = [(NSString *)self->_downloadStartRadioFrequency copyWithZone:zone];
  v337 = *(v6 + 864);
  *(v6 + 864) = v336;

  v338 = [(NSString *)self->_downloadEndRadioFrequency copyWithZone:zone];
  v339 = *(v6 + 632);
  *(v6 + 632) = v338;

  v340 = [(NSString *)self->_networkPrimaryIpv6InterfaceName copyWithZone:zone];
  v341 = *(v6 + 896);
  *(v6 + 896) = v340;

  v342 = [(NSString *)self->_networkPrimaryIpv6ServiceName copyWithZone:zone];
  v343 = *(v6 + 904);
  *(v6 + 904) = v342;

  v344 = [(NSString *)self->_uploadStartRadioFrequency copyWithZone:zone];
  v345 = *(v6 + 1448);
  *(v6 + 1448) = v344;

  v346 = [(NSString *)self->_uploadEndRadioFrequency copyWithZone:zone];
  v347 = *(v6 + 1216);
  *(v6 + 1216) = v346;

  v348 = [(NSString *)self->_downloadError copyWithZone:zone];
  v349 = *(v6 + 648);
  *(v6 + 648) = v348;

  v350 = [(NSString *)self->_networkQualityError copyWithZone:zone];
  v351 = *(v6 + 920);
  *(v6 + 920) = v350;

  v352 = [(NSString *)self->_networkQualityDownloadSpeed copyWithZone:zone];
  v353 = *(v6 + 912);
  *(v6 + 912) = v352;

  v354 = [(NSString *)self->_networkQualityUploadSpeed copyWithZone:zone];
  v355 = *(v6 + 960);
  *(v6 + 960) = v354;

  v356 = [(NSString *)self->_networkQualityRating copyWithZone:zone];
  v357 = *(v6 + 944);
  *(v6 + 944) = v356;

  v358 = [(NSString *)self->_vpnConnectionState copyWithZone:zone];
  v359 = *(v6 + 1464);
  *(v6 + 1464) = v358;

  v360 = [(NSString *)self->_uploadError copyWithZone:zone];
  v361 = *(v6 + 1232);
  *(v6 + 1232) = v360;

  v362 = [(NSString *)self->_uploadErrorDomain copyWithZone:zone];
  v363 = *(v6 + 1248);
  *(v6 + 1248) = v362;

  v364 = [(NSString *)self->_uploadErrorCode copyWithZone:zone];
  v365 = *(v6 + 1240);
  *(v6 + 1240) = v364;

  v366 = [(NSString *)self->_downloadErrorDomain copyWithZone:zone];
  v367 = *(v6 + 664);
  *(v6 + 664) = v366;

  v368 = [(NSString *)self->_downloadErrorCode copyWithZone:zone];
  v369 = *(v6 + 656);
  *(v6 + 656) = v368;

  v370 = [(NSString *)self->_pingError copyWithZone:zone];
  v371 = *(v6 + 992);
  *(v6 + 992) = v370;

  v372 = [(NSString *)self->_pingErrorDomain copyWithZone:zone];
  v373 = *(v6 + 1008);
  *(v6 + 1008) = v372;

  v374 = [(NSString *)self->_pingErrorCode copyWithZone:zone];
  v375 = *(v6 + 1000);
  *(v6 + 1000) = v374;

  v376 = [(NSString *)self->_networkQualityErrorDomain copyWithZone:zone];
  v377 = *(v6 + 936);
  *(v6 + 936) = v376;

  v378 = [(NSString *)self->_networkQualityErrorCode copyWithZone:zone];
  v379 = *(v6 + 928);
  *(v6 + 928) = v378;

  v380 = [(NSString *)self->_cellularRnMobileCountryCode copyWithZone:zone];
  v381 = *(v6 + 472);
  *(v6 + 472) = v380;

  v382 = [(NSString *)self->_cellularRnMobileNetworkCode copyWithZone:zone];
  v383 = *(v6 + 480);
  *(v6 + 480) = v382;

  if (*(&self->_has + 1))
  {
    *(v6 + 1663) = self->_cellularDataIsEnabled;
    *(v6 + 1684) |= 0x100u;
  }

  v384 = [(NSString *)self->_downloadStartCellularEstimate copyWithZone:zone];
  v385 = *(v6 + 840);
  *(v6 + 840) = v384;

  v386 = [(NSString *)self->_downloadEndCellularEstimate copyWithZone:zone];
  v387 = *(v6 + 608);
  *(v6 + 608) = v386;

  v388 = [(NSString *)self->_downloadMaxCellularEstimate copyWithZone:zone];
  v389 = *(v6 + 696);
  *(v6 + 696) = v388;

  v390 = [(NSString *)self->_uploadStartCellularEstimate copyWithZone:zone];
  v391 = *(v6 + 1424);
  *(v6 + 1424) = v390;

  v392 = [(NSString *)self->_uploadEndCellularEstimate copyWithZone:zone];
  v393 = *(v6 + 1192);
  *(v6 + 1192) = v392;

  v394 = [(NSString *)self->_uploadMaxCellularEstimate copyWithZone:zone];
  v395 = *(v6 + 1280);
  *(v6 + 1280) = v394;

  v396 = [(NSString *)self->_downloadResponsiveness copyWithZone:zone];
  v397 = *(v6 + 768);
  *(v6 + 768) = v396;

  v398 = [(NSString *)self->_downloadResponsivenessConfidence copyWithZone:zone];
  v399 = *(v6 + 776);
  *(v6 + 776) = v398;

  v400 = [(NSString *)self->_downloadResponsivenessRating copyWithZone:zone];
  v401 = *(v6 + 784);
  *(v6 + 784) = v400;

  v402 = [(NSString *)self->_downloadSpeedConfidence copyWithZone:zone];
  v403 = *(v6 + 816);
  *(v6 + 816) = v402;

  v404 = [(NSString *)self->_downloadSpeedRating copyWithZone:zone];
  v405 = *(v6 + 824);
  *(v6 + 824) = v404;

  v406 = [(NSString *)self->_uploadResponsiveness copyWithZone:zone];
  v407 = *(v6 + 1352);
  *(v6 + 1352) = v406;

  v408 = [(NSString *)self->_uploadResponsivenessConfidence copyWithZone:zone];
  v409 = *(v6 + 1360);
  *(v6 + 1360) = v408;

  v410 = [(NSString *)self->_uploadResponsivenessRating copyWithZone:zone];
  v411 = *(v6 + 1368);
  *(v6 + 1368) = v410;

  v412 = [(NSString *)self->_uploadSpeedConfidence copyWithZone:zone];
  v413 = *(v6 + 1400);
  *(v6 + 1400) = v412;

  v414 = [(NSString *)self->_uploadSpeedRating copyWithZone:zone];
  v415 = *(v6 + 1408);
  *(v6 + 1408) = v414;

  v416 = [(NSString *)self->_wifiChannelBand copyWithZone:zone];
  v417 = *(v6 + 1528);
  *(v6 + 1528) = v416;

  v418 = [(NSString *)self->_wifiChannelWidth copyWithZone:zone];
  v419 = *(v6 + 1536);
  *(v6 + 1536) = v418;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_149;
  }

  v5 = *(equalCopy + 421);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_149;
    }
  }

  else if (v5)
  {
    goto LABEL_149;
  }

  awdlElectionParameters = self->_awdlElectionParameters;
  if (awdlElectionParameters | *(equalCopy + 2) && ![(NSString *)awdlElectionParameters isEqual:?])
  {
    goto LABEL_149;
  }

  awdlMasterChannel = self->_awdlMasterChannel;
  if (awdlMasterChannel | *(equalCopy + 3))
  {
    if (![(NSString *)awdlMasterChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlOpMode = self->_awdlOpMode;
  if (awdlOpMode | *(equalCopy + 4))
  {
    if (![(NSString *)awdlOpMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v9 = *(equalCopy + 421);
  if ((*&self->_has & 4) != 0)
  {
    if ((v9 & 4) == 0)
    {
      goto LABEL_149;
    }

    v76 = *(equalCopy + 1657);
    if (self->_awdlPowerState)
    {
      if ((*(equalCopy + 1657) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1657))
    {
      goto LABEL_149;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_149;
  }

  awdlSchedule = self->_awdlSchedule;
  if (awdlSchedule | *(equalCopy + 5) && ![(NSString *)awdlSchedule isEqual:?])
  {
    goto LABEL_149;
  }

  awdlSecondaryMasterChannel = self->_awdlSecondaryMasterChannel;
  if (awdlSecondaryMasterChannel | *(equalCopy + 6))
  {
    if (![(NSString *)awdlSecondaryMasterChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlSyncChannelSequence = self->_awdlSyncChannelSequence;
  if (awdlSyncChannelSequence | *(equalCopy + 7))
  {
    if (![(NSString *)awdlSyncChannelSequence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  awdlSyncState = self->_awdlSyncState;
  if (awdlSyncState | *(equalCopy + 8))
  {
    if (![(NSString *)awdlSyncState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  btConnectedDevicesCount = self->_btConnectedDevicesCount;
  if (btConnectedDevicesCount | *(equalCopy + 9))
  {
    if (![(NSString *)btConnectedDevicesCount isEqual:?])
    {
      goto LABEL_149;
    }
  }

  has = self->_has;
  v16 = *(equalCopy + 421);
  if ((*&has & 8) != 0)
  {
    if ((v16 & 8) == 0)
    {
      goto LABEL_149;
    }

    v77 = *(equalCopy + 1658);
    if (self->_btIsConnectable)
    {
      if ((*(equalCopy + 1658) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1658))
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

    v78 = *(equalCopy + 1659);
    if (self->_btIsDiscoverable)
    {
      if ((*(equalCopy + 1659) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1659))
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

    v79 = *(equalCopy + 1660);
    if (self->_btIsPowerOn)
    {
      if ((*(equalCopy + 1660) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1660))
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

    v80 = *(equalCopy + 1661);
    if (self->_btIsScanning)
    {
      if ((*(equalCopy + 1661) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1661))
    {
      goto LABEL_149;
    }
  }

  else if ((v16 & 0x40) != 0)
  {
    goto LABEL_149;
  }

  callingClient = self->_callingClient;
  if (callingClient | *(equalCopy + 10) && ![(NSString *)callingClient isEqual:?])
  {
    goto LABEL_149;
  }

  cellularActiveContexts = self->_cellularActiveContexts;
  if (cellularActiveContexts | *(equalCopy + 11))
  {
    if (![(NSString *)cellularActiveContexts isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v19 = *(equalCopy + 421);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_149;
    }

    v81 = *(equalCopy + 1662);
    if (self->_cellularAllowsVoip)
    {
      if ((*(equalCopy + 1662) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1662))
    {
      goto LABEL_149;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_149;
  }

  cellularAttached = self->_cellularAttached;
  if (cellularAttached | *(equalCopy + 14) && ![(NSString *)cellularAttached isEqual:?])
  {
    goto LABEL_149;
  }

  cellularBandinfo = self->_cellularBandinfo;
  if (cellularBandinfo | *(equalCopy + 15))
  {
    if (![(NSString *)cellularBandinfo isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularBandwidth = self->_cellularBandwidth;
  if (cellularBandwidth | *(equalCopy + 16))
  {
    if (![(NSString *)cellularBandwidth isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularCarrierName = self->_cellularCarrierName;
  if (cellularCarrierName | *(equalCopy + 17))
  {
    if (![(NSString *)cellularCarrierName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataBearerSoMask = self->_cellularDataBearerSoMask;
  if (cellularDataBearerSoMask | *(equalCopy + 19))
  {
    if (![(NSString *)cellularDataBearerSoMask isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataBearerTechnology = self->_cellularDataBearerTechnology;
  if (cellularDataBearerTechnology | *(equalCopy + 20))
  {
    if (![(NSString *)cellularDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataPlanSignalingReductionOverride = self->_cellularDataPlanSignalingReductionOverride;
  if (cellularDataPlanSignalingReductionOverride | *(equalCopy + 21))
  {
    if (![(NSString *)cellularDataPlanSignalingReductionOverride isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularDataPossible = self->_cellularDataPossible;
  if (cellularDataPossible | *(equalCopy + 22))
  {
    if (![(NSString *)cellularDataPossible isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularInHomeCountry = self->_cellularInHomeCountry;
  if (cellularInHomeCountry | *(equalCopy + 23))
  {
    if (![(NSString *)cellularInHomeCountry isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIndicator = self->_cellularIndicator;
  if (cellularIndicator | *(equalCopy + 24))
  {
    if (![(NSString *)cellularIndicator isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIndicatorOverride = self->_cellularIndicatorOverride;
  if (cellularIndicatorOverride | *(equalCopy + 25))
  {
    if (![(NSString *)cellularIndicatorOverride isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIsoCountryCode = self->_cellularIsoCountryCode;
  if (cellularIsoCountryCode | *(equalCopy + 26))
  {
    if (![(NSString *)cellularIsoCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLqm = self->_cellularLqm;
  if (cellularLqm | *(equalCopy + 29))
  {
    if (![(NSString *)cellularLqm isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLteMaxScheduledLayers = self->_cellularLteMaxScheduledLayers;
  if (cellularLteMaxScheduledLayers | *(equalCopy + 30))
  {
    if (![(NSString *)cellularLteMaxScheduledLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMobileCountryCode = self->_cellularMobileCountryCode;
  if (cellularMobileCountryCode | *(equalCopy + 37))
  {
    if (![(NSString *)cellularMobileCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMobileNetworkCode = self->_cellularMobileNetworkCode;
  if (cellularMobileNetworkCode | *(equalCopy + 38))
  {
    if (![(NSString *)cellularMobileNetworkCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioCoverage = self->_cellularNewRadioCoverage;
  if (cellularNewRadioCoverage | *(equalCopy + 39))
  {
    if (![(NSString *)cellularNewRadioCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioDataBearer = self->_cellularNewRadioDataBearer;
  if (cellularNewRadioDataBearer | *(equalCopy + 40))
  {
    if (![(NSString *)cellularNewRadioDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioMmwaveDataBearer = self->_cellularNewRadioMmwaveDataBearer;
  if (cellularNewRadioMmwaveDataBearer | *(equalCopy + 41))
  {
    if (![(NSString *)cellularNewRadioMmwaveDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioNsaCoverage = self->_cellularNewRadioNsaCoverage;
  if (cellularNewRadioNsaCoverage | *(equalCopy + 42))
  {
    if (![(NSString *)cellularNewRadioNsaCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioNsaDataBearer = self->_cellularNewRadioNsaDataBearer;
  if (cellularNewRadioNsaDataBearer | *(equalCopy + 43))
  {
    if (![(NSString *)cellularNewRadioNsaDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSaCoverage = self->_cellularNewRadioSaCoverage;
  if (cellularNewRadioSaCoverage | *(equalCopy + 44))
  {
    if (![(NSString *)cellularNewRadioSaCoverage isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSaDataBearer = self->_cellularNewRadioSaDataBearer;
  if (cellularNewRadioSaDataBearer | *(equalCopy + 45))
  {
    if (![(NSString *)cellularNewRadioSaDataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNewRadioSub6DataBearer = self->_cellularNewRadioSub6DataBearer;
  if (cellularNewRadioSub6DataBearer | *(equalCopy + 46))
  {
    if (![(NSString *)cellularNewRadioSub6DataBearer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrConfiguredBw = self->_cellularNrConfiguredBw;
  if (cellularNrConfiguredBw | *(equalCopy + 47))
  {
    if (![(NSString *)cellularNrConfiguredBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrLayers = self->_cellularNrLayers;
  if (cellularNrLayers | *(equalCopy + 48))
  {
    if (![(NSString *)cellularNrLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrModulation = self->_cellularNrModulation;
  if (cellularNrModulation | *(equalCopy + 49))
  {
    if (![(NSString *)cellularNrModulation isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrRsrp = self->_cellularNrRsrp;
  if (cellularNrRsrp | *(equalCopy + 50))
  {
    if (![(NSString *)cellularNrRsrp isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrRsrq = self->_cellularNrRsrq;
  if (cellularNrRsrq | *(equalCopy + 51))
  {
    if (![(NSString *)cellularNrRsrq isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrSnr = self->_cellularNrSnr;
  if (cellularNrSnr | *(equalCopy + 53))
  {
    if (![(NSString *)cellularNrSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularPid = self->_cellularPid;
  if (cellularPid | *(equalCopy + 55))
  {
    if (![(NSString *)cellularPid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioAccessTechnology = self->_cellularRadioAccessTechnology;
  if (cellularRadioAccessTechnology | *(equalCopy + 56))
  {
    if (![(NSString *)cellularRadioAccessTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioAccessTechnologyCtDataStatus = self->_cellularRadioAccessTechnologyCtDataStatus;
  if (cellularRadioAccessTechnologyCtDataStatus | *(equalCopy + 57))
  {
    if (![(NSString *)cellularRadioAccessTechnologyCtDataStatus isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRoamAllowed = self->_cellularRoamAllowed;
  if (cellularRoamAllowed | *(equalCopy + 61))
  {
    if (![(NSString *)cellularRoamAllowed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRsrp = self->_cellularRsrp;
  if (cellularRsrp | *(equalCopy + 62))
  {
    if (![(NSString *)cellularRsrp isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularSnr = self->_cellularSnr;
  if (cellularSnr | *(equalCopy + 63))
  {
    if (![(NSString *)cellularSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTac = self->_cellularTac;
  if (cellularTac | *(equalCopy + 64))
  {
    if (![(NSString *)cellularTac isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalActiveContexts = self->_cellularTotalActiveContexts;
  if (cellularTotalActiveContexts | *(equalCopy + 65))
  {
    if (![(NSString *)cellularTotalActiveContexts isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalBw = self->_cellularTotalBw;
  if (cellularTotalBw | *(equalCopy + 66))
  {
    if (![(NSString *)cellularTotalBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalCcs = self->_cellularTotalCcs;
  if (cellularTotalCcs | *(equalCopy + 67))
  {
    if (![(NSString *)cellularTotalCcs isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalLayers = self->_cellularTotalLayers;
  if (cellularTotalLayers | *(equalCopy + 69))
  {
    if (![(NSString *)cellularTotalLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularUarfcn = self->_cellularUarfcn;
  if (cellularUarfcn | *(equalCopy + 71))
  {
    if (![(NSString *)cellularUarfcn isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadCdnPop = self->_downloadCdnPop;
  if (downloadCdnPop | *(equalCopy + 72))
  {
    if (![(NSString *)downloadCdnPop isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadCdnUuid = self->_downloadCdnUuid;
  if (downloadCdnUuid | *(equalCopy + 73))
  {
    if (![(NSString *)downloadCdnUuid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadConnectionTime = self->_downloadConnectionTime;
  if (downloadConnectionTime | *(equalCopy + 74))
  {
    if (![(NSString *)downloadConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadDomainLookupTime = self->_downloadDomainLookupTime;
  if (downloadDomainLookupTime | *(equalCopy + 75))
  {
    if (![(NSString *)downloadDomainLookupTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndDataBearerTechnology = self->_downloadEndDataBearerTechnology;
  if (downloadEndDataBearerTechnology | *(equalCopy + 77))
  {
    if (![(NSString *)downloadEndDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndPrimaryIpv4Interface = self->_downloadEndPrimaryIpv4Interface;
  if (downloadEndPrimaryIpv4Interface | *(equalCopy + 78))
  {
    if (![(NSString *)downloadEndPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndRat = self->_downloadEndRat;
  if (downloadEndRat | *(equalCopy + 80))
  {
    if (![(NSString *)downloadEndRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadFileSize = self->_downloadFileSize;
  if (downloadFileSize | *(equalCopy + 84))
  {
    if (![(NSString *)downloadFileSize isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadInterfaceName = self->_downloadInterfaceName;
  if (downloadInterfaceName | *(equalCopy + 85))
  {
    if (![(NSString *)downloadInterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadInterfaceServiceName = self->_downloadInterfaceServiceName;
  if (downloadInterfaceServiceName | *(equalCopy + 86))
  {
    if (![(NSString *)downloadInterfaceServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v72 = self->_has;
  v73 = *(equalCopy + 421);
  if ((*&v72 & 0x200) != 0)
  {
    if ((v73 & 0x200) == 0)
    {
      goto LABEL_149;
    }

    v82 = *(equalCopy + 1664);
    if (self->_downloadIsCellular)
    {
      if ((*(equalCopy + 1664) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1664))
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

    v83 = *(equalCopy + 1665);
    if (self->_downloadIsConstrained)
    {
      if ((*(equalCopy + 1665) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1665))
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

    v84 = *(equalCopy + 1666);
    if (self->_downloadIsExpensive)
    {
      if ((*(equalCopy + 1666) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1666))
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

    v85 = *(equalCopy + 1667);
    if (self->_downloadIsMultipath)
    {
      if ((*(equalCopy + 1667) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1667))
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

    v86 = *(equalCopy + 1668);
    if (self->_downloadIsProxyConnection)
    {
      if ((*(equalCopy + 1668) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1668))
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

    v87 = *(equalCopy + 1669);
    if (self->_downloadIsReusedConnection)
    {
      if ((*(equalCopy + 1669) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1669))
    {
      goto LABEL_149;
    }
  }

  else if ((v73 & 0x4000) != 0)
  {
    goto LABEL_149;
  }

  downloadMaxSpeedObserved = self->_downloadMaxSpeedObserved;
  if (downloadMaxSpeedObserved | *(equalCopy + 88) && ![(NSString *)downloadMaxSpeedObserved isEqual:?])
  {
    goto LABEL_149;
  }

  downloadNumberOfStreams = self->_downloadNumberOfStreams;
  if (downloadNumberOfStreams | *(equalCopy + 89))
  {
    if (![(NSString *)downloadNumberOfStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadProtocolName = self->_downloadProtocolName;
  if (downloadProtocolName | *(equalCopy + 90))
  {
    if (![(NSString *)downloadProtocolName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRemoteAddress = self->_downloadRemoteAddress;
  if (downloadRemoteAddress | *(equalCopy + 91))
  {
    if (![(NSString *)downloadRemoteAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRemotePort = self->_downloadRemotePort;
  if (downloadRemotePort | *(equalCopy + 92))
  {
    if (![(NSString *)downloadRemotePort isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRequestTime = self->_downloadRequestTime;
  if (downloadRequestTime | *(equalCopy + 93))
  {
    if (![(NSString *)downloadRequestTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadRequestToResponseTime = self->_downloadRequestToResponseTime;
  if (downloadRequestToResponseTime | *(equalCopy + 94))
  {
    if (![(NSString *)downloadRequestToResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponseTime = self->_downloadResponseTime;
  if (downloadResponseTime | *(equalCopy + 95))
  {
    if (![(NSString *)downloadResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSecureConnectionTime = self->_downloadSecureConnectionTime;
  if (downloadSecureConnectionTime | *(equalCopy + 99))
  {
    if (![(NSString *)downloadSecureConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadServer = self->_downloadServer;
  if (downloadServer | *(equalCopy + 100))
  {
    if (![(NSString *)downloadServer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeed = self->_downloadSpeed;
  if (downloadSpeed | *(equalCopy + 101))
  {
    if (![(NSString *)downloadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStableSpeed = self->_downloadStableSpeed;
  if (downloadStableSpeed | *(equalCopy + 104))
  {
    if (![(NSString *)downloadStableSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartDataBearerTechnology = self->_downloadStartDataBearerTechnology;
  if (downloadStartDataBearerTechnology | *(equalCopy + 106))
  {
    if (![(NSString *)downloadStartDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartPrimaryIpv4Interface = self->_downloadStartPrimaryIpv4Interface;
  if (downloadStartPrimaryIpv4Interface | *(equalCopy + 107))
  {
    if (![(NSString *)downloadStartPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartRat = self->_downloadStartRat;
  if (downloadStartRat | *(equalCopy + 109))
  {
    if (![(NSString *)downloadStartRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v103 = *(equalCopy + 421);
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    v104 = *(equalCopy + 1670);
    if (self->_networkIsAppleReachable)
    {
      if ((*(equalCopy + 1670) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1670))
    {
      goto LABEL_149;
    }
  }

  else if ((v103 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  networkPrimaryIpv4InterfaceName = self->_networkPrimaryIpv4InterfaceName;
  if (networkPrimaryIpv4InterfaceName | *(equalCopy + 110) && ![(NSString *)networkPrimaryIpv4InterfaceName isEqual:?])
  {
    goto LABEL_149;
  }

  networkPrimaryIpv4ServiceName = self->_networkPrimaryIpv4ServiceName;
  if (networkPrimaryIpv4ServiceName | *(equalCopy + 111))
  {
    if (![(NSString *)networkPrimaryIpv4ServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  nptkitFrameworkVersion = self->_nptkitFrameworkVersion;
  if (nptkitFrameworkVersion | *(equalCopy + 121))
  {
    if (![(NSString *)nptkitFrameworkVersion isEqual:?])
    {
      goto LABEL_149;
    }
  }

  performanceTestStartTime = self->_performanceTestStartTime;
  if (performanceTestStartTime | *(equalCopy + 122))
  {
    if (![(NSString *)performanceTestStartTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingAddress = self->_pingAddress;
  if (pingAddress | *(equalCopy + 123))
  {
    if (![(NSString *)pingAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingLossPercent = self->_pingLossPercent;
  if (pingLossPercent | *(equalCopy + 127))
  {
    if (![(NSString *)pingLossPercent isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMaxLatency = self->_pingMaxLatency;
  if (pingMaxLatency | *(equalCopy + 128))
  {
    if (![(NSString *)pingMaxLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMeanLatency = self->_pingMeanLatency;
  if (pingMeanLatency | *(equalCopy + 129))
  {
    if (![(NSString *)pingMeanLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingMinLatency = self->_pingMinLatency;
  if (pingMinLatency | *(equalCopy + 130))
  {
    if (![(NSString *)pingMinLatency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingStandardDeviation = self->_pingStandardDeviation;
  if (pingStandardDeviation | *(equalCopy + 131))
  {
    if (![(NSString *)pingStandardDeviation isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerBatteryWarningLevel = self->_powerBatteryWarningLevel;
  if (powerBatteryWarningLevel | *(equalCopy + 132))
  {
    if (![(NSString *)powerBatteryWarningLevel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerSourceType = self->_powerSourceType;
  if (powerSourceType | *(equalCopy + 133))
  {
    if (![(NSString *)powerSourceType isEqual:?])
    {
      goto LABEL_149;
    }
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps | *(equalCopy + 134))
  {
    if (![(NSString *)powerStateCaps isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemActiveProcessorCount = self->_systemActiveProcessorCount;
  if (systemActiveProcessorCount | *(equalCopy + 135))
  {
    if (![(NSString *)systemActiveProcessorCount isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemBatteryLevel = self->_systemBatteryLevel;
  if (systemBatteryLevel | *(equalCopy + 136))
  {
    if (![(NSString *)systemBatteryLevel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemBatteryState = self->_systemBatteryState;
  if (systemBatteryState | *(equalCopy + 137))
  {
    if (![(NSString *)systemBatteryState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemDeviceClass = self->_systemDeviceClass;
  if (systemDeviceClass | *(equalCopy + 138))
  {
    if (![(NSString *)systemDeviceClass isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemDeviceModel = self->_systemDeviceModel;
  if (systemDeviceModel | *(equalCopy + 139))
  {
    if (![(NSString *)systemDeviceModel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v123 = *(equalCopy + 421);
  if (*(&self->_has + 2))
  {
    if ((v123 & 0x10000) == 0)
    {
      goto LABEL_149;
    }

    v124 = *(equalCopy + 1671);
    if (self->_systemLowPowerModeEnabled)
    {
      if ((*(equalCopy + 1671) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1671))
    {
      goto LABEL_149;
    }
  }

  else if ((v123 & 0x10000) != 0)
  {
    goto LABEL_149;
  }

  systemName = self->_systemName;
  if (systemName | *(equalCopy + 140) && ![(NSString *)systemName isEqual:?])
  {
    goto LABEL_149;
  }

  systemOsVariant = self->_systemOsVariant;
  if (systemOsVariant | *(equalCopy + 141))
  {
    if (![(NSString *)systemOsVariant isEqual:?])
    {
      goto LABEL_149;
    }
  }

  systemPhysicalMemory = self->_systemPhysicalMemory;
  if (systemPhysicalMemory | *(equalCopy + 142))
  {
    if (![(NSString *)systemPhysicalMemory isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v128 = *(equalCopy + 421);
  if ((*(&self->_has + 2) & 2) != 0)
  {
    if ((v128 & 0x20000) == 0)
    {
      goto LABEL_149;
    }

    v129 = *(equalCopy + 1672);
    if (self->_systemPowersourceConnected)
    {
      if ((*(equalCopy + 1672) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1672))
    {
      goto LABEL_149;
    }
  }

  else if ((v128 & 0x20000) != 0)
  {
    goto LABEL_149;
  }

  systemProcessorCount = self->_systemProcessorCount;
  if (systemProcessorCount | *(equalCopy + 143) && ![(NSString *)systemProcessorCount isEqual:?])
  {
    goto LABEL_149;
  }

  systemVersion = self->_systemVersion;
  if (systemVersion | *(equalCopy + 144))
  {
    if (![(NSString *)systemVersion isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadCdnPop = self->_uploadCdnPop;
  if (uploadCdnPop | *(equalCopy + 145))
  {
    if (![(NSString *)uploadCdnPop isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadCdnUuid = self->_uploadCdnUuid;
  if (uploadCdnUuid | *(equalCopy + 146))
  {
    if (![(NSString *)uploadCdnUuid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadConnectionTime = self->_uploadConnectionTime;
  if (uploadConnectionTime | *(equalCopy + 147))
  {
    if (![(NSString *)uploadConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadDomainLookupTime = self->_uploadDomainLookupTime;
  if (uploadDomainLookupTime | *(equalCopy + 148))
  {
    if (![(NSString *)uploadDomainLookupTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndDataBearerTechnology = self->_uploadEndDataBearerTechnology;
  if (uploadEndDataBearerTechnology | *(equalCopy + 150))
  {
    if (![(NSString *)uploadEndDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndPrimaryIpv4Interface = self->_uploadEndPrimaryIpv4Interface;
  if (uploadEndPrimaryIpv4Interface | *(equalCopy + 151))
  {
    if (![(NSString *)uploadEndPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndRat = self->_uploadEndRat;
  if (uploadEndRat | *(equalCopy + 153))
  {
    if (![(NSString *)uploadEndRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadFileSize = self->_uploadFileSize;
  if (uploadFileSize | *(equalCopy + 157))
  {
    if (![(NSString *)uploadFileSize isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadInterfaceName = self->_uploadInterfaceName;
  if (uploadInterfaceName | *(equalCopy + 158))
  {
    if (![(NSString *)uploadInterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadInterfaceServiceName = self->_uploadInterfaceServiceName;
  if (uploadInterfaceServiceName | *(equalCopy + 159))
  {
    if (![(NSString *)uploadInterfaceServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v142 = self->_has;
  v143 = *(equalCopy + 421);
  if ((*&v142 & 0x40000) != 0)
  {
    if ((v143 & 0x40000) == 0)
    {
      goto LABEL_149;
    }

    v144 = *(equalCopy + 1673);
    if (self->_uploadIsCellular)
    {
      if ((*(equalCopy + 1673) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1673))
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

    v145 = *(equalCopy + 1674);
    if (self->_uploadIsConstrained)
    {
      if ((*(equalCopy + 1674) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1674))
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

    v146 = *(equalCopy + 1675);
    if (self->_uploadIsExpensive)
    {
      if ((*(equalCopy + 1675) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1675))
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

    v147 = *(equalCopy + 1676);
    if (self->_uploadIsMultipath)
    {
      if ((*(equalCopy + 1676) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1676))
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

    v148 = *(equalCopy + 1677);
    if (self->_uploadIsProxyConnection)
    {
      if ((*(equalCopy + 1677) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1677))
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

    v149 = *(equalCopy + 1678);
    if (self->_uploadIsReusedConnection)
    {
      if ((*(equalCopy + 1678) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1678))
    {
      goto LABEL_149;
    }
  }

  else if ((v143 & 0x800000) != 0)
  {
    goto LABEL_149;
  }

  uploadMaxSpeedObserved = self->_uploadMaxSpeedObserved;
  if (uploadMaxSpeedObserved | *(equalCopy + 161) && ![(NSString *)uploadMaxSpeedObserved isEqual:?])
  {
    goto LABEL_149;
  }

  uploadNumberOfStreams = self->_uploadNumberOfStreams;
  if (uploadNumberOfStreams | *(equalCopy + 162))
  {
    if (![(NSString *)uploadNumberOfStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadProtocolName = self->_uploadProtocolName;
  if (uploadProtocolName | *(equalCopy + 163))
  {
    if (![(NSString *)uploadProtocolName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRemoteAddress = self->_uploadRemoteAddress;
  if (uploadRemoteAddress | *(equalCopy + 164))
  {
    if (![(NSString *)uploadRemoteAddress isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRemotePort = self->_uploadRemotePort;
  if (uploadRemotePort | *(equalCopy + 165))
  {
    if (![(NSString *)uploadRemotePort isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRequestTime = self->_uploadRequestTime;
  if (uploadRequestTime | *(equalCopy + 166))
  {
    if (![(NSString *)uploadRequestTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadRequestToResponseTime = self->_uploadRequestToResponseTime;
  if (uploadRequestToResponseTime | *(equalCopy + 167))
  {
    if (![(NSString *)uploadRequestToResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponseTime = self->_uploadResponseTime;
  if (uploadResponseTime | *(equalCopy + 168))
  {
    if (![(NSString *)uploadResponseTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSecureConnectionTime = self->_uploadSecureConnectionTime;
  if (uploadSecureConnectionTime | *(equalCopy + 172))
  {
    if (![(NSString *)uploadSecureConnectionTime isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadServer = self->_uploadServer;
  if (uploadServer | *(equalCopy + 173))
  {
    if (![(NSString *)uploadServer isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeed = self->_uploadSpeed;
  if (uploadSpeed | *(equalCopy + 174))
  {
    if (![(NSString *)uploadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStableSpeed = self->_uploadStableSpeed;
  if (uploadStableSpeed | *(equalCopy + 177))
  {
    if (![(NSString *)uploadStableSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartDataBearerTechnology = self->_uploadStartDataBearerTechnology;
  if (uploadStartDataBearerTechnology | *(equalCopy + 179))
  {
    if (![(NSString *)uploadStartDataBearerTechnology isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartPrimaryIpv4Interface = self->_uploadStartPrimaryIpv4Interface;
  if (uploadStartPrimaryIpv4Interface | *(equalCopy + 180))
  {
    if (![(NSString *)uploadStartPrimaryIpv4Interface isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartRat = self->_uploadStartRat;
  if (uploadStartRat | *(equalCopy + 182))
  {
    if (![(NSString *)uploadStartRat isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v165 = *(equalCopy + 421);
  if (*(&self->_has + 3))
  {
    if ((v165 & 0x1000000) == 0)
    {
      goto LABEL_149;
    }

    v166 = *(equalCopy + 1679);
    if (self->_useWifiWasSpecified)
    {
      if ((*(equalCopy + 1679) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1679))
    {
      goto LABEL_149;
    }
  }

  else if ((v165 & 0x1000000) != 0)
  {
    goto LABEL_149;
  }

  wifiAveragePhyRateRx = self->_wifiAveragePhyRateRx;
  if (wifiAveragePhyRateRx | *(equalCopy + 184) && ![(NSString *)wifiAveragePhyRateRx isEqual:?])
  {
    goto LABEL_149;
  }

  wifiAverageRssi = self->_wifiAverageRssi;
  if (wifiAverageRssi | *(equalCopy + 185))
  {
    if (![(NSString *)wifiAverageRssi isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiAverageSnr = self->_wifiAverageSnr;
  if (wifiAverageSnr | *(equalCopy + 186))
  {
    if (![(NSString *)wifiAverageSnr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiAverageTcpRtt = self->_wifiAverageTcpRtt;
  if (wifiAverageTcpRtt | *(equalCopy + 187))
  {
    if (![(NSString *)wifiAverageTcpRtt isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiBtcMode = self->_wifiBtcMode;
  if (wifiBtcMode | *(equalCopy + 188))
  {
    if (![(NSString *)wifiBtcMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiCca = self->_wifiCca;
  if (wifiCca | *(equalCopy + 189))
  {
    if (![(NSString *)wifiCca isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannel = self->_wifiChannel;
  if (wifiChannel | *(equalCopy + 190))
  {
    if (![(NSString *)wifiChannel isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiCwfCca = self->_wifiCwfCca;
  if (wifiCwfCca | *(equalCopy + 193))
  {
    if (![(NSString *)wifiCwfCca isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiEapolControlMode = self->_wifiEapolControlMode;
  if (wifiEapolControlMode | *(equalCopy + 194))
  {
    if (![(NSString *)wifiEapolControlMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiEapolSupplicantState = self->_wifiEapolSupplicantState;
  if (wifiEapolSupplicantState | *(equalCopy + 195))
  {
    if (![(NSString *)wifiEapolSupplicantState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiGuardInterval = self->_wifiGuardInterval;
  if (wifiGuardInterval | *(equalCopy + 196))
  {
    if (![(NSString *)wifiGuardInterval isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiHiddenState = self->_wifiHiddenState;
  if (wifiHiddenState | *(equalCopy + 197))
  {
    if (![(NSString *)wifiHiddenState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v179 = *(equalCopy + 421);
  if ((*(&self->_has + 3) & 2) != 0)
  {
    if ((v179 & 0x2000000) == 0)
    {
      goto LABEL_149;
    }

    v180 = *(equalCopy + 1680);
    if (self->_wifiIsCaptive)
    {
      if ((*(equalCopy + 1680) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1680))
    {
      goto LABEL_149;
    }
  }

  else if ((v179 & 0x2000000) != 0)
  {
    goto LABEL_149;
  }

  wifiMcsIndex = self->_wifiMcsIndex;
  if (wifiMcsIndex | *(equalCopy + 198) && ![(NSString *)wifiMcsIndex isEqual:?])
  {
    goto LABEL_149;
  }

  wifiNoise = self->_wifiNoise;
  if (wifiNoise | *(equalCopy + 199))
  {
    if (![(NSString *)wifiNoise isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiNumberOfSpatialStreams = self->_wifiNumberOfSpatialStreams;
  if (wifiNumberOfSpatialStreams | *(equalCopy + 200))
  {
    if (![(NSString *)wifiNumberOfSpatialStreams isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiOpMode = self->_wifiOpMode;
  if (wifiOpMode | *(equalCopy + 201))
  {
    if (![(NSString *)wifiOpMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiPhyMode = self->_wifiPhyMode;
  if (wifiPhyMode | *(equalCopy + 202))
  {
    if (![(NSString *)wifiPhyMode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiRssi = self->_wifiRssi;
  if (wifiRssi | *(equalCopy + 203))
  {
    if (![(NSString *)wifiRssi isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiSecurity = self->_wifiSecurity;
  if (wifiSecurity | *(equalCopy + 204))
  {
    if (![(NSString *)wifiSecurity isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiTxRate = self->_wifiTxRate;
  if (wifiTxRate | *(equalCopy + 205))
  {
    if (![(NSString *)wifiTxRate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wrmChannelType = self->_wrmChannelType;
  if (wrmChannelType | *(equalCopy + 206))
  {
    if (![(NSString *)wrmChannelType isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularCellid = self->_cellularCellid;
  if (cellularCellid | *(equalCopy + 18))
  {
    if (![(NSString *)cellularCellid isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v191 = *(equalCopy + 421);
  if ((*&self->_has & 2) != 0)
  {
    if ((v191 & 2) == 0)
    {
      goto LABEL_149;
    }

    v192 = *(equalCopy + 1656);
    if (self->_acceptablePerformanceResult)
    {
      if ((*(equalCopy + 1656) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    else if (*(equalCopy + 1656))
    {
      goto LABEL_149;
    }
  }

  else if ((v191 & 2) != 0)
  {
    goto LABEL_149;
  }

  networkQualityResponsiveness = self->_networkQualityResponsiveness;
  if (networkQualityResponsiveness | *(equalCopy + 119) && ![(NSString *)networkQualityResponsiveness isEqual:?])
  {
    goto LABEL_149;
  }

  cellularAggregatedDLBW = self->_cellularAggregatedDLBW;
  if (cellularAggregatedDLBW | *(equalCopy + 12))
  {
    if (![(NSString *)cellularAggregatedDLBW isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularAggregatedULBW = self->_cellularAggregatedULBW;
  if (cellularAggregatedULBW | *(equalCopy + 13))
  {
    if (![(NSString *)cellularAggregatedULBW isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularIssa = self->_cellularIssa;
  if (cellularIssa | *(equalCopy + 27))
  {
    if (![(NSString *)cellularIssa isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLac = self->_cellularLac;
  if (cellularLac | *(equalCopy + 28))
  {
    if (![(NSString *)cellularLac isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularLteNrConfiguredBw = self->_cellularLteNrConfiguredBw;
  if (cellularLteNrConfiguredBw | *(equalCopy + 31))
  {
    if (![(NSString *)cellularLteNrConfiguredBw isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxDlMod = self->_cellularMaxDlMod;
  if (cellularMaxDlMod | *(equalCopy + 32))
  {
    if (![(NSString *)cellularMaxDlMod isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxNwMimoLyr = self->_cellularMaxNwMimoLyr;
  if (cellularMaxNwMimoLyr | *(equalCopy + 33))
  {
    if (![(NSString *)cellularMaxNwMimoLyr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxSchdMimoLyr = self->_cellularMaxSchdMimoLyr;
  if (cellularMaxSchdMimoLyr | *(equalCopy + 34))
  {
    if (![(NSString *)cellularMaxSchdMimoLyr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxUeRank = self->_cellularMaxUeRank;
  if (cellularMaxUeRank | *(equalCopy + 35))
  {
    if (![(NSString *)cellularMaxUeRank isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularMaxUlMod = self->_cellularMaxUlMod;
  if (cellularMaxUlMod | *(equalCopy + 36))
  {
    if (![(NSString *)cellularMaxUlMod isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrSinr = self->_cellularNrSinr;
  if (cellularNrSinr | *(equalCopy + 52))
  {
    if (![(NSString *)cellularNrSinr isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularNrarfcn = self->_cellularNrarfcn;
  if (cellularNrarfcn | *(equalCopy + 54))
  {
    if (![(NSString *)cellularNrarfcn isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRadioFrequency = self->_cellularRadioFrequency;
  if (cellularRadioFrequency | *(equalCopy + 58))
  {
    if (![(NSString *)cellularRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalDlMimoLayers = self->_cellularTotalDlMimoLayers;
  if (cellularTotalDlMimoLayers | *(equalCopy + 68))
  {
    if (![(NSString *)cellularTotalDlMimoLayers isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularTotalNumCcs = self->_cellularTotalNumCcs;
  if (cellularTotalNumCcs | *(equalCopy + 70))
  {
    if (![(NSString *)cellularTotalNumCcs isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadStartRadioFrequency = self->_downloadStartRadioFrequency;
  if (downloadStartRadioFrequency | *(equalCopy + 108))
  {
    if (![(NSString *)downloadStartRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadEndRadioFrequency = self->_downloadEndRadioFrequency;
  if (downloadEndRadioFrequency | *(equalCopy + 79))
  {
    if (![(NSString *)downloadEndRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkPrimaryIpv6InterfaceName = self->_networkPrimaryIpv6InterfaceName;
  if (networkPrimaryIpv6InterfaceName | *(equalCopy + 112))
  {
    if (![(NSString *)networkPrimaryIpv6InterfaceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkPrimaryIpv6ServiceName = self->_networkPrimaryIpv6ServiceName;
  if (networkPrimaryIpv6ServiceName | *(equalCopy + 113))
  {
    if (![(NSString *)networkPrimaryIpv6ServiceName isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartRadioFrequency = self->_uploadStartRadioFrequency;
  if (uploadStartRadioFrequency | *(equalCopy + 181))
  {
    if (![(NSString *)uploadStartRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndRadioFrequency = self->_uploadEndRadioFrequency;
  if (uploadEndRadioFrequency | *(equalCopy + 152))
  {
    if (![(NSString *)uploadEndRadioFrequency isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadError = self->_downloadError;
  if (downloadError | *(equalCopy + 81))
  {
    if (![(NSString *)downloadError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityError = self->_networkQualityError;
  if (networkQualityError | *(equalCopy + 115))
  {
    if (![(NSString *)networkQualityError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityDownloadSpeed = self->_networkQualityDownloadSpeed;
  if (networkQualityDownloadSpeed | *(equalCopy + 114))
  {
    if (![(NSString *)networkQualityDownloadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityUploadSpeed = self->_networkQualityUploadSpeed;
  if (networkQualityUploadSpeed | *(equalCopy + 120))
  {
    if (![(NSString *)networkQualityUploadSpeed isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityRating = self->_networkQualityRating;
  if (networkQualityRating | *(equalCopy + 118))
  {
    if (![(NSString *)networkQualityRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  vpnConnectionState = self->_vpnConnectionState;
  if (vpnConnectionState | *(equalCopy + 183))
  {
    if (![(NSString *)vpnConnectionState isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadError = self->_uploadError;
  if (uploadError | *(equalCopy + 154))
  {
    if (![(NSString *)uploadError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadErrorDomain = self->_uploadErrorDomain;
  if (uploadErrorDomain | *(equalCopy + 156))
  {
    if (![(NSString *)uploadErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadErrorCode = self->_uploadErrorCode;
  if (uploadErrorCode | *(equalCopy + 155))
  {
    if (![(NSString *)uploadErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadErrorDomain = self->_downloadErrorDomain;
  if (downloadErrorDomain | *(equalCopy + 83))
  {
    if (![(NSString *)downloadErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadErrorCode = self->_downloadErrorCode;
  if (downloadErrorCode | *(equalCopy + 82))
  {
    if (![(NSString *)downloadErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingError = self->_pingError;
  if (pingError | *(equalCopy + 124))
  {
    if (![(NSString *)pingError isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingErrorDomain = self->_pingErrorDomain;
  if (pingErrorDomain | *(equalCopy + 126))
  {
    if (![(NSString *)pingErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  pingErrorCode = self->_pingErrorCode;
  if (pingErrorCode | *(equalCopy + 125))
  {
    if (![(NSString *)pingErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityErrorDomain = self->_networkQualityErrorDomain;
  if (networkQualityErrorDomain | *(equalCopy + 117))
  {
    if (![(NSString *)networkQualityErrorDomain isEqual:?])
    {
      goto LABEL_149;
    }
  }

  networkQualityErrorCode = self->_networkQualityErrorCode;
  if (networkQualityErrorCode | *(equalCopy + 116))
  {
    if (![(NSString *)networkQualityErrorCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRnMobileCountryCode = self->_cellularRnMobileCountryCode;
  if (cellularRnMobileCountryCode | *(equalCopy + 59))
  {
    if (![(NSString *)cellularRnMobileCountryCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  cellularRnMobileNetworkCode = self->_cellularRnMobileNetworkCode;
  if (cellularRnMobileNetworkCode | *(equalCopy + 60))
  {
    if (![(NSString *)cellularRnMobileNetworkCode isEqual:?])
    {
      goto LABEL_149;
    }
  }

  v233 = *(equalCopy + 421);
  if (*(&self->_has + 1))
  {
    if ((v233 & 0x100) != 0)
    {
      v234 = *(equalCopy + 1663);
      if (self->_cellularDataIsEnabled)
      {
        if ((*(equalCopy + 1663) & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_583;
      }

      if ((*(equalCopy + 1663) & 1) == 0)
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
  if (downloadStartCellularEstimate | *(equalCopy + 105) && ![(NSString *)downloadStartCellularEstimate isEqual:?])
  {
    goto LABEL_149;
  }

  downloadEndCellularEstimate = self->_downloadEndCellularEstimate;
  if (downloadEndCellularEstimate | *(equalCopy + 76))
  {
    if (![(NSString *)downloadEndCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadMaxCellularEstimate = self->_downloadMaxCellularEstimate;
  if (downloadMaxCellularEstimate | *(equalCopy + 87))
  {
    if (![(NSString *)downloadMaxCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadStartCellularEstimate = self->_uploadStartCellularEstimate;
  if (uploadStartCellularEstimate | *(equalCopy + 178))
  {
    if (![(NSString *)uploadStartCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadEndCellularEstimate = self->_uploadEndCellularEstimate;
  if (uploadEndCellularEstimate | *(equalCopy + 149))
  {
    if (![(NSString *)uploadEndCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadMaxCellularEstimate = self->_uploadMaxCellularEstimate;
  if (uploadMaxCellularEstimate | *(equalCopy + 160))
  {
    if (![(NSString *)uploadMaxCellularEstimate isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsiveness = self->_downloadResponsiveness;
  if (downloadResponsiveness | *(equalCopy + 96))
  {
    if (![(NSString *)downloadResponsiveness isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsivenessConfidence = self->_downloadResponsivenessConfidence;
  if (downloadResponsivenessConfidence | *(equalCopy + 97))
  {
    if (![(NSString *)downloadResponsivenessConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadResponsivenessRating = self->_downloadResponsivenessRating;
  if (downloadResponsivenessRating | *(equalCopy + 98))
  {
    if (![(NSString *)downloadResponsivenessRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeedConfidence = self->_downloadSpeedConfidence;
  if (downloadSpeedConfidence | *(equalCopy + 102))
  {
    if (![(NSString *)downloadSpeedConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  downloadSpeedRating = self->_downloadSpeedRating;
  if (downloadSpeedRating | *(equalCopy + 103))
  {
    if (![(NSString *)downloadSpeedRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsiveness = self->_uploadResponsiveness;
  if (uploadResponsiveness | *(equalCopy + 169))
  {
    if (![(NSString *)uploadResponsiveness isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsivenessConfidence = self->_uploadResponsivenessConfidence;
  if (uploadResponsivenessConfidence | *(equalCopy + 170))
  {
    if (![(NSString *)uploadResponsivenessConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadResponsivenessRating = self->_uploadResponsivenessRating;
  if (uploadResponsivenessRating | *(equalCopy + 171))
  {
    if (![(NSString *)uploadResponsivenessRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeedConfidence = self->_uploadSpeedConfidence;
  if (uploadSpeedConfidence | *(equalCopy + 175))
  {
    if (![(NSString *)uploadSpeedConfidence isEqual:?])
    {
      goto LABEL_149;
    }
  }

  uploadSpeedRating = self->_uploadSpeedRating;
  if (uploadSpeedRating | *(equalCopy + 176))
  {
    if (![(NSString *)uploadSpeedRating isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannelBand = self->_wifiChannelBand;
  if (wifiChannelBand | *(equalCopy + 191))
  {
    if (![(NSString *)wifiChannelBand isEqual:?])
    {
      goto LABEL_149;
    }
  }

  wifiChannelWidth = self->_wifiChannelWidth;
  if (wifiChannelWidth | *(equalCopy + 192))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1684))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlElectionParameters:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 3))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlMasterChannel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 4))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlOpMode:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1684) & 4) != 0)
  {
    self->_awdlPowerState = *(fromCopy + 1657);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 5))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSchedule:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSecondaryMasterChannel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSyncChannelSequence:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 8))
  {
    [(AWDNetworkPerformanceMetric *)self setAwdlSyncState:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(AWDNetworkPerformanceMetric *)self setBtConnectedDevicesCount:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 421);
  if ((v5 & 8) != 0)
  {
    self->_btIsConnectable = *(fromCopy + 1658);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 421);
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

  self->_btIsDiscoverable = *(fromCopy + 1659);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 421);
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
  self->_btIsPowerOn = *(fromCopy + 1660);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 421) & 0x40) != 0)
  {
LABEL_25:
    self->_btIsScanning = *(fromCopy + 1661);
    *&self->_has |= 0x40u;
  }

LABEL_26:
  if (*(fromCopy + 10))
  {
    [(AWDNetworkPerformanceMetric *)self setCallingClient:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 11))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularActiveContexts:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1684) & 0x80) != 0)
  {
    self->_cellularAllowsVoip = *(fromCopy + 1662);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 14))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAttached:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 15))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularBandinfo:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 16))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularBandwidth:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 17))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularCarrierName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 19))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataBearerSoMask:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 20))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataBearerTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 21))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataPlanSignalingReductionOverride:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 22))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularDataPossible:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 23))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularInHomeCountry:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 24))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIndicator:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 25))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIndicatorOverride:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 26))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIsoCountryCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 29))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLqm:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 30))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLteMaxScheduledLayers:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 37))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMobileCountryCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 38))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMobileNetworkCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 39))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioCoverage:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 40))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioDataBearer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 41))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioMmwaveDataBearer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 42))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioNsaCoverage:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 43))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioNsaDataBearer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 44))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSaCoverage:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 45))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSaDataBearer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 46))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNewRadioSub6DataBearer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 47))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrConfiguredBw:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 48))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrLayers:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 49))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrModulation:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 50))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrRsrp:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 51))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrRsrq:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 53))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrSnr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 55))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularPid:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 56))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioAccessTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 57))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioAccessTechnologyCtDataStatus:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 61))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRoamAllowed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 62))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRsrp:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 63))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularSnr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 64))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTac:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 65))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalActiveContexts:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 66))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalBw:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 67))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalCcs:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 69))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalLayers:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 71))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularUarfcn:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 72))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadCdnPop:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 73))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadCdnUuid:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 74))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadConnectionTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 75))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadDomainLookupTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 77))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndDataBearerTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 78))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndPrimaryIpv4Interface:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 80))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndRat:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 84))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadFileSize:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 85))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadInterfaceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 86))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadInterfaceServiceName:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 421);
  if ((v6 & 0x200) != 0)
  {
    self->_downloadIsCellular = *(fromCopy + 1664);
    *&self->_has |= 0x200u;
    v6 = *(fromCopy + 421);
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

  self->_downloadIsConstrained = *(fromCopy + 1665);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 421);
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
  self->_downloadIsExpensive = *(fromCopy + 1666);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 421);
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
  self->_downloadIsMultipath = *(fromCopy + 1667);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 421);
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
  self->_downloadIsProxyConnection = *(fromCopy + 1668);
  *&self->_has |= 0x2000u;
  if ((*(fromCopy + 421) & 0x4000) != 0)
  {
LABEL_142:
    self->_downloadIsReusedConnection = *(fromCopy + 1669);
    *&self->_has |= 0x4000u;
  }

LABEL_143:
  if (*(fromCopy + 88))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadMaxSpeedObserved:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 89))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadNumberOfStreams:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 90))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadProtocolName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 91))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRemoteAddress:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 92))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRemotePort:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 93))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRequestTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 94))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadRequestToResponseTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 95))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponseTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 99))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSecureConnectionTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 100))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadServer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 101))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 104))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStableSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 106))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartDataBearerTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 107))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartPrimaryIpv4Interface:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 109))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartRat:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1685) & 0x80) != 0)
  {
    self->_networkIsAppleReachable = *(fromCopy + 1670);
    *&self->_has |= 0x8000u;
  }

  if (*(fromCopy + 110))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv4InterfaceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 111))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv4ServiceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 121))
  {
    [(AWDNetworkPerformanceMetric *)self setNptkitFrameworkVersion:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 122))
  {
    [(AWDNetworkPerformanceMetric *)self setPerformanceTestStartTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 123))
  {
    [(AWDNetworkPerformanceMetric *)self setPingAddress:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 127))
  {
    [(AWDNetworkPerformanceMetric *)self setPingLossPercent:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 128))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMaxLatency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 129))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMeanLatency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 130))
  {
    [(AWDNetworkPerformanceMetric *)self setPingMinLatency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 131))
  {
    [(AWDNetworkPerformanceMetric *)self setPingStandardDeviation:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 132))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerBatteryWarningLevel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 133))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerSourceType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 134))
  {
    [(AWDNetworkPerformanceMetric *)self setPowerStateCaps:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 135))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemActiveProcessorCount:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 136))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemBatteryLevel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 137))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemBatteryState:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 138))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemDeviceClass:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 139))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemDeviceModel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1686))
  {
    self->_systemLowPowerModeEnabled = *(fromCopy + 1671);
    *&self->_has |= 0x10000u;
  }

  if (*(fromCopy + 140))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 141))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemOsVariant:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 142))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemPhysicalMemory:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1686) & 2) != 0)
  {
    self->_systemPowersourceConnected = *(fromCopy + 1672);
    *&self->_has |= 0x20000u;
  }

  if (*(fromCopy + 143))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemProcessorCount:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 144))
  {
    [(AWDNetworkPerformanceMetric *)self setSystemVersion:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 145))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadCdnPop:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 146))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadCdnUuid:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 147))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadConnectionTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 148))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadDomainLookupTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 150))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndDataBearerTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 151))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndPrimaryIpv4Interface:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 153))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndRat:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 157))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadFileSize:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 158))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadInterfaceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 159))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadInterfaceServiceName:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 421);
  if ((v7 & 0x40000) != 0)
  {
    self->_uploadIsCellular = *(fromCopy + 1673);
    *&self->_has |= 0x40000u;
    v7 = *(fromCopy + 421);
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

  self->_uploadIsConstrained = *(fromCopy + 1674);
  *&self->_has |= 0x80000u;
  v7 = *(fromCopy + 421);
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
  self->_uploadIsExpensive = *(fromCopy + 1675);
  *&self->_has |= 0x100000u;
  v7 = *(fromCopy + 421);
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
  self->_uploadIsMultipath = *(fromCopy + 1676);
  *&self->_has |= 0x200000u;
  v7 = *(fromCopy + 421);
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
  self->_uploadIsProxyConnection = *(fromCopy + 1677);
  *&self->_has |= 0x400000u;
  if ((*(fromCopy + 421) & 0x800000) != 0)
  {
LABEL_251:
    self->_uploadIsReusedConnection = *(fromCopy + 1678);
    *&self->_has |= 0x800000u;
  }

LABEL_252:
  if (*(fromCopy + 161))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadMaxSpeedObserved:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 162))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadNumberOfStreams:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 163))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadProtocolName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 164))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRemoteAddress:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 165))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRemotePort:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 166))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRequestTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 167))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadRequestToResponseTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 168))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponseTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 172))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSecureConnectionTime:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 173))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadServer:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 174))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 177))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStableSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 179))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartDataBearerTechnology:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 180))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartPrimaryIpv4Interface:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 182))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartRat:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1687))
  {
    self->_useWifiWasSpecified = *(fromCopy + 1679);
    *&self->_has |= 0x1000000u;
  }

  if (*(fromCopy + 184))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAveragePhyRateRx:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 185))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageRssi:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 186))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageSnr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 187))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiAverageTcpRtt:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 188))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiBtcMode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 189))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiCca:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 190))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 193))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiCwfCca:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 194))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiEapolControlMode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 195))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiEapolSupplicantState:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 196))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiGuardInterval:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 197))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiHiddenState:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1687) & 2) != 0)
  {
    self->_wifiIsCaptive = *(fromCopy + 1680);
    *&self->_has |= 0x2000000u;
  }

  if (*(fromCopy + 198))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiMcsIndex:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 199))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiNoise:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 200))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiNumberOfSpatialStreams:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 201))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiOpMode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 202))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiPhyMode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 203))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiRssi:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 204))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiSecurity:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 205))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiTxRate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 206))
  {
    [(AWDNetworkPerformanceMetric *)self setWrmChannelType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 18))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularCellid:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 1684) & 2) != 0)
  {
    self->_acceptablePerformanceResult = *(fromCopy + 1656);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 119))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityResponsiveness:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 12))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAggregatedDLBW:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 13))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularAggregatedULBW:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 27))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularIssa:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 28))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLac:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 31))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularLteNrConfiguredBw:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 32))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxDlMod:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 33))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxNwMimoLyr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 34))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxSchdMimoLyr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 35))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxUeRank:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 36))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularMaxUlMod:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 52))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrSinr:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 54))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularNrarfcn:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 58))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRadioFrequency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 68))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalDlMimoLayers:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 70))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularTotalNumCcs:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 108))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartRadioFrequency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 79))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndRadioFrequency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 112))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv6InterfaceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 113))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkPrimaryIpv6ServiceName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 181))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartRadioFrequency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 152))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndRadioFrequency:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 81))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadError:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 115))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityError:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 114))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityDownloadSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 120))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityUploadSpeed:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 118))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityRating:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 183))
  {
    [(AWDNetworkPerformanceMetric *)self setVpnConnectionState:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 154))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadError:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 156))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadErrorDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 155))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadErrorCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 83))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadErrorDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 82))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadErrorCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 124))
  {
    [(AWDNetworkPerformanceMetric *)self setPingError:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 126))
  {
    [(AWDNetworkPerformanceMetric *)self setPingErrorDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 125))
  {
    [(AWDNetworkPerformanceMetric *)self setPingErrorCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 117))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityErrorDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 116))
  {
    [(AWDNetworkPerformanceMetric *)self setNetworkQualityErrorCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 59))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRnMobileCountryCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 60))
  {
    [(AWDNetworkPerformanceMetric *)self setCellularRnMobileNetworkCode:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1685))
  {
    self->_cellularDataIsEnabled = *(fromCopy + 1663);
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 105))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadStartCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 76))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadEndCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 87))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadMaxCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 178))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadStartCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 149))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadEndCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 160))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadMaxCellularEstimate:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 96))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsiveness:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 97))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsivenessConfidence:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 98))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadResponsivenessRating:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 102))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeedConfidence:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 103))
  {
    [(AWDNetworkPerformanceMetric *)self setDownloadSpeedRating:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 169))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsiveness:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 170))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsivenessConfidence:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 171))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadResponsivenessRating:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 175))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeedConfidence:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 176))
  {
    [(AWDNetworkPerformanceMetric *)self setUploadSpeedRating:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 191))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannelBand:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 192))
  {
    [(AWDNetworkPerformanceMetric *)self setWifiChannelWidth:?];
    fromCopy = v8;
  }
}

@end
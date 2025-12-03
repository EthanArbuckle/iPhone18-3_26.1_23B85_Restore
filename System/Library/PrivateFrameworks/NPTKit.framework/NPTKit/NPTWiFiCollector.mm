@interface NPTWiFiCollector
+ (id)BTCModeToString:(int)string;
+ (id)ControlModeToString:(unsigned int)string;
+ (id)OpModeToString:(int)string;
+ (id)PhyModeToString:(int)string;
+ (id)SecurityTypeToString:(unint64_t)string;
+ (id)convertBSSIDToOUI:(id)i;
+ (id)convertPowerStateToString:(id)string;
+ (id)fetchWiFiData:(id)data;
+ (int64_t)channelBandToInt:(unsigned int)int;
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTWiFiCollector

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTWiFiCollector *)self setCachedMetadata:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTWiFiCollector *)self cachedMetadata];
  [cachedMetadata setObject:v7 forKeyedSubscript:@"initial_state"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTWiFiCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v9 forKeyedSubscript:@"events"];

  v11 = objc_alloc_init(MEMORY[0x277D02B18]);
  [(NPTWiFiCollector *)self setInterface:v11];

  objc_initWeak(&location, self);
  interface = [(NPTWiFiCollector *)self interface];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__NPTWiFiCollector_startCollectingWithCompletion___block_invoke;
  v32[3] = &unk_2789D4200;
  objc_copyWeak(&v33, &location);
  [interface setEventHandler:v32];

  interface2 = [(NPTWiFiCollector *)self interface];
  [interface2 activate];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; [&unk_2848CF4E0 count] > i; ++i)
  {
    v16 = [&unk_2848CF4E0 objectAtIndexedSubscript:i];
    interface3 = [(NPTWiFiCollector *)self interface];
    integerValue = [v16 integerValue];
    v31 = 0;
    [interface3 startMonitoringEventType:integerValue error:&v31];
    v19 = v31;

    if (v19)
    {
      [v14 addObject:v19];
    }
  }

  interface4 = [(NPTWiFiCollector *)self interface];
  v21 = [NPTWiFiCollector fetchWiFiData:interface4];

  [v5 addEntriesFromDictionary:v21];
  interface5 = [(NPTWiFiCollector *)self interface];
  currentKnownNetworkProfile = [interface5 currentKnownNetworkProfile];

  interface6 = [(NPTWiFiCollector *)self interface];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    interface7 = [(NPTWiFiCollector *)self interface];
    v27 = [interface7 CCA];

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
    [v5 setValue:v28 forKey:@"wifi_cwf_cca"];
  }

  if (currentKnownNetworkProfile)
  {
    dictionary = [currentKnownNetworkProfile dictionary];
    [v5 addEntriesFromDictionary:dictionary];
  }

  cachedMetadata3 = [(NPTWiFiCollector *)self cachedMetadata];
  [cachedMetadata3 setObject:v5 forKeyedSubscript:@"initial_state"];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v5, v14);
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __50__NPTWiFiCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v134[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v117 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v117 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(NPTMetadataEvent);
  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v6 setTimeStamp:v7];

  [(NPTMetadataEvent *)v6 setCollectorType:objc_opt_class()];
  v8 = [v3 info];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v3 info];
    v11 = [v10 allValues];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v5 setObject:v12 forKeyedSubscript:@"info"];
  }

  switch([v3 type])
  {
    case 1:
      [(NPTMetadataEvent *)v6 setEventType:12];
      v13 = MEMORY[0x277CCABB0];
      v14 = [WeakRetained interface];
      v15 = [v13 numberWithBool:{objc_msgSend(v14, "powerOn")}];
      [v5 setObject:v15 forKeyedSubscript:@"data"];

      v16 = [v5 objectForKeyedSubscript:@"data"];
      if (v16)
      {
        v129 = @"wifi_power";
        v17 = [v5 objectForKeyedSubscript:@"data"];
        v130 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        [v5 setObject:v18 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 2:
      [(NPTMetadataEvent *)v6 setEventType:11];
      v26 = [v5 objectForKeyedSubscript:@"info"];
      if (v26)
      {
        [v5 setObject:v26 forKeyedSubscript:@"data"];
      }

      else
      {
        v82 = objc_alloc(MEMORY[0x277CCACA8]);
        v83 = [WeakRetained interface];
        v84 = [v83 SSID];
        v85 = [v82 initWithData:v84 encoding:4];
        [v5 setObject:v85 forKeyedSubscript:@"data"];
      }

      v86 = [v5 objectForKeyedSubscript:@"data"];
      if (v86)
      {
        v131 = @"wifi_ssid";
        v87 = [v5 objectForKeyedSubscript:@"data"];
        v132 = v87;
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        [v5 setObject:v88 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 3:
      [(NPTMetadataEvent *)v6 setEventType:10];
      v35 = [WeakRetained interface];
      v36 = [v35 BSSID];
      [v118 setObject:v36 forKeyedSubscript:@"wifi_bssid"];

      v37 = [WeakRetained interface];
      v38 = [v37 BSSID];
      v39 = [NPTWiFiCollector convertBSSIDToOUI:v38];
      [v118 setObject:v39 forKeyedSubscript:@"wifi_oui"];

      if ([v118 count])
      {
        v40 = v118;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_44;
    case 5:
      [(NPTMetadataEvent *)v6 setEventType:15];
      v22 = [WeakRetained interface];
      v30 = [v22 currentScanResult];
      v31 = [v30 dictionary];
      if ([v31 count])
      {
        v32 = [WeakRetained interface];
        v33 = [v32 currentScanResult];
        v34 = [v33 dictionary];
        [v5 setObject:v34 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_92;
    case 6:
      [(NPTMetadataEvent *)v6 setEventType:25];
      v23 = [v5 objectForKeyedSubscript:@"info"];
      v24 = v23;
      if (v23)
      {
        v22 = v23;
      }

      else
      {
        v73 = [WeakRetained interface];
        v22 = [v73 cachedLinkDownStatus];
      }

      v74 = [v22 interfaceName];
      [v118 setObject:v74 forKeyedSubscript:@"interface"];

      v75 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "isLinkDown")}];
      [v118 setObject:v75 forKeyedSubscript:@"link_down"];

      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v22, "reason")}];
      [v118 setObject:v76 forKeyedSubscript:@"reason"];

      [v5 setObject:v118 forKeyedSubscript:@"data"];
      goto LABEL_93;
    case 7:
      [(NPTMetadataEvent *)v6 setEventType:16];
      v27 = [v5 objectForKeyedSubscript:@"info"];
      v28 = v27;
      if (v27)
      {
        v22 = v27;
      }

      else
      {
        v89 = [WeakRetained interface];
        v22 = [v89 cachedLinkQualityMetric];
      }

      v30 = [v22 dictionary];
      if ([v30 count])
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    case 10:
      [(NPTMetadataEvent *)v6 setEventType:13];
      v41 = [WeakRetained interface];
      v42 = [v41 interfaceNames];
      [v5 setObject:v42 forKeyedSubscript:@"data"];

      v43 = [v5 objectForKeyedSubscript:@"data"];
      if (v43)
      {
        v127 = @"wifi_interface_names";
        v44 = [v5 objectForKeyedSubscript:@"data"];
        v128 = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        [v5 setObject:v45 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 11:
      [(NPTMetadataEvent *)v6 setEventType:14];
      v46 = [v5 objectForKeyedSubscript:@"info"];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v95 = [WeakRetained interface];
        v48 = [v95 interfaceNames];
      }

      [v5 setObject:v48 forKeyedSubscript:@"data"];
      v96 = [v5 objectForKeyedSubscript:@"data"];
      if (v96)
      {
        v125 = @"wifi_interface_names";
        v97 = [v5 objectForKeyedSubscript:@"data"];
        v126 = v97;
        v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        [v5 setObject:v98 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 12:
      [(NPTMetadataEvent *)v6 setEventType:17];
      v59 = [v5 objectForKeyedSubscript:@"info"];
      v60 = v59;
      if (v59)
      {
        v22 = v59;
      }

      else
      {
        v105 = [WeakRetained interface];
        v22 = [v105 cachedAutoJoinStatus];
      }

      v30 = [v22 dictionary];
      if ([v30 count])
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    case 13:
      [(NPTMetadataEvent *)v6 setEventType:18];
      v57 = [v5 objectForKeyedSubscript:@"info"];
      v58 = v57;
      if (v57)
      {
        v22 = v57;
      }

      else
      {
        v104 = [WeakRetained interface];
        v22 = [v104 cachedJoinStatus];
      }

      v30 = [v22 dictionary];
      if ([v30 count])
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    case 14:
      [(NPTMetadataEvent *)v6 setEventType:19];
      v20 = [v5 objectForKeyedSubscript:@"info"];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v72 = [WeakRetained interface];
        v22 = [v72 cachedRoamStatus];
      }

      v30 = [v22 dictionary];
      if ([v30 count])
      {
LABEL_76:
        v106 = [v22 dictionary];
        [v5 setObject:v106 forKeyedSubscript:@"data"];
      }

      else
      {
LABEL_77:
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

LABEL_92:

LABEL_93:
      goto LABEL_94;
    case 18:
      [(NPTMetadataEvent *)v6 setEventType:9];
      v29 = [v5 objectForKeyedSubscript:@"info"];
      if (v29)
      {
        [v5 setObject:v29 forKeyedSubscript:@"data"];
      }

      else
      {
        v90 = [WeakRetained interface];
        v91 = [v90 networkServiceName];
        [v5 setObject:v91 forKeyedSubscript:@"data"];
      }

      v92 = [v5 objectForKeyedSubscript:@"data"];
      if (v92)
      {
        v133 = @"wifi_network_service_name";
        v93 = [v5 objectForKeyedSubscript:@"data"];
        v134[0] = v93;
        v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:&v133 count:1];
        [v5 setObject:v94 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 19:
      [(NPTMetadataEvent *)v6 setEventType:21];
      v25 = [v5 objectForKeyedSubscript:@"info"];
      if (v25)
      {
        [v5 setObject:v25 forKeyedSubscript:@"data"];
      }

      else
      {
        v77 = [WeakRetained interface];
        v78 = [v77 IPv4Addresses];
        [v5 setObject:v78 forKeyedSubscript:@"data"];
      }

      v79 = [v5 objectForKeyedSubscript:@"data"];
      if (v79)
      {
        v121 = @"wifi_ipv4_addresses";
        v80 = [v5 objectForKeyedSubscript:@"data"];
        v122 = v80;
        v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        [v5 setObject:v81 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 20:
      [(NPTMetadataEvent *)v6 setEventType:22];
      v19 = [v5 objectForKeyedSubscript:@"info"];
      if (v19)
      {
        [v5 setObject:v19 forKeyedSubscript:@"data"];
      }

      else
      {
        v67 = [WeakRetained interface];
        v68 = [v67 IPv6Addresses];
        [v5 setObject:v68 forKeyedSubscript:@"data"];
      }

      v69 = [v5 objectForKeyedSubscript:@"data"];
      if (v69)
      {
        v119 = @"wifi_ipv6_addresses";
        v70 = [v5 objectForKeyedSubscript:@"data"];
        v120 = v70;
        v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        [v5 setObject:v71 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 21:
      [(NPTMetadataEvent *)v6 setEventType:20];
      v49 = [v5 objectForKeyedSubscript:@"info"];
      if (v49)
      {
        [v5 setObject:v49 forKeyedSubscript:@"data"];
      }

      else
      {
        v99 = [WeakRetained interface];
        v100 = [v99 DNSServerAddresses];
        [v5 setObject:v100 forKeyedSubscript:@"data"];
      }

      v101 = [v5 objectForKeyedSubscript:@"data"];
      if (v101)
      {
        v123 = @"wifi_dns_addresses";
        v102 = [v5 objectForKeyedSubscript:@"data"];
        v124 = v102;
        v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        [v5 setObject:v103 forKeyedSubscript:@"data"];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"data"];
      }

      goto LABEL_94;
    case 22:
      [(NPTMetadataEvent *)v6 setEventType:24];
      v50 = [WeakRetained interface];
      v51 = [v50 DHCPLeaseStartedAt];
      v52 = [v117 stringFromDate:v51];
      [v118 setObject:v52 forKeyedSubscript:@"wifi_dhcp_start_time"];

      v53 = [WeakRetained interface];
      v54 = [v53 DHCPLeaseExpiresAt];
      v55 = [v117 stringFromDate:v54];
      v56 = v118;
      [v118 setObject:v55 forKeyedSubscript:@"wifi_dhcp_expire_time"];

      goto LABEL_41;
    case 23:
      [(NPTMetadataEvent *)v6 setEventType:23];
      v61 = MEMORY[0x277CCACA8];
      v62 = [WeakRetained interface];
      v63 = [v62 EAP8021XSupplicantState];
      if (v63 > 8)
      {
        v64 = "<unknown>";
      }

      else
      {
        v64 = SupplicantStateString_str[v63];
      }

      v65 = [v61 stringWithUTF8String:v64];
      [v118 setObject:v65 forKeyedSubscript:@"wifi_eap8021x_supplicant_state"];

      v53 = [WeakRetained interface];
      v66 = +[NPTWiFiCollector ControlModeToString:](NPTWiFiCollector, "ControlModeToString:", [v53 EAP8021XControlMode]);
      v56 = v118;
      [v118 setObject:v66 forKeyedSubscript:@"wifi_eap8021x_control_mode"];

LABEL_41:
      if ([v56 count])
      {
        v40 = v56;
      }

      else
      {
        v40 = 0;
      }

LABEL_44:
      [v5 setObject:v40 forKeyedSubscript:@"data"];
LABEL_94:
      [v5 removeObjectForKey:@"info"];
      if (v6)
      {
        v107 = MEMORY[0x277CBEAC0];
        v108 = [v5 objectForKeyedSubscript:@"data"];
        v109 = [v107 dictionaryWithDictionary:v108];
        [(NPTMetadataEvent *)v6 setData:v109];

        v110 = WeakRetained;
        objc_sync_enter(v110);
        v111 = [v110 cachedMetadata];
        v112 = [v111 objectForKeyedSubscript:@"events"];
        v113 = [(NPTMetadataEvent *)v6 asDictionary];
        [v112 addObject:v113];

        objc_sync_exit(v110);
        v114 = [v110 metadataDidChangeHandler];

        if (v114)
        {
          v115 = [v110 metadataDidChangeHandler];
          (v115)[2](v115, v6, 0);
        }
      }

      break;
    default:

      [v5 removeObjectForKey:@"info"];
      v6 = 0;
      break;
  }

  v116 = *MEMORY[0x277D85DE8];
}

- (void)stopCollecting
{
  interface = [(NPTWiFiCollector *)self interface];
  [interface invalidate];
}

+ (id)fetchWiFiData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  bSSID = [dataCopy BSSID];
  [v5 setObject:bSSID forKeyedSubscript:@"wifi_bssid"];

  bSSID2 = [dataCopy BSSID];
  v8 = [NPTWiFiCollector convertBSSIDToOUI:bSSID2];
  [v5 setObject:v8 forKeyedSubscript:@"wifi_oui"];

  v9 = [self BTCModeToString:{objc_msgSend(dataCopy, "bluetoothCoexistenceMode")}];
  [v5 setObject:v9 forKeyedSubscript:@"wifi_btc_mode"];

  v10 = MEMORY[0x277CCABB0];
  channel = [dataCopy channel];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(channel, "channel")}];
  [v5 setObject:v12 forKeyedSubscript:@"wifi_channel"];

  v13 = MEMORY[0x277CCABB0];
  channel2 = [dataCopy channel];
  v15 = [v13 numberWithInteger:{objc_msgSend(self, "channelBandToInt:", objc_msgSend(channel2, "band"))}];
  [v5 setObject:v15 forKeyedSubscript:@"wifi_channel_band"];

  v16 = MEMORY[0x277CCABB0];
  channel3 = [dataCopy channel];
  v18 = [v16 numberWithUnsignedInt:{objc_msgSend(channel3, "width")}];
  [v5 setObject:v18 forKeyedSubscript:@"wifi_channel_width"];

  countryCode = [dataCopy countryCode];
  [v5 setObject:countryCode forKeyedSubscript:@"wifi_country_code"];

  v20 = [self ControlModeToString:{objc_msgSend(dataCopy, "EAP8021XControlMode")}];
  [v5 setObject:v20 forKeyedSubscript:@"wifi_eapol_control_mode"];

  v21 = MEMORY[0x277CCACA8];
  eAP8021XSupplicantState = [dataCopy EAP8021XSupplicantState];
  if (eAP8021XSupplicantState > 8)
  {
    v23 = "<unknown>";
  }

  else
  {
    v23 = SupplicantStateString_str[eAP8021XSupplicantState];
  }

  v24 = [v21 stringWithUTF8String:v23];
  [v5 setObject:v24 forKeyedSubscript:@"wifi_eapol_supplicant_state"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "guardInterval")}];
  [v5 setObject:v25 forKeyedSubscript:@"wifi_guard_interval"];

  mACAddress = [dataCopy MACAddress];
  [v5 setObject:mACAddress forKeyedSubscript:@"wifi_mac_address"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "MCSIndex")}];
  [v5 setObject:v27 forKeyedSubscript:@"wifi_mcs_index"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "noise")}];
  [v5 setObject:v28 forKeyedSubscript:@"wifi_noise"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "numberOfSpatialStreams")}];
  [v5 setObject:v29 forKeyedSubscript:@"wifi_number_of_spatial_streams"];

  v30 = [self OpModeToString:{objc_msgSend(dataCopy, "opMode")}];
  [v5 setObject:v30 forKeyedSubscript:@"wifi_op_mode"];

  v31 = [self PhyModeToString:{objc_msgSend(dataCopy, "PHYMode")}];
  [v5 setObject:v31 forKeyedSubscript:@"wifi_phy_mode"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "RSSI")}];
  [v5 setObject:v32 forKeyedSubscript:@"wifi_rssi"];

  v33 = [self SecurityTypeToString:{objc_msgSend(dataCopy, "securityType")}];
  [v5 setObject:v33 forKeyedSubscript:@"wifi_security"];

  networkName = [dataCopy networkName];
  [v5 setObject:networkName forKeyedSubscript:@"wifi_ssid"];

  v35 = MEMORY[0x277CCABB0];
  [dataCopy txRate];
  v36 = [v35 numberWithDouble:?];
  [v5 setObject:v36 forKeyedSubscript:@"wifi_tx_rate"];

  cachedJoinStatus = [dataCopy cachedJoinStatus];
  v38 = cachedJoinStatus;
  if (cachedJoinStatus)
  {
    scanResult = [cachedJoinStatus scanResult];
    networkName2 = [scanResult networkName];
    networkName3 = [dataCopy networkName];
    v42 = [networkName2 isEqualToString:networkName3];

    if (v42)
    {
      v43 = MEMORY[0x277CCABB0];
      cachedJoinStatus2 = [dataCopy cachedJoinStatus];
      endedAt = [cachedJoinStatus2 endedAt];
      [endedAt timeIntervalSinceNow];
      v47 = [v43 numberWithDouble:-v46];
      [v5 setObject:v47 forKeyedSubscript:@"wifi_assoc_duration"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v48 = MEMORY[0x277CCABB0];
    [dataCopy rxRate];
    v49 = [v48 numberWithDouble:?];
    [v5 setObject:v49 forKeyedSubscript:@"wifi_rx_rate"];
  }

  return v5;
}

+ (id)convertBSSIDToOUI:(id)i
{
  iCopy = i;
  if ([iCopy length])
  {
    v4 = 0;
    v5 = 0;
    while ([iCopy characterAtIndex:v4] != 58 || ++v5 != 3)
    {
      if ([iCopy length] <= ++v4)
      {
        goto LABEL_6;
      }
    }

    v6 = [iCopy substringToIndex:v4];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

+ (id)SecurityTypeToString:(unint64_t)string
{
  if (string > 15)
  {
    if (string <= 63)
    {
      if (string == 16)
      {
        return @"WPA2 Personal";
      }

      if (string == 32)
      {
        return @"WPA2 Enterprise";
      }
    }

    else
    {
      switch(string)
      {
        case 0x40uLL:
          return @"WPA3 Personal";
        case 0x80uLL:
          return @"WPA3 Enterprise";
        case 0x200uLL:
          return @"None";
      }
    }
  }

  else if (string <= 1)
  {
    if (string == -1)
    {
      return @"Any";
    }

    if (string == 1)
    {
      return @"WEP";
    }
  }

  else
  {
    switch(string)
    {
      case 2uLL:
        return @"WAPI";
      case 4uLL:
        return @"WPA Personal";
      case 8uLL:
        return @"WPA Enterprise";
    }
  }

  return @"Conversion not found";
}

+ (id)BTCModeToString:(int)string
{
  if (string > 8)
  {
    return @"Conversion not found";
  }

  else
  {
    return off_2789D4450[string];
  }
}

+ (id)ControlModeToString:(unsigned int)string
{
  if (string > 3)
  {
    return @"Conversion not found";
  }

  else
  {
    return off_2789D4498[string];
  }
}

+ (id)OpModeToString:(int)string
{
  if (string > 15)
  {
    if (string <= 63)
    {
      if (string == 16)
      {
        return @"MONITOR";
      }

      if (string == 32)
      {
        return @"P2P_GO";
      }
    }

    else
    {
      switch(string)
      {
        case 64:
          return @"P2P_CLI";
        case 128:
          return @"P2P_DEV";
        case 256:
          return @"NAN";
      }
    }
  }

  else if (string <= 1)
  {
    if (!string)
    {
      return @"NONE";
    }

    if (string == 1)
    {
      return @"STA";
    }
  }

  else
  {
    switch(string)
    {
      case 2:
        return @"IBSS";
      case 4:
        return @"AHDEMO";
      case 8:
        return @"HOSTAP";
    }
  }

  return @"Conversion not found";
}

+ (id)PhyModeToString:(int)string
{
  if (string > 31)
  {
    if (string > 255)
    {
      switch(string)
      {
        case 256:
          return @"11ax";
        case 512:
          return @"11BE";
        case 1024:
          return @"6E";
      }
    }

    else
    {
      switch(string)
      {
        case 32:
          return @"turbo_a";
        case 64:
          return @"turbo_g";
        case 128:
          return @"11ac";
      }
    }
  }

  else if (string > 3)
  {
    switch(string)
    {
      case 4:
        return @"11b";
      case 8:
        return @"11g";
      case 16:
        return @"11n";
    }
  }

  else
  {
    switch(string)
    {
      case 0:
        return @"unknown";
      case 1:
        return @"auto";
      case 2:
        return @"11a";
    }
  }

  return @"Conversion not found";
}

+ (id)convertPowerStateToString:(id)string
{
  bytes = [string bytes];
  if (bytes)
  {
    v4 = bytes;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (*(v4 + 4))
    {
      v6 = 0;
      do
      {
        v7 = *(v4 + 8 + 4 * v6);
        if (v7 <= 4)
        {
          [v5 addObject:off_2789D44B8[v7]];
        }

        ++v6;
      }

      while (v6 < *(v4 + 4));
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)channelBandToInt:(unsigned int)int
{
  if (int >= 4)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  }

  else
  {
    v3 = qword_2789D44E0[int];
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

@end
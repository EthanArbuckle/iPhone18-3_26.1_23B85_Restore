@interface DADeviceAccessAnalytics
+ (void)markSessionActivationForPid:(id)pid atTime:(id)time;
+ (void)markSessionInvalidationForPid:(id)pid atTime:(id)time;
+ (void)markState:(int64_t)state deviceID:(id)d shared:(BOOL)shared discovery:(id)discovery flags:(unint64_t)flags sourceApp:(int64_t)app atTime:(id)time errorCode:(unint64_t)self0;
+ (void)sendAnalytics:(id)analytics forEvent:(id)event;
+ (void)sendAnalyticsInfo:(id)info forEvent:(id)event withDeviceIdentifier:(id)identifier;
@end

@implementation DADeviceAccessAnalytics

+ (void)sendAnalyticsInfo:(id)info forEvent:(id)event withDeviceIdentifier:(id)identifier
{
  infoCopy = info;
  eventCopy = event;
  identifierCopy = identifier;
  if (infoCopy && eventCopy && identifierCopy)
  {
    if (sendAnalyticsInfo_forEvent_withDeviceIdentifier__once != -1)
    {
      +[DADeviceAccessAnalytics sendAnalyticsInfo:forEvent:withDeviceIdentifier:];
    }

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", eventCopy, identifierCopy];
    v10 = [sentIdentifier objectForKeyedSubscript:identifierCopy];

    if (!v10)
    {
      [DADeviceAccessAnalytics sendAnalytics:infoCopy forEvent:eventCopy];
      [sentIdentifier setObject:&unk_285B52900 forKeyedSubscript:identifierCopy];
    }
  }
}

uint64_t __75__DADeviceAccessAnalytics_sendAnalyticsInfo_forEvent_withDeviceIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = sentIdentifier;
  sentIdentifier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)sendAnalytics:(id)analytics forEvent:(id)event
{
  analyticsCopy = analytics;
  eventCopy = event;
  v7 = eventCopy;
  if (analyticsCopy && eventCopy)
  {
    v8 = analyticsCopy;
    AnalyticsSendEventLazy();
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics sendAnalytics:? forEvent:?];
  }
}

+ (void)markSessionActivationForPid:(id)pid atTime:(id)time
{
  pidCopy = pid;
  timeCopy = time;
  if (pidCopy && timeCopy)
  {
    if (markSessionActivationForPid_atTime__once != -1)
    {
      +[DADeviceAccessAnalytics markSessionActivationForPid:atTime:];
    }

    [sessionStartTime setObject:timeCopy forKeyedSubscript:pidCopy];
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics markSessionActivationForPid:(timeCopy == 0) atTime:?];
  }
}

uint64_t __62__DADeviceAccessAnalytics_markSessionActivationForPid_atTime___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = sessionStartTime;
  sessionStartTime = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)markSessionInvalidationForPid:(id)pid atTime:(id)time
{
  pidCopy = pid;
  timeCopy = time;
  if (pidCopy && ([sessionStartTime objectForKeyedSubscript:pidCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [sessionStartTime objectForKeyedSubscript:pidCopy];
    [v8 doubleValue];
    v10 = v9;

    [timeCopy doubleValue];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 - v10];
    [sessionStartTime removeObjectForKey:pidCopy];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v16 = v12;
    v13 = v12;
    v14 = uUID;
    AnalyticsSendEventLazy();
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics markSessionInvalidationForPid:timeCopy atTime:?];
  }
}

id __64__DADeviceAccessAnalytics_markSessionInvalidationForPid_atTime___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"Identifier";
  v5[1] = @"ElapsedTime";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)markState:(int64_t)state deviceID:(id)d shared:(BOOL)shared discovery:(id)discovery flags:(unint64_t)flags sourceApp:(int64_t)app atTime:(id)time errorCode:(unint64_t)self0
{
  v175 = *MEMORY[0x277D85DE8];
  dCopy = d;
  discoveryCopy = discovery;
  timeCopy = time;
  if (markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode__once != -1)
  {
    +[DADeviceAccessAnalytics markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:];
  }

  v16 = [daDeviceState objectForKeyedSubscript:dCopy];
  v17 = [[DADeviceStateRecord alloc] initWithState:state andTime:timeCopy];
  flags = [discoveryCopy flags];
  if (state == 5 && (flags & 4) != 0)
  {
    v19 = MEMORY[0x277CCABB0];
    Current = CFAbsoluteTimeGetCurrent();
    [discoveryCopy activateTimeInterval];
    v22 = [v19 numberWithDouble:{vabdd_f64(Current, v21)}];
    [(DADeviceStateRecord *)v17 setDiscoveryTime:v22];
  }

  if (v16)
  {
    if (([v16 isEqual:v17] & 1) == 0)
    {
      v23 = [v16 timeIntervelBetweenState:v17];
      v153 = v17;
      v24 = [v16 stateTransitionAsString:v17];
      if (gLogCategory_DeviceAccessAnalytics <= 40 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
      {
        v126 = dCopy;
        v127 = v23;
        v125 = v24;
        LogPrintF();
      }

      v164 = MEMORY[0x277D85DD0];
      v165 = 3221225472;
      v166 = __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_2;
      v167 = &unk_278F58160;
      v152 = v24;
      v168 = v152;
      v169 = dCopy;
      flagsCopy = flags;
      v149 = v16;
      v170 = v149;
      v17 = v153;
      v171 = v153;
      v25 = v23;
      v172 = v25;
      AnalyticsSendEventLazy();
      [daDeviceState setObject:v171 forKeyedSubscript:v169];
      if (!discoveryCopy || [discoveryCopy flags] < 2 || objc_msgSend(discoveryCopy, "flags") < 2 || state > 0x1E || ((1 << state) & 0x42100000) == 0)
      {
        goto LABEL_83;
      }

      v144 = v25;
      configuration = [discoveryCopy configuration];
      bundleID = [configuration bundleID];
      v28 = bundleID;
      if (bundleID)
      {
        bundleID2 = bundleID;
      }

      else
      {
        bundleID2 = [discoveryCopy bundleID];
      }

      v30 = bundleID2;

      configuration2 = [discoveryCopy configuration];
      if (configuration2)
      {
        v141 = &unk_285B52900;
      }

      else
      {
        v32 = MEMORY[0x277CCABB0];
        configurations = [discoveryCopy configurations];
        v141 = [v32 numberWithUnsignedInteger:{objc_msgSend(configurations, "count")}];
      }

      v143 = v30;
      v142 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v30 allowPlaceholder:1 error:0];
      configuration3 = [discoveryCopy configuration];
      configurations2 = [discoveryCopy configurations];
      v134 = configurations2;
      v135 = dCopy;
      v128 = timeCopy;
      v137 = configuration3;
      if (configuration3)
      {
        bluetoothCompanyIdentifiers = [configuration3 bluetoothCompanyIdentifiers];
        v37 = [bluetoothCompanyIdentifiers count];

        [configuration3 bluetoothCompanyPayload];
        v39 = v38 = configuration3;
        v40 = [v39 length];

        bluetoothNameSubstring = [configuration3 bluetoothNameSubstring];
        v42 = [bluetoothNameSubstring length];

        bluetoothServices = [configuration3 bluetoothServices];
        v44 = [bluetoothServices count];

        bluetoothServicePayload = [configuration3 bluetoothServicePayload];
        v46 = [bluetoothServicePayload length];

        bluetoothIdentifier = [configuration3 bluetoothIdentifier];
        v48 = (bluetoothIdentifier | v37 | v40 | v42 | v44 | v46) != 0;

        hotspotSSIDs = [v38 hotspotSSIDs];
        v50 = [hotspotSSIDs count];

        hotspotSSIDPrefixes = [v38 hotspotSSIDPrefixes];
        v52 = [hotspotSSIDPrefixes count];

        networkHotspotSSID = [v38 networkHotspotSSID];
        v54 = 1;
        if (!networkHotspotSSID && !v50 && !v52)
        {
          wifiAwareServiceName = [v137 wifiAwareServiceName];
          v54 = wifiAwareServiceName != 0;
        }

        if (v48)
        {
LABEL_30:
          if (v54)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        }

LABEL_52:
        if (v54)
        {
LABEL_53:
          v78 = 0x277CCA000;
          goto LABEL_55;
        }

LABEL_54:
        v78 = 0x277CCA000uLL;
        goto LABEL_55;
      }

      if (configurations2)
      {
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v56 = configurations2;
        v139 = [v56 countByEnumeratingWithState:&v160 objects:v174 count:16];
        if (v139)
        {
          v138 = *v161;
          obj = v56;
LABEL_35:
          v57 = 0;
          while (1)
          {
            if (*v161 != v138)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v160 + 1) + 8 * v57);
            bluetoothCompanyIdentifiers2 = [v58 bluetoothCompanyIdentifiers];
            v60 = [bluetoothCompanyIdentifiers2 count];

            bluetoothCompanyPayload = [v58 bluetoothCompanyPayload];
            v62 = [bluetoothCompanyPayload length];

            bluetoothNameSubstring2 = [v58 bluetoothNameSubstring];
            v64 = [bluetoothNameSubstring2 length];

            bluetoothServices2 = [v58 bluetoothServices];
            v66 = [bluetoothServices2 count];

            bluetoothServicePayload2 = [v58 bluetoothServicePayload];
            v68 = [bluetoothServicePayload2 length];

            bluetoothIdentifier2 = [v58 bluetoothIdentifier];
            v70 = (bluetoothIdentifier2 | v60 | v62 | v64 | v66 | v68) != 0;

            hotspotSSIDs2 = [v58 hotspotSSIDs];
            v72 = [hotspotSSIDs2 count];

            hotspotSSIDPrefixes2 = [v58 hotspotSSIDPrefixes];
            v74 = [hotspotSSIDPrefixes2 count];

            networkHotspotSSID2 = [v58 networkHotspotSSID];
            if (networkHotspotSSID2 || v72 || v74)
            {

              v78 = 0x277CCA000;
              goto LABEL_55;
            }

            wifiAwareServiceName2 = [0 wifiAwareServiceName];

            v54 = wifiAwareServiceName2 != 0;
            if (wifiAwareServiceName2 || v70)
            {
              break;
            }

            if (v139 == ++v57)
            {
              v56 = obj;
              v139 = [obj countByEnumeratingWithState:&v160 objects:v174 count:16];
              if (v139)
              {
                goto LABEL_35;
              }

              goto LABEL_47;
            }
          }

          if (v70)
          {
            goto LABEL_30;
          }

          goto LABEL_52;
        }

LABEL_47:
      }

      v78 = 0x277CCA000;
LABEL_55:
      configuration4 = [discoveryCopy configuration];
      v80 = *(v78 + 2992);
      if (configuration4)
      {
        configuration5 = [discoveryCopy configuration];
        v140 = [v80 numberWithUnsignedInteger:{objc_msgSend(configuration5, "flags") & 4}];
      }

      else
      {
        configuration5 = [discoveryCopy configurations];
        v82 = [configuration5 cuFilteredArrayUsingBlock:&__block_literal_global_174];
        v140 = [v80 numberWithInt:{objc_msgSend(v82, "count") != 0}];
      }

      configuration6 = [discoveryCopy configuration];
      v84 = *(v78 + 2992);
      if (configuration6)
      {
        configuration7 = [discoveryCopy configuration];
        v133 = [v84 numberWithUnsignedInteger:{objc_msgSend(configuration7, "flags") & 2}];
      }

      else
      {
        configuration7 = [discoveryCopy configurations];
        v86 = [configuration7 cuFilteredArrayUsingBlock:&__block_literal_global_177];
        v133 = [v84 numberWithInt:{objc_msgSend(v86, "count") != 0}];
      }

      configuration8 = [discoveryCopy configuration];
      v88 = *(v78 + 2992);
      if (configuration8)
      {
        configuration9 = [discoveryCopy configuration];
        v90 = [v88 numberWithUnsignedInteger:{objc_msgSend(configuration9, "flags") & 0x20}];
      }

      else
      {
        configuration9 = [discoveryCopy configurations];
        v91 = [configuration9 cuFilteredArrayUsingBlock:&__block_literal_global_179];
        v90 = [v88 numberWithInt:{objc_msgSend(v91, "count") != 0}];
      }

      configuration10 = [discoveryCopy configuration];
      v93 = *(v78 + 2992);
      if (configuration10)
      {
        configuration11 = [discoveryCopy configuration];
        v132 = [v93 numberWithBool:{objc_msgSend(configuration11, "allowsRename")}];
      }

      else
      {
        configuration11 = [discoveryCopy configurations];
        v95 = [configuration11 cuFilteredArrayUsingBlock:&__block_literal_global_181];
        v132 = [v93 numberWithInt:{objc_msgSend(v95, "count") != 0}];
      }

      configuration12 = [discoveryCopy configuration];
      v97 = *(v78 + 2992);
      if (configuration12)
      {
        configuration13 = [discoveryCopy configuration];
        v131 = [v97 numberWithUnsignedInteger:{objc_msgSend(configuration13, "flags") & 8}];
      }

      else
      {
        configuration13 = [discoveryCopy configurations];
        v99 = [configuration13 cuFilteredArrayUsingBlock:&__block_literal_global_183];
        v131 = [v97 numberWithInt:{objc_msgSend(v99, "count") != 0}];
      }

      configuration14 = [discoveryCopy configuration];
      v101 = *(v78 + 2992);
      if (configuration14)
      {
        configuration15 = [discoveryCopy configuration];
        v130 = [v101 numberWithUnsignedInteger:{objc_msgSend(configuration15, "wifiAwareServiceType") & 0x14}];
      }

      else
      {
        configuration15 = [discoveryCopy configurations];
        v103 = [configuration15 cuFilteredArrayUsingBlock:&__block_literal_global_185];
        v130 = [v101 numberWithInt:{objc_msgSend(v103, "count") != 0}];
      }

      v104 = *(v78 + 2992);
      [v142 infoDictionary];
      v106 = v105 = v78;
      v107 = [v106 objectForKey:@"WiFiAwareSubscribableServices" ofClass:objc_opt_class()];
      v108 = [v104 numberWithUnsignedInteger:{objc_msgSend(v107, "count")}];

      v109 = *(v105 + 2992);
      infoDictionary = [v142 infoDictionary];
      v111 = [infoDictionary objectForKey:@"WiFiAwarePublishableServices" ofClass:objc_opt_class()];
      v112 = [v109 numberWithUnsignedInteger:{objc_msgSend(v111, "count")}];

      if (([discoveryCopy flags] & 8) != 0)
      {
        configuration16 = [discoveryCopy configuration];
        dCopy = v135;
        if (configuration16)
        {
          v129 = &unk_285B52900;
        }

        else
        {
          v115 = MEMORY[0x277CCABB0];
          configurations3 = [discoveryCopy configurations];
          v129 = [v115 numberWithUnsignedInteger:{objc_msgSend(configurations3, "count")}];
        }

        timeCopy = v128;
        v113 = 0x27EEB3000uLL;
      }

      else
      {
        v129 = &unk_285B52918;
        dCopy = v135;
        timeCopy = v128;
        v113 = 0x27EEB3000;
      }

      v117 = *(v113 + 2344);
      if (v117 <= 40 && (v117 != -1 || _LogCategory_Initialize()))
      {
        [DADeviceAccessAnalytics markState:code deviceID:? shared:? discovery:? flags:? sourceApp:? atTime:? errorCode:?];
      }

      v154 = v144;
      v155 = v149;
      v156 = v90;
      v157 = v108;
      v145 = v90;
      v158 = v112;
      v159 = discoveryCopy;
      v151 = v129;
      v150 = v130;
      v148 = v133;
      v147 = v112;
      v146 = v108;
      v118 = v131;
      v119 = v132;
      v120 = v145;
      v121 = v141;
      v122 = v143;
      v123 = v140;
      AnalyticsSendEventLazy();

      v25 = v144;
      v17 = v153;
LABEL_83:
    }
  }

  else
  {
    [daDeviceState setObject:v17 forKeyedSubscript:dCopy];
  }

  v124 = *MEMORY[0x277D85DE8];
}

uint64_t __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = daDeviceState;
  daDeviceState = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_2(uint64_t a1)
{
  v13[6] = *MEMORY[0x277D85DE8];
  if (gLogCategory_DeviceAccessAnalytics <= 40 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_2_cold_1(a1);
  }

  v2 = &unk_285B52948;
  if ((*(a1 + 72) & 0x400) == 0)
  {
    v2 = &unk_285B52900;
  }

  v3 = &unk_285B52930;
  if ((*(a1 + 72) & 8) == 0)
  {
    v3 = v2;
  }

  v13[0] = v3;
  v12[0] = @"DeviceFlags";
  v12[1] = @"sourceApplication";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "state")}];
  v5 = *(a1 + 32);
  v13[1] = v4;
  v13[2] = v5;
  v12[2] = @"State";
  v12[3] = @"StateFrom";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "state")}];
  v13[3] = v6;
  v12[4] = @"StateTo";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
  v12[5] = @"ElapsedTime";
  v8 = *(a1 + 64);
  v13[4] = v7;
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_171(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (v2 & ([v2 flags] << 61 >> 63));
  v4 = v3;

  return v3;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_2_175(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (v2 & ([v2 flags] << 62 >> 63));
  v4 = v3;

  return v3;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (v2 & ([v2 flags] << 58 >> 63));
  v4 = v3;

  return v3;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 allowsRename])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (v2 & ([v2 flags] << 60 >> 63));
  v4 = v3;

  return v3;
}

void *__96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 wifiAwareServiceType] & 0x14) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_7(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v29[0] = @"AccessoryDiscoveryErrorOccurred";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 144)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v30[0] = v28;
  v30[1] = v2;
  v29[1] = @"AccessoryReadyToUseInSeconds";
  v29[2] = @"BluetoothTransportBridging";
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = @"-";
  }

  v30[2] = v3;
  v30[3] = v4;
  v29[3] = @"BundleID";
  v29[4] = @"DiscoveryTechnology";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 152)];
  v30[4] = v27;
  v29[5] = @"DiscoveryTimeInSeconds";
  v5 = [*(a1 + 56) discoveryTime];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_285B52918;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    v8 = &unk_285B52918;
  }

  v30[5] = v7;
  v30[6] = v8;
  v29[6] = @"DisplayItemsCount";
  v29[7] = @"HasBluetoothCompanyIDs";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 160)];
  v9 = *(a1 + 72);
  v30[7] = v26;
  v30[8] = v9;
  v29[8] = @"HasBluetoothLEHID";
  v29[9] = @"HasBlobMaskMfgData";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 161)];
  v30[9] = v10;
  v29[10] = @"HasBluetoothNames";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 162)];
  v30[10] = v11;
  v29[11] = @"HasBluetoothServices";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 163)];
  v30[11] = v12;
  v29[12] = @"HasBlobMaskServiceData";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 164)];
  v30[12] = v13;
  v29[13] = @"HasRenameOption";
  v29[14] = @"HasRenameSSID";
  v31 = vbslq_s8(vceqzq_s64(*(a1 + 80)), vdupq_n_s64(MEMORY[0x277CBEC28]), *(a1 + 80));
  v29[15] = @"HasSSIDs";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 165)];
  v32 = v14;
  v29[16] = @"HasSSIDPrefixes";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 166)];
  v34 = *(a1 + 96);
  v29[17] = @"HasWiFiAwareSubscribableServices";
  v29[18] = @"HasWiFiAwarePublishableServices";
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  v33 = v15;
  v35 = v17;
  v29[19] = @"isBluetoothPairing";
  v29[20] = @"isExtensionDiscovery";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "runningExtension")}];
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  v36 = v18;
  v37 = v19;
  v29[21] = @"isWiFiAwarePublisher";
  v29[22] = @"MigrationItemsCount";
  v21 = &unk_285B52918;
  if (v20)
  {
    v21 = v20;
  }

  v38 = v21;
  v29[23] = @"SharedAccessory";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 167)];
  v39 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:24];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (void)sendAnalytics:(char)a1 forEvent:.cold.1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInt:a1 & 1];
  LogPrintF();
}

+ (void)markSessionActivationForPid:(uint64_t)a1 atTime:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v15 = [OUTLINED_FUNCTION_0_2() numberWithInt:?];
  v4 = [*(v2 + 2992) numberWithInt:a2 & 1];
  OUTLINED_FUNCTION_1_2(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF();
}

+ (void)markSessionInvalidationForPid:(uint64_t)a1 atTime:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v15 = [OUTLINED_FUNCTION_0_2() numberWithInt:?];
  v4 = [*(v2 + 2992) numberWithInt:a2 == 0];
  OUTLINED_FUNCTION_1_2(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF();
}

+ (void)markState:(uint64_t)a1 deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:.cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  LogPrintF();
}

uint64_t __96__DADeviceAccessAnalytics_markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

@end
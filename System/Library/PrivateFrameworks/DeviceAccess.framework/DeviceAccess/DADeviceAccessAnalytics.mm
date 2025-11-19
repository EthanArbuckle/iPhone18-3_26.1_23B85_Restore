@interface DADeviceAccessAnalytics
+ (void)markSessionActivationForPid:(id)a3 atTime:(id)a4;
+ (void)markSessionInvalidationForPid:(id)a3 atTime:(id)a4;
+ (void)markState:(int64_t)a3 deviceID:(id)a4 shared:(BOOL)a5 discovery:(id)a6 flags:(unint64_t)a7 sourceApp:(int64_t)a8 atTime:(id)a9 errorCode:(unint64_t)a10;
+ (void)sendAnalytics:(id)a3 forEvent:(id)a4;
+ (void)sendAnalyticsInfo:(id)a3 forEvent:(id)a4 withDeviceIdentifier:(id)a5;
@end

@implementation DADeviceAccessAnalytics

+ (void)sendAnalyticsInfo:(id)a3 forEvent:(id)a4 withDeviceIdentifier:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  if (v11 && v7 && v8)
  {
    if (sendAnalyticsInfo_forEvent_withDeviceIdentifier__once != -1)
    {
      +[DADeviceAccessAnalytics sendAnalyticsInfo:forEvent:withDeviceIdentifier:];
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v7, v8];
    v10 = [sentIdentifier objectForKeyedSubscript:v9];

    if (!v10)
    {
      [DADeviceAccessAnalytics sendAnalytics:v11 forEvent:v7];
      [sentIdentifier setObject:&unk_285B52900 forKeyedSubscript:v9];
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

+ (void)sendAnalytics:(id)a3 forEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = v5;
    AnalyticsSendEventLazy();
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics sendAnalytics:? forEvent:?];
  }
}

+ (void)markSessionActivationForPid:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6 && v5)
  {
    if (markSessionActivationForPid_atTime__once != -1)
    {
      +[DADeviceAccessAnalytics markSessionActivationForPid:atTime:];
    }

    [sessionStartTime setObject:v5 forKeyedSubscript:v6];
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics markSessionActivationForPid:(v5 == 0) atTime:?];
  }
}

uint64_t __62__DADeviceAccessAnalytics_markSessionActivationForPid_atTime___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = sessionStartTime;
  sessionStartTime = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)markSessionInvalidationForPid:(id)a3 atTime:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([sessionStartTime objectForKeyedSubscript:v5], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [sessionStartTime objectForKeyedSubscript:v5];
    [v8 doubleValue];
    v10 = v9;

    [v6 doubleValue];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 - v10];
    [sessionStartTime removeObjectForKey:v5];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = v12;
    v13 = v12;
    v14 = v15;
    AnalyticsSendEventLazy();
  }

  else if (gLogCategory_DeviceAccessAnalytics <= 115 && (gLogCategory_DeviceAccessAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DADeviceAccessAnalytics markSessionInvalidationForPid:v6 atTime:?];
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

+ (void)markState:(int64_t)a3 deviceID:(id)a4 shared:(BOOL)a5 discovery:(id)a6 flags:(unint64_t)a7 sourceApp:(int64_t)a8 atTime:(id)a9 errorCode:(unint64_t)a10
{
  v175 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  v15 = a9;
  if (markState_deviceID_shared_discovery_flags_sourceApp_atTime_errorCode__once != -1)
  {
    +[DADeviceAccessAnalytics markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:];
  }

  v16 = [daDeviceState objectForKeyedSubscript:v13];
  v17 = [[DADeviceStateRecord alloc] initWithState:a3 andTime:v15];
  v18 = [v14 flags];
  if (a3 == 5 && (v18 & 4) != 0)
  {
    v19 = MEMORY[0x277CCABB0];
    Current = CFAbsoluteTimeGetCurrent();
    [v14 activateTimeInterval];
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
        v126 = v13;
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
      v169 = v13;
      v173 = a7;
      v149 = v16;
      v170 = v149;
      v17 = v153;
      v171 = v153;
      v25 = v23;
      v172 = v25;
      AnalyticsSendEventLazy();
      [daDeviceState setObject:v171 forKeyedSubscript:v169];
      if (!v14 || [v14 flags] < 2 || objc_msgSend(v14, "flags") < 2 || a3 > 0x1E || ((1 << a3) & 0x42100000) == 0)
      {
        goto LABEL_83;
      }

      v144 = v25;
      v26 = [v14 configuration];
      v27 = [v26 bundleID];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = [v14 bundleID];
      }

      v30 = v29;

      v31 = [v14 configuration];
      if (v31)
      {
        v141 = &unk_285B52900;
      }

      else
      {
        v32 = MEMORY[0x277CCABB0];
        v33 = [v14 configurations];
        v141 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
      }

      v143 = v30;
      v142 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v30 allowPlaceholder:1 error:0];
      v34 = [v14 configuration];
      v35 = [v14 configurations];
      v134 = v35;
      v135 = v13;
      v128 = v15;
      v137 = v34;
      if (v34)
      {
        v36 = [v34 bluetoothCompanyIdentifiers];
        v37 = [v36 count];

        [v34 bluetoothCompanyPayload];
        v39 = v38 = v34;
        v40 = [v39 length];

        v41 = [v34 bluetoothNameSubstring];
        v42 = [v41 length];

        v43 = [v34 bluetoothServices];
        v44 = [v43 count];

        v45 = [v34 bluetoothServicePayload];
        v46 = [v45 length];

        v47 = [v34 bluetoothIdentifier];
        v48 = (v47 | v37 | v40 | v42 | v44 | v46) != 0;

        v49 = [v38 hotspotSSIDs];
        v50 = [v49 count];

        v51 = [v38 hotspotSSIDPrefixes];
        v52 = [v51 count];

        v53 = [v38 networkHotspotSSID];
        v54 = 1;
        if (!v53 && !v50 && !v52)
        {
          v55 = [v137 wifiAwareServiceName];
          v54 = v55 != 0;
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

      if (v35)
      {
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v56 = v35;
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
            v59 = [v58 bluetoothCompanyIdentifiers];
            v60 = [v59 count];

            v61 = [v58 bluetoothCompanyPayload];
            v62 = [v61 length];

            v63 = [v58 bluetoothNameSubstring];
            v64 = [v63 length];

            v65 = [v58 bluetoothServices];
            v66 = [v65 count];

            v67 = [v58 bluetoothServicePayload];
            v68 = [v67 length];

            v69 = [v58 bluetoothIdentifier];
            v70 = (v69 | v60 | v62 | v64 | v66 | v68) != 0;

            v71 = [v58 hotspotSSIDs];
            v72 = [v71 count];

            v73 = [v58 hotspotSSIDPrefixes];
            v74 = [v73 count];

            v75 = [v58 networkHotspotSSID];
            if (v75 || v72 || v74)
            {

              v78 = 0x277CCA000;
              goto LABEL_55;
            }

            v76 = [0 wifiAwareServiceName];

            v54 = v76 != 0;
            if (v76 || v70)
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
      v79 = [v14 configuration];
      v80 = *(v78 + 2992);
      if (v79)
      {
        v81 = [v14 configuration];
        v140 = [v80 numberWithUnsignedInteger:{objc_msgSend(v81, "flags") & 4}];
      }

      else
      {
        v81 = [v14 configurations];
        v82 = [v81 cuFilteredArrayUsingBlock:&__block_literal_global_174];
        v140 = [v80 numberWithInt:{objc_msgSend(v82, "count") != 0}];
      }

      v83 = [v14 configuration];
      v84 = *(v78 + 2992);
      if (v83)
      {
        v85 = [v14 configuration];
        v133 = [v84 numberWithUnsignedInteger:{objc_msgSend(v85, "flags") & 2}];
      }

      else
      {
        v85 = [v14 configurations];
        v86 = [v85 cuFilteredArrayUsingBlock:&__block_literal_global_177];
        v133 = [v84 numberWithInt:{objc_msgSend(v86, "count") != 0}];
      }

      v87 = [v14 configuration];
      v88 = *(v78 + 2992);
      if (v87)
      {
        v89 = [v14 configuration];
        v90 = [v88 numberWithUnsignedInteger:{objc_msgSend(v89, "flags") & 0x20}];
      }

      else
      {
        v89 = [v14 configurations];
        v91 = [v89 cuFilteredArrayUsingBlock:&__block_literal_global_179];
        v90 = [v88 numberWithInt:{objc_msgSend(v91, "count") != 0}];
      }

      v92 = [v14 configuration];
      v93 = *(v78 + 2992);
      if (v92)
      {
        v94 = [v14 configuration];
        v132 = [v93 numberWithBool:{objc_msgSend(v94, "allowsRename")}];
      }

      else
      {
        v94 = [v14 configurations];
        v95 = [v94 cuFilteredArrayUsingBlock:&__block_literal_global_181];
        v132 = [v93 numberWithInt:{objc_msgSend(v95, "count") != 0}];
      }

      v96 = [v14 configuration];
      v97 = *(v78 + 2992);
      if (v96)
      {
        v98 = [v14 configuration];
        v131 = [v97 numberWithUnsignedInteger:{objc_msgSend(v98, "flags") & 8}];
      }

      else
      {
        v98 = [v14 configurations];
        v99 = [v98 cuFilteredArrayUsingBlock:&__block_literal_global_183];
        v131 = [v97 numberWithInt:{objc_msgSend(v99, "count") != 0}];
      }

      v100 = [v14 configuration];
      v101 = *(v78 + 2992);
      if (v100)
      {
        v102 = [v14 configuration];
        v130 = [v101 numberWithUnsignedInteger:{objc_msgSend(v102, "wifiAwareServiceType") & 0x14}];
      }

      else
      {
        v102 = [v14 configurations];
        v103 = [v102 cuFilteredArrayUsingBlock:&__block_literal_global_185];
        v130 = [v101 numberWithInt:{objc_msgSend(v103, "count") != 0}];
      }

      v104 = *(v78 + 2992);
      [v142 infoDictionary];
      v106 = v105 = v78;
      v107 = [v106 objectForKey:@"WiFiAwareSubscribableServices" ofClass:objc_opt_class()];
      v108 = [v104 numberWithUnsignedInteger:{objc_msgSend(v107, "count")}];

      v109 = *(v105 + 2992);
      v110 = [v142 infoDictionary];
      v111 = [v110 objectForKey:@"WiFiAwarePublishableServices" ofClass:objc_opt_class()];
      v112 = [v109 numberWithUnsignedInteger:{objc_msgSend(v111, "count")}];

      if (([v14 flags] & 8) != 0)
      {
        v114 = [v14 configuration];
        v13 = v135;
        if (v114)
        {
          v129 = &unk_285B52900;
        }

        else
        {
          v115 = MEMORY[0x277CCABB0];
          v116 = [v14 configurations];
          v129 = [v115 numberWithUnsignedInteger:{objc_msgSend(v116, "count")}];
        }

        v15 = v128;
        v113 = 0x27EEB3000uLL;
      }

      else
      {
        v129 = &unk_285B52918;
        v13 = v135;
        v15 = v128;
        v113 = 0x27EEB3000;
      }

      v117 = *(v113 + 2344);
      if (v117 <= 40 && (v117 != -1 || _LogCategory_Initialize()))
      {
        [DADeviceAccessAnalytics markState:a10 deviceID:? shared:? discovery:? flags:? sourceApp:? atTime:? errorCode:?];
      }

      v154 = v144;
      v155 = v149;
      v156 = v90;
      v157 = v108;
      v145 = v90;
      v158 = v112;
      v159 = v14;
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
    [daDeviceState setObject:v17 forKeyedSubscript:v13];
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
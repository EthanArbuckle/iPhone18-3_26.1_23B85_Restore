@interface MNTraceNetworkConditionHelper
+ (BOOL)disableNLC;
+ (BOOL)enableNLC:(id)c;
+ (BOOL)hasActiveNetworkConditionInducer;
+ (BOOL)isCellDataEnabled;
+ (BOOL)isWiFiEnabled;
+ (BOOL)setCellDataEnabled:(BOOL)enabled;
+ (BOOL)setWiFiEnabled:(BOOL)enabled;
+ (id)activeNLCProfile;
+ (id)availableNLCProfiles;
+ (id)getCurrentState;
+ (id)getNLCProfile:(id)profile;
+ (id)nlcProfiles;
+ (void)setCurrentState:(id)state;
@end

@implementation MNTraceNetworkConditionHelper

+ (id)getNLCProfile:(id)profile
{
  profileCopy = profile;
  nlcProfiles = [self nlcProfiles];
  v6 = [nlcProfiles objectForKeyedSubscript:profileCopy];

  return v6;
}

+ (id)availableNLCProfiles
{
  nlcProfiles = [self nlcProfiles];
  allKeys = [nlcProfiles allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v4;
}

+ (id)nlcProfiles
{
  v2 = *MEMORY[0x1E695E898];
  v3 = _CFPreferencesCopyValueWithContainer();
  if (![v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:@"/Developer/Library/PreferenceBundles/Developer Settings.bundle/com.apple.network.prefPaneSimulate.plist"];
    v5 = [v4 objectForKeyedSubscript:@"Profiles"];

    _CFPreferencesSetValueWithContainer();
    v3 = v5;
  }

  return v3;
}

+ (id)activeNLCProfile
{
  v2 = *MEMORY[0x1E695E898];
  v3 = _CFPreferencesCopyValueWithContainer();
  v4 = _CFPreferencesCopyValueWithContainer();
  bOOLValue = [v4 BOOLValue];

  v6 = _CFPreferencesCopyValueWithContainer();
  longValue = [v6 longValue];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v10 = v9;

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v13 = v12 - longValue <= v10;

  if ((v13 & bOOLValue) != 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (BOOL)disableNLC
{
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 21;
  v16 = 0;
  v2 = _nlc_connect(&v16);
  v3 = v2 == 1;
  if (v2 != 1)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *v15 = 0;
    v9 = "_nlc_connect failed";
    v10 = v12;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_16;
  }

  v4 = _nlc_stop_simulation(&v16, &v17);
  if (v4 != 1)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "_nlc_stop_simulation failed", v15, 2u);
    }
  }

  if (_nlc_disconnect(&v16) != 1)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed", v15, 2u);
    }
  }

  if (v4 != 1)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E4C0];
  v8 = *MEMORY[0x1E695E898];
  _CFPreferencesSetValueWithContainer();
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    v9 = "Network Link Conditioner disabled";
    v10 = v12;
    v11 = OS_LOG_TYPE_INFO;
LABEL_16:
    _os_log_impl(&dword_1D311E000, v10, v11, v9, v15, 2u);
  }

LABEL_17:

  return v3;
}

+ (BOOL)enableNLC:(id)c
{
  v69 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (([self hasActiveNetworkConditionInducer] & 1) == 0)
  {
    v6 = [self getNLCProfile:cCopy];
    v7 = v6;
    if (!v6)
    {
      v5 = 0;
LABEL_44:

      goto LABEL_45;
    }

    memset(v60, 0, sizeof(v60));
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 21;
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    memset(v65, 0, sizeof(v65));
    v63 = 0u;
    v64 = 0u;
    v8 = [v6 objectForKeyedSubscript:@"DownlinkBandwidth"];
    unsignedIntValue = [v8 unsignedIntValue];

    v10 = [v7 objectForKeyedSubscript:@"DownlinkBandwidthUnit"];
    bOOLValue = [v10 BOOLValue];

    v12 = [v7 objectForKeyedSubscript:@"DownlinkPacketLossRatio"];
    [v12 floatValue];
    v14 = v13 * 0.01;

    v15 = [v7 objectForKeyedSubscript:@"DownlinkDelay"];
    unsignedIntValue2 = [v15 unsignedIntValue];

    if (!unsignedIntValue && (v14 == 0.0 ? (v17 = unsignedIntValue2 == 0) : (v17 = 0), v17))
    {
      v18 = 5;
    }

    else
    {
      LODWORD(v63) = 9;
      *&v66 = __PAIR64__(bOOLValue, unsignedIntValue);
      *(&v66 + 1) = __PAIR64__(unsignedIntValue2, LODWORD(v14));
      v67 = 0uLL;
      v18 = 13;
      v68 = 0;
    }

    v19 = [v7 objectForKeyedSubscript:@"UplinkBandwidth"];
    unsignedIntValue3 = [v19 unsignedIntValue];

    v21 = [v7 objectForKeyedSubscript:@"UplinkBandwidthUnit"];
    bOOLValue2 = [v21 BOOLValue];

    v23 = [v7 objectForKeyedSubscript:@"UplinkPacketLossRatio"];
    [v23 floatValue];
    v25 = v24 * 0.01;

    v26 = [v7 objectForKeyedSubscript:@"UplinkDelay"];
    unsignedIntValue4 = [v26 unsignedIntValue];

    if (unsignedIntValue3 || v25 != 0.0 || unsignedIntValue4)
    {
      LODWORD(v63) = v18;
      HIDWORD(v64) = unsignedIntValue3;
      *&v65[0] = __PAIR64__(LODWORD(v25), bOOLValue2);
      memset(v65 + 12, 0, 20);
      DWORD2(v65[0]) = unsignedIntValue4;
    }

    v28 = [v7 objectForKeyedSubscript:@"RunOnInterface"];
    if ([v28 length])
    {
      [v28 cStringUsingEncoding:1];
      __strlcpy_chk();
      LODWORD(v63) = v63 | 1;
    }

    v29 = [v7 objectForKeyedSubscript:@"ProtocolFamily"];
    DWORD1(v63) = [v29 unsignedIntValue];

    if (DWORD1(v63))
    {
      LODWORD(v63) = v63 | 1;
    }

    v30 = [v7 objectForKeyedSubscript:@"ExcludeLoopback"];
    DWORD2(v63) = [v30 unsignedIntValue];

    if (v63)
    {
      *&v60[56] = v65[1];
      *&v60[72] = v66;
      *&v60[88] = v67;
      *&v60[104] = v68;
      *&v60[8] = v63;
      *&v60[24] = v64;
      *&v60[40] = v65[0];
    }

    v31 = [v7 objectForKeyedSubscript:@"DNSDelayValue"];
    unsignedIntValue5 = [v31 unsignedIntValue];

    if (unsignedIntValue5)
    {
      v33 = [v7 objectForKeyedSubscript:@"ExcludeLoopback"];
      unsignedIntValue6 = [v33 unsignedIntValue];

      *(&v54 + 4) = 6;
      HIDWORD(v54) = unsignedIntValue6;
      v55 = 0uLL;
      *&v56 = 0;
      DWORD2(v56) = 0;
      HIDWORD(v56) = unsignedIntValue5;
      *&v57 = 0;
      *(&v57 + 1) = 0x3500000011;
      v58 = 0u;
      v59 = 0u;
      *v60 = 0;
    }

    v52 = 0;
    v35 = _nlc_connect(&v52);
    v5 = v35 == 1;
    if (v35 == 1)
    {
      started = _nlc_start_simulation(&v52, &v53);
      if (started != 1)
      {
        v37 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_ERROR, "_nlc_start_simulation failed", buf, 2u);
        }
      }

      if (_nlc_disconnect(&v52) != 1)
      {
        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed", buf, 2u);
        }
      }

      if (started != 1)
      {
        v5 = 0;
        goto LABEL_43;
      }

      v39 = *MEMORY[0x1E695E898];
      _CFPreferencesSetValueWithContainer();
      v40 = *MEMORY[0x1E695E4D0];
      _CFPreferencesSetValueWithContainer();
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v43 = v42;

      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      _CFPreferencesSetValueWithContainer();
      CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
      v48 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
LABEL_41:

LABEL_43:
        goto LABEL_44;
      }

      *buf = 138412290;
      v62 = cCopy;
      v44 = "Network Link Conditioner set to %@";
      v45 = v48;
      v46 = OS_LOG_TYPE_INFO;
      v47 = 12;
    }

    else
    {
      v48 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v44 = "_nlc_connect failed";
      v45 = v48;
      v46 = OS_LOG_TYPE_ERROR;
      v47 = 2;
    }

    _os_log_impl(&dword_1D311E000, v45, v46, v44, buf, v47);
    goto LABEL_41;
  }

  v5 = 0;
LABEL_45:

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)hasActiveNetworkConditionInducer
{
  v22 = *MEMORY[0x1E69E9840];
  ConditionInducerLibrary();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getCOConditionSessionClass_softClass;
  v20 = getCOConditionSessionClass_softClass;
  if (!getCOConditionSessionClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getCOConditionSessionClass_block_invoke;
    v16[3] = &unk_1E842FE88;
    v16[4] = &v17;
    __getCOConditionSessionClass_block_invoke(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  getActiveConditions = [v3 getActiveConditions];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [getActiveConditions allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v21 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsString:@"SlowNetwork"])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)isCellDataEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  ctConnection();
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v3 = errorFromCTError(IsEnabled);
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Couldn't get cell data state: %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (BOOL)setCellDataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  ctConnection();
  IsEnabled = _CTServerConnectionSetCellularDataIsEnabled();
  v5 = errorFromCTError(IsEnabled);
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v5;
      v8 = "Couldn't set cell data state: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v9, v10, v8, &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = "dis";
    if (enabledCopy)
    {
      v11 = "en";
    }

    v14 = 136315138;
    v15 = v11;
    v8 = "Cell Data %sabled";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

+ (BOOL)isWiFiEnabled
{
  CoreWiFiLibrary();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getCWFInterfaceClass_softClass;
  v11 = getCWFInterfaceClass_softClass;
  if (!getCWFInterfaceClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCWFInterfaceClass_block_invoke;
    v7[3] = &unk_1E842FE88;
    v7[4] = &v8;
    __getCWFInterfaceClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v3);
  [v4 activate];
  powerOn = [v4 powerOn];
  [v4 invalidate];

  return powerOn;
}

+ (BOOL)setWiFiEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!ATKLoggerLibraryCore_frameworkLibrary)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __ATKLoggerLibraryCore_block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0l;
    v22 = &v18;
    v23 = xmmword_1E842FEF8;
    v24 = 0;
    ATKLoggerLibraryCore_frameworkLibrary = _sl_dlopen();
    v4 = v18;
    if (ATKLoggerLibraryCore_frameworkLibrary)
    {
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = abort_report_np();
      __break(1u);
    }

    free(v4);
  }

LABEL_4:
  CoreAutomationDeviceLibrary();
  *&v23 = 0;
  *(&v23 + 1) = &v23;
  v24 = 0x2050000000;
  v5 = getCAMDEmbeddedDeviceServiceClass_softClass;
  v25 = getCAMDEmbeddedDeviceServiceClass_softClass;
  if (!getCAMDEmbeddedDeviceServiceClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __getCAMDEmbeddedDeviceServiceClass_block_invoke;
    v21 = &unk_1E842FE88;
    v22 = &v23;
    __getCAMDEmbeddedDeviceServiceClass_block_invoke(&buf);
    v5 = *(*(&v23 + 1) + 24);
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  initAsMobile = [[v6 alloc] initAsMobile];
  [initAsMobile setDirectInvocations:0];
  [initAsMobile start];
  wiFi = [initAsMobile WiFi];
  v9 = wiFi;
  if (enabledCopy)
  {
    [wiFi on];
  }

  else
  {
    [wiFi off];
  }
  v10 = ;

  error = [v10 error];

  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (error)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      error2 = [v10 error];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = error2;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Unable to change WiFi state: %@", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = "OFF";
    if (enabledCopy)
    {
      v15 = "ON";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "WiFi power set to %s", &buf, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
  return error == 0;
}

+ (void)setCurrentState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    global_queue = geo_get_global_queue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__MNTraceNetworkConditionHelper_setCurrentState___block_invoke;
    v6[3] = &unk_1E8430A10;
    selfCopy = self;
    v7 = stateCopy;
    dispatch_async(global_queue, v6);
  }
}

void __49__MNTraceNetworkConditionHelper_setCurrentState___block_invoke(uint64_t a1)
{
  [*(a1 + 40) setWiFiEnabled:{objc_msgSend(*(a1 + 32), "wifiEnabled")}];
  [*(a1 + 40) setCellDataEnabled:{objc_msgSend(*(a1 + 32), "cellEnabled")}];
  if ([*(a1 + 32) nlcEnabled] && (objc_msgSend(*(a1 + 32), "nlcProfile"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, v3))
  {
    v4 = *(a1 + 40);
    v6 = [*(a1 + 32) nlcProfile];
    [v4 enableNLC:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 disableNLC];
  }
}

+ (id)getCurrentState
{
  v3 = objc_alloc_init(MNTraceNetworkEvent);
  -[MNTraceNetworkEvent setWifiEnabled:](v3, "setWifiEnabled:", [self isWiFiEnabled]);
  -[MNTraceNetworkEvent setCellEnabled:](v3, "setCellEnabled:", [self isCellDataEnabled]);
  activeNLCProfile = [self activeNLCProfile];
  [(MNTraceNetworkEvent *)v3 setNlcProfile:activeNLCProfile];

  nlcProfile = [(MNTraceNetworkEvent *)v3 nlcProfile];
  -[MNTraceNetworkEvent setNlcEnabled:](v3, "setNlcEnabled:", [nlcProfile length] != 0);

  return v3;
}

@end
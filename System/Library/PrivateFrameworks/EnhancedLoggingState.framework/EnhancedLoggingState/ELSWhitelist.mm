@interface ELSWhitelist
+ (id)_allPlatforms;
+ (id)findEntryForBundleIdentifier:(id)identifier;
+ (id)findEntryForDEDIdentifier:(id)identifier;
+ (id)findEntryForParameterName:(id)name;
+ (id)whitelist;
@end

@implementation ELSWhitelist

+ (id)whitelist
{
  if (whitelist_onceToken != -1)
  {
    +[ELSWhitelist whitelist];
  }

  v3 = whitelist_whitelist;

  return v3;
}

void __25__ELSWhitelist_whitelist__block_invoke()
{
  v177[1] = *MEMORY[0x277D85DE8];
  v0 = [ELSWhitelistEntry alloc];
  v1 = +[ELSWhitelist _allPlatforms];
  v134 = [(ELSWhitelistEntry *)v0 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.sysdiagnose" parameterName:@"sysdiagnose" baseLocalizationKey:@"ENHANCED_LOGGING_SYSDIAGNOSE" needsWAPIKeys:0 requiresFollowup:0 retry:0 platforms:v1];

  v2 = [ELSWhitelistEntry alloc];
  v177[0] = @"ios";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:1];
  v133 = [(ELSWhitelistEntry *)v2 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.sysdiagnose" parameterName:@"coSysdiagnose" baseLocalizationKey:@"ENHANCED_LOGGING_COSYSDIAGNOSE" needsWAPIKeys:0 requiresFollowup:0 retry:0 platforms:v3];

  v4 = [ELSWhitelistEntry alloc];
  v176 = @"ios";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  v132 = [(ELSWhitelistEntry *)v4 initWithBundleIdentifier:@"com.apple.HangTracer.PerformanceLoggingDiagnosticExtension" parameterName:@"performance" baseLocalizationKey:@"ENHANCED_LOGGING_PERFORMANCE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v5];

  v6 = [ELSWhitelistEntry alloc];
  v175 = @"ios";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v175 count:1];
  v131 = [(ELSWhitelistEntry *)v6 initWithBundleIdentifier:@"com.apple.PowerlogCore.DEPowerlogEPL" parameterName:@"power" baseLocalizationKey:@"ENHANCED_LOGGING_POWER" needsWAPIKeys:1 requiresFollowup:0 retry:0 platforms:v7];

  v8 = [ELSWhitelistEntry alloc];
  v174 = @"ios";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v174 count:1];
  v130 = [(ELSWhitelistEntry *)v8 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.Cellular" parameterName:@"cellular" baseLocalizationKey:@"ENHANCED_LOGGING_CELLULAR" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v9];

  v10 = [ELSWhitelistEntry alloc];
  v173 = @"ios";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v173 count:1];
  v128 = [(ELSWhitelistEntry *)v10 initWithBundleIdentifier:@"com.apple.Diagnostics.diagnosticextension" parameterName:@"diagnostics" baseLocalizationKey:@"ENHANCED_LOGGING_DIAGNOSTICS" needsWAPIKeys:0 requiresFollowup:0 retry:0 platforms:v11];

  v12 = [ELSWhitelistEntry alloc];
  v172[0] = @"ios";
  v172[1] = @"visionos";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:2];
  v129 = [(ELSWhitelistEntry *)v12 initWithBundleIdentifier:@"com.apple.CFNetwork.DiagnosticExtension" parameterName:@"cfnetwork" baseLocalizationKey:@"ENHANCED_LOGGING_CFNETWORK" needsWAPIKeys:0 requiresFollowup:0 retry:0 platforms:v13];

  v14 = [ELSWhitelistEntry alloc];
  v171 = @"ios";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v171 count:1];
  v127 = [(ELSWhitelistEntry *)v14 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.CoreLocation" parameterName:@"coreMotionAndLocation" baseLocalizationKey:@"ENHANCED_LOGGING_LOCATION_AND_MOTION" needsWAPIKeys:1 requiresFollowup:1 retry:1 platforms:v15];

  v16 = [ELSWhitelistEntry alloc];
  v170[0] = @"ios";
  v170[1] = @"watchos";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
  v125 = [(ELSWhitelistEntry *)v16 initWithBundleIdentifier:@"com.apple.HealthLite.KaliDiagnosticExtension" parameterName:@"hid_kali" baseLocalizationKey:@"ENHANCED_LOGGING_HID_KALI" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v17];

  v18 = [ELSWhitelistEntry alloc];
  v169[0] = @"ios";
  v169[1] = @"watchos";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
  v126 = [(ELSWhitelistEntry *)v18 initWithBundleIdentifier:@"com.apple.HealthAlgorithms.CycleTrackingDiagnosticExtension" parameterName:@"hid_cycle_tracking" baseLocalizationKey:@"ENHANCED_LOGGING_HID_CYCLE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v19];

  v20 = [ELSWhitelistEntry alloc];
  v168[0] = @"ios";
  v168[1] = @"watchos";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:2];
  v97 = [(ELSWhitelistEntry *)v20 initWithBundleIdentifier:@"com.apple.AppleElementsSupport.AppleElementsSleepDiagnostic" parameterName:@"hid-sleep-respiration_rate" baseLocalizationKey:@"ENHANCED_LOGGING_HID_ACACIA" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v21];

  v22 = [ELSWhitelistEntry alloc];
  v167[0] = @"ios";
  v167[1] = @"watchos";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
  v124 = [(ELSWhitelistEntry *)v22 initWithBundleIdentifier:@"com.apple.AfibBurden.AfibBurdenDiagnosticExtension" parameterName:@"hid_beryllium" baseLocalizationKey:@"ENHANCED_LOGGING_HID_BERYLLIUM" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v23];

  v24 = [ELSWhitelistEntry alloc];
  v166[0] = @"ios";
  v166[1] = @"watchos";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:2];
  v123 = [(ELSWhitelistEntry *)v24 initWithBundleIdentifier:@"com.apple.HealthLite.PPGSensorDiagnosticExtension" parameterName:@"optical" baseLocalizationKey:@"ENHANCED_LOGGING_HID_OPTICAL" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v25];

  v26 = [ELSWhitelistEntry alloc];
  v165[0] = @"ios";
  v165[1] = @"watchos";
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:2];
  v119 = [(ELSWhitelistEntry *)v26 initWithBundleIdentifier:@"com.apple.HeartRhythmAlgorithms.IRNDiagnosticExtension" parameterName:@"irn" baseLocalizationKey:@"ENHANCED_LOGGING_HID_IRN" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v27];

  v28 = [ELSWhitelistEntry alloc];
  v164[0] = @"ios";
  v164[1] = @"watchos";
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:2];
  v122 = [(ELSWhitelistEntry *)v28 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.Cinnamon" parameterName:@"ecg" baseLocalizationKey:@"ENHANCED_LOGGING_HID_ECG" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v29];

  v30 = [ELSWhitelistEntry alloc];
  v163 = @"ios";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:1];
  v121 = [(ELSWhitelistEntry *)v30 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.TypologyDiagnosticExtension" parameterName:@"typology" baseLocalizationKey:@"ENHANCED_LOGGING_TYPOLOGY" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v31];

  v32 = [ELSWhitelistEntry alloc];
  v162 = @"ios";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];
  v120 = [(ELSWhitelistEntry *)v32 initWithBundleIdentifier:@"com.apple.AuthKit.AKDiagnosticExtension" parameterName:@"authkit" baseLocalizationKey:@"ENHANCED_LOGGING_AUTHKIT" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v33];

  v34 = [ELSWhitelistEntry alloc];
  v161 = @"ios";
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
  v113 = [(ELSWhitelistEntry *)v34 initWithBundleIdentifier:@"com.apple.mobilemail.DiagnosticExtension" parameterName:@"mobilemail" baseLocalizationKey:@"ENHANCED_LOGGING_MOBILEMAIL" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v35];

  v36 = [ELSWhitelistEntry alloc];
  v160[0] = @"ios";
  v160[1] = @"watchos";
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:2];
  v118 = [(ELSWhitelistEntry *)v36 initWithBundleIdentifier:@"com.apple.CoreGesture.CoreGestureDiagnosticExtension" parameterName:@"gediagnose" baseLocalizationKey:@"ENHANCED_LOGGING_GEDIAGNOSE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v37];

  v38 = [ELSWhitelistEntry alloc];
  v159[0] = @"ios";
  v159[1] = @"watchos";
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:2];
  v117 = [(ELSWhitelistEntry *)v38 initWithBundleIdentifier:@"com.apple.HealthKit.HealthCustomerDiagnosticExtension" parameterName:@"healthkit" baseLocalizationKey:@"ENHANCED_LOGGING_HEALTHKIT" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v39];

  v40 = [ELSWhitelistEntry alloc];
  v158[0] = @"ios";
  v158[1] = @"watchos";
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
  v116 = [(ELSWhitelistEntry *)v40 initWithBundleIdentifier:@"com.apple.HealthKit.HealthResearchLogsDiagnosticExtension" parameterName:@"research_logs" baseLocalizationKey:@"ENHANCED_LOGGING_HEALTHRESEARCH" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v41];

  v42 = [ELSWhitelistEntry alloc];
  v157[0] = @"ios";
  v157[1] = @"watchos";
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:2];
  v115 = [(ELSWhitelistEntry *)v42 initWithBundleIdentifier:@"com.apple.HealthKit.HealthRegulatoryCustomerDiagnosticExtension" parameterName:@"healthregulatory" baseLocalizationKey:@"ENHANCED_LOGGING_HEALTHREGULATORY" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v43];

  v44 = [ELSWhitelistEntry alloc];
  v156 = @"ios";
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
  v114 = [(ELSWhitelistEntry *)v44 initWithBundleIdentifier:@"com.apple.HealthKit.HealthHTNCustomerDiagnosticExtension" parameterName:@"hid_hermit_phone" baseLocalizationKey:@"ENHANCED_LOGGING_HERMIT_PHONE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v45];

  v46 = [ELSWhitelistEntry alloc];
  v155 = @"watchos";
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
  v112 = [(ELSWhitelistEntry *)v46 initWithBundleIdentifier:@"com.apple.HealthLite.HermitDiagnosticExtension" parameterName:@"hid_hermit_watch" baseLocalizationKey:@"ENHANCED_LOGGING_HERMIT_WATCH" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v47];

  v48 = [ELSWhitelistEntry alloc];
  v154[0] = @"ios";
  v154[1] = @"macos";
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:2];
  v106 = [(ELSWhitelistEntry *)v48 initWithBundleIdentifier:@"com.apple.CloudDocsDaemon.diagnostic" parameterName:@"iclouddriveextradebug" baseLocalizationKey:@"ENHANCED_LOGGING_ICLOUDDRIVE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v49];

  v50 = [ELSWhitelistEntry alloc];
  v153 = @"ios";
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
  v111 = [(ELSWhitelistEntry *)v50 initWithBundleIdentifier:@"com.apple.PassKit.applepay.diagnosticextension" parameterName:@"wallet" baseLocalizationKey:@"ENHANCED_LOGGING_WALLET" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v51];

  v52 = [ELSWhitelistEntry alloc];
  v152 = @"ios";
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:1];
  v110 = [(ELSWhitelistEntry *)v52 initWithBundleIdentifier:@"com.apple.BreathingAlgorithms.BDADiagnosticExtension" parameterName:@"hid_nebula_phone" baseLocalizationKey:@"ENHANCED_LOGGING_NEBULA_PHONE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v53];

  v54 = [ELSWhitelistEntry alloc];
  v151 = @"watchos";
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];
  v109 = [(ELSWhitelistEntry *)v54 initWithBundleIdentifier:@"com.apple.HealthLite.BreathingDisturbanceDiagnosticExtension" parameterName:@"hid_nebula_watch" baseLocalizationKey:@"ENHANCED_LOGGING_NEBULA_WATCH" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v55];

  v56 = [ELSWhitelistEntry alloc];
  v150 = @"watchos";
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];
  v108 = [(ELSWhitelistEntry *)v56 initWithBundleIdentifier:@"com.apple.HealthLite.SleepAlgorithmsDiagnosticExtension" parameterName:@"hid_sleep_algorithms" baseLocalizationKey:@"ENHANCED_LOGGING_SLEEP_ALGORITHMS" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v57];

  v58 = [ELSWhitelistEntry alloc];
  v149 = @"watchos";
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
  v107 = [(ELSWhitelistEntry *)v58 initWithBundleIdentifier:@"com.apple.HealthLite.AccelArchiveDiagnosticExtension" parameterName:@"hid_accel_archive" baseLocalizationKey:@"ENHANCED_LOGGING_ACCEL_ARCHIVE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v59];

  v60 = [ELSWhitelistEntry alloc];
  v148 = @"watchos";
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
  v105 = [(ELSWhitelistEntry *)v60 initWithBundleIdentifier:@"com.apple.HealthLite.WristDetectStateArchiveDE" parameterName:@"hid_wrist_detect_state_archive" baseLocalizationKey:@"ENHANCED_LOGGING_WRIST_DETECT_STATE_ARCHIVE" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v61];

  v62 = [ELSWhitelistEntry alloc];
  v147 = @"ios";
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
  v104 = [(ELSWhitelistEntry *)v62 initWithBundleIdentifier:@"com.apple.exchangesync.framework.SyncDiagnosticsExtension" parameterName:@"eas_de" baseLocalizationKey:@"ENHANCED_LOGGING_EXCHANGE_SYNC" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v63];

  v64 = [ELSWhitelistEntry alloc];
  v146 = @"visionos";
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  v103 = [(ELSWhitelistEntry *)v64 initWithBundleIdentifier:@"com.apple.Mind.MindfulnessDiagnosticExtension" parameterName:@"mindfulness" baseLocalizationKey:@"ENHANCED_LOGGING_MINDFULNESS" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v65];

  v66 = [ELSWhitelistEntry alloc];
  v145 = @"visionos";
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  v102 = [(ELSWhitelistEntry *)v66 initWithBundleIdentifier:@"com.apple.RespirationTracking.DiagnosticExtension" parameterName:@"respiration_tracking" baseLocalizationKey:@"ENHANCED_LOGGING_RESPIRATION_TRACKING" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v67];

  v68 = [ELSWhitelistEntry alloc];
  v144 = @"ios";
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
  v70 = [(ELSWhitelistEntry *)v68 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.IMDiagnosticExtension" parameterName:@"messages" baseLocalizationKey:@"ENHANCED_LOGGING_MESSAGES" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v69];

  v71 = [ELSWhitelistEntry alloc];
  v143 = @"ios";
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v101 = [(ELSWhitelistEntry *)v71 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.TUDiagnosticExtension" parameterName:@"facetime" baseLocalizationKey:@"ENHANCED_LOGGING_FACETIME" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v72];

  v73 = [ELSWhitelistEntry alloc];
  v142[0] = @"ios";
  v142[1] = @"visionos";
  v142[2] = @"tvos";
  v142[3] = @"homepod";
  v142[4] = @"watchos";
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:5];
  v100 = [(ELSWhitelistEntry *)v73 initWithBundleIdentifier:@"com.apple.wifi.WiFiLogCapture.MegaWiFiDiagnosticExtension" parameterName:@"megawifi" baseLocalizationKey:@"ENHANCED_LOGGING_MEGAWIFI" needsWAPIKeys:1 requiresFollowup:1 retry:1 platforms:v74];

  v75 = [ELSWhitelistEntry alloc];
  v141 = @"ios";
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
  v99 = [(ELSWhitelistEntry *)v75 initWithBundleIdentifier:@"com.apple.HDSViewService.HDSDiagnostics" parameterName:@"hdsdiagnose" baseLocalizationKey:@"ENHANCED_LOGGING_HDS" needsWAPIKeys:1 requiresFollowup:1 retry:1 platforms:v76];

  v77 = [ELSWhitelistEntry alloc];
  v78 = +[ELSWhitelist _allPlatforms];
  v79 = [(ELSWhitelistEntry *)v77 initWithBundleIdentifier:@"com.apple.HomeKit.HomeKitCustomerDiagnosticExtension" parameterName:@"homekit_logs" baseLocalizationKey:@"HOMEKIT_LOGGING" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v78];

  v80 = [ELSWhitelistEntry alloc];
  v140 = @"ios";
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
  v98 = [(ELSWhitelistEntry *)v80 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.BluetoothHeadset" parameterName:@"bt_headset" baseLocalizationKey:@"ENHANCED_LOGGING_BT_HEADSET" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v81];

  v82 = [ELSWhitelistEntry alloc];
  v139[0] = @"ios";
  v139[1] = @"watchos";
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
  v84 = [(ELSWhitelistEntry *)v82 initWithBundleIdentifier:@"com.apple.HeartRateCoordinator.HRCDiagnosticExtension" parameterName:@"hid_heart_rate_coordinator" baseLocalizationKey:@"ENHANCED_LOGGING_HEART_RATE_COORDINATOR" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v83];

  v85 = [ELSWhitelistEntry alloc];
  v138 = @"visionos";
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v87 = [(ELSWhitelistEntry *)v85 initWithBundleIdentifier:@"com.apple.SeaLevelDiagnosticExtension" parameterName:@"dpcf" baseLocalizationKey:@"ENHANCED_LOGGING_PRISM" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v86];

  v88 = [ELSWhitelistEntry alloc];
  v137 = @"ios";
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  v96 = [(ELSWhitelistEntry *)v88 initWithBundleIdentifier:@"com.apple.DiagnosticExtensions.ConnectivityWiFiDE" parameterName:@"connectivity_wifi" baseLocalizationKey:@"ENHANCED_LOGGING_CONNECTIVITY_WIFI" needsWAPIKeys:1 requiresFollowup:1 retry:1 platforms:v89];

  v90 = [ELSWhitelistEntry alloc];
  v136 = @"ios";
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
  v92 = [(ELSWhitelistEntry *)v90 initWithBundleIdentifier:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" parameterName:@"photos" baseLocalizationKey:@"ENHANCED_LOGGING_PHOTOS_LIB" needsWAPIKeys:0 requiresFollowup:1 retry:1 platforms:v91];

  v135[0] = v134;
  v135[1] = v133;
  v135[2] = v132;
  v135[3] = v131;
  v135[4] = v130;
  v135[5] = v128;
  v135[6] = v129;
  v135[7] = v127;
  v135[8] = v97;
  v135[9] = v125;
  v135[10] = v126;
  v135[11] = v124;
  v135[12] = v123;
  v135[13] = v119;
  v135[14] = v122;
  v135[15] = v121;
  v135[16] = v120;
  v135[17] = v113;
  v135[18] = v118;
  v135[19] = v117;
  v135[20] = v116;
  v135[21] = v115;
  v135[22] = v114;
  v135[23] = v112;
  v135[24] = v106;
  v135[25] = v111;
  v135[26] = v110;
  v135[27] = v109;
  v135[28] = v108;
  v135[29] = v107;
  v135[30] = v105;
  v135[31] = v104;
  v135[32] = v103;
  v135[33] = v102;
  v135[34] = v70;
  v135[35] = v101;
  v135[36] = v100;
  v135[37] = v99;
  v135[38] = v79;
  v135[39] = v98;
  v135[40] = v84;
  v135[41] = v87;
  v135[42] = v96;
  v135[43] = v92;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:44];
  v94 = whitelist_whitelist;
  whitelist_whitelist = v93;

  v95 = *MEMORY[0x277D85DE8];
}

+ (id)findEntryForParameterName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  whitelist = [self whitelist];
  v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(whitelist);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        parameterName = [v9 parameterName];
        v11 = [parameterName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)findEntryForBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  whitelist = [self whitelist];
  v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(whitelist);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)findEntryForDEDIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  whitelist = [self whitelist];
  v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(whitelist);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [identifierCopy containsString:bundleIdentifier];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [whitelist countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_allPlatforms
{
  if (_allPlatforms_onceToken != -1)
  {
    +[ELSWhitelist _allPlatforms];
  }

  v3 = _allPlatforms_allPlatforms;

  return v3;
}

void __29__ELSWhitelist__allPlatforms__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"macos";
  v3[1] = @"ios";
  v3[2] = @"watchos";
  v3[3] = @"visionos";
  v3[4] = @"tvos";
  v3[5] = @"homepod";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = _allPlatforms_allPlatforms;
  _allPlatforms_allPlatforms = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end
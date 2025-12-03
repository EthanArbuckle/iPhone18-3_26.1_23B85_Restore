@interface HTPrefs
+ (id)sharedPrefs;
- (BOOL)BOOLProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (BOOL)shouldUpdateHangsHUD;
- (HTPrefInit)prefInitList;
- (NSArray)prefContextPrefixPriorityOrder;
- (double)doubleProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (id)objectProperty:(HTPrefInit *)property matchingSelector:(SEL)selector contextPrefixOut:(id *)out;
- (id)prefNamed:(__CFString *)named domain:(__CFString *)domain profile:(id)profile matchingSelector:(SEL)selector contextPrefixOut:(id *)out;
- (id)stringProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (int)intProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (unint64_t)unsignedLongProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (unsigned)unsignedIntProperty:(HTPrefInit *)property contextPrefixOut:(id *)out;
- (void)__createInternalSettings;
- (void)_removeAllPrefs;
- (void)dealloc;
- (void)earlyInitNecessaryPrefs;
- (void)initBoolProperty:(HTPrefInit *)property;
- (void)initDoubleProperty:(HTPrefInit *)property;
- (void)initIntProperty:(HTPrefInit *)property;
- (void)initNSObjectProperty:(HTPrefInit *)property;
- (void)initNSStringProperty:(HTPrefInit *)property;
- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)enabled;
- (void)initPropertyHaveInternalSettings:(HTPrefInit *)settings;
- (void)initPropertyIsInternal:(HTPrefInit *)internal;
- (void)initPropertyReportPeriod:(HTPrefInit *)period;
- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)tailspins;
- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)languages;
- (void)initUnsignedIntProperty:(HTPrefInit *)property;
- (void)initUnsignedLongLongProperty:(HTPrefInit *)property;
- (void)initUnsignedLongProperty:(HTPrefInit *)property;
- (void)refreshHTPrefs;
- (void)setupPrefsWithQueue:(id)queue;
- (void)setupPrefsWithQueue:(id)queue profilePath:(id)path taskingDomainName:(__CFString *)name hangtracerDomain:(__CFString *)domain setupInternalPrefs:(BOOL)prefs;
@end

@implementation HTPrefs

+ (id)sharedPrefs
{
  if (sharedPrefs_onceToken != -1)
  {
    +[HTPrefs sharedPrefs];
  }

  v3 = sharedPrefs_htPrefs;

  return v3;
}

uint64_t __22__HTPrefs_sharedPrefs__block_invoke()
{
  sharedPrefs_htPrefs = objc_alloc_init(HTPrefs);

  return MEMORY[0x1EEE66BB8]();
}

void __41__HTPrefs_prefContextPrefixPriorityOrder__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_1F47F5AE8;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:12];
  v1 = prefContextPrefixPriorityOrder_prefContextPriorityOrder;
  prefContextPrefixPriorityOrder_prefContextPriorityOrder = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (NSArray)prefContextPrefixPriorityOrder
{
  if (prefContextPrefixPriorityOrder_onceToken != -1)
  {
    [HTPrefs prefContextPrefixPriorityOrder];
  }

  v3 = prefContextPrefixPriorityOrder_prefContextPriorityOrder;

  return v3;
}

- (void)refreshHTPrefs
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = shared_ht_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_1C8286000, v3, OS_LOG_TYPE_INFO, "HTPrefs: Refreshing preferences", v12, 2u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  installedHTProfileDict = self->__installedHTProfileDict;
  self->__installedHTProfileDict = dictionaryRepresentation;

  CFPreferencesAppSynchronize(self->__htTaskingDomain);
  CFPreferencesAppSynchronize(self->__htDomain);
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  prefInitList = [(HTPrefs *)self prefInitList];
  v12[3] = 0;
  v12[0] = @"HangTracerEnabled";
  v12[1] = &self->_hangtracerDaemonEnabled;
  v12[2] = 1;
  v12[4] = 0;
  v12[5] = sel_initPropertyHangtracerDaemonEnabled_;
  [(HTPrefs *)self initPropertyHangtracerDaemonEnabled:v12];
  if (self->_hangtracerDaemonEnabled)
  {
    for (i = prefInitList->var5; i; ++prefInitList)
    {
      [self i];
      i = prefInitList[1].var5;
    }
  }

  if ([(HTPrefs *)self shouldPostHTPrefsChangedNotification])
  {
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:0];
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = @"com.apple.hangtracer.htprefs.refreshed";
      _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_INFO, "Posting notification %@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.hangtracer.htprefs.refreshed" object:self userInfo:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)earlyInitNecessaryPrefs
{
  v20 = *MEMORY[0x1E69E9840];
  v6[0] = @"HangTracerEnableCustomerMode";
  v6[1] = &self->_customerModeEnabled;
  v7 = 0;
  v8 = 0;
  v2 = sel_initBoolProperty_;
  v9 = 0;
  v10 = sel_initBoolProperty_;
  v11 = 0;
  p_isInternal = &self->_isInternal;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = sel_initPropertyIsInternal_;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (sel_initBoolProperty_)
  {
    v4 = v6;
    do
    {
      [self v2];
      v2 = v4[11];
      v4 += 6;
    }

    while (v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (HTPrefInit)prefInitList
{
  v93 = *MEMORY[0x1E69E9840];
  result = self->_prefInitList;
  if (!result)
  {
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(HTPrefs *)v4 prefInitList];
    }

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    v6 = v5;
    distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture2 timeIntervalSinceReferenceDate];
    v8 = v7;
    v92 = 0u;
    HIBYTE(v92) = 0;

    result = malloc_type_malloc(0x1020uLL, 0x5FA256FFuLL);
    result[71].var0 = @"PDSEPrefWorkflowResponsivenessPeriodDays";
    result[71].var1 = &self->_pdseWorkflowResponsivenessPeriodDays;
    result[72].var0 = @"HangTracerCollectOSSignpostsDeferred";
    result[72].var1 = &self->_shouldAugmentSentryTailspinWithSignposts;
    result[73].var0 = @"PDSEPrefHTBadDayKillSwitch";
    result->var0 = @"HangTracerEnableTailspin";
    result->var1 = &self->_htTailspinEnabled;
    result[73].var1 = &self->_pdseHTBadDayKillSwitch;
    result[74].var0 = @"PDSEPrefAllowEnableTailspin";
    result[74].var1 = &self->_pdseAllowEnableTailspin;
    result[75].var0 = @"BadDaySecondsBetweenLastEnablementAndReferenceDate";
    result[1].var0 = @"HangTracerEnableHUD";
    result[1].var1 = &self->_hudEnabled;
    result[75].var1 = &self->_badDaySecondsBetweenLastEnablementAndReferenceDate;
    result[76].var0 = @"BadDayEnablementMinimumBreakDurationDays";
    result[76].var1 = &self->_badDayEnablementMinimumBreakDurationDays;
    result[77].var0 = @"BadDayEnablementDurationDaysKey";
    result[2].var0 = @"HangTracerCollectOSSignposts";
    result[2].var1 = &self->_shouldCollectOSSignposts;
    result[77].var1 = &self->_badDayEnablementDurationDays;
    result[78].var0 = @"BadDayEnablementForHangDurationMSec";
    result[78].var1 = &self->_badDayEnablementForHangDurationMSec;
    result[79].var0 = @"BadDayEnablementForLogCount";
    result[3].var0 = @"HangTracerSavedTailspinsMaxMB";
    result[3].var1 = &self->_savedTailspinMaxMB;
    result[79].var1 = &self->_badDayEnablementForLogCount;
    result[80].var0 = @"BadDayEnablementForPreviousDays";
    result[80].var1 = &self->_badDayEnablementForPreviousDays;
    result[81].var0 = @"HangTracerTelemetryHaveNonDefaultFeatureFlags";
    result[4].var0 = @"HangTracerKeepTailspins";
    result[4].var1 = &self->_keepTailspinsLegacy;
    result[81].var1 = &self->_haveNonDefaultFeatureFlags;
    result[82].var0 = @"HangTracerTelemetrySerialLoggingEnabled";
    result[82].var1 = &self->_haveSerialLoggingEnabled;
    result[83].var0 = @"HangTracerTelemetryNumOSCryptexFileExtents";
    result[5].var0 = @"HangTracerKeepTailspinsWithFormat";
    result[5].var1 = &self->_tailspinSaveFormat;
    result[5].var2.var3 = @"compressed";
    result[5].var3.var3 = @"none";
    result[83].var1 = &self->_numOSCryptexFileExtents;
    result[84].var0 = @"HangTracerTelemetryHaveRootsInstalled";
    result[84].var1 = &self->_haveRootsInstalled;
    result[5].var5 = sel_initNSStringProperty_;
    result[6].var1 = &self->_shouldSaveTailspins;
    HIDWORD(result[6].var2.var3) = *&v87[3];
    *(&result[6].var2.var0 + 1) = *v87;
    HIDWORD(result[6].var3.var3) = *&v86[3];
    *(&result[6].var3.var0 + 1) = *v86;
    HIDWORD(result[7].var2.var3) = *&v85[3];
    *(&result[7].var2.var0 + 1) = *v85;
    HIDWORD(result[7].var3.var3) = *&v84[3];
    *(&result[7].var3.var0 + 1) = *v84;
    HIDWORD(result[8].var2.var3) = *&v83[3];
    *(&result[8].var2.var0 + 1) = *v83;
    HIDWORD(result[8].var3.var3) = *&v82[3];
    *(&result[8].var3.var0 + 1) = *v82;
    HIDWORD(result[9].var2.var3) = *&v81[3];
    *(&result[9].var2.var0 + 1) = *v81;
    HIDWORD(result[9].var3.var3) = *&v80[3];
    *(&result[9].var3.var0 + 1) = *v80;
    HIDWORD(result[10].var2.var3) = *&v79[3];
    *(&result[10].var2.var0 + 1) = *v79;
    HIDWORD(result[10].var3.var3) = *&v78[3];
    *(&result[10].var3.var0 + 1) = *v78;
    *(&result[24].var2.var0 + 1) = *v77;
    *(&result[24].var3.var0 + 1) = *v76;
    *(&result[27].var2.var0 + 1) = *v75;
    *(&result[27].var3.var0 + 1) = *v74;
    HIDWORD(result[29].var2.var3) = *&v73[3];
    *(&result[29].var2.var0 + 1) = *v73;
    HIDWORD(result[29].var3.var3) = *&v72[3];
    *(&result[29].var3.var0 + 1) = *v72;
    *(&result[32].var2.var0 + 1) = *v71;
    *(&result[32].var3.var0 + 1) = *v70;
    HIDWORD(result[33].var2.var3) = *&v69[3];
    *(&result[33].var2.var0 + 1) = *v69;
    HIDWORD(result[33].var3.var3) = *&v68[3];
    *(&result[33].var3.var0 + 1) = *v68;
    *(&result[36].var2.var0 + 1) = *v67;
    *(&result[36].var3.var0 + 1) = *v66;
    HIDWORD(result[37].var2.var3) = *&v65[3];
    *(&result[37].var2.var0 + 1) = *v65;
    HIDWORD(result[37].var3.var3) = *&v64[3];
    *(&result[37].var3.var0 + 1) = *v64;
    HIDWORD(result[40].var2.var3) = *&v63[3];
    *(&result[40].var2.var0 + 1) = *v63;
    HIDWORD(result[40].var3.var3) = *&v62[3];
    *(&result[40].var3.var0 + 1) = *v62;
    *(&result[43].var2.var0 + 1) = *v61;
    *(&result[43].var3.var0 + 1) = *v60;
    HIDWORD(result[44].var2.var3) = *&v59[3];
    *(&result[44].var2.var0 + 1) = *v59;
    HIDWORD(result[44].var3.var3) = *&v58[3];
    *(&result[44].var3.var0 + 1) = *v58;
    HIDWORD(result[45].var2.var3) = *&v57[3];
    *(&result[45].var2.var0 + 1) = *v57;
    *(&result[45].var3.var0 + 1) = *v56;
    HIDWORD(result[48].var2.var3) = *&v55[3];
    *(&result[48].var2.var0 + 1) = *v55;
    HIDWORD(result[48].var3.var3) = *&v54[3];
    *(&result[48].var3.var0 + 1) = *v54;
    HIDWORD(result[49].var2.var3) = *&v53[3];
    *(&result[49].var2.var0 + 1) = *v53;
    HIDWORD(result[49].var3.var3) = *&v52[3];
    *(&result[49].var3.var0 + 1) = *v52;
    HIDWORD(result[50].var2.var3) = *&v51[3];
    *(&result[50].var2.var0 + 1) = *v51;
    HIDWORD(result[50].var3.var3) = *&v50[3];
    *(&result[50].var3.var0 + 1) = *v50;
    HIDWORD(result[51].var2.var3) = *&v49[3];
    *(&result[51].var2.var0 + 1) = *v49;
    HIDWORD(result[51].var3.var3) = *&v48[3];
    *(&result[51].var3.var0 + 1) = *v48;
    HIDWORD(result[52].var2.var3) = *&v47[3];
    *(&result[52].var2.var0 + 1) = *v47;
    HIDWORD(result[52].var3.var3) = *&v46[3];
    *(&result[52].var3.var0 + 1) = *v46;
    HIDWORD(result[53].var2.var3) = *&v45[3];
    *(&result[53].var2.var0 + 1) = *v45;
    HIDWORD(result[53].var3.var3) = *&v44[3];
    *(&result[53].var3.var0 + 1) = *v44;
    HIDWORD(result[54].var2.var3) = *&v43[3];
    *(&result[54].var2.var0 + 1) = *v43;
    HIDWORD(result[54].var3.var3) = *&v42[3];
    *(&result[54].var3.var0 + 1) = *v42;
    HIDWORD(result[56].var2.var3) = *&v41[3];
    *(&result[56].var2.var0 + 1) = *v41;
    HIDWORD(result[56].var3.var3) = *&v40[3];
    *(&result[56].var3.var0 + 1) = *v40;
    *(&result[60].var2.var0 + 1) = *v39;
    *(&result[60].var3.var0 + 1) = *v38;
    HIDWORD(result[61].var2.var3) = *&v37[3];
    *(&result[61].var2.var0 + 1) = *v37;
    HIDWORD(result[61].var3.var3) = *&v36[3];
    *(&result[61].var3.var0 + 1) = *v36;
    HIDWORD(result[62].var2.var3) = *&v35[3];
    *(&result[62].var2.var0 + 1) = *v35;
    *(&result[62].var3.var0 + 1) = *v34;
    *(&result[2].var2.var0 + 1) = *v91;
    HIDWORD(result[2].var2.var3) = *&v91[3];
    *(&result[2].var3.var0 + 1) = *v90;
    HIDWORD(result[2].var3.var3) = *&v90[3];
    result[3].var2.var1 = 50;
    HIDWORD(result[4].var2.var3) = *&v89[3];
    *(&result[4].var2.var0 + 1) = *v89;
    HIDWORD(result[4].var3.var3) = *&v88[3];
    *(&result[4].var3.var0 + 1) = *v88;
    result[6].var5 = sel_initPropertyShouldSaveAndCompressTailspins_;
    result[7].var0 = @"HangTracerIncludeDiskInfo";
    result[7].var1 = &self->_shouldIncludeDiskInfo;
    result[8].var0 = @"HangTracerEnableDisplayData";
    result[8].var1 = &self->_shouldIncludeDisplayData;
    result[9].var0 = @"HangTracerIncludeNetworkState";
    result[9].var1 = &self->_shouldIncludeNetworkState;
    result[10].var0 = @"HangTracerThirdPartyRunloopLogsEnabled";
    result[10].var1 = &self->_thirdPartyRunLoopHangLogsEnabled;
    result[11].var0 = @"HangTracerSamplingPercentForMicroHangs";
    result[11].var1 = &self->_samplingPercentForMicroHangs;
    result[12].var0 = @"HangTracerPercentFullSpinReports";
    result[12].var1 = &self->_runloopHangPercentHeavyLogs;
    result[13].var0 = @"HangTracerDailyMicroHangLogLimit";
    result[13].var1 = &self->_runLoopMicroHangDailyLogLimit;
    result[14].var0 = @"HangTracerDailyLogLimit";
    result[14].var1 = &self->_runLoopHangDailyLogLimit;
    result[15].var0 = @"HangTracerPerPeriodLogLimit";
    result[15].var1 = &self->_runLoopHangPerPeriodLogLimit;
    result[16].var0 = @"HangTracerDailyLongLogLimit";
    result[16].var1 = &self->_runLoopLongHangDailyLogLimit;
    result[17].var0 = @"HangTracerDailyThirdPartyLogLimit";
    result[17].var1 = &self->_runloopHangThirdPartyDailyLogLimit;
    result[18].var0 = @"HangTracerFenceHangLogLimit";
    result[18].var1 = &self->_fenceHangDailyLogLimit;
    result[19].var0 = @"HangTracerHangTimeoutDuration";
    result[19].var1 = &self->_runloopHangTimeoutDurationMSec;
    v9 = vdupq_n_s64(0x2328uLL);
    result[20].var0 = @"HangTracerDuration";
    result[20].var1 = &self->_runloopHangDurationThresholdMSec;
    result[21].var0 = @"HangTracerLongHangDurationThreshold";
    result[21].var1 = &self->_runloopLongHangDurationThresholdMSec;
    v10 = vdupq_n_s64(0x7D0uLL);
    result[22].var0 = @"HangTracerThirdPartyHangThreshold";
    result[22].var1 = &self->_runloopHangThirdPartyDurationThresholdMSec;
    result[23].var0 = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
    result[23].var1 = &self->_springBoardHangIORegGPUDumpTimeoutMSec;
    result[24].var0 = @"HangTracerFenceTrackingEnabled";
    result[24].var1 = &self->_fenceTrackingEnabled;
    HIDWORD(result[24].var2.var3) = *&v77[3];
    HIDWORD(result[24].var3.var3) = *&v76[3];
    result[25].var0 = @"HangTracerSlowActPerAppMax";
    result[25].var1 = &self->_slowAppActivationPerAppMaxLogLimit;
    result[26].var0 = @"HangTracerSlowActDailyLogLimit";
    result[26].var1 = &self->_slowAppActivationDailyLogLimit;
    result[27].var0 = @"HangTracerSlowActTailspinsEnabled";
    result[27].var1 = &self->_slowAppActivationTailspinEnabled;
    HIDWORD(result[27].var2.var3) = *&v75[3];
    HIDWORD(result[27].var3.var3) = *&v74[3];
    result[28].var0 = @"HangTracerSlowActLaunchTailspinThreshold";
    result[28].var1 = &self->_slowAppActivationThresholdMSec;
    v11 = vdupq_n_s64(0x1388uLL);
    result[29].var0 = @"HangTracerEnableSignpostMonitoring";
    result[29].var1 = &self->_signpostMonitoringEnabled;
    result[30].var0 = @"HangTracerSignpostMonitoringDailyLogLimit";
    result[30].var1 = &self->_signpostMonitoringDailyLogLimit;
    result[31].var0 = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
    result[31].var1 = &self->_signpostMonitoringPerPeriodLogLimit;
    result[32].var0 = @"HangTracerEnableAppLaunchMonitoring";
    result[32].var1 = &self->_appLaunchMonitoringEnabled;
    HIDWORD(result[32].var2.var3) = *&v71[3];
    HIDWORD(result[32].var3.var3) = *&v70[3];
    result[33].var0 = @"HangTracerEnableWorkflowResponsiveness";
    result[33].var1 = &self->_workflowResponsivenessEnabled;
    result[34].var0 = @"HangTracerWorkflowResponsivenessDailyLogLimit";
    result[34].var1 = &self->_workflowResponsivenessDailyLogLimit;
    result[35].var0 = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
    result[35].var1 = &self->_workflowResponsivenessPerPeriodLogLimit;
    result[15].var2.var1 = 4;
    result[15].var3.var1 = 4;
    result[31].var2.var1 = 4;
    result[31].var3.var1 = 4;
    result[35].var2.var1 = 4;
    result[35].var3.var1 = 4;
    result[36].var0 = @"EPLEnabledProfile";
    result[36].var1 = &self->_eplEnabledProfile;
    HIDWORD(result[36].var2.var3) = *&v67[3];
    HIDWORD(result[36].var3.var3) = *&v66[3];
    result[37].var0 = @"EPLEnabled";
    result[37].var1 = &self->_eplEnabled;
    result[38].var0 = @"EPLTimeoutTimestampSec";
    result[38].var1 = &self->_eplTimeoutTimestampSec;
    result[39].var0 = @"HangTracerReportPeriod";
    result[39].var1 = &self->_reportPeriodMATU;
    result[39].var5 = sel_initPropertyReportPeriod_;
    result[40].var0 = @"HangTracerInternalSettingCreated";
    result[40].var1 = &self->_hasInternalSettings;
    result[40].var5 = sel_initPropertyHaveInternalSettings_;
    result[41].var0 = @"HangTracerHUDThresholdMSec";
    result[41].var1 = &self->_hudThresholdMSec;
    result[41].var2.var1 = 500;
    result[41].var3.var1 = 500;
    result[42].var0 = @"HangTracerForceQuitDetectionThresholdMSec";
    result[42].var1 = &self->_forceQuitDetectionThresholdMSec;
    result[42].var2.var1 = 3000;
    result[42].var3.var1 = 3000;
    result[43].var0 = @"HangTracerShouldEmitTelemetry";
    result[43].var1 = &self->_shouldEmitTelemetry;
    HIDWORD(result[43].var2.var3) = *&v61[3];
    HIDWORD(result[43].var3.var3) = *&v60[3];
    result[44].var0 = @"HangTracerThirdPartyDevHangHUDEnabled";
    result[44].var1 = &self->_thirdPartyDevHangHUDEnabled;
    result[45].var0 = @"HangTracerThirdPartyIncludeNonDevelopmentApps";
    result[45].var1 = &self->_thirdPartyIncludeNonDevelopmentApps;
    HIDWORD(result[45].var3.var3) = *&v56[3];
    result[46].var0 = @"HangTracerHangWaitTimeoutDuration";
    result[46].var1 = &self->_hangWaitTimeoutDurationMSec;
    result[47].var0 = @"HangTracerConsecutiveHangWaitTimeoutDuration";
    result[47].var1 = &self->_consecutiveHangWaitTimeoutDurationMSec;
    result[19].var5 = sel_initUnsignedLongProperty_;
    result[20].var5 = sel_initUnsignedLongProperty_;
    result[21].var5 = sel_initUnsignedLongProperty_;
    result[22].var5 = sel_initUnsignedLongProperty_;
    result[23].var5 = sel_initUnsignedLongProperty_;
    result[28].var5 = sel_initUnsignedLongProperty_;
    result[46].var5 = sel_initUnsignedLongProperty_;
    result[47].var5 = sel_initUnsignedLongProperty_;
    result[48].var0 = @"enableLoggingForPoster";
    result[48].var1 = &self->_enableLoggingForPoster;
    result[49].var0 = @"enableLoggingForWidgetRenderer";
    result[49].var1 = &self->_enableLoggingForWidgetRenderer;
    result[50].var0 = @"PDSEPrefHangTracerKillSwitch";
    result[50].var1 = &self->_pdseHangTracerKillSwitch;
    result[51].var0 = @"PDSEPrefHTRateOnlyKillSwitch";
    result[51].var1 = &self->_pdseHTRateOnlyKillSwitch;
    result[52].var0 = @"PDSEPrefHTThirdPartyKillSwitch";
    result[52].var1 = &self->_pdseHTThirdPartyKillSwitch;
    result[53].var0 = @"PDSEPrefAppLaunchKillSwitch";
    result[53].var1 = &self->_pdseAppLaunchKillSwitch;
    result[54].var0 = @"PDSEPrefWBClientHangKillSwitch";
    result[54].var1 = &self->_pdseWBClientHangKillSwitch;
    result[55].var0 = @"PDSEPrefWBClientHangPeriodDays";
    result[55].var1 = &self->_pdseWBClientHangPeriodDays;
    result[56].var0 = @"HangTracerShouldUploadToDiagPipe";
    result[56].var1 = &self->_shouldUploadToDiagPipe;
    result[57].var0 = @"tailspinReportingThresholdSec";
    result[57].var1 = &self->_tailspinReportingThresholdSec;
    result[58].var0 = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
    result[58].var1 = &self->_persistentFGEmissionThresholdSec;
    result[59].var0 = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
    result[59].var1 = &self->_minFGEmissionThresholdSec;
    result[5].var4 = 0;
    result[6].var0 = 0;
    result[6].var4 = 0;
    __asm { FMOV            V18.2D, #2.0 }

    *&result[11].var2.var0 = _Q18;
    *&result[12].var2.var0 = xmmword_1C829FAC0;
    result[60].var0 = @"ShouldCollectCPURoleInfo";
    *&result[20].var2.var0 = vdupq_n_s64(0x1F4uLL);
    *&result[22].var2.var0 = vdupq_n_s64(0x3E8uLL);
    *&result[19].var2.var0 = v9;
    *&result[23].var2.var0 = v9;
    result[38].var2 = v6;
    result[38].var3 = v8;
    *&result[39].var2.var0 = vdupq_n_s64(0x40AC200000000000uLL);
    *&result[47].var2.var0 = vdupq_n_s64(0x15EuLL);
    result[60].var1 = &self->_shouldCollectCPURoleInfo;
    HIDWORD(result[60].var2.var3) = *&v39[3];
    HIDWORD(result[60].var3.var3) = *&v38[3];
    result->var2.var0 = 1;
    result->var3.var0 = 0;
    result->var4 = 0;
    result->var5 = sel_initBoolProperty_;
    result[1].var2.var0 = 0;
    result[1].var3.var0 = 0;
    result[1].var4 = 0;
    result[1].var5 = sel_initBoolProperty_;
    result[2].var2.var0 = 0;
    result[2].var3.var0 = 0;
    result[2].var4 = 0;
    result[2].var5 = sel_initBoolProperty_;
    result[61].var0 = @"PDSEPrefSentryKillSwitch";
    result[3].var3.var1 = 20;
    result[3].var4 = 0;
    result[3].var5 = sel_initUnsignedIntProperty_;
    result[4].var2.var0 = 0;
    result[4].var3.var0 = 0;
    result[4].var4 = 0;
    result[4].var5 = sel_initBoolProperty_;
    result[6].var2.var0 = 0;
    result[6].var3.var0 = 0;
    result[7].var2.var0 = 0;
    result[7].var3.var0 = 0;
    result[7].var4 = 0;
    result[7].var5 = sel_initBoolProperty_;
    result[8].var2.var0 = 1;
    result[8].var3.var0 = 1;
    result[8].var4 = 0;
    result[8].var5 = sel_initBoolProperty_;
    result[9].var2.var0 = 0;
    result[9].var3.var0 = 0;
    result[9].var4 = 0;
    result[9].var5 = sel_initBoolProperty_;
    result[10].var2.var0 = 1;
    result[10].var3.var0 = 1;
    result[10].var4 = 0;
    result[10].var5 = sel_initBoolProperty_;
    result[11].var4 = 0;
    result[11].var5 = sel_initDoubleProperty_;
    result[12].var4 = 0;
    result[12].var5 = sel_initDoubleProperty_;
    result[61].var1 = &self->_pdseSentryKillSwitch;
    result[13].var2.var1 = 10;
    result[13].var3.var1 = 10;
    result[13].var4 = 0;
    result[13].var5 = sel_initIntProperty_;
    result[47].var4 = 0;
    result[62].var0 = @"PDSEPrefWorkflowResponsivenessKillSwitch";
    result[14].var2.var1 = 25;
    result[14].var3.var1 = 25;
    result[14].var4 = 0;
    *&result[46].var2.var0 = v11;
    result[46].var4 = 0;
    result[14].var5 = sel_initIntProperty_;
    result[15].var4 = 0;
    result[15].var5 = sel_initIntProperty_;
    result[45].var3.var0 = 0;
    result[45].var4 = 0;
    result[45].var5 = sel_initBoolProperty_;
    result[16].var2.var1 = 25;
    result[16].var3.var1 = 25;
    result[16].var4 = 0;
    result[44].var4 = 0;
    result[44].var5 = sel_initBoolProperty_;
    result[45].var2.var0 = 0;
    result[16].var5 = sel_initIntProperty_;
    result[17].var2.var1 = 10;
    result[17].var3.var1 = 10;
    result[43].var5 = sel_initBoolProperty_;
    result[44].var2.var0 = 0;
    result[44].var3.var0 = 0;
    result[17].var4 = 0;
    result[17].var5 = sel_initIntProperty_;
    result[18].var2.var1 = 25;
    result[43].var2.var0 = 1;
    result[43].var3.var0 = 1;
    result[43].var4 = 0;
    result[18].var3.var1 = 25;
    result[18].var4 = 0;
    result[18].var5 = sel_initIntProperty_;
    result[19].var4 = 1;
    result[42].var4 = 1;
    result[42].var5 = sel_initUnsignedIntProperty_;
    result[20].var4 = 1;
    *&result[21].var2.var0 = v10;
    result[21].var4 = 1;
    result[22].var4 = 1;
    result[41].var4 = 1;
    result[41].var5 = sel_initUnsignedIntProperty_;
    result[23].var4 = 0;
    result[24].var2.var0 = 1;
    result[24].var3.var0 = 1;
    result[24].var4 = 0;
    result[40].var3.var0 = 0;
    result[40].var4 = 0;
    result[24].var5 = sel_initBoolProperty_;
    result[25].var2.var1 = 25;
    result[25].var3.var1 = 25;
    result[25].var4 = 0;
    result[39].var4 = 2;
    result[40].var2.var0 = 0;
    result[25].var5 = sel_initIntProperty_;
    result[26].var2.var1 = 25;
    result[26].var3.var1 = 25;
    result[26].var4 = 0;
    result[38].var4 = 0;
    result[38].var5 = sel_initDoubleProperty_;
    result[26].var5 = sel_initIntProperty_;
    result[27].var2.var0 = 0;
    result[27].var3.var0 = 0;
    result[27].var4 = 0;
    result[37].var4 = 0;
    result[37].var5 = sel_initBoolProperty_;
    result[27].var5 = sel_initBoolProperty_;
    *&result[28].var2.var0 = v11;
    result[28].var4 = 1;
    result[36].var5 = sel_initBoolProperty_;
    result[37].var2.var0 = 0;
    result[37].var3.var0 = 0;
    result[29].var2.var0 = 1;
    result[29].var3.var0 = 0;
    result[29].var4 = 0;
    result[36].var2.var0 = 0;
    result[36].var3.var0 = 0;
    result[36].var4 = 0;
    result[29].var5 = sel_initBoolProperty_;
    result[30].var2.var1 = 25;
    result[30].var3.var1 = 25;
    result[30].var4 = 0;
    result[35].var4 = 0;
    result[35].var5 = sel_initIntProperty_;
    result[30].var5 = sel_initIntProperty_;
    result[31].var4 = 0;
    result[34].var2.var1 = 25;
    result[34].var3.var1 = 25;
    result[34].var4 = 0;
    result[34].var5 = sel_initIntProperty_;
    result[31].var5 = sel_initIntProperty_;
    result[32].var2.var0 = 1;
    result[32].var3.var0 = 0;
    result[33].var3.var0 = 0;
    result[33].var4 = 0;
    result[33].var5 = sel_initBoolProperty_;
    result[32].var4 = 0;
    result[32].var5 = sel_initBoolProperty_;
    result[33].var2.var0 = 1;
    result[48].var2.var0 = 0;
    result[48].var3.var0 = 0;
    result[48].var4 = 0;
    result[48].var5 = sel_initBoolProperty_;
    result[49].var2.var0 = 0;
    result[49].var3.var0 = 0;
    result[49].var4 = 0;
    result[49].var5 = sel_initBoolProperty_;
    result[50].var2.var0 = 0;
    result[50].var3.var0 = 0;
    result[50].var4 = 0;
    result[50].var5 = sel_initBoolProperty_;
    result[51].var2.var0 = 0;
    result[51].var3.var0 = 0;
    result[51].var4 = 0;
    result[51].var5 = sel_initBoolProperty_;
    result[52].var2.var0 = 0;
    result[52].var3.var0 = 0;
    result[52].var4 = 0;
    result[52].var5 = sel_initBoolProperty_;
    result[53].var2.var0 = 0;
    result[53].var3.var0 = 0;
    result[53].var4 = 0;
    result[53].var5 = sel_initBoolProperty_;
    result[54].var2.var0 = 1;
    result[54].var3.var0 = 1;
    result[54].var4 = 0;
    result[54].var5 = sel_initBoolProperty_;
    result[62].var1 = &self->_pdseWorkflowResponsivenessKillSwitch;
    HIDWORD(result[62].var3.var3) = *&v34[3];
    result[55].var2.var1 = 0x7FFFFFFF;
    result[55].var3.var1 = 0x7FFFFFFF;
    result[55].var4 = 0;
    result[55].var5 = sel_initIntProperty_;
    result[56].var2.var0 = 1;
    result[56].var3.var0 = 1;
    result[56].var4 = 0;
    result[56].var5 = sel_initBoolProperty_;
    *&result[57].var2.var0 = vdupq_n_s64(0x40BC200000000000uLL);
    result[57].var4 = 0;
    result[57].var5 = sel_initDoubleProperty_;
    *&result[58].var2.var0 = vdupq_n_s64(0x408C200000000000uLL);
    result[58].var4 = 0;
    result[58].var5 = sel_initDoubleProperty_;
    *&result[59].var2.var0 = vdupq_n_s64(0x404E000000000000uLL);
    result[59].var4 = 0;
    result[59].var5 = sel_initDoubleProperty_;
    result[60].var2.var0 = 1;
    result[60].var3.var0 = 1;
    result[60].var4 = 0;
    result[60].var5 = sel_initBoolProperty_;
    result[61].var2.var0 = 0;
    result[61].var3.var0 = 1;
    result[61].var4 = 0;
    result[61].var5 = sel_initBoolProperty_;
    result[62].var2.var0 = 0;
    result[63].var0 = @"PDSEPrefCATailspinKillSwitch";
    result[63].var1 = &self->_pdseCATailspinKillSwitch;
    HIDWORD(result[63].var2.var3) = *&v33[3];
    *(&result[63].var2.var0 + 1) = *v33;
    HIDWORD(result[63].var3.var3) = *&v32[3];
    result[62].var3.var0 = 1;
    result[62].var4 = 0;
    result[62].var5 = sel_initBoolProperty_;
    result[63].var2.var0 = 0;
    result[63].var3.var0 = 1;
    *(&result[63].var3.var0 + 1) = *v32;
    result[63].var4 = 0;
    result[63].var5 = sel_initBoolProperty_;
    result[64].var0 = @"HTSEEnablementPeriodDays";
    result[64].var1 = &self->_pdseHTPeriodDays;
    result[64].var2.var1 = 200;
    result[64].var3.var1 = 1000;
    result[64].var4 = 0;
    result[64].var5 = sel_initIntProperty_;
    result[65].var0 = @"PDSEPrefHTRateOnlyPeriodDays";
    result[65].var1 = &self->_pdseHTRateOnlyPeriodDays;
    result[65].var2.var1 = 200;
    result[65].var3.var1 = 25;
    result[65].var4 = 0;
    result[65].var5 = sel_initIntProperty_;
    result[66].var0 = @"PDSEPrefHTThirdPartyPeriodDays";
    result[66].var1 = &self->_pdseHTThirdPartyPeriodDays;
    result[66].var2.var1 = 200;
    result[66].var3.var1 = 200;
    result[66].var4 = 0;
    result[66].var5 = sel_initIntProperty_;
    result[67].var0 = @"PDSEPrefHTThirdPartyNoLogUploadPeriodDays";
    result[67].var1 = &self->_pdseHTThirdPartyNoLogUploadPeriodDays;
    result[67].var2.var1 = 200;
    result[67].var3.var1 = 200;
    result[67].var4 = 0;
    result[67].var5 = sel_initIntProperty_;
    result[68].var0 = @"PDSEPrefCATailspinPeriodDays";
    result[68].var1 = &self->_pdseCATailspinPeriodDays;
    result[68].var2.var1 = 100;
    result[68].var3.var1 = 0x7FFFFFFF;
    result[68].var4 = 0;
    result[68].var5 = sel_initIntProperty_;
    result[69].var0 = @"PDSEPrefAppLaunchPeriodDays";
    result[69].var1 = &self->_pdseAppLaunchPeriodDays;
    result[69].var2.var1 = 200;
    result[69].var3.var1 = 400;
    result[69].var4 = 0;
    result[69].var5 = sel_initIntProperty_;
    result[70].var0 = @"PDSEPrefSentryPeriodDays";
    result[70].var1 = &self->_pdseSentryPeriodDays;
    result[70].var2.var1 = 10;
    result[70].var3.var1 = 0x7FFFFFFF;
    result[70].var4 = 0;
    result[70].var5 = sel_initIntProperty_;
    result[71].var2.var1 = 20;
    result[71].var3.var1 = 1000;
    result[71].var4 = 0;
    result[71].var5 = sel_initIntProperty_;
    result[72].var2.var0 = 1;
    *(&result[72].var2.var0 + 1) = *v31;
    HIDWORD(result[72].var2.var3) = *&v31[3];
    result[72].var3.var0 = 0;
    *(&result[72].var3.var0 + 1) = *v30;
    HIDWORD(result[72].var3.var3) = *&v30[3];
    result[72].var4 = 0;
    result[72].var5 = sel_initBoolProperty_;
    result[73].var2.var0 = 0;
    HIDWORD(result[73].var2.var3) = *&v29[3];
    *(&result[73].var2.var0 + 1) = *v29;
    result[73].var3.var0 = 1;
    HIDWORD(result[73].var3.var3) = *&v28[3];
    *(&result[73].var3.var0 + 1) = *v28;
    result[73].var4 = 0;
    result[73].var5 = sel_initBoolProperty_;
    result[74].var2.var0 = 1;
    HIDWORD(result[74].var2.var3) = *&v27[3];
    *(&result[74].var2.var0 + 1) = *v27;
    result[74].var3.var0 = 1;
    *(&result[74].var3.var0 + 1) = *v26;
    HIDWORD(result[74].var3.var3) = *&v26[3];
    result[74].var4 = 0;
    result[74].var5 = sel_initBoolProperty_;
    result[75].var4 = 0;
    *&result[75].var2.var0 = 0u;
    result[75].var5 = sel_initDoubleProperty_;
    result[76].var2.var1 = 14;
    result[76].var3.var1 = 14;
    result[76].var4 = 0;
    result[76].var5 = sel_initUnsignedIntProperty_;
    result[77].var2.var1 = 2;
    result[77].var3.var1 = 2;
    result[77].var4 = 0;
    result[77].var5 = sel_initUnsignedIntProperty_;
    *&result[78].var2.var0 = v10;
    result[78].var4 = 0;
    result[78].var5 = sel_initUnsignedIntProperty_;
    result[79].var2.var1 = 8;
    result[79].var3.var1 = 8;
    result[79].var4 = 0;
    result[79].var5 = sel_initUnsignedIntProperty_;
    result[80].var2.var1 = 1;
    result[80].var3.var1 = 1;
    result[80].var4 = 1;
    result[80].var5 = sel_initUnsignedIntProperty_;
    result[81].var2.var0 = 0;
    *(&result[81].var2.var0 + 1) = *v25;
    HIDWORD(result[81].var2.var3) = *&v25[3];
    result[81].var3.var0 = 0;
    *(&result[81].var3.var0 + 1) = *v24;
    HIDWORD(result[81].var3.var3) = *&v24[3];
    result[81].var4 = 0;
    result[81].var5 = sel_initBoolProperty_;
    result[82].var2.var0 = 0;
    HIDWORD(result[82].var2.var3) = *&v23[3];
    *(&result[82].var2.var0 + 1) = *v23;
    result[82].var3.var0 = 0;
    HIDWORD(result[82].var3.var3) = *&v22[3];
    *(&result[82].var3.var0 + 1) = *v22;
    result[82].var4 = 0;
    result[82].var5 = sel_initBoolProperty_;
    result[83].var2.var1 = 0;
    result[83].var3.var1 = 0;
    result[83].var4 = 0;
    result[83].var5 = sel_initIntProperty_;
    result[84].var2.var0 = 0;
    HIDWORD(result[84].var2.var3) = *&v21[3];
    *(&result[84].var2.var0 + 1) = *v21;
    result[84].var3.var0 = 0;
    HIDWORD(result[84].var3.var3) = *&v20[3];
    *(&result[84].var3.var0 + 1) = *v20;
    result[84].var4 = 0;
    result[84].var5 = sel_initBoolProperty_;
    result[85].var2.var0 = 0;
    *(&result[85].var2.var0 + 1) = 0;
    HIDWORD(result[85].var2.var3) = 0;
    result[85].var3.var0 = 0;
    *(&result[85].var3.var0 + 1) = v92;
    result[85].var5 = 0;
    *&result[85].var0 = 0u;
    self->_prefInitList = result;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)prefNamed:(__CFString *)named domain:(__CFString *)domain profile:(id)profile matchingSelector:(SEL)selector contextPrefixOut:(id *)out
{
  v41 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  namedCopy = named;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(HTPrefs *)self prefContextPrefixPriorityOrder];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    hostName = *MEMORY[0x1E695E898];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [(__CFString *)v14 isEqualToString:&stru_1F47F5AE8];
        if (v15)
        {
          namedCopy = namedCopy;
        }

        else
        {
          namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v14, namedCopy];
        }

        v17 = namedCopy;
        if ([(__CFString *)v14 isEqualToString:@"HTProfile"])
        {
          v18 = [profileCopy objectForKeyedSubscript:v17];
        }

        else
        {
          v18 = CFPreferencesCopyValue(v17, domain, @"mobile", hostName);
        }

        v19 = v18;
        if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v20 = shared_ht_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v24 = @"<base context>";
            *buf = 138412802;
            if (!v15)
            {
              v24 = v14;
            }

            v35 = v24;
            v36 = 2112;
            v37 = namedCopy;
            v38 = 2112;
            v39 = v19;
            _os_log_debug_impl(&dword_1C8286000, v20, OS_LOG_TYPE_DEBUG, "HTPrefs: Overriden by %@: %@ = %@", buf, 0x20u);
          }

          if (out)
          {
            v21 = v14;
            *out = v14;
          }

          goto LABEL_25;
        }

        if (out)
        {
          *out = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  obj = shared_ht_log_handle();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
  {
    [HTPrefs prefNamed:domain:profile:matchingSelector:contextPrefixOut:];
  }

  v19 = 0;
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)BOOLProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v4 = 16;
  if (!self->_isInternal)
  {
    v4 = 24;
  }

  bOOLValue = *(&property->var0 + v4);
  v6 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_BOOLValue contextPrefixOut:out];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue & 1;
}

- (int)intProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&property->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_intValue contextPrefixOut:out];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  intValue = [v7 intValue];
  v9 = intValue;
  if ((property->var4 & 1) != 0 && !intValue)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = property->var0;
      var4 = property->var4;
      v15 = 138412802;
      v16 = var0;
      v17 = 2048;
      v18 = var4;
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %d", &v15, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unsigned)unsignedIntProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&property->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_unsignedIntValue contextPrefixOut:out];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  unsignedIntValue = [v7 unsignedIntValue];
  v9 = unsignedIntValue;
  if ((property->var4 & 1) != 0 && !unsignedIntValue)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = property->var0;
      var4 = property->var4;
      v15 = 138412802;
      v16 = var0;
      v17 = 2048;
      v18 = var4;
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %u", &v15, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)unsignedLongProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&property->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_unsignedLongValue contextPrefixOut:out];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  unsignedLongValue = [v7 unsignedLongValue];
  v9 = unsignedLongValue;
  if ((property->var4 & 1) != 0 && !unsignedLongValue)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = property->var0;
      var4 = property->var4;
      v15 = 138412802;
      v16 = var0;
      v17 = 2048;
      v18 = var4;
      v19 = 2048;
      v20 = 0;
      _os_log_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %lu", &v15, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&property->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_unsignedLongLongValue contextPrefixOut:out];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  unsignedLongLongValue = [v7 unsignedLongLongValue];
  v9 = unsignedLongLongValue;
  if ((property->var4 & 1) != 0 && !unsignedLongLongValue)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = property->var0;
      var4 = property->var4;
      v15 = 138412802;
      v16 = var0;
      v17 = 2048;
      v18 = var4;
      v19 = 2048;
      v20 = 0;
      _os_log_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %llu", &v15, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (double)doubleProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&property->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_doubleValue contextPrefixOut:out];
  if (objc_opt_respondsToSelector())
  {
    [v7 doubleValue];
    v9 = v8;
    if ((property->var4 & 2) != 0 && v8 < v6)
    {
      v10 = shared_ht_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var0 = property->var0;
        var4 = property->var4;
        v15 = 138412802;
        v16 = var0;
        v17 = 2048;
        v18 = var4;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %f", &v15, 0x20u);
      }
    }

    else
    {
      v6 = v8;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)stringProperty:(HTPrefInit *)property contextPrefixOut:(id *)out
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = 24;
  if (self->_isInternal)
  {
    v7 = 16;
  }

  v8 = *(&property->var0 + v7);
  v9 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:sel_isEqualToString_ contextPrefixOut:out];
  v10 = v9;
  if (v9)
  {
    if ((property->var4 & 4) != 0 && ![v9 length])
    {
      v14 = shared_ht_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        var0 = property->var0;
        var4 = property->var4;
        v17 = 138412802;
        v18 = var0;
        v19 = 2048;
        v20 = var4;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1C8286000, v14, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %@", &v17, 0x20u);
      }
    }

    else
    {
      v11 = v10;

      v8 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)objectProperty:(HTPrefInit *)property matchingSelector:(SEL)selector contextPrefixOut:(id *)out
{
  v9 = 24;
  if (self->_isInternal)
  {
    v9 = 16;
  }

  v10 = *(&property->var0 + v9);
  v11 = [(HTPrefs *)self prefNamed:property->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:selector contextPrefixOut:out];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v10 = v13;
  }

  return v10;
}

- (void)initBoolProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [HTPrefs BOOLProperty:"BOOLProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v11, 0x18u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initIntProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [HTPrefs intProperty:"intProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %d -> %d", &v11, 0x18u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initUnsignedIntProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [HTPrefs unsignedIntProperty:"unsignedIntProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %u -> %u", &v11, 0x18u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initUnsignedLongProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %lu -> %lu", &v11, 0x20u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initUnsignedLongLongProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %llu -> %llu", &v11, 0x20u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initDoubleProperty:(HTPrefInit *)property
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  [HTPrefs doubleProperty:"doubleProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v11, 0x20u);
    }

    *property->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initNSStringProperty:(HTPrefInit *)property
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [(HTPrefs *)self stringProperty:property contextPrefixOut:0];
  if (([v6 isEqualToString:v5] & 1) == 0)
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v13 = 138412802;
      v14 = var0;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_debug_impl(&dword_1C8286000, v7, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v13, 0x20u);
    }

    v8 = [(HTPrefs *)self stringProperty:property contextPrefixOut:0];
    var1 = property->var1;
    v10 = *var1;
    *var1 = v8;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initNSObjectProperty:(HTPrefInit *)property
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *property->var1;
  v6 = [(HTPrefs *)self objectProperty:property matchingSelector:sel_isEqual_ contextPrefixOut:0];
  v7 = v6;
  if ((v5 == 0) == (v6 != 0) || (v5 ? (v8 = v6 == 0) : (v8 = 1), !v8 && ([v5 isEqual:v6] & 1) == 0))
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = property->var0;
      v15 = 138412802;
      v16 = var0;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_1C8286000, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v15, 0x20u);
    }

    v10 = [(HTPrefs *)self objectProperty:property matchingSelector:sel_isEqual_ contextPrefixOut:0];
    var1 = property->var1;
    v12 = *var1;
    *var1 = v10;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)enabled
{
  v21 = *MEMORY[0x1E69E9840];
  hangtracerDaemonEnabled = self->_hangtracerDaemonEnabled;
  v14 = 0;
  v6 = [(HTPrefs *)self BOOLProperty:enabled contextPrefixOut:&v14];
  v7 = v14;
  v8 = v14;
  v9 = self->_enablementPrefix;
  if (![(NSString *)v9 isEqualToString:v8])
  {
    objc_storeStrong(&self->_enablementPrefix, v7);
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HTPrefs *)v9 initPropertyHangtracerDaemonEnabled:?];
    }
  }

  if (hangtracerDaemonEnabled != v6)
  {
    self->_hangtracerDaemonEnabled = v6;
    v11 = shared_ht_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      var0 = enabled->var0;
      *buf = 138412802;
      v16 = var0;
      v17 = 1024;
      v18 = hangtracerDaemonEnabled;
      v19 = 1024;
      v20 = v6;
      _os_log_debug_impl(&dword_1C8286000, v11, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
    }

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyIsInternal:(HTPrefInit *)internal
{
  isInternalNoOverride = self->__isInternalNoOverride;
  v5 = MGGetBoolAnswer();
  if (isInternalNoOverride != v5)
  {
    v6 = v5;
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [HTPrefs initPropertyIsInternal:];
    }

    self->__isInternalNoOverride = v6;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v8 = !self->_customerModeEnabled && self->__isInternalNoOverride;
  v9 = v8;
  if (self->_isInternal != v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [HTPrefs initPropertyIsInternal:];
    }

    self->_isInternal = v9;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)tailspins
{
  shouldSaveTailspins = self->_shouldSaveTailspins;
  shouldCompressSavedTailspins = self->_shouldCompressSavedTailspins;
  tailspinSaveFormat = self->_tailspinSaveFormat;
  if (!tailspinSaveFormat)
  {
    v8 = 0;
    keepTailspinsLegacy = self->_keepTailspinsLegacy;
    goto LABEL_9;
  }

  isInternal = self->_isInternal;
  if ([(NSString *)tailspinSaveFormat isEqualToString:@"compressed"])
  {
    v8 = 1;
LABEL_7:
    keepTailspinsLegacy = 1;
    goto LABEL_9;
  }

  if ([(NSString *)self->_tailspinSaveFormat isEqualToString:@"uncompressed"])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = ![(NSString *)self->_tailspinSaveFormat isEqualToString:@"none"]&& isInternal;
  keepTailspinsLegacy = v8;
LABEL_9:
  v10 = self->_savedTailspinMaxMB != 0;
  v11 = v10 & v8;
  v12 = v10 && keepTailspinsLegacy;
  if (shouldSaveTailspins != (v10 && keepTailspinsLegacy))
  {
    v13 = shared_ht_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [HTPrefs initPropertyShouldSaveAndCompressTailspins:];
    }

    self->_shouldSaveTailspins = v12;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  if (shouldCompressSavedTailspins != v11)
  {
    v14 = shared_ht_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [HTPrefs initPropertyShouldSaveAndCompressTailspins:];
    }

    self->_shouldCompressSavedTailspins = v11;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyReportPeriod:(HTPrefInit *)period
{
  v17 = *MEMORY[0x1E69E9840];
  reportPeriodMATU = self->_reportPeriodMATU;
  [(HTPrefs *)self doubleProperty:period contextPrefixOut:0];
  v7 = v6 * 1000.0 / timebaseConversionFactor();
  if (v7 != reportPeriodMATU)
  {
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = period->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2048;
      v14 = reportPeriodMATU;
      v15 = 2048;
      v16 = v7;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v11, 0x20u);
    }

    self->_reportPeriodMATU = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyHaveInternalSettings:(HTPrefInit *)settings
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", *MEMORY[0x1E695E898]);
  hasInternalSettings = self->_hasInternalSettings;
  v7 = v5 != 0;
  if (hasInternalSettings != v7)
  {
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = settings->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 1024;
      v14 = hasInternalSettings;
      v15 = 1024;
      v16 = v5 != 0;
      _os_log_debug_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v11, 0x18u);
    }

    self->_hasInternalSettings = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)languages
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = self->_thirdPartyDevPreferredLanguages;
  v6 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    preferredLanguages = v6;
  }

  else
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  }

  v8 = preferredLanguages;
  if (![(NSArray *)v5 isEqualToArray:preferredLanguages])
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = languages->var0;
      v12 = 138412802;
      v13 = var0;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_debug_impl(&dword_1C8286000, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v12, 0x20u);
    }

    objc_storeStrong(&self->_thirdPartyDevPreferredLanguages, v8);
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  prefInitList = self->_prefInitList;
  if (prefInitList)
  {
    free(prefInitList);
  }

  v4.receiver = self;
  v4.super_class = HTPrefs;
  [(HTPrefs *)&v4 dealloc];
}

- (BOOL)shouldUpdateHangsHUD
{
  if ([(HTPrefs *)self hudEnabled]&& [(HTPrefs *)self isInternal])
  {
    return 1;
  }

  return [(HTPrefs *)self thirdPartyDevHangHUDEnabled];
}

- (void)__createInternalSettings
{
  if (![(HTPrefs *)self isInternal])
  {
    return;
  }

  v3 = *MEMORY[0x1E695E898];
  v4 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", *MEMORY[0x1E695E898]);
  v5 = v4;
  v6 = MEMORY[0x1E695E4D0];
  if (!v4 || ([v4 BOOLValue] & 1) == 0)
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C8286000, v7, OS_LOG_TYPE_INFO, "checkPreferences: Internal install, force enabled.", buf, 2u);
    }

    v8 = *v6;
    CFPreferencesSetValue(@"HangTracerEnabled", *v6, self->__htTaskingDomain, @"mobile", v3);
    CFPreferencesSetValue(@"HangTracerInternalSettingCreated", v8, self->__htTaskingDomain, @"mobile", v3);
  }

  v9 = CFPreferencesCopyValue(@"HangTracerInternalSettingsVersion", self->__htTaskingDomain, @"mobile", v3);
  v10 = v9;
  if (!v9)
  {
    CFPreferencesSetValue(@"HangTracerDuration", 0, self->__htTaskingDomain, @"mobile", v3);
    goto LABEL_11;
  }

  if ([v9 unsignedIntegerValue] != 3)
  {
LABEL_11:
    v11 = [@"HangTracerEnableTerminationsTrackedReasons" stringByAppendingString:@"."];
    v12 = [v11 stringByAppendingFormat:@"%llu", 2];
    v13 = CFPreferencesCopyValue(v12, self->__htTaskingDomain, @"mobile", v3);
    v14 = v13;
    if (v13)
    {
      unsignedLongLongValue = [v13 unsignedLongLongValue];
      CFPreferencesSetValue(v12, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue & 0xFFFFFFFFFFFBFFFFLL], self->__htTaskingDomain, @"mobile", v3);
    }

    CFPreferencesSetValue(@"HangTracerInternalSettingsVersion", &unk_1F47FA1D8, self->__htTaskingDomain, @"mobile", v3);
  }

  v16 = CFPreferencesCopyValue(@"HangTracerEnableTailspin", self->__htTaskingDomain, @"mobile", v3);
  if (!v16)
  {
    CFPreferencesSetValue(@"HangTracerEnableTailspin", *v6, self->__htTaskingDomain, @"mobile", v3);
  }
}

- (void)setupPrefsWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [HTPrefs setupPrefsWithQueue:];
  }

  v5 = queueCopy;
  [(HTPrefs *)self setupPrefsWithQueue:queueCopy profilePath:@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist" taskingDomainName:@"com.apple.da" hangtracerDomain:@"com.apple.hangtracer" setupInternalPrefs:0];
}

- (void)setupPrefsWithQueue:(id)queue profilePath:(id)path taskingDomainName:(__CFString *)name hangtracerDomain:(__CFString *)domain setupInternalPrefs:(BOOL)prefs
{
  prefsCopy = prefs;
  queueCopy = queue;
  pathCopy = path;
  v14 = shared_ht_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8286000, v14, OS_LOG_TYPE_INFO, "HTPrefs initialization", buf, 2u);
  }

  objc_storeStrong(&self->__profilePath, path);
  self->__htTaskingDomain = name;
  self->__htDomain = domain;
  *&self->_shouldAllowSentryEnablement = 0;
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  if (prefsCopy)
  {
    [(HTPrefs *)self __createInternalSettings];
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (!self->__prefsQueue)
  {
    v16 = dispatch_queue_create_with_target_V2("com.apple.hangtracer.preferences", v15, queueCopy);
    prefsQueue = self->__prefsQueue;
    self->__prefsQueue = v16;
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v44 = buf;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__HTPrefs_setupPrefsWithQueue_profilePath_taskingDomainName_hangtracerDomain_setupInternalPrefs___block_invoke;
  v21[3] = &unk_1E8302038;
  v21[5] = buf;
  v21[6] = &v39;
  v21[7] = &v35;
  v21[8] = &v31;
  v21[9] = &v27;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  v18 = MEMORY[0x1CCA72C40](v21);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__HTPrefs_setupPrefsWithQueue_profilePath_taskingDomainName_hangtracerDomain_setupInternalPrefs___block_invoke_105;
  v20[3] = &unk_1E8302060;
  v20[4] = &v23;
  v19 = MEMORY[0x1CCA72C40](v20);
  notify_register_dispatch(EPL_STATE_CHANGED_NOTIFICATION[0], v32 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_TASKING_CHANGED_NOTIFICATION[0], v44 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_TELEMETRY_CHANGED_NOTIFICATION[0], v40 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_PROFILE_LIST_CHANGED_NOTIFICATION[0], v36 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HTSE_SELF_ENABLE_STATE_CHANGED_NOTIFICATION[0], v28 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(TEST_RESET_LOG_LIMITS_NOTIFICATION[0], v24 + 6, self->__prefsQueue, v19);
  [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  [(HTPrefs *)self refreshHTPrefs];

  objc_destroyWeak(&v22);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

void __97__HTPrefs_setupPrefsWithQueue_profilePath_taskingDomainName_hangtracerDomain_setupInternalPrefs___block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&dword_1C8286000, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v11 = objc_loadWeakRetained((a1 + 80));
      if ([v11 hangtracerDaemonEnabled])
      {
        v12 = @"ON";
      }

      else
      {
        v12 = @"OFF";
      }

      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v13 = MEMORY[0x1E696AD98];
    v14 = objc_loadWeakRetained((a1 + 80));
    v15 = [v13 numberWithBool:{objc_msgSend(v14, "hangtracerDaemonEnabled", @"Enabled"}];
    v21 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = objc_loadWeakRetained((a1 + 80));
    [v17 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v18 userInfo:v16];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __97__HTPrefs_setupPrefsWithQueue_profilePath_taskingDomainName_hangtracerDomain_setupInternalPrefs___block_invoke_105(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C8286000, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }
  }
}

- (void)_removeAllPrefs
{
  v25[51] = *MEMORY[0x1E69E9840];
  v25[0] = @"HangTracerInternalSettingCreated";
  v25[1] = @"HangTracerInternalSettingsVersion";
  v25[2] = @"HangTracerReportPeriod";
  v25[3] = @"HangTracerEnableCustomerMode";
  v25[4] = @"HangTracerEnabled";
  v25[5] = @"HangTracerThirdPartyRunloopLogsEnabled";
  v25[6] = @"HangTracerEnableHUD";
  v25[7] = @"HangTracerEnableForceQuitDetection";
  v25[8] = @"HangTracerCollectOSSignposts";
  v25[9] = @"HangTracerCollectOSSignpostsDeferred";
  v25[10] = @"HangTracerEnableTailspin";
  v25[11] = @"HangTracerSavedTailspinsMaxMB";
  v25[12] = @"HangTracerKeepTailspins";
  v25[13] = @"HangTracerKeepTailspinsWithFormat";
  v25[14] = @"HangTracerPercentFullSpinReports";
  v25[15] = @"HangTracerDailyLogLimit";
  v25[16] = @"HangTracerPerPeriodLogLimit";
  v25[17] = @"HangTracerDailyLongLogLimit";
  v25[18] = @"HangTracerDailyThirdPartyLogLimit";
  v25[19] = @"HangTracerDuration";
  v25[20] = @"HangTracerLongHangDurationThreshold";
  v25[21] = @"HangTracerThirdPartyHangThreshold";
  v25[22] = @"HangTracerHangTimeoutDuration";
  v25[23] = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
  v25[24] = @"HangTracerIncludeDiskInfo";
  v25[25] = @"HangTracerEnableDisplayData";
  v25[26] = @"HangTracerIncludeNetworkState";
  v25[27] = @"HangTracerFenceTrackingEnabled";
  v25[28] = @"HangTracerSlowActTailspinsEnabled";
  v25[29] = @"HangTracerSlowActPerAppMax";
  v25[30] = @"HangTracerSlowActDailyLogLimit";
  v25[31] = @"HangTracerSlowActLaunchTailspinThreshold";
  v25[32] = @"HangTracerEnableSignpostMonitoring";
  v25[33] = @"HangTracerSignpostMonitoringDailyLogLimit";
  v25[34] = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
  v25[35] = @"HangTracerEnableAppLaunchMonitoring";
  v25[36] = @"HangTracerEnableWorkflowResponsiveness";
  v25[37] = @"HangTracerWorkflowResponsivenessDailyLogLimit";
  v25[38] = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
  v25[39] = @"ShouldCollectCPURoleInfo";
  v25[40] = @"HangTracerShouldEmitTelemetry";
  v25[41] = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
  v25[42] = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
  v25[43] = @"EPLEnabled";
  v25[44] = @"EPLTimeoutTimestampSec";
  v25[45] = @"HangTracerHUDThresholdMSec";
  v25[46] = @"HangTracerForceQuitDetectionThresholdMSec";
  v25[47] = @"AutomatedDeviceGroup";
  v25[48] = @"ExperimentGroup";
  v25[49] = @"HangTracerHangWaitTimeoutDuration";
  v25[50] = @"HangTracerConsecutiveHangWaitTimeoutDuration";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:51];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  v5 = *MEMORY[0x1E695E898];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        CFPreferencesSetValue(*(*(&v19 + 1) + 8 * v8++), 0, self->__htTaskingDomain, @"mobile", v5);
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [MEMORY[0x1E695E0F0] countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    v12 = MEMORY[0x1E695E0F0];
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v12);
        }

        CFPreferencesSetValue(*(*(&v15 + 1) + 8 * v13++), 0, self->__htDomain, @"mobile", v5);
      }

      while (v10 != v13);
      v10 = [v12 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  CFPreferencesSynchronize(self->__htTaskingDomain, @"mobile", v5);
  CFPreferencesSynchronize(self->__htDomain, @"mobile", v5);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)prefNamed:domain:profile:matchingSelector:contextPrefixOut:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyHangtracerDaemonEnabled:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyIsInternal:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyIsInternal:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyShouldSaveAndCompressTailspins:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initPropertyShouldSaveAndCompressTailspins:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
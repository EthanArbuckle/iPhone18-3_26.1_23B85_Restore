@interface ThreadNetworkManagerInstance
- (BOOL)alreadyOnTheSameNetwork:(id)a3;
- (BOOL)areTwoNetworksSame:(id)a3 nwname:(id)a4 creds_xpan:(id)a5 xpan:(id)a6;
- (BOOL)checkAndUpdateNetworkParamsFromMdnsScan:(id)a3 borderAgentID:(id)a4 leaderBorderAgentID:(id)a5 isNwFound:(BOOL *)a6 numAppleBRs:(int *)a7 numThirdPartyBRs:(int *)a8 isLeaderAppleDevice:(BOOL *)a9 numThreadNwsFound:(int *)a10 shouldRunPeriodicTdm:(BOOL *)a11;
- (BOOL)checkIfDuplicateWedAttachRequest:(const char *)a3;
- (BOOL)checkIfMdnsIsPublishedForBAID;
- (BOOL)checkIfNetworkIsFoundInMDNSScan:(id)a3 borderAgentID:(id)a4;
- (BOOL)clearThreadCredentials;
- (BOOL)generateThreadSessionEvent:(BOOL)a3;
- (BOOL)getBTAudioCallStatus;
- (BOOL)getDefaultChildNode;
- (BOOL)getFWUpdateStatus;
- (BOOL)getPairingStatus;
- (BOOL)getThreadSessionStatus;
- (BOOL)getWasChildStatus;
- (BOOL)isAudioNoThreadFeatureEnabled;
- (BOOL)isCurrentBTCoExLoadAvailable;
- (BOOL)isCurrentNetworkSameAsOneToStart:(id)a3;
- (BOOL)isGeoAvailable;
- (BOOL)isNetworkSame:(Ctr_attachToNetwork *)a3 nwname:(void *)a4 xpan:(void *)a5;
- (BOOL)isRegulatoryCertMode;
- (BOOL)isStateMachineWedEnabled;
- (BOOL)isThreadAlwaysOnFeatureEnabled;
- (BOOL)isThreadGeoEnabled;
- (BOOL)isWedSessionEnabled;
- (BOOL)updateMeshcopRelatedParams:(BOOL *)a3 numAppleBRs:(int *)a4 numThirdPartyBRs:(int *)a5 isLeaderAppleDevice:(BOOL *)a6 numThreadNwsFound:(int *)a7 shouldRunPeriodicTdm:(BOOL *)a8;
- (BOOL)updatePreferredNetworkForDatasetChange;
- (BOOL)validateDataSetTLVs:(id)a3 creds:(id *)a4;
- (Result)getNCPNetworkInfo:(Result *__return_ptr)retstr;
- (Result)getPskc:(Result *__return_ptr)retstr pskc_str:;
- (Result)saveThreadConfiguration:(Result *__return_ptr)retstr passPhrase:uuid:;
- (Result)saveThreadConfigurationAOD:(Result *__return_ptr)retstr passPhrase:;
- (Result)updateKeychainWithThreadActiveDataSet;
- (basic_string<char,)getNCPPropertyAsString:(std::allocator<char>> *__return_ptr)retstr;
- (basic_string<char,)getPersistedWedAddr;
- (basic_string<char,)getPersistedWedMleid;
- (const)validateExtendedMACAddress:(const char *)a3;
- (dict)threadNetworkManagerInstance_MsgHandler:()basic_string<char message:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (id)CAgetPrevValidDeviceRole;
- (id)dataFromHexString:(id)a3;
- (id)getCurrentBorderAgent;
- (id)getCurrentCredentialsDataSet;
- (id)getCurrentNetworkCredentials;
- (id)getCurrentNetworkCredentialsActiveDataSetRecord;
- (id)getCurrentNetworkNameAndXpanid;
- (id)getHardwareAddress;
- (id)getNCPPreferredNetworkInDict:(id)a3;
- (id)getNCPProperties;
- (id)getNCPPropertyInDict:(const char *)a3;
- (id)getNCPStatusInDict;
- (id)getPreferredNetwork;
- (id)getPreferredNetworkWithNoScan;
- (id)getRCPProperties;
- (id)init:(id)a3 statsQueue:(id)a4;
- (int)attachToNetwork:(dict)a3 output:(dict *)a4;
- (int)attachWithAllCreds:(const char *)a3 credentialsRecord_t:(id)a4 output:(dict *)a5;
- (int)checkPreferredAndJoin:(dict *)a3 isCalledFromTimer:(BOOL)a4;
- (int)deleteCredentialsForThisNetwork:(id)a3;
- (int)formNetworkWithAOD:(const char *)a3 record:(id)a4 output:(dict *)a5;
- (int)formNetworkWithCreds:(const char *)a3 credentialsRecord_t:(id)a4 output:(dict *)a5;
- (int)formNewNetwork:(dict)a3;
- (int)getMeCredentialsForThisNetwork:(id)a3 credentialsRecord_t:(id *)a4;
- (int)getMePassPhraseForThisNetwork:(id)a3 passPhrase:(id *)a4;
- (int)howToGetOnTheNetwork:(id)a3;
- (int)howToStartThreadNetwork:(const char *)a3 activeOperationalDataset:(const char *)a4 credentialsRecord_t:(id *)a5;
- (int)initializeKeyChainStore;
- (int)joinerAttach:(const char *)a3 output:(dict *)a4;
- (int)provideExtendedMACAddress:(const char *)a3 output:(dict *)a4;
- (int)retrieveActiveDataSetRecordForUniqueId:(const char *)a3 record:(id *)a4;
- (int)retrieveCredentialsForUniqueId:(const char *)a3 credentialsRecord_t:(id *)a4;
- (int)setChannel:(dict)a3;
- (int)setChannelUsingChannelManger:(dict)a3;
- (int)startFWUpdate:(const char *)a3 isWED:(BOOL)a4 output:(dict *)a5;
- (int)startPairing:(const char *)a3 isWED:(BOOL)a4 output:(dict *)a5;
- (int)startThreadNetworkWithAOD:(const char *)a3 output:(dict *)a4;
- (int)stopFWUpdate:(dict *)a3;
- (int)stopPairing:(dict *)a3;
- (int)threadLeave;
- (int)threadStart:(const char *)a3 activeOperationalDataset:(const char *)a4 output:(dict *)a5;
- (int)threadStop;
- (int)updateHomeThreadInfo:(id *)a3;
- (int)updatePrimaryResident:(const char *)a3 isPrimaryResident:(BOOL)a4 isPrimaryResidentThreadCapable:(BOOL)a5;
- (unint64_t)getCountOfAvailableNetworksForCommissioning;
- (unint64_t)getCountOfThreadBorderRoutersWithMdns:(id)a3;
- (void)CATriggerABCInfoMetric:()basic_string<char abcCaseSubType:()std:(std::allocator<char>> *)var0 :char_traits<char> abcString:;
- (void)CAgetCoexCounter;
- (void)CAgetPcapMetrics:(BOOL)a3;
- (void)CAincrementStartProcessCount:(BOOL)a3;
- (void)CAincrementStartProcessSuccessCount:(BOOL)a3;
- (void)CAincrementStopProcessCount:(BOOL)a3;
- (void)CAincrementStopProcessSuccessCount:(BOOL)a3;
- (void)CAnoteStartProcessReqTime:(BOOL)a3;
- (void)CAnoteStopProcessReqTimeSuccessOrFail:(BOOL)a3 isProcessPairing:(BOOL)a4;
- (void)CAresetCoexTaskPeriodMetrics;
- (void)UpdateOutputWithBackOffTimerValue:(const char *)a3 output:(dict *)a4;
- (void)addCommonDimensions:(id)a3;
- (void)appendValMapToDict:(id)a3 value:(any)a4;
- (void)calculateCoexTaskPeriod:(any)a3;
- (void)captureNCPStateInformation:(id *)a3;
- (void)checkAndResumeNW;
- (void)checkIfMdnsIsPublishedForBAID;
- (void)checkMeshcopMdns;
- (void)checkPreferredThreadNetworkTimerHandler;
- (void)clearProvideEmacTracker;
- (void)clearWedDevice;
- (void)coexCounterCollection:(BOOL)a3;
- (void)configureRCP2PeriodicEvents;
- (void)createDriverInterface:(id)a3;
- (void)deleteCurrentNetwork:(id)a3;
- (void)disconnectActiveWedConnection;
- (void)dumpAppAndRouteMetricsHistograms;
- (void)eraseKeyFromProvideEmacTracker:()basic_string<char;
- (void)fillupThreadCredentialsToSelfHealThreadNetwork:(id)a3 store:(id)a4;
- (void)generateAPLifeInfoMetrics;
- (void)generateStateInfoEventMetrics;
- (void)getAllMacMetrics;
- (void)getBTWifiLoadInfoEvent:(any)a3;
- (void)getCurrentBTWifiLoad:(id)a3;
- (void)getCurrentBorderAgent;
- (void)getCurrentCredentialsDataSet;
- (void)getCurrentNetworkCredentials;
- (void)getCurrentNetworkNameAndXpanid;
- (void)getCurrentWEDInfoMetrics;
- (void)getDaemonAndVendorVersions;
- (void)getEngagementMetrics;
- (void)getIPMLEMetrics:(id)a3;
- (void)getMatterSubscriptionHistograms;
- (void)getMetricsBetweenRoleChanges;
- (void)getNCPChannel;
- (void)getNCPState:(BOOL)a3;
- (void)getNetworkRadioMetrics;
- (void)getPowerMetrics;
- (void)getRCP2CoexMetrics:(BOOL)a3;
- (void)getStreamRawResponseHistogramMetric:(BOOL)a3;
- (void)getThreadSessionRejectInfoMetrics:(id)a3;
- (void)getThreadSessionWEDConnectionHistory:(id)a3;
- (void)getTopologyMetrics;
- (void)handleAdv;
- (void)handleRouterModeFailSafeTrigger;
- (void)initCheckPreferredTimer;
- (void)initSyslogDumpInfo;
- (void)nodeChangeToChildStatus:(unsigned __int8)a3;
- (void)noteBTWIFILoadOnThreadStart;
- (void)noteTimeWhenWEDAttachCompleteSuccessOrFail:(BOOL)a3;
- (void)noteTimeWhenWEDAttachStart:(id)a3;
- (void)noteTimeWhenWEDDetachCompleteSuccessOrFail:(BOOL)a3;
- (void)noteTimeWhenWEDDetachStart;
- (void)notifyHK:()basic_string<char wedMleid:()std:(std::allocator<char>> *)a3 :char_traits<char> discReason:;
- (void)notifyOnNodeStatusChange;
- (void)notifyWedUnsolictedDisconnect;
- (void)performDiscoveryScanInSRMode;
- (void)persistDefaultChildNode:(BOOL)a3;
- (void)persistGeoAvailable:(BOOL)a3;
- (void)persistWedSession:()basic_string<char wedMleid:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (void)printProvideEmacTracker;
- (void)registerStateMachineWedEventHandlers;
- (void)reset;
- (void)resetCurrentWEDInfoMetrics;
- (void)resetEngagementMetrics;
- (void)resetFWUpdateStatus;
- (void)resetFoundAdvFlags;
- (void)resetIPMLEMetrics;
- (void)resetMacMetrics;
- (void)resetMatterSubscriptionHistograms;
- (void)resetMetrics:(id)a3;
- (void)resetMetricsBetweenRoleChanges;
- (void)resetNetworkRadioHistogramMetrics;
- (void)resetNetworkRadioMetrics;
- (void)resetOTAppAndRouteCostHistograms;
- (void)resetPairingStatus;
- (void)resetPeriodicRCP2_threadSessionMetrics;
- (void)resetRCP2CoexMetrics;
- (void)resetThreadSessionMetrics;
- (void)resetThreadSessionWEDConnectionHistory;
- (void)resetTopologyMetrics;
- (void)resumeNetwork;
- (void)retrieveAndPostThirdPartyInfo;
- (void)saveLastKnownJoinedNetwork:(const char *)a3 datasetRecord:(id)a4;
- (void)sendThirdPartyMetricsInfo:(unsigned int)a3 prefNws:(unsigned int)a4 prefNwsByApple:(unsigned int)a5;
- (void)setDeviceNode:(BOOL)a3 geoAvailable:(BOOL)a4 defaultChildNode:(BOOL)a5;
- (void)setIsAssociatedFirstTimeAfterThreadStart;
- (void)startFWUpdateHelper:(const char *)a3;
- (void)startNetworkTopologyBuilder;
- (void)startPeriodicDiscoveryScanInSRMode;
- (void)startQuickDiscoveryScanInSRMode;
- (void)stopPeriodicDiscoveryScanInSRMode;
- (void)submitHistogramCAEvent:(id)a3 histValues:(void *)a4;
- (void)threadLeave;
- (void)threadStop;
- (void)transitionToChildNode:(dict *)a3;
- (void)transitionToChildNodeHelper;
- (void)triggerBTWifiLoadInfoEvent;
- (void)triggerScan;
- (void)updateBusyFailureCount;
- (void)updateInternalDBForCommonDimensions:(id)a3 coexCntrsDict:(id)a4 coexDict:(id)a5;
- (void)updateLinkFailureCount;
- (void)updateOTAppAndRouteCostHistograms;
- (void)updatePreferredNetworkForDatasetChange;
- (void)updateThreadSessionStartTime;
- (void)updateThreadSessionStopReason:(id)a3;
- (void)updateThreadSessionmetrics:(id)a3 previousNodeType:(id)a4;
- (void)updateWEDConnectionCount;
- (void)updateWEDConnectionReqDupCount;
- (void)upgradeCredentials;
@end

@implementation ThreadNetworkManagerInstance

- (const)validateExtendedMACAddress:(const char *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = strlen(a3);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v14 = v4;
    if (v4)
    {
      memset(&__b, 48, v4);
    }

    *(&__b + v5) = 0;
    v6 = v14;
    v7 = __b;
    if (v14 >= 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b;
    }

    v9 = strlen(v3);
    v10 = strncmp(v3, p_b, v9);
    if (v9 == 16 && v10)
    {
      if ((v6 & 0x80000000) == 0)
      {
        return v3;
      }

LABEL_18:
      operator delete(v7);
      return v3;
    }

    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(SM_extension) *)v3 validateExtendedMACAddress:v12];
    }

    v3 = 0;
    if (v6 < 0)
    {
      goto LABEL_18;
    }
  }

  return v3;
}

- (int)startPairing:(const char *)a3 isWED:(BOOL)a4 output:(dict *)a5
{
  v6 = a4;
  v9 = objc_initWeak(&location, self);
  v83.var0 = 0;
  *(v82 + 3) = 0;
  v82[0] = 0;
  [(ThreadNetworkManagerInstance *)self reset];
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  [(ThreadNetworkManagerInstance *)self CAincrementStartProcessCount:1];
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v85;
    nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v85);
    if ((v85[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v85[0].__r_.__value_.__r.__words[0];
    }

    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "nil";
    }

    if (a3)
    {
      v13 = strlen(a3);
    }

    else
    {
      v13 = 0;
    }

    *buf = 136316418;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 52;
    *&buf[18] = 2080;
    *&buf[20] = v11;
    *&buf[28] = 2080;
    *&buf[30] = v12;
    v87 = 2048;
    v88 = v13;
    v89 = 1024;
    v90 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d Start Pairing Cmd received in state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
    if (SHIBYTE(v85[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85[0].__r_.__value_.__l.__data_);
    }
  }

  v14 = [(ThreadNetworkManagerInstance *)self validateExtendedMACAddress:a3];
  v15 = v14;
  if (v6 && !v14 || [(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 4)
  {
    v16 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v32 = v85;
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v85);
      if ((v85[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v85[0].__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        v33 = v15;
      }

      else
      {
        v33 = "nil";
      }

      if (v15)
      {
        v34 = strlen(v15);
      }

      else
      {
        v34 = 0;
      }

      *buf = 136316418;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 61;
      *&buf[18] = 2080;
      *&buf[20] = v32;
      *&buf[28] = 2080;
      *&buf[30] = v33;
      v87 = 2048;
      v88 = v34;
      v89 = 1024;
      v90 = v6;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s:%d Returning error :  Failed to start pairing, state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
      if (SHIBYTE(v85[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85[0].__r_.__value_.__l.__data_);
      }
    }

    v17 = 1;
    [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:1];
    goto LABEL_17;
  }

  v19 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:NodeType");
  if (v19)
  {
    [v19 getProperty:__p output:&v83];
    v20 = *buf == 0;
    size = *&buf[8];
    LOBYTE(v22) = buf[31];
  }

  else
  {
    LOBYTE(v22) = 0;
    size = 0;
    memset(buf, 0, 32);
    v20 = 1;
  }

  v82[0] = *&buf[24];
  *(v82 + 3) = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v20)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:];
    }

    v17 = 1;
    [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:1];
    goto LABEL_144;
  }

  any_to_string(&v83, buf);
  v23 = nl::wpantund::string_to_node_type(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_28;
    }
  }

  else if (v6)
  {
LABEL_28:
    if (v23 - 3 <= 1)
    {
      v24 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        nl::wpantund::node_type_to_string(v23, &v79);
        [ThreadNetworkManagerInstance(SM_extension) startPairing:? isWED:? output:?];
      }

LABEL_75:

      goto LABEL_132;
    }

    if (v23 == 8)
    {
      v35 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 93;
        *&buf[18] = 2080;
        *&buf[20] = "true";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node is already sleepy router", buf, 0x1Cu);
      }
    }

    else
    {
      v40 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        nl::wpantund::node_type_to_string(v23, v85);
        v41 = SHIBYTE(v85[0].__r_.__value_.__r.__words[2]);
        v42 = v85[0].__r_.__value_.__r.__words[0];
        nl::wpantund::node_type_to_string(8u, &v79);
        v43 = v85;
        if (v41 < 0)
        {
          v43 = v42;
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v79;
        }

        else
        {
          v44 = v79.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 86;
        *&buf[18] = 2080;
        *&buf[20] = "true";
        *&buf[28] = 2080;
        *&buf[30] = v43;
        v87 = 2080;
        v88 = v44;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transition to New Node = [%s]", buf, 0x30u);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85[0].__r_.__value_.__l.__data_);
        }
      }

      v45 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v77, "Network:NodeType");
      if (v45)
      {
        [v45 setProperty:v77 property_val:"sleepy-router"];
      }

      else
      {
        memset(buf, 0, 32);
      }

      if ((v22 & 0x80) != 0)
      {
        operator delete(size);
      }

      size = *&buf[8];
      v82[0] = *&buf[24];
      *(v82 + 3) = *&buf[27];
      LOBYTE(v22) = buf[31];
      buf[31] = 0;
      buf[8] = 0;
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }
    }

    if ([(ThreadNetworkManagerInstance *)self isPeriodicDiscoveryScanInProgress])
    {
      [(ThreadNetworkManagerInstance *)self stopPeriodicDiscoveryScanInSRMode];
    }

LABEL_132:
    v56 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(v63, "Thread:Pairing:Status");
    if (v56)
    {
      [v56 setProperty:v63 property_val:"1"];
      data = v85[0].__r_.__value_.__l.__data_;
      if ((v22 & 0x80) == 0)
      {
LABEL_135:
        v58 = v85[0].__r_.__value_.__r.__words[2];
        size = v85[0].__r_.__value_.__l.__size_;
        v82[0] = v85[1].__r_.__value_.__l.__data_;
        *(v82 + 3) = *(v85[1].__r_.__value_.__r.__words + 3);
        v22 = v85[1].__r_.__value_.__s.__data_[7];
        v85[1].__r_.__value_.__s.__data_[7] = 0;
        v85[0].__r_.__value_.__s.__data_[8] = 0;
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (data)
        {
          v59 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            if (v22 < 0)
            {
              std::string::__init_copy_ctor_external(&v62, size, v58);
              v61 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
            }

            else
            {
              v62.__r_.__value_.__r.__words[0] = size;
              v62.__r_.__value_.__l.__size_ = v58;
              LODWORD(v62.__r_.__value_.__r.__words[2]) = v82[0];
              *(&v62.__r_.__value_.__r.__words[2] + 3) = *(v82 + 3);
              *(&v62.__r_.__value_.__s + 23) = v22;
              v61 = &v62;
            }

            LODWORD(v85[0].__r_.__value_.__l.__data_) = 136315906;
            *(v85[0].__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
            WORD2(v85[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&v85[0].__r_.__value_.__r.__words[1] + 6) = 176;
            WORD1(v85[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&v85[0].__r_.__value_.__r.__words[2] + 4) = v61;
            WORD2(v85[1].__r_.__value_.__r.__words[0]) = 1024;
            *(v85[1].__r_.__value_.__r.__words + 6) = data;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadPairingStatus property res.errorCode() : %s(%d)", v85, 0x22u);
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }
          }
        }

        [(ThreadNetworkManagerInstance *)self setIsPairing:1];
        [(ThreadNetworkManagerInstance *)self triggerBTWifiLoadInfoEvent];
        [(ThreadNetworkManagerInstance *)self CAincrementStartProcessSuccessCount:1];
        v17 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      data = 0;
      memset(v85, 0, 32);
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_135;
      }
    }

    operator delete(size);
    goto LABEL_135;
  }

  if (v23 <= 8)
  {
    if (((1 << v23) & 0x18) != 0)
    {
      if (v15)
      {
        v37 = xpc_string_create(v15);
        v65 = v37;
        if (!v37)
        {
          v65 = xpc_null_create();
        }

        *buf = a5;
        *&buf[8] = "extendedMACAddress";
        xpc::dict::object_proxy::operator=(buf, &v65, &v66);
        v38 = v66;
        v66 = 0;

        v39 = v65;
        v65 = 0;
      }

      v24 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        nl::wpantund::node_type_to_string(v23, &v79);
        [ThreadNetworkManagerInstance(SM_extension) startPairing:? isWED:? output:?];
      }

      goto LABEL_75;
    }

    if (((1 << v23) & 0x82) != 0)
    {
      if (v15)
      {
        v36 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
        std::string::basic_string[abi:ne200100]<0>(v69, "Thread:EmacId");
        if (v36)
        {
          [v36 setProperty:v69 property_val:v15];
        }

        else
        {
          memset(buf, 0, 32);
        }

        if ((v22 & 0x80) != 0)
        {
          operator delete(size);
        }

        size = *&buf[8];
        v82[0] = *&buf[24];
        *(v82 + 3) = *&buf[27];
        LOBYTE(v22) = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        v46 = xpc_string_create(v15);
        v67 = v46;
        if (!v46)
        {
          v67 = xpc_null_create();
        }

        *buf = a5;
        *&buf[8] = "extendedMACAddress";
        xpc::dict::object_proxy::operator=(buf, &v67, &v68);
        v47 = v68;
        v68 = 0;

        v48 = v67;
        v67 = 0;
      }

      resetRouterModeStatusTimerCounter();
      v49 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 141;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s:%d Already Router/Leader", buf, 0x12u);
      }

      if ([(ThreadNetworkManagerInstance *)self isThreadAlwaysOnFeatureEnabled])
      {
        v50 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Power Assertion: %s: Start Power assertion in pairing mode as router", buf, 0xCu);
        }

        ThreadPowerAssertDispatchTask(&power_assertion_n);
      }

      goto LABEL_132;
    }

    if (((1 << v23) & 0x101) != 0)
    {
      [(ThreadNetworkManagerInstance *)self disconnectActiveWedConnection];
      v26 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        nl::wpantund::node_type_to_string(v23, v85);
        v27 = SHIBYTE(v85[0].__r_.__value_.__r.__words[2]);
        v28 = v85[0].__r_.__value_.__r.__words[0];
        nl::wpantund::node_type_to_string(1u, &v79);
        v29 = v85;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v79;
        }

        else
        {
          v30 = v79.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 110;
        *&buf[18] = 2080;
        *&buf[20] = "false";
        *&buf[28] = 2080;
        *&buf[30] = v29;
        v87 = 2080;
        v88 = v30;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transition to New Node = [%s]", buf, 0x30u);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85[0].__r_.__value_.__l.__data_);
        }
      }

      if (v15)
      {
        v31 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
        std::string::basic_string[abi:ne200100]<0>(v75, "Thread:EmacId");
        if (v31)
        {
          [v31 setProperty:v75 property_val:v15];
        }

        else
        {
          memset(buf, 0, 32);
        }

        if ((v22 & 0x80) != 0)
        {
          operator delete(size);
        }

        size = *&buf[8];
        v82[0] = *&buf[24];
        *(v82 + 3) = *&buf[27];
        LOBYTE(v22) = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v76 < 0)
        {
          operator delete(v75[0]);
        }

        v51 = xpc_string_create(v15);
        v73 = v51;
        if (!v51)
        {
          v73 = xpc_null_create();
        }

        *buf = a5;
        *&buf[8] = "extendedMACAddress";
        xpc::dict::object_proxy::operator=(buf, &v73, &v74);
        v52 = v74;
        v74 = 0;

        v53 = v73;
        v73 = 0;
      }

      v54 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v71, "Network:NodeType");
      if (v54)
      {
        [v54 setProperty:v71 property_val:"router"];
      }

      else
      {
        memset(buf, 0, 32);
      }

      if ((v22 & 0x80) != 0)
      {
        operator delete(size);
      }

      v82[0] = *&buf[24];
      *(v82 + 3) = *&buf[27];
      buf[31] = 0;
      buf[8] = 0;
      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      resetRouterModeStatusTimerCounter();
      if ([(ThreadNetworkManagerInstance *)self isThreadAlwaysOnFeatureEnabled])
      {
        v55 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Power Assertion: %s: Start Power assertion in pairing mode as router", buf, 0xCu);
        }

        ThreadPowerAssertDispatchTask(&power_assertion_n);
      }

      if (RcpHostContext::sRcpHostContext)
      {
        RcpHostContext::signalNodeStatusChange(RcpHostContext::sRcpHostContext);
      }

      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }
  }

  v17 = 1;
  [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:1];
LABEL_141:
  v60 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v85[0].__r_.__value_.__l.__data_) = 136315650;
    *(v85[0].__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:]";
    WORD2(v85[0].__r_.__value_.__r.__words[1]) = 1024;
    *(&v85[0].__r_.__value_.__r.__words[1] + 6) = 187;
    WORD1(v85[0].__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v85[0].__r_.__value_.__r.__words[2]) = v17;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s:%d Exiting ret : %d", v85, 0x18u);
  }

LABEL_144:
  if ((v22 & 0x80) != 0)
  {
    operator delete(size);
  }

LABEL_17:
  if (v83.var0)
  {
    (*(*v83.var0 + 8))(v83.var0);
  }

  objc_destroyWeak(&location);
  return v17;
}

- (int)stopPairing:(dict *)a3
{
  v4 = objc_initWeak(&location, self);
  v39.var0 = 0;
  memset(&__p[24], 0, 7);
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  [(ThreadNetworkManagerInstance *)self CAincrementStopProcessCount:1];
  [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:1 isProcessPairing:1];
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], __p);
    v6 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopPairing:]";
    *&buf[12] = 1024;
    *&buf[14] = 205;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d Stop Pairing received in state %s", buf, 0x1Cu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v36, "Thread:Pairing:Status");
  if (v7)
  {
    [v7 setProperty:v36 property_val:"0"];
    v8 = *buf;
    v9 = *&buf[8];
    v10 = *&buf[16];
    LOBYTE(v11) = buf[31];
  }

  else
  {
    LOBYTE(v11) = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    memset(buf, 0, 32);
  }

  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v8)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if ((v11 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(__p, v9, v10);
        v29 = __p[23] >= 0 ? __p : *__p;
      }

      else
      {
        *__p = v9;
        *&__p[8] = v10;
        *&__p[16] = *&__p[24];
        *&__p[19] = *&__p[27];
        __p[23] = v11;
        v29 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopPairing:]";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      *&buf[28] = 1024;
      *&buf[30] = v8;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadPairingStatus property res.errorCode() : %s(%d)", buf, 0x22u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  [(ThreadNetworkManagerInstance *)self setIsPairing:0];
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 4)
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) stopPairing:];
    }

LABEL_50:
    v26 = 1;
    goto LABEL_51;
  }

  v14 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v34, "Network:NodeType");
  if (v14)
  {
    [v14 getProperty:v34 output:&v39];
    v15 = *buf == 0;
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  memset(buf, 0, 32);
  v15 = 1;
  if ((v11 & 0x80) != 0)
  {
LABEL_20:
    operator delete(v9);
  }

LABEL_21:
  v9 = *&buf[8];
  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  v11 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (!v15)
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:];
    }

    goto LABEL_50;
  }

  any_to_string(&v39, buf);
  v16 = nl::wpantund::string_to_node_type(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v16 > 7 || ((1 << v16) & 0x83) == 0)
  {
    goto LABEL_61;
  }

  v17 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v32, "Thread:EmacId");
  if (v17)
  {
    [v17 setProperty:v32 property_val:""];
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    memset(buf, 0, 32);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(v9);
LABEL_30:
  v9 = *&buf[8];
  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  v11 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (![(ThreadNetworkManagerInstance *)self foundAdvDuringPairing]|| [(ThreadNetworkManagerInstance *)self numAdvDuringPairing]< 0xA)
  {
    v28 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) stopPairing:];
    }

    [(ThreadNetworkManagerInstance *)self setStopPairingRequest:1];
    goto LABEL_61;
  }

  [(ThreadNetworkManagerInstance *)self reset];
  v18 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = __p;
    nl::wpantund::node_type_to_string(v16, __p);
    if (__p[23] < 0)
    {
      v19 = *__p;
    }

    v20 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
    v21 = [(ThreadNetworkManagerInstance *)self numAdvDuringPairing];
    *buf = 136316162;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopPairing:]";
    *&buf[12] = 1024;
    *&buf[14] = 236;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    *&buf[28] = 2080;
    *&buf[30] = v20;
    v42 = 1024;
    v43 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d Current Node = [%s], transition to New Node = [%s], num ADV Rx During Pairing = [%d]", buf, 0x2Cu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v22 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v30, "Network:NodeType");
  v23 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
  if (v22)
  {
    [v22 setProperty:v30 property_val:v23];
    v24 = *buf == 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  memset(buf, 0, 32);
  v24 = 1;
  if (v11 < 0)
  {
LABEL_41:
    operator delete(v9);
  }

LABEL_42:
  v9 = *&buf[8];
  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  LOBYTE(v11) = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (!v24)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) stopPairing:];
    }

    v26 = 1;
    goto LABEL_62;
  }

LABEL_61:
  [(ThreadNetworkManagerInstance *)self setIsPairing:0];
  [(ThreadNetworkManagerInstance *)self performDiscoveryScanInSRMode];
  v26 = 0;
LABEL_62:
  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopPairing:]";
    *&buf[12] = 1024;
    *&buf[14] = 261;
    *&buf[18] = 1024;
    *&buf[20] = v26;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d Exiting ret : %d", buf, 0x18u);
  }

LABEL_51:

  if ((v11 & 0x80) != 0)
  {
    operator delete(v9);
  }

  if (v39.var0)
  {
    (*(*v39.var0 + 8))(v39.var0);
  }

  objc_destroyWeak(&location);
  return v26;
}

- (int)startFWUpdate:(const char *)a3 isWED:(BOOL)a4 output:(dict *)a5
{
  v6 = a4;
  v9 = objc_initWeak(&location, self);
  v125.var0 = 0;
  *(v124 + 3) = 0;
  v124[0] = 0;
  [(ThreadNetworkManagerInstance *)self reset];
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  [(ThreadNetworkManagerInstance *)self CAincrementStartProcessCount:0];
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "nil";
    }

    if (a3)
    {
      v13 = strlen(a3);
    }

    else
    {
      v13 = 0;
    }

    *buf = 136316418;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 279;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    *&buf[28] = 2080;
    *&buf[30] = v12;
    v129 = 2048;
    v130 = v13;
    v131 = 1024;
    v132 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d Start FW Update Cmd received in state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v14 = [(ThreadNetworkManagerInstance *)self validateExtendedMACAddress:a3];
  v15 = v14;
  if (v6 && !v14 || [(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 4)
  {
    v16 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v36 = &__p;
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = __p.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        v37 = v15;
      }

      else
      {
        v37 = "nil";
      }

      if (v15)
      {
        v38 = strlen(v15);
      }

      else
      {
        v38 = 0;
      }

      *buf = 136316418;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 288;
      *&buf[18] = 2080;
      *&buf[20] = v36;
      *&buf[28] = 2080;
      *&buf[30] = v37;
      v129 = 2048;
      v130 = v38;
      v131 = 1024;
      v132 = v6;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s:%d Returning error :  Failed to start FW Update, state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
    v17 = 1;
    goto LABEL_17;
  }

  v19 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v121, "Network:NodeType");
  if (v19)
  {
    [v19 getProperty:v121 output:&v125];
    v20 = *buf == 0;
    v21 = *&buf[8];
    LOBYTE(v22) = buf[31];
  }

  else
  {
    LOBYTE(v22) = 0;
    v21 = 0;
    memset(buf, 0, 32);
    v20 = 1;
  }

  v124[0] = *&buf[24];
  *(v124 + 3) = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (!v20)
  {
    v28 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) startPairing:isWED:output:];
    }

    [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
    goto LABEL_44;
  }

  any_to_string(&v125, buf);
  v23 = nl::wpantund::string_to_node_type(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v17 = 1;
  if (v23 <= 2)
  {
    if (!v23)
    {
      if (v6)
      {
        v44 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          nl::wpantund::node_type_to_string(0, &__p);
          v45 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v46 = __p.__r_.__value_.__r.__words[0];
          nl::wpantund::node_type_to_string(8u, &v127);
          v47 = &__p;
          if (v45 < 0)
          {
            v47 = v46;
          }

          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v127;
          }

          else
          {
            v48 = v127.__r_.__value_.__r.__words[0];
          }

          *buf = 136316162;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 344;
          *&buf[18] = 2080;
          *&buf[20] = "true";
          *&buf[28] = 2080;
          *&buf[30] = v47;
          v129 = 2080;
          v130 = v48;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transition to New Node = [%s]", buf, 0x30u);
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v49 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
        std::string::basic_string[abi:ne200100]<0>(v115, "Network:NodeType");
        if (v49)
        {
          [v49 setProperty:v115 property_val:"sleepy-router"];
          v50 = *buf == 0;
        }

        else
        {
          memset(buf, 0, 32);
          v50 = 1;
        }

        if ((v22 & 0x80) != 0)
        {
          operator delete(v21);
        }

        v21 = *&buf[8];
        v124[0] = *&buf[24];
        *(v124 + 3) = *&buf[27];
        v22 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v116 < 0)
        {
          operator delete(v115[0]);
        }

        if (!v50)
        {
          [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
          goto LABEL_44;
        }

        if (v15)
        {
          v75 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
          std::string::basic_string[abi:ne200100]<0>(v113, "Thread:EmacId");
          if (v75)
          {
            [v75 setProperty:v113 property_val:v15];
            v76 = *buf;
          }

          else
          {
            v76 = 0;
            memset(buf, 0, 32);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          v91 = *&buf[8];
          v92 = *&buf[16];
          v124[0] = *&buf[24];
          *(v124 + 3) = *&buf[27];
          v93 = buf[31];
          buf[31] = 0;
          buf[8] = 0;
          if (v114 < 0)
          {
            operator delete(v113[0]);
          }

          if (v76)
          {
            v94 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              if (v93 < 0)
              {
                std::string::__init_copy_ctor_external(&__p, v91, v92);
                v103 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                __p.__r_.__value_.__r.__words[0] = v91;
                __p.__r_.__value_.__l.__size_ = v92;
                LODWORD(__p.__r_.__value_.__r.__words[2]) = v124[0];
                *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v124 + 3);
                *(&__p.__r_.__value_.__s + 23) = v93;
                v103 = &__p;
              }

              *buf = 136315906;
              *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
              *&buf[12] = 1024;
              *&buf[14] = 354;
              *&buf[18] = 2080;
              *&buf[20] = v103;
              *&buf[28] = 1024;
              *&buf[30] = v76;
              _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadEmacId property res.errorCode() : %s(%d)", buf, 0x22u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        v95 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = &__p;
          nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v96 = __p.__r_.__value_.__r.__words[0];
          }

          if (v15)
          {
            v97 = v15;
          }

          else
          {
            v97 = "nil";
          }

          if (v15)
          {
            v98 = strlen(v15);
          }

          else
          {
            v98 = 0;
          }

          *buf = 136316418;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 358;
          *&buf[18] = 2080;
          *&buf[20] = v96;
          *&buf[28] = 2080;
          *&buf[30] = v97;
          v129 = 2048;
          v130 = v98;
          v131 = 1024;
          v132 = 1;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%s:%d Calling  provideExtendedMACAddress from start FW Updating, state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ([(ThreadNetworkManagerInstance *)self isPeriodicDiscoveryScanInProgress])
        {
          [(ThreadNetworkManagerInstance *)self stopPeriodicDiscoveryScanInSRMode];
        }

        [(ThreadNetworkManagerInstance *)self provideExtendedMACAddress:v15 output:a5];
      }

      else
      {
        v53 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          nl::wpantund::node_type_to_string(0, &__p);
          v54 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v55 = __p.__r_.__value_.__r.__words[0];
          nl::wpantund::node_type_to_string(1u, &v127);
          v56 = &__p;
          if (v54 < 0)
          {
            v56 = v55;
          }

          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v127;
          }

          else
          {
            v57 = v127.__r_.__value_.__r.__words[0];
          }

          *buf = 136316162;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 369;
          *&buf[18] = 2080;
          *&buf[20] = "false";
          *&buf[28] = 2080;
          *&buf[30] = v56;
          v129 = 2080;
          v130 = v57;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transitioning to New Node = [%s]", buf, 0x30u);
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v58 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
        std::string::basic_string[abi:ne200100]<0>(v111, "Network:NodeType");
        if (v58)
        {
          [v58 setProperty:v111 property_val:"router"];
          v59 = *buf;
        }

        else
        {
          v59 = 0;
          memset(buf, 0, 32);
        }

        if ((v22 & 0x80) != 0)
        {
          operator delete(v21);
        }

        v21 = *&buf[8];
        v77 = *&buf[16];
        v124[0] = *&buf[24];
        *(v124 + 3) = *&buf[27];
        v22 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v112 < 0)
        {
          operator delete(v111[0]);
        }

        if (v59)
        {
          v78 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            if (v22 < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v21, v77);
              v100 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            }

            else
            {
              __p.__r_.__value_.__r.__words[0] = v21;
              __p.__r_.__value_.__l.__size_ = v77;
              LODWORD(__p.__r_.__value_.__r.__words[2]) = v124[0];
              *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v124 + 3);
              *(&__p.__r_.__value_.__s + 23) = v22;
              v100 = &__p;
            }

            *buf = 136315906;
            *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
            *&buf[12] = 1024;
            *&buf[14] = 374;
            *&buf[18] = 2080;
            *&buf[20] = v100;
            *&buf[28] = 1024;
            *&buf[30] = v59;
            _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to router res.errorCode() : %s(%d)", buf, 0x22u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          disableFWUpdateFlag();
          [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
          goto LABEL_44;
        }
      }

      [(ThreadNetworkManagerInstance *)self startFWUpdateHelper:v15];
      if (RcpHostContext::sRcpHostContext)
      {
        RcpHostContext::signalNodeStatusChange(RcpHostContext::sRcpHostContext);
      }

      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }

    if (v23 != 1)
    {
      goto LABEL_202;
    }

    goto LABEL_47;
  }

  if ((v23 - 3) < 2)
  {
    if (v15)
    {
      v39 = xpc_string_create(v15);
      v119 = v39;
      if (!v39)
      {
        v119 = xpc_null_create();
      }

      *buf = a5;
      *&buf[8] = "extendedMACAddress";
      xpc::dict::object_proxy::operator=(buf, &v119, &v120);
      v40 = v120;
      v120 = 0;

      v41 = v119;
      v119 = 0;

      v42 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v117, "Thread:EmacId");
      if (v42)
      {
        [v42 setProperty:v117 property_val:v15];
        v43 = *buf;
      }

      else
      {
        v43 = 0;
        memset(buf, 0, 32);
      }

      if ((v22 & 0x80) != 0)
      {
        operator delete(v21);
      }

      v21 = *&buf[8];
      __sz = *&buf[16];
      v124[0] = *&buf[24];
      *(v124 + 3) = *&buf[27];
      v22 = buf[31];
      buf[31] = 0;
      buf[8] = 0;
      if (v118 < 0)
      {
        operator delete(v117[0]);
      }

      if (v43)
      {
        v67 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          if (v22 < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v21, __sz);
            v99 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            __p.__r_.__value_.__r.__words[0] = v21;
            __p.__r_.__value_.__l.__size_ = __sz;
            LODWORD(__p.__r_.__value_.__r.__words[2]) = v124[0];
            *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v124 + 3);
            *(&__p.__r_.__value_.__s + 23) = v22;
            v99 = &__p;
          }

          *buf = 136315906;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 315;
          *&buf[18] = 2080;
          *&buf[20] = v99;
          *&buf[28] = 1024;
          *&buf[30] = v43;
          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadEmacId property res.errorCode() : %s(%d)", buf, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    if (v6)
    {
      [(ThreadNetworkManagerInstance *)self setIsWedFWUpdateProgressInChildRole:1];
      [(ThreadNetworkManagerInstance *)self setIsNonWedFWUpdateProgressInChildRole:0];
      v68 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = [(ThreadNetworkManagerInstance *)self isWedFWUpdateProgressInChildRole];
        v70 = "nil";
        if (v15)
        {
          v70 = v15;
        }

        *buf = 67109378;
        *&buf[4] = v69;
        *&buf[8] = 2080;
        *&buf[10] = v70;
        v71 = "isWedFWUpdateProgressInChildRole = %d and extaddr = %s";
LABEL_211:
        _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, v71, buf, 0x12u);
      }
    }

    else
    {
      [(ThreadNetworkManagerInstance *)self setIsNonWedFWUpdateProgressInChildRole:1];
      [(ThreadNetworkManagerInstance *)self setIsWedFWUpdateProgressInChildRole:0];
      v68 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v89 = [(ThreadNetworkManagerInstance *)self isNonWedFWUpdateProgressInChildRole];
        v90 = "nil";
        if (v15)
        {
          v90 = v15;
        }

        *buf = 67109378;
        *&buf[4] = v89;
        *&buf[8] = 2080;
        *&buf[10] = v90;
        v71 = "isNonWedFWUpdateProgressInChildRole = %d and extaddr = %s";
        goto LABEL_211;
      }
    }

    v72 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::node_type_to_string(v23, &__p);
      [(ThreadNetworkManagerInstance(SM_extension) *)v6 startFWUpdate:buf isWED:v72 output:?];
    }

    goto LABEL_136;
  }

  if (v23 != 7)
  {
    if (v23 == 8)
    {
      if (v6)
      {
        v24 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = &__p;
          nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if (v15)
          {
            v26 = v15;
          }

          else
          {
            v26 = "nil";
          }

          if (v15)
          {
            v27 = strlen(v15);
          }

          else
          {
            v27 = 0;
          }

          *buf = 136316418;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 401;
          *&buf[18] = 2080;
          *&buf[20] = v25;
          *&buf[28] = 2080;
          *&buf[30] = v26;
          v129 = 2048;
          v130 = v27;
          v131 = 1024;
          v132 = 1;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d Calling  provideExtendedMACAddress from start FW Updating, state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ([(ThreadNetworkManagerInstance *)self isPeriodicDiscoveryScanInProgress])
        {
          [(ThreadNetworkManagerInstance *)self stopPeriodicDiscoveryScanInSRMode];
        }

        v87 = [(ThreadNetworkManagerInstance *)self provideExtendedMACAddress:v15 output:a5];
        goto LABEL_201;
      }

      [(ThreadNetworkManagerInstance *)self disconnectActiveWedConnection];
      v60 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        nl::wpantund::node_type_to_string(8u, &__p);
        v61 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v62 = __p.__r_.__value_.__r.__words[0];
        nl::wpantund::node_type_to_string(1u, &v127);
        v63 = &__p;
        if (v61 < 0)
        {
          v63 = v62;
        }

        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v127;
        }

        else
        {
          v64 = v127.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 423;
        *&buf[18] = 2080;
        *&buf[20] = "false";
        *&buf[28] = 2080;
        *&buf[30] = v63;
        v129 = 2080;
        v130 = v64;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transitioning to New Node = [%s]", buf, 0x30u);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v65 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v109, "Network:NodeType");
      if (v65)
      {
        [v65 setProperty:v109 property_val:"router"];
        v66 = *buf;
      }

      else
      {
        v66 = 0;
        memset(buf, 0, 32);
      }

      if ((v22 & 0x80) != 0)
      {
        operator delete(v21);
      }

      v21 = *&buf[8];
      v79 = *&buf[16];
      v124[0] = *&buf[24];
      *(v124 + 3) = *&buf[27];
      v22 = buf[31];
      buf[31] = 0;
      buf[8] = 0;
      if (v110 < 0)
      {
        operator delete(v109[0]);
      }

      if (!v66)
      {
        [(ThreadNetworkManagerInstance *)self startFWUpdateHelper:v15];
        if (RcpHostContext::sRcpHostContext)
        {
          RcpHostContext::signalNodeStatusChange(RcpHostContext::sRcpHostContext);
        }

        __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
      }

      v80 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        if (v22 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v21, v79);
          v101 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = v21;
          __p.__r_.__value_.__l.__size_ = v79;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = v124[0];
          *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v124 + 3);
          *(&__p.__r_.__value_.__s + 23) = v22;
          v101 = &__p;
        }

        *buf = 136315906;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 429;
        *&buf[18] = 2080;
        *&buf[20] = v101;
        *&buf[28] = 1024;
        *&buf[30] = v66;
        _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to router res.errorCode() : %s(%d)", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      disableFWUpdateFlag();
      [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
      goto LABEL_44;
    }

LABEL_202:
    [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
    goto LABEL_203;
  }

LABEL_47:
  if (!v6)
  {
    v51 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      nl::wpantund::node_type_to_string(v23, &__p);
      v52 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 473;
      *&buf[18] = 2080;
      *&buf[20] = "false";
      *&buf[28] = 2080;
      *&buf[30] = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], no need to set to Router mode again, ", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    [(ThreadNetworkManagerInstance *)self startFWUpdateHelper:v15];
    goto LABEL_136;
  }

  v29 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::node_type_to_string(v23, &__p);
    v30 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v31 = __p.__r_.__value_.__r.__words[0];
    nl::wpantund::node_type_to_string(8u, &v127);
    v32 = &__p;
    if (v30 < 0)
    {
      v32 = v31;
    }

    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v127;
    }

    else
    {
      v33 = v127.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 454;
    *&buf[18] = 2080;
    *&buf[20] = "true";
    *&buf[28] = 2080;
    *&buf[30] = v32;
    v129 = 2080;
    v130 = v33;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s:%d isWed = [%s] Current Node = [%s], transition to New Node = [%s]", buf, 0x30u);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v34 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v107, "Network:NodeType");
  if (v34)
  {
    [v34 setProperty:v107 property_val:"sleepy-router"];
    v35 = *buf == 0;
  }

  else
  {
    memset(buf, 0, 32);
    v35 = 1;
  }

  if ((v22 & 0x80) != 0)
  {
    operator delete(v21);
  }

  v21 = *&buf[8];
  v124[0] = *&buf[24];
  *(v124 + 3) = *&buf[27];
  v22 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  if (v35)
  {
    if (v15)
    {
      v73 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v105, "Thread:EmacId");
      if (v73)
      {
        [v73 setProperty:v105 property_val:v15];
        v74 = *buf;
      }

      else
      {
        v74 = 0;
        memset(buf, 0, 32);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      v21 = *&buf[8];
      v81 = *&buf[16];
      v124[0] = *&buf[24];
      *(v124 + 3) = *&buf[27];
      v22 = buf[31];
      buf[31] = 0;
      buf[8] = 0;
      if (v106 < 0)
      {
        operator delete(v105[0]);
      }

      if (v74)
      {
        v82 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          if (v22 < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v21, v81);
            v102 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            __p.__r_.__value_.__r.__words[0] = v21;
            __p.__r_.__value_.__l.__size_ = v81;
            LODWORD(__p.__r_.__value_.__r.__words[2]) = v124[0];
            *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v124 + 3);
            *(&__p.__r_.__value_.__s + 23) = v22;
            v102 = &__p;
          }

          *buf = 136315906;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
          *&buf[12] = 1024;
          *&buf[14] = 464;
          *&buf[18] = 2080;
          *&buf[20] = v102;
          *&buf[28] = 1024;
          *&buf[30] = v74;
          _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadEmacId property res.errorCode() : %s(%d)", buf, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v83 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v84 = &__p;
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v84 = __p.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        v85 = v15;
      }

      else
      {
        v85 = "nil";
      }

      if (v15)
      {
        v86 = strlen(v15);
      }

      else
      {
        v86 = 0;
      }

      *buf = 136316418;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 468;
      *&buf[18] = 2080;
      *&buf[20] = v84;
      *&buf[28] = 2080;
      *&buf[30] = v85;
      v129 = 2048;
      v130 = v86;
      v131 = 1024;
      v132 = 1;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%s:%d Calling  provideExtendedMACAddress from start FW Updating, state %s, extendedMACAddress : %s, Length = %ld, isWED : %d", buf, 0x36u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v87 = [(ThreadNetworkManagerInstance *)self provideExtendedMACAddress:v15 output:a5];
LABEL_201:
    v17 = v87;
    if (v87)
    {
      goto LABEL_202;
    }

LABEL_136:
    [(ThreadNetworkManagerInstance *)self setIsFWUpdateInProgress:1];
    [(ThreadNetworkManagerInstance *)self CAincrementStartProcessSuccessCount:0];
    v17 = 0;
LABEL_203:
    v88 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v127.__r_.__value_.__l.__data_) = 136315650;
      *(v127.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
      WORD2(v127.__r_.__value_.__r.__words[1]) = 1024;
      *(&v127.__r_.__value_.__r.__words[1] + 6) = 496;
      WORD1(v127.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(v127.__r_.__value_.__r.__words[2]) = v17;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%s:%d Exiting ret : %d", &v127, 0x18u);
    }

    goto LABEL_206;
  }

  [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:0 isProcessPairing:0];
LABEL_44:
  v17 = 1;
LABEL_206:
  if ((v22 & 0x80) != 0)
  {
    operator delete(v21);
  }

LABEL_17:
  if (v125.var0)
  {
    (*(*v125.var0 + 8))(v125.var0);
  }

  objc_destroyWeak(&location);
  return v17;
}

- (void)startFWUpdateHelper:(const char *)a3
{
  v5 = objc_initWeak(&location, self);
  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "nil";
    if (a3)
    {
      v7 = a3;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start FwUpdate extendedMACAddress : %s", buf, 0xCu);
  }

  enableFWUpdateFlag();
  if ([(ThreadNetworkManagerInstance *)self isThreadAlwaysOnFeatureEnabled])
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdateHelper:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power Assertion: %s: Start Power assertion in FW update mode", buf, 0xCu);
    }

    ThreadPowerAssertDispatchTask(&power_assertion_n);
  }

  v9 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Thread:FWUpdate");
  if (v9)
  {
    [v9 setProperty:__p property_val:"1"];
    v10 = *buf;
    v11 = *&buf[8];
    v12 = *&buf[16];
    LOBYTE(v13) = buf[31];
  }

  else
  {
    LOBYTE(v13) = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    memset(buf, 0, 32);
  }

  v26[0] = *&buf[24];
  *(v26 + 3) = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if ((v13 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v23, v11, v12);
        v19 = (v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v23 : v23.__r_.__value_.__r.__words[0];
      }

      else
      {
        v23.__r_.__value_.__r.__words[0] = v11;
        v23.__r_.__value_.__l.__size_ = v12;
        LODWORD(v23.__r_.__value_.__r.__words[2]) = v26[0];
        *(&v23.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
        *(&v23.__r_.__value_.__s + 23) = v13;
        v19 = &v23;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdateHelper:]";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 2080;
      *&buf[20] = v19;
      *&buf[28] = 1024;
      *&buf[30] = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadFWUpdate property res.errorCode() : %s(%d)", buf, 0x22u);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }
  }

  if (a3)
  {
    v15 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(v21, "Thread:EmacId");
    if (v15)
    {
      [v15 setProperty:v21 property_val:a3];
      v16 = *buf;
      if ((v13 & 0x80) == 0)
      {
LABEL_21:
        v11 = *&buf[8];
        v17 = *&buf[16];
        v26[0] = *&buf[24];
        *(v26 + 3) = *&buf[27];
        v13 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (v16)
        {
          v18 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            if (v13 < 0)
            {
              std::string::__init_copy_ctor_external(&v23, v11, v17);
              v20 = (v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v23 : v23.__r_.__value_.__r.__words[0];
            }

            else
            {
              v23.__r_.__value_.__r.__words[0] = v11;
              v23.__r_.__value_.__l.__size_ = v17;
              LODWORD(v23.__r_.__value_.__r.__words[2]) = v26[0];
              *(&v23.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
              *(&v23.__r_.__value_.__s + 23) = v13;
              v20 = &v23;
            }

            *buf = 136315906;
            *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdateHelper:]";
            *&buf[12] = 1024;
            *&buf[14] = 529;
            *&buf[18] = 2080;
            *&buf[20] = v20;
            *&buf[28] = 1024;
            *&buf[30] = v16;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set kWPANTUNDProperty_ThreadEmacId property res.errorCode() : %s(%d)", buf, 0x22u);
            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v23.__r_.__value_.__l.__data_);
            }
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
      memset(buf, 0, 32);
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

    operator delete(v11);
    goto LABEL_21;
  }

LABEL_26:
  if ((v13 & 0x80) != 0)
  {
    operator delete(v11);
  }

  objc_destroyWeak(&location);
}

- (int)stopFWUpdate:(dict *)a3
{
  v4 = objc_initWeak(&location, self);
  memset(&__p[24], 0, 7);
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  [(ThreadNetworkManagerInstance *)self CAincrementStopProcessCount:0];
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], __p);
    v6 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopFWUpdate:]";
    *&buf[12] = 1024;
    *&buf[14] = 545;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d Stop FW Update received in state %s", buf, 0x1Cu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if ([(ThreadNetworkManagerInstance *)self isWedFWUpdateProgressInChildRole])
  {
    [(ThreadNetworkManagerInstance *)self disconnectActiveWedConnection];
  }

  [(ThreadNetworkManagerInstance *)self setIsNonWedFWUpdateProgressInChildRole:0];
  [(ThreadNetworkManagerInstance *)self setIsWedFWUpdateProgressInChildRole:0];
  disableFWUpdateFlag();
  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v25, "Thread:FWUpdate");
  if (v7)
  {
    [v7 setProperty:v25 property_val:"0"];
    v8 = *buf;
    v9 = *&buf[8];
    v10 = *&buf[16];
    v11 = buf[31];
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    memset(buf, 0, 32);
  }

  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v8)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if ((v11 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(__p, v9, v10);
        v21 = __p[23] >= 0 ? __p : *__p;
      }

      else
      {
        *__p = v9;
        *&__p[8] = v10;
        *&__p[16] = *&__p[24];
        *&__p[19] = *&__p[27];
        __p[23] = v11;
        v21 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopFWUpdate:]";
      *&buf[12] = 1024;
      *&buf[14] = 560;
      *&buf[18] = 2080;
      *&buf[20] = v21;
      *&buf[28] = 1024;
      *&buf[30] = v8;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to router res.errorCode() : %s(%d)", buf, 0x22u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  [(ThreadNetworkManagerInstance *)self resetFWUpdateStatus];
  v13 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v23, "Thread:EmacId");
  if (v13)
  {
    [v13 setProperty:v23 property_val:""];
    v14 = *buf;
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = 0;
  memset(buf, 0, 32);
  if ((v11 & 0x80) != 0)
  {
LABEL_19:
    operator delete(v9);
  }

LABEL_20:
  v15 = *&buf[8];
  v16 = *&buf[16];
  *&__p[24] = *&buf[24];
  *&__p[27] = *&buf[27];
  v17 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v14)
  {
    v18 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (v17 < 0)
      {
        std::string::__init_copy_ctor_external(__p, v15, v16);
        v22 = __p[23] >= 0 ? __p : *__p;
      }

      else
      {
        *__p = v15;
        *&__p[8] = v16;
        *&__p[16] = *&__p[24];
        *&__p[19] = *&__p[27];
        __p[23] = v17;
        v22 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopFWUpdate:]";
      *&buf[12] = 1024;
      *&buf[14] = 569;
      *&buf[18] = 2080;
      *&buf[20] = v22;
      *&buf[28] = 1024;
      *&buf[30] = v14;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to router res.errorCode() : %s(%d)", buf, 0x22u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  [(ThreadNetworkManagerInstance *)self performDiscoveryScanInSRMode];
  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) stopFWUpdate:]";
    *&buf[12] = 1024;
    *&buf[14] = 577;
    *&buf[18] = 1024;
    *&buf[20] = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s:%d Exiting ret : %d", buf, 0x18u);
  }

  [(ThreadNetworkManagerInstance *)self CAnoteStopProcessReqTimeSuccessOrFail:1 isProcessPairing:0];
  if (v17 < 0)
  {
    operator delete(v15);
  }

  objc_destroyWeak(&location);
  return 0;
}

- (void)registerStateMachineWedEventHandlers
{
  v3 = objc_initWeak(&location, self);
  v4 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v26, "TNMWakeOnDeviceConnectionStatus");
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke;
  v24[3] = &unk_1004C85D0;
  objc_copyWeak(&v25, &location);
  v5 = [(ThreadNetworkManagerInstance *)self tnmWedStatusChangeQueue];
  v23 = v5;
  [v4 setEventHandler:v26 InternalClientEventBlock:v24 dqueue:&v23];
  v6 = v23;
  v23 = 0;

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "ReceivedAdv");
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke_22;
  v19[3] = &unk_1004C85D0;
  objc_copyWeak(&v20, &location);
  v8 = [(ThreadNetworkManagerInstance *)self tnmNodeTypeChangeQueue];
  v18 = v8;
  [v7 setEventHandler:__p InternalClientEventBlock:v19 dqueue:&v18];
  v9 = v18;
  v18 = 0;

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v16, "AttachRetryAttemptsComplete");
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke_24;
  v14[3] = &unk_1004C85D0;
  objc_copyWeak(&v15, &location);
  v11 = [(ThreadNetworkManagerInstance *)self tnmNodeTypeChangeQueue];
  v13 = v11;
  [v10 setEventHandler:v16 InternalClientEventBlock:v14 dqueue:&v13];
  v12 = v13;
  v13 = 0;

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&location);
}

void __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = 0;
  [WeakRetained getNCPState:0];
  if (WeakRetained && [WeakRetained lastKnownNodeType] == 8)
  {
    v4 = boost::any_cast<unsigned char>(a2);
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained lastKnownNCPState];
      nl::wpantund::ncp_wed_status_to_string(v4, __p);
      v7 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109378;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v6;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ThreadConnection: kWPANTUNDEvent_TNMWakeOnDevice_Connected setEventHandler state = %d, child Status = %s \n", &buf, 0x12u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      nl::wpantund::node_type_to_string([WeakRetained lastKnownNodeType], &buf);
      v9 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "[ThreadNetworkManagerInstance(SM_extension) registerStateMachineWedEventHandlers]_block_invoke";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 603;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d Notify Wed Status Change, lastKnownNodeType = [%s]", __p, 0x1Cu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    [WeakRetained notifyOnWedStatusChange:v4];
  }

  else
  {
    v10 = boost::any_cast<unsigned char>(a2);
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      nl::wpantund::node_type_to_string([WeakRetained lastKnownNodeType], &buf);
      v12 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = "[ThreadNetworkManagerInstance(SM_extension) registerStateMachineWedEventHandlers]_block_invoke";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 608;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v12;
      WORD2(__p[3]) = 1024;
      *(&__p[3] + 6) = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d Ignore Wed Status Change, lastKnownNodeType = [%s], child Status = [%d]", __p, 0x22u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (v10 == 1)
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = "[ThreadNetworkManagerInstance(SM_extension) registerStateMachineWedEventHandlers]_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Make fetch request to get neighbor MLEID", __p, 0xCu);
      }

      v14 = [WeakRetained CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v17, "Thread:NeighborMeshLocalAddress");
      if (v14)
      {
        [v14 getProperty:v17 output:&v19];
        v15 = LODWORD(__p[0]) == 0;
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        memset(__p, 0, 32);
        v15 = 1;
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (!v15)
      {
        v16 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke_cold_1();
        }
      }
    }
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }
}

void __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_ReceivedAdv setEventHandler\n ", v6, 2u);
  }

  if (WeakRetained)
  {
    v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained lastKnownNCPState];
      v5 = [WeakRetained modeChangeInProgress];
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_ReceivedAdv setEventHandler state = %d, modeChangeInProgress = %d\n ", v6, 0xEu);
    }

    [WeakRetained handleAdv];
  }
}

void __82__ThreadNetworkManagerInstance_SM_extension__registerStateMachineWedEventHandlers__block_invoke_24(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained getNCPState:0];
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete setEventHandler\n ", v9, 2u);
  }

  v5 = any_to_int(a2);
  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained lastKnownNCPState];
    v8 = "full router/sleepy router";
    if (v5 == 9)
    {
      v8 = "child";
    }

    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2080;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete setEventHandler state = %d, NewNode = %s \n", v9, 0x12u);
  }

  if (WeakRetained)
  {
    [WeakRetained nodeChangeToChildStatus:v5];
  }
}

- (void)notifyWedUnsolictedDisconnect
{
  v3 = objc_initWeak(&location, self);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) notifyWedUnsolictedDisconnect]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if ([(ThreadNetworkManagerInstance *)self isWedSessionEnabled])
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) notifyWedUnsolictedDisconnect]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Daemon Crashed during active Wed Connection, Notify HK", &buf, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self setWedStatus:0];
    if (self)
    {
      [(ThreadNetworkManagerInstance *)self getPersistedWedAddr];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    if (self)
    {
      [(ThreadNetworkManagerInstance *)self getPersistedWedMleid];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = buf;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = v8;
    }

    [(ThreadNetworkManagerInstance *)self notifyHK:&v7 wedMleid:&v6 discReason:2];
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    [(ThreadNetworkManagerInstance *)self clearWedDevice:*&v6.__r_.__value_.__l.__data_];
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  objc_destroyWeak(&location);
}

- (void)persistWedSession:()basic_string<char wedMleid:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v4 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  v5 = v3;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    v7 = *a3;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
  }

  else
  {
    __p = *v5;
  }

  RcpHostContext::persistWedSession(v4, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

- (void)persistDefaultChildNode:(BOOL)a3
{
  v4 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  RcpHostContext::persistDefaultChildNode(v4, a3);
}

- (BOOL)getDefaultChildNode
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::getDefaultChildNodeFlag(v3);
}

- (void)persistGeoAvailable:(BOOL)a3
{
  v4 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  RcpHostContext::persistGeoAvailable(v4, a3);
}

- (BOOL)isGeoAvailable
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::getPersistedGeoAvailableFlag(v3);
}

- (basic_string<char,)getPersistedWedAddr
{
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  RcpHostContext::getPersistedWedAddr(retstr);
  return result;
}

- (basic_string<char,)getPersistedWedMleid
{
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  RcpHostContext::getPersistedWedMleid(retstr);
  return result;
}

- (BOOL)isWedSessionEnabled
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isWedSessionEnabled(v3);
}

- (BOOL)isStateMachineWedEnabled
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isStateMachineEnabled(v3);
}

- (void)nodeChangeToChildStatus:(unsigned __int8)a3
{
  v3 = a3;
  v5 = objc_initWeak(&location, self);
  v41 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v7 = xpc_null_create();
  }

  v8 = v7;
  v9 = v8;
  v38 = v8;
  if (v8)
  {
    if (xpc_get_type(v8) != &_xpc_type_dictionary)
    {
      v38 = xpc_null_create();
    }
  }

  else
  {
    v38 = xpc_null_create();
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) nodeChangeToChildStatus:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete setEventHandler %s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v11 = *buf;
  v37[0] = *&buf[16];
  *(v37 + 3) = *&buf[19];
  v12 = buf[23];
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8)
  {
    if (v3 == 9)
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete Mode change successfully to NodeType:child, Notify HK";
LABEL_34:
        v23 = v13;
        v24 = 2;
        goto LABEL_35;
      }
    }

    else
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(ThreadNetworkManagerInstance *)self lastKnownNCPState];
        *buf = 67109120;
        *&buf[4] = v22;
        v14 = "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete unexpected in state = %d";
        v23 = v13;
        v24 = 8;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v14, buf, v24);
        goto LABEL_47;
      }
    }

    goto LABEL_47;
  }

  [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:0];
  v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete Mode change to child", buf, 2u);
  }

  if (![(ThreadNetworkManagerInstance *)self isNonWedFWUpdateProgressInChildRole]&& ![(ThreadNetworkManagerInstance *)self isWedFWUpdateProgressInChildRole])
  {
    v26 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "ThreadConnection: kWPANTUNDEvent_AttachRetryAttemptsComplete Mode change not successful, fallback to Sleepy Router Node", buf, 2u);
    }

    v27 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(v33, "Network:NodeType");
    if (v27)
    {
      [v27 setProperty:v33 property_val:"sleepy-router"];
      v28 = *buf;
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v28 = 0;
      memset(buf, 0, 32);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_43:
        v11 = *&buf[8];
        v29 = *&buf[16];
        v37[0] = *&buf[24];
        *(v37 + 3) = *&buf[27];
        v12 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        if (v28)
        {
          v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            if (v12 < 0)
            {
              std::string::__init_copy_ctor_external(&v32, v11, v29);
              v31 = (v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v32 : v32.__r_.__value_.__r.__words[0];
            }

            else
            {
              v32.__r_.__value_.__r.__words[0] = v11;
              v32.__r_.__value_.__l.__size_ = v29;
              LODWORD(v32.__r_.__value_.__r.__words[2]) = v37[0];
              *(&v32.__r_.__value_.__r.__words[2] + 3) = *(v37 + 3);
              *(&v32.__r_.__value_.__s + 23) = v12;
              v31 = &v32;
            }

            *buf = 136315906;
            *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) nodeChangeToChildStatus:]";
            *&buf[12] = 1024;
            *&buf[14] = 808;
            *&buf[18] = 2080;
            *&buf[20] = v31;
            *&buf[28] = 1024;
            *&buf[30] = v28;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to sleepy router res.errorCode() : %s(%d)", buf, 0x22u);
            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    operator delete(v11);
    goto LABEL_43;
  }

  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(ThreadNetworkManagerInstance *)self isNonWedFWUpdateProgressInChildRole];
    v18 = [(ThreadNetworkManagerInstance *)self isWedFWUpdateProgressInChildRole];
    *buf = 67109376;
    *&buf[4] = v17;
    *&buf[8] = 1024;
    *&buf[10] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Start FW Update: isNonWedFWUpdateProgressInChildRole [%d], isWedFWUpdateProgressInChildRole [%d]", buf, 0xEu);
  }

  v19 = [(ThreadNetworkManagerInstance *)self isWedFWUpdateProgressInChildRole];
  v20 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Thread:EmacId");
  if (v20)
  {
    [v20 getProperty:__p output:&v41];
    v21 = *buf == 0;
    if ((buf[31] & 0x80000000) != 0)
    {
      operator delete(*&buf[8]);
    }
  }

  else
  {
    memset(buf, 0, 32);
    v21 = 1;
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v21)
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) nodeChangeToChildStatus:];
    }

    goto LABEL_47;
  }

  boost::any_cast<std::string>(&v41, buf);
  *v39 = *buf;
  v40 = *&buf[16];
  if (buf[23] >= 0)
  {
    v25 = v39;
  }

  else
  {
    v25 = v39[0];
  }

  if ([(ThreadNetworkManagerInstance *)self startFWUpdate:v25 isWED:v19 output:&v38])
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "ThreadConnection: Implicit Start FW Update not successful";
      goto LABEL_34;
    }

LABEL_47:
  }

LABEL_48:
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v30 = v38;
  v38 = 0;

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  objc_destroyWeak(&location);
}

- (void)handleRouterModeFailSafeTrigger
{
  v3 = objc_initWeak(&location, self);
  v25.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v28, "Command Error");
  v4 = *v28;
  v5 = v28[23];
  v6 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:NodeType");
  if (v6)
  {
    [v6 getProperty:__p output:&v25];
    v7 = *v28 == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v28, 0, 32);
  v7 = 1;
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }

LABEL_4:
  v8 = *&v28[8];
  v9 = v28[31];
  v28[31] = 0;
  v28[8] = 0;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    any_to_string(&v25, v28);
    v10 = nl::wpantund::string_to_node_type(v28);
    if ((v28[23] & 0x80000000) != 0)
    {
      operator delete(*v28);
    }

    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      nl::wpantund::node_type_to_string(v10, v28);
      v12 = v28[23] >= 0 ? v28 : *v28;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) handleRouterModeFailSafeTrigger]";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: current node type: %s", &buf, 0x16u);
      if ((v28[23] & 0x80000000) != 0)
      {
        operator delete(*v28);
      }
    }

    if (v10 == 7 || v10 == 1)
    {
      [(ThreadNetworkManagerInstance *)self reset];
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        nl::wpantund::node_type_to_string(v10, &buf);
        v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v15 = buf.__r_.__value_.__r.__words[0];
        v16 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
        *&v28[4] = "[ThreadNetworkManagerInstance(SM_extension) handleRouterModeFailSafeTrigger]";
        p_buf = &buf;
        *v28 = 136315906;
        if (v14 < 0)
        {
          p_buf = v15;
        }

        *&v28[12] = 1024;
        *&v28[14] = 833;
        *&v28[18] = 2080;
        *&v28[20] = p_buf;
        *&v28[28] = 2080;
        *&v28[30] = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d Current Node = [%s], transition to New Node = [%s]", v28, 0x26u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v18 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      std::string::basic_string[abi:ne200100]<0>(v21, "Network:NodeType");
      v19 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
      if (v18)
      {
        [v18 setProperty:v21 property_val:v19];
        if ((v9 & 0x80000000) == 0)
        {
LABEL_24:
          v8 = *&v28[8];
          LOBYTE(v9) = v28[31];
          v28[31] = 0;
          v28[8] = 0;
          if (v22 < 0)
          {
            operator delete(v21[0]);
          }

          goto LABEL_30;
        }
      }

      else
      {
        memset(v28, 0, 32);
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      operator delete(v8);
      goto LABEL_24;
    }
  }

  else
  {
    v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) handleRouterModeFailSafeTrigger];
    }
  }

LABEL_30:
  if ((v9 & 0x80) != 0)
  {
    operator delete(v8);
  }

  if (v25.var0)
  {
    (*(*v25.var0 + 8))(v25.var0);
  }

  objc_destroyWeak(&location);
}

- (void)handleAdv
{
  v3 = objc_initWeak(&location, self);
  v40.var0 = 0;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v5 = *buf;
  v6 = buf[23];
  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:NodeType");
  if (v7)
  {
    [v7 getProperty:__p output:&v40];
    v8 = *buf == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  memset(buf, 0, 32);
  v8 = 1;
  if (v6 < 0)
  {
LABEL_5:
    operator delete(v5);
  }

LABEL_6:
  v9 = *&buf[8];
  v10 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    any_to_string(&v40, buf);
    v11 = nl::wpantund::string_to_node_type(buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v11 == 7 || v11 == 1)
    {
      if (([(ThreadNetworkManagerInstance *)self stopPairingRequest]|| ![(ThreadNetworkManagerInstance *)self isPairing]) && [(ThreadNetworkManagerInstance *)self numAdvDuringPairing]>= 9)
      {
        [(ThreadNetworkManagerInstance *)self reset];
        v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          nl::wpantund::node_type_to_string(v11, &v37);
          v13 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
          v14 = v37.__r_.__value_.__r.__words[0];
          v15 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
          v16 = &v37;
          *buf = 136315906;
          if (v13 < 0)
          {
            v16 = v14;
          }

          *&buf[12] = 1024;
          *&buf[14] = 858;
          *&buf[18] = 2080;
          *&buf[20] = v16;
          *&buf[28] = 2080;
          *&buf[30] = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s:%d Current Node = [%s], transition to New Node = [%s]", buf, 0x26u);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }

        v17 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
        std::string::basic_string[abi:ne200100]<0>(v35, "Network:NodeType");
        v18 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
        if (v17)
        {
          [v17 setProperty:v35 property_val:v18];
          if ((v10 & 0x80000000) == 0)
          {
LABEL_23:
            v9 = *&buf[8];
            LOBYTE(v10) = buf[31];
            buf[31] = 0;
            buf[8] = 0;
            if (v36 < 0)
            {
              operator delete(v35[0]);
            }

            goto LABEL_49;
          }
        }

        else
        {
          memset(buf, 0, 32);
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v9);
        goto LABEL_23;
      }

      [(ThreadNetworkManagerInstance *)self setFoundAdvDuringPairing:1];
      [(ThreadNetworkManagerInstance *)self setNumAdvDuringPairing:([(ThreadNetworkManagerInstance *)self numAdvDuringPairing]+ 1)];
      v20 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(ThreadNetworkManagerInstance *)self numAdvDuringPairing];
        v22 = [(ThreadNetworkManagerInstance *)self stopPairingRequest];
        v23 = [(ThreadNetworkManagerInstance *)self isPairing];
        v24 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
        *buf = 136316418;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
        *&buf[12] = 1024;
        *&buf[14] = 864;
        *&buf[18] = 1024;
        *&buf[20] = v21;
        *&buf[24] = 1024;
        *&buf[26] = v22;
        *&buf[30] = 1024;
        *&buf[32] = v23;
        *&buf[36] = 2080;
        v43 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d foundAdvDuringPairing [%d], stopPairingRequest [%d], isPairing [%d], ready to transition to %s", buf, 0x2Eu);
      }
    }

    else
    {
      v25 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(ThreadNetworkManagerInstance *)self lastKnownNCPState];
        v27 = [(ThreadNetworkManagerInstance *)self modeChangeInProgress];
        v28 = [(ThreadNetworkManagerInstance *)self wedStatus];
        v29 = [(ThreadNetworkManagerInstance *)self wedAttachRequest];
        *buf = 136316418;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
        *&buf[12] = 1024;
        *&buf[14] = 869;
        *&buf[18] = 1024;
        *&buf[20] = v26;
        *&buf[24] = 1024;
        *&buf[26] = v27;
        *&buf[30] = 1024;
        *&buf[32] = v28;
        *&buf[36] = 1024;
        LODWORD(v43) = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d ThreadConnection: lastKnownNCPState=[%d], modeChangeInProgress=[%d], wedStatus=[%d], wedAttachRequest=[%d]", buf, 0x2Au);
      }

      if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]!= 8 || [(ThreadNetworkManagerInstance *)self modeChangeInProgress]|| [(ThreadNetworkManagerInstance *)self wedStatus]|| [(ThreadNetworkManagerInstance *)self wedAttachRequest])
      {
        if (([(ThreadNetworkManagerInstance *)self wedAttachRequest]|| [(ThreadNetworkManagerInstance *)self wedStatus]== 1) && ![(ThreadNetworkManagerInstance *)self modeChangeInProgress])
        {
          v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
            *&buf[12] = 1024;
            *&buf[14] = 880;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s:%d ThreadConnection: Use the ADV as a hint to transition to Child Role ", buf, 0x12u);
          }

          [(ThreadNetworkManagerInstance *)self setFoundAdvFlags];
        }

        v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v31 = [(ThreadNetworkManagerInstance *)self lastKnownNCPState];
          v32 = [(ThreadNetworkManagerInstance *)self modeChangeInProgress];
          v33 = [(ThreadNetworkManagerInstance *)self wedStatus];
          v34 = [(ThreadNetworkManagerInstance *)self wedAttachRequest];
          *buf = 136316418;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
          *&buf[12] = 1024;
          *&buf[14] = 883;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 1024;
          *&buf[26] = v32;
          *&buf[30] = 1024;
          *&buf[32] = v33;
          *&buf[36] = 1024;
          LODWORD(v43) = v34;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d ThreadConnection: lastKnownNCPState = [%d], modeChangeInProgress = [%d], wedStatus = [%d], wedAttachRequest = [%d]", buf, 0x2Au);
        }
      }

      else
      {
        if (v11 == 8)
        {
          [(ThreadNetworkManagerInstance *)self transitionToChildNodeHelper];
          goto LABEL_49;
        }

        v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) handleAdv]";
          *&buf[12] = 1024;
          *&buf[14] = 874;
          *&buf[18] = 1024;
          *&buf[20] = v11;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d ThreadConnection: Ignore ADV, network Node Type:[%d]", buf, 0x18u);
        }
      }
    }

    goto LABEL_49;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance(SM_extension) handleAdv];
  }

LABEL_49:
  if ((v10 & 0x80) != 0)
  {
    operator delete(v9);
  }

  if (v40.var0)
  {
    (*(*v40.var0 + 8))(v40.var0);
  }

  objc_destroyWeak(&location);
}

- (void)notifyOnNodeStatusChange
{
  v3 = objc_initWeak(&location, self);
  v23 = 0;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(ThreadNetworkManagerInstance *)self lastKnownNodeType];
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) notifyOnNodeStatusChange]";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s, lastKnownNodeType = [%d]", buf, 0x12u);
  }

  if (![(ThreadNetworkManagerInstance *)self isStateMachineWedEnabled])
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) notifyOnNodeStatusChange]";
      *&buf[12] = 1024;
      *&buf[14] = 965;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ThreadConnection: %s:%d State Machine Disabled notifyOnNodeStatusChange ignored", buf, 0x12u);
    }

    goto LABEL_35;
  }

  if (![(ThreadNetworkManagerInstance *)self lastKnownNodeType])
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ThreadConnection: Mode Uknown, Notify HK \n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    objc_claimAutoreleasedReturnValue();
    std::string::basic_string[abi:ne200100]<0>(v22, "ThreadNetworkConnectionStatus");
    operator new();
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 1 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 7)
  {
    [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:0];
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Mode Full Router, Notify HK \n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    objc_claimAutoreleasedReturnValue();
    std::string::basic_string[abi:ne200100]<0>(v21, "ThreadNetworkConnectionStatus");
    operator new();
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 8)
  {
    [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:0];
    if ([(ThreadNetworkManagerInstance *)self networkNodeTypeChangeNotify])
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Dispatch _semaphoreNetworkNodeTypeChange \n", buf, 2u);
      }

      v14 = [(ThreadNetworkManagerInstance *)self semaphoreNetworkNodeTypeChange];
      dispatch_semaphore_signal(v14);
    }

    v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Mode Sleepy Router, Notify HK \n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    objc_claimAutoreleasedReturnValue();
    std::string::basic_string[abi:ne200100]<0>(v20, "ThreadNetworkConnectionStatus");
    operator new();
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 3 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 4)
  {
    [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:0];
    [(ThreadNetworkManagerInstance *)self resetFoundAdvFlags];
    v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Mode SED/SSED, Notify HK \n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    objc_claimAutoreleasedReturnValue();
    std::string::basic_string[abi:ne200100]<0>(v19, "ThreadNetworkConnectionStatus");
    operator new();
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 8)
  {
    [(ThreadNetworkManagerInstance *)self setWasChildStatus:[(ThreadNetworkManagerInstance *)self getWasChildStatus]];
    if ([(ThreadNetworkManagerInstance *)self isDiscoveryScanAllowed])
    {
      [(ThreadNetworkManagerInstance *)self startQuickDiscoveryScanInSRMode];
      [(ThreadNetworkManagerInstance *)self startPeriodicDiscoveryScanInSRMode];
    }

    else
    {
      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Not Starting SR Discovery Scan as GEO is off in Thread Start \n", buf, 2u);
      }
    }
  }

  else
  {
    [(ThreadNetworkManagerInstance *)self stopPeriodicDiscoveryScanInSRMode];
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 3 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 4)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Mode SED/SSED, fetch Parent MLEID \n", buf, 2u);
    }

    v11 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(__p, "Thread:NeighborMeshLocalAddress");
    if (v11)
    {
      [v11 getProperty:__p output:&v23];
      v12 = *buf == 0;
      if (buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }
    }

    else
    {
      memset(buf, 0, 32);
      v12 = 1;
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v12)
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance(SM_extension) notifyOnNodeStatusChange];
      }

LABEL_35:
    }
  }

  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  objc_destroyWeak(&location);
}

- (void)notifyHK:()basic_string<char wedMleid:()std:(std::allocator<char>> *)a3 :char_traits<char> discReason:
{
  v3 = objc_initWeak(&location, self);
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  std::string::basic_string[abi:ne200100]<0>(buf, "mleid");
  __p = buf;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v5, buf);
  boost::any::operator=<std::string &>();
}

- (void)reset
{
  v3 = objc_initWeak(&location, self);
  v4 = dispatch_semaphore_create(0);
  [(ThreadNetworkManagerInstance *)self setSemaphoreNetworkNodeTypeChange:v4];

  v5 = dispatch_semaphore_create(0);
  [(ThreadNetworkManagerInstance *)self setSemaphoreWakeOnDeviceChange:v5];

  [(ThreadNetworkManagerInstance *)self setWedAttachRequest:0];
  [(ThreadNetworkManagerInstance *)self setStopPairingRequest:0];
  [(ThreadNetworkManagerInstance *)self setFoundAdvDuringPairing:0];
  [(ThreadNetworkManagerInstance *)self setNumAdvDuringPairing:0];
  if ([(ThreadNetworkManagerInstance *)self wedStatus]== 2)
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[ThreadNetworkManagerInstance(SM_extension) reset]";
      v10 = 1024;
      v11 = 1067;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d Reset WedStatus to allow ADV handling", buf, 0x12u);
    }

    [(ThreadNetworkManagerInstance *)self setWedStatus:0];
  }

  objc_destroyWeak(&location);
}

- (void)clearWedDevice
{
  v3 = objc_initWeak(&location, self);
  std::string::basic_string[abi:ne200100]<0>(v6, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  [(ThreadNetworkManagerInstance *)self persistWedSession:v6 wedMleid:__p];
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  objc_destroyWeak(&location);
}

- (BOOL)getPairingStatus
{
  v3 = objc_initWeak(&location, self);
  v4 = [(ThreadNetworkManagerInstance *)self isPairing];

  objc_destroyWeak(&location);
  return v4;
}

- (void)resetPairingStatus
{
  v3 = objc_initWeak(&location, self);
  [(ThreadNetworkManagerInstance *)self setIsPairing:0];

  objc_destroyWeak(&location);
}

- (void)resetFoundAdvFlags
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[ThreadNetworkManagerInstance(SM_extension) resetFoundAdvFlags]";
    v6 = 1024;
    v7 = 1103;
    v8 = 1024;
    v9 = [(ThreadNetworkManagerInstance *)self foundAdvDuringWedConnectionAttempt];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d Reset ADV flags [%d]", &v4, 0x18u);
  }

  [(ThreadNetworkManagerInstance *)self setFoundAdvDuringWedConnectionAttempt:0];
}

- (void)transitionToChildNodeHelper
{
  [(ThreadNetworkManagerInstance *)self resetFoundAdvFlags];
  [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:1];
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) transitionToChildNodeHelper]";
    *&buf[12] = 1024;
    *&buf[14] = 1114;
    *&buf[18] = 2080;
    *&buf[20] = [(ThreadNetworkManagerInstance *)self defaultChildNode];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d ThreadConnection: kWPANTUNDEvent_ReceivedAdv setEventHandler : Received ADV , transition to Child Node = [%s]\n", buf, 0x1Cu);
  }

  v4 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:NodeType");
  v5 = [(ThreadNetworkManagerInstance *)self defaultChildNode];
  if (v4)
  {
    [v4 setProperty:__p property_val:v5];
    v6 = *buf;
    v7 = *&buf[8];
    v8 = *&buf[16];
    v9 = buf[31];
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    memset(buf, 0, 32);
  }

  v15[0] = *&buf[24];
  *(v15 + 3) = *&buf[27];
  buf[31] = 0;
  buf[8] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if ((v9 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v12, v7, v8);
        v11 = (v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v12 : v12.__r_.__value_.__r.__words[0];
      }

      else
      {
        v12.__r_.__value_.__r.__words[0] = v7;
        v12.__r_.__value_.__l.__size_ = v8;
        LODWORD(v12.__r_.__value_.__r.__words[2]) = v15[0];
        *(&v12.__r_.__value_.__r.__words[2] + 3) = *(v15 + 3);
        *(&v12.__r_.__value_.__s + 23) = v9;
        v11 = &v12;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) transitionToChildNodeHelper]";
      *&buf[12] = 1024;
      *&buf[14] = 1118;
      *&buf[18] = 2080;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s:%d: Failed to set the network Node Type to child res.errorCode() : %s(%d)", buf, 0x22u);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((v9 & 0x80) != 0)
  {
    operator delete(v7);
  }
}

- (void)transitionToChildNode:(dict *)a3
{
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) transitionToChildNode:]";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 1126;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d Check if possible to transition to Child role", &buf, 0x12u);
  }

  if ([(ThreadNetworkManagerInstance *)self foundAdvDuringWedConnectionAttempt]&& [(ThreadNetworkManagerInstance *)self wedStatus]!= 1)
  {
    std::to_string(&buf, 3000);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v8 = xpc_string_create(p_buf);
    v12 = v8;
    if (!v8)
    {
      v12 = xpc_null_create();
    }

    v11[0] = a3;
    v11[1] = "delayWedConnectionRetryRequest";
    xpc::dict::object_proxy::operator=(v11, &v12, &v13);
    v9 = v13;
    v13 = 0;

    v10 = v12;
    v12 = 0;

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    [(ThreadNetworkManagerInstance *)self transitionToChildNodeHelper];
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance(SM_extension) transitionToChildNode:]";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 1132;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d Not possible to transition to Child role as no ADV found/or Wed connected", &buf, 0x12u);
    }
  }
}

- (void)clearProvideEmacTracker
{
  [(ThreadNetworkManagerInstance *)self printProvideEmacTracker];
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(ThreadNetworkManagerInstance(SM_extension) *)v2 clearProvideEmacTracker];
  }

  std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(&ProvideEmacTracker, qword_1004E5A50);
  ProvideEmacTracker = &qword_1004E5A50;
  qword_1004E5A58 = 0;
  qword_1004E5A50 = 0;
}

- (void)printProvideEmacTracker
{
  v2 = ProvideEmacTracker;
  if (ProvideEmacTracker != &qword_1004E5A50)
  {
    do
    {
      v3 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v7 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v7 = *v7;
        }

        v8 = *(v2 + 56);
        *buf = 136315650;
        v10 = "[ThreadNetworkManagerInstance(SM_extension) printProvideEmacTracker]";
        v11 = 2080;
        v12 = v7;
        v13 = 1024;
        v14 = v8;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: key=[%s], value=[%d]", buf, 0x1Cu);
      }

      v4 = *(v2 + 8);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 16);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != &qword_1004E5A50);
  }
}

- (void)eraseKeyFromProvideEmacTracker:()basic_string<char
{
  stringToLowercase(a3, __p);
  if (std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(&ProvideEmacTracker, __p) == &qword_1004E5A50)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (v10 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], v8);
      [(ThreadNetworkManagerInstance(SM_extension) *)v8 eraseKeyFromProvideEmacTracker:buf, v5, v4];
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v10 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136315394;
      v12 = "[ThreadNetworkManagerInstance(SM_extension) eraseKeyFromProvideEmacTracker:]";
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: erase wedAddr=[%s]", buf, 0x16u);
    }

    std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__erase_unique<std::string>(&ProvideEmacTracker, __p);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (BOOL)getFWUpdateStatus
{
  v3 = objc_initWeak(&location, self);
  v4 = [(ThreadNetworkManagerInstance *)self isFWUpdateInProgress];

  objc_destroyWeak(&location);
  return v4;
}

- (void)resetFWUpdateStatus
{
  v3 = objc_initWeak(&location, self);
  [(ThreadNetworkManagerInstance *)self setIsFWUpdateInProgress:0];

  objc_destroyWeak(&location);
}

- (void)disconnectActiveWedConnection
{
  v3 = objc_initWeak(&location, self);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v5 = xpc_null_create();
  }

  v6 = v5;
  v7 = v6;
  v10 = v6;
  if (v6)
  {
    v8 = v6;
    if (xpc_get_type(v6) != &_xpc_type_dictionary)
    {
      v8 = xpc_null_create();
      v10 = v8;
    }
  }

  else
  {
    v8 = xpc_null_create();
    v10 = v8;
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8 && [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 8 && [(ThreadNetworkManagerInstance *)self wedStatus]== 1)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[ThreadNetworkManagerInstance(SM_extension) disconnectActiveWedConnection]";
      v14 = 1024;
      v15 = 1197;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d Thread session Close: Disconnect active Wed Connection ", buf, 0x12u);
    }

    [(ThreadNetworkManagerInstance *)self provideExtendedMACAddress:0 output:&v10];
    v8 = v10;
  }

  v10 = 0;

  objc_destroyWeak(&location);
}

- (BOOL)checkIfDuplicateWedAttachRequest:(const char *)a3
{
  v5 = objc_initWeak(&location, self);
  std::string::basic_string[abi:ne200100]<0>(v20, a3);
  v19.var0 = 0;
  v6 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:WedExtendedAddress");
  if (v6)
  {
    [v6 getProperty:__p output:&v19];
    v7 = *buf == 0;
    if (buf[31] < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  else
  {
    memset(buf, 0, 32);
    v7 = 1;
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    any_to_string(&v19, v15);
    v8 = stringEqualCaseInsensitive(v15, v20);
    if (v8)
    {
      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v10 = v15;
      if (v16 < 0)
      {
        v10 = v15[0];
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) checkIfDuplicateWedAttachRequest:]";
      *&buf[12] = 1024;
      *&buf[14] = 1217;
      *&buf[18] = 2080;
      *&buf[20] = a3;
      *&buf[28] = 2080;
      *&buf[30] = v10;
      v11 = "%s:%d Duplicate wed attach request found, input extendedMACAddress : %s, stored MAC addr :%s";
    }

    else
    {
      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v13 = v15;
      if (v16 < 0)
      {
        v13 = v15[0];
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) checkIfDuplicateWedAttachRequest:]";
      *&buf[12] = 1024;
      *&buf[14] = 1222;
      *&buf[18] = 2080;
      *&buf[20] = a3;
      *&buf[28] = 2080;
      *&buf[30] = v13;
      v11 = "%s:%d Not a Duplicate wed attach request, input extendedMACAddress : %s, stored MAC addr :%s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x26u);
LABEL_21:

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    goto LABEL_23;
  }

  v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance(SM_extension) notifyOnWedStatusChange:];
  }

  LOBYTE(v8) = 0;
LABEL_23:
  if (v19.var0)
  {
    (*(*v19.var0 + 8))(v19.var0);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  objc_destroyWeak(&location);
  return v8;
}

- (void)UpdateOutputWithBackOffTimerValue:(const char *)a3 output:(dict *)a4
{
  v7 = objc_initWeak(&location, self);
  v8 = std::string::basic_string[abi:ne200100]<0>(buf, a3);
  stringToLowercase(v8, __p);
  if (SBYTE3(v69) < 0)
  {
    operator delete(*buf);
  }

  if ([(ThreadNetworkManagerInstance *)self isPairing])
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v60 = a4;
      v61 = "delayWedConnectionRetryRequest";
      v10 = xpc::dict::object_proxy::operator*(&v60);
      *buf = 136315650;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) UpdateOutputWithBackOffTimerValue:output:]";
      v66 = 1024;
      v67 = 1238;
      v68 = 2112;
      v69 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s:%d PairingInProgress output[DELAY_WED_CONNECTION_RETRY_REQUEST_KEY] = %@", buf, 0x1Cu);
    }

    std::to_string(buf, 500);
    if (SBYTE3(v69) >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v12 = xpc_string_create(v11);
    v58 = v12;
    if (!v12)
    {
      v58 = xpc_null_create();
    }

    v60 = a4;
    v61 = "delayWedConnectionRetryRequest";
    xpc::dict::object_proxy::operator=(&v60, &v58, &v59);
    v13 = v59;
    v59 = 0;

    v14 = v58;
    v58 = 0;

    if (SBYTE3(v69) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_ / 1000;
    if (std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(&ProvideEmacTracker, __p) == &qword_1004E5A50)
    {
      *buf = __p;
      *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56) = 1;
      *buf = __p;
      *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 64) = v15;
      std::to_string(buf, 500);
      if (SBYTE3(v69) >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      v17 = xpc_string_create(v16);
      v48 = v17;
      if (!v17)
      {
        v48 = xpc_null_create();
      }

      v60 = a4;
      v61 = "delayWedConnectionRetryRequest";
      xpc::dict::object_proxy::operator=(&v60, &v48, &v49);
      v18 = v49;
      v49 = 0;

      v19 = v48;
      v48 = 0;

      if (SBYTE3(v69) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      *buf = __p;
      v20 = std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p);
      ++*(v20 + 56);
      *buf = __p;
      v21 = *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 64);
      *buf = __p;
      *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 64) = v15;
      v22 = v15.__d_.__rep_ - v21;
      if ((v15.__d_.__rep_ - v21) < 0x493E1)
      {
        *buf = __p;
        if (*(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56) > 2u)
        {
          *buf = __p;
          if (*(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56) < 3u || (*buf = __p, *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56) > 0x14u))
          {
            std::to_string(buf, 10000);
            if (SBYTE3(v69) >= 0)
            {
              v36 = buf;
            }

            else
            {
              v36 = *buf;
            }

            v37 = xpc_string_create(v36);
            v50 = v37;
            if (!v37)
            {
              v50 = xpc_null_create();
            }

            v60 = a4;
            v61 = "delayWedConnectionRetryRequest";
            xpc::dict::object_proxy::operator=(&v60, &v50, &v51);
            v38 = v51;
            v51 = 0;

            v39 = v50;
            v50 = 0;
          }

          else
          {
            v60 = __p;
            v31 = std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p);
            std::to_string(buf, 500 * *(v31 + 56));
            if (SBYTE3(v69) >= 0)
            {
              v32 = buf;
            }

            else
            {
              v32 = *buf;
            }

            v33 = xpc_string_create(v32);
            v52 = v33;
            if (!v33)
            {
              v52 = xpc_null_create();
            }

            v60 = a4;
            v61 = "delayWedConnectionRetryRequest";
            xpc::dict::object_proxy::operator=(&v60, &v52, &v53);
            v34 = v53;
            v53 = 0;

            v35 = v52;
            v52 = 0;
          }
        }

        else
        {
          std::to_string(buf, 500);
          if (SBYTE3(v69) >= 0)
          {
            v27 = buf;
          }

          else
          {
            v27 = *buf;
          }

          v28 = xpc_string_create(v27);
          v54 = v28;
          if (!v28)
          {
            v54 = xpc_null_create();
          }

          v60 = a4;
          v61 = "delayWedConnectionRetryRequest";
          xpc::dict::object_proxy::operator=(&v60, &v54, &v55);
          v29 = v55;
          v55 = 0;

          v30 = v54;
          v54 = 0;
        }
      }

      else
      {
        *buf = __p;
        *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56) = 1;
        std::to_string(buf, 500);
        if (SBYTE3(v69) >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        v24 = xpc_string_create(v23);
        v56 = v24;
        if (!v24)
        {
          v56 = xpc_null_create();
        }

        v60 = a4;
        v61 = "delayWedConnectionRetryRequest";
        xpc::dict::object_proxy::operator=(&v60, &v56, &v57);
        v25 = v57;
        v57 = 0;

        v26 = v56;
        v56 = 0;
      }

      if (SBYTE3(v69) < 0)
      {
        operator delete(*buf);
      }

      v40 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        if (v63 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        v60 = __p;
        v42 = *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56);
        v60 = a4;
        v61 = "delayWedConnectionRetryRequest";
        v43 = xpc::dict::object_proxy::operator*(&v60);
        *buf = 136316418;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) UpdateOutputWithBackOffTimerValue:output:]";
        v66 = 1024;
        v67 = 1275;
        v68 = 2080;
        v69 = v41;
        v70 = 1024;
        v71 = v42;
        v72 = 2112;
        v73 = v43;
        v74 = 2048;
        v75 = v22 / 0x3E8;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s:%d: ProvideEmacTracker[%s] = %d, output[DELAY_WED_CONNECTION_RETRY_REQUEST_KEY] = %@, diff_sec(%llu)", buf, 0x36u);
      }
    }

    v44 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (v63 >= 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      v60 = __p;
      v46 = *(std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&ProvideEmacTracker, __p) + 56);
      v60 = a4;
      v61 = "delayWedConnectionRetryRequest";
      v47 = xpc::dict::object_proxy::operator*(&v60);
      *buf = 136316162;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) UpdateOutputWithBackOffTimerValue:output:]";
      v66 = 1024;
      v67 = 1288;
      v68 = 2080;
      v69 = v45;
      v70 = 1024;
      v71 = v46;
      v72 = 2112;
      v73 = v47;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s:%d ProvideEmacTracker[%s] = %d, output[DELAY_WED_CONNECTION_RETRY_REQUEST_KEY] = %@", buf, 0x2Cu);
    }
  }

  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  objc_destroyWeak(&location);
}

- (int)provideExtendedMACAddress:(const char *)a3 output:(dict *)a4
{
  v7 = objc_initWeak(&location, self);
  [(ThreadNetworkManagerInstance *)self reset];
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 1302;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d: Entered", buf, 0x12u);
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 4 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 1 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 7)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      v13 = v117;
      v14 = *v116;
      v15 = [(ThreadNetworkManagerInstance *)self lastKnownNodeType];
      v16 = v116;
      *buf = 136316162;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      if (v13 < 0)
      {
        v16 = v14;
      }

      *&buf[12] = 1024;
      *&buf[14] = 1307;
      *&buf[18] = 2080;
      *&buf[20] = v16;
      *&buf[28] = 1024;
      *&buf[30] = v15;
      *&buf[34] = 1024;
      *&buf[36] = 1;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s:%d Cmd received in state=[%s], Node=[%d], Error=[%d]", buf, 0x28u);
      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 1 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 7)
    {
      [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      objc_claimAutoreleasedReturnValue();
      std::string::basic_string[abi:ne200100]<0>(&__p, "ThreadNetworkConnectionStatus");
      operator new();
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  if ([(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 4 || [(ThreadNetworkManagerInstance *)self lastKnownNodeType]== 3)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v31 = v116;
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      if (v117 < 0)
      {
        v31 = *v116;
      }

      nl::wpantund::node_type_to_string([(ThreadNetworkManagerInstance *)self lastKnownNodeType], &v112);
      if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v112;
      }

      else
      {
        v32 = v112.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 1318;
      *&buf[18] = 2080;
      *&buf[20] = v31;
      *&buf[28] = 2080;
      *&buf[30] = v32;
      *&buf[38] = 1024;
      *&buf[40] = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s:%d Cmd received in state=[%s], Node=[%s], no-op=[%d]", buf, 0x2Cu);
      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    objc_claimAutoreleasedReturnValue();
    std::string::basic_string[abi:ne200100]<0>(&v111, "ThreadNetworkConnectionStatus");
    operator new();
  }

  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (![(ThreadNetworkManagerInstance *)self isStateMachineWedEnabled])
  {
    v23 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      [(ThreadNetworkManagerInstance(SM_extension) *)v116 provideExtendedMACAddress:a3 output:buf, v23];
    }

    goto LABEL_10;
  }

  if ([(ThreadNetworkManagerInstance *)self modeChangeInProgress])
  {
    std::to_string(buf, 3000);
    if (buf[23] >= 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    v19 = xpc_string_create(v18);
    v109 = v19;
    if (!v19)
    {
      v109 = xpc_null_create();
    }

    *v116 = a4;
    *&v116[8] = "delayWedConnectionRetryRequest";
    xpc::dict::object_proxy::operator=(v116, &v109, &v110);
    v20 = v110;
    v110 = 0;

    v21 = v109;
    v109 = 0;

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v22 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      v41 = v117;
      v42 = *v116;
      v112.__r_.__value_.__r.__words[0] = a4;
      v112.__r_.__value_.__l.__size_ = "delayWedConnectionRetryRequest";
      v43 = xpc::dict::object_proxy::operator*(&v112);
      v44 = v43;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      v45 = v116;
      *buf = 136316162;
      if (v41 < 0)
      {
        v45 = v42;
      }

      *&buf[12] = 1024;
      *&buf[14] = 1336;
      *&buf[18] = 2080;
      *&buf[20] = v45;
      *&buf[28] = 2080;
      *&buf[30] = a3;
      *&buf[38] = 2112;
      *&buf[40] = v43;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s:%d Mode change is in progress in state %s, extendedMACAddress : %s Backoff by output[DELAY_WED_CONNECTION_RETRY_REQUEST_KEY] = %@", buf, 0x30u);
      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v24 = *buf;
  v108[0] = *&buf[16];
  *(v108 + 3) = *&buf[19];
  v25 = buf[23];
  v107.var0 = 0;
  v26 = [(ThreadNetworkManagerInstance *)self validateExtendedMACAddress:a3];
  v27 = v26;
  if (v26)
  {
    if (strlen(v26) != 16)
    {
LABEL_74:
      v10 = 1;
      goto LABEL_195;
    }

    v28 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v116;
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      if (v117 < 0)
      {
        v29 = *v116;
      }

      v30 = strlen(v27);
      *buf = 136316162;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 1353;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      *&buf[28] = 2080;
      *&buf[30] = v27;
      *&buf[38] = 2048;
      *&buf[40] = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s:%d Cmd received in state %s, extendedMACAddress : %s extendedMACAddress Length = %ld", buf, 0x30u);
      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    [(ThreadNetworkManagerInstance *)self setWedAttachRequest:1];
    [(ThreadNetworkManagerInstance *)self updateWEDConnectionCount];
  }

  else if (![(ThreadNetworkManagerInstance *)self wedStatus])
  {
    v38 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      [ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:v116 output:?];
    }

    v10 = 0;
    goto LABEL_194;
  }

  v33 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v105, "Network:NodeType");
  if (v33)
  {
    [v33 getProperty:v105 output:&v107];
    v34 = *buf == 0;
  }

  else
  {
    memset(buf, 0, 32);
    v34 = 1;
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v24 = *&buf[8];
  v108[0] = *&buf[24];
  *(v108 + 3) = *&buf[27];
  v25 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  if (!v34)
  {
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Failed to get the network Node Type", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self setWedAttachRequest:0];
    goto LABEL_74;
  }

  any_to_string(&v107, buf);
  v35 = nl::wpantund::string_to_node_type(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (!v35)
  {
    v39 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Curent Node Type is unknown, switch to Sleepy router mode ", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:1];
    v40 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(v103, "Network:NodeType");
    if (v40)
    {
      [v40 setProperty:v103 property_val:"sleepy-router"];
    }

    else
    {
      memset(buf, 0, 32);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    v24 = *&buf[8];
    v108[0] = *&buf[24];
    *(v108 + 3) = *&buf[27];
    LOBYTE(v25) = buf[31];
    buf[31] = 0;
    buf[8] = 0;
    if (v104 < 0)
    {
      operator delete(v103[0]);
    }

    [(ThreadNetworkManagerInstance *)self setNetworkNodeTypeChangeNotify:1];
    v46 = dispatch_time(0, 15000000000);
    v47 = [(ThreadNetworkManagerInstance *)self semaphoreNetworkNodeTypeChange];
    v48 = dispatch_semaphore_wait(v47, v46);

    if (v48)
    {
      [(ThreadNetworkManagerInstance *)self setModeChangeInProgress:0];
      v49 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:];
      }
    }

    else
    {
      v49 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Dispatch signal semaphoreNetworkNodeTypeChange Received\n", buf, 2u);
      }
    }

    [(ThreadNetworkManagerInstance *)self setNetworkNodeTypeChangeNotify:0];
    if (v48)
    {
      goto LABEL_169;
    }
  }

  if ([(ThreadNetworkManagerInstance *)self wedStatus]!= 1 || ![(ThreadNetworkManagerInstance *)self wedAttachRequest])
  {
    goto LABEL_141;
  }

  v36 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 1402;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s:%d Already attached to WED , check for Duplicate Wed Attach request", buf, 0x12u);
  }

  if (![(ThreadNetworkManagerInstance *)self checkIfDuplicateWedAttachRequest:v27])
  {
    [(ThreadNetworkManagerInstance *)self setWakeOnDeviceChangeNotify:1];
    [(ThreadNetworkManagerInstance *)self noteTimeWhenWEDDetachStart];
    v50 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    v51 = v50;
    if (v50)
    {
      [v50 wedStop];
      v52 = *buf;
    }

    else
    {
      v52 = 0;
      memset(buf, 0, 32);
    }

    if ((v25 & 0x80) != 0)
    {
      operator delete(v24);
    }

    v24 = *&buf[8];
    v53 = *&buf[16];
    v108[0] = *&buf[24];
    *(v108 + 3) = *&buf[27];
    v25 = buf[31];
    buf[31] = 0;
    buf[8] = 0;

    if (v52)
    {
      v54 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        CtrXPC::Result::toString(v52, v116);
        if (v117 >= 0)
        {
          v92 = v116;
        }

        else
        {
          v92 = *v116;
        }

        v97 = v92;
        if (v25 < 0)
        {
          std::string::__init_copy_ctor_external(&v112, v24, v53);
          if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = &v112;
          }

          else
          {
            v93 = v112.__r_.__value_.__r.__words[0];
          }
        }

        else
        {
          v112.__r_.__value_.__r.__words[0] = v24;
          v112.__r_.__value_.__l.__size_ = v53;
          LODWORD(v112.__r_.__value_.__r.__words[2]) = v108[0];
          *(&v112.__r_.__value_.__r.__words[2] + 3) = *(v108 + 3);
          *(&v112.__r_.__value_.__s + 23) = v25;
          v93 = &v112;
        }

        nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], v101);
        if (v102 >= 0)
        {
          v94 = v101;
        }

        else
        {
          v94 = v101[0];
        }

        *buf = 136315906;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
        *&buf[12] = 2080;
        *&buf[14] = v98;
        *&buf[22] = 2080;
        *&buf[24] = v93;
        *&buf[32] = 2080;
        *&buf[34] = v94;
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s : TNM got the Failed Result for provideExtendedMACAddress as = %s, Error Info: %s, Wed Status=[%s]", buf, 0x2Au);
        if (v102 < 0)
        {
          operator delete(v101[0]);
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (v117 < 0)
        {
          operator delete(*v116);
        }
      }

      if (v52 == 14)
      {
        [(ThreadNetworkManagerInstance *)self UpdateOutputWithBackOffTimerValue:v27 output:a4];
      }

      goto LABEL_133;
    }

    v55 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v116;
      CtrXPC::Result::toString(0, v116);
      if (v117 < 0)
      {
        v56 = *v116;
      }

      if (v25 < 0)
      {
        std::string::__init_copy_ctor_external(&v112, v24, v53);
        if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v112;
        }

        else
        {
          v57 = v112.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v112.__r_.__value_.__r.__words[0] = v24;
        v112.__r_.__value_.__l.__size_ = v53;
        LODWORD(v112.__r_.__value_.__r.__words[2]) = v108[0];
        *(&v112.__r_.__value_.__r.__words[2] + 3) = *(v108 + 3);
        *(&v112.__r_.__value_.__s + 23) = v25;
        v57 = &v112;
      }

      *buf = 136315650;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&buf[12] = 2080;
      *&buf[14] = v56;
      *&buf[22] = 2080;
      *&buf[24] = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s : TNM got the Success Result for provideExtendedMACAddress detach request as = %s, Error Info: %s", buf, 0x20u);
      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    v58 = dispatch_time(0, 10000000000);
    v59 = [(ThreadNetworkManagerInstance *)self semaphoreWakeOnDeviceChange];
    LOBYTE(v58) = dispatch_semaphore_wait(v59, v58) == 0;

    if ((v58 & 1) == 0)
    {
      v60 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:];
      }

LABEL_132:

LABEL_133:
      [(ThreadNetworkManagerInstance *)self noteTimeWhenWEDDetachCompleteSuccessOrFail:0];
LABEL_169:
      v10 = 1;
      goto LABEL_192;
    }

    v61 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Dispatch signal semaphoreWakeOnDeviceChange Received for detach\n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self setWakeOnDeviceChangeNotify:0];
    if ([(ThreadNetworkManagerInstance *)self wedStatus]== 2)
    {
      [(ThreadNetworkManagerInstance *)self UpdateOutputWithBackOffTimerValue:v27 output:a4];
      v60 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], buf);
        v62 = buf[23] >= 0 ? buf : *buf;
        *v116 = 136315394;
        *&v116[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
        *&v116[12] = 2080;
        *&v116[14] = v62;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: wed connection failure, Wed Status=[%s]", v116, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_132;
    }

    v63 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], buf);
      v64 = buf[23] >= 0 ? buf : *buf;
      *v116 = 136315394;
      *&v116[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&v116[12] = 2080;
      *&v116[14] = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s: wedStop Successful, Wed Status=[%s]", v116, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    [(ThreadNetworkManagerInstance *)self noteTimeWhenWEDDetachCompleteSuccessOrFail:1];
LABEL_141:
    v65 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [(ThreadNetworkManagerInstance *)self wedAttachRequest]? "wedStart" : "wedStop";
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], v116);
      v67 = v117 >= 0 ? v116 : *v116;
      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 1460;
      *&buf[18] = 2080;
      *&buf[20] = v66;
      *&buf[28] = 2080;
      *&buf[30] = v67;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%s:%d Cmd:%s received in state %s", buf, 0x26u);
      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    [(ThreadNetworkManagerInstance *)self setWakeOnDeviceChangeNotify:1];
    if ([(ThreadNetworkManagerInstance *)self wedAttachRequest])
    {
      v68 = [NSString stringWithUTF8String:v27];
      [(ThreadNetworkManagerInstance *)self noteTimeWhenWEDAttachStart:v68];
    }

    else
    {
      [(ThreadNetworkManagerInstance *)self noteTimeWhenWEDDetachStart];
    }

    if ([(ThreadNetworkManagerInstance *)self wedAttachRequest])
    {
      v69 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      v70 = v69;
      if (v69)
      {
        [v69 wedStart:v27];
        v71 = *buf;
      }

      else
      {
        v71 = 0;
        memset(buf, 0, 32);
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(v24);
      }
    }

    else
    {
      v72 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
      v70 = v72;
      if (v72)
      {
        [v72 wedStop];
        v71 = *buf;
      }

      else
      {
        v71 = 0;
        memset(buf, 0, 32);
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(v24);
      }
    }

    v24 = *&buf[8];
    v73 = *&buf[16];
    v108[0] = *&buf[24];
    *(v108 + 3) = *&buf[27];
    LOBYTE(v25) = buf[31];
    buf[31] = 0;
    buf[8] = 0;

    if (v71)
    {
      v74 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        CtrXPC::Result::toString(v71, v116);
        if (v117 >= 0)
        {
          v88 = v116;
        }

        else
        {
          v88 = *v116;
        }

        v95 = v88;
        if ((v25 & 0x80) != 0)
        {
          std::string::__init_copy_ctor_external(&v112, v24, v73);
          if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = &v112;
          }

          else
          {
            v89 = v112.__r_.__value_.__r.__words[0];
          }
        }

        else
        {
          v112.__r_.__value_.__r.__words[0] = v24;
          v112.__r_.__value_.__l.__size_ = v73;
          LODWORD(v112.__r_.__value_.__r.__words[2]) = v108[0];
          *(&v112.__r_.__value_.__r.__words[2] + 3) = *(v108 + 3);
          *(&v112.__r_.__value_.__s + 23) = v25;
          v89 = &v112;
        }

        nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], v101);
        if (v102 >= 0)
        {
          v91 = v101;
        }

        else
        {
          v91 = v101[0];
        }

        *buf = 136315906;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
        *&buf[12] = 2080;
        *&buf[14] = v96;
        *&buf[22] = 2080;
        *&buf[24] = v89;
        *&buf[32] = 2080;
        *&buf[34] = v91;
        _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%s : TNM got the Failed Result for provideExtendedMACAddress as = %s, Error Info: %s, Wed Status=[%s]", buf, 0x2Au);
        if (v102 < 0)
        {
          operator delete(v101[0]);
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (v117 < 0)
        {
          operator delete(*v116);
        }
      }

      if (v71 == 14)
      {
        [(ThreadNetworkManagerInstance *)self UpdateOutputWithBackOffTimerValue:v27 output:a4];
        [(ThreadNetworkManagerInstance *)self updateBusyFailureCount];
      }

      goto LABEL_169;
    }

    v75 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = v116;
      CtrXPC::Result::toString(0, v116);
      if (v117 < 0)
      {
        v76 = *v116;
      }

      if ((v25 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v112, v24, v73);
        if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v112;
        }

        else
        {
          v77 = v112.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v112.__r_.__value_.__r.__words[0] = v24;
        v112.__r_.__value_.__l.__size_ = v73;
        LODWORD(v112.__r_.__value_.__r.__words[2]) = v108[0];
        *(&v112.__r_.__value_.__r.__words[2] + 3) = *(v108 + 3);
        *(&v112.__r_.__value_.__s + 23) = v25;
        v77 = &v112;
      }

      *buf = 136315650;
      *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&buf[12] = 2080;
      *&buf[14] = v76;
      *&buf[22] = 2080;
      *&buf[24] = v77;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s : TNM got the Success Result for provideExtendedMACAddress as = %s, Error Info: %s", buf, 0x20u);
      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (v117 < 0)
      {
        operator delete(*v116);
      }
    }

    v78 = dispatch_time(0, 10000000000);
    v79 = [(ThreadNetworkManagerInstance *)self semaphoreWakeOnDeviceChange];
    LOBYTE(v78) = dispatch_semaphore_wait(v79, v78) == 0;

    if ((v78 & 1) == 0)
    {
      v80 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:];
      }

LABEL_190:

      [(ThreadNetworkManagerInstance *)self noteTimeWhenAttachDetachCompleteSuccessOrFail:0];
      v10 = 1;
LABEL_191:
      [(ThreadNetworkManagerInstance *)self setWakeOnDeviceChangeNotify:0];
LABEL_192:
      [(ThreadNetworkManagerInstance *)self reset];
      v38 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
        *&buf[12] = 1024;
        *&buf[14] = 1521;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s:%d: Exiting, ret : %d", buf, 0x18u);
      }

LABEL_194:

      goto LABEL_195;
    }

    v81 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Dispatch signal semaphoreWakeOnDeviceChange Received\n", buf, 2u);
    }

    if ([(ThreadNetworkManagerInstance *)self wedStatus]== 2)
    {
      [(ThreadNetworkManagerInstance *)self UpdateOutputWithBackOffTimerValue:v27 output:a4];
      v80 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%s: wed connection failure", buf, 0xCu);
      }

      goto LABEL_190;
    }

    if ([(ThreadNetworkManagerInstance *)self wedAttachRequest])
    {
      v82 = xpc_string_create(v27);
      v99 = v82;
      if (!v82)
      {
        v99 = xpc_null_create();
      }

      *buf = a4;
      *&buf[8] = "extendedMACAddress";
      xpc::dict::object_proxy::operator=(buf, &v99, &v100);
      v83 = v100;
      v100 = 0;

      v84 = v99;
      v99 = 0;

      v85 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_221;
      }

      nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], buf);
      if (buf[23] >= 0)
      {
        v86 = buf;
      }

      else
      {
        v86 = *buf;
      }

      *v116 = 136315394;
      *&v116[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&v116[12] = 2080;
      *&v116[14] = v86;
      v87 = "%s: wedStart Successful, Wed Status=[%s]";
    }

    else
    {
      v85 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
LABEL_221:

        [(ThreadNetworkManagerInstance *)self noteTimeWhenAttachDetachCompleteSuccessOrFail:1];
        v10 = 0;
        goto LABEL_191;
      }

      nl::wpantund::ncp_wed_status_to_string([(ThreadNetworkManagerInstance *)self wedStatus], buf);
      if (buf[23] >= 0)
      {
        v90 = buf;
      }

      else
      {
        v90 = *buf;
      }

      *v116 = 136315394;
      *&v116[4] = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
      *&v116[12] = 2080;
      *&v116[14] = v90;
      v87 = "%s: wedStop Successful, Wed Status=[%s]";
    }

    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, v87, v116, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_221;
  }

  [(ThreadNetworkManagerInstance *)self updateWEDConnectionReqDupCount];
  v10 = 0;
LABEL_195:
  if (v107.var0)
  {
    (*(*v107.var0 + 8))(v107.var0);
  }

  if ((v25 & 0x80) != 0)
  {
    operator delete(v24);
  }

LABEL_11:

  objc_destroyWeak(&location);
  return v10;
}

- (void)startQuickDiscoveryScanInSRMode
{
  v3 = objc_initWeak(&location, self);
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Peform Quick SR Discovery scan \n", buf, 2u);
  }

  if ([(ThreadNetworkManagerInstance *)self isDiscoveryScanAllowed])
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
    v5 = *buf;
    v6 = SBYTE7(v23);
    if ([(ThreadNetworkManagerInstance *)self wedStatus]== 1)
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(ThreadNetworkManagerInstance *)self wedAttachRequest];
        v9 = [(ThreadNetworkManagerInstance *)self wedStatus];
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Avoid quick network SR Discovery scan as WED connection is ongoing, wedAttachRequest = %d, wedStatus = %d \n", buf, 0xEu);
      }

LABEL_22:
      if ((v6 & 0x80) != 0)
      {
        operator delete(v5);
      }

      goto LABEL_24;
    }

    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Peform quick network SR Discovery scan \n", buf, 2u);
    }

    v14 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(__p, "StartCurrentNetworkDiscoveryScan");
    if (v14)
    {
      [v14 setProperty:__p property_val:"quick-scan"];
      if ((v6 & 0x80000000) == 0)
      {
LABEL_19:
        v5 = *&buf[8];
        LOBYTE(v6) = HIBYTE(v23);
        HIBYTE(v23) = 0;
        buf[8] = 0;
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_22;
      }
    }

    else
    {
      *buf = 0u;
      v23 = 0u;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    operator delete(v5);
    goto LABEL_19;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ThreadNetworkManagerInstance *)self geoAvailable];
    nl::wpantund::node_type_to_string([(ThreadNetworkManagerInstance *)self lastKnownNodeType], buf);
    v12 = (SBYTE7(v23) & 0x80u) == 0 ? buf : *buf;
    *v18 = 67109378;
    v19 = v11;
    v20 = 2080;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Avoid quick network SR Discovery scan as Geo(%d) is not enabled, or Node type is non SR, node: %s", v18, 0x12u);
    if (SBYTE7(v23) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_24:
  objc_destroyWeak(&location);
}

- (void)startPeriodicDiscoveryScanInSRMode
{
  v3 = tnm_discoveryScanQ;
  if (!tnm_discoveryScanQ)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("TNM.SR.DiscoveryScanQ", v4);
    v6 = tnm_discoveryScanQ;
    tnm_discoveryScanQ = v5;

    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Created SR Periodic Discovery Scan Q \n", buf, 2u);
    }

    v3 = tnm_discoveryScanQ;
  }

  if (discoveryScanTimer)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3 == 0;
  }

  if (v8)
  {
    if (discoveryScanTimer)
    {
      v9 = v3 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && (on_going_discovery_scan & 1) == 0)
    {
      v10 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(discoveryScanTimer, v10, 0x2540BE400uLL, 0);
      dispatch_resume(discoveryScanTimer);
      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Started SR Periodic Discovery Scan\n", buf, 2u);
      }

      on_going_discovery_scan = 1;
    }
  }

  else
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    v13 = discoveryScanTimer;
    discoveryScanTimer = v12;

    v14 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(discoveryScanTimer, v14, 0x2540BE400uLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __80__ThreadNetworkManagerInstance_SM_extension__startPeriodicDiscoveryScanInSRMode__block_invoke;
    handler[3] = &unk_1004C85F8;
    handler[4] = self;
    dispatch_source_set_event_handler(discoveryScanTimer, handler);
    v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = 10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Created SR Periodic Discovery Scan Timer=[%d]sec \n", buf, 8u);
    }

    dispatch_activate(discoveryScanTimer);
    on_going_discovery_scan = 1;
  }
}

void __80__ThreadNetworkManagerInstance_SM_extension__startPeriodicDiscoveryScanInSRMode__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) wedAttachRequest] & 1) != 0 || objc_msgSend(*(a1 + 32), "wedStatus") == 1 || (objc_msgSend(*(a1 + 32), "isPairing") & 1) != 0 || objc_msgSend(*(a1 + 32), "isFWUpdateInProgress"))
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) wedAttachRequest];
      v4 = [*(a1 + 32) wedStatus];
      v5 = [*(a1 + 32) isPairing];
      v6 = [*(a1 + 32) isFWUpdateInProgress];
      *buf = 67109888;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v4;
      *&buf[14] = 1024;
      LODWORD(v16) = v5;
      WORD2(v16) = 1024;
      *(&v16 + 6) = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ThreadConnection: Avoid current network SR Periodic Discovery scan as WED connection is ongoing, wedAttachRequest = %d, wedStatus = %d isPairing = %d, isFWUpdateInProgress = %d\n", buf, 0x1Au);
    }

    return;
  }

  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = 10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ThreadConnection: SR Periodic Discovery Scan timer=[%d]sec elapsed, Peform current network SR Discovery scan \n", buf, 8u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v8 = *buf;
  v9 = SBYTE7(v16);
  v10 = [*(a1 + 32) CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "StartCurrentNetworkDiscoveryScan");
  if (!v10)
  {
    *buf = 0u;
    v16 = 0u;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    operator delete(v8);
    goto LABEL_13;
  }

  [v10 setProperty:__p property_val:"NA"];
  if (v9 < 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v11 = *&buf[8];
  v12 = SHIBYTE(v16);
  HIBYTE(v16) = 0;
  buf[8] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }
}

- (void)stopPeriodicDiscoveryScanInSRMode
{
  if (discoveryScanTimer && on_going_discovery_scan == 1)
  {
    dispatch_suspend(discoveryScanTimer);
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[ThreadNetworkManagerInstance(SM_extension) stopPeriodicDiscoveryScanInSRMode]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ThreadConnection: %s: Stopped SR Discovery Scan\n", &v3, 0xCu);
    }

    on_going_discovery_scan = 0;
  }
}

- (void)performDiscoveryScanInSRMode
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ThreadNetworkManagerInstance(SM_extension) performDiscoveryScanInSRMode]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Perform SR Discovery Scan\n", &v8, 0xCu);
  }

  if ([(ThreadNetworkManagerInstance *)self isDiscoveryScanAllowed]&& ![(ThreadNetworkManagerInstance *)self isPeriodicDiscoveryScanInProgress])
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ThreadNetworkManagerInstance(SM_extension) performDiscoveryScanInSRMode]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: startPeriodicDiscoveryScanInSRMode\n", &v8, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self startPeriodicDiscoveryScanInSRMode];
  }

  else if ([(ThreadNetworkManagerInstance *)self isDiscoveryScanAllowed]|| ![(ThreadNetworkManagerInstance *)self isPeriodicDiscoveryScanInProgress])
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ThreadNetworkManagerInstance(SM_extension) performDiscoveryScanInSRMode]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: pass through\n", &v8, 0xCu);
    }
  }

  else
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ThreadNetworkManagerInstance(SM_extension) performDiscoveryScanInSRMode]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: stopPeriodicDiscoveryScanInSRMode\n", &v8, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self stopPeriodicDiscoveryScanInSRMode];
  }

  if ([(ThreadNetworkManagerInstance *)self isThreadAlwaysOnFeatureEnabled])
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ThreadNetworkManagerInstance(SM_extension) performDiscoveryScanInSRMode]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: startQuickDiscoveryScanInSRMode\n", &v8, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self startQuickDiscoveryScanInSRMode];
  }
}

- (BOOL)getWasChildStatus
{
  v17.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "wasDeviceEverAChildInCurrentNetwork");
  if (v5)
  {
    [v5 getProperty:__p output:&v17];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v9 = any_to_BOOL(&v17);
  }

  else
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance(SM_extension) getWasChildStatus];
    }

    v9 = 0;
  }

  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(ThreadNetworkManagerInstance *)self isGeoAvailable];
    v13 = [(ThreadNetworkManagerInstance *)self lastKnownNodeType];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance(SM_extension) getWasChildStatus]";
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    *&buf[24] = 1024;
    *&buf[26] = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:isGeo=%d,lastKnownNodeType=%d,wasChild=%d", buf, 0x1Eu);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v17.var0)
  {
    (*(*v17.var0 + 8))(v17.var0);
  }

  return v9;
}

- (id)getRCPProperties
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"NCP:State"];
  if (v33 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [NSString stringWithUTF8String:v5];
  [v4 setObject:v6 forKeyedSubscript:@"NCP:State"];

  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8)
  {
    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Health:Metrics"];
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v33 = v35;
    if (v35 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *buf;
    }

    v8 = [NSString stringWithUTF8String:v7, __p[0], __p[1], v33];
    [v4 setObject:v8 forKeyedSubscript:@"Thread:Health:Metrics"];

    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = __p;
      if (v33 < 0)
      {
        v10 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Thread:Health:Metrics=%s", buf, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Network:Key"];
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v33 = v35;
    if (v35 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *buf;
    }

    v12 = [NSString stringWithUTF8String:v11, __p[0], __p[1], v33];
    [v4 setObject:v12 forKeyedSubscript:@"Network:Key"];

    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = __p;
      if (v33 < 0)
      {
        v14 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Network::Key=%s", buf, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Network:KeyIndex"];
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v33 = v35;
    if (v35 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = *buf;
    }

    v16 = [NSString stringWithUTF8String:v15, __p[0], __p[1], v33];
    [v4 setObject:v16 forKeyedSubscript:@"Network:KeyIndex"];

    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = __p;
      if (v33 < 0)
      {
        v18 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Network::KeyIndex=%s", buf, 0xCu);
    }

    v19 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:Services"];
    if (v19)
    {
      [v4 setObject:v19 forKey:@"Thread:Services"];
    }

    v20 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:OffMeshRoutes"];

    v21 = v20;
    if (v20)
    {
      [v4 setObject:v20 forKey:@"Thread:OffMeshRoutes"];
    }

    v22 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:OnMeshPrefixes"];

    v23 = v22;
    if (v22)
    {
      [v4 setObject:v22 forKey:@"Thread:OnMeshPrefixes"];
    }

    v24 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"vendor:ncp:state:dump"];

    v25 = v24;
    if (v24)
    {
      [v4 setObject:v24 forKey:@"vendor:ncp:state:dump"];
    }

    v26 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:RouterTable"];

    v27 = v26;
    if (v26)
    {
      [v4 setObject:v26 forKey:@"Thread:RouterTable"];
    }

    v28 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:EidCache"];

    if (v28)
    {
      [v4 setObject:v28 forKey:@"Thread:EidCache"];
    }

    v29 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:MessageBufferStats"];

    if (v29)
    {
      [v4 setObject:v29 forKey:@"Thread:MessageBufferStats"];
    }
  }

  else
  {
    v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(syslog_extension) *)v30 getRCPProperties];
    }

    v29 = 0;
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)getNCPStatusInDict
{
  v17 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = SBYTE7(v19);
  v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  v6 = v5;
  if (v5)
  {
    [v5 getNCPStatus:&v17];
    v7 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v19 = 0u;
  v7 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v8 = *&buf[8];
  v9 = SHIBYTE(v19);
  HIBYTE(v19) = 0;
  buf[8] = 0;

  if (v7)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ThreadNetworkManagerInstance(syslog_extension) getNCPStatusInDict]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : got the NCP status, now go for decoding", buf, 0xCu);
    }

    v12 = v17;
    if (v17)
    {
      v12 = (*(*v17 + 24))(v17);
    }

    v16 = v12;
    v13 = InternalClientIPCHelper::decodeComplexValToDict(&v16, v11);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    operator delete(v8);
    goto LABEL_12;
  }

  v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance(syslog_extension) getNCPStatusInDict]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : Failed to get the NCP status", buf, 0xCu);
  }

  v13 = 0;
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v13;
}

- (id)getNCPPropertyInDict:(const char *)a3
{
  v19 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v5 = *buf;
  v6 = buf[23];
  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  if (v7)
  {
    [v7 getProperty:__p output:&v19];
    v8 = *buf == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v8 = 1;
  if (v6 < 0)
  {
LABEL_3:
    operator delete(v5);
  }

LABEL_4:
  v9 = *&buf[8];
  v10 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    v12 = v19;
    if (v19)
    {
      v12 = (*(*v19 + 24))(v19);
    }

    v16 = v12;
    v13 = InternalClientIPCHelper::decodeComplexValToDict(&v16, v11);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    operator delete(v9);
    goto LABEL_12;
  }

  v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance(syslog_extension) getNCPPropertyInDict:]";
    *&buf[12] = 2080;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : Failed to get the NCP Property %s", buf, 0x16u);
  }

  v13 = 0;
  if (v10 < 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return v13;
}

- (basic_string<char,)getNCPPropertyAsString:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  v16.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v6 = *buf;
  v7 = buf[23];
  v8 = [v4 CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, v3);
  if (v8)
  {
    [v8 getProperty:__p output:&v16];
    v9 = *buf == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v9 = 1;
  if (v7 < 0)
  {
LABEL_3:
    operator delete(v6);
  }

LABEL_4:
  v10 = *&buf[8];
  v11 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    any_to_string(&v16, retstr);
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance(syslog_extension) getNCPPropertyAsString:]";
      *&buf[12] = 2080;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : Failed to get the NCP Property %s", buf, 0x16u);
    }

    std::string::basic_string[abi:ne200100]<0>(retstr, "");
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  result = v16.var0;
  if (v16.var0)
  {
    return (*(*v16.var0 + 8))(v16.var0);
  }

  return result;
}

- (id)getNCPProperties
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"NCP:State"];
  if (v59 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [NSString stringWithUTF8String:v5];
  [v4 setObject:v6 forKeyedSubscript:@"NCP:State"];

  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8)
  {
    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:Address"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = v56;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v4 setObject:v8 forKeyedSubscript:@"Thread:Leader:Address"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:RouterID"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = v56;
    }

    v10 = [NSString stringWithUTF8String:v9];
    [v4 setObject:v10 forKeyedSubscript:@"Thread:Leader:RouterID"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:Weight"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = v56;
    }

    v12 = [NSString stringWithUTF8String:v11];
    [v4 setObject:v12 forKeyedSubscript:@"Thread:Leader:Weight"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:LocalWeight"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = v56;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v4 setObject:v14 forKeyedSubscript:@"Thread:Leader:LocalWeight"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"IPv6:LinkLocalAddress"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v56;
    }

    v16 = [NSString stringWithUTF8String:v15];
    [v4 setObject:v16 forKeyedSubscript:@"IPv6:LinkLocalAddress"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"IPv6:MeshLocalAddress"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = v56;
    }

    v18 = [NSString stringWithUTF8String:v17];
    [v4 setObject:v18 forKeyedSubscript:@"IPv6:MeshLocalAddress"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"IPv6:MeshLocalPrefix"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = v56;
    }

    v20 = [NSString stringWithUTF8String:v19];
    [v4 setObject:v20 forKeyedSubscript:@"IPv6:MeshLocalPrefix"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:RLOC16"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = v56;
    }

    v22 = [NSString stringWithUTF8String:v21];
    [v4 setObject:v22 forKeyedSubscript:@"Thread:RLOC16"];

    v23 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"IPv6:AllAddresses"];
    if (v23)
    {
      [v4 setObject:v23 forKey:@"IPv6:AllAddresses"];
    }

    v24 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"IPv6:MulticastAddresses"];

    if (v24)
    {
      [v4 setObject:v24 forKey:@"IPv6:MulticastAddresses"];
    }

    v25 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:ChildTable:AsValMap"];

    if (v25)
    {
      [v4 setObject:v25 forKey:@"Thread:ChildTable:AsValMap"];
    }

    v26 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:RouterTable:AsValMap"];

    if (v26)
    {
      [v4 setObject:v26 forKey:@"Thread:RouterTable:AsValMap"];
    }

    v27 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:NeighborTable:AsValMap"];

    if (v27)
    {
      [v4 setObject:v27 forKey:@"Thread:NeighborTable:AsValMap"];
    }

    v28 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Stat:Long"];

    if (v28)
    {
      [v4 setObject:v28 forKey:@"Stat:Long"];
    }

    v29 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"OpenThread:MsgBufferCounters"];

    if (v29)
    {
      [v4 setObject:v29 forKey:@"OpenThread:MsgBufferCounters"];
    }

    v30 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:Services"];

    if (v30)
    {
      [v4 setObject:v30 forKey:@"Thread:Services"];
    }

    v31 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"IPv6:Routes"];

    if (v31)
    {
      [v4 setObject:v31 forKey:@"IPv6:Routes"];
    }

    v32 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"NCP:Counter:AllMac:AsValMap"];

    if (v32)
    {
      [v4 setObject:v32 forKey:@"NCP:Counter:AllMac:AsValMap"];
    }

    v33 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"NCP:Counter:AllIPv6:AsValMap"];

    if (v33)
    {
      [v4 setObject:v33 forKey:@"NCP:Counter:AllIPv6:AsValMap"];
    }

    v34 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"vendor:radio:counters:asvalmap"];

    if (v34)
    {
      [v4 setObject:v34 forKey:@"vendor:radio:counters:asvalmap"];
    }

    v35 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"NCP:Counter:Thread:Mle:AsValMap"];

    if (v35)
    {
      [v4 setObject:v35 forKey:@"NCP:Counter:Thread:Mle:AsValMap"];
    }

    v36 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:Leader:Services:AsValMap"];

    if (v36)
    {
      [v4 setObject:v36 forKey:@"Thread:Leader:Services:AsValMap"];
    }

    v37 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"vendor:ncp:state:dump"];

    if (v37)
    {
      [v4 setObject:v37 forKey:@"vendor:ncp:state:dump"];
    }

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:NetworkData"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = v56;
    }

    v39 = [NSString stringWithUTF8String:v38];
    [v4 setObject:v39 forKeyedSubscript:@"Thread:Leader:NetworkData"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:Leader:StableNetworkData"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = v56;
    }

    v41 = [NSString stringWithUTF8String:v40];
    [v4 setObject:v41 forKeyedSubscript:@"Thread:Leader:StableNetworkData"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:StableNetworkData"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v42 = __p;
    }

    else
    {
      v42 = v56;
    }

    v43 = [NSString stringWithUTF8String:v42];
    [v4 setObject:v43 forKeyedSubscript:@"Thread:StableNetworkData"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"Thread:NetworkData"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = v56;
    }

    v45 = [NSString stringWithUTF8String:v44];
    [v4 setObject:v45 forKeyedSubscript:@"Thread:NetworkData"];

    v46 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:OffMeshRoutes"];

    if (v46)
    {
      [v4 setObject:v46 forKey:@"Thread:OffMeshRoutes"];
    }

    v47 = [(ThreadNetworkManagerInstance *)self getNCPPropertyInDict:"Thread:OnMeshPrefixes"];

    if (v47)
    {
      [v4 setObject:v47 forKey:@"Thread:OnMeshPrefixes"];
    }

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"NCP:TXPower"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = v56;
    }

    v49 = [NSString stringWithUTF8String:v48];
    [v4 setObject:v49 forKeyedSubscript:@"NCP:TXPower"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"vendor:current:power:info"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v50 = __p;
    }

    else
    {
      v50 = v56;
    }

    v51 = [NSString stringWithUTF8String:v50];
    [v4 setObject:v51 forKeyedSubscript:@"vendor:current:power:info"];

    [(ThreadNetworkManagerInstance *)self getNCPPropertyAsString:"TPC:Mode"];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v56;
    v59 = v57;
    if (v57 >= 0)
    {
      v52 = __p;
    }

    else
    {
      v52 = v56;
    }

    v53 = [NSString stringWithUTF8String:v52];
    [v4 setObject:v53 forKeyedSubscript:@"TPC:Mode"];
  }

  v54 = v4;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v3);

  return v54;
}

- (id)getNCPPreferredNetworkInDict:(id)a3
{
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 network];
  v6 = [v5 extendedPANID];
  if (v6)
  {
    v7 = [v3 network];
    v8 = [v7 extendedPANID];
    v9 = [v8 bytes];
    v10 = [v3 network];
    v11 = [v10 extendedPANID];
    v12 = [v11 length];
    ctu::hex(v123, v9, v12, v13);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v123, "(unknown)");
  }

  v14 = [v3 borderAgent];
  v15 = [v14 discriminatorId];
  if (v15)
  {
    v16 = [v3 borderAgent];
    v17 = [v16 discriminatorId];
    v18 = [v17 bytes];
    v19 = [v3 borderAgent];
    v20 = [v19 discriminatorId];
    v21 = [v20 length];
    ctu::hex(v121, v18, v21, v22);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v121, "(unknown)");
  }

  v23 = [v3 credentialsDataSet];
  v24 = [v23 dataSetArray];
  if (v24)
  {
    v25 = [v3 credentialsDataSet];
    v26 = [v25 dataSetArray];
    v27 = [v26 bytes];
    v28 = [v3 credentialsDataSet];
    v29 = [v28 dataSetArray];
    v30 = [v29 length];
    ctu::hex(v119, v27, v30, v31);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v119, "(unknown)");
  }

  v32 = [v3 uniqueIdentifier];

  v33 = ot::Message::GetDatagramTag;
  if (v32)
  {
    v34 = [v3 uniqueIdentifier];
    v35 = [v34 UUIDString];
    v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [v35 UTF8String], context);

    [v4 setObject:v36 forKey:@"UUID"];
  }

  else
  {
    v36 = 0;
  }

  v37 = v121;
  if (v122 < 0)
  {
    v37 = v121[0];
  }

  v38 = [NSString stringWithFormat:@"%s", v37];

  [v4 setObject:v38 forKey:@"borderAgentDiscriminatorID"];
  v39 = [v3 network];
  v40 = [v39 networkName];
  v41 = v40;
  if (!v40)
  {
    v40 = @"(unknown)";
  }

  v42 = [NSString stringWithFormat:@"%s", [(__CFString *)v40 UTF8String]];

  [v4 setObject:v42 forKey:@"networkName"];
  v43 = v123;
  if (v124 < 0)
  {
    v43 = v123[0];
  }

  v44 = [NSString stringWithFormat:@"%s", v43];

  [v4 setObject:v44 forKey:@"xpanid"];
  v45 = [v3 credentials];
  v46 = [v45 PANID];

  if (v46)
  {
    v47 = [v3 credentials];
    v48 = [v47 PANID];
    v49 = [v48 bytes];
    v50 = [v3 credentials];
    v51 = [v50 PANID];
    v52 = [v51 length];
    ctu::hex(__p, v49, v52, v53);
    if (v118 >= 0)
    {
      v54 = __p;
    }

    else
    {
      v54 = __p[0];
    }

    v55 = [NSString stringWithFormat:@"%s", v54];

    v33 = ot::Message::GetDatagramTag;
    if (v118 < 0)
    {
      operator delete(__p[0]);
    }

    [v4 setObject:v55 forKey:@"panid"];
  }

  else
  {
    v55 = v44;
  }

  v56 = [v3 credentials];
  v57 = [v56 masterKey];

  if (v57)
  {
    v58 = v33[324];
    v59 = [v3 credentials];
    v60 = [v59 masterKey];
    v61 = [v60 bytes];
    v62 = [v3 credentials];
    v63 = [v62 masterKey];
    v64 = [v63 length];
    ctu::hex(__p, v61, v64, v65);
    if (v118 >= 0)
    {
      v66 = __p;
    }

    else
    {
      v66 = __p[0];
    }

    v67 = [v58 stringWithFormat:@"%{sensitive}s", v66];

    v33 = ot::Message::GetDatagramTag;
    if (v118 < 0)
    {
      operator delete(__p[0]);
    }

    [v4 setObject:v67 forKey:@"masterKey"];
  }

  else
  {
    v67 = v55;
  }

  v68 = [v3 credentials];
  v69 = [v68 PSKc];

  if (v69)
  {
    v70 = v33[324];
    v71 = [v3 credentials];
    v72 = [v71 PSKc];
    v73 = [v72 bytes];
    v74 = [v3 credentials];
    v75 = [v74 PSKc];
    v76 = [v75 length];
    ctu::hex(__p, v73, v76, v77);
    if (v118 >= 0)
    {
      v78 = __p;
    }

    else
    {
      v78 = __p[0];
    }

    v79 = [v70 stringWithFormat:@"%{sensitive}s", v78];

    v33 = ot::Message::GetDatagramTag;
    if (v118 < 0)
    {
      operator delete(__p[0]);
    }

    [v4 setObject:v79 forKey:@"PSKc"];
  }

  else
  {
    v79 = v67;
  }

  v80 = [v3 credentials];
  v81 = [v80 passPhrase];

  if (v81)
  {
    v82 = v33[324];
    v83 = [v3 credentials];
    v84 = [v83 passPhrase];
    v85 = [v82 stringWithFormat:@"%s", objc_msgSend(v84, "UTF8String")];

    v79 = v85;
    [v4 setObject:v85 forKey:@"passPhrase"];
  }

  v86 = [v3 credentials];
  v87 = [v86 channel];
  v88 = kTHNetworkChannel_None;

  if (v87 == v88)
  {
    v89 = ot::Message::GetDatagramTag;
  }

  else
  {
    v89 = ot::Message::GetDatagramTag;
    v90 = [v3 credentials];
    v91 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v90 channel]);

    v79 = v91;
    [v4 setObject:v91 forKey:@"channel"];
  }

  v92 = v119;
  if (v120 < 0)
  {
    v92 = v119[0];
  }

  v93 = [v89[324] stringWithFormat:@"%{sensitive}s", v92];

  [v4 setObject:v93 forKey:@"datasetCredentials"];
  v94 = [v3 credentials];
  v95 = [v94 userInfo];

  if (v95)
  {
    v96 = v89[324];
    v97 = [v3 credentials];
    v98 = [v97 userInfo];
    v99 = [v96 stringWithFormat:@"%s", objc_msgSend(v98, "UTF8String")];

    [v4 setObject:v99 forKey:@"datasetUserInfo"];
  }

  else
  {
    v99 = v93;
  }

  v100 = [v3 keychainAccessGroup];

  if (v100)
  {
    v101 = v89[324];
    v102 = [v3 keychainAccessGroup];
    v103 = [v101 stringWithFormat:@"%s", objc_msgSend(v102, "UTF8String")];

    v99 = v103;
    [v4 setObject:v103 forKey:@"accessGroup"];
  }

  v104 = [v3 creationDate];

  if (v104)
  {
    v105 = v89[324];
    v106 = [v3 creationDate];
    v107 = [v106 description];
    v108 = [v105 stringWithFormat:@"%s", objc_msgSend(v107, "UTF8String")];

    v99 = v108;
    [v4 setObject:v108 forKey:@"createdOn"];
  }

  v109 = [v3 lastModificationDate];

  if (v109)
  {
    v110 = v89[324];
    v111 = [v3 lastModificationDate];
    v112 = [v111 description];
    v113 = [v110 stringWithFormat:@"%s", objc_msgSend(v112, "UTF8String")];

    v99 = v113;
    [v4 setObject:v113 forKey:@"lastModifiedOn"];
  }

  v114 = v4;
  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  objc_autoreleasePoolPop(context);

  return v114;
}

- (void)captureNCPStateInformation:(id *)a3
{
  v8 = *a3;
  v4 = [(ThreadNetworkManagerInstance *)self getNCPStatusInDict];
  if (v4)
  {
    [v8 setObject:v4 forKey:@"NCP Status"];
  }

  v5 = [(ThreadNetworkManagerInstance *)self getPreferredNetwork];
  if (v5)
  {
    v6 = [(ThreadNetworkManagerInstance *)self getNCPPreferredNetworkInDict:v5];
    if (v6)
    {
      [v8 setObject:v6 forKey:@"NCP PreferredNetwork"];
    }
  }

  v7 = [(ThreadNetworkManagerInstance *)self getRCPProperties];
  if (v7)
  {
    [v8 setObject:v7 forKey:@"RCP Properties"];
  }
}

- (void)initSyslogDumpInfo
{
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "TNM: initSyslogDumpInfo : Starting", buf, 2u);
  }

  v3 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

_DWORD *__68__ThreadNetworkManagerInstance_syslog_extension__initSyslogDumpInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v23 = v5;
    [v6 captureNCPStateInformation:&v23];
    v7 = v23;

    v22 = 0;
    v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v22];
    v9 = v22;
    if (v9)
    {
      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Error serializing dictionary for State Capture: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v12 = [v8 length];
      v13 = malloc_type_calloc(1uLL, v12 + 200, 0x1000040BEF03554uLL);
      v11 = v13;
      if (v13)
      {
        *v13 = 1;
        v13[1] = v12;
        v14 = [@"NCP::State Information" dataUsingEncoding:4];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          v17 = [v15 bytes];
          v18 = [v15 length];
          if (v18 >= 0x3F)
          {
            v19 = 63;
          }

          else
          {
            v19 = v18;
          }

          memcpy(v11 + 34, v17, v19);
        }

        v20 = v8;
        memcpy(v11 + 50, [v8 bytes], v12);
      }

      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Done logging NCP state", buf, 2u);
      }
    }
  }

  else
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TNM: state info dictionary is NULL", buf, 2u);
    }

    v11 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v11;
}

- (id)init:(id)a3 statsQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ThreadNetworkManagerInstance;
  v9 = [(ThreadNetworkManagerInstance *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_fQueue, a3);
    objc_storeStrong(p_isa + 21, a4);
    [p_isa createDriverInterface:v7];
  }

  return p_isa;
}

- (unint64_t)getCountOfAvailableNetworksForCommissioning
{
  objc_initWeak(&location, self);
  v3 = dispatch_semaphore_create(0);
  BAFinder = self->_BAFinder;
  if (!BAFinder)
  {
    v5 = [objc_opt_new() init];
    v6 = self->_BAFinder;
    self->_BAFinder = v5;

    BAFinder = self->_BAFinder;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __75__ThreadNetworkManagerInstance_getCountOfAvailableNetworksForCommissioning__block_invoke;
  v12[3] = &unk_1004C87F0;
  objc_copyWeak(&v14, &location);
  v7 = v3;
  v13 = v7;
  [(ThreadNetworkfinder *)BAFinder startScan:v12 queue:&_dispatch_main_q timeInSec:5];
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ThreadNetworkManagerInstance getCountOfAvailableNetworksForCommissioning]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : Finding networks to commission...", buf, 0xCu);
  }

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v9 = [(ThreadNetworkfinder *)self->_BAFinder findNWs];
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ThreadNetworkManagerInstance getCountOfAvailableNetworksForCommissioning]";
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : Found networks : %lu", buf, 0x16u);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return v9;
}

void __75__ThreadNetworkManagerInstance_getCountOfAvailableNetworksForCommissioning__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[9] stopScan];
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isAudioNoThreadFeatureEnabled
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isAudioNoThreadFeatureEnabled(v3);
}

- (BOOL)isRegulatoryCertMode
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isRegulatoryCertMode(v3);
}

- (BOOL)isThreadAlwaysOnFeatureEnabled
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isThreadAlwaysOnFeatureEnabled(v3);
}

- (BOOL)isThreadGeoEnabled
{
  v3 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    [ThreadNetworkManagerInstance(SM_extension) persistWedSession:wedMleid:];
  }

  return RcpHostContext::isThreadGeoEnabled(v3);
}

- (void)createDriverInterface:(id)a3
{
  v59 = a3;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TNM creating DriverInterface", buf, 2u);
  }

  v5 = [[CtrInternalClient alloc] init:"TNM-Internal"];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  self->_CtrInternalClientPtr = v5;

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v8 = dispatch_queue_create("wpantund.TNMScan.Queue", v7);
  tnm_scan_queue = self->_tnm_scan_queue;
  self->_tnm_scan_queue = v8;

  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v11 = dispatch_queue_create("wpantund.TNMNodeTypeChange.Queue", v10);
  tnmNodeTypeChangeQueue = self->_tnmNodeTypeChangeQueue;
  self->_tnmNodeTypeChangeQueue = v11;

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create("wpantund.TNMWedStatusChange.Queue", v13);
  tnmWedStatusChangeQueue = self->_tnmWedStatusChangeQueue;
  self->_tnmWedStatusChangeQueue = v14;

  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Initializing srp_mdns_proxyd interface", buf, 2u);
  }

  srputil_srp_mdns_proxyd_interface_init();
  IntValue = getIntValue("lastHostConfiguredChannel");
  if (IntValue)
  {
    v18 = IntValue;
  }

  else
  {
    v18 = 25;
  }

  self->_lastHostConfiguredChannel = v18;
  *&self->_prevKnownNCPState = 0;
  self->_lastIsLeaderThirdParty = 1;
  objc_initWeak(&location, self);
  if ([(ThreadNetworkManagerInstance *)self initializeKeyChainStore])
  {
    v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance createDriverInterface:];
    }
  }

  v60 = objc_alloc_init(ThreadNetworkManagerSelfHealHandler);
  v20 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v107, "ActiveDataSetChanged");
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke;
  v105[3] = &unk_1004C85D0;
  objc_copyWeak(&v106, &location);
  v21 = v59;
  v104 = v21;
  [(CtrInternalClient *)v20 setEventHandler:v107 InternalClientEventBlock:v105 dqueue:&v104];
  v22 = v104;
  v104 = 0;

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  v23 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v102, "NCP:State");
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_22;
  v100[3] = &unk_1004C85D0;
  objc_copyWeak(&v101, &location);
  v24 = v21;
  v99 = v24;
  [(CtrInternalClient *)v23 setEventHandler:v102 InternalClientEventBlock:v100 dqueue:&v99];
  v25 = v99;
  v99 = 0;

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  v26 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:NodeType");
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_24;
  v95[3] = &unk_1004C85D0;
  objc_copyWeak(&v96, &location);
  v94 = self->_tnmNodeTypeChangeQueue;
  [(CtrInternalClient *)v26 setEventHandler:__p InternalClientEventBlock:v95 dqueue:&v94];
  v27 = v94;
  v94 = 0;

  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v92, "coex:rcp2:btwifi:load");
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_27;
  v90[3] = &unk_1004C85D0;
  objc_copyWeak(&v91, &location);
  v29 = v24;
  v89 = v29;
  [(CtrInternalClient *)v28 setEventHandler:v92 InternalClientEventBlock:v90 dqueue:&v89];
  v30 = v89;
  v89 = 0;

  if (v93 < 0)
  {
    operator delete(v92[0]);
  }

  v31 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v87, "bt_state_change");
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_29;
  v85[3] = &unk_1004C85D0;
  objc_copyWeak(&v86, &location);
  v32 = v29;
  v84 = v32;
  [(CtrInternalClient *)v31 setEventHandler:v87 InternalClientEventBlock:v85 dqueue:&v84];
  v33 = v84;
  v84 = 0;

  if (v88 < 0)
  {
    operator delete(v87[0]);
  }

  if ([(ThreadNetworkManagerInstance *)self isThreadAlwaysOnFeatureEnabled])
  {
    v34 = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v82, "ap_state");
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_33;
    v80[3] = &unk_1004C85D0;
    objc_copyWeak(&v81, &location);
    v79 = v32;
    [(CtrInternalClient *)v34 setEventHandler:v82 InternalClientEventBlock:v80 dqueue:&v79];
    v35 = v79;
    v79 = 0;

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    objc_destroyWeak(&v81);
  }

  v36 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v77, "bt_airpod_esco");
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_35;
  v75[3] = &unk_1004C85D0;
  objc_copyWeak(&v76, &location);
  v37 = v32;
  v74 = v37;
  [(CtrInternalClient *)v36 setEventHandler:v77 InternalClientEventBlock:v75 dqueue:&v74];
  v38 = v74;
  v74 = 0;

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  v39 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v72, "router_mode_safe_timeout");
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_39;
  v70[3] = &unk_1004C85D0;
  objc_copyWeak(&v71, &location);
  v40 = v37;
  v69 = v40;
  [(CtrInternalClient *)v39 setEventHandler:v72 InternalClientEventBlock:v70 dqueue:&v69];
  v41 = v69;
  v69 = 0;

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  v42 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v67, "Beacon");
  v66 = self->_tnm_scan_queue;
  [(CtrInternalClient *)v42 setEventHandler:v67 InternalClientEventBlock:&__block_literal_global_11 dqueue:&v66];
  v43 = v66;
  v66 = 0;

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  v44 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v64, "NCP:Reset");
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_44;
  v62[3] = &unk_1004C85D0;
  objc_copyWeak(&v63, &location);
  v45 = v40;
  v61 = v45;
  [(CtrInternalClient *)v44 setEventHandler:v64 InternalClientEventBlock:v62 dqueue:&v61];
  v46 = v61;
  v61 = 0;

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  [(ThreadNetworkManagerInstance *)self registerStateMachineWedEventHandlers];
  v47 = [(ThreadNetworkManagerInstance *)self getDefaultChildNode];
  v48 = "sleepy-end-device";
  if (v47)
  {
    v48 = "synchronized-sleepy-end-device";
  }

  self->_defaultChildNode = v48;
  v49 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    defaultChildNode = self->_defaultChildNode;
    *buf = 136315138;
    v111 = defaultChildNode;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Init Default Child Node = %s", buf, 0xCu);
  }

  self->_lastTimeInLeaderRole = 0;
  [(ThreadNetworkManagerInstance *)self resetThreadSessionMetrics];
  [(ThreadNetworkManagerInstance *)self getNCPState:1];
  [(ThreadNetworkManagerInstance *)self getNCPChannel];
  v51 = isNetworkConnected();
  v52 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v111) = v51;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "WiFi Status is: %d", buf, 8u);
  }

  v53 = [(ThreadNetworkManagerInstance *)self getHardwareAddress];
  hwAddr = self->_hwAddr;
  self->_hwAddr = v53;

  if (self->_hwAddr)
  {
    v55 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = self->_hwAddr;
      *buf = 136315395;
      v111 = "[ThreadNetworkManagerInstance createDriverInterface:]";
      v112 = 2117;
      v113 = v56;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s : HW Address of this device is %{sensitive}@, \n", buf, 0x16u);
    }
  }

  else
  {
    v55 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance createDriverInterface:];
    }
  }

  v57 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    deviceName = self->_deviceName;
    *buf = 136315394;
    v111 = "[ThreadNetworkManagerInstance createDriverInterface:]";
    v112 = 2112;
    v113 = deviceName;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s : Current Device Name : %@", buf, 0x16u);
  }

  [(ThreadNetworkManagerInstance *)self setLogTimestampBase];
  [(ThreadNetworkManagerInstance *)self initSyslogDumpInfo];
  *&self->_waitForSync = 0;
  [(ThreadNetworkManagerSelfHealHandler *)v60 initSelfHealThreadNetworkTimer];
  if ([(ThreadNetworkManagerInstance *)self getThreadSessionStatus])
  {
    [(ThreadNetworkManagerInstance *)self updateThreadSessionStartTime];
  }

  [(ThreadNetworkManagerInstance *)self configureRCP2PeriodicEvents];
  [(ThreadNetworkManagerInstance *)self getDaemonAndVendorVersions];
  objc_destroyWeak(&v63);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v96);
  objc_destroyWeak(&v101);
  objc_destroyWeak(&v106);

  objc_destroyWeak(&location);
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  v2 = *buf;
  v3 = buf[23];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_ThreadNetwork_ActiveDataSetChanged setEventHandler \n", buf, 2u);
  }

  if (WeakRetained && WeakRetained[9] == 8 && [WeakRetained updatePreferredNetworkForDatasetChange])
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance createDriverInterface:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 206;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d: Successfully updated the keychain", buf, 0x12u);
    }

    v14 = 0;
    v7 = [WeakRetained CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(__p, "Thread:ActiveDataset:Bytes");
    if (v7)
    {
      [v7 getProperty:__p output:&v14];
      v8 = *buf == 0;
      if ((v3 & 0x80000000) == 0)
      {
LABEL_11:
        v2 = *&buf[8];
        LOBYTE(v3) = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8)
        {
          v9 = [WeakRetained CtrInternalClientPtr];
          std::string::basic_string[abi:ne200100]<0>(v10, "PreferredNetworkUpdated");
          [v9 signal_property_changed:v10 value:&v14];
          if (v11 < 0)
          {
            operator delete(v10[0]);
          }
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_cold_1();
          }
        }

        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        goto LABEL_20;
      }
    }

    else
    {
      memset(buf, 0, 32);
      v8 = 1;
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    operator delete(v2);
    goto LABEL_11;
  }

LABEL_20:

  if ((v3 & 0x80) != 0)
  {
    operator delete(v2);
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_22(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_NCPState setEventHandler \n", __p, 2u);
  }

  if (WeakRetained)
  {
    WeakRetained[8] = WeakRetained[9];
    any_to_string(a2, __p);
    WeakRetained[9] = nl::wpantund::string_to_ncp_state(__p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }

    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = WeakRetained[8];
      v7 = WeakRetained[9];
      *__p = 136315650;
      *&__p[4] = "NCP:State";
      v13 = 1024;
      v14 = v6;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s TNM-Internal got event Data: NCP State: %d -> %d\n", __p, 0x18u);
    }

    if (WeakRetained[8] != 8 && WeakRetained[9] == 8)
    {
      v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = WeakRetained[8];
        v10 = WeakRetained[9];
        *__p = 136315650;
        *&__p[4] = "NCP:State";
        v13 = 1024;
        v14 = v9;
        v15 = 1024;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Calling notifyWedUnsolictedDisconnect... NCP State: %d -> %d\n", __p, 0x18u);
      }

      [WeakRetained notifyWedUnsolictedDisconnect];
    }

    [WeakRetained getNCPState:0];
    srputil_set_ncp_state(WeakRetained[9]);
    v11 = WeakRetained[9];
    if (v11 == 1)
    {
      postFollowUpNotification();
      v11 = WeakRetained[9];
    }

    if (v11 == 8 || v11 == 4)
    {
      clearFollowUpNotification();
    }

    [WeakRetained checkAndResumeNW];
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_24(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_NetworkNodeType setEventHandler \n", v16, 2u);
  }

  if (WeakRetained)
  {
    nl::wpantund::node_type_to_string(*(WeakRetained + 11), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(v16, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    any_to_string(a2, &__p);
    v6 = nl::wpantund::string_to_node_type(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(WeakRetained + 10) == 7 && v6 != 7)
    {
      *(WeakRetained + 17) = getSystemUptimeInSec();
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(WeakRetained + 17);
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "[ThreadNetworkManagerInstance createDriverInterface:]_block_invoke";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Device was last in Leader role at: %llu ", &__p, 0x16u);
      }
    }

    *(WeakRetained + 10) = v6;
    [WeakRetained notifyOnNodeStatusChange];
    any_to_string(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p.__r_.__value_.__r.__words[0];
    }

    v10 = [NSString stringWithUTF8String:v9];
    if (v17 >= 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v16[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    [WeakRetained updateThreadSessionmetrics:v10 previousNodeType:v12];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6)
    {
      *(WeakRetained + 11) = v6;
    }

    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(WeakRetained + 10);
      v15 = *(WeakRetained + 11);
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
      *(__p.__r_.__value_.__r.__words + 4) = "Network:NodeType";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v14;
      WORD1(__p.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s TNM-Internal got event Data: Last known Node-Type-Value: %d, Last known valid Node-Type-Value: %d", &__p, 0x18u);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_27(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_BTWIFI_Load_Update setEventHandler \n", buf, 2u);
  }

  if (WeakRetained)
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = (*(*v5 + 24))(v5);
    }

    v6 = v5;
    [WeakRetained getBTWifiLoadInfoEvent:&v6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_29(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_BTStatusNotification setEventHandler \n", v10, 2u);
  }

  if (WeakRetained)
  {
    v5 = any_to_BOOL(a2);
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "DOWN";
      *&v10[4] = "bt_state_change";
      v8 = WeakRetained[9];
      *v10 = 136315650;
      if (v5)
      {
        v7 = "UP";
      }

      *&v10[12] = 2080;
      *&v10[14] = v7;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s TNM-Internal got event Data: BT Status is now: [%s] in State: [%d] \n", v10, 0x1Cu);
    }

    v9 = WeakRetained[9];
    if (v5)
    {
      if (v9 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v9 == 8 || v9 == 6)
    {
      [WeakRetained incrementCounterThreadSessionStoppedDueToBluetoothOff];
LABEL_14:
      [WeakRetained threadStop];
    }
  }

LABEL_15:
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_33(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_APStateNotification setEventHandler \n", v10, 2u);
  }

  if (WeakRetained)
  {
    v5 = any_to_BOOL(a2);
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "DOWN";
      *&v10[4] = "bt_state_change";
      v8 = WeakRetained[9];
      *v10 = 136315650;
      if (v5)
      {
        v7 = "UP";
      }

      *&v10[12] = 2080;
      *&v10[14] = v7;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s TNM-Internal got event Data: AP Status is now: [%s] in State: [%d] \n", v10, 0x1Cu);
    }

    v9 = WeakRetained[9];
    if (v5)
    {
      if (v9 == 4)
      {
        [WeakRetained threadStop];
      }

      [WeakRetained noteTimeAPOn];
    }

    else
    {
      if (v9 == 8 || v9 == 6)
      {
        [WeakRetained incrementCounterThreadSessionStoppedDueToAPOff];
        [WeakRetained threadStop];
      }

      [WeakRetained generateAPLifeInfoMetrics];
    }
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_35(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_BTAirPodEscoNotification setEventHandler \n", &v11, 2u);
  }

  if (WeakRetained)
  {
    v5 = any_to_BOOL(a2);
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "OFF";
      v12 = "bt_airpod_esco";
      v8 = WeakRetained[9];
      v11 = 136315650;
      if (v5)
      {
        v7 = "ON";
      }

      v13 = 2080;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s BT Load, Audio detection: TNM-Internal got event Data: eSCO Status is now: [%s] in State: [%d] \n", &v11, 0x1Cu);
    }

    v9 = WeakRetained[9];
    if (v5)
    {
      if (v9 == 8 || v9 == 6)
      {
        v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = "[ThreadNetworkManagerInstance createDriverInterface:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s, BT Load, Audio detection: ThreadStop duo to airpod+eSCO\n", &v11, 0xCu);
        }

        [WeakRetained incrementCounterThreadSessionStoppedDueToEscoOn];
        [WeakRetained threadStop];
      }
    }

    else if (v9 == 4)
    {
      wcm_notify(0, 0);
    }
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_39(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "router_mode_safe_timeout";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: EventHandler \n", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained getPairingStatus];
    if (v3)
    {
      v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "router_mode_safe_timeout";
        v9 = 1024;
        v10 = router_mode_status_timer_m;
        v11 = 1024;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: TNM-Internal got event Data, but defering Thread Stop as pairing is ongoing: routerModeTime is %d, pairing status: %d\n", &v7, 0x18u);
      }
    }

    else if ([WeakRetained isThreadAlwaysOnFeatureEnabled])
    {
      v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "router_mode_safe_timeout";
        v9 = 1024;
        v10 = router_mode_status_timer_m;
        v11 = 1024;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: TNM-Internal got event Data: routerModeTime is %d, pairing status: %d, SWITCHING THREAD ROLE NOW \n", &v7, 0x18u);
      }

      [WeakRetained handleRouterModeFailSafeTrigger];
    }

    else
    {
      v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "router_mode_safe_timeout";
        v9 = 1024;
        v10 = router_mode_status_timer_m;
        v11 = 1024;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: TNM-Internal got event Data: routerModeTime is %d, pairing status: %d, STOPPING THREAD NOW \n", &v7, 0x18u);
      }

      [WeakRetained threadStop];
    }
  }
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_41(id a1, any a2)
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "kWPANTUNDEvent_Beacon setEventHandler \n", v12, 2u);
  }

  boost::any_cast<std::map<std::string,boost::any>>(a2.var0, v12);
  std::string::basic_string[abi:ne200100]<0>(&__p, "kWPANTUNDProperty_NetworkPANID");
  p_p = &__p;
  v4 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12, &__p);
  v5 = any_to_uint64(v4 + 7, 0);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v6 = scannedNetworkCount;
  if (scannedNetworkCount < 1)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = scannedNetworks;
  v9 = scannedNetworkCount;
  do
  {
    v10 = *v8++;
    v7 |= v10 == v5;
    --v9;
  }

  while (v9);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    if (scannedNetworkCount <= 99)
    {
      ++scannedNetworkCount;
      scannedNetworks[v6] = v5;
      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(__p) = 67109376;
        HIDWORD(__p) = scannedNetworkCount;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TNM-Internal got new beacon(%d) with PANID: 0x%x", &__p, 0xEu);
      }
    }
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v12, v13);
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_44(uint64_t a1, any *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      any_to_string(a2, __p);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315394;
      v9 = "NCP:Reset";
      v10 = 2080;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s TNM-Internal got Reset Event: %s\n", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    [WeakRetained setLogTimestampBase];
  }
}

- (BOOL)getThreadSessionStatus
{
  std::string::basic_string[abi:ne200100]<0>(v12, "Command error");
  v3 = v12[0];
  v4 = SBYTE7(v13);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v14.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "is_threadsession_on");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v14];
    v6 = LODWORD(v12[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v12 = 0u;
  v13 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v12[1];
  v8 = SHIBYTE(v13);
  HIBYTE(v13) = 0;
  LOBYTE(v12[1]) = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6)
  {
LABEL_10:
    LOBYTE(v6) = any_to_BOOL(&v14);
  }

LABEL_11:
  if (v14.var0)
  {
    (*(*v14.var0 + 8))(v14.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v6;
}

- (BOOL)getBTAudioCallStatus
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command error");
  v3 = *buf;
  v4 = buf[23];
  p_super = &self->_CtrInternalClientPtr->super;
  v12.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "is_bt_audioCall_on");
  if (p_super)
  {
    [p_super getProperty:__p output:&v12];
    LODWORD(p_super) = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  LODWORD(p_super) = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v6 = *&buf[8];
  v7 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!p_super)
    {
      goto LABEL_13;
    }
  }

  else if (!p_super)
  {
    goto LABEL_13;
  }

  p_super = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v8 = any_to_BOOL(&v12);
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance getBTAudioCallStatus]";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "BT Load, Audio detection: %s get isBTAirpodEscoOn as %d", buf, 0x12u);
  }

  LOBYTE(p_super) = any_to_BOOL(&v12);
LABEL_13:
  if (v12.var0)
  {
    (*(*v12.var0 + 8))(v12.var0);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  return p_super;
}

- (BOOL)isCurrentBTCoExLoadAvailable
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command error");
  v3 = *buf;
  v4 = SBYTE7(v14);
  p_super = &self->_CtrInternalClientPtr->super;
  v12.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:coex:radioload");
  if (p_super)
  {
    [p_super getProperty:__p output:&v12];
    LODWORD(p_super) = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v14 = 0u;
  LODWORD(p_super) = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v6 = *&buf[8];
  v7 = SHIBYTE(v14);
  HIBYTE(v14) = 0;
  buf[8] = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!p_super)
    {
      goto LABEL_13;
    }
  }

  else if (!p_super)
  {
    goto LABEL_13;
  }

  v8 = any_to_uint64(&v12, 1);
  p_super = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  LOBYTE(p_super) = v8 != -1;
LABEL_13:
  if (v12.var0)
  {
    (*(*v12.var0 + 8))(v12.var0);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  return p_super;
}

- (void)setDeviceNode:(BOOL)a3 geoAvailable:(BOOL)a4 defaultChildNode:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  SystemUptimeInSec = getSystemUptimeInSec();
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    lastTimeInLeaderRole = self->_lastTimeInLeaderRole;
    *buf = 136316418;
    v22 = "[ThreadNetworkManagerInstance setDeviceNode:geoAvailable:defaultChildNode:]";
    v23 = 1024;
    *v24 = v7;
    *&v24[4] = 1024;
    *&v24[6] = v6;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v5;
    HIWORD(v25) = 2048;
    v26 = SystemUptimeInSec;
    v27 = 2048;
    v28 = lastTimeInLeaderRole;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %s routerMode = %d, geoAvailable = %d, defaultChildNode = %d, UpTimeNow = %llu, lastTimeInLeaderRole = %llu", buf, 0x32u);
  }

  if (![(ThreadNetworkManagerInstance *)self isStateMachineWedEnabled])
  {
    if (!v7)
    {
      v16 = 9;
      goto LABEL_18;
    }

LABEL_15:
    v16 = 1;
LABEL_18:
    self->_deviceNode = v16;
    goto LABEL_19;
  }

  self->_wedStatus = 0;
  self->_wedAttachRequest = 0;
  self->_geoAvailable = v6;
  self->_wasChildStatus = 0;
  if (v7)
  {
    goto LABEL_15;
  }

  if (!v6)
  {
    v16 = 8;
    goto LABEL_18;
  }

  v12 = "sleepy-end-device";
  if (v5)
  {
    v12 = "synchronized-sleepy-end-device";
  }

  self->_defaultChildNode = v12;
  self->_deviceNode = 9;
  v13 = self->_lastTimeInLeaderRole;
  if (v13 && self->_lastKnownValidNodeType == 7 && SystemUptimeInSec - v13 <= 0x78)
  {
    self->_deviceNode = 1;
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_lastTimeInLeaderRole;
      *buf = 136315650;
      v22 = "[ThreadNetworkManagerInstance setDeviceNode:geoAvailable:defaultChildNode:]";
      v23 = 2048;
      *v24 = SystemUptimeInSec;
      *&v24[8] = 2048;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s : Overwriting device role to be set as Router/Leader, UpTimeNow = %llu, lastTimeInLeaderRole = %llu", buf, 0x20u);
    }
  }

LABEL_19:
  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::node_type_to_string(self->_deviceNode, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    defaultChildNode = self->_defaultChildNode;
    *buf = 136315650;
    v22 = "[ThreadNetworkManagerInstance setDeviceNode:geoAvailable:defaultChildNode:]";
    v23 = 2080;
    *v24 = p_p;
    *&v24[8] = 2080;
    v25 = defaultChildNode;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s : deviceNode = %s, defaultChildNode = %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

- (dict)threadNetworkManagerInstance_MsgHandler:()basic_string<char message:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v5 = v3;
  v8 = v4;
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3;
    if (*(&a3->var0.var1 + 23) < 0)
    {
      var0 = a3->var0.var1.var0;
    }

    *buf = 136315138;
    *&buf[4] = var0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Message received from client %s", buf, 0xCu);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (!v11)
  {
    v12 = xpc_null_create();
  }

  v13 = v12;
  v14 = v13;
  xdict = v13;
  if (!v13 || xpc_get_type(v13) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
    v16 = xdict;
    xdict = v15;
  }

  v17 = dispatch_semaphore_create(0);
  dispatch_time(0, 5000000000);
  v110 = 0;
  v111 = 0;
  v112 = 256;
  v18 = xpc::dict::operator*(v5);
  string = xpc_dictionary_get_string(v18, "method");
  std::string::basic_string[abi:ne200100]<0>(&v104, string);

  v20 = xpc::dict::operator*(v5);
  v21 = xpc_dictionary_get_string(v20, "property_name");
  std::string::basic_string[abi:ne200100]<0>(__p, v21);

  if (!std::string::compare(&v104, "setChannel"))
  {
    xpc::dict::dict(&v101, v5);
    v23 = [(ThreadNetworkManagerInstance *)self setChannelUsingChannelManger:&v101];
    v24 = v101;
    v101 = 0;

    goto LABEL_96;
  }

  if (!std::string::compare(&v104, "attachToNetwork"))
  {
    xpc::dict::dict(&v100, v5);
    v23 = [(ThreadNetworkManagerInstance *)self attachToNetwork:&v100 output:&xdict];
    v25 = v100;
    v100 = 0;

    goto LABEL_96;
  }

  if (!std::string::compare(&v104, "commissionOrFormNetwork"))
  {
    xpc::dict::dict(&v99, v5);
    v23 = [(ThreadNetworkManagerInstance *)self commissionOrFormNetwork:&v99 is_attaching:0 cfg_attach:&v110 output:&xdict];
    v26 = v99;
    v99 = 0;

    goto LABEL_96;
  }

  if (!std::string::compare(&v104, "threadStart"))
  {
    v27 = xpc::dict::operator*(v5);
    v28 = xpc_dictionary_get_string(v27, "uniqueNetworkId");

    v29 = xpc::dict::operator*(v5);
    self->_waitForSync = xpc_dictionary_get_BOOL(v29, "wait_for_sync");

    v30 = xpc::dict::operator*(v5);
    v31 = xpc_dictionary_get_string(v30, "activeOperationalDataset");

    if (*(&a3->var0.var1 + 23) < 0)
    {
      a3 = a3->var0.var1.var0;
    }

    if (!strcmp(a3->var0.var0.var0, "wpanctl"))
    {
      self->_mIsTestClient = 1;
    }

    v32 = xpc::dict::operator*(v5);
    v33 = xpc_dictionary_get_BOOL(v32, "defaultMode");

    [(ThreadNetworkManagerInstance *)self persistDefaultChildNode:v33];
    v34 = xpc::dict::operator*(v5);
    v35 = xpc_dictionary_get_BOOL(v34, "geoAvailable");

    if (!v35)
    {
      if (![(ThreadNetworkManagerInstance *)self isThreadGeoEnabled])
      {
        v37 = 0;
        goto LABEL_60;
      }

      v36 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
        *&buf[12] = 1024;
        *&buf[14] = 787;
        *&buf[18] = 1024;
        *&buf[20] = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s:%d:  Based of Defaults value, Forcing geoAvailable to TRUE, HK provided geoAvailable flag is : %d", buf, 0x18u);
      }
    }

    v37 = 1;
LABEL_60:
    [(ThreadNetworkManagerInstance *)self persistGeoAvailable:v37];
    v49 = xpc::dict::operator*(v5);
    v50 = xpc_dictionary_get_BOOL(v49, "routerMode");

    v51 = xpc::dict::operator*(v5);
    v52 = xpc_dictionary_get_BOOL(v51, "isPrimaryUser");

    v53 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      waitForSync = self->_waitForSync;
      *buf = 136317186;
      *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
      *&buf[12] = 1024;
      *&buf[14] = 793;
      *&buf[18] = 2080;
      *&buf[20] = v28;
      *&buf[28] = 1024;
      *&buf[30] = waitForSync;
      *&buf[34] = 1024;
      *&buf[36] = v37;
      *&buf[40] = 2080;
      *&buf[42] = v31;
      *&buf[50] = 1024;
      *v107 = v50;
      *&v107[4] = 1024;
      *&v107[6] = v33;
      v108 = 1024;
      LODWORD(v109) = v52;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling threadStart, Got the Unique Network ID : %s, waitForSync flag : %d, geoAvailable flag : %d, activeOperationalDataset : %s routerMode : %d defaultChildNode : %d, isPrimaryUser : %d", buf, 0x44u);
    }

    self->_createNetwork = 1;
    v23 = [(ThreadNetworkManagerInstance *)self threadStart:v28 activeOperationalDataset:v31 isPrimaryUser:v52 routerMode:v50 geoAvailable:v37 defaultChildNode:v33 output:&xdict];
    self->_waitForSync = 0;
    SystemUptimeInSec = getSystemUptimeInSec();
    DaemonUptimeInSec = getDaemonUptimeInSec();
    gettimeofday(&threadStartMsgTime, 0);
    v57 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      *&buf[4] = SystemUptimeInSec;
      *&buf[12] = 2048;
      *&buf[14] = DaemonUptimeInSec;
      *&buf[22] = 2080;
      *&buf[24] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
      *&buf[32] = 1024;
      *&buf[34] = v23;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%llu, %llu] %s: threadStart finished with ret : %d", buf, 0x26u);
    }

    goto LABEL_96;
  }

  if (!std::string::compare(&v104, "threadLeave"))
  {
    v38 = xpc::dict::operator*(v5);
    v39 = xpc_dictionary_get_BOOL(v38, "threadStop");

    v40 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      if (*(&a3->var0.var1 + 23) < 0)
      {
        a3 = a3->var0.var1.var0;
      }

      v41 = &v104;
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = v104.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = a3;
      *&buf[12] = 2080;
      *&buf[14] = v41;
      *&buf[22] = 1024;
      *&buf[24] = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Got command from %s for method %s, threadStop flag : %d", buf, 0x1Cu);
    }

    if (v39)
    {
      v42 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Calling threadStop", buf, 2u);
      }

      v23 = [(ThreadNetworkManagerInstance *)self threadStop];
      xpc_dictionary_set_BOOL(xdict, "threadStop", 1);
    }

    else
    {
      v48 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Calling threadLeave", buf, 2u);
      }

      v23 = [(ThreadNetworkManagerInstance *)self threadLeave];
      [(ThreadNetworkManagerInstance *)self resetMetricsBetweenRoleChanges];
    }
  }

  else
  {
    if (std::string::compare(&v104, "provideEmac"))
    {
      if (!std::string::compare(&v104, "startPairing"))
      {
        v58 = xpc::dict::operator*(v5);
        v59 = xpc_dictionary_get_string(v58, "extendedMACAddress");

        v60 = xpc::dict::operator*(v5);
        v61 = xpc_dictionary_get_BOOL(v60, "isWED");

        v62 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 1024;
          *&buf[14] = 860;
          *&buf[18] = 2080;
          *&buf[20] = v59;
          *&buf[28] = 1024;
          *&buf[30] = v61;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling startPairing, Got the eMAC : 0x%s, isWED : %d", buf, 0x22u);
        }

        v63 = [(ThreadNetworkManagerInstance *)self startPairing:v59 isWED:v61 output:&xdict];
      }

      else if (!std::string::compare(&v104, "stopPairing"))
      {
        v64 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 1024;
          *&buf[14] = 870;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling Stop Pairing", buf, 0x12u);
        }

        v63 = [(ThreadNetworkManagerInstance *)self stopPairing:&xdict];
      }

      else if (!std::string::compare(&v104, "startFWUpdate"))
      {
        v65 = xpc::dict::operator*(v5);
        v66 = xpc_dictionary_get_string(v65, "extendedMACAddress");

        v67 = xpc::dict::operator*(v5);
        v68 = xpc_dictionary_get_BOOL(v67, "isWED");

        v69 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 1024;
          *&buf[14] = 882;
          *&buf[18] = 2080;
          *&buf[20] = v66;
          *&buf[28] = 1024;
          *&buf[30] = v68;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling startFWUpdate, Got the eMAC : 0x%s, isWED : %d", buf, 0x22u);
        }

        v63 = [(ThreadNetworkManagerInstance *)self startFWUpdate:v66 isWED:v68 output:&xdict];
      }

      else if (!std::string::compare(&v104, "stopFWUpdate"))
      {
        v70 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 1024;
          *&buf[14] = 892;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling stop FW Update", buf, 0x12u);
        }

        v63 = [(ThreadNetworkManagerInstance *)self stopFWUpdate:&xdict];
      }

      else if (!std::string::compare(&v104, "updatePrimaryResident"))
      {
        v71 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          if (*(&a3->var0.var1 + 23) < 0)
          {
            a3 = a3->var0.var1.var0;
          }

          v72 = &v104;
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = v104.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = a3;
          *&buf[12] = 2080;
          *&buf[14] = v72;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Got command from %s for method %s", buf, 0x16u);
        }

        v73 = xpc::dict::operator*(v5);
        v74 = xpc_dictionary_get_string(v73, "primaryResidentInfo");

        v75 = xpc::dict::operator*(v5);
        v76 = xpc_dictionary_get_BOOL(v75, "isPrimaryResident");

        v77 = xpc::dict::operator*(v5);
        v78 = xpc_dictionary_get_BOOL(v77, "isPrimaryResidentThreadCapable");

        v79 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 2080;
          *&buf[14] = v74;
          *&buf[22] = 1024;
          *&buf[24] = v76;
          *&buf[28] = 1024;
          *&buf[30] = v78;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s: Calling updatePrimaryResident, primaryInfo=%s, isPrimaryResident=%d, isPrimaryResidentThreadCapable=%d", buf, 0x22u);
        }

        v63 = [(ThreadNetworkManagerInstance *)self updatePrimaryResident:v74 isPrimaryResident:v76 isPrimaryResidentThreadCapable:v78];
      }

      else
      {
        if (std::string::compare(&v104, "updateHomeThreadInfo"))
        {
          v22 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:&v104 message:?];
          }

          v23 = 1;
          goto LABEL_96;
        }

        v80 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          if (*(&a3->var0.var1 + 23) < 0)
          {
            a3 = a3->var0.var1.var0;
          }

          v81 = &v104;
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = v104.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = a3;
          *&buf[12] = 2080;
          *&buf[14] = v81;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Got command from %s for method %s", buf, 0x16u);
        }

        v94 = xpc::dict::operator*(v5);
        int64 = xpc_dictionary_get_int64(v94, "numResidentsInHome");
        v82 = xpc::dict::operator*(v5);
        v97 = xpc_dictionary_get_int64(v82, "numThreadCapableResidentsInHome");
        v83 = xpc::dict::operator*(v5);
        v96 = xpc_dictionary_get_int64(v83, "numHAPThreadAccessories");
        v84 = xpc::dict::operator*(v5);
        v95 = xpc_dictionary_get_int64(v84, "numMatterThreadAccessories");
        v85 = xpc::dict::operator*(v5);
        v86 = xpc_dictionary_get_int64(v85, "numHAPSleepyThreadAccessories");
        v87 = xpc::dict::operator*(v5);
        v88 = xpc_dictionary_get_int64(v87, "numMatterSleepyThreadAccessories");

        v89 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          *buf = 136316674;
          *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
          *&buf[12] = 2048;
          *&buf[14] = int64;
          *&buf[22] = 2048;
          *&buf[24] = v97;
          *&buf[32] = 2048;
          *&buf[34] = v96;
          *&buf[42] = 2048;
          *&buf[44] = v95;
          *v107 = 2048;
          *&v107[2] = v86;
          v108 = 2048;
          v109 = v88;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s: Calling updateHomeThreadInfo, residents=%ld, threadResidents=%ld, hapAcc=%ld, matterAcc=%ld, hapSleepyAcc=%ld, matterSleepyAcc=%ld", buf, 0x48u);
        }

        *buf = int64;
        *&buf[8] = v97;
        *&buf[16] = v96;
        *&buf[24] = v95;
        *&buf[32] = v86;
        *&buf[40] = v88;
        v63 = [(ThreadNetworkManagerInstance *)self updateHomeThreadInfo:buf];
      }

      v23 = v63;
      goto LABEL_96;
    }

    v43 = xpc::dict::operator*(v5);
    v44 = xpc_dictionary_get_string(v43, "extendedMACAddress");

    v45 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
      *&buf[12] = 1024;
      *&buf[14] = 842;
      *&buf[18] = 2080;
      *&buf[20] = v44;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s:%d: Calling provideEMACAddress, Got the eMAC : 0x%s, ", buf, 0x1Cu);
    }

    v23 = [(ThreadNetworkManagerInstance *)self provideExtendedMACAddress:v44 output:&xdict];
    v46 = log_get_logging_obg("com.apple.wpantund.tnm", "Wed");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(ThreadNetworkManagerInstance *)self modeChangeInProgress];
      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance threadNetworkManagerInstance_MsgHandler:message:]";
      *&buf[12] = 1024;
      *&buf[14] = 846;
      *&buf[18] = 1024;
      *&buf[20] = v47;
      *&buf[24] = 1024;
      *&buf[26] = v23;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s:%d: Check if possible to transition to child Node, modeChangeInProgress = %d, ret = %d", buf, 0x1Eu);
    }

    if ((v23 == 1 || !v44) && ![(ThreadNetworkManagerInstance *)self modeChangeInProgress])
    {
      [(ThreadNetworkManagerInstance *)self transitionToChildNode:&xdict];
    }
  }

LABEL_96:
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v104;
  }

  else
  {
    v90 = v104.__r_.__value_.__r.__words[0];
  }

  xpc_dictionary_set_string(xdict, "method", v90);
  if (v103 >= 0)
  {
    v91 = __p;
  }

  else
  {
    v91 = __p[0];
  }

  xpc_dictionary_set_string(xdict, "property_name", v91);
  xpc_dictionary_set_int64(xdict, "ret", v23);
  xpc::dict::dict(v8, &xdict);
  if (v103 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v92 = xdict;
  xdict = 0;

  return v93;
}

- (void)appendValMapToDict:(id)a3 value:(any)a4
{
  v5 = a3;
  boost::any_cast<std::map<std::string,boost::any>>(a4.var0, &v13);
  v6 = v13;
  if (v13 != v14)
  {
    do
    {
      v7 = [NSNumber numberWithUnsignedInt:*boost::any_cast<unsigned int const&>(v6 + 7)];
      v8 = v6 + 4;
      if (*(v6 + 55) < 0)
      {
        v8 = *v8;
      }

      v9 = [NSString stringWithUTF8String:v8];
      [v5 setObject:v7 forKey:v9];

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v14);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v13, v14[0]);
}

- (void)updateInternalDBForCommonDimensions:(id)a3 coexCntrsDict:(id)a4 coexDict:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v42, "Command error");
  v11 = v42;
  v12 = SBYTE7(v43);
  v13 = xpc_null_create();
  v44 = 0;
  v45 = v13;
  self->_isPeriodicCaCollectionMeshcopRunning = 0;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Counter:AllIPv6:AsValMap");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v44];
    v15 = v42 == 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v42 = 0u;
  v43 = 0u;
  v15 = 1;
  if (v12 < 0)
  {
LABEL_3:
    operator delete(v11);
  }

LABEL_4:
  v16 = *(&v42 + 1);
  v17 = SHIBYTE(v43);
  HIBYTE(v43) = 0;
  BYTE8(v42) = 0;
  if (v41 < 0)
  {
    operator delete(__p[0]);
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else if (!v15)
  {
    goto LABEL_15;
  }

  v18 = v44;
  if (v44)
  {
    v18 = (*(*v44 + 24))(v44);
  }

  v39 = v18;
  v19.var0 = &v39;
  convert_ValMap_to_xpc_object(v19, "NCP:Counter:AllIPv6:AsValMap", "PropGet", &v42);
  v20 = v42;
  v21 = xpc_null_create();

  v22 = v45;
  v45 = v20;

  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  *&v42 = &v45;
  *(&v42 + 1) = "value";
  v23 = xpc::dict::object_proxy::operator*(&v42);
  CAMetricsHandlers_handle_getprop_allipv6(v23, v8);

LABEL_15:
  v38 = 0;
  v24 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v36, "NCP:Counter:Thread:Mle:AsValMap");
  if (v24)
  {
    [(CtrInternalClient *)v24 getProperty:v36 output:&v38];
    v25 = v42 == 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v42 = 0u;
  v43 = 0u;
  v25 = 1;
  if (v17 < 0)
  {
LABEL_17:
    operator delete(v16);
  }

LABEL_18:
  v26 = *(&v42 + 1);
  v27 = SHIBYTE(v43);
  HIBYTE(v43) = 0;
  BYTE8(v42) = 0;
  if (v37 < 0)
  {
    operator delete(v36[0]);
    if (!v25)
    {
      goto LABEL_29;
    }
  }

  else if (!v25)
  {
    goto LABEL_29;
  }

  v28 = v38;
  if (v38)
  {
    v28 = (*(*v38 + 24))(v38);
  }

  v35 = v28;
  v29.var0 = &v35;
  convert_ValMap_to_xpc_object(v29, "NCP:Counter:Thread:Mle:AsValMap", "PropGet", &v42);
  v30 = v42;
  v31 = xpc_null_create();

  v32 = v45;
  v45 = v30;

  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  *&v42 = &v45;
  *(&v42 + 1) = "value";
  v33 = xpc::dict::object_proxy::operator*(&v42);
  CAMetricsHandlers_handle_getprop_threadmle(v33, v8);

LABEL_29:
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v34 = v45;
  v45 = 0;

  if (v27 < 0)
  {
    operator delete(v26);
  }
}

- (void)addCommonDimensions:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(v102, "Command error");
  __p = *v102;
  v5 = v102[23];
  v100.var0 = 0;
  v101.var0 = 0;
  v98.var0 = 0;
  v99.var0 = 0;
  v97.var0 = 0;
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  if (self->_lastKnownNCPState == 8)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v6 = ;
  [(NSMutableDictionary *)v4 setObject:v6 forKey:@"is_state_associated"];

  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v95, "thread_version");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v95 output:&v99];
    v8 = *v102 == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  memset(v102, 0, 32);
  v8 = 1;
  if (v5 < 0)
  {
LABEL_6:
    operator delete(__p);
  }

LABEL_7:
  __pa = *&v102[8];
  v9 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v96 < 0)
  {
    operator delete(v95[0]);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else if (!v8)
  {
    goto LABEL_18;
  }

  v10 = any_to_int(&v99);
  std::to_string(v102, v10);
  v11 = v102[23];
  v12 = *v102;
  v13 = +[NSString defaultCStringEncoding];
  if (v11 >= 0)
  {
    v14 = v102;
  }

  else
  {
    v14 = v12;
  }

  v15 = [NSString stringWithCString:v14 encoding:v13];
  [(NSMutableDictionary *)v4 setObject:v15 forKey:@"thread_version"];

  if ((v102[23] & 0x80000000) != 0)
  {
    operator delete(*v102);
  }

LABEL_18:
  v16 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v93, "NetdataFull:NoUnicastService");
  if (v16)
  {
    [(CtrInternalClient *)v16 getProperty:v93 output:&v98];
    v17 = *v102 == 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  memset(v102, 0, 32);
  v17 = 1;
  if (v9 < 0)
  {
LABEL_20:
    operator delete(__pa);
  }

LABEL_21:
  __pb = *&v102[8];
  v18 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v94 < 0)
  {
    operator delete(v93[0]);
    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else if (!v17)
  {
    goto LABEL_31;
  }

  if (any_to_int(&v98))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v19 = ;
  [(NSMutableDictionary *)v4 setObject:v19 forKey:@"is_network_data_full_no_unicast_service"];

LABEL_31:
  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  if (*(RcpHostContext::sRcpHostContext + 5960))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v20 = ;
  [(NSMutableDictionary *)v4 setObject:v20 forKey:@"is_radio_tx_timeout"];

  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  if (*(RcpHostContext::sRcpHostContext + 5964) == 1)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v21 = ;
  [(NSMutableDictionary *)v4 setObject:v21 forKey:@"is_buffer_limit_exceeded"];

  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  if (*(RcpHostContext::sRcpHostContext + 5965) == 1)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v22 = ;
  [(NSMutableDictionary *)v4 setObject:v22 forKey:@"is_non_converging_prefix"];

  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  if (*(RcpHostContext::sRcpHostContext + 5966) == 1)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v23 = ;
  [(NSMutableDictionary *)v4 setObject:v23 forKey:@"is_non_converging_unicast_srp_service"];

  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  if (*(RcpHostContext::sRcpHostContext + 5967) == 1)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v24 = ;
  [(NSMutableDictionary *)v4 setObject:v24 forKey:@"is_network_data_full"];

  v25 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v91, "numOnMeshPrefixes");
  if (v25)
  {
    [(CtrInternalClient *)v25 getProperty:v91 output:&v101];
    v26 = *v102 == 0;
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  memset(v102, 0, 32);
  v26 = 1;
  if (v18 < 0)
  {
LABEL_53:
    operator delete(__pb);
  }

LABEL_54:
  __pc = *&v102[8];
  v27 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v92 < 0)
  {
    operator delete(v91[0]);
    if (!v26)
    {
      goto LABEL_64;
    }
  }

  else if (!v26)
  {
    goto LABEL_64;
  }

  if (any_to_int(&v101) < 2)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v28 = ;
  [(NSMutableDictionary *)v4 setObject:v28 forKey:@"is_multiple_prefix_detected"];

LABEL_64:
  v29 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v89, "numRouters");
  if (v29)
  {
    [(CtrInternalClient *)v29 getProperty:v89 output:&v100];
    v30 = *v102 == 0;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  memset(v102, 0, 32);
  v30 = 1;
  if (v27 < 0)
  {
LABEL_66:
    operator delete(__pc);
  }

LABEL_67:
  __pd = *&v102[8];
  v31 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v90 < 0)
  {
    operator delete(v89[0]);
    if (!v30)
    {
      goto LABEL_81;
    }
  }

  else if (!v30)
  {
    goto LABEL_81;
  }

  v32 = any_to_int(&v100);
  if (v32 >= 4)
  {
    if (v32 >= 0xA)
    {
      if (v32 >= 0xF)
      {
        v33 = @"very large";
      }

      else
      {
        v33 = @"large";
      }
    }

    else
    {
      v33 = @"medium";
    }
  }

  else
  {
    v33 = @"small";
  }

  [(NSMutableDictionary *)v4 setObject:v33 forKey:@"thread_mesh_size"];
LABEL_81:
  v34 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v87, "Network:NodeType");
  if (v34)
  {
    [(CtrInternalClient *)v34 getProperty:v87 output:&v97];
    v35 = *v102 == 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  memset(v102, 0, 32);
  v35 = 1;
  if (v31 < 0)
  {
LABEL_83:
    operator delete(__pd);
  }

LABEL_84:
  __pe = *&v102[8];
  v36 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v88 < 0)
  {
    operator delete(v87[0]);
    if (!v35)
    {
      goto LABEL_95;
    }
  }

  else if (!v35)
  {
    goto LABEL_95;
  }

  any_to_string(&v97, v102);
  v37 = v102[23];
  v38 = *v102;
  v39 = +[NSString defaultCStringEncoding];
  if (v37 >= 0)
  {
    v40 = v102;
  }

  else
  {
    v40 = v38;
  }

  v41 = [NSString stringWithCString:v40 encoding:v39];
  [(NSMutableDictionary *)v4 setObject:v41 forKey:@"last_known_device_role"];

  if ((v102[23] & 0x80000000) != 0)
  {
    operator delete(*v102);
  }

LABEL_95:
  v42 = [(ThreadNetworkManagerInstance *)self CAgetPrevValidDeviceRole];
  [(NSMutableDictionary *)v4 setObject:v42 forKey:@"prev_device_role"];

  v86 = 0;
  v43 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v84, "cametrics_periodic_stability_data");
  if (v43)
  {
    [(CtrInternalClient *)v43 getProperty:v84 output:&v86];
    v45 = *v102 == 0;
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  memset(v102, 0, 32);
  v45 = 1;
  if (v36 < 0)
  {
LABEL_97:
    operator delete(__pe);
  }

LABEL_98:
  __pf = *&v102[8];
  v46 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v85 < 0)
  {
    operator delete(v84[0]);
    if (!v45)
    {
      goto LABEL_118;
    }
  }

  else if (!v45)
  {
    goto LABEL_118;
  }

  v47 = v86;
  if (v86)
  {
    v47 = (*(*v86 + 24))(v86);
  }

  v83 = v47;
  v48 = InternalClientIPCHelper::decodeComplexValToDict(&v83, v44);
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v49 = [v48 objectForKey:@"num_firmware_resets"];
  v50 = [v49 intValue];
  v51 = [v48 objectForKey:@"num_daemon_restart_due_to_crashes_or_jetsams"];
  v52 = [v51 intValue];
  v53 = [v48 objectForKey:@"num_daemon_restart_due_to_reboots"];
  v54 = [v53 intValue];
  if (v50 < 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v55 = ;
  [(NSMutableDictionary *)v4 setObject:v55 forKey:@"is_fwreset_detected"];

  if (v52 < 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v56 = ;
  [(NSMutableDictionary *)v4 setObject:v56 forKey:@"is_daemon_crash_jetsam_detected"];

  if (v54 < 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v57 = ;
  [(NSMutableDictionary *)v4 setObject:v57 forKey:@"is_daemon_reboot_detected"];

LABEL_118:
  v82 = 0;
  v58 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v80, "primary_resident_data");
  if (v58)
  {
    [(CtrInternalClient *)v58 getProperty:v80 output:&v82];
    v60 = *v102 == 0;
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  memset(v102, 0, 32);
  v60 = 1;
  if (v46 < 0)
  {
LABEL_120:
    operator delete(__pf);
  }

LABEL_121:
  __pg = *&v102[8];
  v61 = v102[31];
  v102[31] = 0;
  v102[8] = 0;
  if (v81 < 0)
  {
    operator delete(v80[0]);
    if (!v60)
    {
      goto LABEL_140;
    }
  }

  else if (!v60)
  {
    goto LABEL_140;
  }

  v62 = v82;
  if (v82)
  {
    v62 = (*(*v82 + 24))(v82);
  }

  v79 = v62;
  v63 = InternalClientIPCHelper::decodeComplexValToDict(&v79, v59);
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v64 = [v63 objectForKey:@"is_primary_resident"];
  v65 = [v64 intValue];
  v66 = [v63 objectForKey:@"is_primary_resident_thread_capable"];
  v67 = [v66 intValue];
  v68 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *v102 = 136316418;
    *&v102[4] = "[ThreadNetworkManagerInstance addCommonDimensions:]";
    *&v102[12] = 1024;
    *&v102[14] = 1269;
    *&v102[18] = 2112;
    *&v102[20] = v64;
    *&v102[28] = 1024;
    *&v102[30] = v65;
    v103 = 2112;
    v104 = v66;
    v105 = 1024;
    v106 = v67;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%s:%d: is_primary_resident=%@ %d is_primary_resident_thread_capable=%@ %d", v102, 0x32u);
  }

  if (v65 < 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v69 = ;
  [(NSMutableDictionary *)v4 setObject:v69 forKey:@"is_primary_resident"];

  if (v67 < 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v70 = ;
  [(NSMutableDictionary *)v4 setObject:v70 forKey:@"is_primary_resident_thread_capable"];

LABEL_140:
  CAMetricsHandlers_handle_common_dimensions(v4);
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  if (v86)
  {
    (*(*v86 + 8))(v86);
  }

  if (v97.var0)
  {
    (*(*v97.var0 + 8))(v97.var0);
  }

  if (v98.var0)
  {
    (*(*v98.var0 + 8))(v98.var0);
  }

  if (v99.var0)
  {
    (*(*v99.var0 + 8))(v99.var0);
  }

  if (v100.var0)
  {
    (*(*v100.var0 + 8))(v100.var0);
  }

  if (v101.var0)
  {
    (*(*v101.var0 + 8))(v101.var0);
  }

  if (v61 < 0)
  {
    operator delete(__pg);
  }
}

- (void)getNetworkRadioMetrics
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command error");
  v3 = *buf;
  v4 = SBYTE7(v148);
  v145 = 0;
  v146 = xpc_null_create();
  v5 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v6 = &mDaemonVersion;
  }

  else
  {
    v6 = mDaemonVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [(NSMutableDictionary *)v5 setObject:v7 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v8 = &mVendorVersion;
  }

  else
  {
    v8 = mVendorVersion;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [(NSMutableDictionary *)v5 setObject:v9 forKey:@"header_vendor_version"];

  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v143, "vendor:MAC:packet:RSSIHistogram:AsValMap");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v143 output:&v145];
    v11 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *buf = 0u;
  v148 = 0u;
  v11 = 1;
  if (v4 < 0)
  {
LABEL_9:
    operator delete(v3);
  }

LABEL_10:
  v12 = *&buf[8];
  v13 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v144 < 0)
  {
    operator delete(v143[0]);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else if (!v11)
  {
    goto LABEL_21;
  }

  v14 = v145;
  if (v145)
  {
    v14 = (*(*v145 + 24))(v145);
  }

  v142 = v14;
  v15.var0 = &v142;
  convert_ValMap_to_xpc_object(v15, "vendor:MAC:packet:RSSIHistogram:AsValMap", "PropGet", buf);
  v16 = *buf;
  v17 = xpc_null_create();

  v18 = v146;
  v146 = v16;

  if (v142)
  {
    (*(*v142 + 8))(v142);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v19 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_nbrRssi(v19, v5);

LABEL_21:
  CAMetricsHandlers_handle_get_channelSelectionData(v5);
  v141 = 0;
  v20 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v139, "vendor:MAC:packet:LQIHistogram:AsValMap");
  if (v20)
  {
    [(CtrInternalClient *)v20 getProperty:v139 output:&v141];
    v21 = *buf == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *buf = 0u;
  v148 = 0u;
  v21 = 1;
  if (v13 < 0)
  {
LABEL_23:
    operator delete(v12);
  }

LABEL_24:
  v22 = *&buf[8];
  v23 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v140 < 0)
  {
    operator delete(v139[0]);
    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else if (!v21)
  {
    goto LABEL_35;
  }

  v24 = v141;
  if (v141)
  {
    v24 = (*(*v141 + 24))(v141);
  }

  v138 = v24;
  v25.var0 = &v138;
  convert_ValMap_to_xpc_object(v25, "vendor:MAC:packet:LQIHistogram:AsValMap", "PropGet", buf);
  v26 = *buf;
  v27 = xpc_null_create();

  v28 = v146;
  v146 = v26;

  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v29 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_macPktLqi(v29, v5);

LABEL_35:
  v137 = 0;
  v30 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "TPC:FrameTxPowerHistogram");
  if (v30)
  {
    [(CtrInternalClient *)v30 getProperty:__p output:&v137];
    v31 = *buf == 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  *buf = 0u;
  v148 = 0u;
  v31 = 1;
  if (v23 < 0)
  {
LABEL_37:
    operator delete(v22);
  }

LABEL_38:
  v32 = *&buf[8];
  v33 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v136 < 0)
  {
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_49;
    }
  }

  else if (!v31)
  {
    goto LABEL_49;
  }

  v34 = v137;
  if (v137)
  {
    v34 = (*(*v137 + 24))(v137);
  }

  v134 = v34;
  v35.var0 = &v134;
  convert_ValMap_to_xpc_object(v35, "TPC:FrameTxPowerHistogram", "PropGet", buf);
  v36 = *buf;
  v37 = xpc_null_create();

  v38 = v146;
  v146 = v36;

  if (v134)
  {
    (*(*v134 + 8))(v134);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v39 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_frameTxPowerHist(v39, v5);

LABEL_49:
  v133 = 0;
  v40 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v131, "TPC:NeighborTxPowerHistogram");
  if (v40)
  {
    [(CtrInternalClient *)v40 getProperty:v131 output:&v133];
    v41 = *buf == 0;
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  *buf = 0u;
  v148 = 0u;
  v41 = 1;
  if (v33 < 0)
  {
LABEL_51:
    operator delete(v32);
  }

LABEL_52:
  v42 = *&buf[8];
  v43 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v132 < 0)
  {
    operator delete(v131[0]);
    if (!v41)
    {
      goto LABEL_63;
    }
  }

  else if (!v41)
  {
    goto LABEL_63;
  }

  v44 = v133;
  if (v133)
  {
    v44 = (*(*v133 + 24))(v133);
  }

  v130 = v44;
  v45.var0 = &v130;
  convert_ValMap_to_xpc_object(v45, "TPC:NeighborTxPowerHistogram", "PropGet", buf);
  v46 = *buf;
  v47 = xpc_null_create();

  v48 = v146;
  v146 = v46;

  if (v130)
  {
    (*(*v130 + 8))(v130);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v49 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_neighborTxPowerHist(v49, v5);

LABEL_63:
  v129 = 0;
  v50 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v127, "TPC:NeighborEnergySavingsFactorHistogram");
  if (v50)
  {
    [(CtrInternalClient *)v50 getProperty:v127 output:&v129];
    v51 = *buf == 0;
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  *buf = 0u;
  v148 = 0u;
  v51 = 1;
  if (v43 < 0)
  {
LABEL_65:
    operator delete(v42);
  }

LABEL_66:
  v52 = *&buf[8];
  v53 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v128 < 0)
  {
    operator delete(v127[0]);
    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else if (!v51)
  {
    goto LABEL_77;
  }

  v54 = v129;
  if (v129)
  {
    v54 = (*(*v129 + 24))(v129);
  }

  v126 = v54;
  v55.var0 = &v126;
  convert_ValMap_to_xpc_object(v55, "TPC:NeighborEnergySavingsFactorHistogram", "PropGet", buf);
  v56 = *buf;
  v57 = xpc_null_create();

  v58 = v146;
  v146 = v56;

  if (v126)
  {
    (*(*v126 + 8))(v126);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v59 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist(v59, v5);

LABEL_77:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
  v124[1] = _NSConcreteStackBlock;
  v124[2] = 3221225472;
  v124[3] = __54__ThreadNetworkManagerInstance_getNetworkRadioMetrics__block_invoke;
  v124[4] = &unk_1004C1808;
  v60 = v5;
  v125 = v60;
  AnalyticsSendExplodingEventLazy();
  v61 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance getNetworkRadioMetrics]";
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneNetworkRadioMetricsHist", buf, 0xCu);
  }

  [(NSMutableDictionary *)v60 removeAllObjects];
  if (byte_1004E5C7F >= 0)
  {
    v62 = &mDaemonVersion;
  }

  else
  {
    v62 = mDaemonVersion;
  }

  v63 = [NSString stringWithUTF8String:v62];
  [(NSMutableDictionary *)v60 setObject:v63 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v64 = &mVendorVersion;
  }

  else
  {
    v64 = mVendorVersion;
  }

  v65 = [NSString stringWithUTF8String:v64];
  [(NSMutableDictionary *)v60 setObject:v65 forKey:@"header_vendor_version"];

  v124[0] = 0;
  v66 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v122, "vendor:radio:counters:asvalmap");
  if (v66)
  {
    [(CtrInternalClient *)v66 getProperty:v122 output:v124];
    v67 = *buf == 0;
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  *buf = 0u;
  v148 = 0u;
  v67 = 1;
  if (v53 < 0)
  {
LABEL_87:
    operator delete(v52);
  }

LABEL_88:
  v68 = *&buf[8];
  v69 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v123 < 0)
  {
    operator delete(v122[0]);
    if (!v67)
    {
      goto LABEL_99;
    }
  }

  else if (!v67)
  {
    goto LABEL_99;
  }

  v70 = v124[0];
  if (v124[0])
  {
    v70 = (*(*v124[0] + 24))(v124[0]);
  }

  v121 = v70;
  v71.var0 = &v121;
  convert_ValMap_to_xpc_object(v71, "vendor:radio:counters:asvalmap", "PropGet", buf);
  v72 = *buf;
  v73 = xpc_null_create();

  v74 = v146;
  v146 = v72;

  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v75 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_radiocounters(v75, v60);

LABEL_99:
  v120 = 0;
  v76 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v118, "vendor:radio:stats:asvalmap");
  if (v76)
  {
    [(CtrInternalClient *)v76 getProperty:v118 output:&v120];
    v77 = *buf == 0;
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  *buf = 0u;
  v148 = 0u;
  v77 = 1;
  if (v69 < 0)
  {
LABEL_101:
    operator delete(v68);
  }

LABEL_102:
  v78 = *&buf[8];
  v79 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v119 < 0)
  {
    operator delete(v118[0]);
    if (!v77)
    {
      goto LABEL_113;
    }
  }

  else if (!v77)
  {
    goto LABEL_113;
  }

  v80 = v120;
  if (v120)
  {
    v80 = (*(*v120 + 24))(v120);
  }

  v117 = v80;
  v81.var0 = &v117;
  convert_ValMap_to_xpc_object(v81, "vendor:radio:stats:asvalmap", "PropGet", buf);
  v82 = *buf;
  v83 = xpc_null_create();

  v84 = v146;
  v146 = v82;

  if (v117)
  {
    (*(*v117 + 8))(v117);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v85 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_radiostat(v85, v60);

LABEL_113:
  v116 = 0;
  v86 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v114, "vendor:openthread:radio:counters:AsValMap");
  if (v86)
  {
    [(CtrInternalClient *)v86 getProperty:v114 output:&v116];
    v87 = *buf == 0;
    if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  *buf = 0u;
  v148 = 0u;
  v87 = 1;
  if (v79 < 0)
  {
LABEL_115:
    operator delete(v78);
  }

LABEL_116:
  v88 = *&buf[8];
  v89 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v115 < 0)
  {
    operator delete(v114[0]);
    if (!v87)
    {
      goto LABEL_127;
    }
  }

  else if (!v87)
  {
    goto LABEL_127;
  }

  v90 = v116;
  if (v116)
  {
    v90 = (*(*v116 + 24))(v116);
  }

  v113 = v90;
  v91.var0 = &v113;
  convert_ValMap_to_xpc_object(v91, "vendor:openthread:radio:counters:AsValMap", "PropGet", buf);
  v92 = *buf;
  v93 = xpc_null_create();

  v94 = v146;
  v146 = v92;

  if (v113)
  {
    (*(*v113 + 8))(v113);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v95 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_generic_function(v95, v60, @"vendor:openthread:radio:counters:AsValMap");

LABEL_127:
  v112 = 0;
  v96 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v110, "vendor:streaming:stats");
  if (v96)
  {
    [(CtrInternalClient *)v96 getProperty:v110 output:&v112];
    v97 = *buf == 0;
    if ((v89 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  *buf = 0u;
  v148 = 0u;
  v97 = 1;
  if (v89 < 0)
  {
LABEL_129:
    operator delete(v88);
  }

LABEL_130:
  v98 = *&buf[8];
  v99 = SHIBYTE(v148);
  HIBYTE(v148) = 0;
  buf[8] = 0;
  if (v111 < 0)
  {
    operator delete(v110[0]);
    if (!v97)
    {
      goto LABEL_141;
    }
  }

  else if (!v97)
  {
    goto LABEL_141;
  }

  v100 = v112;
  if (v112)
  {
    v100 = (*(*v112 + 24))(v112);
  }

  v109 = v100;
  v101.var0 = &v109;
  convert_ValMap_to_xpc_object(v101, "vendor:streaming:stats", "PropGet", buf);
  v102 = *buf;
  v103 = xpc_null_create();

  v104 = v146;
  v146 = v102;

  if (v109)
  {
    (*(*v109 + 8))(v109);
  }

  *buf = &v146;
  *&buf[8] = "value";
  v105 = xpc::dict::object_proxy::operator*(buf);
  CAMetricsHandlers_handle_getprop_generic_function(v105, v60, @"vendor:streaming:stats");

LABEL_141:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v60];
  v106 = v60;
  AnalyticsSendEventLazy();
  [(ThreadNetworkManagerInstance *)self resetNetworkRadioMetrics:_NSConcreteStackBlock];
  v107 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance getNetworkRadioMetrics]";
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneNetworkRadioMetricsCounters", buf, 0xCu);
  }

  if (v112)
  {
    (*(*v112 + 8))(v112);
  }

  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  if (v120)
  {
    (*(*v120 + 8))(v120);
  }

  if (v124[0])
  {
    (*(*v124[0] + 8))(v124[0]);
  }

  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  if (v133)
  {
    (*(*v133 + 8))(v133);
  }

  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  if (v141)
  {
    (*(*v141 + 8))(v141);
  }

  if (v145)
  {
    (*(*v145 + 8))(v145);
  }

  v108 = v146;
  v146 = 0;

  if (v99 < 0)
  {
    operator delete(v98);
  }
}

- (void)resetNetworkRadioMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&v68, "Command success");
  v3 = v68;
  v4 = SBYTE7(v69);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v66, "vendor:MAC:packet:RSSIHistogram");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:v66 property_val:"0"];
    v6 = v68 == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v68 = 0u;
  v69 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *(&v68 + 1);
  v8 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v67 < 0)
  {
    operator delete(v66[0]);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    goto LABEL_13;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_13:
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v64, "vendor:MAC:packet:LQIHistogram");
  if (v10)
  {
    [(CtrInternalClient *)v10 setProperty:v64 property_val:"0"];
    v11 = v68 == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v68 = 0u;
  v69 = 0u;
  v11 = 1;
  if (v8 < 0)
  {
LABEL_15:
    operator delete(v7);
  }

LABEL_16:
  v12 = *(&v68 + 1);
  v13 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v65 < 0)
  {
    operator delete(v64[0]);
    if (v11)
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_25:
  v15 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "TPC:FrameTxPowerHistogram");
  if (v15)
  {
    [(CtrInternalClient *)v15 setProperty:__p property_val:"0"];
    v16 = v68 == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v68 = 0u;
  v69 = 0u;
  v16 = 1;
  if (v13 < 0)
  {
LABEL_27:
    operator delete(v12);
  }

LABEL_28:
  v17 = *(&v68 + 1);
  v18 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v63 < 0)
  {
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_37;
    }
  }

  else if (v16)
  {
    goto LABEL_37;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_37:
  v20 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v60, "TPC:NeighborTxPowerHistogram");
  if (v20)
  {
    [(CtrInternalClient *)v20 setProperty:v60 property_val:"0"];
    v21 = v68 == 0;
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v68 = 0u;
  v69 = 0u;
  v21 = 1;
  if (v18 < 0)
  {
LABEL_39:
    operator delete(v17);
  }

LABEL_40:
  v22 = *(&v68 + 1);
  v23 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v61 < 0)
  {
    operator delete(v60[0]);
    if (v21)
    {
      goto LABEL_49;
    }
  }

  else if (v21)
  {
    goto LABEL_49;
  }

  v24 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_49:
  v25 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v58, "TPC:NeighborEnergySavingsFactorHistogram");
  if (v25)
  {
    [(CtrInternalClient *)v25 setProperty:v58 property_val:"0"];
    v26 = v68 == 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v68 = 0u;
  v69 = 0u;
  v26 = 1;
  if (v23 < 0)
  {
LABEL_51:
    operator delete(v22);
  }

LABEL_52:
  v27 = *(&v68 + 1);
  v28 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v59 < 0)
  {
    operator delete(v58[0]);
    if (v26)
    {
      goto LABEL_61;
    }
  }

  else if (v26)
  {
    goto LABEL_61;
  }

  v29 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_61:
  v30 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v56, "vendor:radio:counters");
  if (v30)
  {
    [(CtrInternalClient *)v30 setProperty:v56 property_val:"0"];
    v31 = v68 == 0;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v68 = 0u;
  v69 = 0u;
  v31 = 1;
  if (v28 < 0)
  {
LABEL_63:
    operator delete(v27);
  }

LABEL_64:
  v32 = *(&v68 + 1);
  v33 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v57 < 0)
  {
    operator delete(v56[0]);
    if (v31)
    {
      goto LABEL_73;
    }
  }

  else if (v31)
  {
    goto LABEL_73;
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_73:
  v35 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v54, "vendor:radio:stats");
  if (v35)
  {
    [(CtrInternalClient *)v35 setProperty:v54 property_val:"0"];
    v36 = v68 == 0;
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v68 = 0u;
  v69 = 0u;
  v36 = 1;
  if (v33 < 0)
  {
LABEL_75:
    operator delete(v32);
  }

LABEL_76:
  v37 = *(&v68 + 1);
  v38 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v55 < 0)
  {
    operator delete(v54[0]);
    if (v36)
    {
      goto LABEL_85;
    }
  }

  else if (v36)
  {
    goto LABEL_85;
  }

  v39 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_85:
  v40 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v52, "vendor:openthread:radio:counters");
  if (v40)
  {
    [(CtrInternalClient *)v40 setProperty:v52 property_val:"0"];
    v41 = v68 == 0;
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v68 = 0u;
  v69 = 0u;
  v41 = 1;
  if (v38 < 0)
  {
LABEL_87:
    operator delete(v37);
  }

LABEL_88:
  v42 = *(&v68 + 1);
  v43 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
    if (v41)
    {
      goto LABEL_97;
    }
  }

  else if (v41)
  {
    goto LABEL_97;
  }

  v44 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_97:
  v45 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v50, "vendor:streaming:stats");
  if (v45)
  {
    [(CtrInternalClient *)v45 setProperty:v50 property_val:"0"];
    v46 = v68 == 0;
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v68 = 0u;
  v69 = 0u;
  v46 = 1;
  if (v43 < 0)
  {
LABEL_99:
    operator delete(v42);
  }

LABEL_100:
  v47 = *(&v68 + 1);
  v48 = SHIBYTE(v69);
  HIBYTE(v69) = 0;
  BYTE8(v68) = 0;
  if (v51 < 0)
  {
    operator delete(v50[0]);
    if (v46)
    {
      goto LABEL_109;
    }
  }

  else if (v46)
  {
    goto LABEL_109;
  }

  v49 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetNetworkRadioMetrics];
  }

LABEL_109:
  CAMetricsHandlers_handle_reset_channelSelectionData();
  if (v48 < 0)
  {
    operator delete(v47);
  }
}

- (void)getAllMacMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&buf, "Command success");
  v3 = buf;
  v4 = SBYTE7(v78);
  v75 = 0;
  v76 = xpc_null_create();
  v5 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v6 = &mDaemonVersion;
  }

  else
  {
    v6 = mDaemonVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v5 setObject:v7 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v8 = &mVendorVersion;
  }

  else
  {
    v8 = mVendorVersion;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [v5 setObject:v9 forKey:@"header_vendor_version"];

  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v73, "NCP:Counter:AllMac:AsValMap");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v73 output:&v75];
    v11 = buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  buf = 0u;
  v78 = 0u;
  v11 = 1;
  if (v4 < 0)
  {
LABEL_9:
    operator delete(v3);
  }

LABEL_10:
  v12 = *(&buf + 1);
  v13 = SHIBYTE(v78);
  HIBYTE(v78) = 0;
  BYTE8(buf) = 0;
  if (v74 < 0)
  {
    operator delete(v73[0]);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else if (!v11)
  {
    goto LABEL_21;
  }

  v14 = v75;
  if (v75)
  {
    v14 = (*(*v75 + 24))(v75);
  }

  v72 = v14;
  v15.var0 = &v72;
  convert_ValMap_to_xpc_object(v15, "NCP:Counter:AllMac:AsValMap", "PropGet", &buf);
  v16 = buf;
  v17 = xpc_null_create();

  v18 = v76;
  v76 = v16;

  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  *&buf = &v76;
  *(&buf + 1) = "value";
  v19 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_allmac(v19, v5);

LABEL_21:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
  v70[1] = _NSConcreteStackBlock;
  v70[2] = 3221225472;
  v70[3] = __48__ThreadNetworkManagerInstance_getAllMacMetrics__block_invoke;
  v70[4] = &unk_1004C1808;
  v20 = v5;
  v71 = v20;
  AnalyticsSendEventLazy();
  [v20 removeAllObjects];
  v21 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ThreadNetworkManagerInstance getAllMacMetrics]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneMACMetricsCounters", &buf, 0xCu);
  }

  if (byte_1004E5C7F >= 0)
  {
    v22 = &mDaemonVersion;
  }

  else
  {
    v22 = mDaemonVersion;
  }

  v23 = [NSString stringWithUTF8String:v22];
  [v20 setObject:v23 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v24 = &mVendorVersion;
  }

  else
  {
    v24 = mVendorVersion;
  }

  v25 = [NSString stringWithUTF8String:v24];
  [v20 setObject:v25 forKey:@"header_vendor_version"];

  v70[0] = 0;
  v26 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:MAC:packet:SizeHistogram:AsValMap");
  if (v26)
  {
    [(CtrInternalClient *)v26 getProperty:__p output:v70];
    v27 = buf == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  buf = 0u;
  v78 = 0u;
  v27 = 1;
  if (v13 < 0)
  {
LABEL_31:
    operator delete(v12);
  }

LABEL_32:
  v28 = *(&buf + 1);
  v29 = SHIBYTE(v78);
  HIBYTE(v78) = 0;
  BYTE8(buf) = 0;
  if (v69 < 0)
  {
    operator delete(__p[0]);
    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else if (!v27)
  {
    goto LABEL_43;
  }

  v30 = v70[0];
  if (v70[0])
  {
    v30 = (*(*v70[0] + 24))(v70[0]);
  }

  v67 = v30;
  v31.var0 = &v67;
  convert_ValMap_to_xpc_object(v31, "vendor:MAC:packet:SizeHistogram:AsValMap", "PropGet", &buf);
  v32 = buf;
  v33 = xpc_null_create();

  v34 = v76;
  v76 = v32;

  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  *&buf = &v76;
  *(&buf + 1) = "value";
  v35 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_macPktSize(v35, v20);

LABEL_43:
  v66 = 0;
  v36 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v64, "NCP:MacRetryHistogram:AsValMap");
  if (v36)
  {
    [(CtrInternalClient *)v36 getProperty:v64 output:&v66];
    v37 = buf == 0;
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  buf = 0u;
  v78 = 0u;
  v37 = 1;
  if (v29 < 0)
  {
LABEL_45:
    operator delete(v28);
  }

LABEL_46:
  v38 = *(&buf + 1);
  v39 = SHIBYTE(v78);
  HIBYTE(v78) = 0;
  BYTE8(buf) = 0;
  if (v65 < 0)
  {
    operator delete(v64[0]);
    if (!v37)
    {
      goto LABEL_57;
    }
  }

  else if (!v37)
  {
    goto LABEL_57;
  }

  v40 = v66;
  if (v66)
  {
    v40 = (*(*v66 + 24))(v66);
  }

  v63 = v40;
  v41.var0 = &v63;
  convert_ValMap_to_xpc_object(v41, "NCP:MacRetryHistogram:AsValMap", "PropGet", &buf);
  v42 = buf;
  v43 = xpc_null_create();

  v44 = v76;
  v76 = v42;

  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  *&buf = &v76;
  *(&buf + 1) = "value";
  v45 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_macretry(v45, v20);

LABEL_57:
  v62 = 0;
  v46 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v60, "vendor:MAC:packet:ErrorHistogram:AsValMap");
  if (v46)
  {
    [(CtrInternalClient *)v46 getProperty:v60 output:&v62];
    v47 = buf == 0;
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  buf = 0u;
  v78 = 0u;
  v47 = 1;
  if (v39 < 0)
  {
LABEL_59:
    operator delete(v38);
  }

LABEL_60:
  v48 = *(&buf + 1);
  v49 = SHIBYTE(v78);
  HIBYTE(v78) = 0;
  BYTE8(buf) = 0;
  if (v61 < 0)
  {
    operator delete(v60[0]);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else if (!v47)
  {
    goto LABEL_71;
  }

  v50 = v62;
  if (v62)
  {
    v50 = (*(*v62 + 24))(v62);
  }

  v59 = v50;
  v51.var0 = &v59;
  convert_ValMap_to_xpc_object(v51, "vendor:MAC:packet:ErrorHistogram:AsValMap", "PropGet", &buf);
  v52 = buf;
  v53 = xpc_null_create();

  v54 = v76;
  v76 = v52;

  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  *&buf = &v76;
  *(&buf + 1) = "value";
  v55 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_macerror(v55, v20);

LABEL_71:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v20];
  v56 = v20;
  AnalyticsSendExplodingEventLazy();
  v57 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ThreadNetworkManagerInstance getAllMacMetrics]";
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneMACMetricsHist", &buf, 0xCu);
  }

  [(ThreadNetworkManagerInstance *)self resetMacMetrics];
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  if (v70[0])
  {
    (*(*v70[0] + 8))(v70[0]);
  }

  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v58 = v76;
  v76 = 0;

  if (v49 < 0)
  {
    operator delete(v48);
  }
}

- (void)submitHistogramCAEvent:(id)a3 histValues:(void *)a4
{
  v22 = a3;
  v6 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v7 = &mDaemonVersion;
  }

  else
  {
    v7 = mDaemonVersion;
  }

  v8 = [NSString stringWithUTF8String:v7];
  [v6 setObject:v8 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v9 = &mVendorVersion;
  }

  else
  {
    v9 = mVendorVersion;
  }

  v10 = [NSString stringWithUTF8String:v9];
  v21 = self;
  [v6 setObject:v10 forKey:@"header_vendor_version"];

  v11 = *(a4 + 2);
  if (v11)
  {
    while (1)
    {
      v12 = v11 + 2;
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }

      v13 = [NSString stringWithUTF8String:v12];
      if (!v13)
      {
        break;
      }

      v14 = +[NSMutableArray array];
      if (!v14)
      {
        v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance submitHistogramCAEvent:histValues:];
        }

        goto LABEL_25;
      }

      v15 = v11[5];
      v16 = v11[6];
      while (v15 != v16)
      {
        v17 = [NSNumber numberWithInt:*v15];
        [v14 addObject:v17];

        ++v15;
      }

      [v6 setObject:v14 forKey:v13];

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance submitHistogramCAEvent:histValues:];
    }

    v13 = v19;
  }

  else
  {
LABEL_16:
    [(ThreadNetworkManagerInstance *)v21 addCommonDimensions:v6];
    v23 = v6;
    AnalyticsSendExplodingEventLazy();
    v18 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[ThreadNetworkManagerInstance submitHistogramCAEvent:histValues:]";
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: Triggered %@", buf, 0x16u);
    }

    v13 = v23;
  }

LABEL_25:
}

- (void)dumpAppAndRouteMetricsHistograms
{
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ThreadNetworkManagerInstance dumpAppAndRouteMetricsHistograms];
  }

  for (i = qword_1004E5580; i; i = *i)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = (i + 16);
      if (*(i + 39) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315138;
      v35 = v9;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Key:%s ->Values:", buf, 0xCu);
    }

    v5 = *(i + 40);
    v6 = *(i + 48);
    while (v5 != v6)
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *v5;
        *buf = 67109120;
        LODWORD(v35) = v8;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%d", buf, 8u);
      }

      ++v5;
    }
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ThreadNetworkManagerInstance dumpAppAndRouteMetricsHistograms];
  }

  for (j = qword_1004E55A8; j; j = *j)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = (j + 16);
      if (*(j + 39) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315138;
      v35 = v17;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Key:%s ->Values:", buf, 0xCu);
    }

    v13 = *(j + 40);
    v14 = *(j + 48);
    while (v13 != v14)
    {
      v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *v13;
        *buf = 67109120;
        LODWORD(v35) = v16;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%d", buf, 8u);
      }

      ++v13;
    }
  }

  v18 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ThreadNetworkManagerInstance dumpAppAndRouteMetricsHistograms];
  }

  for (k = qword_1004E55D0; k; k = *k)
  {
    v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v25 = (k + 16);
      if (*(k + 39) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      v35 = v25;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Key:%s ->Values:", buf, 0xCu);
    }

    v21 = *(k + 40);
    v22 = *(k + 48);
    while (v21 != v22)
    {
      v23 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *v21;
        *buf = 67109120;
        LODWORD(v35) = v24;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%d", buf, 8u);
      }

      ++v21;
    }
  }

  v26 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [ThreadNetworkManagerInstance dumpAppAndRouteMetricsHistograms];
  }

  for (m = qword_1004E55F8; m; m = *m)
  {
    v28 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v33 = (m + 16);
      if (*(m + 39) < 0)
      {
        v33 = *v33;
      }

      *buf = 136315138;
      v35 = v33;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Key:%s ->Values:", buf, 0xCu);
    }

    v29 = *(m + 40);
    v30 = *(m + 48);
    while (v29 != v30)
    {
      v31 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = *v29;
        *buf = 67109120;
        LODWORD(v35) = v32;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%d", buf, 8u);
      }

      ++v29;
    }
  }
}

- (void)updateOTAppAndRouteCostHistograms
{
  std::string::basic_string[abi:ne200100]<0>(v11, "Command success");
  v3 = v11[0];
  v4 = SBYTE7(v12);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "UpdateAppAndRouteMetricsHistograms");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = LODWORD(v11[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v11 = 0u;
  v12 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v11[1];
  v8 = SHIBYTE(v12);
  HIBYTE(v12) = 0;
  LOBYTE(v11[1]) = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6)
  {
LABEL_10:
    [(ThreadNetworkManagerInstance *)self submitHistogramCAEvent:@"com.apple.Flagstone.flagstoneRouteCostMetricsHist" histValues:&tx_route_cost_histograms];
    [(ThreadNetworkManagerInstance *)self submitHistogramCAEvent:@"com.apple.Flagstone.flagstoneHopCountMetricsHist" histValues:&rx_hop_count_histograms];
    [(ThreadNetworkManagerInstance *)self submitHistogramCAEvent:@"com.apple.Flagstone.flagstoneAppRetryMetricsHist" histValues:&app_txcount_histograms];
    [(ThreadNetworkManagerInstance *)self submitHistogramCAEvent:@"com.apple.Flagstone.flagstoneApplicationDuplicateMetricsHist" histValues:&app_rxdupcount_histograms];
  }

LABEL_11:
  if (v8 < 0)
  {
    operator delete(v7);
  }
}

- (void)resetOTAppAndRouteCostHistograms
{
  std::string::basic_string[abi:ne200100]<0>(v12, "Command success");
  v3 = v12[0];
  v4 = SBYTE7(v13);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetAppAndRouteMetricsHistograms");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = LODWORD(v12[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v12 = 0u;
  v13 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v12[1];
  v8 = SHIBYTE(v13);
  HIBYTE(v13) = 0;
  LOBYTE(v12[1]) = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(v7);
      return;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetOTAppAndRouteCostHistograms];
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }
}

- (void)resetMacMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&v33, "Command success");
  v3 = v33;
  v4 = SBYTE7(v34);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Counter:AllMac");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = v33 == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v33 = 0u;
  v34 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *(&v33 + 1);
  v8 = SHIBYTE(v34);
  HIBYTE(v34) = 0;
  BYTE8(v33) = 0;
  if (v32 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    goto LABEL_13;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetMacMetrics];
  }

LABEL_13:
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v29, "vendor:MAC:packet:SizeHistogram");
  if (v10)
  {
    [(CtrInternalClient *)v10 setProperty:v29 property_val:"0"];
    v11 = v33 == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v33 = 0u;
  v34 = 0u;
  v11 = 1;
  if (v8 < 0)
  {
LABEL_15:
    operator delete(v7);
  }

LABEL_16:
  v12 = *(&v33 + 1);
  v13 = SHIBYTE(v34);
  HIBYTE(v34) = 0;
  BYTE8(v33) = 0;
  if (v30 < 0)
  {
    operator delete(v29[0]);
    if (v11)
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetMacMetrics];
  }

LABEL_25:
  v15 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v27, "NCP:MacRetryHistogram");
  if (v15)
  {
    [(CtrInternalClient *)v15 setProperty:v27 property_val:"0"];
    v16 = v33 == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v33 = 0u;
  v34 = 0u;
  v16 = 1;
  if (v13 < 0)
  {
LABEL_27:
    operator delete(v12);
  }

LABEL_28:
  v17 = *(&v33 + 1);
  v18 = SHIBYTE(v34);
  HIBYTE(v34) = 0;
  BYTE8(v33) = 0;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    if (v16)
    {
      goto LABEL_37;
    }
  }

  else if (v16)
  {
    goto LABEL_37;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetMacMetrics];
  }

LABEL_37:
  v20 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v25, "vendor:MAC:packet:ErrorHistogram");
  if (v20)
  {
    [(CtrInternalClient *)v20 setProperty:v25 property_val:"0"];
    v21 = v33 == 0;
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v33 = 0u;
  v34 = 0u;
  v21 = 1;
  if (v18 < 0)
  {
LABEL_39:
    operator delete(v17);
  }

LABEL_40:
  v22 = *(&v33 + 1);
  v23 = SHIBYTE(v34);
  HIBYTE(v34) = 0;
  BYTE8(v33) = 0;
  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v21)
    {
LABEL_42:
      if ((v23 & 0x80000000) == 0)
      {
        return;
      }

LABEL_50:
      operator delete(v22);
      return;
    }
  }

  else if (v21)
  {
    goto LABEL_42;
  }

  v24 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetMacMetrics];
  }

  if (v23 < 0)
  {
    goto LABEL_50;
  }
}

- (void)getIPMLEMetrics:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v5 = *buf;
  v6 = v15;
  v7 = xpc_null_create();
  if (byte_1004E5C7F >= 0)
  {
    v8 = &mDaemonVersion;
  }

  else
  {
    v8 = mDaemonVersion;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [v4 setObject:v9 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v10 = &mVendorVersion;
  }

  else
  {
    v10 = mVendorVersion;
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v4 setObject:v11 forKey:@"header_vendor_version"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v4];
  v12 = v4;
  AnalyticsSendEventLazy();
  [(ThreadNetworkManagerInstance *)self resetIPMLEMetrics];
  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance getIPMLEMetrics:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneIPMLEMetrics", buf, 0xCu);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

- (void)resetIPMLEMetrics
{
  std::string::basic_string[abi:ne200100]<0>(v19, "Command success");
  v3 = v19[0];
  v4 = SBYTE7(v20);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Counter:AllIPv6");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = LODWORD(v19[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v19 = 0u;
  v20 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v19[1];
  v8 = SHIBYTE(v20);
  HIBYTE(v20) = 0;
  LOBYTE(v19[1]) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    goto LABEL_13;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetIPMLEMetrics];
  }

LABEL_13:
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v15, "NCP:Counter:Thread:Mle");
  if (v10)
  {
    [(CtrInternalClient *)v10 setProperty:v15 property_val:"0"];
    v11 = LODWORD(v19[0]) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *v19 = 0u;
  v20 = 0u;
  v11 = 1;
  if (v8 < 0)
  {
LABEL_15:
    operator delete(v7);
  }

LABEL_16:
  v12 = v19[1];
  v13 = SHIBYTE(v20);
  HIBYTE(v20) = 0;
  LOBYTE(v19[1]) = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (v11)
    {
LABEL_18:
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(v12);
      return;
    }
  }

  else if (v11)
  {
    goto LABEL_18;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetIPMLEMetrics];
  }

  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

- (void)getMatterSubscriptionHistograms
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v3 = *buf;
  v4 = SBYTE7(v35);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v33.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "isPrimaryResident");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v33];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v35 = 0u;
  *buf = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = SHIBYTE(v35);
  HIBYTE(v35) = 0;
  buf[8] = 0;
  if ((v32 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_16:
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getMatterSubscriptionHistograms];
    }

    goto LABEL_18;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (!any_to_BOOL(&v33))
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getMatterSubscriptionHistograms];
    }

LABEL_18:

    goto LABEL_40;
  }

  v30 = 0;
  v9 = +[NSMutableDictionary dictionary];
  v29 = xpc_null_create();
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v27, "NCP:Matter:Subscription:Histogram:AsValMap");
  if (v10)
  {
    [(CtrInternalClient *)v10 getProperty:v27 output:&v30];
    v11 = *buf == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v35 = 0u;
  *buf = 0u;
  v11 = 1;
  if (v8 < 0)
  {
LABEL_9:
    operator delete(v7);
  }

LABEL_10:
  v7 = *&buf[8];
  LOBYTE(v8) = HIBYTE(v35);
  HIBYTE(v35) = 0;
  buf[8] = 0;
  if ((v28 & 0x80000000) == 0)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_25:
    v13 = v30;
    if (v30)
    {
      v13 = (*(*v30 + 24))(v30);
    }

    v26 = v13;
    v14.var0 = &v26;
    convert_ValMap_to_xpc_object(v14, "NCP:Matter:Subscription:Histogram:AsValMap", "PropGet", buf);
    v15 = *buf;
    v16 = xpc_null_create();

    v17 = v29;
    v29 = v15;

    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    *buf = &v29;
    *&buf[8] = "value";
    v18 = xpc::dict::object_proxy::operator*(buf);
    CAMetricsHandlers_handle_getprop_matter_subscription_histograms(v18, v9);

    goto LABEL_30;
  }

  operator delete(v27[0]);
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_30:
  if (byte_1004E5C7F >= 0)
  {
    v19 = &mDaemonVersion;
  }

  else
  {
    v19 = mDaemonVersion;
  }

  v20 = [NSString stringWithUTF8String:v19];
  [v9 setObject:v20 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v21 = &mVendorVersion;
  }

  else
  {
    v21 = mVendorVersion;
  }

  v22 = [NSString stringWithUTF8String:v21];
  [v9 setObject:v22 forKey:@"header_vendor_version"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v9];
  v23 = v9;
  AnalyticsSendExplodingEventLazy();
  v24 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ThreadNetworkManagerInstance getMatterSubscriptionHistograms]";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneSubscriptionHistogram", buf, 0xCu);
  }

  [(ThreadNetworkManagerInstance *)self resetMatterSubscriptionHistograms];
  v25 = v29;
  v29 = 0;

  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

LABEL_40:
  if (v33.var0)
  {
    (*(*v33.var0 + 8))(v33.var0);
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v7);
  }
}

- (void)resetMatterSubscriptionHistograms
{
  std::string::basic_string[abi:ne200100]<0>(v12, "Command success");
  v3 = v12[0];
  v4 = SBYTE7(v13);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Matter:Subscription:Histogram");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = LODWORD(v12[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v12 = 0u;
  v13 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v12[1];
  v8 = SHIBYTE(v13);
  HIBYTE(v13) = 0;
  LOBYTE(v12[1]) = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(v7);
      return;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetMatterSubscriptionHistograms];
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }
}

- (void)getEngagementMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&buf, "Command success");
  __p = buf;
  v3 = SBYTE7(v53);
  v51 = xpc_null_create();
  v4 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v5 = &mDaemonVersion;
  }

  else
  {
    v5 = mDaemonVersion;
  }

  v6 = [NSString stringWithUTF8String:v5, __p];
  [v4 setObject:v6 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v7 = &mVendorVersion;
  }

  else
  {
    v7 = mVendorVersion;
  }

  v8 = [NSString stringWithUTF8String:v7];
  [v4 setObject:v8 forKey:@"header_vendor_version"];

  v50 = 0;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v48, "vendor:neighbor:count:histogram:AsValMap");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v48 output:&v50];
    v10 = buf == 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  buf = 0u;
  v53 = 0u;
  v10 = 1;
  if (v3 < 0)
  {
LABEL_9:
    operator delete(__pa);
  }

LABEL_10:
  __pb = *(&buf + 1);
  v11 = SHIBYTE(v53);
  HIBYTE(v53) = 0;
  BYTE8(buf) = 0;
  if (v49 < 0)
  {
    operator delete(v48[0]);
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else if (!v10)
  {
    goto LABEL_21;
  }

  v12 = v50;
  if (v50)
  {
    v12 = (*(*v50 + 24))(v50);
  }

  v47 = v12;
  v13.var0 = &v47;
  convert_ValMap_to_xpc_object(v13, "vendor:neighbor:count:histogram:AsValMap", "PropGet", &buf);
  v14 = buf;
  v15 = xpc_null_create();

  v16 = v51;
  v51 = v14;

  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  *&buf = &v51;
  *(&buf + 1) = "value";
  v17 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_connectednodes(v17, v4);

LABEL_21:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v4, __pb];
  v45[1] = _NSConcreteStackBlock;
  v45[2] = 3221225472;
  v45[3] = __52__ThreadNetworkManagerInstance_getEngagementMetrics__block_invoke;
  v45[4] = &unk_1004C1808;
  v18 = v4;
  v46 = v18;
  AnalyticsSendExplodingEventLazy();
  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ThreadNetworkManagerInstance getEngagementMetrics]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneEngagementMetricsHist", &buf, 0xCu);
  }

  [v18 removeAllObjects];
  if (byte_1004E5C7F >= 0)
  {
    v20 = &mDaemonVersion;
  }

  else
  {
    v20 = mDaemonVersion;
  }

  v21 = [NSString stringWithUTF8String:v20];
  [v18 setObject:v21 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v22 = &mVendorVersion;
  }

  else
  {
    v22 = mVendorVersion;
  }

  v23 = [NSString stringWithUTF8String:v22];
  [v18 setObject:v23 forKey:@"header_vendor_version"];

  v45[0] = 0;
  v24 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v43, "vendor:linkloss:counters:AsValMap");
  if (v24)
  {
    [(CtrInternalClient *)v24 getProperty:v43 output:v45];
    v25 = buf == 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  buf = 0u;
  v53 = 0u;
  v25 = 1;
  if (v11 < 0)
  {
LABEL_31:
    operator delete(__pc);
  }

LABEL_32:
  __pd = *(&buf + 1);
  v26 = SHIBYTE(v53);
  HIBYTE(v53) = 0;
  BYTE8(buf) = 0;
  if (v44 < 0)
  {
    operator delete(v43[0]);
    if (!v25)
    {
      goto LABEL_43;
    }
  }

  else if (!v25)
  {
    goto LABEL_43;
  }

  v27 = v45[0];
  if (v45[0])
  {
    v27 = (*(*v45[0] + 24))(v45[0]);
  }

  v42 = v27;
  v28.var0 = &v42;
  convert_ValMap_to_xpc_object(v28, "vendor:linkloss:counters:AsValMap", "PropGet", &buf);
  v29 = buf;
  v30 = xpc_null_create();

  v31 = v51;
  v51 = v29;

  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  *&buf = &v51;
  *(&buf + 1) = "value";
  v32 = xpc::dict::object_proxy::operator*(&buf);
  CAMetricsHandlers_handle_getprop_linkLossCounters(v32, v18);

LABEL_43:
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v18, __pd];
  v33 = v18;
  AnalyticsSendEventLazy();
  [(ThreadNetworkManagerInstance *)self resetEngagementMetrics];
  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ThreadNetworkManagerInstance getEngagementMetrics]";
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s:Triggered flagstoneEngagementMetricsCounters", &buf, 0xCu);
  }

  if (v45[0])
  {
    (*(*v45[0] + 8))(v45[0]);
  }

  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v35 = v51;
  v51 = 0;

  if (v26 < 0)
  {
    operator delete(__pe);
  }
}

- (void)resetEngagementMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&v26, "Command success");
  v3 = v26;
  v4 = SBYTE7(v27);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:neighbor:count:histogram");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"0"];
    v6 = v26 == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v26 = 0u;
  v27 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *(&v26 + 1);
  v8 = SHIBYTE(v27);
  HIBYTE(v27) = 0;
  BYTE8(v26) = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    goto LABEL_13;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetEngagementMetrics];
  }

LABEL_13:
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v22, "vendor:joiner:RSSIHistogram");
  if (v10)
  {
    [(CtrInternalClient *)v10 setProperty:v22 property_val:"0"];
    v11 = v26 == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = 0u;
  v27 = 0u;
  v11 = 1;
  if (v8 < 0)
  {
LABEL_15:
    operator delete(v7);
  }

LABEL_16:
  v12 = *(&v26 + 1);
  v13 = SHIBYTE(v27);
  HIBYTE(v27) = 0;
  BYTE8(v26) = 0;
  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (v11)
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetEngagementMetrics];
  }

LABEL_25:
  CAMetricsHandlers_handle_reset_joinCountersData();
  v15 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v20, "vendor:linkloss:counters");
  if (v15)
  {
    [(CtrInternalClient *)v15 setProperty:v20 property_val:"0"];
    v16 = v26 == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v26 = 0u;
  v27 = 0u;
  v16 = 1;
  if (v13 < 0)
  {
LABEL_27:
    operator delete(v12);
  }

LABEL_28:
  v17 = *(&v26 + 1);
  v18 = SHIBYTE(v27);
  HIBYTE(v27) = 0;
  BYTE8(v26) = 0;
  if (v21 < 0)
  {
    operator delete(v20[0]);
    if (v16)
    {
LABEL_30:
      if ((v18 & 0x80000000) == 0)
      {
        return;
      }

LABEL_38:
      operator delete(v17);
      return;
    }
  }

  else if (v16)
  {
    goto LABEL_30;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance resetEngagementMetrics];
  }

  if (v18 < 0)
  {
    goto LABEL_38;
  }
}

- (void)getPowerMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v4 = &mDaemonVersion;
  }

  else
  {
    v4 = mDaemonVersion;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [(NSMutableDictionary *)v3 setObject:v5 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v6 = &mVendorVersion;
  }

  else
  {
    v6 = mVendorVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [(NSMutableDictionary *)v3 setObject:v7 forKey:@"header_vendor_version"];

  CAMetricsHandlers_handle_get_PowerCountersData(v3);
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v3];
  v8 = v3;
  AnalyticsSendEventLazy();
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ThreadNetworkManagerInstance getPowerMetrics]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Triggered flagstonePowerMetricsCounters", buf, 0xCu);
  }

  v10 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v11 = &mDaemonVersion;
  }

  else
  {
    v11 = mDaemonVersion;
  }

  v12 = [NSString stringWithUTF8String:v11];
  [(NSMutableDictionary *)v10 setObject:v12 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v13 = &mVendorVersion;
  }

  else
  {
    v13 = mVendorVersion;
  }

  v14 = [NSString stringWithUTF8String:v13];
  [(NSMutableDictionary *)v10 setObject:v14 forKey:@"header_vendor_version"];

  CAMetricsHandlers_handle_get_PowerHistogramData(v10);
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v10];
  v15 = v10;
  AnalyticsSendExplodingEventLazy();
  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ThreadNetworkManagerInstance getPowerMetrics]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:Triggered flagstonePowerMetricsHist", buf, 0xCu);
  }

  [(ThreadNetworkManagerInstance *)self resetPowerMetrics:_NSConcreteStackBlock];
}

- (void)getTopologyMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&v10, "Command success");
  v2 = v10;
  v3 = v11;
  v4 = xpc_null_create();
  v5 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v6 = &mDaemonVersion;
  }

  else
  {
    v6 = mDaemonVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v5 setObject:v7 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v8 = &mVendorVersion;
  }

  else
  {
    v8 = mVendorVersion;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [v5 setObject:v9 forKey:@"header_vendor_version"];

  if (v3 < 0)
  {
    operator delete(v2);
  }
}

- (void)resetTopologyMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "Command success");
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

- (void)configureRCP2PeriodicEvents
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.metrics.rcp2.threadradiod"];
  [v4 setRepeats:1];
  [v4 setInterval:86400.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __59__ThreadNetworkManagerInstance_configureRCP2PeriodicEvents__block_invoke;
  v6[3] = &unk_1004C8880;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [v5 scheduleWithBlock:v6];

  objc_autoreleasePoolPop(v3);
}

void __59__ThreadNetworkManagerInstance_configureRCP2PeriodicEvents__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) configureCAMetrics:1];
  if ([*(a1 + 40) shouldDefer])
  {
    v3 = 2;
  }

  else
  {
    dispatch_async(*(*(a1 + 32) + 168), &__block_literal_global_270);
    v3 = 1;
  }

  v4[2](v4, v3);
}

- (void)getDaemonAndVendorVersions
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v19.var0 = 0;
  v20.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "DaemonMorty:Version");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v20];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else if (!v6)
  {
    goto LABEL_13;
  }

  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance getDaemonAndVendorVersions]";
    *&buf[12] = 1024;
    *&buf[14] = 2454;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d: Failed to get kWPANTUNDProperty_DaemonMortyVersion Property", buf, 0x12u);
  }

  std::string::assign(&mDaemonVersion, "Unknown");
LABEL_13:
  any_to_string(&v20, buf);
  if (byte_1004E5C7F < 0)
  {
    operator delete(mDaemonVersion);
  }

  mDaemonVersion = *buf;
  unk_1004E5C78 = *&buf[16];
  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v15, "vendor:version");
  if (v10)
  {
    [(CtrInternalClient *)v10 getProperty:v15 output:&v19];
    v11 = *buf == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  memset(buf, 0, 32);
  v11 = 1;
  if (v8 < 0)
  {
LABEL_17:
    operator delete(v7);
  }

LABEL_18:
  v12 = *&buf[8];
  v13 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
    goto LABEL_27;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance getDaemonAndVendorVersions]";
    *&buf[12] = 1024;
    *&buf[14] = 2461;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:%d: Failed to get kWPANTUNDVendor_Version Property", buf, 0x12u);
  }

  std::string::assign(&mVendorVersion, "Unknown");
LABEL_27:
  any_to_string(&v19, buf);
  if (byte_1004E5C97 < 0)
  {
    operator delete(mVendorVersion);
  }

  mVendorVersion = *buf;
  unk_1004E5C90 = *&buf[16];
  if (v19.var0)
  {
    (*(*v19.var0 + 8))(v19.var0);
  }

  if (v20.var0)
  {
    (*(*v20.var0 + 8))(v20.var0);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }
}

- (int)initializeKeyChainStore
{
  if (self->_keyChainStore)
  {
    return 0;
  }

  v4 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v5 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initApplePrivateStoreWithBackingStore:v4];
  keyChainStore = self->_keyChainStore;
  self->_keyChainStore = v5;

  return self->_keyChainStore == 0;
}

- (int)retrieveActiveDataSetRecordForUniqueId:(const char *)a3 record:(id *)a4
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__0;
  v40[3] = __Block_byref_object_dispose__0;
  v41 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  if (!self->_keyChainStore)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance retrieveActiveDataSetRecordForUniqueId:record:];
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance retrieveActiveDataSetRecordForUniqueId:record:];
    }

LABEL_15:

    v6 = 0;
    goto LABEL_16;
  }

  v6 = [NSString stringWithUTF8String:?];
  v7 = [[NSUUID alloc] initWithUUIDString:v6];
  v8 = *(v40[0] + 40);
  *(v40[0] + 40) = v7;

  if (*(v40[0] + 40))
  {
    v9 = dispatch_semaphore_create(0);
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(v40[0] + 40);
      *buf = 136315394;
      v47 = "[ThreadNetworkManagerInstance retrieveActiveDataSetRecordForUniqueId:record:]";
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: NSUUID :  unique Network Id is %@", buf, 0x16u);
    }

    keyChainStore = self->_keyChainStore;
    v13 = *(v40[0] + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __78__ThreadNetworkManagerInstance_retrieveActiveDataSetRecordForUniqueId_record___block_invoke;
    v21[3] = &unk_1004C88A8;
    v23 = &v39;
    v24 = &v27;
    v25 = &v42;
    v26 = &v33;
    v14 = v9;
    v22 = v14;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveActiveDataSetRecordWithUniqueIdentifier:v13 completion:v21];
    v15 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance retrieveActiveDataSetRecordForUniqueId:record:];
      }
    }

    else if (!v34[5])
    {
      *a4 = v28[5];
      v18 = *(v43 + 6);
      goto LABEL_22;
    }

    v18 = 1;
    *(v43 + 6) = 1;
LABEL_22:

    goto LABEL_23;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance retrieveActiveDataSetRecordForUniqueId:v40 record:?];
  }

LABEL_16:
  v18 = *(v43 + 6);
LABEL_23:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v42, 8);
  return v18;
}

void __78__ThreadNetworkManagerInstance_retrieveActiveDataSetRecordForUniqueId_record___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__ThreadNetworkManagerInstance_retrieveActiveDataSetRecordForUniqueId_record___block_invoke_cold_1(v7, a1);
    }
  }

  else
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got the Credentials Record, for the Network : %@", &v14, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)retrieveCredentialsForUniqueId:(const char *)a3 credentialsRecord_t:(id *)a4
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__0;
  v40[3] = __Block_byref_object_dispose__0;
  v41 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  if (!self->_keyChainStore)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance retrieveCredentialsForUniqueId:credentialsRecord_t:];
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance retrieveCredentialsForUniqueId:credentialsRecord_t:];
    }

LABEL_15:

    v6 = 0;
    goto LABEL_16;
  }

  v6 = [NSString stringWithUTF8String:?];
  v7 = [[NSUUID alloc] initWithUUIDString:v6];
  v8 = *(v40[0] + 40);
  *(v40[0] + 40) = v7;

  if (*(v40[0] + 40))
  {
    v9 = dispatch_semaphore_create(0);
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(v40[0] + 40);
      *buf = 136315394;
      v47 = "[ThreadNetworkManagerInstance retrieveCredentialsForUniqueId:credentialsRecord_t:]";
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: NSUUID :  unique Network Id is %@", buf, 0x16u);
    }

    keyChainStore = self->_keyChainStore;
    v13 = *(v40[0] + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __83__ThreadNetworkManagerInstance_retrieveCredentialsForUniqueId_credentialsRecord_t___block_invoke;
    v21[3] = &unk_1004C88D0;
    v23 = &v39;
    v24 = &v27;
    v25 = &v42;
    v26 = &v33;
    v14 = v9;
    v22 = v14;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveRecordWithUniqueIdentifier:v13 completion:v21];
    v15 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance retrieveCredentialsForUniqueId:credentialsRecord_t:];
      }
    }

    else if (!v34[5])
    {
      *a4 = v28[5];
      v18 = *(v43 + 6);
      goto LABEL_22;
    }

    v18 = 1;
    *(v43 + 6) = 1;
LABEL_22:

    goto LABEL_23;
  }

  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance retrieveCredentialsForUniqueId:v40 credentialsRecord_t:?];
  }

LABEL_16:
  v18 = *(v43 + 6);
LABEL_23:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v42, 8);
  return v18;
}

void __83__ThreadNetworkManagerInstance_retrieveCredentialsForUniqueId_credentialsRecord_t___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__ThreadNetworkManagerInstance_retrieveActiveDataSetRecordForUniqueId_record___block_invoke_cold_1(v7, a1);
    }
  }

  else
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got the Credentials Record, for the Network : %@", &v14, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)validateDataSetTLVs:(id)a3 creds:(id *)a4
{
  v4 = a3;
  v73 = v4;
  v5 = [v73 bytes];
  v6 = [v4 length];
  v80 = +[NSMutableSet set];
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
  }

  encode_data_into_string(v5, v6, v85, 0x3E8uLL, 0);
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
  }

  if (v6)
  {
    v78 = 0;
    v79 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (v11 >= v6)
      {
        v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

LABEL_165:

        v41 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

LABEL_167:
        v60 = 0;
        goto LABEL_168;
      }

      v12 = v5[v11];
      v13 = v10 + 2;
      v14 = v10 + 2 + v12;
      if (v14 > v6)
      {
        v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

        goto LABEL_165;
      }

      v15 = v5[v10];
      v16 = [NSNumber numberWithChar:v15];
      if ([v80 containsObject:v16])
      {
        v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

        goto LABEL_164;
      }

      [v80 addObject:v16];
      if (v15 <= 4)
      {
        break;
      }

      if (v15 <= 11)
      {
        if (v15 == 5)
        {
          v31 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
            v83 = 1024;
            *v84 = 2884;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v12 != 16)
          {
            v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
            }

            goto LABEL_164;
          }

          v32 = [NSData dataWithBytes:&v5[v13] length:16];

          v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
            v83 = 2117;
            *v84 = v32;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v78 = v32;
          goto LABEL_84;
        }

        if (v15 != 7)
        {
          goto LABEL_83;
        }

        v26 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
          v83 = 1024;
          *v84 = 2914;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
        }

        if (v12 != 8)
        {
          v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
          }

          goto LABEL_164;
        }
      }

      else
      {
        switch(v15)
        {
          case 12:
            v35 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
              v83 = 1024;
              *v84 = 2899;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v12 - 3) >= 2)
            {
              v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
              }

              goto LABEL_164;
            }

            if (!v5[v13] && !v5[v10 + 3])
            {
              v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
              }

              goto LABEL_164;
            }

            break;
          case 14:
            v38 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: ==> Decoded active timestamp ", buf, 0xCu);
            }

            if (v12 != 8)
            {
              v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
              }

              goto LABEL_164;
            }

            v39 = [NSData dataWithBytes:&v5[v13] length:8];

            if (!v39)
            {
              v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
              }

              v74 = 0;
              goto LABEL_164;
            }

            v74 = v39;
            break;
          case 53:
            v20 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
              v83 = 1024;
              *v84 = 2755;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v21 = v10 + 3;
            while (v21 - 1 < v14)
            {
              if (v21 >= v14 || v21 + 5 > v14)
              {
                v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
                }

                goto LABEL_164;
              }

              if ((v5[v21 - 1] & 0xFD) != 0)
              {
                v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
                }

                goto LABEL_164;
              }

              v23 = v5[v21];
              v21 += 6;
              if (v23 != 4)
              {
                v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
                }

                goto LABEL_164;
              }
            }

            break;
          default:
LABEL_83:
            v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
LABEL_84:
              v37 = v79;
              goto LABEL_85;
            }

            *buf = 136315650;
            v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
            v83 = 1024;
            *v84 = v15;
            *&v84[4] = 1024;
            *&v84[6] = 2936;
            v28 = v19;
            v29 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
            v30 = 24;
LABEL_89:
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
            goto LABEL_84;
        }
      }

LABEL_86:

      v10 = v14;
      if (v14 >= v6)
      {
        goto LABEL_91;
      }
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
          v83 = 1024;
          *v84 = 2853;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        if (v12 != 8)
        {
          v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
          }

          goto LABEL_164;
        }

        v34 = [NSData dataWithBytes:&v5[v13] length:8];

        v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
          v83 = 2112;
          *v84 = v34;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v75 = v34;
        goto LABEL_84;
      }

      if (v15 != 3)
      {
        v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
          v83 = 1024;
          *v84 = 2868;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        if (v12 != 16)
        {
          v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
          }

LABEL_164:

          goto LABEL_165;
        }

        v18 = [NSData dataWithBytes:&v5[v13] length:16];

        v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
          v83 = 2117;
          *v84 = v18;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v77 = v18;
        goto LABEL_84;
      }

      memcpy(__dst, &v5[v13], v12);
      __dst[v12] = 0;
      v36 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
        v83 = 1024;
        *v84 = 2793;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v37 = [NSString stringWithUTF8String:__dst];

      if (!v37)
      {
        v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

        v79 = 0;
        goto LABEL_164;
      }

      v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
        v83 = 2112;
        *v84 = v37;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }

LABEL_85:

      v79 = v37;
      goto LABEL_86;
    }

    if (v15)
    {
      v24 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
        v83 = 1024;
        *v84 = 2838;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
      }

      if (v12 != 2)
      {
        v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
        }

        goto LABEL_164;
      }

      v25 = [NSData dataWithBytes:&v5[v13] length:2];

      v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
        v83 = 2112;
        *v84 = v25;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
      }

      v76 = v25;
      goto LABEL_84;
    }

    v27 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
      v83 = 1024;
      *v84 = 2804;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
    }

    if (v12 != 3)
    {
      v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
      }

      goto LABEL_164;
    }

    if (v5[v13])
    {
      v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance validateDataSetTLVs:? creds:?];
      }

      goto LABEL_164;
    }

    v9 = v5[v10 + 4];
    if ((v9 - 27) <= 0xEFu)
    {
      v62 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
      }

      goto LABEL_164;
    }

    v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136315394;
    v82 = "[ThreadNetworkManagerInstance validateDataSetTLVs:creds:]";
    v83 = 1024;
    *v84 = v9;
    v28 = v19;
    v29 = "%s: #MOS : Channel : %d";
    v30 = 18;
    goto LABEL_89;
  }

  LOBYTE(v9) = 0;
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
LABEL_91:
  if (!v79 || !v75 || !v78 || !v77 || !v76 || !v74 || !v9)
  {
    v41 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v40 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
  }

  LOBYTE(v70) = 1;
  v41 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v78 passPhrase:0 PSKc:v77 channel:v9 PANID:v76 userInfo:0 credentialDataSet:0 isActiveDevice:v70];
  if (!v41)
  {
    v41 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v42 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
  }

  v43 = [[THThreadNetwork alloc] initWithName:v79 extendedPANID:v75];
  if (!v43)
  {
    v61 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v44 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v73 userInfo:0];
  if (!v44)
  {
    v64 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v45 = [THThreadNetworkBorderAgent alloc];
  v46 = getUUIDAsStr();
  v47 = [v46 substringToIndex:16];
  v48 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v47];
  v49 = [v45 initWithBaDiscrId:v48];

  if (!v49)
  {
    v65 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v50 = [[THThreadNetworkCredentialsActiveDataSetRecord alloc] initWithBorderAgent:v49 credentialsDataSet:v44 network:v43 credentials:v41 uniqueIdentifier:0 keychainAccessGroup:@"000000000000" creationDate:0 lastModificationDate:0];
  *a4 = v50;
  if (!v50)
  {
    v66 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance validateDataSetTLVs:creds:];
    }

    goto LABEL_167;
  }

  v51 = [v50 credentials];
  [v51 setIsActiveDevice:1];

  v52 = [THThreadNetworkCredentialsDataSet alloc];
  v53 = [*a4 credentialsDataSet];
  v54 = [v53 dataSetArray];
  v55 = [*a4 credentials];
  v56 = [v55 userInfo];
  v57 = v53;
  v58 = [v52 initWithDataSetArray:v54 userInfo:v56];
  v59 = [*a4 credentials];
  [v59 setCredentialsDataSet:v58];

  v60 = 1;
LABEL_168:

  return v60;
}

- (int)howToGetOnTheNetwork:(id)a3
{
  v3 = a3;
  v4 = [v3 network];
  v5 = [v3 credentials];
  if (_os_feature_enabled_impl())
  {
    v6 = [v4 networkName];
    if (v6)
    {
      v7 = [v4 extendedPANID];
      if (v7)
      {
        v8 = [v5 credentialsDataSet];
        v9 = [v8 dataSetArray];

        if (v9)
        {
          v10 = 7;
          goto LABEL_21;
        }
      }

      else
      {
      }
    }
  }

  v11 = [v5 masterKey];
  if (v11)
  {
    v12 = [v5 PANID];
    if (v12 && [v5 channel] != 255 && (objc_msgSend(v4, "networkName"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [v4 extendedPANID];

      if (v14)
      {
        v10 = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v15 = [v5 passPhrase];
  if (!v15)
  {
LABEL_20:
    v10 = 9;
    goto LABEL_21;
  }

  v16 = [v4 networkName];
  if (!v16)
  {

    goto LABEL_20;
  }

  v17 = [v4 extendedPANID];

  if (v17)
  {
    v10 = 2;
  }

  else
  {
    v10 = 9;
  }

LABEL_21:

  return v10;
}

- (int)howToStartThreadNetwork:(const char *)a3 activeOperationalDataset:(const char *)a4 credentialsRecord_t:(id *)a5
{
  v9 = a3 | a4;
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  v11 = v10;
  if (v9)
  {
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (a4)
    {
      if (v13)
      {
        v18 = 136315138;
        v19 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "activeOperationalDataset is available to start thread network %s", &v18, 0xCu);
      }

      return 8;
    }

    else
    {
      if (v13)
      {
        v18 = 136315394;
        v19 = "[ThreadNetworkManagerInstance howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:]";
        v20 = 2080;
        v21 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: unique Network Id is %s", &v18, 0x16u);
      }

      if ([(ThreadNetworkManagerInstance *)self retrieveActiveDataSetRecordForUniqueId:a3 record:a5])
      {
        v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:];
        }

        return 9;
      }

      else
      {
        tnmDumpRecord(*a5);
        if ([(ThreadNetworkManagerInstance *)self alreadyOnTheSameNetwork:*a5])
        {
          v15 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = 136315394;
            v19 = "[ThreadNetworkManagerInstance howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:]";
            v20 = 2080;
            v21 = a3;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Already on the same network %s", &v18, 0x16u);
          }

          v12 = 5;
        }

        else
        {
          v12 = [(ThreadNetworkManagerInstance *)self howToGetOnTheNetwork:*a5];
        }

        v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 136315394;
          v19 = "[ThreadNetworkManagerInstance howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:]";
          v20 = 1024;
          LODWORD(v21) = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: ret is  %d", &v18, 0x12u);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:];
    }

    [(ThreadNetworkManagerInstance *)self threadLeave];
    if (_os_feature_enabled_impl())
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return v12;
}

- (BOOL)alreadyOnTheSameNetwork:(id)a3
{
  v4 = a3;
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    nl::wpantund::ncp_state_to_string(self->_lastKnownNCPState, __p);
    v6 = v24 >= 0 ? __p : *__p;
    *buf = 136315394;
    v26 = "[ThreadNetworkManagerInstance alreadyOnTheSameNetwork:]";
    v27 = 2080;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: called in state %s", buf, 0x16u);
    if (v24 < 0)
    {
      operator delete(*__p);
    }
  }

  if (self->_lastKnownNCPState == 4)
  {
    [self->_CtrInternalClientPtr reset:0];
    if (v20 < 0)
    {
      operator delete(v19);
    }

    sleep(5u);
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (![(ThreadNetworkManagerInstance *)self isCurrentNetworkSameAsOneToStart:v4])
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v4 network];
      v15 = [v14 networkName];
      v16 = v15;
      v17 = [v15 UTF8String];
      *__p = 136315138;
      *&__p[4] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Not on the same network ID : %s", __p, 0xCu);
    }

    [(ThreadNetworkManagerInstance *)self threadLeave];
    goto LABEL_18;
  }

  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 network];
    v9 = [v8 networkName];
    v10 = v9;
    v11 = [v9 UTF8String];
    *__p = 136315394;
    *&__p[4] = "[ThreadNetworkManagerInstance alreadyOnTheSameNetwork:]";
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : Already joined on the same network : Unique ID : %s", __p, 0x16u);
  }

  v12 = 1;
LABEL_19:

  return v12;
}

- (void)deleteCurrentNetwork:(id)a3
{
  v5 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  if (self->_keyChainStore)
  {
    v6 = dispatch_semaphore_create(0);
    keyChainStore = self->_keyChainStore;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = __53__ThreadNetworkManagerInstance_deleteCurrentNetwork___block_invoke;
    v19 = &unk_1004C88F8;
    v21 = &v22;
    v8 = v6;
    v20 = v8;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore deleteActiveDataSetRecordForThreadBorderAgent:v5 completion:&v16];
    v9 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance deleteCurrentNetwork:];
      }
    }

    else
    {
      if (!v23[5])
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v23[5] description];
        v12 = v11;
        v13 = [v11 UTF8String];
        if (v13)
        {
          v3 = [v23[5] description];
          v15 = v3;
          v14 = [v3 UTF8String];
        }

        else
        {
          v14 = "(unknown error)";
        }

        *buf = 136315394;
        v29 = "[ThreadNetworkManagerInstance deleteCurrentNetwork:]";
        v30 = 2080;
        v31 = v14;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s : Error: failed to delete (%s)\n", buf, 0x16u);
        if (v13)
        {
        }
      }
    }

    goto LABEL_10;
  }

  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance deleteCurrentNetwork:];
  }

LABEL_11:

  _Block_object_dispose(&v22, 8);
}

void __53__ThreadNetworkManagerInstance_deleteCurrentNetwork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ThreadNetworkManagerInstance deleteCurrentNetwork:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Inside : %s : ", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)updatePrimaryResident:(const char *)a3 isPrimaryResident:(BOOL)a4 isPrimaryResidentThreadCapable:(BOOL)a5
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Command Error");
  v9 = __p[0];
  v10 = SBYTE7(v22);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v18[0] = a4;
  v18[1] = a5;
  v19 = a3;
  v20 = 0;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr updatePrimaryResident:v18];
    v12 = LODWORD(__p[0]) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *__p = 0u;
  v22 = 0u;
  v12 = 1;
  if (v10 < 0)
  {
LABEL_3:
    operator delete(v9);
  }

LABEL_4:
  v13 = __p[1];
  v14 = SHIBYTE(v22);
  if (v12)
  {
    v15 = 0;
    if (SHIBYTE(v22) < 0)
    {
LABEL_6:
      operator delete(v13);
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance updatePrimaryResident:isPrimaryResident:isPrimaryResidentThreadCapable:];
    }

    v15 = 1;
    if (v14 < 0)
    {
      goto LABEL_6;
    }
  }

  return v15;
}

- (int)updateHomeThreadInfo:(id *)a3
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Command Error");
  v5 = __p[0];
  v6 = SBYTE7(v17);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v14 = vuzp1q_s32(*&a3->var0, *&a3->var2);
  v15 = vmovn_s64(*&a3->var4);
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr updateHomeThreadInfo:&v14];
    v8 = LODWORD(__p[0]) == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *__p = 0u;
  v17 = 0u;
  v8 = 1;
  if (v6 < 0)
  {
LABEL_3:
    operator delete(v5);
  }

LABEL_4:
  v9 = __p[1];
  v10 = SHIBYTE(v17);
  if (v8)
  {
    v11 = 0;
    if (SHIBYTE(v17) < 0)
    {
LABEL_6:
      operator delete(v9);
    }
  }

  else
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance updateHomeThreadInfo:];
    }

    v11 = 1;
    if (v10 < 0)
    {
      goto LABEL_6;
    }
  }

  return v11;
}

- (int)threadStop
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::ncp_state_to_string(self->_lastKnownNCPState, __p);
    v4 = v15 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v17 = "[ThreadNetworkManagerInstance threadStop]";
    v18 = 1024;
    v19 = 3237;
    v20 = 2080;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d Cmd received in state %s", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = [(ThreadNetworkManagerInstance *)self getThreadSessionStatus];
  if ((v5 & 1) == 0)
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[ThreadNetworkManagerInstance threadStop]";
      v18 = 1024;
      v19 = 3246;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, " %s:%d: Thread session is not active, when this threadstop is called.", buf, 0x12u);
    }
  }

  [(ThreadNetworkManagerInstance *)self disconnectActiveWedConnection];
  [(ThreadNetworkManagerInstance *)self CAgetCoexCounter];
  [(ThreadNetworkManagerInstance *)self CAgetPcapMetrics:0];
  [(ThreadNetworkManagerInstance *)self configureCAMetrics:0];
  if (self->_lastKnownNCPState == 8 && (srputil_set_stop() & 1) == 0)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance threadStop];
    }
  }

  [(ThreadNetworkManagerInstance *)self persistThreadSession:0];
  if (self->_lastKnownNCPState == 8)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance threadStop];
    }

    usleep(0x30D40u);
    [self->_CtrInternalClientPtr stop];
    if ((v13[31] & 0x80000000) != 0)
    {
      v9 = v13;
      goto LABEL_25;
    }

LABEL_22:
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  [self->_CtrInternalClientPtr stop];
  if ((v12[31] & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  v9 = v12;
LABEL_25:
  operator delete(v9[1]);
  if (v5)
  {
LABEL_26:
    [(ThreadNetworkManagerInstance *)self generateThreadSessionEvent:0];
  }

LABEL_27:
  lastKnownJoinedNetworkRecord = self->_lastKnownJoinedNetworkRecord;
  self->_lastKnownJoinedNetworkRecord = 0;

  return 0;
}

- (int)threadLeave
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    nl::wpantund::ncp_state_to_string(self->_lastKnownNCPState, __p);
    v4 = v15 >= 0 ? __p : *__p;
    *buf = 136315394;
    v17 = "[ThreadNetworkManagerInstance threadLeave]";
    v18 = 2080;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Cmd received in state %s", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(*__p);
    }
  }

  v5 = [(ThreadNetworkManagerInstance *)self getThreadSessionStatus];
  if ((v5 & 1) == 0)
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *__p = 136315394;
      *&__p[4] = "[ThreadNetworkManagerInstance threadLeave]";
      v13 = 1024;
      v14 = 3293;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, " %s:%d: Thread session is not active, when this threadstop is called.", __p, 0x12u);
    }
  }

  [(ThreadNetworkManagerInstance *)self CAgetCoexCounter];
  [(ThreadNetworkManagerInstance *)self CAgetPcapMetrics:0];
  [(ThreadNetworkManagerInstance *)self disconnectActiveWedConnection];
  if (self->_lastKnownNCPState == 8 && (srputil_set_stop() & 1) == 0)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance threadLeave];
    }
  }

  [(ThreadNetworkManagerInstance *)self configureCAMetrics:0];
  [(ThreadNetworkManagerInstance *)self persistThreadSession:0];
  [self->_CtrInternalClientPtr leave];
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sleep(2u);
  lastKnownJoinedNetworkRecord = self->_lastKnownJoinedNetworkRecord;
  self->_lastKnownJoinedNetworkRecord = 0;

  if (v5)
  {
    [(ThreadNetworkManagerInstance *)self generateThreadSessionEvent:0];
  }

  return 0;
}

- (void)coexCounterCollection:(BOOL)a3
{
  if (a3)
  {
    CtrInternalClientPtr = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v10, "vendor:coex:rcp2:state:collection");
    if (CtrInternalClientPtr)
    {
      [CtrInternalClientPtr setProperty:v10 property_val:"1"];
      v4 = LODWORD(__p[0]) == 0;
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }
    }

    else
    {
      memset(__p, 0, 32);
      v4 = 1;
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
      if (v4)
      {
        return;
      }
    }

    else if (v4)
    {
      return;
    }

    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "[ThreadNetworkManagerInstance coexCounterCollection:]";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3529;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: Failed to set kWPANTUNDVendor_CoEx_RCP2_State_Collection Property", __p, 0x12u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v5 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v8, "vendor:coex:rcp2:state:collection");
  if (v5)
  {
    [(CtrInternalClient *)v5 setProperty:v8 property_val:"0"];
    v6 = LODWORD(__p[0]) == 0;
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    memset(__p, 0, 32);
    v6 = 1;
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
    if (v6)
    {
      return;
    }

LABEL_20:
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "[ThreadNetworkManagerInstance coexCounterCollection:]";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3534;
      goto LABEL_22;
    }

LABEL_23:

    return;
  }

  if (!v6)
  {
    goto LABEL_20;
  }
}

- (int)threadStart:(const char *)a3 activeOperationalDataset:(const char *)a4 output:(dict *)a5
{
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance threadStart:activeOperationalDataset:output:]";
    *&buf[12] = 1024;
    *&buf[14] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Cmd received in state %d", buf, 0x12u);
  }

  v11 = [(ThreadNetworkManagerInstance *)self initializeKeyChainStore];
  if (v11)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance createDriverInterface:];
    }

LABEL_22:

    v15 = 0;
    goto LABEL_41;
  }

  if (!_os_feature_enabled_impl())
  {
    v35 = 0;
    v19 = [(ThreadNetworkManagerInstance *)self howToStartThreadNetwork:a3 activeOperationalDataset:0 credentialsRecord_t:&v35];
    v15 = v35;
    if (v19 - 1 < 2)
    {
      xpc::dict::dict(&v32, &a5->var0.var0);
      v11 = [(ThreadNetworkManagerInstance *)self formNewNetwork:&v32];
      v23 = v32;
      v32 = 0;

      v17 = 0;
      v18 = v32;
    }

    else
    {
      if (!v19)
      {
        if ([(ThreadNetworkManagerInstance *)self attachWithAllCreds:a3 credentialsRecord_t:v15 output:a5])
        {
          v11 = [(ThreadNetworkManagerInstance *)self formNetworkWithCreds:a3 credentialsRecord_t:v15 output:a5];
        }

        else
        {
          v11 = 0;
        }

        v17 = 0;
        goto LABEL_38;
      }

      if (v19 != 5)
      {
        v17 = 0;
        v11 = 1;
        goto LABEL_38;
      }

      v20 = xpc_string_create(a3);
      v33 = v20;
      if (!v20)
      {
        v33 = xpc_null_create();
      }

      *buf = a5;
      *&buf[8] = "outputUniqueNetworkId";
      xpc::dict::object_proxy::operator=(buf, &v33, &v34);
      v21 = v34;
      v34 = 0;

      v22 = v33;
      v33 = 0;

      v11 = 0;
      v17 = 0;
      v18 = v33;
    }

LABEL_24:

LABEL_38:
    gettimeofday(&v41, &v40);
    v25 = 0;
LABEL_39:
    if (!RcpHostContext::sRcpHostContext)
    {
      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }

    RcpHostContext::update_threadstart_metrics(RcpHostContext::sRcpHostContext, v42, v41, v25, v17);
    goto LABEL_41;
  }

  if ((isNetworkConnected() & 1) == 0)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance threadStart:activeOperationalDataset:output:];
    }

    v11 = 1;
    goto LABEL_22;
  }

  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  RcpHostContext::init_threadstart_metrics(RcpHostContext::sRcpHostContext);
  v13 = [(ThreadNetworkManagerInstance *)self checkPreferredAndJoin:a5 isCalledFromTimer:0];
  gettimeofday(&v42, &v40);
  if (!v13)
  {
    v24 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance threadStart:activeOperationalDataset:output:]";
      *&buf[12] = 1024;
      *&buf[14] = 3583;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s : %d :  Joined the Preferred Network\n", buf, 0x12u);
    }

    v17 = 0;
    v11 = 0;
    v15 = 0;
    v41 = v42;
    v25 = 1;
    goto LABEL_39;
  }

  v39 = 0;
  v14 = [(ThreadNetworkManagerInstance *)self howToStartThreadNetwork:a3 activeOperationalDataset:a4 credentialsRecord_t:&v39];
  v15 = v39;
  v11 = 1;
  if (v14 > 4)
  {
    if (v14 == 5)
    {
      v29 = xpc_string_create(a3);
      v37 = v29;
      if (!v29)
      {
        v37 = xpc_null_create();
      }

      *buf = a5;
      *&buf[8] = "outputUniqueNetworkId";
      xpc::dict::object_proxy::operator=(buf, &v37, &v38);
      v30 = v38;
      v38 = 0;

      v31 = v37;
      v37 = 0;

      v11 = 0;
      goto LABEL_47;
    }

    if (v14 != 7)
    {
      if (v14 != 8)
      {
        goto LABEL_47;
      }

      [(ThreadNetworkManagerInstance *)self startThreadNetworkWithAOD:a4 output:a5];
    }

    v18 = [v15 uniqueIdentifier];
    v26 = [v18 UUIDString];
    v27 = v26;
    v11 = -[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:](self, "formNetworkWithAOD:record:output:", [v26 UTF8String], v15, a5);

    v17 = 1;
    goto LABEL_24;
  }

  if ((v14 - 1) < 3)
  {
    xpc::dict::dict(&v36, &a5->var0.var0);
    v11 = [(ThreadNetworkManagerInstance *)self formNewNetwork:&v36];
    v16 = v36;
    v36 = 0;

    v17 = 0;
    v18 = v36;
    goto LABEL_24;
  }

  if (!v14)
  {
    v11 = [(ThreadNetworkManagerInstance *)self formNetworkWithCreds:a3 credentialsRecord_t:v15 output:a5];
  }

LABEL_47:
  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  RcpHostContext::clear_threadstart_metrics(RcpHostContext::sRcpHostContext);
LABEL_41:

  return v11;
}

- (int)deleteCredentialsForThisNetwork:(id)a3
{
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (self->_keyChainStore)
  {
    v6 = dispatch_semaphore_create(0);
    keyChainStore = self->_keyChainStore;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = __64__ThreadNetworkManagerInstance_deleteCredentialsForThisNetwork___block_invoke;
    v21 = &unk_1004C88F8;
    v23 = &v24;
    v8 = v6;
    v22 = v8;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore deleteRecordForNetwork:v5 completion:&v18];
    v9 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance deleteCredentialsForThisNetwork:];
      }
    }

    else
    {
      if (!v25[5])
      {
        v11 = 0;
        goto LABEL_11;
      }

      v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [v25[5] description];
        v14 = v13;
        v15 = [v13 UTF8String];
        if (v15)
        {
          v3 = [v25[5] description];
          v17 = v3;
          v16 = [v3 UTF8String];
        }

        else
        {
          v16 = "(unknown error)";
        }

        *buf = 136315394;
        v31 = "[ThreadNetworkManagerInstance deleteCredentialsForThisNetwork:]";
        v32 = 2080;
        v33 = v16;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s : Error: failed to delete (%s)\n", buf, 0x16u);
        if (v15)
        {
        }
      }
    }

    v11 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance deleteCredentialsForThisNetwork:];
  }

  v11 = 0;
LABEL_12:

  _Block_object_dispose(&v24, 8);
  return v11;
}

void __64__ThreadNetworkManagerInstance_deleteCredentialsForThisNetwork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ThreadNetworkManagerInstance deleteCredentialsForThisNetwork:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Inside : %s : ", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)getMeCredentialsForThisNetwork:(id)a3 credentialsRecord_t:(id *)a4
{
  v7 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  if (self->_keyChainStore)
  {
    v8 = dispatch_semaphore_create(0);
    keyChainStore = self->_keyChainStore;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __83__ThreadNetworkManagerInstance_getMeCredentialsForThisNetwork_credentialsRecord_t___block_invoke;
    v35[3] = &unk_1004C8920;
    v37 = &v45;
    v38 = &v39;
    v10 = v8;
    v36 = v10;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveAllRecordsForNetwork:v7 completion:v35];
    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance getMeCredentialsForThisNetwork:credentialsRecord_t:];
      }

      v13 = 1;
    }

    else
    {
      if (v40[5])
      {
        v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v21 = [v40[5] description];
          v22 = v21;
          v23 = [v21 UTF8String];
          if (v23)
          {
            v4 = [v40[5] description];
            v29 = v4;
            v24 = [v4 UTF8String];
          }

          else
          {
            v24 = "(unknown error)";
          }

          *buf = 136315394;
          v53 = "[ThreadNetworkManagerInstance getMeCredentialsForThisNetwork:credentialsRecord_t:]";
          v54 = 2080;
          v55 = v24;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s : Error: failed to retrieve (%s)\n", buf, 0x16u);
          if (v23)
          {
          }
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (![v46[5] count])
      {
        v15 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v25 = [v40[5] description];
          v26 = v25;
          v27 = [v25 UTF8String];
          if (v27)
          {
            v4 = [v40[5] description];
            v30 = v4;
            v28 = [v4 UTF8String];
          }

          else
          {
            v28 = "(unknown error)";
          }

          *buf = 136315394;
          v53 = "[ThreadNetworkManagerInstance getMeCredentialsForThisNetwork:credentialsRecord_t:]";
          v54 = 2080;
          v55 = v28;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s : Error: failed to retrieve (%s), zero records found\n", buf, 0x16u);
          if (v27)
          {
          }
        }

        v13 = 1;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = v46[5];
      v16 = [v12 countByEnumeratingWithState:&v31 objects:v51 count:16];
      if (v16)
      {
        v17 = *v32;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            if (v19)
            {
              *a4 = v19;
              goto LABEL_26;
            }
          }

          v16 = [v12 countByEnumeratingWithState:&v31 objects:v51 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_26:
  }

  else
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getMeCredentialsForThisNetwork:credentialsRecord_t:];
    }

    v13 = 0;
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v13;
}

void __83__ThreadNetworkManagerInstance_getMeCredentialsForThisNetwork_credentialsRecord_t___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ThreadNetworkManagerInstance getMeCredentialsForThisNetwork:credentialsRecord_t:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Inside : %s : ", &v14, 0xCu);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fillupThreadCredentialsToSelfHealThreadNetwork:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]";
    *&buf[12] = 1024;
    *&buf[14] = 3756;
    *&buf[18] = 1024;
    *&buf[20] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d: Radio mode %d", buf, 0x18u);
  }

  v10 = self->_lastKnownNCPState;
  if (v10 != 8)
  {
    if (v10 == 4)
    {
      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:? store:?];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__0;
      *&buf[32] = __Block_byref_object_dispose__0;
      v63 = 0;
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke;
      v61[3] = &unk_1004C88F8;
      v61[4] = self;
      v61[5] = buf;
      [v7 deletePreferredNetworkEntryWithCompletion:v6 completion:v61];
      _Block_object_dispose(buf, 8);
    }

    goto LABEL_57;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  __p = *buf;
  v12 = buf[23];
  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]";
    *&buf[12] = 1024;
    *&buf[14] = 3778;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d: Entered to fillup the preferred network entry", buf, 0x12u);
  }

  v60.var0 = 0;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v58, "Network:Name");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v58 output:&v60];
    v15 = *buf == 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  memset(buf, 0, 32);
  v15 = 1;
  if (v12 < 0)
  {
LABEL_12:
    operator delete(__p);
  }

LABEL_13:
  __pa = *&buf[8];
  v16 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if ((v59 & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_37:
    v36 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]";
      *&buf[12] = 1024;
      *&buf[14] = 3784;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s:%d: Failed to get the Network Name Property", buf, 0x12u);
    }

    goto LABEL_53;
  }

  operator delete(v58[0]);
  if (!v15)
  {
    goto LABEL_37;
  }

LABEL_15:
  any_to_string(&v60, v56);
  if (v57 >= 0)
  {
    v17 = v56;
  }

  else
  {
    v17 = v56[0];
  }

  v40 = [NSString stringWithUTF8String:v17];
  v55.var0 = 0;
  v18 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v53, "Network:XPANID");
  if (v18)
  {
    [(CtrInternalClient *)v18 getProperty:v53 output:&v55];
    v19 = *buf == 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  memset(buf, 0, 32);
  v19 = 1;
  if (v16 < 0)
  {
LABEL_20:
    operator delete(__pa);
  }

LABEL_21:
  __pa = *&buf[8];
  v16 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if ((v54 & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_43:
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Failed to get the Network XPANID Property", buf, 2u);
    }

    goto LABEL_49;
  }

  operator delete(v53[0]);
  if (!v19)
  {
    goto LABEL_43;
  }

LABEL_23:
  v52 = bswap64(any_to_uint64(&v55, 0));
  v39 = [NSData dataWithBytes:&v52 length:8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3812000000;
  v48 = __Block_byref_object_copy__307;
  v49 = __Block_byref_object_dispose__308;
  v50 = 256;
  v20 = xpc_dictionary_create(0, 0, 0);
  v21 = v20;
  if (!v20)
  {
    v21 = xpc_null_create();
  }

  v22 = v21;
  v23 = v22;
  v51 = v22;
  if (!v22 || xpc_get_type(v22) != &_xpc_type_dictionary)
  {
    v24 = xpc_null_create();
    v25 = v51;
    v51 = v24;
  }

  v26 = [v6 network];
  v27 = [v26 networkName];
  if ([v27 isEqualToString:v40])
  {
    v28 = [v6 network];
    v29 = [v28 extendedPANID];
    v30 = [v29 isEqualToData:v39];

    if (v30)
    {
      v31 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v6 network];
        v33 = [v32 networkName];
        v34 = [v6 network];
        v35 = [v34 extendedPANID];
        *buf = 136316418;
        *&buf[4] = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]";
        *&buf[12] = 1024;
        *&buf[14] = 3806;
        *&buf[18] = 2112;
        *&buf[20] = v33;
        *&buf[28] = 2112;
        *&buf[30] = v35;
        *&buf[38] = 2112;
        v63 = v40;
        v64 = 2112;
        v65 = v39;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s:%d:Preferred network entry exists (name : %@, xpanid : %@)  ! And device is on same netowrk (name : %@, xpanid : %@) storing the credentials again..", buf, 0x3Au);
      }

      [(ThreadNetworkManagerInstance *)self saveThreadConfiguration:v46 + 6];
      if (v44 < 0)
      {
        operator delete(v43[8]);
      }

      goto LABEL_48;
    }
  }

  else
  {
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__0;
  *&buf[32] = __Block_byref_object_dispose__0;
  v63 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_309;
  v43[3] = &unk_1004C8948;
  v43[4] = self;
  v43[5] = buf;
  v43[6] = &v45;
  [v7 deletePreferredNetworkEntryWithCompletion:v6 completion:v43];
  _Block_object_dispose(buf, 8);

LABEL_48:
  _Block_object_dispose(&v45, 8);
  v38 = v51;
  v51 = 0;

LABEL_49:
  if (v55.var0)
  {
    (*(*v55.var0 + 8))(v55.var0);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

LABEL_53:
  if (v60.var0)
  {
    (*(*v60.var0 + 8))(v60.var0);
  }

  if (v16 < 0)
  {
    operator delete(__pa);
  }

LABEL_57:
}

void __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v4)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
    }

    v8 = v7;
    v9 = v8;
    v15 = v8;
    if (v8)
    {
      if (xpc_get_type(v8) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
      }
    }

    else
    {
      v15 = xpc_null_create();
    }

    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]_block_invoke";
      v18 = 1024;
      v19 = 3770;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d: NCP is offline, Creating a new network and saving thread configuration again, this will be marked as new preferred network...", buf, 0x12u);
    }

    v11 = *(a1 + 32);
    xpc::dict::dict(&v14, &v15);
    [v11 formNewNetwork:&v14];
    v12 = v14;
    v14 = 0;

    v13 = v15;
    v15 = 0;
  }
}

void __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_309(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v4)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_309_cold_1();
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[ThreadNetworkManagerInstance fillupThreadCredentialsToSelfHealThreadNetwork:store:]_block_invoke";
      v11 = 1024;
      v12 = 3818;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: Saving thread configuration again, this will be marked as new preferred network...", buf, 0x12u);
    }

    [*(a1 + 32) saveThreadConfiguration:*(*(a1 + 48) + 8) + 48];
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

- (id)getPreferredNetworkWithNoScan
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (self->_keyChainStore)
  {
    v3 = dispatch_semaphore_create(0);
    keyChainStore = self->_keyChainStore;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __61__ThreadNetworkManagerInstance_getPreferredNetworkWithNoScan__block_invoke;
    v12[3] = &unk_1004C8970;
    v14 = &v22;
    v15 = &v16;
    v5 = v3;
    v13 = v5;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrievePreferredNetworkWithNoScanWithCompletion:v12];
    v6 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance getPreferredNetworkWithNoScan];
      }
    }

    else if (!v17[5])
    {
      v10 = v23[5];
      if (v10)
      {
        tnmDumpRecord(v10);
        v11 = v23[5];
      }

      else
      {
        v11 = 0;
      }

      v8 = v11;
      goto LABEL_11;
    }

    v8 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getPreferredNetworkWithNoScan];
  }

  v8 = 0;
LABEL_12:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __61__ThreadNetworkManagerInstance_getPreferredNetworkWithNoScan__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__ThreadNetworkManagerInstance_getPreferredNetworkWithNoScan__block_invoke_cold_1();
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got the Credentials Record, for the PreferredNetwork", v14, 2u);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getPreferredNetwork
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (self->_keyChainStore)
  {
    v3 = dispatch_semaphore_create(0);
    keyChainStore = self->_keyChainStore;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __51__ThreadNetworkManagerInstance_getPreferredNetwork__block_invoke;
    v12[3] = &unk_1004C8970;
    v14 = &v22;
    v15 = &v16;
    v5 = v3;
    v13 = v5;
    [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrievePreferredNetworkOfAnyDSFormatWithCompletion:v12];
    v6 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance getPreferredNetwork];
      }
    }

    else if (!v17[5])
    {
      v10 = v23[5];
      if (v10)
      {
        tnmDumpRecord(v10);
        v11 = v23[5];
      }

      else
      {
        v11 = 0;
      }

      v8 = v11;
      goto LABEL_11;
    }

    v8 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getPreferredNetwork];
  }

  v8 = 0;
LABEL_12:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __51__ThreadNetworkManagerInstance_getPreferredNetwork__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__ThreadNetworkManagerInstance_getPreferredNetworkWithNoScan__block_invoke_cold_1();
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got the Credentials Record, for the PreferredNetwork", v14, 2u);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)checkPreferredAndJoin:(dict *)a3 isCalledFromTimer:(BOOL)a4
{
  v4 = a4;
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance checkPreferredAndJoin:isCalledFromTimer:]";
    *&buf[12] = 1024;
    *&buf[14] = 3907;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: Checking for Preferred network availability to join", buf, 0x12u);
  }

  v8 = [(ThreadNetworkManagerInstance *)self getPreferredNetwork];
  if (!v8)
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    v14 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance checkPreferredAndJoin:isCalledFromTimer:]";
      *&buf[12] = 1024;
      *&buf[14] = 3911;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d: No Preferred Network found ", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (self->_lastKnownNCPState == 4)
  {
LABEL_5:
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance checkPreferredAndJoin:isCalledFromTimer:]";
      *&buf[12] = 1024;
      *&buf[14] = 3941;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %d :  Leaving the existing Network...\n", buf, 0x12u);
    }

    [(ThreadNetworkManagerInstance *)self threadLeave];
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance checkPreferredAndJoin:isCalledFromTimer:]";
      *&buf[12] = 1024;
      *&buf[14] = 3945;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %d :  Joining the Preferred Network...\n", buf, 0x12u);
    }

    v11 = [v8 uniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = v12;
    v14 = -[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:](self, "formNetworkWithAOD:record:output:", [v12 UTF8String], v8, a3);

LABEL_12:
    goto LABEL_13;
  }

  if (![(ThreadNetworkManagerInstance *)self isCurrentNetworkSameAsOneToStart:v8])
  {
    if (v4)
    {
      v28 = RcpHostContext::sRcpHostContext;
      if (!RcpHostContext::sRcpHostContext)
      {
        __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
      }

      std::string::basic_string[abi:ne200100]<0>(v39, "Error");
      std::string::basic_string[abi:ne200100]<0>(v37, "Thread network switched");
      std::string::basic_string[abi:ne200100]<0>(__p, "Apple router switching to new thread network during self heal operation");
      RcpHostContext::captureABC(v28, v39, v37, __p, 0, 1);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v33, "Invalid State");
      std::string::basic_string[abi:ne200100]<0>(v31, "Thread network switched");
      std::string::basic_string[abi:ne200100]<0>(v29, "Apple router switching to new thread network during self heal operation");
      [(ThreadNetworkManagerInstance *)self CATriggerABCInfoMetric:v33 abcCaseSubType:v31 abcString:v29];
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    goto LABEL_5;
  }

  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v8 network];
    v18 = [v17 networkName];
    v19 = v18;
    v20 = [v18 UTF8String];
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance checkPreferredAndJoin:isCalledFromTimer:]";
    *&buf[12] = 2080;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : Already joined on the same network : Network name : %s", buf, 0x16u);
  }

  v21 = [v8 uniqueIdentifier];
  v22 = [v21 UUIDString];
  v23 = v22;
  v24 = [v22 UTF8String];

  v25 = xpc_string_create(v24);
  v41 = v25;
  if (!v25)
  {
    v41 = xpc_null_create();
  }

  *buf = a3;
  *&buf[8] = "outputUniqueNetworkId";
  xpc::dict::object_proxy::operator=(buf, &v41, &v42);
  v26 = v42;
  v42 = 0;

  v27 = v41;
  v41 = 0;

  [(ThreadNetworkManagerInstance *)self saveLastKnownJoinedNetwork:v24 datasetRecord:v8];
  v14 = 0;
LABEL_13:

  return v14;
}

- (int)getMePassPhraseForThisNetwork:(id)a3 passPhrase:(id *)a4
{
  v7 = a3;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v8 = dispatch_semaphore_create(0);
  keyChainStore = self->_keyChainStore;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = __73__ThreadNetworkManagerInstance_getMePassPhraseForThisNetwork_passPhrase___block_invoke;
  v43[3] = &unk_1004C8920;
  v45 = &v53;
  v46 = &v47;
  v10 = v8;
  v44 = v10;
  [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveAllRecordsForNetwork:v7 completion:v43];
  v11 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getMePassPhraseForThisNetwork:passPhrase:];
    }

LABEL_19:
    v22 = 1;
    goto LABEL_23;
  }

  if (v48[5])
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26 = [v48[5] description];
      v27 = v26;
      v28 = [v26 UTF8String];
      if (v28)
      {
        v4 = [v48[5] description];
        v37 = v4;
        v29 = [v4 UTF8String];
      }

      else
      {
        v29 = "(unknown error)";
      }

      *buf = 136315138;
      v60 = v29;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: failed to retrieve (%s)\n", buf, 0xCu);
      if (v28)
      {
      }
    }
  }

  if (![v54[5] count])
  {
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v33 = [v48[5] description];
      v34 = v33;
      v35 = [v33 UTF8String];
      if (v35)
      {
        v4 = [v48[5] description];
        v38 = v4;
        v36 = [v4 UTF8String];
      }

      else
      {
        v36 = "(unknown error)";
      }

      *buf = 136315138;
      v60 = v36;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: failed to retrieve (%s), zero records found\n", buf, 0xCu);
      if (v35)
      {
      }
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v54[5];
  v15 = [v12 countByEnumeratingWithState:&v39 objects:v63 count:16];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = *v40;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v40 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v39 + 1) + 8 * i);
      v19 = [v18 credentials];
      v20 = [v19 passPhrase];
      v21 = v20 == 0;

      if (!v21)
      {
        v23 = [v18 credentials];
        *a4 = [v23 passPhrase];

        v24 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = *a4;
          v31 = [v18 credentials];
          v32 = [v31 passPhrase];
          *buf = 138412546;
          v60 = v30;
          v61 = 2112;
          v62 = v32;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "**passPhrase : %@, passphrase  : %@ : ", buf, 0x16u);
        }

        v22 = 0;
        goto LABEL_23;
      }
    }

    v15 = [v12 countByEnumeratingWithState:&v39 objects:v63 count:16];
    v22 = 1;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_23:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  return v22;
}

void __73__ThreadNetworkManagerInstance_getMePassPhraseForThisNetwork_passPhrase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ThreadNetworkManagerInstance getMePassPhraseForThisNetwork:passPhrase:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Inside : %s : ", &v14, 0xCu);
  }

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __73__ThreadNetworkManagerInstance_getMePassPhraseForThisNetwork_passPhrase___block_invoke_cold_1();
    }
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)dataFromHexString:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];

  v5 = objc_opt_new();
  v16 = 0;
  v6 = [v4 length];
  if (v6 >= 2)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v9 = [v4 characterAtIndex:v7];
      v10 = v7 + 1;
      if (v9 >= 48)
      {
        v11 = v9 & 0x7F;
        v12 = v9 <= 0x39u || v11 >= 0x61;
        v13 = !v12;
        if (v11 <= 0x66 && !v13)
        {
          __str[0] = v9;
          __str[1] = [v4 characterAtIndex:v10];
          HIBYTE(v16) = strtol(__str, 0, 16);
          [v5 appendBytes:&v16 + 1 length:1];
          v10 = v7 + 2;
        }
      }

      v7 = v10;
    }

    while (v10 < v8);
  }

  return v5;
}

- (int)joinerAttach:(const char *)a3 output:(dict *)a4
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "Command Error");
  v7 = v27;
  v8 = SHIBYTE(v28);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = "JoinerAttach";
  v31 = "Thread:Joiner:State";
  v32 = 0;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr joiner:&v27];
    v10 = buf;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  buf = 0uLL;
  v34 = 0uLL;
  if (v8 < 0)
  {
LABEL_3:
    operator delete(v7);
  }

LABEL_4:
  v11 = *(&buf + 1);
  v12 = SHIBYTE(v34);
  if (v10)
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance joinerAttach:output:];
    }

    CAMetricsHandlers_joinattempt_status(1, 0);
    [self->_CtrInternalClientPtr leave];
    if ((v24 & 0x80000000) == 0)
    {
      v14 = 1;
      goto LABEL_25;
    }

    v14 = 1;
    v19 = v23;
    goto LABEL_24;
  }

  v15 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *&buf = 67109120;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Joiner return code %u", &buf, 8u);
  }

  CAMetricsHandlers_joinattempt_status(1, 1);
  sleep(2u);
  std::string::basic_string[abi:ne200100]<0>(&buf, "Command is Successful");
  v16 = buf;
  v17 = SBYTE7(v34);
  [(ThreadNetworkManagerInstance *)self saveThreadConfiguration:a4 passPhrase:a3];
  v18 = buf;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v19 = *(&buf + 1);
  v20 = SHIBYTE(v34);
  if (v18)
  {
    v21 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance joinerAttach:output:];
    }

    [self->_CtrInternalClientPtr leave];
    if (v26 < 0)
    {
      operator delete(__p);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (v20 < 0)
  {
LABEL_24:
    operator delete(v19);
  }

LABEL_25:
  if (v12 < 0)
  {
    operator delete(v11);
  }

  return v14;
}

- (void)CATriggerABCInfoMetric:()basic_string<char abcCaseSubType:()std:(std::allocator<char>> *)var0 :char_traits<char> abcString:
{
  v5 = v4;
  v6 = v3;
  v9 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v10 = &mDaemonVersion;
  }

  else
  {
    v10 = mDaemonVersion;
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v9 setObject:v11 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v12 = &mVendorVersion;
  }

  else
  {
    v12 = mVendorVersion;
  }

  v13 = [NSString stringWithUTF8String:v12];
  [v9 setObject:v13 forKey:@"header_vendor_version"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v9];
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  v14 = [NSString stringWithUTF8String:var0];
  [v9 setObject:v14 forKey:@"ABC_CaseType"];

  if (*(v6 + 23) < 0)
  {
    v6 = *v6;
  }

  v15 = [NSString stringWithUTF8String:v6];
  [v9 setObject:v15 forKey:@"ABC_CaseSubType"];

  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v16 = [NSString stringWithUTF8String:v5];
  [v9 setObject:v16 forKey:@"ABC_String"];

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __80__ThreadNetworkManagerInstance_CATriggerABCInfoMetric_abcCaseSubType_abcString___block_invoke;
  v23 = &unk_1004C1808;
  v17 = v9;
  v24 = v17;
  AnalyticsSendEventLazy();
  v18 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "TNM:Triggered flagstoneABCInfoMetrics", v19, 2u);
  }
}

- (void)sendThirdPartyMetricsInfo:(unsigned int)a3 prefNws:(unsigned int)a4 prefNwsByApple:(unsigned int)a5
{
  if (CAMetricsHandlers_ctcsmetrics_update(a3, a4, a5))
  {
    *v21 = 0;
    v20 = 0;
    v5 = +[NSMutableDictionary dictionary];
    v6 = +[NSMutableDictionary dictionary];
    CAMetricsHandlers_handle_get_CTCSNumberOfPreferredNWs(&v21[1], v21);
    CAMetricsHandlers_handle_get_CTCSNumberOfThirdPartyBRs(&v20);
    if (byte_1004E5C7F >= 0)
    {
      v7 = &mDaemonVersion;
    }

    else
    {
      v7 = mDaemonVersion;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKey:@"header_daemon_version"];

    if (byte_1004E5C97 >= 0)
    {
      v9 = &mVendorVersion;
    }

    else
    {
      v9 = mVendorVersion;
    }

    v10 = [NSString stringWithUTF8String:v9];
    [v5 setObject:v10 forKey:@"header_vendor_version"];

    v11 = [NSNumber numberWithUnsignedInt:v20];
    [v5 setObject:v11 forKey:@"number_of_third_party_border_routers"];

    v12 = v5;
    AnalyticsSendEventLazy();
    if (byte_1004E5C7F >= 0)
    {
      v13 = &mDaemonVersion;
    }

    else
    {
      v13 = mDaemonVersion;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v6 setObject:v14 forKey:@"header_daemon_version"];

    if (byte_1004E5C97 >= 0)
    {
      v15 = &mVendorVersion;
    }

    else
    {
      v15 = mVendorVersion;
    }

    v16 = [NSString stringWithUTF8String:v15];
    [v6 setObject:v16 forKey:@"header_vendor_version"];

    v17 = [NSNumber numberWithUnsignedInt:v21[0]];
    [v6 setObject:v17 forKey:@"number_of_preferred_nw_by_Apple_border_routers"];

    v18 = [NSNumber numberWithUnsignedInt:v21[1]];
    [v6 setObject:v18 forKey:@"number_of_preferred_nw_by_third_party_border_routers"];

    v19 = v6;
    AnalyticsSendEventLazy();
  }
}

- (void)retrieveAndPostThirdPartyInfo
{
  keyChainStore = self->_keyChainStore;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __61__ThreadNetworkManagerInstance_retrieveAndPostThirdPartyInfo__block_invoke;
  v3[3] = &unk_1004C8998;
  v3[4] = self;
  [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveThirdPartyInfo:v3];
}

id __61__ThreadNetworkManagerInstance_retrieveAndPostThirdPartyInfo__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[ThreadNetworkManagerInstance retrieveAndPostThirdPartyInfo]_block_invoke";
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : numThirdPartyBRs : %lu numPrefNwByThirdPartyBRs : %lu numPrefNwByAppleBRs : %lu", &v10, 0x2Au);
  }

  AWDMetricsClient_UpdateMetrics_CTCS(a2, a3, a4);
  return [*(a1 + 32) sendThirdPartyMetricsInfo:a2 prefNws:a3 prefNwsByApple:a4];
}

- (int)startThreadNetworkWithAOD:(const char *)a3 output:(dict *)a4
{
  v6 = std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __p = *buf;
  v68[0] = *&buf[16];
  *(v68 + 3) = *&buf[19];
  v7 = buf[23];
  std::string::basic_string[abi:ne200100]<0>(v6, "Command is Successful");
  v47 = *buf;
  v49 = buf[23];
  v66 = 0uLL;
  v67 = 0;
  v8 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", a3, +[NSString defaultCStringEncoding]);
  if (!v8)
  {
    v15 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance startThreadNetworkWithAOD:output:];
    }

    v9 = 0;
    goto LABEL_24;
  }

  v9 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v8];
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startThreadNetworkWithAOD: starting thread network with dstring Data: %@", buf, 0xCu);
  }

  if (v9)
  {
    v11 = v9;
    v12 = [v9 bytes];
    v13 = [v9 length];
    ctu::hex(buf, v12, v13, v14);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "");
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  v67 = *&buf[16];
  v66 = *buf;
  v16 = HIBYTE(*&buf[16]);
  if (buf[23] < 0)
  {
    v16 = *(&v66 + 1);
  }

  if (!v16)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance startThreadNetworkWithAOD:&v66 output:?];
    }

LABEL_24:
    v18 = 0;
LABEL_55:
    v35 = RcpHostContext::sRcpHostContext;
    if (!RcpHostContext::sRcpHostContext)
    {
      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "Error");
    std::string::basic_string[abi:ne200100]<0>(v52, "Form Failed");
    std::string::basic_string[abi:ne200100]<0>(v50, "Failed to form a specific network using AOD for shared admin, active operational dataset in RCP");
    RcpHostContext::captureABC(v35, v54, v52, v50, 0, 1);
    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    v24 = 1;
    goto LABEL_63;
  }

  v65 = 0;
  v17 = [(ThreadNetworkManagerInstance *)self validateDataSetTLVs:v9 creds:&v65];
  v18 = v65;
  if ((v17 & 1) == 0)
  {
    v26 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance startThreadNetworkWithAOD:&v66 output:?];
    }

    goto LABEL_55;
  }

  if (self->_lastKnownNCPState != 4)
  {
    if ([(ThreadNetworkManagerInstance *)self isCurrentNetworkSameAsOneToStart:v18])
    {
      v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 network];
        v21 = [v20 networkName];
        v22 = v21;
        v23 = [v21 UTF8String];
        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "startThreadNetworkWithAOD: Already joined on the same network : Network name : %s", buf, 0xCu);
      }

      v24 = 0;
      goto LABEL_65;
    }

    v27 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "startThreadNetworkWithAOD: Leaving the existing Network...\n", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self threadLeave];
  }

  CAMetricsHandlers_joinattempt_start();
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v63, "Thread:ActiveDataset:Bytes");
  if (CtrInternalClientPtr)
  {
    if (v67 >= 0)
    {
      v29 = &v66;
    }

    else
    {
      v29 = v66;
    }

    [CtrInternalClientPtr setProperty:v63 property_val:v29];
    LODWORD(CtrInternalClientPtr) = *buf;
    if (v7 < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    memset(buf, 0, 32);
    if (v7 < 0)
    {
LABEL_36:
      operator delete(__p);
    }
  }

  v30 = *&buf[16];
  __p = *&buf[8];
  v68[0] = *&buf[24];
  *(v68 + 3) = *&buf[27];
  v7 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  v31 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v61;
    CtrXPC::Result::toString(CtrInternalClientPtr, v61);
    if (v62 < 0)
    {
      v32 = v61[0];
    }

    if (v7 < 0)
    {
      std::string::__init_copy_ctor_external(&v60, __p, v30);
      v33 = &v60;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v60.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v60.__r_.__value_.__r.__words[0] = __p;
      v60.__r_.__value_.__l.__size_ = v30;
      LODWORD(v60.__r_.__value_.__r.__words[2]) = v68[0];
      *(&v60.__r_.__value_.__r.__words[2] + 3) = *(v68 + 3);
      *(&v60.__r_.__value_.__s + 23) = v7;
      v33 = &v60;
    }

    *buf = 136316162;
    *&buf[4] = "[ThreadNetworkManagerInstance startThreadNetworkWithAOD:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 4640;
    *&buf[18] = 2080;
    *&buf[20] = "Thread:ActiveDataset:Bytes";
    *&buf[28] = 2080;
    *&buf[30] = v32;
    v70 = 2080;
    v71 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s:%d: Set Result for %s = %s, Error Info: %s", buf, 0x30u);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }
  }

  if (CtrInternalClientPtr)
  {
    v34 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v43 = v61;
      CtrXPC::Result::toString(CtrInternalClientPtr, v61);
      if (v62 < 0)
      {
        v43 = v61[0];
      }

      if (v7 < 0)
      {
        std::string::__init_copy_ctor_external(&v60, __p, v30);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v60;
        }

        else
        {
          v44 = v60.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v60.__r_.__value_.__r.__words[0] = __p;
        v60.__r_.__value_.__l.__size_ = v30;
        LODWORD(v60.__r_.__value_.__r.__words[2]) = v68[0];
        *(&v60.__r_.__value_.__r.__words[2] + 3) = *(v68 + 3);
        *(&v60.__r_.__value_.__s + 23) = v7;
        v44 = &v60;
      }

      *buf = 136315650;
      *&buf[4] = "Thread:ActiveDataset:Bytes";
      *&buf[12] = 2080;
      *&buf[14] = v43;
      *&buf[22] = 2080;
      *&buf[24] = v44;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "startThreadNetworkWithAOD: Set kWPANTUNDProperty_ThreadActiveDatasetBytes Result for %s = %s, Error Info: %s", buf, 0x20u);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
    goto LABEL_55;
  }

  v37 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v58, "Interface:Up");
  if (v37)
  {
    [(CtrInternalClient *)v37 setProperty:v58 property_val:"1"];
    LODWORD(v37) = *buf;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  memset(buf, 0, 32);
  if (v7 < 0)
  {
LABEL_74:
    operator delete(__p);
  }

LABEL_75:
  v38 = *&buf[16];
  __p = *&buf[8];
  v68[0] = *&buf[24];
  *(v68 + 3) = *&buf[27];
  v7 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v39 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v61;
    CtrXPC::Result::toString(v37, v61);
    if (v62 < 0)
    {
      v40 = v61[0];
    }

    if (v7 < 0)
    {
      std::string::__init_copy_ctor_external(&v60, __p, v38);
      v41 = &v60;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = v60.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v60.__r_.__value_.__r.__words[0] = __p;
      v60.__r_.__value_.__l.__size_ = v38;
      LODWORD(v60.__r_.__value_.__r.__words[2]) = v68[0];
      *(&v60.__r_.__value_.__r.__words[2] + 3) = *(v68 + 3);
      *(&v60.__r_.__value_.__s + 23) = v7;
      v41 = &v60;
    }

    *buf = 136316162;
    *&buf[4] = "[ThreadNetworkManagerInstance startThreadNetworkWithAOD:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 4657;
    *&buf[18] = 2080;
    *&buf[20] = "Interface:Up";
    *&buf[28] = 2080;
    *&buf[30] = v40;
    v70 = 2080;
    v71 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s:%d: Set Result for %s = %s, Error Info: %s", buf, 0x30u);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }
  }

  if (v37)
  {
    v42 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v45 = v61;
      CtrXPC::Result::toString(v37, v61);
      if (v62 < 0)
      {
        v45 = v61[0];
      }

      if (v7 < 0)
      {
        std::string::__init_copy_ctor_external(&v60, __p, v38);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v60;
        }

        else
        {
          v46 = v60.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v60.__r_.__value_.__r.__words[0] = __p;
        v60.__r_.__value_.__l.__size_ = v38;
        LODWORD(v60.__r_.__value_.__r.__words[2]) = v68[0];
        *(&v60.__r_.__value_.__r.__words[2] + 3) = *(v68 + 3);
        *(&v60.__r_.__value_.__s + 23) = v7;
        v46 = &v60;
      }

      *buf = 136315650;
      *&buf[4] = "Interface:Up";
      *&buf[12] = 2080;
      *&buf[14] = v45;
      *&buf[22] = 2080;
      *&buf[24] = v46;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "startThreadNetworkWithAOD: Set kWPANTUNDProperty_InterfaceUp Result for %s = %s, Error Info: %s", buf, 0x20u);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
    [self->_CtrInternalClientPtr leave];
    if (v57 < 0)
    {
      operator delete(v56);
    }

    goto LABEL_55;
  }

  [(ThreadNetworkManagerInstance *)self saveLastKnownJoinedNetwork:0 datasetRecord:v18];
  CAMetricsHandlers_joinattempt_status(0, 1);
  v24 = 0;
LABEL_63:
  v19 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "startThreadNetworkWithAOD:  Exiting, ret : %d", buf, 8u);
  }

LABEL_65:

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (v49 < 0)
  {
    operator delete(v47);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_71:
    operator delete(__p);
    goto LABEL_69;
  }

  if (v7 < 0)
  {
    goto LABEL_71;
  }

LABEL_69:

  return v24;
}

- (int)formNetworkWithAOD:(const char *)a3 record:(id)a4 output:(dict *)a5
{
  v67 = a5;
  v6 = a4;
  v7 = std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __p = *buf;
  v97[0] = *&buf[16];
  *(v97 + 3) = *&buf[19];
  v72 = buf[23];
  std::string::basic_string[abi:ne200100]<0>(v7, "Command is Successful");
  v69 = *buf;
  v70 = buf[23];
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 credentialsDataSet];
    v10 = [v9 dataSetArray];
    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 4691;
    *&buf[18] = 2112;
    *&buf[20] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d: dsString Data: %@ ", buf, 0x1Cu);
  }

  v11 = [v6 credentialsDataSet];
  v12 = [v11 dataSetArray];
  if (v12)
  {
    v13 = [v6 credentialsDataSet];
    v14 = [v13 dataSetArray];
    v15 = v14;
    v16 = [v14 bytes];
    v17 = [v6 credentialsDataSet];
    v18 = [v17 dataSetArray];
    v19 = [v18 length];
    ctu::hex(v95, v16, v19, v20);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v95, "");
  }

  v21 = v96;
  if ((v96 & 0x80u) != 0)
  {
    v21 = v95[1];
  }

  if (!v21)
  {
    v30 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance formNetworkWithAOD:v95 record:? output:?];
    }

    goto LABEL_84;
  }

  v22 = [v6 credentialsDataSet];
  v23 = [v22 dataSetArray];
  v24 = [(ThreadNetworkManagerInstance *)self validateDataSetTLVs:v23];

  if ((v24 & 1) == 0)
  {
    v31 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance formNetworkWithAOD:v95 record:? output:?];
    }

    v32 = [(ThreadNetworkManagerInstance *)self formNetworkWithCreds:a3 credentialsRecord_t:v6 output:v67];
    goto LABEL_92;
  }

  v25 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = v95;
    if ((v96 & 0x80u) != 0)
    {
      v26 = v95[0];
    }

    *buf = 136315650;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 4710;
    *&buf[18] = 2080;
    *&buf[20] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d: dataset: %s ", buf, 0x1Cu);
  }

  CAMetricsHandlers_joinattempt_start();
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v93, "Thread:ActiveDataset:Bytes");
  if (CtrInternalClientPtr)
  {
    if ((v96 & 0x80u) == 0)
    {
      v28 = v95;
    }

    else
    {
      v28 = v95[0];
    }

    [CtrInternalClientPtr setProperty:v93 property_val:v28, v67];
    v29 = *buf;
  }

  else
  {
    v29 = 0;
    memset(buf, 0, 32);
  }

  if (v72 < 0)
  {
    operator delete(__p);
  }

  v33 = *&buf[16];
  __p = *&buf[8];
  v97[0] = *&buf[24];
  *(v97 + 3) = *&buf[27];
  v72 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = v91;
    CtrXPC::Result::toString(v29, v91);
    if (v92 < 0)
    {
      v35 = v91[0];
    }

    if (v72 < 0)
    {
      std::string::__init_copy_ctor_external(&v90, __p, v33);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v90;
      }

      else
      {
        v36 = v90.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v90.__r_.__value_.__r.__words[0] = __p;
      v90.__r_.__value_.__l.__size_ = v33;
      LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
      *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
      *(&v90.__r_.__value_.__s + 23) = v72;
      v36 = &v90;
    }

    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
    *&buf[12] = 2080;
    *&buf[14] = "Thread:ActiveDataset:Bytes";
    *&buf[22] = 2080;
    *&buf[24] = v35;
    *&buf[32] = 2080;
    *&buf[34] = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : Set Result for %s = %s, Error Info: %s", buf, 0x2Au);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v92 < 0)
    {
      operator delete(v91[0]);
    }
  }

  if (v29)
  {
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v57 = v91;
      CtrXPC::Result::toString(v29, v91);
      if (v92 < 0)
      {
        v57 = v91[0];
      }

      if (v72 < 0)
      {
        std::string::__init_copy_ctor_external(&v90, __p, v33);
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v90;
        }

        else
        {
          v58 = v90.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v90.__r_.__value_.__r.__words[0] = __p;
        v90.__r_.__value_.__l.__size_ = v33;
        LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
        *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
        *(&v90.__r_.__value_.__s + 23) = v72;
        v58 = &v90;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
      *&buf[12] = 2080;
      *&buf[14] = "Thread:ActiveDataset:Bytes";
      *&buf[22] = 2080;
      *&buf[24] = v57;
      *&buf[32] = 2080;
      *&buf[34] = v58;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s : Set kWPANTUNDProperty_ThreadActiveDatasetBytes Result for %s = %s, Error Info: %s", buf, 0x2Au);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (v92 < 0)
      {
        operator delete(v91[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
LABEL_84:
    v49 = RcpHostContext::sRcpHostContext;
    if (!RcpHostContext::sRcpHostContext)
    {
      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }

    std::string::basic_string[abi:ne200100]<0>(v77, "Error");
    std::string::basic_string[abi:ne200100]<0>(v75, "Form Failed");
    std::string::basic_string[abi:ne200100]<0>(v73, "Failed to form a specific network using AOD, active operational dataset in RCP");
    RcpHostContext::captureABC(v49, v77, v75, v73, 0, 1);
    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v32 = 1;
    goto LABEL_92;
  }

  deviceNode = self->_deviceNode;
  if (deviceNode == 1)
  {
    v41 = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v86, "Network:NodeType");
    if (v41)
    {
      [(CtrInternalClient *)v41 setProperty:v86 property_val:"router"];
      v40 = *buf;
    }

    else
    {
      v40 = 0;
      memset(buf, 0, 32);
    }

    if (v72 < 0)
    {
      operator delete(__p);
    }

    v43 = *&buf[16];
    __p = *&buf[8];
    v97[0] = *&buf[24];
    *(v97 + 3) = *&buf[27];
    LOBYTE(v72) = buf[31];
    buf[31] = 0;
    buf[8] = 0;
    if ((v87 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    v44 = v86[0];
  }

  else if (deviceNode == 9)
  {
    v39 = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v88, "Network:NodeType");
    if (v39)
    {
      [(CtrInternalClient *)v39 setProperty:v88 property_val:self->_defaultChildNode];
      v40 = *buf;
    }

    else
    {
      v40 = 0;
      memset(buf, 0, 32);
    }

    if (v72 < 0)
    {
      operator delete(__p);
    }

    v43 = *&buf[16];
    __p = *&buf[8];
    v97[0] = *&buf[24];
    *(v97 + 3) = *&buf[27];
    LOBYTE(v72) = buf[31];
    buf[31] = 0;
    buf[8] = 0;
    if ((v89 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    v44 = v88[0];
  }

  else
  {
    v42 = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v84, "Network:NodeType");
    if (v42)
    {
      [(CtrInternalClient *)v42 setProperty:v84 property_val:"sleepy-router"];
      v40 = *buf;
    }

    else
    {
      v40 = 0;
      memset(buf, 0, 32);
    }

    if (v72 < 0)
    {
      operator delete(__p);
    }

    v43 = *&buf[16];
    __p = *&buf[8];
    v97[0] = *&buf[24];
    *(v97 + 3) = *&buf[27];
    LOBYTE(v72) = buf[31];
    buf[31] = 0;
    buf[8] = 0;
    if ((v85 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    v44 = v84[0];
  }

  operator delete(v44);
LABEL_69:
  v45 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = v91;
    CtrXPC::Result::toString(v40, v91);
    if (v92 < 0)
    {
      v46 = v91[0];
    }

    if ((v72 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v90, __p, v43);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v90;
      }

      else
      {
        v47 = v90.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v90.__r_.__value_.__r.__words[0] = __p;
      v90.__r_.__value_.__l.__size_ = v43;
      LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
      *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
      *(&v90.__r_.__value_.__s + 23) = v72;
      v47 = &v90;
    }

    *buf = 136316162;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
    *&buf[12] = 1024;
    *&buf[14] = 4751;
    *&buf[18] = 2080;
    *&buf[20] = "Network:NodeType";
    *&buf[28] = 2080;
    *&buf[30] = v46;
    *&buf[38] = 2080;
    *&buf[40] = v47;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s : %d Set Result for %s = %s, Error Info: %s", buf, 0x30u);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v92 < 0)
    {
      operator delete(v91[0]);
    }
  }

  if (v40)
  {
    v48 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v63 = v91;
      CtrXPC::Result::toString(v40, v91);
      if (v92 < 0)
      {
        v63 = v91[0];
      }

      if ((v72 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v90, __p, v43);
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v90;
        }

        else
        {
          v64 = v90.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v90.__r_.__value_.__r.__words[0] = __p;
        v90.__r_.__value_.__l.__size_ = v43;
        LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
        *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
        *(&v90.__r_.__value_.__s + 23) = v72;
        v64 = &v90;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
      *&buf[12] = 2080;
      *&buf[14] = "Network:NodeType";
      *&buf[22] = 2080;
      *&buf[24] = v63;
      *&buf[32] = 2080;
      *&buf[34] = v64;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s : Set kWPANTUNDProperty_NetworkNodeType Result for %s = %s, Error Info: %s", buf, 0x2Au);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (v92 < 0)
      {
        operator delete(v91[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
    goto LABEL_84;
  }

  v51 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v82, "Interface:Up");
  if (v51)
  {
    [(CtrInternalClient *)v51 setProperty:v82 property_val:"1"];
    v52 = *buf;
  }

  else
  {
    v52 = 0;
    memset(buf, 0, 32);
  }

  if ((v72 & 0x80) != 0)
  {
    operator delete(__p);
  }

  v53 = *&buf[16];
  __p = *&buf[8];
  v97[0] = *&buf[24];
  *(v97 + 3) = *&buf[27];
  v72 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  v54 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    v55 = v91;
    CtrXPC::Result::toString(v52, v91);
    if (v92 < 0)
    {
      v55 = v91[0];
    }

    if (v72 < 0)
    {
      std::string::__init_copy_ctor_external(&v90, __p, v53);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v90;
      }

      else
      {
        v56 = v90.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v90.__r_.__value_.__r.__words[0] = __p;
      v90.__r_.__value_.__l.__size_ = v53;
      LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
      *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
      *(&v90.__r_.__value_.__s + 23) = v72;
      v56 = &v90;
    }

    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
    *&buf[12] = 2080;
    *&buf[14] = "Interface:Up";
    *&buf[22] = 2080;
    *&buf[24] = v55;
    *&buf[32] = 2080;
    *&buf[34] = v56;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s : Set Result for %s = %s, Error Info: %s", buf, 0x2Au);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v92 < 0)
    {
      operator delete(v91[0]);
    }
  }

  if (v52)
  {
    v59 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v65 = v91;
      CtrXPC::Result::toString(v52, v91);
      if (v92 < 0)
      {
        v65 = v91[0];
      }

      if (v72 < 0)
      {
        std::string::__init_copy_ctor_external(&v90, __p, v53);
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v90;
        }

        else
        {
          v66 = v90.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v90.__r_.__value_.__r.__words[0] = __p;
        v90.__r_.__value_.__l.__size_ = v53;
        LODWORD(v90.__r_.__value_.__r.__words[2]) = v97[0];
        *(&v90.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
        *(&v90.__r_.__value_.__s + 23) = v72;
        v66 = &v90;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithAOD:record:output:]";
      *&buf[12] = 2080;
      *&buf[14] = "Interface:Up";
      *&buf[22] = 2080;
      *&buf[24] = v65;
      *&buf[32] = 2080;
      *&buf[34] = v66;
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s : Set kWPANTUNDProperty_InterfaceUp Result for %s = %s, Error Info: %s", buf, 0x2Au);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (v92 < 0)
      {
        operator delete(v91[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
    [self->_CtrInternalClientPtr leave];
    if (v81 < 0)
    {
      operator delete(v80[2]);
    }

    goto LABEL_84;
  }

  [(ThreadNetworkManagerInstance *)self saveLastKnownJoinedNetwork:a3 datasetRecord:v6];
  v60 = xpc_string_create(a3);
  v79 = v60;
  if (!v60)
  {
    v79 = xpc_null_create();
  }

  *buf = v67;
  *&buf[8] = "outputUniqueNetworkId";
  xpc::dict::object_proxy::operator=(buf, &v79, v80);
  v61 = v80[0];
  v80[0] = 0;

  v62 = v79;
  v79 = 0;

  CAMetricsHandlers_joinattempt_status(0, 1);
  v32 = 0;
LABEL_92:
  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69);
  }

  if ((v72 & 0x80) != 0)
  {
    operator delete(__p);
  }

  return v32;
}

- (int)formNetworkWithCreds:(const char *)a3 credentialsRecord_t:(id)a4 output:(dict *)a5
{
  v6 = a4;
  v109[0] = 0;
  v109[1] = 0;
  v110 = 0;
  v126 = 0;
  memset(v125, 0, sizeof(v125));
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __p = *buf;
  *v103 = *&buf[16];
  *(&v103[1] + 1) = *&buf[19];
  deviceNode = self->_deviceNode;
  if (deviceNode == 1)
  {
    defaultChildNode = "router";
  }

  else if (deviceNode == 9)
  {
    defaultChildNode = self->_defaultChildNode;
  }

  else
  {
    defaultChildNode = "sleepy-router";
  }

  v85 = defaultChildNode;
  v9 = buf[23];
  v10 = [v6 credentials];
  v84 = [v10 channel];

  v11 = [v6 credentials];
  v12 = [v11 PANID];
  v13 = v12;
  v83 = *[v12 bytes];

  v14 = [v6 network];
  v15 = [v14 extendedPANID];
  v16 = v15;
  v17 = *[v15 bytes];

  v18 = [v6 network];
  v19 = [v18 networkName];
  v20 = v19;
  v87 = [v19 UTF8String];

  v21 = [v6 credentials];
  v22 = [v21 masterKey];
  v23 = v22;
  v24 = [v22 bytes];

  v124 = *v24;
  v25 = [v6 credentials];
  v26 = [v25 PSKc];
  LODWORD(v15) = v26 == 0;

  v86 = bswap64(v17);
  if (v15)
  {
    v41 = [v6 credentials];
    v42 = [v41 passPhrase];
    v43 = v42 == 0;

    if (v43)
    {
      v49 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:];
      }

      goto LABEL_71;
    }

    *buf = v87;
    *&buf[8] = 0;
    *&buf[16] = 0;
    *&buf[24] = v86;
    v44 = [v6 credentials];
    v45 = [v44 passPhrase];
    v46 = v45;
    *&buf[16] = [v45 UTF8String];

    [(ThreadNetworkManagerInstance *)self getPskc:buf pskc_str:v109];
    v47 = *v123;
    if (v9 < 0)
    {
      operator delete(__p);
    }

    __p = *&v123[8];
    *v103 = *&v123[24];
    *(&v103[1] + 1) = *&v123[27];
    LOBYTE(v9) = v123[31];
    if (v47)
    {
      v48 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:];
      }

      goto LABEL_71;
    }

    v54 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = v109;
      if (v110 < 0)
      {
        v55 = v109[0];
      }

      *v123 = 136315394;
      *&v123[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
      *&v123[12] = 2080;
      *&v123[14] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s : generated pskc string : %s", v123, 0x16u);
    }

    if (v110 >= 0)
    {
      v33 = v109;
    }

    else
    {
      v33 = v109[0];
    }
  }

  else
  {
    v27 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v6 credentials];
      v29 = [v28 PSKc];
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s: Creds PSKC : %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = 0;
    v30 = [v6 credentials];
    v31 = [v30 PSKc];
    v32 = v31;
    *buf = *[v31 bytes];

    encode_data_into_string(buf, 16, v125, 0x24uLL, 0);
    v33 = v125;
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
    *&buf[12] = 2080;
    *&buf[14] = v33;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : pskc string : %s", buf, 0x16u);
  }

  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v101, "Network:PSKc");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:v101 property_val:v33];
    v36 = *buf;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v36 = 0;
  memset(buf, 0, sizeof(buf));
  if ((v9 & 0x80) != 0)
  {
LABEL_14:
    operator delete(__p);
  }

LABEL_15:
  v37 = *&buf[16];
  __p = *&buf[8];
  *v103 = *&buf[24];
  *(&v103[1] + 1) = *&buf[27];
  v9 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  v38 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    CtrXPC::Result::toString(v36, v123);
    if ((v123[23] & 0x80u) == 0)
    {
      v39 = v123;
    }

    else
    {
      v39 = *v123;
    }

    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&v100, __p, v37);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v100;
      }

      else
      {
        v40 = v100.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v100.__r_.__value_.__r.__words[0] = __p;
      v100.__r_.__value_.__l.__size_ = v37;
      LODWORD(v100.__r_.__value_.__r.__words[2]) = *v103;
      *(&v100.__r_.__value_.__r.__words[2] + 3) = *(&v103[1] + 1);
      *(&v100.__r_.__value_.__s + 23) = v9;
      v40 = &v100;
    }

    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
    *&buf[12] = 2080;
    *&buf[14] = "Network:PSKc";
    *&buf[22] = 2080;
    *&buf[24] = v39;
    *v112 = 2080;
    *&v112[2] = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s : Set Result for %s = %s, Error Info: %s", buf, 0x2Au);
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (v123[23] < 0)
    {
      operator delete(*v123);
    }
  }

  if (v36)
  {
    v50 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v67 = v123;
      CtrXPC::Result::toString(v36, v123);
      if ((v123[23] & 0x80u) != 0)
      {
        v67 = *v123;
      }

      if (v9 < 0)
      {
        std::string::__init_copy_ctor_external(&v100, __p, v37);
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v100;
        }

        else
        {
          v68 = v100.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v100.__r_.__value_.__r.__words[0] = __p;
        v100.__r_.__value_.__l.__size_ = v37;
        LODWORD(v100.__r_.__value_.__r.__words[2]) = *v103;
        *(&v100.__r_.__value_.__r.__words[2] + 3) = *(&v103[1] + 1);
        *(&v100.__r_.__value_.__s + 23) = v9;
        v68 = &v100;
      }

      *buf = 136315906;
      *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
      *&buf[12] = 2080;
      *&buf[14] = "Network:PSKc";
      *&buf[22] = 2080;
      *&buf[24] = v67;
      *v112 = 2080;
      *&v112[2] = v68;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s : Set PSKC Result for %s = %s, Error Info: %s", buf, 0x2Au);
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (v123[23] < 0)
      {
        operator delete(*v123);
      }
    }

LABEL_71:
    v60 = 1;
LABEL_72:
    v61 = 1;
    goto LABEL_73;
  }

  v51 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = v123;
    CtrXPC::Result::toString(0, v123);
    if ((v123[23] & 0x80u) != 0)
    {
      v52 = *v123;
    }

    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&v100, __p, v37);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v100;
      }

      else
      {
        v53 = v100.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v100.__r_.__value_.__r.__words[0] = __p;
      v100.__r_.__value_.__l.__size_ = v37;
      LODWORD(v100.__r_.__value_.__r.__words[2]) = *v103;
      *(&v100.__r_.__value_.__r.__words[2] + 3) = *(&v103[1] + 1);
      *(&v100.__r_.__value_.__s + 23) = v9;
      v53 = &v100;
    }

    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
    *&buf[12] = 2080;
    *&buf[14] = "Network:PSKc";
    *&buf[22] = 2080;
    *&buf[24] = v52;
    *v112 = 2080;
    *&v112[2] = v53;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s : Set PSKC Result for %s = %s, Error Info: %s", buf, 0x2Au);
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (v123[23] < 0)
    {
      operator delete(*v123);
    }
  }

  v56 = self->_CtrInternalClientPtr;
  *buf = v87;
  buf[8] = 1;
  *&buf[10] = v84;
  buf[12] = 0;
  *&buf[13] = v107;
  buf[15] = v108;
  *&buf[16] = 0;
  buf[20] = 1;
  *&buf[22] = bswap32(v83) >> 16;
  buf[24] = 1;
  *&buf[25] = *v106;
  *&buf[28] = *&v106[3];
  *v112 = v86;
  v112[8] = 1;
  *&v112[9] = v124;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  *v116 = *v105;
  *&v116[3] = *&v105[3];
  v117 = v85;
  v118 = 0;
  v119 = 0;
  v120 = 1;
  v121 = *&v103[5];
  v122 = v104;
  if (v56)
  {
    [(CtrInternalClient *)v56 form:buf];
    v57 = *v123;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v57 = 0;
  memset(v123, 0, sizeof(v123));
  if (v9 < 0)
  {
LABEL_67:
    operator delete(__p);
  }

LABEL_68:
  v58 = *&v123[16];
  __p = *&v123[8];
  *v103 = *&v123[24];
  *(&v103[1] + 1) = *&v123[27];
  v9 = v123[31];
  if (v57)
  {
    v59 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v78 = &v100;
      CtrXPC::Result::toString(v57, &v100);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v78 = v100.__r_.__value_.__r.__words[0];
      }

      if (v9 < 0)
      {
        std::string::__init_copy_ctor_external(&v99, __p, v58);
        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v99;
        }

        else
        {
          v79 = v99.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v99.__r_.__value_.__r.__words[0] = __p;
        v99.__r_.__value_.__l.__size_ = v58;
        LODWORD(v99.__r_.__value_.__r.__words[2]) = *v103;
        *(&v99.__r_.__value_.__r.__words[2] + 3) = *(&v103[1] + 1);
        *(&v99.__r_.__value_.__s + 23) = v9;
        v79 = &v99;
      }

      *v123 = 136315650;
      *&v123[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
      *&v123[12] = 2080;
      *&v123[14] = v78;
      *&v123[22] = 2080;
      *&v123[24] = v79;
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s : TNM got the Failed Result for Form as = %s, Error Info: %s", v123, 0x20u);
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_71;
  }

  v64 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = &v100;
    CtrXPC::Result::toString(0, &v100);
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v100.__r_.__value_.__r.__words[0];
    }

    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&v99, __p, v58);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v99;
      }

      else
      {
        v66 = v99.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v99.__r_.__value_.__r.__words[0] = __p;
      v99.__r_.__value_.__l.__size_ = v58;
      LODWORD(v99.__r_.__value_.__r.__words[2]) = *v103;
      *(&v99.__r_.__value_.__r.__words[2] + 3) = *(&v103[1] + 1);
      *(&v99.__r_.__value_.__s + 23) = v9;
      v66 = &v99;
    }

    *v123 = 136315650;
    *&v123[4] = "[ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:]";
    *&v123[12] = 2080;
    *&v123[14] = v65;
    *&v123[22] = 2080;
    *&v123[24] = v66;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s : TNM got the Success Result for Form as = %s, Error Info: %s", v123, 0x20u);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }
  }

  v69 = xpc_string_create(stringa);
  v97 = v69;
  if (!v69)
  {
    v97 = xpc_null_create();
  }

  *v123 = a5;
  *&v123[8] = "outputUniqueNetworkId";
  xpc::dict::object_proxy::operator=(v123, &v97, &v98);
  v70 = v98;
  v98 = 0;

  v71 = v97;
  v97 = 0;

  v72 = [v6 credentials];
  v73 = [v72 passPhrase];
  v74 = v73;
  -[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:](self, "saveThreadConfiguration:passPhrase:", a5, [v73 UTF8String]);
  v75 = *v123;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  __p = *&v123[8];
  *v103 = *&v123[24];
  *(&v103[1] + 1) = *&v123[27];
  LOBYTE(v9) = v123[31];
  v123[31] = 0;
  v123[8] = 0;

  if (v75)
  {
    v76 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance formNetworkWithCreds:credentialsRecord_t:output:];
    }

    [self->_CtrInternalClientPtr leave];
    if (v96 < 0)
    {
      operator delete(v95);
    }

    v60 = v75 != 13;
    goto LABEL_72;
  }

  [(ThreadNetworkManagerInstance *)self saveLastKnownJoinedNetwork:stringa datasetRecord:v6];
  v77 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "formNetworkWithCreds: Retrieve Third Party Info", v123, 2u);
  }

  [(ThreadNetworkManagerInstance *)self retrieveAndPostThirdPartyInfo];
  v61 = 0;
  v60 = 1;
LABEL_73:
  if ((v61 & (v60 | isNetworkConnected())) != 1 || !isSystemUpTimeIsGreaterThan(0x12CuLL))
  {
    goto LABEL_81;
  }

  v62 = RcpHostContext::sRcpHostContext;
  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "Error");
  std::string::basic_string[abi:ne200100]<0>(v91, "Form Failed");
  std::string::basic_string[abi:ne200100]<0>(v89, "Failed to form a specific network in RCP");
  RcpHostContext::captureABC(v62, v93, v91, v89, 0, 1);
  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  if ((v94 & 0x80000000) == 0)
  {
LABEL_81:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  operator delete(v93[0]);
  if ((v9 & 0x80) != 0)
  {
LABEL_82:
    operator delete(__p);
  }

LABEL_83:
  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109[0]);
  }

  return v61;
}

- (int)attachWithAllCreds:(const char *)a3 credentialsRecord_t:(id)a4 output:(dict *)a5
{
  v6 = a4;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __p = *buf;
  v54[0] = *v57;
  *(v54 + 3) = *&v57[3];
  v7 = v58;
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "attachWithAllCreds Cmd received in state %d", buf, 8u);
  }

  v10 = [v6 credentials];
  v11 = [v10 channel];

  v12 = [v6 credentials];
  v13 = [v12 PANID];
  v14 = v13;
  v15 = *[v13 bytes];

  v16 = [v6 network];
  v17 = [v16 extendedPANID];
  v18 = v17;
  v19 = *[v17 bytes];

  v20 = [v6 network];
  v21 = [v20 networkName];
  v22 = v21;
  v23 = [v21 UTF8String];

  v24 = [v6 credentials];
  v25 = [v24 masterKey];
  v26 = v25;
  v27 = [v25 bytes];

  v63 = *v27;
  CAMetricsHandlers_joinattempt_start();
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  *buf = v23;
  v56 = "router";
  *v57 = v11;
  *&v57[2] = bswap32(v15) >> 16;
  v59 = bswap64(v19);
  v60 = v63;
  v61 = 16843009;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr join:buf];
    v29 = *v62;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v29 = 0;
  memset(v62, 0, sizeof(v62));
  if (v7 < 0)
  {
LABEL_5:
    operator delete(__p);
  }

LABEL_6:
  v30 = *&v62[16];
  __pa = *&v62[8];
  v54[0] = *&v62[24];
  *(v54 + 3) = *&v62[27];
  v31 = v62[31];
  if (v29)
  {
    v32 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v41 = v52;
      CtrXPC::Result::toString(v29, v52);
      if (v53 < 0)
      {
        v41 = v52[0];
      }

      if (v31 < 0)
      {
        std::string::__init_copy_ctor_external(&v51, __pa, v30);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v51;
        }

        else
        {
          v42 = v51.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v51.__r_.__value_.__r.__words[0] = __pa;
        v51.__r_.__value_.__l.__size_ = v30;
        LODWORD(v51.__r_.__value_.__r.__words[2]) = v54[0];
        *(&v51.__r_.__value_.__r.__words[2] + 3) = *(v54 + 3);
        *(&v51.__r_.__value_.__s + 23) = v31;
        v42 = &v51;
      }

      *v62 = 136315650;
      *&v62[4] = "[ThreadNetworkManagerInstance attachWithAllCreds:credentialsRecord_t:output:]";
      *&v62[12] = 2080;
      *&v62[14] = v41;
      *&v62[22] = 2080;
      *&v62[24] = v42;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s : TNM got the Failed Result for Join as = %s, Error Info: %s", v62, 0x20u);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }
    }

    CAMetricsHandlers_joinattempt_status(0, 0);
    [self->_CtrInternalClientPtr leave];
    if (v48 < 0)
    {
      operator delete(v47);
    }

    sleep(2u);
    v33 = 1;
  }

  else
  {
    v34 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = v52;
      CtrXPC::Result::toString(0, v52);
      if (v53 < 0)
      {
        v35 = v52[0];
      }

      if (v31 < 0)
      {
        std::string::__init_copy_ctor_external(&v51, __pa, v30);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v51;
        }

        else
        {
          v36 = v51.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v51.__r_.__value_.__r.__words[0] = __pa;
        v51.__r_.__value_.__l.__size_ = v30;
        LODWORD(v51.__r_.__value_.__r.__words[2]) = v54[0];
        *(&v51.__r_.__value_.__r.__words[2] + 3) = *(v54 + 3);
        *(&v51.__r_.__value_.__s + 23) = v31;
        v36 = &v51;
      }

      *v62 = 136315650;
      *&v62[4] = "[ThreadNetworkManagerInstance attachWithAllCreds:credentialsRecord_t:output:]";
      *&v62[12] = 2080;
      *&v62[14] = v35;
      *&v62[22] = 2080;
      *&v62[24] = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : TNM got the Success Result for Join as = %s, Error Info: %s", v62, 0x20u);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }
    }

    v37 = xpc_string_create(a3);
    v49 = v37;
    if (!v37)
    {
      v49 = xpc_null_create();
    }

    *v62 = a5;
    *&v62[8] = "outputUniqueNetworkId";
    xpc::dict::object_proxy::operator=(v62, &v49, &v50);
    v38 = v50;
    v50 = 0;

    v39 = v49;
    v49 = 0;

    CAMetricsHandlers_joinattempt_status(0, 1);
    v33 = 0;
  }

  if (v31 < 0)
  {
    operator delete(__pa);
  }

  return v33;
}

- (BOOL)isNetworkSame:(Ctr_attachToNetwork *)a3 nwname:(void *)a4 xpan:(void *)a5
{
  v8 = [NSMutableString stringWithCapacity:0];
  v9 = [NSString stringWithFormat:@"%08llX", a3->var6];
  [v8 appendString:v9];

  std::string::basic_string[abi:ne200100]<0>(v33, a3->var0);
  v10 = v8;
  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (*(a4 + 23) >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    var0 = a3->var0;
    if (*(a5 + 23) >= 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = *a5;
    }

    v15 = __p;
    if ((v32 & 0x80u) != 0)
    {
      v15 = __p[0];
    }

    *buf = 136315906;
    v36 = v12;
    v37 = 2080;
    v38 = var0;
    v39 = 2080;
    v40 = v14;
    v41 = 2080;
    v42 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "  Network Name : %s, Network to attach : %s, XPAN : %s, XPAN to attach : %s", buf, 0x2Au);
  }

  if ((v34 & 0x80u) == 0)
  {
    v16 = v34;
  }

  else
  {
    v16 = v33[1];
  }

  v17 = *(a4 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a4 + 1);
  }

  if (v16 != v17)
  {
    goto LABEL_37;
  }

  v19 = (v34 & 0x80u) == 0 ? v33 : v33[0];
  v20 = *a4;
  v21 = v18 >= 0 ? a4 : *a4;
  if (memcmp(v19, v21, v16))
  {
    goto LABEL_37;
  }

  if ((v32 & 0x80u) == 0)
  {
    v22 = v32;
  }

  else
  {
    v22 = __p[1];
  }

  v23 = *(a5 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a5 + 1);
  }

  if (v22 == v23 && ((v32 & 0x80u) == 0 ? (v25 = __p) : (v25 = __p[0]), (v26 = *a5, v24 >= 0) ? (v27 = a5) : (v27 = *a5), !memcmp(v25, v27, v22)))
  {
    v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, " Networks are same ", buf, 2u);
    }

    v28 = 1;
  }

  else
  {
LABEL_37:
    v28 = 0;
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  return v28;
}

- (BOOL)areTwoNetworksSame:(id)a3 nwname:(id)a4 creds_xpan:(id)a5 xpan:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 isEqualToString:v10] && objc_msgSend(v11, "isEqualToData:", v12))
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ThreadNetworkManagerInstance areTwoNetworksSame:nwname:creds_xpan:xpan:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, " %s : Networks are same ", &v16, 0xCu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)clearThreadCredentials
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ThreadNetworkManagerInstance clearThreadCredentials]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Entered in %s", buf, 0xCu);
  }

  [self->_CtrInternalClientPtr leave];
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return clearThreadConfiguration();
}

- (BOOL)isCurrentNetworkSameAsOneToStart:(id)a3
{
  v4 = a3;
  __p = 0;
  v59 = 0;
  v60 = 0;
  v51 = 0;
  v50 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  v5 = *buf;
  v6 = buf[23];
  [(ThreadNetworkManagerInstance *)self getNCPNetworkInfo:v57];
  v7 = *buf;
  if (v6 < 0)
  {
    operator delete(v5);
  }

  v8 = *&buf[8];
  v9 = *&buf[16];
  *v49 = *&buf[24];
  *&v49[3] = *&buf[27];
  v10 = buf[31];
  if (v7)
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v10 < 0)
      {
        std::string::__init_copy_ctor_external(buf, v8, v9);
        v12 = buf[23] >= 0 ? buf : *buf;
      }

      else
      {
        *buf = v8;
        *&buf[8] = v9;
        *&buf[16] = *v49;
        *&buf[19] = *&v49[3];
        buf[23] = v10;
        v12 = buf;
      }

      *v53 = 136315394;
      v54 = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
      v55 = 2080;
      v56 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Failed to get the NCP Network Info : %s", v53, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_30;
  }

  v51 = bswap32(v57[1]) >> 16;
  v50 = bswap64(v62);
  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v4 network];
    v15 = [v14 networkName];
    v16 = [NSString stringWithUTF8String:v61];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
    *&buf[12] = 1024;
    *&buf[14] = 5174;
    *&buf[18] = 2112;
    *&buf[20] = v15;
    *&buf[28] = 2112;
    *&buf[30] = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %d : cnwname : %@, cfgnwname : %@", buf, 0x26u);
  }

  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v4 network];
    v19 = [v18 extendedPANID];
    v20 = [NSData dataWithBytes:&v50 length:8];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
    *&buf[12] = 1024;
    *&buf[14] = 5175;
    *&buf[18] = 2112;
    *&buf[20] = v19;
    *&buf[28] = 2112;
    *&buf[30] = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %d : cxpan : %@, cfgxpan : %@", buf, 0x26u);
  }

  v21 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v4 credentials];
    v23 = [v22 masterKey];
    v24 = [NSData dataWithBytes:v63 length:16];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
    *&buf[12] = 1024;
    *&buf[14] = 5176;
    *&buf[18] = 2112;
    *&buf[20] = v23;
    *&buf[28] = 2112;
    *&buf[30] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s : %d : ckey : %@, cfgkey : %@", buf, 0x26u);
  }

  v25 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v4 credentials];
    v27 = [v26 PANID];
    v28 = [NSData dataWithBytes:&v51 length:2];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
    *&buf[12] = 1024;
    *&buf[14] = 5177;
    *&buf[18] = 2112;
    *&buf[20] = v27;
    *&buf[28] = 2112;
    *&buf[30] = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %d : cpan : %@, cfgpan : %@", buf, 0x26u);
  }

  v29 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v4 credentials];
    v31 = [v30 channel];
    *buf = 136315906;
    *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
    *&buf[12] = 1024;
    *&buf[14] = 5178;
    *&buf[18] = 1024;
    *&buf[20] = v31;
    *&buf[24] = 1024;
    *&buf[26] = v57[0];
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s : %d : cchannel : %d, cfgchannel : %d", buf, 0x1Eu);
  }

  v11 = [v4 network];
  v32 = [v11 networkName];
  v33 = [NSString stringWithUTF8String:v61];
  if (([v32 isEqualToString:v33] & 1) == 0)
  {

LABEL_30:
    v40 = 0;
    goto LABEL_31;
  }

  v48 = [v4 network];
  v34 = [v48 extendedPANID];
  v35 = [NSData dataWithBytes:&v50 length:8];
  if (![v34 isEqualToData:v35])
  {

    goto LABEL_30;
  }

  v46 = [v4 credentials];
  v47 = [v46 masterKey];
  v45 = [NSData dataWithBytes:v63 length:16];
  if (![v47 isEqualToData:?])
  {

    goto LABEL_30;
  }

  v42 = [v4 credentials];
  v43 = v34;
  v44 = [v42 PANID];
  v36 = [NSData dataWithBytes:&v51 length:2];
  if ([v44 isEqualToData:v36])
  {
    v37 = [v4 credentials];
    v38 = [v37 channel];
    v39 = v57[0] == v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    v40 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance isCurrentNetworkSameAsOneToStart:]";
      *&buf[12] = 1024;
      *&buf[14] = 5186;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %d : Returning true..", buf, 0x12u);
    }

LABEL_31:

    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v40 = 0;
  if (v10 < 0)
  {
LABEL_32:
    operator delete(v8);
  }

LABEL_33:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p);
  }

  return v40;
}

- (BOOL)updatePreferredNetworkForDatasetChange
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__0;
  v42[4] = __Block_byref_object_dispose__0;
  v43 = 0;
  if (self->_lastKnownJoinedNetworkRecord)
  {
    if (self->_keyChainStore)
    {
      v4 = [(ThreadNetworkManagerInstance *)self getPreferredNetworkWithNoScan];
      if (!v4)
      {
        v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
        }

        goto LABEL_17;
      }

      lastKnownJoinedNetworkRecord = self->_lastKnownJoinedNetworkRecord;
      if (lastKnownJoinedNetworkRecord)
      {
        v6 = [(THThreadNetworkCredentialsActiveDataSetRecord *)lastKnownJoinedNetworkRecord credentialsDataSet];
        v7 = [v6 dataSetArray];
        if ([v7 length])
        {
          v37 = [v4 credentialsDataSet];
          v8 = [v37 dataSetArray];
          if ([v8 length])
          {
            v9 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self->_lastKnownJoinedNetworkRecord credentialsDataSet];
            v2 = [v9 dataSetArray];
            v10 = [v4 credentialsDataSet];
            v11 = [v10 dataSetArray];
            v12 = [v2 isEqualToData:v11];

            if ((v12 & 1) == 0)
            {
              v13 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v51 = "[ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange]";
                v52 = 1024;
                v53 = 5220;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, " %s:%d _lastKnownJoinedNetwork is not matching to the preferred network!", buf, 0x12u);
              }

LABEL_17:
              LOBYTE(v2) = 0;
LABEL_56:

              goto LABEL_57;
            }

            goto LABEL_20;
          }
        }
      }

LABEL_20:
      v14 = [(ThreadNetworkManagerInstance *)self getCurrentCredentialsDataSet];
      v13 = v14;
      if (v14)
      {
        v15 = [v14 dataSetArray];
        v16 = [v15 length] == 0;

        if (!v16)
        {
          v17 = [v13 dataSetArray];
          if ([v17 length])
          {
            v18 = [v4 credentialsDataSet];
            v19 = [v18 dataSetArray];
            if ([v19 length])
            {
              v20 = [v13 dataSetArray];
              v2 = [v4 credentialsDataSet];
              v21 = [v2 dataSetArray];
              v22 = [v20 isEqualToData:v21];

              if (v22)
              {
                v23 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
                LOBYTE(v2) = 1;
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v51 = "[ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange]";
                  v52 = 1024;
                  v53 = 5239;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, " %s:%d No need to update preferred network !", buf, 0x12u);
                }

                goto LABEL_55;
              }

LABEL_34:
              v23 = [(ThreadNetworkManagerInstance *)self getCurrentBorderAgent];
              if (v23)
              {
                v24 = [(ThreadNetworkManagerInstance *)self getCurrentNetworkNameAndXpanid];
                if (v24)
                {
                  v25 = 1;
                  while (1)
                  {
                    v26 = v25;
                    if (self->_lastKnownNCPState == 8)
                    {
                      v27 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315394;
                        v51 = "[ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange]";
                        v52 = 1024;
                        v53 = 5261;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s:%d: Active DataSet change event - Updating keychain store\n", buf, 0x12u);
                      }

                      v28 = dispatch_semaphore_create(0);
                      keyChainStore = self->_keyChainStore;
                      v38[0] = _NSConcreteStackBlock;
                      v38[1] = 3221225472;
                      v38[2] = __70__ThreadNetworkManagerInstance_updatePreferredNetworkForDatasetChange__block_invoke;
                      v38[3] = &unk_1004C89C0;
                      v41 = v42;
                      v40 = &v44;
                      v38[4] = self;
                      v30 = v28;
                      v39 = v30;
                      [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore updatePreferredNetworkWithNewDataset:v23 network:v24 credentialsDataSet:v13 completion:v38];
                      v31 = dispatch_time(0, 150000000000);
                      if (dispatch_semaphore_wait(v30, v31))
                      {
                        v32 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v51 = "[ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange]";
                          v52 = 1024;
                          v53 = 5283;
                          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s:%d:  Error, semaphore wait timed out ", buf, 0x12u);
                        }

                        v33 = 0;
                        LOBYTE(v2) = 0;
                      }

                      else
                      {
                        v34 = v45[5];
                        v33 = v34 != 0;
                        LOBYTE(v2) = (v34 == 0) | v2;
                      }

                      if (!v33)
                      {
                        goto LABEL_54;
                      }
                    }

                    v25 = 0;
                    if ((v26 & 1) == 0)
                    {
                      LOBYTE(v2) = 0;
                      goto LABEL_54;
                    }
                  }
                }

                v35 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
                }
              }

              else
              {
                v24 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
                }
              }

              LOBYTE(v2) = 0;
LABEL_54:

              goto LABEL_55;
            }
          }

          goto LABEL_34;
        }

        v23 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
        }
      }

      else
      {
        v23 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
        }
      }

      LOBYTE(v2) = 0;
LABEL_55:

      goto LABEL_56;
    }

    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
    }
  }

  else
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange];
    }
  }

  LOBYTE(v2) = 0;
LABEL_57:

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  return v2 & 1;
}

void __70__ThreadNetworkManagerInstance_updatePreferredNetworkForDatasetChange__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  if (v10)
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70__ThreadNetworkManagerInstance_updatePreferredNetworkForDatasetChange__block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v16 = 136315650;
      v17 = "[ThreadNetworkManagerInstance updatePreferredNetworkForDatasetChange]_block_invoke";
      v18 = 1024;
      v19 = 5269;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s:%d: Got the Active DataSet unique Id : %@ on updating the preferred network", &v16, 0x1Cu);
    }

    v14 = *(a1 + 32);
    v15 = v9;
    v11 = *(v14 + 192);
    *(v14 + 192) = v15;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)getCurrentNetworkNameAndXpanid
{
  memset(&v31, 0, sizeof(v31));
  std::string::basic_string[abi:ne200100]<0>(__p, "Commond is successful");
  v3 = __p[0];
  v4 = SHIBYTE(__p[2]);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v29.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v27, "Network:Name");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v27 output:&v29];
    v6 = LODWORD(__p[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(__p, 0, sizeof(__p));
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = __p[1];
  v8 = SHIBYTE(__p[3]);
  HIBYTE(__p[3]) = 0;
  LOBYTE(__p[1]) = 0;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    if (v6)
    {
LABEL_6:
      any_to_string(&v29, __p);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v10 = HIBYTE(__p[2]);
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(&v31, v9, v10);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v31;
      }

      else
      {
        v11 = v31.__r_.__value_.__r.__words[0];
      }

      v32 = v11;
      v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "[ThreadNetworkManagerInstance getCurrentNetworkNameAndXpanid]";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = v32;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : cfg network name %s", __p, 0x16u);
      }

      v26.var0 = 0;
      v13 = self->_CtrInternalClientPtr;
      std::string::basic_string[abi:ne200100]<0>(v24, "Network:XPANID");
      if (v13)
      {
        [(CtrInternalClient *)v13 getProperty:v24 output:&v26];
        v14 = LODWORD(__p[0]) == 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        memset(__p, 0, sizeof(__p));
        v14 = 1;
        if ((v8 & 0x80000000) == 0)
        {
LABEL_22:
          v7 = __p[1];
          LOBYTE(v8) = HIBYTE(__p[3]);
          HIBYTE(__p[3]) = 0;
          LOBYTE(__p[1]) = 0;
          if (v25 < 0)
          {
            operator delete(v24[0]);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else if (v14)
          {
LABEL_24:
            v33 = any_to_uint64(&v26, 0);
            v15 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = "[ThreadNetworkManagerInstance getCurrentNetworkNameAndXpanid]";
              WORD2(__p[1]) = 2048;
              *(&__p[1] + 6) = v33;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : xpaid from NCP : 0x%llX", __p, 0x16u);
            }

            v16 = [NSString stringWithUTF8String:v32];
            v17 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = "[ThreadNetworkManagerInstance getCurrentNetworkNameAndXpanid]";
              WORD2(__p[1]) = 2112;
              *(&__p[1] + 6) = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : Storing to keychain nw_name : %@", __p, 0x16u);
            }

            v23 = bswap64(v33);
            v18 = [NSData dataWithBytes:&v23 length:8];
            v19 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = "[ThreadNetworkManagerInstance getCurrentNetworkNameAndXpanid]";
              WORD2(__p[1]) = 2112;
              *(&__p[1] + 6) = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : Storing to keychain xpaid : %@", __p, 0x16u);
            }

            v20 = [[THThreadNetwork alloc] initWithName:v16 extendedPANID:v18];
LABEL_43:

            if (v26.var0)
            {
              (*(*v26.var0 + 8))(v26.var0);
            }

            goto LABEL_45;
          }

          v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance getCurrentNetworkNameAndXpanid];
          }

          v20 = 0;
          goto LABEL_43;
        }
      }

      operator delete(v7);
      goto LABEL_22;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v21 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Failed to get the Network Name Property", __p, 2u);
  }

  v20 = 0;
LABEL_45:
  if (v29.var0)
  {
    (*(*v29.var0 + 8))(v29.var0);
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v20;
}

- (id)getCurrentNetworkCredentials
{
  v3 = [(ThreadNetworkManagerInstance *)self getCurrentNetworkNameAndXpanid];
  if (!v3)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getCurrentNetworkCredentials];
    }

    v6 = 0;
    goto LABEL_9;
  }

  v12 = 0;
  v4 = [(ThreadNetworkManagerInstance *)self getMeCredentialsForThisNetwork:v3 credentialsRecord_t:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v3 networkName];
      objc_claimAutoreleasedReturnValue();
      [v3 extendedPANID];
      objc_claimAutoreleasedReturnValue();
      [ThreadNetworkManagerInstance getCurrentNetworkCredentials];
    }

LABEL_9:
    v9 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v3 networkName];
      objc_claimAutoreleasedReturnValue();
      [v3 extendedPANID];
      objc_claimAutoreleasedReturnValue();
      [ThreadNetworkManagerInstance getCurrentNetworkCredentials];
    }
  }

  v6 = v6;
  v9 = v6;
LABEL_15:

  return v9;
}

- (id)getCurrentNetworkCredentialsActiveDataSetRecord
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCurrentNetworkCredentialsActiveDataSetRecord];
  }

  v5 = [(ThreadNetworkManagerInstance *)self getCurrentBorderAgent];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_18;
  }

  if (!self->_keyChainStore)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getCurrentNetworkCredentialsActiveDataSetRecord];
    }

    v11 = 0;
    goto LABEL_17;
  }

  v6 = dispatch_semaphore_create(0);
  keyChainStore = self->_keyChainStore;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __79__ThreadNetworkManagerInstance_getCurrentNetworkCredentialsActiveDataSetRecord__block_invoke;
  v18[3] = &unk_1004C8970;
  v20 = &v28;
  v21 = &v22;
  v8 = v6;
  v19 = v8;
  [(THThreadNetworkCredentialsStoreLocalClient *)keyChainStore retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:v5 completion:v18];
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getCurrentNetworkCredentialsActiveDataSetRecord];
    }
  }

  else
  {
    if (!v23[5])
    {
      v11 = v29[5];
      goto LABEL_16;
    }

    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [v23[5] description];
      v14 = v13;
      v15 = [v13 UTF8String];
      if (v15)
      {
        v2 = [v23[5] description];
        v17 = v2;
        v16 = [v2 UTF8String];
      }

      else
      {
        v16 = "(unknown error)";
      }

      *buf = 136315394;
      v35 = "[ThreadNetworkManagerInstance getCurrentNetworkCredentialsActiveDataSetRecord]";
      v36 = 2080;
      v37 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s : Error: failed to retrieve (%s)\n", buf, 0x16u);
      if (v15)
      {
      }
    }
  }

  v11 = 0;
LABEL_16:

LABEL_17:
LABEL_18:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __79__ThreadNetworkManagerInstance_getCurrentNetworkCredentialsActiveDataSetRecord__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)upgradeCredentials
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ThreadNetworkManagerInstance upgradeCredentials]";
    v8 = 1024;
    v9 = 5425;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d: Upgrading Credentials", buf, 0x12u);
  }

  if (_os_feature_enabled_impl())
  {
    [(ThreadNetworkManagerInstance *)self updateKeychainWithThreadActiveDataSet];
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

- (Result)updateKeychainWithThreadActiveDataSet
{
  v2 = v1;
  v13 = xpc_null_create();
  std::string::basic_string[abi:ne200100]<0>(&buf, "Commond is successful");
  retstr->var0 = 0;
  retstr->var1 = buf;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf.var0.var0.var0 = 136315394;
    *(&buf.var0.var1.var0 + 4) = "[ThreadNetworkManagerInstance updateKeychainWithThreadActiveDataSet]";
    WORD2(buf.var0.var1.var1) = 1024;
    *(&buf.var0.var1.var1 + 6) = 5435;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d: Updating Credentials", &buf, 0x12u);
  }

  v12 = 0;
  [v2 saveThreadConfiguration:&v13 passPhrase:0 uuid:&v12];
  v5 = v12;
  v6 = *buf.var0.var0.var0;
  retstr->var0 = *buf.var0.var0.var0;
  if (*(&retstr->var1.var0.var1 + 23) < 0)
  {
    operator delete(retstr->var1.var0.var1.var0);
  }

  *retstr->var1.var0.var0.var0 = *&buf.var0.var1.var1;
  *(&retstr->var1.var0.var1 + 2) = v15;
  if (v6)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance joinerAttach:output:];
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf.var0.var0.var0 = 136315394;
      *(&buf.var0.var1.var0 + 4) = "[ThreadNetworkManagerInstance updateKeychainWithThreadActiveDataSet]";
      WORD2(buf.var0.var1.var1) = 1024;
      *(&buf.var0.var1.var1 + 6) = 5442;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d: Successfully formed new network", &buf, 0x12u);
    }

    v9 = v5;
    [v2 saveLastKnownJoinedNetwork:objc_msgSend(v5 datasetRecord:{"UTF8String"), 0}];
  }

  v10 = v13;
  v13 = 0;

  return result;
}

- (id)getCurrentBorderAgent
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v18.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:ExtendedAddress");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v18];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    v9 = any_to_uint64(&v18, 0);
    v15 = bswap64(v9);
    v10 = [NSData dataWithBytes:&v15 length:8];
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[ThreadNetworkManagerInstance getCurrentBorderAgent]";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : Got Extended MAC Addess as: 0x%llx, %@", buf, 0x20u);
    }

    v12 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v10];
    goto LABEL_15;
  }

  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCurrentBorderAgent];
  }

  v12 = 0;
LABEL_15:
  if (v18.var0)
  {
    (*(*v18.var0 + 8))(v18.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v12;
}

- (id)getCurrentCredentialsDataSet
{
  std::string::basic_string[abi:ne200100]<0>(v20, "Commond is successful");
  v3 = v20[0];
  v4 = SBYTE7(v21);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v22.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, "Thread:ActiveDataset:Bytes");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v18 output:&v22];
    v6 = LODWORD(v20[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *v20 = 0u;
  v21 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = v20[1];
  v8 = SHIBYTE(v21);
  HIBYTE(v21) = 0;
  LOBYTE(v20[1]) = 0;
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_19:
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance getCurrentCredentialsDataSet];
    }

    goto LABEL_24;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_6:
  any_to_data(&v22, v20);
  v9 = v20[0];
  v10 = v20[1];
  any_to_data(&v22, &__p);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = [NSData dataWithBytes:v11 length:v17 - __p];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v12 && [v12 length])
  {
    v13 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v12 userInfo:0];
    goto LABEL_25;
  }

  v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCurrentCredentialsDataSet];
  }

LABEL_24:
  v13 = 0;
LABEL_25:

  if (v22.var0)
  {
    (*(*v22.var0 + 8))(v22.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v13;
}

- (Result)saveThreadConfigurationAOD:(Result *__return_ptr)retstr passPhrase:
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  std::string::basic_string[abi:ne200100]<0>(&v107, "Commond is successful");
  v8 = v107;
  v97[0] = v109;
  *(v97 + 3) = *(&v109 + 3);
  v9 = SHIBYTE(v109);
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__0;
  v95 = __Block_byref_object_dispose__0;
  v96 = 0;
  [v6 getNCPNetworkInfo:&v107];
  v10 = *buf;
  if (v9 < 0)
  {
    operator delete(v8);
  }

  v11 = *&buf[8];
  v12 = *&buf[16];
  v97[0] = *&buf[24];
  *(v97 + 3) = *&buf[27];
  v13 = buf[31];
  if (v10)
  {
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (v13 < 0)
      {
        std::string::__init_copy_ctor_external(buf, v11, v12);
        if (buf[23] >= 0)
        {
          v15 = buf;
        }

        else
        {
          v15 = *buf;
        }
      }

      else
      {
        *buf = v11;
        *&buf[8] = v12;
        *&buf[16] = v97[0];
        *&buf[19] = *(v97 + 3);
        buf[23] = v13;
        v15 = buf;
      }

      [(ThreadNetworkManagerInstance *)buf saveThreadConfigurationAOD:v98 passPhrase:v15];
    }

    v55 = 0;
    retstr->var0 = v10;
LABEL_64:
    retstr->var1.var0.var1.var0 = v11;
    retstr->var1.var0.var1.var1 = v12;
    *(&retstr->var1.var0.var1 + 4) = v97[0];
    *(&retstr->var1.var0.var1 + 19) = *(v97 + 3);
    *(&retstr->var1.var0.var1 + 23) = v13;
    v97[0] = 0;
    *(v97 + 3) = 0;
    v11 = 0;
    goto LABEL_69;
  }

  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&buf[12] = 1024;
    *&buf[14] = WORD1(v107);
    *&buf[18] = 2048;
    *&buf[20] = v112;
    *&buf[28] = 2080;
    *&buf[30] = v111;
    *&buf[38] = 2085;
    v100 = v113;
    v101 = 2085;
    v102 = v115;
    v103 = 1024;
    v104 = v107;
    v105 = 2080;
    v106 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : #mOS Saving TC  - PANID: %d, XPANID: %llu, NWName: %s, key: %{sensitive}s, PSKc: %{sensitive}s, ch = %d passPhrase : %s", buf, 0x4Au);
  }

  if (xpc_get_type(*v5) == &_xpc_type_dictionary)
  {
    v17 = xpc_int64_create(v107);
    v89 = v17;
    if (!v17)
    {
      v89 = xpc_null_create();
    }

    *buf = v5;
    *&buf[8] = "channel";
    xpc::dict::object_proxy::operator=(buf, &v89, &v90);
    v18 = v90;
    v90 = 0;

    v19 = v89;
    v89 = 0;

    v20 = xpc::dict::operator*(v5);
    xpc_dictionary_set_uint64(v20, "panid", WORD1(v107));

    v21 = xpc_string_create(v111);
    v87 = v21;
    if (!v21)
    {
      v87 = xpc_null_create();
    }

    *buf = v5;
    *&buf[8] = "networkName";
    xpc::dict::object_proxy::operator=(buf, &v87, &v88);
    v22 = v88;
    v88 = 0;

    v23 = v87;
    v87 = 0;

    v24 = xpc_uint64_create(v112);
    v85 = v24;
    if (!v24)
    {
      v85 = xpc_null_create();
    }

    *buf = v5;
    *&buf[8] = "xpanid";
    xpc::dict::object_proxy::operator=(buf, &v85, &v86);
    v25 = v86;
    v86 = 0;

    v26 = v85;
    v85 = 0;

    v27 = xpc::dict::operator*(v5);
    xpc_dictionary_set_data(v27, "masterKey", v113, 0x10uLL);

    v28 = xpc_string_create(v115);
    v83 = v28;
    if (!v28)
    {
      v83 = xpc_null_create();
    }

    *buf = v5;
    *&buf[8] = "PSKc";
    xpc::dict::object_proxy::operator=(buf, &v83, &v84);
    v29 = v84;
    v84 = 0;

    v30 = v83;
    v83 = 0;

    v31 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      xpc::dict::to_debug_string(v5, buf);
      v32 = buf[23] >= 0 ? buf : *buf;
      *v98 = 136315394;
      *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
      *&v98[12] = 2080;
      *&v98[14] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s : output: %s", v98, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  v33 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&buf[12] = 1024;
    *&buf[14] = WORD1(v107);
    *&buf[18] = 2048;
    *&buf[20] = v112;
    *&buf[28] = 2080;
    *&buf[30] = v111;
    *&buf[38] = 2085;
    v100 = v113;
    v101 = 2085;
    v102 = v115;
    v103 = 1024;
    v104 = v107;
    v105 = 2080;
    v106 = v4;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s : #mOS  Saving TC in commissionOrFormNetwork - PANID: %d, XPANID: %llu, NWName: %s, key: %{sensitive}s, PSKc: %{sensitive}s, ch = %d passPhrase : %s", buf, 0x4Au);
  }

  if (!*(v6 + 88))
  {
    v54 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:];
    }

    v55 = 0;
    retstr->var0 = 0;
    goto LABEL_64;
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : Storing to keychain now .... %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__0;
  *&buf[32] = __Block_byref_object_dispose__0;
  v100 = 0;
  v35 = [NSString stringWithUTF8String:v111];
  v36 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315394;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 2112;
    *&v98[14] = v35;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s : Storing to keychain nw_name : %@", v98, 0x16u);
  }

  v82 = bswap64(v112);
  v74 = [NSData dataWithBytes:&v82 length:8];
  v37 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315394;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 2112;
    *&v98[14] = v74;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s : Storing to keychain xpaid : %@", v98, 0x16u);
  }

  v69 = [[THThreadNetwork alloc] initWithName:v35 extendedPANID:v74];
  v73 = [NSData dataWithBytes:v113 length:16];
  v38 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315395;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 2117;
    *&v98[14] = v73;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s : Storing to keychain master key %{sensitive}@", v98, 0x16u);
  }

  v72 = [NSData dataWithBytes:&v114 length:16];
  v70 = v35;
  v39 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315395;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 2117;
    *&v98[14] = v72;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s : Storing to keychain pskc %{sensitive}@", v98, 0x16u);
  }

  v40 = v107;
  v41 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315394;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 1024;
    *&v98[14] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s : Storing to keychain channel %d", v98, 0x12u);
  }

  v42 = v70;
  v81 = bswap32(WORD1(v107)) >> 16;
  v71 = [NSData dataWithBytes:&v81 length:2];
  v43 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *v98 = 136315394;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 2112;
    *&v98[14] = v71;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s : Storing to keychain panid %@ ", v98, 0x16u);
  }

  v44 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = *(v6 + 10);
    *v98 = 136315394;
    *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
    *&v98[12] = 1024;
    *&v98[14] = v45;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s : Storing to keychain wait for sync : %d", v98, 0x12u);
  }

  v68 = dispatch_semaphore_create(0);
  v67 = [v6 getCurrentBorderAgent];
  if (v67)
  {
    v46 = [v6 getCurrentCredentialsDataSet];
    v66 = v46;
    if (!v46)
    {
      retstr->var0 = 1;
      retstr->var1.var0.var1.var1 = 0;
      *(&retstr->var1.var0.var1 + 2) = 0;
      retstr->var1.var0.var1.var0 = 0;
      goto LABEL_67;
    }

    v47 = *(v6 + 88);
    v48 = *(v6 + 10);
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = __70__ThreadNetworkManagerInstance_saveThreadConfigurationAOD_passPhrase___block_invoke;
    v77[3] = &unk_1004C89E8;
    v79 = buf;
    v80 = &v91;
    v49 = v68;
    v78 = v49;
    [v47 storeThreadNetworkCredentialActiveDataSet:v67 network:v69 credentialsDataSet:v46 waitForSync:v48 completion:v77];
    v42 = v70;
    v50 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *v98 = 136315138;
      *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s :#mOS: Waiting for the store credentials keychain completion to finish...  ", v98, 0xCu);
    }

    v51 = dispatch_time(0, 150000000000);
    if (dispatch_semaphore_wait(v49, v51))
    {
      v52 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:];
      }

      if (v13 < 0)
      {
        operator delete(v11);
      }

      LOBYTE(v13) = 0;
      v12 = 0;
      v11 = 0;
      *(v97 + 3) = 0;
      v97[0] = 0;
    }

    else
    {
      v57 = v92[5];
      if (!v57)
      {
        v58 = [*(*&buf[8] + 40) UUIDString];
        if (xpc::dict::operator BOOL(v5))
        {
          v59 = v58;
          v60 = xpc_string_create([v58 UTF8String]);
          v75 = v60;
          if (!v60)
          {
            v75 = xpc_null_create();
          }

          *v98 = v5;
          *&v98[8] = "outputUniqueNetworkId";
          xpc::dict::object_proxy::operator=(v98, &v75, &v76);
          v61 = v76;
          v76 = 0;

          v62 = v75;
          v75 = 0;
        }

        v63 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = v58;
          v65 = [v58 UTF8String];
          *v98 = 136315394;
          *&v98[4] = "[ThreadNetworkManagerInstance saveThreadConfigurationAOD:passPhrase:]";
          *&v98[12] = 2080;
          *&v98[14] = v65;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s : #mOS: uniqueNetworkId: %s", v98, 0x16u);
        }

        v53 = 0;
        goto LABEL_55;
      }

      if (v13 < 0)
      {
        operator delete(v11);
        v57 = v92[5];
      }

      *(v97 + 3) = 0;
      v97[0] = 0;
      if ([v57 code] == 6)
      {
        LOBYTE(v13) = 0;
        v12 = 0;
        v11 = 0;
        *(v97 + 3) = 0;
        v97[0] = 0;
        v53 = 13;
        goto LABEL_55;
      }

      LOBYTE(v13) = 0;
      v12 = 0;
      v11 = 0;
    }

    v53 = 1;
LABEL_55:
    retstr->var0 = v53;
    retstr->var1.var0.var1.var0 = v11;
    retstr->var1.var0.var1.var1 = v12;
    *(&retstr->var1.var0.var1 + 4) = v97[0];
    *(&retstr->var1.var0.var1 + 19) = *(v97 + 3);
    *(&retstr->var1.var0.var1 + 23) = v13;
    v97[0] = 0;
    *(v97 + 3) = 0;

    v13 = 0;
    v11 = 0;
LABEL_67:

    goto LABEL_68;
  }

  retstr->var0 = 1;
  retstr->var1.var0.var1.var1 = 0;
  *(&retstr->var1.var0.var1 + 2) = 0;
  retstr->var1.var0.var1.var0 = 0;
LABEL_68:

  _Block_object_dispose(buf, 8);
  v55 = v13 < 0;
LABEL_69:
  _Block_object_dispose(&v91, 8);

  if ((SHIBYTE(v110) & 0x80000000) == 0)
  {
    if (!v55)
    {
      return result;
    }

    goto LABEL_71;
  }

  operator delete(v108);
  if (v55)
  {
LABEL_71:
    operator delete(v11);
  }

  return result;
}

void __70__ThreadNetworkManagerInstance_saveThreadConfigurationAOD_passPhrase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__ThreadNetworkManagerInstance_saveThreadConfigurationAOD_passPhrase___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#mOS: Got the Active DataSet unique Id : %@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (Result)saveThreadConfiguration:(Result *__return_ptr)retstr passPhrase:uuid:
{
  v80 = v4;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  std::string::basic_string[abi:ne200100]<0>(&v120, "Commond is successful");
  v9 = v120;
  v110[0] = v122;
  *(v110 + 3) = *(&v122 + 3);
  v10 = SHIBYTE(v122);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__0;
  v108 = __Block_byref_object_dispose__0;
  v109 = 0;
  [v7 getNCPNetworkInfo:&v120];
  v11 = *buf;
  if (v10 < 0)
  {
    operator delete(v9);
  }

  v12 = *&buf[8];
  v13 = *&buf[16];
  v110[0] = *&buf[24];
  *(v110 + 3) = *&buf[27];
  v81 = buf[31];
  if (v11)
  {
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (v81 < 0)
      {
        std::string::__init_copy_ctor_external(buf, v12, v13);
        if (buf[23] >= 0)
        {
          v15 = buf;
        }

        else
        {
          v15 = *buf;
        }
      }

      else
      {
        *buf = v12;
        *&buf[8] = v13;
        *&buf[16] = v110[0];
        *&buf[19] = *(v110 + 3);
        buf[23] = v81;
        v15 = buf;
      }

      [(ThreadNetworkManagerInstance *)buf saveThreadConfigurationAOD:v111 passPhrase:v15];
    }

    v37 = 0;
    retstr->var0 = v11;
    goto LABEL_45;
  }

  v16 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&buf[12] = 1024;
    *&buf[14] = WORD1(v120);
    *&buf[18] = 2048;
    *&buf[20] = v125;
    *&buf[28] = 2080;
    *&buf[30] = v124;
    *&buf[38] = 2085;
    v113 = v126;
    v114 = 2085;
    v115 = v128;
    v116 = 1024;
    v117 = v120;
    v118 = 2080;
    v119 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : #mOS Saving TC  - PANID: %d, XPANID: %llu, NWName: %s, key: %{sensitive}s, PSKc: %{sensitive}s, ch = %d passPhrase : %s", buf, 0x4Au);
  }

  if (xpc_get_type(*v6) == &_xpc_type_dictionary)
  {
    v17 = xpc_int64_create(v120);
    v102 = v17;
    if (!v17)
    {
      v102 = xpc_null_create();
    }

    *buf = v6;
    *&buf[8] = "channel";
    xpc::dict::object_proxy::operator=(buf, &v102, &v103);
    v18 = v103;
    v103 = 0;

    v19 = v102;
    v102 = 0;

    v20 = xpc::dict::operator*(v6);
    xpc_dictionary_set_uint64(v20, "panid", WORD1(v120));

    v21 = xpc_string_create(v124);
    v100 = v21;
    if (!v21)
    {
      v100 = xpc_null_create();
    }

    *buf = v6;
    *&buf[8] = "networkName";
    xpc::dict::object_proxy::operator=(buf, &v100, &v101);
    v22 = v101;
    v101 = 0;

    v23 = v100;
    v100 = 0;

    v24 = xpc_uint64_create(v125);
    v98 = v24;
    if (!v24)
    {
      v98 = xpc_null_create();
    }

    *buf = v6;
    *&buf[8] = "xpanid";
    xpc::dict::object_proxy::operator=(buf, &v98, &v99);
    v25 = v99;
    v99 = 0;

    v26 = v98;
    v98 = 0;

    v27 = xpc::dict::operator*(v6);
    xpc_dictionary_set_data(v27, "masterKey", v126, 0x10uLL);

    v28 = xpc_string_create(v128);
    v96 = v28;
    if (!v28)
    {
      v96 = xpc_null_create();
    }

    *buf = v6;
    *&buf[8] = "PSKc";
    xpc::dict::object_proxy::operator=(buf, &v96, &v97);
    v29 = v97;
    v97 = 0;

    v30 = v96;
    v96 = 0;

    v31 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      xpc::dict::to_debug_string(v6, buf);
      v32 = buf[23] >= 0 ? buf : *buf;
      *v111 = 136315394;
      *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
      *&v111[12] = 2080;
      *&v111[14] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s : output: %s", v111, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  v33 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&buf[12] = 1024;
    *&buf[14] = WORD1(v120);
    *&buf[18] = 2048;
    *&buf[20] = v125;
    *&buf[28] = 2080;
    *&buf[30] = v124;
    *&buf[38] = 2085;
    v113 = v126;
    v114 = 2085;
    v115 = v128;
    v116 = 1024;
    v117 = v120;
    v118 = 2080;
    v119 = v5;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s : #mOS  Saving TC in commissionOrFormNetwork - PANID: %d, XPANID: %llu, NWName: %s, key: %{sensitive}s, PSKc: %{sensitive}s, ch = %d passPhrase : %s", buf, 0x4Au);
  }

  if (!*(v7 + 88))
  {
    v36 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:];
    }

    goto LABEL_39;
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : Storing to keychain now .... %s", buf, 0x16u);
  }

  if (v5)
  {
    v79 = [NSString stringWithUTF8String:v5];
    v35 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
      *&buf[12] = 2080;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s : Storing to keychain passphrase %s", buf, 0x16u);
    }

    if (!v79)
    {
      v36 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:];
      }

LABEL_39:

      v37 = 0;
      retstr->var0 = 0;
LABEL_45:
      retstr->var1.var0.var1.var0 = v12;
      retstr->var1.var0.var1.var1 = v13;
      *(&retstr->var1.var0.var1 + 4) = v110[0];
      *(&retstr->var1.var0.var1 + 19) = *(v110 + 3);
      *(&retstr->var1.var0.var1 + 23) = v81;
      v110[0] = 0;
      *(v110 + 3) = 0;
      v12 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v79 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__0;
  *&buf[32] = __Block_byref_object_dispose__0;
  v113 = 0;
  v78 = [NSString stringWithUTF8String:v124];
  v39 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315394;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 2112;
    *&v111[14] = v78;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s : Storing to keychain nw_name : %@", v111, 0x16u);
  }

  v95 = bswap64(v125);
  v77 = [NSData dataWithBytes:&v95 length:8];
  v40 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315394;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 2112;
    *&v111[14] = v77;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s : Storing to keychain xpaid : %@", v111, 0x16u);
  }

  v72 = [[THThreadNetwork alloc] initWithName:v78 extendedPANID:v77];
  v76 = [NSData dataWithBytes:v126 length:16];
  v41 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315395;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 2117;
    *&v111[14] = v76;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s : Storing to keychain master key %{sensitive}@", v111, 0x16u);
  }

  v75 = [NSData dataWithBytes:&v127 length:16];
  v42 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315395;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 2117;
    *&v111[14] = v75;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : Storing to keychain pskc %{sensitive}@", v111, 0x16u);
  }

  v43 = v120;
  v44 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315394;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 1024;
    *&v111[14] = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s : Storing to keychain channel %d", v111, 0x12u);
  }

  v94 = bswap32(WORD1(v120)) >> 16;
  v74 = [NSData dataWithBytes:&v94 length:2];
  v45 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315394;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 2112;
    *&v111[14] = v74;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s : Storing to keychain panid %@ ", v111, 0x16u);
  }

  v46 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = *(v7 + 10);
    *v111 = 136315394;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    *&v111[12] = 1024;
    *&v111[14] = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s : Storing to keychain wait for sync : %d", v111, 0x12u);
  }

  dsema = dispatch_semaphore_create(0);
  if (!_os_feature_enabled_impl())
  {
    v51 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v76 passPhrase:v79 PSKc:v75 channel:v43 PANID:v74 userInfo:0];
    if (v51)
    {
      v52 = *(v7 + 88);
      v53 = *(v7 + 10);
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke_371;
      v84[3] = &unk_1004C89E8;
      v86 = buf;
      v87 = &v104;
      v85 = dsema;
      [v52 storeCredentials:v51 waitForSync:v53 forNetwork:v72 completion:v84];
      v49 = v85;
      goto LABEL_74;
    }

LABEL_84:
    retstr->var0 = 1;
    retstr->var1.var0.var1.var1 = 0;
    *(&retstr->var1.var0.var1 + 2) = 0;
    retstr->var1.var0.var1.var0 = 0;
    goto LABEL_92;
  }

  v48 = [v7 getCurrentBorderAgent];
  if (!v48)
  {
    goto LABEL_84;
  }

  v49 = [v7 getCurrentCredentialsDataSet];
  if (!v49)
  {
    retstr->var0 = 1;
    retstr->var1.var0.var1.var1 = 0;
    *(&retstr->var1.var0.var1 + 2) = 0;
    retstr->var1.var0.var1.var0 = 0;

    goto LABEL_92;
  }

  LOBYTE(v69) = 1;
  v50 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v76 passPhrase:v79 PSKc:v75 channel:v43 PANID:v74 userInfo:0 credentialDataSet:v49 isActiveDevice:v69];
  if (!v50)
  {
    retstr->var0 = 1;
    retstr->var1.var0.var1.var1 = 0;
    *(&retstr->var1.var0.var1 + 2) = 0;
    retstr->var1.var0.var1.var0 = 0;

    goto LABEL_92;
  }

  v70 = *(v7 + 88);
  v71 = *(v7 + 10);
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke;
  v88[3] = &unk_1004C8A10;
  v92 = buf;
  v88[4] = v7;
  v89 = v72;
  v51 = v48;
  v90 = v51;
  v93 = &v104;
  v91 = dsema;
  [v70 storeThreadNetworkCredentialActiveDataSet:v51 network:v89 credentials:v50 credentialsDataSet:v49 waitForSync:v71 completion:v88];

LABEL_74:
  v54 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *v111 = 136315138;
    *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s :#mOS: Waiting for the store credentials keychain completion to finish...  ", v111, 0xCu);
  }

  v55 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(dsema, v55))
  {
    v56 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:];
    }

    if (v81 < 0)
    {
      operator delete(v12);
    }

    v57 = 0;
    v13 = 0;
    v12 = 0;
    *(v110 + 3) = 0;
    v110[0] = 0;
  }

  else
  {
    v59 = v105[5];
    if (!v59)
    {
      v60 = [*(*&buf[8] + 40) UUIDString];
      v61 = v60;
      *v80 = v60;
      if (xpc::dict::operator BOOL(v6))
      {
        v62 = v60;
        v63 = xpc_string_create([v60 UTF8String]);
        v82 = v63;
        if (!v63)
        {
          v82 = xpc_null_create();
        }

        *v111 = v6;
        *&v111[8] = "outputUniqueNetworkId";
        xpc::dict::object_proxy::operator=(v111, &v82, &v83);
        v64 = v83;
        v83 = 0;

        v65 = v82;
        v82 = 0;
      }

      v66 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = v60;
        v68 = [v60 UTF8String];
        *v111 = 136315394;
        *&v111[4] = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]";
        *&v111[12] = 2080;
        *&v111[14] = v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s : #mOS: uniqueNetworkId: %s", v111, 0x16u);
      }

      v58 = 0;
      v57 = v81;
      goto LABEL_83;
    }

    if (v81 < 0)
    {
      operator delete(v12);
      v59 = v105[5];
    }

    *(v110 + 3) = 0;
    v110[0] = 0;
    if ([v59 code] == 6)
    {
      v57 = 0;
      v13 = 0;
      v12 = 0;
      *(v110 + 3) = 0;
      v110[0] = 0;
      v58 = 13;
      goto LABEL_83;
    }

    v57 = 0;
    v13 = 0;
    v12 = 0;
  }

  v58 = 1;
LABEL_83:
  retstr->var0 = v58;
  retstr->var1.var0.var1.var0 = v12;
  retstr->var1.var0.var1.var1 = v13;
  *(&retstr->var1.var0.var1 + 4) = v110[0];
  *(&retstr->var1.var0.var1 + 19) = *(v110 + 3);
  *(&retstr->var1.var0.var1 + 23) = v57;
  v110[0] = 0;
  *(v110 + 3) = 0;
  v81 = 0;
  v12 = 0;
LABEL_92:

  _Block_object_dispose(buf, 8);
  v37 = v81 < 0;

LABEL_46:
  _Block_object_dispose(&v104, 8);

  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
    if (!v37)
    {
      return result;
    }

    goto LABEL_48;
  }

  operator delete(v121);
  if (v37)
  {
LABEL_48:
    operator delete(v12);
  }

  return result;
}

void __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke_cold_1();
    }

    goto LABEL_16;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#mOS: Got the Active DataSet unique Id : %@", buf, 0xCu);
  }

  v10 = [*(a1 + 32) getPreferredNetwork];
  v7 = v10;
  if (!v10)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_16;
  }

  v11 = [v10 network];
  v12 = [v11 networkName];
  v13 = [*(a1 + 40) networkName];
  if ([v12 isEqualToString:v13])
  {
    v14 = [v7 network];
    v15 = [v14 extendedPANID];
    v16 = [*(a1 + 40) extendedPANID];
    v17 = [v15 isEqualToData:v16];

    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v18 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = [v7 network];
    v23 = [v22 networkName];
    v24 = [v7 network];
    v25 = [v24 extendedPANID];
    v26 = [*(a1 + 40) networkName];
    v27 = [*(a1 + 40) extendedPANID];
    *buf = 136316418;
    v32 = "[ThreadNetworkManagerInstance saveThreadConfiguration:passPhrase:uuid:]_block_invoke";
    v33 = 1024;
    v34 = 5734;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    v41 = 2112;
    v42 = v27;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s:%d: Error, Preferred network exists (name : %@, xpanid : %@)  ! But newly created netowrk (name : %@, xpanid : %@) doesn't match with it, let's leave the network and delete this new network credentials..", buf, 0x3Au);
  }

  [*(*(a1 + 32) + 56) leave];
  if (v30 < 0)
  {
    operator delete(__p);
  }

  [*(a1 + 32) deleteCurrentNetwork:*(a1 + 48)];
  v6 = [NSError storeError:6 description:@"Thread network sync failure"];
LABEL_16:

  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v6;
  v21 = v6;

  dispatch_semaphore_signal(*(a1 + 56));
}

void __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke_371(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#mOS: Got the Active DataSet unique Id : %@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (Result)getPskc:(Result *__return_ptr)retstr pskc_str:
{
  v3 = v2;
  v4 = v1;
  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  v6 = *buf;
  v7 = buf[23];
  v8 = *(v4 + 56);
  v10 = *v3;
  v9 = v3[1];
  memset(__p, 0, sizeof(__p));
  v26.var0 = 0;
  v24[0] = v10;
  v11 = v9;
  v24[1] = v11;
  v25 = *(v3 + 1);
  if (v8)
  {
    [v8 generatePSKc:v24 output:&v26];
    v12 = *buf;
  }

  else
  {

    v12 = 0;
    memset(buf, 0, 32);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  v13 = *&buf[8];
  v14 = *&buf[16];
  v28[0] = *&buf[24];
  *(v28 + 3) = *&buf[27];
  v15 = buf[31];
  if (v12)
  {
    v16 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = buf;
      CtrXPC::Result::toString(v12, buf);
      if ((buf[23] & 0x80u) != 0)
      {
        v21 = *buf;
      }

      if (v15 < 0)
      {
        std::string::__init_copy_ctor_external(&v23, v13, v14);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v23;
        }

        else
        {
          v22 = v23.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v23.__r_.__value_.__r.__words[0] = v13;
        v23.__r_.__value_.__l.__size_ = v14;
        LODWORD(v23.__r_.__value_.__r.__words[2]) = v28[0];
        *(&v23.__r_.__value_.__r.__words[2] + 3) = *(v28 + 3);
        *(&v23.__r_.__value_.__s + 23) = v15;
        v22 = &v23;
      }

      *v29 = 136315394;
      v30 = v21;
      v31 = 2080;
      v32 = v22;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Result for generatePSKc = %s, Error Info: %s", v29, 0x16u);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v17 = 0;
    retstr->var0 = v12;
    retstr->var1.var0.var1.var0 = v13;
    retstr->var1.var0.var1.var1 = v14;
    *(&retstr->var1.var0.var1 + 4) = v28[0];
    *(&retstr->var1.var0.var1 + 19) = *(v28 + 3);
    *(&retstr->var1.var0.var1 + 23) = v15;
    v13 = 0;
  }

  else
  {
    any_to_data(&v26, buf);
    __p[0] = *buf;
    *&__p[1] = *&buf[8];
    if (*buf && *buf != *&buf[8])
    {
      any_to_data(&v26, &v23);
      if (v23.__r_.__value_.__r.__words[0] == v23.__r_.__value_.__l.__size_)
      {
        v18 = 0;
      }

      else
      {
        v18 = v23.__r_.__value_.__r.__words[0];
      }

      memset(buf, 0, 24);
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(buf, v18, v18 + 16, 16);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *buf;
      __p[2] = *&buf[16];
      memset(buf, 0, 24);
      if (v23.__r_.__value_.__r.__words[0])
      {
        v23.__r_.__value_.__l.__size_ = v23.__r_.__value_.__r.__words[0];
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      boost::any::any<nl::Data &>();
    }

    v20 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Error : Pskc array is NULL", buf, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "pskc array is NULL");
    retstr->var0 = 3;
    *retstr->var1.var0.var0.var0 = *buf;
    *(&retstr->var1.var0.var1 + 2) = *&buf[16];
    v17 = v15 < 0;
  }

  if (v26.var0)
  {
    (*(*v26.var0 + 8))(v26.var0);
  }

  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17)
  {
    operator delete(v13);
  }

  return result;
}

- (void)saveLastKnownJoinedNetwork:(const char *)a3 datasetRecord:(id)a4
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_lastKnownJoinedNetworkRecord, a4);
    v8 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ThreadNetworkManagerInstance saveLastKnownJoinedNetwork:datasetRecord:]";
      v17 = 1024;
      v18 = 5872;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d last known joined network record", buf, 0x12u);
    }

    tnmDumpRecord(self->_lastKnownJoinedNetworkRecord);
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v10 = [(ThreadNetworkManagerInstance *)self retrieveActiveDataSetRecordForUniqueId:a3 record:&v14];
  v11 = v14;
  v9 = v14;
  if (v10)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance saveLastKnownJoinedNetwork:datasetRecord:];
    }
  }

  else
  {
    objc_storeStrong(&self->_lastKnownJoinedNetworkRecord, v11);
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ThreadNetworkManagerInstance saveLastKnownJoinedNetwork:datasetRecord:]";
      v17 = 1024;
      v18 = 5881;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d last known joined network record read from uuid", buf, 0x12u);
    }

    tnmDumpRecord(self->_lastKnownJoinedNetworkRecord);
  }

LABEL_6:
}

- (int)formNewNetwork:(dict)a3
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __s = *buf;
  v59[0] = v68;
  *(v59 + 3) = *(&v68 + 3);
  v4 = SHIBYTE(v68);
  std::string::basic_string[abi:ne200100]<0>(buf, "Command is Successful");
  v44 = *buf;
  v45 = SHIBYTE(v68);
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Form NW Cmd received in state %d", buf, 8u);
  }

  deviceNode = self->_deviceNode;
  if (deviceNode == 1)
  {
    defaultChildNode = "router";
  }

  else if (deviceNode == 9)
  {
    defaultChildNode = self->_defaultChildNode;
  }

  else
  {
    defaultChildNode = "sleepy-router";
  }

  if (self->_lastKnownNCPState != 4)
  {
    [self->_CtrInternalClientPtr leave];
    if (v58 < 0)
    {
      operator delete(__p);
    }

    sleep(0);
  }

  v9 = 1;
  if (!self->_createNetwork)
  {
    self->_createNetwork = 1;
    v9 = 0;
  }

  v10 = generatreNewPANIDAsInt();
  NewXPANIDAsInt = generateNewXPANIDAsInt();
  v12 = generateNewMasterKeyAsByteArray();
  v13 = v12;
  v81 = *[v12 bytes];

  v14 = generatreNewNetworkName();
  v15 = v14;
  v16 = [v14 cStringUsingEncoding:4];

  v17 = generateCommisonerCredentialAsString();
  v18 = v17;
  v19 = [v17 cStringUsingEncoding:4];

  lastHostConfiguredChannel = self->_lastHostConfiguredChannel;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  *buf = v16;
  v65 = 1;
  v66 = lastHostConfiguredChannel;
  v67 = 0;
  LODWORD(v68) = 0;
  BYTE4(v68) = 1;
  HIWORD(v68) = v10;
  v69 = 1;
  v70 = NewXPANIDAsInt;
  v71 = 1;
  v72 = v81;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = defaultChildNode;
  v77 = 0;
  v78 = 0;
  v79 = v9;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr form:buf];
    v22 = *v80;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v22 = 0;
  memset(v80, 0, sizeof(v80));
  if (v4 < 0)
  {
LABEL_16:
    operator delete(__s);
  }

LABEL_17:
  v23 = *&v80[16];
  __sa = *&v80[8];
  v59[0] = *&v80[24];
  *(v59 + 3) = *&v80[27];
  v24 = v80[31];
  if (v22)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v41 = v80;
      CtrXPC::Result::toString(v22, v80);
      if ((v80[23] & 0x80u) != 0)
      {
        v41 = *v80;
      }

      if (v24 < 0)
      {
        std::string::__init_copy_ctor_external(&v56, __sa, v23);
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v56;
        }

        else
        {
          v42 = v56.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v56.__r_.__value_.__r.__words[0] = __sa;
        v56.__r_.__value_.__l.__size_ = v23;
        LODWORD(v56.__r_.__value_.__r.__words[2]) = v59[0];
        *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v59 + 3);
        *(&v56.__r_.__value_.__s + 23) = v24;
        v42 = &v56;
      }

      *v60 = 136315394;
      v61 = v41;
      v62 = 2080;
      v63 = v42;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Set Result for FORM = %s, Error Info: %s", v60, 0x16u);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v80[23] < 0)
      {
        operator delete(*v80);
      }
    }

    v26 = 1;
LABEL_42:
    v36 = 1;
    goto LABEL_43;
  }

  v27 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = v80;
    CtrXPC::Result::toString(0, v80);
    if ((v80[23] & 0x80u) != 0)
    {
      v28 = *v80;
    }

    if (v24 < 0)
    {
      std::string::__init_copy_ctor_external(&v56, __sa, v23);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v56;
      }

      else
      {
        v29 = v56.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v56.__r_.__value_.__r.__words[0] = __sa;
      v56.__r_.__value_.__l.__size_ = v23;
      LODWORD(v56.__r_.__value_.__r.__words[2]) = v59[0];
      *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v59 + 3);
      *(&v56.__r_.__value_.__s + 23) = v24;
      v29 = &v56;
    }

    *v60 = 136315394;
    v61 = v28;
    v62 = 2080;
    v63 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Set Result for FORM = %s, Error Info: %s", v60, 0x16u);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v80[23] < 0)
    {
      operator delete(*v80);
    }
  }

  v30 = [NSMutableString stringWithCapacity:0];
  v31 = [NSString stringWithFormat:@"0x%04X", v10];
  [v30 appendString:v31];

  v32 = [NSMutableString stringWithCapacity:0];
  v33 = [NSString stringWithFormat:@"%08llX", NewXPANIDAsInt];
  [v32 appendString:v33];

  sleep(2u);
  [(ThreadNetworkManagerInstance *)self saveThreadConfigurationAOD:a3.var0.var0 passPhrase:v19];
  v34 = *v80;
  if (v45 < 0)
  {
    operator delete(v44);
  }

  v44 = *&v80[8];
  LOBYTE(v45) = v80[31];
  if (v34)
  {
    v35 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance formNewNetwork:];
    }

    [self->_CtrInternalClientPtr leave];
    if (v55 < 0)
    {
      operator delete(v54);
    }

    v26 = v34 != 13;
    goto LABEL_42;
  }

  v39 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v80 = 136315394;
    *&v80[4] = "[ThreadNetworkManagerInstance formNewNetwork:]";
    *&v80[12] = 1024;
    *&v80[14] = 6006;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s:%d: Successfully formed new network", v80, 0x12u);
  }

  -[ThreadNetworkManagerInstance saveLastKnownJoinedNetwork:datasetRecord:](self, "saveLastKnownJoinedNetwork:datasetRecord:", [0 UTF8String], 0);
  v40 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "formNewNetwork:Retrieve Third Party Info", v80, 2u);
  }

  [(ThreadNetworkManagerInstance *)self retrieveAndPostThirdPartyInfo];
  v36 = 0;
  v26 = 1;
LABEL_43:
  if ((v36 & (v26 | isNetworkConnected())) == 1 && isSystemUpTimeIsGreaterThan(0x12CuLL))
  {
    v37 = RcpHostContext::sRcpHostContext;
    if (!RcpHostContext::sRcpHostContext)
    {
      __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
    }

    std::string::basic_string[abi:ne200100]<0>(v52, "Error");
    std::string::basic_string[abi:ne200100]<0>(v50, "Form Failed");
    std::string::basic_string[abi:ne200100]<0>(v48, "Failed to form a new network in RCP");
    RcpHostContext::captureABC(v37, v52, v50, v48, 0, 1);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }
  }

  if ((v45 & 0x80) != 0)
  {
    operator delete(v44);
    if ((v24 & 0x80000000) == 0)
    {
      return v36;
    }

LABEL_56:
    operator delete(__sa);
    return v36;
  }

  if (v24 < 0)
  {
    goto LABEL_56;
  }

  return v36;
}

- (int)attachToNetwork:(dict)a3 output:(dict *)a4
{
  string = 0;
  v72 = 0;
  v73 = 256;
  length = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  __p = *buf;
  v50[0] = v53;
  *(v50 + 3) = *(&v53 + 3);
  v6 = SBYTE7(v53);
  std::string::basic_string[abi:ne200100]<0>(buf, "Command is Successful");
  v45 = *buf;
  v47 = SBYTE7(v53);
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attach NW Cmd received in state %d", buf, 8u);
  }

  v9 = xpc::dict::operator*(a3.var0.var0);
  v10 = xpc_dictionary_get_BOOL(v9, "clearThreadCredentials");
  LOBYTE(v73) = v10;

  if (v10)
  {
    [(ThreadNetworkManagerInstance *)self clearThreadCredentials];
    sleep(1u);
    [(ThreadNetworkManagerInstance *)self getNCPState:0];
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_lastKnownNCPState;
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "AttachTNetwork New state is %d", buf, 8u);
    }
  }

  if (self->_lastKnownNCPState != 4)
  {
    goto LABEL_41;
  }

  v13 = xpc::dict::operator*(a3.var0.var0);
  v14 = xpc_dictionary_get_BOOL(v13, "hasNetworkKey");
  HIBYTE(v73) = v14;

  if (!v14)
  {
    v29 = xpc::dict::operator*(a3.var0.var0);
    LOBYTE(v74) = xpc_dictionary_get_uint64(v29, "channel");
    v74 = v74;

    v30 = xpc::dict::operator*(a3.var0.var0);
    uint64 = xpc_dictionary_get_uint64(v30, "panid");

    v31 = xpc::dict::operator*(a3.var0.var0);
    v76 = xpc_dictionary_get_uint64(v31, "xpanid");

    v32 = xpc::dict::operator*(a3.var0.var0);
    string = xpc_dictionary_get_string(v32, "network_name");

    xpc::dict::dict(&v49, a3.var0.var0);
    v33 = [(ThreadNetworkManagerInstance *)self commissionOrFormNetwork:&v49 is_attaching:1 cfg_attach:&string output:a4];
    v34 = v49;
    v49 = 0;

    goto LABEL_42;
  }

  v15 = xpc::dict::operator*(a3.var0.var0);
  v16 = xpc_dictionary_get_uint64(v15, "channel");

  v17 = xpc::dict::operator*(a3.var0.var0);
  v43 = xpc_dictionary_get_uint64(v17, "panid");

  v18 = xpc::dict::operator*(a3.var0.var0);
  v42 = xpc_dictionary_get_uint64(v18, "xpanid");

  v19 = xpc::dict::operator*(a3.var0.var0);
  v41 = xpc_dictionary_get_string(v19, "network_name");

  v20 = xpc::dict::operator*(a3.var0.var0);
  data = xpc_dictionary_get_data(v20, "network_key", &length);

  v22 = v16;
  v77 = *data;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v65[0] = v41;
  v65[1] = "router";
  v66 = v16;
  v67 = v43;
  v68 = v42;
  v69 = v77;
  v70 = 16843009;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr join:v65];
    v24 = *buf;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v24 = 0;
  *buf = 0u;
  v53 = 0u;
  if (v6 < 0)
  {
LABEL_11:
    operator delete(__p);
  }

LABEL_12:
  v25 = v53;
  __p = *&buf[8];
  v50[0] = DWORD2(v53);
  *(v50 + 3) = *(&v53 + 11);
  v6 = SHIBYTE(v53);
  v26 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = buf;
    CtrXPC::Result::toString(v24, buf);
    if (SBYTE7(v53) < 0)
    {
      v27 = *buf;
    }

    if (v6 < 0)
    {
      std::string::__init_copy_ctor_external(v48, __p, v25);
      v28 = v48;
      if (v48[23] < 0)
      {
        v28 = *v48;
      }
    }

    else
    {
      *v48 = __p;
      *&v48[8] = v25;
      *&v48[16] = v50[0];
      *&v48[19] = *(v50 + 3);
      v48[23] = v6;
      v28 = v48;
    }

    *v64 = 136315394;
    *&v64[4] = v27;
    *&v64[12] = 2080;
    *&v64[14] = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "TNM got the Result for Join as = %s, Error Info: %s", v64, 0x16u);
    if ((v48[23] & 0x80000000) != 0)
    {
      operator delete(*v48);
    }

    if (SBYTE7(v53) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v24)
  {
    [(ThreadNetworkManagerInstance *)self clearThreadCredentials];
    sleep(1u);
    [(ThreadNetworkManagerInstance *)self getNCPState:0];
    v35 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance attachToNetwork:? output:?];
    }

    if (self->_lastKnownNCPState == 4)
    {
      *v64 = *data;
      v36 = self->_CtrInternalClientPtr;
      *buf = v41;
      buf[8] = 1;
      *&buf[10] = v22;
      buf[12] = 0;
      LODWORD(v53) = 0;
      BYTE4(v53) = 1;
      WORD3(v53) = v43;
      BYTE8(v53) = 1;
      v54 = v42;
      v55 = 1;
      v56 = *v64;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = "router";
      v61 = 0;
      v62 = 0;
      v63 = 1;
      if (v36)
      {
        [(CtrInternalClient *)v36 form:buf];
        v37 = *v48 == 0;
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        memset(v48, 0, sizeof(v48));
        v37 = 1;
        if ((v6 & 0x80000000) == 0)
        {
LABEL_33:
          __p = *&v48[8];
          v50[0] = *&v48[24];
          *(v50 + 3) = *&v48[27];
          LOBYTE(v6) = v48[31];
          if (!v37)
          {
LABEL_40:
            v33 = 1;
            goto LABEL_42;
          }

          goto LABEL_34;
        }
      }

      operator delete(__p);
      goto LABEL_33;
    }

LABEL_41:
    v33 = 4;
    goto LABEL_42;
  }

LABEL_34:
  [(ThreadNetworkManagerInstance *)self saveThreadConfiguration:a4];
  v38 = *v48;
  if (v47 < 0)
  {
    operator delete(v45);
  }

  v45 = *&v48[8];
  LOBYTE(v47) = v48[31];
  if (v38)
  {
    v39 = log_get_logging_obg("com.apple.wpantund.tnm", "join");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance joinerAttach:output:];
    }

    [(ThreadNetworkManagerInstance *)self clearThreadCredentials];
    goto LABEL_40;
  }

  v33 = 0;
LABEL_42:
  if ((v47 & 0x80) != 0)
  {
    operator delete(v45);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    operator delete(__p);
    goto LABEL_44;
  }

  if ((v6 & 0x80) != 0)
  {
    goto LABEL_46;
  }

LABEL_44:

  return v33;
}

- (int)setChannelUsingChannelManger:(dict)a3
{
  v4 = xpc::dict::operator*(a3.var0.var0);
  string = xpc_dictionary_get_string(v4, "property_value");

  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SetChannel Cmd received in state %d", buf, 8u);
  }

  [(ThreadNetworkManagerInstance *)self getNCPChannel];
  lastUpdatedNCPChannel = self->_lastUpdatedNCPChannel;
  if (atoi(string) == lastUpdatedNCPChannel)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_lastUpdatedNCPChannel;
      *buf = 136315394;
      *&buf[4] = string;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SetChannel Cmd received: Channel rcvd(%s) is same the one configred in NCP(%d)", buf, 0x12u);
    }

    return 0;
  }

  lastKnownNodeType = self->_lastKnownNodeType;
  if (lastKnownNodeType != 1 && lastKnownNodeType != 7)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance setChannelUsingChannelManger:];
    }

    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v13 = *buf;
  v14 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "ChannelManager:Delay");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr setProperty:__p property_val:"120"];
    v16 = *buf;
  }

  else
  {
    v16 = 0;
    memset(buf, 0, 32);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  v18 = *&buf[8];
  v19 = *&buf[16];
  v42[0] = *&buf[24];
  *(v42 + 3) = *&buf[27];
  v20 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v38;
    CtrXPC::Result::toString(v16, v38);
    if (v39 < 0)
    {
      v22 = v38[0];
    }

    if (v20 < 0)
    {
      std::string::__init_copy_ctor_external(&v37, v18, v19);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v37;
      }

      else
      {
        v23 = v37.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v37.__r_.__value_.__r.__words[0] = v18;
      v37.__r_.__value_.__l.__size_ = v19;
      LODWORD(v37.__r_.__value_.__r.__words[2]) = v42[0];
      *(&v37.__r_.__value_.__r.__words[2] + 3) = *(v42 + 3);
      *(&v37.__r_.__value_.__s + 23) = v20;
      v23 = &v37;
    }

    *buf = 136315650;
    *&buf[4] = "ChannelManager:Delay";
    *&buf[12] = 2080;
    *&buf[14] = v22;
    *&buf[22] = 2080;
    *&buf[24] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  if (v16)
  {
    v11 = 1;
    if ((v20 & 0x80000000) == 0)
    {
      return v11;
    }

LABEL_33:
    operator delete(v18);
    return v11;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v25 = *buf;
  LODWORD(v38[0]) = *&buf[16];
  *(v38 + 3) = *&buf[19];
  v26 = buf[23];
  memset(buf, 0, 24);
  if (v20 < 0)
  {
    operator delete(v18);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v42[0] = v38[0];
    *(v42 + 3) = *(v38 + 3);
  }

  v27 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v35, "ChannelManager:NewChannel");
  if (v27)
  {
    [(CtrInternalClient *)v27 setProperty:v35 property_val:string];
    LODWORD(v27) = *buf;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  memset(buf, 0, 32);
  if (v26 < 0)
  {
LABEL_41:
    operator delete(v25);
  }

LABEL_42:
  v28 = *&buf[8];
  v29 = *&buf[16];
  v42[0] = *&buf[24];
  *(v42 + 3) = *&buf[27];
  v30 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v31 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = v38;
    CtrXPC::Result::toString(v27, v38);
    if (v39 < 0)
    {
      v32 = v38[0];
    }

    if (v30 < 0)
    {
      std::string::__init_copy_ctor_external(&v37, v28, v29);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v37;
      }

      else
      {
        v33 = v37.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v37.__r_.__value_.__r.__words[0] = v28;
      v37.__r_.__value_.__l.__size_ = v29;
      LODWORD(v37.__r_.__value_.__r.__words[2]) = v42[0];
      *(&v37.__r_.__value_.__r.__words[2] + 3) = *(v42 + 3);
      *(&v37.__r_.__value_.__s + 23) = v30;
      v33 = &v37;
    }

    *buf = 136315650;
    *&buf[4] = "ChannelManager:NewChannel";
    *&buf[12] = 2080;
    *&buf[14] = v32;
    *&buf[22] = 2080;
    *&buf[24] = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  if (v27)
  {
    v11 = 1;
  }

  else
  {
    self->_lastHostConfiguredChannel = atoi(string);
    v34 = atoi(string);
    saveIntValue("lastHostConfiguredChannel", v34);
    v11 = 0;
  }

  v18 = v28;
  if (v30 < 0)
  {
    goto LABEL_33;
  }

  return v11;
}

- (int)setChannel:(dict)a3
{
  v4 = xpc::dict::operator*(a3.var0.var0);
  string = xpc_dictionary_get_string(v4, "property_value");

  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SetChannel Cmd received in state %d", buf, 8u);
  }

  [(ThreadNetworkManagerInstance *)self getNCPChannel];
  lastUpdatedNCPChannel = self->_lastUpdatedNCPChannel;
  if (atoi(string) == lastUpdatedNCPChannel)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_lastUpdatedNCPChannel;
      *buf = 136315394;
      *&buf[4] = string;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SetChannel Cmd received: Channel rcvd(%s) is same the one configred in NCP(%d)", buf, 0x12u);
    }

    return 0;
  }

  v12 = self->_lastKnownNCPState;
  if (v12 == 4)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
    v17 = *buf;
    v18 = buf[23];
    CtrInternalClientPtr = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v177, "NCP:Channel");
    if (CtrInternalClientPtr)
    {
      [CtrInternalClientPtr setProperty:v177 property_val:string];
      LODWORD(CtrInternalClientPtr) = *buf;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      if ((v18 & 0x80000000) == 0)
      {
LABEL_18:
        v20 = *&buf[8];
        v21 = *&buf[16];
        LODWORD(v162.__r_.__value_.__l.__data_) = *&buf[24];
        *(v162.__r_.__value_.__r.__words + 3) = *&buf[27];
        v22 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v178 < 0)
        {
          operator delete(v177[0]);
        }

        if (CtrInternalClientPtr)
        {
          v23 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v63 = &v182;
            CtrXPC::Result::toString(CtrInternalClientPtr, &v182);
            if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v63 = v182.__r_.__value_.__r.__words[0];
            }

            if (v22 < 0)
            {
              std::string::__init_copy_ctor_external(&v176, v20, v21);
              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v64 = &v176;
              }

              else
              {
                v64 = v176.__r_.__value_.__r.__words[0];
              }
            }

            else
            {
              v176.__r_.__value_.__r.__words[0] = v20;
              v176.__r_.__value_.__l.__size_ = v21;
              LODWORD(v176.__r_.__value_.__r.__words[2]) = v162.__r_.__value_.__l.__data_;
              *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v162.__r_.__value_.__r.__words + 3);
              *(&v176.__r_.__value_.__s + 23) = v22;
              v64 = &v176;
            }

            *buf = 136315650;
            *&buf[4] = "NCP:Channel";
            *&buf[12] = 2080;
            *&buf[14] = v63;
            *&buf[22] = 2080;
            *&buf[24] = v64;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
            if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v176.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v182.__r_.__value_.__l.__data_);
            }
          }

          v11 = 1;
          if ((v22 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else
        {
          v36 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = &v182;
            CtrXPC::Result::toString(0, &v182);
            if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v37 = v182.__r_.__value_.__r.__words[0];
            }

            if (v22 < 0)
            {
              std::string::__init_copy_ctor_external(&v176, v20, v21);
              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v38 = &v176;
              }

              else
              {
                v38 = v176.__r_.__value_.__r.__words[0];
              }
            }

            else
            {
              v176.__r_.__value_.__r.__words[0] = v20;
              v176.__r_.__value_.__l.__size_ = v21;
              LODWORD(v176.__r_.__value_.__r.__words[2]) = v162.__r_.__value_.__l.__data_;
              *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v162.__r_.__value_.__r.__words + 3);
              *(&v176.__r_.__value_.__s + 23) = v22;
              v38 = &v176;
            }

            *buf = 136315650;
            *&buf[4] = "NCP:Channel";
            *&buf[12] = 2080;
            *&buf[14] = v37;
            *&buf[22] = 2080;
            *&buf[24] = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
            if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v176.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v182.__r_.__value_.__l.__data_);
            }
          }

          self->_lastHostConfiguredChannel = atoi(string);
          v53 = atoi(string);
          saveIntValue("lastHostConfiguredChannel", v53);
          v11 = 0;
          if ((v22 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        operator delete(v20);
        return v11;
      }
    }

    operator delete(v17);
    goto LABEL_18;
  }

  if (v12 == 5 || v12 == 8)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
    }

    v15 = v14;
    v16 = v15;
    if (v15)
    {
      v151 = v15;
      if (xpc_get_type(v15) != &_xpc_type_dictionary)
      {
        v151 = xpc_null_create();
      }
    }

    else
    {
      v151 = xpc_null_create();
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
    v25 = *buf;
    v175[0] = *&buf[16];
    *(v175 + 3) = *&buf[19];
    v26 = buf[23];
    v27 = self->_CtrInternalClientPtr;
    std::string::basic_string[abi:ne200100]<0>(v173, "Dataset:Command");
    if (v27)
    {
      [(CtrInternalClient *)v27 setProperty:v173 property_val:"Erase"];
      v28 = *buf;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v28 = 0;
      memset(buf, 0, sizeof(buf));
      if ((v26 & 0x80000000) == 0)
      {
LABEL_31:
        v29 = *&buf[8];
        v30 = *&buf[16];
        v175[0] = *&buf[24];
        *(v175 + 3) = *&buf[27];
        v31 = buf[31];
        buf[31] = 0;
        buf[8] = 0;
        if (v174 < 0)
        {
          operator delete(v173[0]);
          if (v28)
          {
            goto LABEL_33;
          }
        }

        else if (v28)
        {
LABEL_33:
          v32 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v51 = &v182;
            CtrXPC::Result::toString(v28, &v182);
            if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v51 = v182.__r_.__value_.__r.__words[0];
            }

            if (v31 < 0)
            {
              std::string::__init_copy_ctor_external(&v176, v29, v30);
              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v52 = &v176;
              }

              else
              {
                v52 = v176.__r_.__value_.__r.__words[0];
              }
            }

            else
            {
              v176.__r_.__value_.__r.__words[0] = v29;
              v176.__r_.__value_.__l.__size_ = v30;
              LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
              *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
              *(&v176.__r_.__value_.__s + 23) = v31;
              v52 = &v176;
            }

            *buf = 136315906;
            *&buf[4] = "Dataset:Command";
            *&buf[12] = 2080;
            *&buf[14] = "Erase";
            *&buf[22] = 2080;
            *&buf[24] = v51;
            v180 = 2080;
            v181 = v52;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Set Result for %s --> %s, %s, Error Info: %s", buf, 0x2Au);
            if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v176.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v182.__r_.__value_.__l.__data_);
            }
          }

          v11 = 1;
LABEL_69:
          v46 = v151;
LABEL_70:
          if (v31 < 0)
          {
            operator delete(v29);
          }

          return v11;
        }

        v33 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = &v182;
          CtrXPC::Result::toString(0, &v182);
          if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v182.__r_.__value_.__r.__words[0];
          }

          if (v31 < 0)
          {
            std::string::__init_copy_ctor_external(&v176, v29, v30);
            if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v176;
            }

            else
            {
              v35 = v176.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            v176.__r_.__value_.__r.__words[0] = v29;
            v176.__r_.__value_.__l.__size_ = v30;
            LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
            *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
            *(&v176.__r_.__value_.__s + 23) = v31;
            v35 = &v176;
          }

          *buf = 136315906;
          *&buf[4] = "Dataset:Command";
          *&buf[12] = 2080;
          *&buf[14] = "Erase";
          *&buf[22] = 2080;
          *&buf[24] = v34;
          v180 = 2080;
          v181 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Set Result for %s --> %s, %s, Error Info: %s", buf, 0x2Au);
          if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v176.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v182.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
        v39 = *buf;
        LODWORD(v182.__r_.__value_.__l.__data_) = *&buf[16];
        *(v182.__r_.__value_.__r.__words + 3) = *&buf[19];
        v40 = buf[23];
        memset(buf, 0, 24);
        if (v31 < 0)
        {
          operator delete(v29);
          v175[0] = v182.__r_.__value_.__l.__data_;
          *(v175 + 3) = *(v182.__r_.__value_.__r.__words + 3);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v175[0] = v182.__r_.__value_.__l.__data_;
          *(v175 + 3) = *(v182.__r_.__value_.__r.__words + 3);
        }

        v41 = self->_CtrInternalClientPtr;
        std::string::basic_string[abi:ne200100]<0>(__p, "Dataset:Command");
        if (v41)
        {
          [(CtrInternalClient *)v41 setProperty:__p property_val:"GetActive"];
          LODWORD(v41) = *buf;
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          if ((v40 & 0x80000000) == 0)
          {
LABEL_64:
            v42 = *&buf[8];
            v43 = *&buf[16];
            v175[0] = *&buf[24];
            *(v175 + 3) = *&buf[27];
            v44 = buf[31];
            buf[31] = 0;
            buf[8] = 0;
            if (v172 < 0)
            {
              operator delete(__p[0]);
            }

            if (v41)
            {
              v45 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v65 = &v182;
                CtrXPC::Result::toString(v41, &v182);
                if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v65 = v182.__r_.__value_.__r.__words[0];
                }

                if (v44 < 0)
                {
                  std::string::__init_copy_ctor_external(&v176, v42, v43);
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v66 = &v176;
                  }

                  else
                  {
                    v66 = v176.__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v176.__r_.__value_.__r.__words[0] = v42;
                  v176.__r_.__value_.__l.__size_ = v43;
                  LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                  *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                  *(&v176.__r_.__value_.__s + 23) = v44;
                  v66 = &v176;
                }

                *buf = 136315906;
                *&buf[4] = "Dataset:Command";
                *&buf[12] = 2080;
                *&buf[14] = "GetActive";
                *&buf[22] = 2080;
                *&buf[24] = v65;
                v180 = 2080;
                v181 = v66;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Set Result for %s --> %s, %s, Error Info: %s", buf, 0x2Au);
                if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v176.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v182.__r_.__value_.__l.__data_);
                }
              }

              v11 = 1;
              v29 = v42;
              v31 = v44;
              goto LABEL_69;
            }

            v48 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = &v182;
              CtrXPC::Result::toString(0, &v182);
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v49 = v182.__r_.__value_.__r.__words[0];
              }

              if (v44 < 0)
              {
                std::string::__init_copy_ctor_external(&v176, v42, v43);
                if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v50 = &v176;
                }

                else
                {
                  v50 = v176.__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                v176.__r_.__value_.__r.__words[0] = v42;
                v176.__r_.__value_.__l.__size_ = v43;
                LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                *(&v176.__r_.__value_.__s + 23) = v44;
                v50 = &v176;
              }

              *buf = 136315906;
              *&buf[4] = "Dataset:Command";
              *&buf[12] = 2080;
              *&buf[14] = "GetActive";
              *&buf[22] = 2080;
              *&buf[24] = v49;
              v180 = 2080;
              v181 = v50;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Set Result for %s --> %s, %s, Error Info: %s", buf, 0x2Au);
              if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v176.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v182.__r_.__value_.__l.__data_);
              }
            }

            v170 = 0;
            v56 = self->_CtrInternalClientPtr;
            std::string::basic_string[abi:ne200100]<0>(v168, "Dataset");
            if (v56)
            {
              [(CtrInternalClient *)v56 getProperty:v168 output:&v170];
              v57 = *buf;
            }

            else
            {
              v57 = 0;
              memset(buf, 0, sizeof(buf));
            }

            if (v44 < 0)
            {
              operator delete(v42);
            }

            v29 = *&buf[8];
            v58 = *&buf[16];
            v175[0] = *&buf[24];
            *(v175 + 3) = *&buf[27];
            v31 = buf[31];
            buf[31] = 0;
            buf[8] = 0;
            if (v169 < 0)
            {
              operator delete(v168[0]);
            }

            if (v57)
            {
              v59 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v94 = &v182;
                CtrXPC::Result::toString(v57, &v182);
                if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v94 = v182.__r_.__value_.__r.__words[0];
                }

                if (v31 < 0)
                {
                  std::string::__init_copy_ctor_external(&v176, v29, v58);
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v95 = &v176;
                  }

                  else
                  {
                    v95 = v176.__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v176.__r_.__value_.__r.__words[0] = v29;
                  v176.__r_.__value_.__l.__size_ = v58;
                  LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                  *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                  *(&v176.__r_.__value_.__s + 23) = v31;
                  v95 = &v176;
                }

                *buf = 136315650;
                *&buf[4] = "Dataset";
                *&buf[12] = 2080;
                *&buf[14] = v94;
                *&buf[22] = 2080;
                *&buf[24] = v95;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Get Result for get %s, %s, Error Info: %s", buf, 0x20u);
                if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v176.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v182.__r_.__value_.__l.__data_);
                }
              }

              v11 = 1;
              v46 = v151;
LABEL_421:
              if (v170)
              {
                (*(*v170 + 8))(v170);
              }

              goto LABEL_70;
            }

            v60 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = &v182;
              CtrXPC::Result::toString(0, &v182);
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v61 = v182.__r_.__value_.__r.__words[0];
              }

              if (v31 < 0)
              {
                std::string::__init_copy_ctor_external(&v176, v29, v58);
                if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v62 = &v176;
                }

                else
                {
                  v62 = v176.__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                v176.__r_.__value_.__r.__words[0] = v29;
                v176.__r_.__value_.__l.__size_ = v58;
                LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                *(&v176.__r_.__value_.__s + 23) = v31;
                v62 = &v176;
              }

              *buf = 136315650;
              *&buf[4] = "Dataset";
              *&buf[12] = 2080;
              *&buf[14] = v61;
              *&buf[22] = 2080;
              *&buf[24] = v62;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Get Result for get %s, %s, Error Info: %s", buf, 0x20u);
              if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v176.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v182.__r_.__value_.__l.__data_);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
            v67 = *buf;
            LODWORD(v182.__r_.__value_.__l.__data_) = *&buf[16];
            *(v182.__r_.__value_.__r.__words + 3) = *&buf[19];
            v68 = buf[23];
            memset(buf, 0, 24);
            if (v31 < 0)
            {
              operator delete(v29);
              v175[0] = v182.__r_.__value_.__l.__data_;
              *(v175 + 3) = *(v182.__r_.__value_.__r.__words + 3);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            else
            {
              v175[0] = v182.__r_.__value_.__l.__data_;
              *(v175 + 3) = *(v182.__r_.__value_.__r.__words + 3);
            }

            v167.var0 = 0;
            v69 = self->_CtrInternalClientPtr;
            std::string::basic_string[abi:ne200100]<0>(v165, "Dataset:ActiveTimestamp");
            if (v69)
            {
              [(CtrInternalClient *)v69 getProperty:v165 output:&v167];
              LODWORD(v69) = *buf;
            }

            else
            {
              memset(buf, 0, sizeof(buf));
            }

            if (v68 < 0)
            {
              operator delete(v67);
            }

            v70 = *&buf[8];
            v71 = *&buf[16];
            v175[0] = *&buf[24];
            *(v175 + 3) = *&buf[27];
            v72 = buf[31];
            buf[31] = 0;
            buf[8] = 0;
            if (v166 < 0)
            {
              operator delete(v165[0]);
            }

            v73 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = &v182;
              CtrXPC::Result::toString(v69, &v182);
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v74 = v182.__r_.__value_.__r.__words[0];
              }

              if (v72 < 0)
              {
                std::string::__init_copy_ctor_external(&v176, v70, v71);
                if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v75 = &v176;
                }

                else
                {
                  v75 = v176.__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                v176.__r_.__value_.__r.__words[0] = v70;
                v176.__r_.__value_.__l.__size_ = v71;
                LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                *(&v176.__r_.__value_.__s + 23) = v72;
                v75 = &v176;
              }

              *buf = 136315650;
              *&buf[4] = "Dataset:ActiveTimestamp";
              *&buf[12] = 2080;
              *&buf[14] = v74;
              *&buf[22] = 2080;
              *&buf[24] = v75;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Get Result for get %s, %s, Error Info: %s", buf, 0x20u);
              if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v176.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v182.__r_.__value_.__l.__data_);
              }
            }

            v76 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              any_to_string(&v167, buf);
              v77 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              LODWORD(v182.__r_.__value_.__l.__data_) = 136315138;
              *(v182.__r_.__value_.__r.__words + 4) = v77;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "PTS => %s", &v182, 0xCu);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            v78 = any_to_uint64(&v167, 0);
            if (v69)
            {
              v79 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v96 = &v182;
                CtrXPC::Result::toString(v69, &v182);
                if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v96 = v182.__r_.__value_.__r.__words[0];
                }

                if (v72 < 0)
                {
                  std::string::__init_copy_ctor_external(&v176, v70, v71);
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v97 = &v176;
                  }

                  else
                  {
                    v97 = v176.__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v176.__r_.__value_.__r.__words[0] = v70;
                  v176.__r_.__value_.__l.__size_ = v71;
                  LODWORD(v176.__r_.__value_.__r.__words[2]) = v175[0];
                  *(&v176.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                  *(&v176.__r_.__value_.__s + 23) = v72;
                  v97 = &v176;
                }

                *buf = 136315650;
                *&buf[4] = "Dataset:ActiveTimestamp";
                *&buf[12] = 2080;
                *&buf[14] = v96;
                *&buf[22] = 2080;
                *&buf[24] = v97;
                _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Get Result for get %s, %s, Error Info: %s", buf, 0x20u);
                if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v176.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v182.__r_.__value_.__l.__data_);
                }
              }

              v11 = 1;
              v29 = v70;
              v31 = v72;
              v46 = v151;
LABEL_419:
              if (v167.var0)
              {
                (*(*v167.var0 + 8))(v167.var0);
              }

              goto LABEL_421;
            }

            v80 = v78;
            v81 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v80;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "Got PTS value of 0x%llx", buf, 0xCu);
            }

            std::to_string(&v182, v80 + 0x10000);
            std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
            v82 = *buf;
            LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
            *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
            v83 = buf[23];
            memset(buf, 0, 24);
            if (v72 < 0)
            {
              operator delete(v70);
              v175[0] = v176.__r_.__value_.__l.__data_;
              *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            else
            {
              v175[0] = v176.__r_.__value_.__l.__data_;
              *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
            }

            v84 = self->_CtrInternalClientPtr;
            std::string::basic_string[abi:ne200100]<0>(v163, "Dataset:PendingTimestamp");
            if (v84)
            {
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v182;
              }

              else
              {
                v85 = v182.__r_.__value_.__r.__words[0];
              }

              [(CtrInternalClient *)v84 setProperty:v163 property_val:v85];
              v86 = *buf;
            }

            else
            {
              v86 = 0;
              memset(buf, 0, sizeof(buf));
            }

            if (v83 < 0)
            {
              operator delete(v82);
            }

            v29 = *&buf[8];
            v87 = *&buf[16];
            v175[0] = *&buf[24];
            *(v175 + 3) = *&buf[27];
            v31 = buf[31];
            buf[31] = 0;
            buf[8] = 0;
            if (v164 < 0)
            {
              operator delete(v163[0]);
            }

            if (v86)
            {
              v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                v89 = &v176;
                CtrXPC::Result::toString(v86, &v176);
                if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v89 = v176.__r_.__value_.__r.__words[0];
                }

                if (v31 < 0)
                {
                  std::string::__init_copy_ctor_external(&v162, v29, v87);
                  if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v90 = &v162;
                  }

                  else
                  {
                    v90 = v162.__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v162.__r_.__value_.__r.__words[0] = v29;
                  v162.__r_.__value_.__l.__size_ = v87;
                  LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                  *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                  *(&v162.__r_.__value_.__s + 23) = v31;
                  v90 = &v162;
                }

LABEL_302:
                *buf = 136315650;
                *&buf[4] = "Dataset:ActiveTimestamp";
                *&buf[12] = 2080;
                *&buf[14] = v89;
                *&buf[22] = 2080;
                *&buf[24] = v90;
                v117 = "Get Result for set %s, %s, Error Info: %s";
LABEL_411:
                v149 = v88;
                v150 = 32;
LABEL_412:
                _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, v117, buf, v150);
                if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v162.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v176.__r_.__value_.__l.__data_);
                }
              }
            }

            else
            {
              v91 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                CtrXPC::Result::toString(0, &v176);
                if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v92 = &v176;
                }

                else
                {
                  v92 = v176.__r_.__value_.__r.__words[0];
                }

                if (v31 < 0)
                {
                  std::string::__init_copy_ctor_external(&v162, v29, v87);
                  if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v93 = &v162;
                  }

                  else
                  {
                    v93 = v162.__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v162.__r_.__value_.__r.__words[0] = v29;
                  v162.__r_.__value_.__l.__size_ = v87;
                  LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                  *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                  *(&v162.__r_.__value_.__s + 23) = v31;
                  v93 = &v162;
                }

                *buf = 136315650;
                *&buf[4] = "Dataset:ActiveTimestamp";
                *&buf[12] = 2080;
                *&buf[14] = v92;
                *&buf[22] = 2080;
                *&buf[24] = v93;
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
                if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v162.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v176.__r_.__value_.__l.__data_);
                }
              }

              std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
              v98 = *buf;
              LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
              *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
              v99 = buf[23];
              memset(buf, 0, 24);
              if (v31 < 0)
              {
                operator delete(v29);
                v175[0] = v176.__r_.__value_.__l.__data_;
                *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              else
              {
                v175[0] = v176.__r_.__value_.__l.__data_;
                *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
              }

              v100 = self->_CtrInternalClientPtr;
              std::string::basic_string[abi:ne200100]<0>(v160, "Dataset:ActiveTimestamp");
              if (v100)
              {
                if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v101 = &v182;
                }

                else
                {
                  v101 = v182.__r_.__value_.__r.__words[0];
                }

                [(CtrInternalClient *)v100 setProperty:v160 property_val:v101];
                v102 = *buf;
              }

              else
              {
                v102 = 0;
                memset(buf, 0, sizeof(buf));
              }

              if (v99 < 0)
              {
                operator delete(v98);
              }

              v29 = *&buf[8];
              v103 = *&buf[16];
              v175[0] = *&buf[24];
              *(v175 + 3) = *&buf[27];
              v31 = buf[31];
              buf[31] = 0;
              buf[8] = 0;
              if (v161 < 0)
              {
                operator delete(v160[0]);
              }

              if (v102)
              {
                v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  v89 = &v176;
                  CtrXPC::Result::toString(v102, &v176);
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v89 = v176.__r_.__value_.__r.__words[0];
                  }

                  if (v31 < 0)
                  {
                    std::string::__init_copy_ctor_external(&v162, v29, v103);
                    if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v90 = &v162;
                    }

                    else
                    {
                      v90 = v162.__r_.__value_.__r.__words[0];
                    }
                  }

                  else
                  {
                    v162.__r_.__value_.__r.__words[0] = v29;
                    v162.__r_.__value_.__l.__size_ = v103;
                    LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                    *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                    *(&v162.__r_.__value_.__s + 23) = v31;
                    v90 = &v162;
                  }

                  goto LABEL_302;
                }
              }

              else
              {
                v104 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                {
                  v105 = &v176;
                  CtrXPC::Result::toString(0, &v176);
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v105 = v176.__r_.__value_.__r.__words[0];
                  }

                  if (v31 < 0)
                  {
                    std::string::__init_copy_ctor_external(&v162, v29, v103);
                    if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v106 = &v162;
                    }

                    else
                    {
                      v106 = v162.__r_.__value_.__r.__words[0];
                    }
                  }

                  else
                  {
                    v162.__r_.__value_.__r.__words[0] = v29;
                    v162.__r_.__value_.__l.__size_ = v103;
                    LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                    *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                    *(&v162.__r_.__value_.__s + 23) = v31;
                    v106 = &v162;
                  }

                  *buf = 136315650;
                  *&buf[4] = "Dataset:ActiveTimestamp";
                  *&buf[12] = 2080;
                  *&buf[14] = v105;
                  *&buf[22] = 2080;
                  *&buf[24] = v106;
                  _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
                  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v162.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v176.__r_.__value_.__l.__data_);
                  }
                }

                std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
                v107 = *buf;
                LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
                *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
                v108 = buf[23];
                memset(buf, 0, 24);
                if (v31 < 0)
                {
                  operator delete(v29);
                  v175[0] = v176.__r_.__value_.__l.__data_;
                  *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }
                }

                else
                {
                  v175[0] = v176.__r_.__value_.__l.__data_;
                  *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                }

                v109 = self->_CtrInternalClientPtr;
                std::string::basic_string[abi:ne200100]<0>(v158, "Dataset:Channel");
                if (v109)
                {
                  [(CtrInternalClient *)v109 setProperty:v158 property_val:string];
                  v110 = *buf;
                }

                else
                {
                  v110 = 0;
                  memset(buf, 0, sizeof(buf));
                }

                if (v108 < 0)
                {
                  operator delete(v107);
                }

                v29 = *&buf[8];
                v111 = *&buf[16];
                v175[0] = *&buf[24];
                *(v175 + 3) = *&buf[27];
                v31 = buf[31];
                buf[31] = 0;
                buf[8] = 0;
                if (v159 < 0)
                {
                  operator delete(v158[0]);
                }

                if (v110)
                {
                  v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    v112 = &v176;
                    CtrXPC::Result::toString(v110, &v176);
                    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v112 = v176.__r_.__value_.__r.__words[0];
                    }

                    if (v31 < 0)
                    {
                      std::string::__init_copy_ctor_external(&v162, v29, v111);
                      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v113 = &v162;
                      }

                      else
                      {
                        v113 = v162.__r_.__value_.__r.__words[0];
                      }
                    }

                    else
                    {
                      v162.__r_.__value_.__r.__words[0] = v29;
                      v162.__r_.__value_.__l.__size_ = v111;
                      LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                      *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                      *(&v162.__r_.__value_.__s + 23) = v31;
                      v113 = &v162;
                    }

                    *buf = 136315650;
                    *&buf[4] = "Dataset:Channel";
                    *&buf[12] = 2080;
                    *&buf[14] = v112;
                    *&buf[22] = 2080;
                    *&buf[24] = v113;
                    v117 = "Get Result for set %s, %s, Error Info: %s";
                    goto LABEL_411;
                  }
                }

                else
                {
                  v114 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                  {
                    v115 = &v176;
                    CtrXPC::Result::toString(0, &v176);
                    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v115 = v176.__r_.__value_.__r.__words[0];
                    }

                    if (v31 < 0)
                    {
                      std::string::__init_copy_ctor_external(&v162, v29, v111);
                      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v116 = &v162;
                      }

                      else
                      {
                        v116 = v162.__r_.__value_.__r.__words[0];
                      }
                    }

                    else
                    {
                      v162.__r_.__value_.__r.__words[0] = v29;
                      v162.__r_.__value_.__l.__size_ = v111;
                      LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                      *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                      *(&v162.__r_.__value_.__s + 23) = v31;
                      v116 = &v162;
                    }

                    *buf = 136315650;
                    *&buf[4] = "Dataset:Channel";
                    *&buf[12] = 2080;
                    *&buf[14] = v115;
                    *&buf[22] = 2080;
                    *&buf[24] = v116;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
                    if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v162.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v176.__r_.__value_.__l.__data_);
                    }
                  }

                  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
                  v118 = *buf;
                  LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
                  *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
                  v119 = buf[23];
                  memset(buf, 0, 24);
                  if (v31 < 0)
                  {
                    operator delete(v29);
                    v175[0] = v176.__r_.__value_.__l.__data_;
                    *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  else
                  {
                    v175[0] = v176.__r_.__value_.__l.__data_;
                    *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                  }

                  v120 = self->_CtrInternalClientPtr;
                  std::string::basic_string[abi:ne200100]<0>(v156, "Dataset:Delay");
                  if (v120)
                  {
                    [(CtrInternalClient *)v120 setProperty:v156 property_val:"120000"];
                    v121 = *buf;
                  }

                  else
                  {
                    v121 = 0;
                    memset(buf, 0, sizeof(buf));
                  }

                  if (v119 < 0)
                  {
                    operator delete(v118);
                  }

                  v29 = *&buf[8];
                  v122 = *&buf[16];
                  v175[0] = *&buf[24];
                  *(v175 + 3) = *&buf[27];
                  v31 = buf[31];
                  buf[31] = 0;
                  buf[8] = 0;
                  if (v157 < 0)
                  {
                    operator delete(v156[0]);
                  }

                  if (v121)
                  {
                    v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      v123 = &v176;
                      CtrXPC::Result::toString(v121, &v176);
                      if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v123 = v176.__r_.__value_.__r.__words[0];
                      }

                      if (v31 < 0)
                      {
                        std::string::__init_copy_ctor_external(&v162, v29, v122);
                        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v124 = &v162;
                        }

                        else
                        {
                          v124 = v162.__r_.__value_.__r.__words[0];
                        }
                      }

                      else
                      {
                        v162.__r_.__value_.__r.__words[0] = v29;
                        v162.__r_.__value_.__l.__size_ = v122;
                        LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                        *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                        *(&v162.__r_.__value_.__s + 23) = v31;
                        v124 = &v162;
                      }

                      *buf = 136315650;
                      *&buf[4] = "Dataset:Delay";
                      *&buf[12] = 2080;
                      *&buf[14] = v123;
                      *&buf[22] = 2080;
                      *&buf[24] = v124;
                      v117 = "Get Result for set %s, %s, Error Info: %s";
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    v125 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
                    {
                      v126 = &v176;
                      CtrXPC::Result::toString(0, &v176);
                      if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v126 = v176.__r_.__value_.__r.__words[0];
                      }

                      if (v31 < 0)
                      {
                        std::string::__init_copy_ctor_external(&v162, v29, v122);
                        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v127 = &v162;
                        }

                        else
                        {
                          v127 = v162.__r_.__value_.__r.__words[0];
                        }
                      }

                      else
                      {
                        v162.__r_.__value_.__r.__words[0] = v29;
                        v162.__r_.__value_.__l.__size_ = v122;
                        LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                        *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                        *(&v162.__r_.__value_.__s + 23) = v31;
                        v127 = &v162;
                      }

                      *buf = 136315650;
                      *&buf[4] = "Dataset:Delay";
                      *&buf[12] = 2080;
                      *&buf[14] = v126;
                      *&buf[22] = 2080;
                      *&buf[24] = v127;
                      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_INFO, "Get Result for set %s, %s, Error Info: %s", buf, 0x20u);
                      if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v162.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v176.__r_.__value_.__l.__data_);
                      }
                    }

                    std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
                    v128 = *buf;
                    LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
                    *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
                    v129 = buf[23];
                    memset(buf, 0, 24);
                    if (v31 < 0)
                    {
                      operator delete(v29);
                      v175[0] = v176.__r_.__value_.__l.__data_;
                      *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    else
                    {
                      v175[0] = v176.__r_.__value_.__l.__data_;
                      *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                    }

                    v130 = self->_CtrInternalClientPtr;
                    std::string::basic_string[abi:ne200100]<0>(v154, "Dataset");
                    if (v130)
                    {
                      [(CtrInternalClient *)v130 getProperty:v154 output:&v170];
                      v131 = *buf;
                    }

                    else
                    {
                      v131 = 0;
                      memset(buf, 0, sizeof(buf));
                    }

                    if (v129 < 0)
                    {
                      operator delete(v128);
                    }

                    v29 = *&buf[8];
                    v132 = *&buf[16];
                    v175[0] = *&buf[24];
                    *(v175 + 3) = *&buf[27];
                    v31 = buf[31];
                    buf[31] = 0;
                    buf[8] = 0;
                    if (v155 < 0)
                    {
                      operator delete(v154[0]);
                    }

                    if (v131)
                    {
                      v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                      {
                        v133 = &v176;
                        CtrXPC::Result::toString(v131, &v176);
                        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v133 = v176.__r_.__value_.__r.__words[0];
                        }

                        if (v31 < 0)
                        {
                          std::string::__init_copy_ctor_external(&v162, v29, v132);
                          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v134 = &v162;
                          }

                          else
                          {
                            v134 = v162.__r_.__value_.__r.__words[0];
                          }
                        }

                        else
                        {
                          v162.__r_.__value_.__r.__words[0] = v29;
                          v162.__r_.__value_.__l.__size_ = v132;
                          LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                          *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                          *(&v162.__r_.__value_.__s + 23) = v31;
                          v134 = &v162;
                        }

                        *buf = 136315650;
                        *&buf[4] = "Dataset";
                        *&buf[12] = 2080;
                        *&buf[14] = v133;
                        *&buf[22] = 2080;
                        *&buf[24] = v134;
                        v117 = "Get Result for get %s, %s, Error Info: %s";
                        goto LABEL_411;
                      }
                    }

                    else
                    {
                      v135 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
                      {
                        v136 = &v176;
                        CtrXPC::Result::toString(0, &v176);
                        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v136 = v176.__r_.__value_.__r.__words[0];
                        }

                        if (v31 < 0)
                        {
                          std::string::__init_copy_ctor_external(&v162, v29, v132);
                          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v137 = &v162;
                          }

                          else
                          {
                            v137 = v162.__r_.__value_.__r.__words[0];
                          }
                        }

                        else
                        {
                          v162.__r_.__value_.__r.__words[0] = v29;
                          v162.__r_.__value_.__l.__size_ = v132;
                          LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                          *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                          *(&v162.__r_.__value_.__s + 23) = v31;
                          v137 = &v162;
                        }

                        *buf = 136315650;
                        *&buf[4] = "Dataset";
                        *&buf[12] = 2080;
                        *&buf[14] = v136;
                        *&buf[22] = 2080;
                        *&buf[24] = v137;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "Get Result for get %s, %s, Error Info: %s", buf, 0x20u);
                        if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v162.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v176.__r_.__value_.__l.__data_);
                        }
                      }

                      std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
                      v138 = *buf;
                      LODWORD(v176.__r_.__value_.__l.__data_) = *&buf[16];
                      *(v176.__r_.__value_.__r.__words + 3) = *&buf[19];
                      v139 = buf[23];
                      memset(buf, 0, 24);
                      if (v31 < 0)
                      {
                        operator delete(v29);
                        v175[0] = v176.__r_.__value_.__l.__data_;
                        *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      else
                      {
                        v175[0] = v176.__r_.__value_.__l.__data_;
                        *(v175 + 3) = *(v176.__r_.__value_.__r.__words + 3);
                      }

                      v140 = self->_CtrInternalClientPtr;
                      std::string::basic_string[abi:ne200100]<0>(v152, "Dataset:Command");
                      if (v140)
                      {
                        [(CtrInternalClient *)v140 setProperty:v152 property_val:"SetPending"];
                        v141 = *buf;
                      }

                      else
                      {
                        v141 = 0;
                        memset(buf, 0, sizeof(buf));
                      }

                      if (v139 < 0)
                      {
                        operator delete(v138);
                      }

                      v29 = *&buf[8];
                      v142 = *&buf[16];
                      v175[0] = *&buf[24];
                      *(v175 + 3) = *&buf[27];
                      v31 = buf[31];
                      buf[31] = 0;
                      buf[8] = 0;
                      if (v153 < 0)
                      {
                        operator delete(v152[0]);
                      }

                      if (!v141)
                      {
                        v145 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                        {
                          v146 = &v176;
                          CtrXPC::Result::toString(0, &v176);
                          if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v146 = v176.__r_.__value_.__r.__words[0];
                          }

                          if (v31 < 0)
                          {
                            std::string::__init_copy_ctor_external(&v162, v29, v142);
                            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v147 = &v162;
                            }

                            else
                            {
                              v147 = v162.__r_.__value_.__r.__words[0];
                            }
                          }

                          else
                          {
                            v162.__r_.__value_.__r.__words[0] = v29;
                            v162.__r_.__value_.__l.__size_ = v142;
                            LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                            *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                            *(&v162.__r_.__value_.__s + 23) = v31;
                            v147 = &v162;
                          }

                          *buf = 136315906;
                          *&buf[4] = "Dataset:Command";
                          *&buf[12] = 2080;
                          *&buf[14] = "SetPending";
                          *&buf[22] = 2080;
                          *&buf[24] = v146;
                          v180 = 2080;
                          v181 = v147;
                          _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "Set Result for %s --> %s, %s, Error Info: %s", buf, 0x2Au);
                          if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v162.__r_.__value_.__l.__data_);
                          }

                          if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v176.__r_.__value_.__l.__data_);
                          }
                        }

                        self->_lastHostConfiguredChannel = atoi(string);
                        v148 = atoi(string);
                        saveIntValue("lastHostConfiguredChannel", v148);
                        v11 = 0;
                        goto LABEL_417;
                      }

                      v88 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                      {
                        v143 = &v176;
                        CtrXPC::Result::toString(v141, &v176);
                        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v143 = v176.__r_.__value_.__r.__words[0];
                        }

                        if (v31 < 0)
                        {
                          std::string::__init_copy_ctor_external(&v162, v29, v142);
                          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v144 = &v162;
                          }

                          else
                          {
                            v144 = v162.__r_.__value_.__r.__words[0];
                          }
                        }

                        else
                        {
                          v162.__r_.__value_.__r.__words[0] = v29;
                          v162.__r_.__value_.__l.__size_ = v142;
                          LODWORD(v162.__r_.__value_.__r.__words[2]) = v175[0];
                          *(&v162.__r_.__value_.__r.__words[2] + 3) = *(v175 + 3);
                          *(&v162.__r_.__value_.__s + 23) = v31;
                          v144 = &v162;
                        }

                        *buf = 136315906;
                        *&buf[4] = "Dataset:Command";
                        *&buf[12] = 2080;
                        *&buf[14] = "SetPending";
                        *&buf[22] = 2080;
                        *&buf[24] = v143;
                        v180 = 2080;
                        v181 = v144;
                        v117 = "Set Result for %s --> %s, %s, Error Info: %s";
                        v149 = v88;
                        v150 = 42;
                        goto LABEL_412;
                      }
                    }
                  }
                }
              }
            }

            v11 = 1;
LABEL_417:
            v46 = v151;
            if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v182.__r_.__value_.__l.__data_);
            }

            goto LABEL_419;
          }
        }

        operator delete(v39);
        goto LABEL_64;
      }
    }

    operator delete(v25);
    goto LABEL_31;
  }

  v24 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v54 = self->_lastUpdatedNCPChannel;
    v55 = self->_lastKnownNCPState;
    *buf = 136315650;
    *&buf[4] = string;
    *&buf[12] = 1024;
    *&buf[14] = v54;
    *&buf[18] = 1024;
    *&buf[20] = v55;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "SetChannel Cmd received: Channel rcvd(%s), NCP channel is : (%d) in state in appropriate : %d, returning error.", buf, 0x18u);
  }

  return 1;
}

- (void)getNCPState:(BOOL)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  tv_sec = buf[0].tv_sec;
  tv_sec_high = SHIBYTE(buf[1].tv_sec);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v25.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v23, "NCP:State");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v23 output:&v25];
    v8 = LODWORD(buf[0].tv_sec) == 0;
    if ((tv_sec_high & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, sizeof(buf));
  v8 = 1;
  if (tv_sec_high < 0)
  {
LABEL_3:
    operator delete(tv_sec);
  }

LABEL_4:
  v9 = *&buf[0].tv_usec;
  v10 = *(&buf[1].tv_usec + 7);
  *(&buf[1].tv_usec + 7) = 0;
  LOBYTE(buf[0].tv_usec) = 0;
  if (v24 < 0)
  {
    operator delete(v23[0]);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
LABEL_6:
    SystemUptimeInSec = getSystemUptimeInSec();
    DaemonUptimeInSec = getDaemonUptimeInSec();
    v13 = __p;
    any_to_string(&v25, __p);
    if (v22 < 0)
    {
      v13 = __p[0];
    }

    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0].tv_sec) = 134218498;
      *(&buf[0].tv_sec + 4) = SystemUptimeInSec;
      *(&buf[0].tv_usec + 2) = 2048;
      *(&buf[0].tv_usec + 6) = DaemonUptimeInSec;
      HIWORD(buf[1].tv_sec) = 2080;
      *&buf[1].tv_usec = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%llu, %llu] %s : NCP State Property", buf, 0x20u);
    }

    self->_prevKnownNCPState = self->_lastKnownNCPState;
    std::string::basic_string[abi:ne200100]<0>(buf, v13);
    lastKnownNCPState = nl::wpantund::string_to_ncp_state(buf);
    self->_lastKnownNCPState = lastKnownNCPState;
    if (SHIBYTE(buf[1].tv_sec) < 0)
    {
      operator delete(buf[0].tv_sec);
      lastKnownNCPState = self->_lastKnownNCPState;
    }

    srputil_set_ncp_state(lastKnownNCPState);
    if (self->_lastKnownNCPState == 8 && threadStartMsgTime)
    {
      gettimeofday(buf, 0);
      v16 = buf[0].tv_sec;
      if (buf[0].tv_sec)
      {
        v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v26 = 134217984;
          v27 = v16 - threadStartMsgTime;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Associated: %ld sec since threadStartMsg\n", v26, 0xCu);
        }
      }

      threadStartMsgTime = 0;
      dword_10052D878 = 0;
    }

    v18 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = self->_lastKnownNCPState;
      LODWORD(buf[0].tv_sec) = 136315394;
      *(&buf[0].tv_sec + 4) = v13;
      *(&buf[0].tv_usec + 2) = 1024;
      *(&buf[0].tv_usec + 6) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "TNM read NCP state as: %s, %d \n", buf, 0x12u);
    }

    if (v3)
    {
      [(ThreadNetworkManagerInstance *)self checkAndResumeNW];
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_31;
  }

  v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf[0].tv_sec) = 136315138;
    *(&buf[0].tv_sec + 4) = "[ThreadNetworkManagerInstance getNCPState:]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : Failed to get the NCP State Property", buf, 0xCu);
  }

LABEL_31:
  if (v25.var0)
  {
    (*(*v25.var0 + 8))(v25.var0);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

- (void)checkPreferredThreadNetworkTimerHandler
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)initCheckPreferredTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __55__ThreadNetworkManagerInstance_initCheckPreferredTimer__block_invoke(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ThreadNetworkManagerInstance initCheckPreferredTimer]_block_invoke";
    v8 = 1024;
    v9 = 6595;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Self heal thread network timer triggered : Timer Triggered timestamp :%f", &v6, 0x1Cu);
  }

  if (v4 > 1657720000.0 && saveDoubleValue("CheckPreferredTimeStamp", v4))
  {
    [*(a1 + 32) checkPreferredThreadNetworkTimerHandler];
  }
}

- (id)getHardwareAddress
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = SBYTE7(v22);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v17.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:assigned:hw:mac");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v17];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v22 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = SHIBYTE(v22);
  HIBYTE(v22) = 0;
  buf[8] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TNM successfully got Hardware Address", buf, 2u);
    }

    any_to_data(&v17, buf);
    v20 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    encode_data_into_string(&v20, 8, buf, 0x14uLL, 0);
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v18 = 136642819;
      v19 = buf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "TNM read HW address string: %{sensitive}s", v18, 0xCu);
    }

    v11 = [NSString stringWithUTF8String:buf];
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v18 = 138739971;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TNM read HW address as: %{sensitive}@", v18, 0xCu);
    }

    goto LABEL_19;
  }

  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getHardwareAddress];
  }

  v11 = 0;
LABEL_19:
  if (v17.var0)
  {
    (*(*v17.var0 + 8))(v17.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v11;
}

- (Result)getNCPNetworkInfo:(Result *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  std::string::basic_string[abi:ne200100]<0>(buf, "Commond is successful");
  retstr->var0 = 0;
  retstr->var1 = *buf;
  v6 = *(v4 + 56);
  v54.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v52, "NCP:Channel");
  if (v6)
  {
    [v6 getProperty:v52 output:&v54];
    LODWORD(v6) = *buf;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  retstr->var0 = v6;
  if (*(&retstr->var1.var0.var1 + 23) < 0)
  {
    operator delete(retstr->var1.var0.var1.var0);
  }

  *retstr->var1.var0.var0.var0 = *&buf[8];
  *(&retstr->var1.var0.var1 + 2) = *&buf[24];
  buf[31] = 0;
  buf[8] = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
LABEL_8:
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Failed to get the Channel Property", buf, 2u);
    }

    goto LABEL_118;
  }

  *v3 = any_to_int(&v54);
  v51.var0 = 0;
  v8 = *(v4 + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:Name");
  if (v8)
  {
    [v8 getProperty:__p output:&v51];
    LODWORD(v8) = *buf;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  retstr->var0 = v8;
  if (*(&retstr->var1.var0.var1 + 23) < 0)
  {
    operator delete(retstr->var1.var0.var1.var0);
  }

  *retstr->var1.var0.var0.var0 = *&buf[8];
  *(&retstr->var1.var0.var1 + 2) = *&buf[24];
  buf[31] = 0;
  buf[8] = 0;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_23:
    any_to_string(&v51, buf);
    if (buf[23] >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    if (buf[23] >= 0)
    {
      v11 = buf[23];
    }

    else
    {
      v11 = *&buf[8];
    }

    std::string::append((v3 + 8), v10, v11);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*(v3 + 31) >= 0)
    {
      v12 = v3 + 8;
    }

    else
    {
      v12 = *(v3 + 8);
    }

    *(v3 + 32) = v12;
    v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(v3 + 32);
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance getNCPNetworkInfo:]";
      *&buf[12] = 2080;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : cfg network name %s", buf, 0x16u);
    }

    v48.var0 = 0;
    v15 = *(v4 + 56);
    std::string::basic_string[abi:ne200100]<0>(v46, "Network:XPANID");
    if (v15)
    {
      [v15 getProperty:v46 output:&v48];
      LODWORD(v15) = *buf;
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    retstr->var0 = v15;
    if (*(&retstr->var1.var0.var1 + 23) < 0)
    {
      operator delete(retstr->var1.var0.var1.var0);
    }

    *retstr->var1.var0.var0.var0 = *&buf[8];
    *(&retstr->var1.var0.var1 + 2) = *&buf[24];
    buf[31] = 0;
    buf[8] = 0;
    if (v47 < 0)
    {
      operator delete(v46[0]);
      if (v15)
      {
        goto LABEL_43;
      }
    }

    else if (v15)
    {
LABEL_43:
      v16 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Failed to get the Network XPANID Property", buf, 2u);
      }

LABEL_114:
      if (v48.var0)
      {
        (*(*v48.var0 + 8))(v48.var0);
      }

      goto LABEL_116;
    }

    *(v3 + 40) = any_to_uint64(&v48, 0);
    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(v3 + 40);
      *buf = 136315394;
      *&buf[4] = "[ThreadNetworkManagerInstance getNCPNetworkInfo:]";
      *&buf[12] = 2048;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : xpanid from NCP : 0x%llX", buf, 0x16u);
    }

    v45.var0 = 0;
    v19 = *(v4 + 56);
    std::string::basic_string[abi:ne200100]<0>(v43, "Network:PANID");
    if (v19)
    {
      [v19 getProperty:v43 output:&v45];
      LODWORD(v19) = *buf;
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    retstr->var0 = v19;
    if (*(&retstr->var1.var0.var1 + 23) < 0)
    {
      operator delete(retstr->var1.var0.var1.var0);
    }

    *retstr->var1.var0.var0.var0 = *&buf[8];
    *(&retstr->var1.var0.var1 + 2) = *&buf[24];
    buf[31] = 0;
    buf[8] = 0;
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    if (v19)
    {
      v20 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Failed to get the PANID Property", buf, 2u);
      }
    }

    else
    {
      *(v3 + 2) = any_to_int(&v45);
      v42.var0 = 0;
      v21 = *(v4 + 56);
      std::string::basic_string[abi:ne200100]<0>(v40, "Network:PartitionId");
      if (v21)
      {
        [v21 getProperty:v40 output:&v42];
        LODWORD(v21) = *buf;
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      retstr->var0 = v21;
      if (*(&retstr->var1.var0.var1 + 23) < 0)
      {
        operator delete(retstr->var1.var0.var1.var0);
      }

      *retstr->var1.var0.var0.var0 = *&buf[8];
      *(&retstr->var1.var0.var1 + 2) = *&buf[24];
      buf[31] = 0;
      buf[8] = 0;
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }

      if (v21)
      {
        v22 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Failed to get the Network Partition Id", buf, 2u);
        }
      }

      else
      {
        v23 = any_to_int(&v42);
        v24 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Network Partition Id: %d", buf, 8u);
        }

        v39.var0 = 0;
        v25 = *(v4 + 56);
        std::string::basic_string[abi:ne200100]<0>(v37, "Network:Key");
        if (v25)
        {
          [v25 getProperty:v37 output:&v39];
          LODWORD(v25) = *buf;
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        retstr->var0 = v25;
        if (*(&retstr->var1.var0.var1 + 23) < 0)
        {
          operator delete(retstr->var1.var0.var1.var0);
        }

        *retstr->var1.var0.var0.var0 = *&buf[8];
        *(&retstr->var1.var0.var1 + 2) = *&buf[24];
        buf[31] = 0;
        buf[8] = 0;
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (v25)
        {
          v26 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Failed to get the Network Key Property", buf, 2u);
          }
        }

        else
        {
          any_to_data(&v39, buf);
          v27 = *buf;
          if (*buf == *&buf[8])
          {
            v28 = 0;
          }

          else
          {
            v28 = *buf;
          }

          *(v3 + 48) = *v28;
          if (v27)
          {
            *&buf[8] = v27;
            operator delete(v27);
          }

          v36.var0 = 0;
          v29 = *(v4 + 56);
          std::string::basic_string[abi:ne200100]<0>(v34, "Network:PSKc");
          if (v29)
          {
            [v29 getProperty:v34 output:&v36];
            LODWORD(v29) = *buf;
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          retstr->var0 = v29;
          if (*(&retstr->var1.var0.var1 + 23) < 0)
          {
            operator delete(retstr->var1.var0.var1.var0);
          }

          *retstr->var1.var0.var0.var0 = *&buf[8];
          *(&retstr->var1.var0.var1 + 2) = *&buf[24];
          buf[31] = 0;
          buf[8] = 0;
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          if (v29)
          {
            v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Failed to get the Network PSKC Property", buf, 2u);
            }
          }

          else
          {
            any_to_data(&v36, buf);
            v31 = *buf;
            if (*buf == *&buf[8])
            {
              v32 = 0;
            }

            else
            {
              v32 = *buf;
            }

            *(v3 + 64) = *v32;
            if (v31)
            {
              *&buf[8] = v31;
              operator delete(v31);
            }

            encode_data_into_string((v3 + 64), 16, (v3 + 80), 0x24uLL, 0);
          }

          if (v36.var0)
          {
            (*(*v36.var0 + 8))(v36.var0);
          }
        }

        if (v39.var0)
        {
          (*(*v39.var0 + 8))(v39.var0);
        }
      }

      if (v42.var0)
      {
        (*(*v42.var0 + 8))(v42.var0);
      }
    }

    if (v45.var0)
    {
      (*(*v45.var0 + 8))(v45.var0);
    }

    goto LABEL_114;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_19:
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to get the Network Name Property", buf, 2u);
  }

LABEL_116:
  if (v51.var0)
  {
    (*(*v51.var0 + 8))(v51.var0);
  }

LABEL_118:
  result = v54.var0;
  if (v54.var0)
  {
    return (*(*v54.var0 + 8))(v54.var0);
  }

  return result;
}

- (void)getNCPChannel
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resumeNetwork
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Command Error");
  v3 = __p[0];
  v4 = SBYTE7(v18);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr resume];
    v6 = __p[0];
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  *__p = 0u;
  v18 = 0u;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = __p[1];
  v8 = v18;
  v19[0] = DWORD2(v18);
  *(v19 + 3) = *(&v18 + 11);
  v9 = SHIBYTE(v18);
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    CtrXPC::Result::toString(v6, __p);
    if ((SBYTE7(v18) & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v7, v8);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v16;
      }

      else
      {
        v12 = v16.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v16.__r_.__value_.__r.__words[0] = v7;
      v16.__r_.__value_.__l.__size_ = v8;
      LODWORD(v16.__r_.__value_.__r.__words[2]) = v19[0];
      *(&v16.__r_.__value_.__r.__words[2] + 3) = *(v19 + 3);
      *(&v16.__r_.__value_.__s + 23) = v9;
      v12 = &v16;
    }

    *buf = 136315394;
    v21 = v11;
    v22 = 2080;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "TNM request for Resume NW ==> res = %s, Error Info: %s \n", buf, 0x16u);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sleep(0xAu);
  objc_initWeak(__p, self);
  fQueue = self->_fQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __45__ThreadNetworkManagerInstance_resumeNetwork__block_invoke;
  v14[3] = &unk_1004C8818;
  objc_copyWeak(&v15, __p);
  dispatch_async(fQueue, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(__p);
  if (v9 < 0)
  {
    operator delete(v7);
  }
}

void __45__ThreadNetworkManagerInstance_resumeNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained getNCPState:1];
    if (*(v2 + 9) != 8)
    {
      [v2[7] reset:1];
      if (v4 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

- (void)triggerScan
{
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastKnownNCPState = self->_lastKnownNCPState;
    *buf = 67109120;
    *&buf[4] = lastKnownNCPState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TNM Triggering scan in state %d \n", buf, 8u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v5 = 0;
  v6 = *buf;
  v26[0] = *&buf[16];
  *(v26 + 3) = *&buf[19];
  LOBYTE(v7) = buf[23];
  scannedNetworkCount = 0;
  v8 = 1;
  *&v9 = 67109890;
  v20 = v9;
  do
  {
    v10 = v8;
    std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
    v11 = *buf;
    LODWORD(__p[0]) = *&buf[16];
    *(__p + 3) = *&buf[19];
    v12 = buf[23];
    memset(buf, 0, 24);
    if ((v7 & 0x80) != 0)
    {
      operator delete(v6);
      v26[0] = __p[0];
      *(v26 + 3) = *(__p + 3);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v26[0] = __p[0];
      *(v26 + 3) = *(__p + 3);
    }

    v13 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    v14 = v13;
    v24[0] = 60;
    v24[1] = 0xFFFF000000000000;
    v25 = 2;
    if (v13)
    {
      [v13 scan:v24];
      v15 = *buf;
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      operator delete(v11);
      goto LABEL_11;
    }

    v15 = 0;
    memset(buf, 0, 32);
    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = *&buf[8];
    v16 = *&buf[16];
    v26[0] = *&buf[24];
    *(v26 + 3) = *&buf[27];
    v7 = buf[31];
    buf[31] = 0;
    buf[8] = 0;

    v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      CtrXPC::Result::toString(v15, __p);
      if (v23 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      if (v7 < 0)
      {
        std::string::__init_copy_ctor_external(&v21, v6, v16);
        v19 = &v21;
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v21.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v21.__r_.__value_.__r.__words[0] = v6;
        v21.__r_.__value_.__l.__size_ = v16;
        LODWORD(v21.__r_.__value_.__r.__words[2]) = v26[0];
        *(&v21.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
        *(&v21.__r_.__value_.__s + 23) = v7;
        v19 = &v21;
      }

      *buf = v20;
      *&buf[4] = v5;
      *&buf[8] = 2080;
      *&buf[10] = v18;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 2080;
      *&buf[26] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "TNM Scan(%d) Result = %s, Error Code: %d, Error Info: %s \n", buf, 0x22u);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = 0;
    v5 = 1;
  }

  while ((v10 & 1) != 0);
  if (v7 < 0)
  {
    operator delete(v6);
  }
}

- (void)checkAndResumeNW
{
  objc_initWeak(&location, self);
  fQueue = self->_fQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __48__ThreadNetworkManagerInstance_checkAndResumeNW__block_invoke;
  v4[3] = &unk_1004C8818;
  objc_copyWeak(&v5, &location);
  dispatch_async(fQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__ThreadNetworkManagerInstance_checkAndResumeNW__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[9] == 5)
  {
    [WeakRetained resumeNetwork];
  }
}

- (void)startNetworkTopologyBuilder
{
  v3 = dispatch_get_global_queue(25, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  tnm_nw_topology_fetch_timer = self->_tnm_nw_topology_fetch_timer;
  self->_tnm_nw_topology_fetch_timer = v4;

  v6 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(self->_tnm_nw_topology_fetch_timer, v6, 0x34630B8A000uLL, 0);
  v7 = self->_tnm_nw_topology_fetch_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke;
  handler[3] = &unk_1004C85F8;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(self->_tnm_nw_topology_fetch_timer);
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TNM: startNetworkTopologyBuilder : Starting", v9, 2u);
  }
}

void __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v23, "Command Error");
  v2 = v23;
  v3 = SBYTE7(v24);
  v4 = *(a1 + 32);
  v25 = 0;
  v5 = [v4 CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "Thread:ChildTable:AsValMap");
  if (v5)
  {
    [v5 getProperty:__p output:&v25];
    v6 = v23 == 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = 0u;
  v23 = 0u;
  v6 = 1;
  if (v3 < 0)
  {
LABEL_3:
    operator delete(v2);
  }

LABEL_4:
  v7 = *(&v23 + 1);
  v8 = SHIBYTE(v24);
  HIBYTE(v24) = 0;
  BYTE8(v23) = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v9 = v25;
    if (v25)
    {
      v9 = (*(*v25 + 24))(v25);
    }

    v19 = v9;
    v10.var0 = &v19;
    ThreadNetworkManagerTopologyHandler_Update_ChildTable(v10, v20);
    std::__list_imp<std::map<std::string,boost::any>>::clear(v20);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v11 = [*(a1 + 32) CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(v17, "Thread:ChildTable:Addresses:AsValMap");
    if (v11)
    {
      [v11 getProperty:v17 output:&v25];
      v12 = v23 == 0;
      if ((v8 & 0x80000000) == 0)
      {
LABEL_14:
        v7 = *(&v23 + 1);
        LOBYTE(v8) = HIBYTE(v24);
        HIBYTE(v24) = 0;
        BYTE8(v23) = 0;
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v12)
        {
          v13 = v25;
          if (v25)
          {
            v13 = (*(*v25 + 24))(v25);
          }

          v16 = v13;
          v14.var0 = &v16;
          ThreadNetworkManagerTopologyHandler_Update_ChildTableAddresses(v14, &v23);
          boost::any::any<std::list<std::map<std::string,boost::any>>>();
        }

        v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke_cold_3();
        }

        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0u;
      v23 = 0u;
      v12 = 1;
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    operator delete(v7);
    goto LABEL_14;
  }

  v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke_cold_1();
  }

LABEL_26:

  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v7);
  }
}

- (unint64_t)getCountOfThreadBorderRoutersWithMdns:(id)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v3 = a3;
  v28 = v3;
  v4 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = getUUIDAsStr();
  if (v18[5])
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v18[5];
      *buf = 136315650;
      v30 = "[ThreadNetworkManagerInstance getCountOfThreadBorderRoutersWithMdns:]";
      v31 = 1024;
      v32 = 6970;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Starting Scan Tag : %@", buf, 0x1Cu);
    }
  }

  v7 = v24[5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __70__ThreadNetworkManagerInstance_getCountOfThreadBorderRoutersWithMdns___block_invoke;
  v13[3] = &unk_1004C8A38;
  v15 = &v17;
  v16 = &v23;
  v8 = v4;
  v14 = v8;
  [v7 startScan:v13 queue:&_dispatch_main_q timeInSec:5];
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ThreadNetworkManagerInstance getCountOfThreadBorderRoutersWithMdns:]";
    v31 = 1024;
    v32 = 6978;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d: Finding Thread network Border Routers around", buf, 0x12u);
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v24[5] findNWs];
  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCountOfThreadBorderRoutersWithMdns:];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

intptr_t __70__ThreadNetworkManagerInstance_getCountOfThreadBorderRoutersWithMdns___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
      v5 = 136315650;
      v6 = "[ThreadNetworkManagerInstance getCountOfThreadBorderRoutersWithMdns:]_block_invoke";
      v7 = 1024;
      v8 = 6973;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:%d: Stopping Scan Tag : %@", &v5, 0x1Cu);
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) stopScan];
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)checkIfNetworkIsFoundInMDNSScan:(id)a3 borderAgentID:(id)a4
{
  v59 = a3;
  v58 = a4;
  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  v66 = self;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 6988;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d: Entered. Checking if Network matches with Mdns", buf, 0x12u);
  }

  v7 = self;
  if (!self->_BAFinder)
  {
    v8 = [objc_opt_new() init];
    BAFinder = self->_BAFinder;
    self->_BAFinder = v8;

    v7 = self;
    if (!self->_BAFinder)
    {
      v55 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
        v69 = 1024;
        *v70 = 6994;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", buf, 0x12u);
      }

      goto LABEL_83;
    }
  }

  v65 = [(ThreadNetworkManagerInstance *)v7 getCountOfThreadBorderRoutersWithMdns:?];
  if (!v65)
  {
LABEL_80:
    v52 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v59 networkName];
      [(ThreadNetworkManagerInstance *)v53 checkIfNetworkIsFoundInMDNSScan:buf borderAgentID:v52];
    }

    [(ThreadNetworkfinder *)v66->_BAFinder clear];
LABEL_83:
    v56 = 0;
    goto LABEL_84;
  }

  v11 = 0;
  *&v10 = 136315906;
  v57 = v10;
  while (1)
  {
    v12 = [(ThreadNetworkfinder *)v7->_BAFinder getBorderAgentForIndex:v11, v57];
    v13 = v12;
    if (v12)
    {
      break;
    }

LABEL_24:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_25:

LABEL_26:
    ++v11;
    v7 = v66;
    if (v65 == v11)
    {
      goto LABEL_80;
    }
  }

  v14 = [v12 addresses];
  v15 = v14 == 0;

  if (v15)
  {
    v21 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      goto LABEL_24;
    }

    *buf = 136315394;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 2112;
    *v70 = v13;
    v22 = v21;
    v23 = "%s : No IP address is available for the server : %@, continue to next BR";
    v24 = 22;
LABEL_62:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
    goto LABEL_23;
  }

  v16 = [v13 TXTRecordData];
  v64 = [NSNetService dictionaryFromTXTRecordData:v16];

  if (!v64)
  {
    v21 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7017;
    *&v70[4] = 2112;
    *&v70[6] = v13;
    v22 = v21;
    v23 = "%s : %d No text record data available for the server : %@, continue to next network";
    v24 = 28;
    goto LABEL_62;
  }

  v61 = [v64 objectForKey:@"nn"];
  v63 = [v64 objectForKey:@"xp"];
  v62 = [v64 objectForKey:@"xa"];
  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7025;
    *&v70[4] = 2112;
    *&v70[6] = v64;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s:%d BorderAgent MDNS Text Record Data : %@", buf, 0x1Cu);
  }

  if (!v61 || !v63 || !v62)
  {
    v29 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    v60 = v29;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_45:
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v42 = 4;
      goto LABEL_73;
    }

    *buf = 136315650;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7028;
    *&v70[4] = 2112;
    *&v70[6] = v13;
    v30 = v29;
    v31 = "%s : %d cannot parse dictionary data for server : %@, continue to next network";
    v32 = 28;
LABEL_77:
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v31, buf, v32);
    goto LABEL_45;
  }

  if ([v63 length] == 16 && objc_msgSend(v62, "length") == 16)
  {
    v18 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v63 length];
      *buf = 136315650;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7033;
      *&v70[4] = 2048;
      *&v70[6] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of OLD format (string based) with length : %lu", buf, 0x1Cu);
    }

    v20 = 0;
    goto LABEL_34;
  }

  if ([v63 length] != 8 || objc_msgSend(v62, "length") != 8)
  {
    v43 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    v60 = v43;
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v50 = [v63 length];
    v51 = [v62 length];
    *buf = v57;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7041;
    *&v70[4] = 2048;
    *&v70[6] = v50;
    v71 = 2048;
    v72 = v51;
    v30 = v43;
    v31 = "%s:%d Continuing... BorderAgent ID and XpanID length mismatch !!! xpan id length : %lu, border agent id length : %lu";
    v32 = 38;
    goto LABEL_77;
  }

  v18 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  v20 = 1;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v33 = [v63 length];
    *buf = 136315650;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7037;
    *&v70[4] = 2048;
    *&v70[6] = v33;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of NEW format (binary based) with length : %lu", buf, 0x1Cu);
  }

LABEL_34:

  v60 = [[NSString alloc] initWithData:v61 encoding:4];
  if (!v60)
  {
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7048;
      *&v70[4] = 2112;
      *&v70[6] = v13;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s : %d network name nsstring conversion failure for server : %@, continue to next network", buf, 0x1Cu);
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (v20)
  {
    v34 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v59 networkName];
      v36 = [v59 extendedPANID];
      *buf = 136316930;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7079;
      *&v70[4] = 2112;
      *&v70[6] = v35;
      v71 = 2112;
      v72 = v36;
      v73 = 2112;
      v74 = v58;
      v75 = 2112;
      v76 = v60;
      v77 = 2112;
      v78 = v63;
      v79 = 2112;
      v80 = v62;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s:%d: Comparing  => storing(network name:%@, xpanid :%@, baid : %@), mdns (network name:%@, xpanid:%@, baid : %@)", buf, 0x4Eu);
    }

    v37 = [v59 networkName];
    if ([v37 isEqualToString:v60])
    {
      v38 = [v59 extendedPANID];
      if ([v38 isEqualToData:v63])
      {
        v39 = [v58 isEqualToData:v62];

        if (v39)
        {
          v40 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = [v59 networkName];
            *buf = v57;
            v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
            v69 = 1024;
            *v70 = 7084;
            *&v70[4] = 2112;
            *&v70[6] = v41;
            v71 = 2112;
            v72 = v60;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s : %d: Network :%@ matches with mdns record :%@", buf, 0x26u);
          }

          [(ThreadNetworkfinder *)v66->_BAFinder clear];
          v42 = 1;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v42 = 0;
        }

        goto LABEL_73;
      }
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_71:
    v42 = 0;
LABEL_72:

    goto LABEL_73;
  }

  v28 = [[NSString alloc] initWithData:v63 encoding:4];
  v44 = [[NSString alloc] initWithData:v62 encoding:4];
  v27 = v44;
  if (!v28 || !v44)
  {
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7056;
      *&v70[4] = 2112;
      *&v70[6] = v13;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s : %d xpanid and baid nsstring conversion failure, server : %@, continue to next network", buf, 0x1Cu);
    }

    v25 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  v26 = [(ThreadNetworkManagerInstance *)v66 dataFromHexString:v28];
  v45 = [(ThreadNetworkManagerInstance *)v66 dataFromHexString:v27];
  v25 = v45;
  if (!v26 || !v45)
  {
    v37 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7064;
      *&v70[4] = 2112;
      *&v70[6] = v13;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s : %d hex string conversion to nsdata failure for server : %@, continue to next network", buf, 0x1Cu);
    }

LABEL_68:
    v42 = 4;
    goto LABEL_72;
  }

  v46 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    *buf = 136316930;
    v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
    v69 = 1024;
    *v70 = 7068;
    *&v70[4] = 2112;
    *&v70[6] = v60;
    v71 = 2112;
    v72 = v28;
    v73 = 2112;
    v74 = v27;
    v75 = 2112;
    v76 = v26;
    v77 = 2112;
    v78 = v25;
    v79 = 2112;
    v80 = v58;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s:%d: network name str : %@, xpan id str : %@, baid str : %@, foundxpanid : %@, foundbaid : %@, borderAgentID : %@", buf, 0x4Eu);
  }

  v37 = [v59 networkName];
  if (![v37 isEqualToString:v60])
  {
    goto LABEL_71;
  }

  v47 = [v59 extendedPANID];
  if (([v47 isEqualToData:v26] & 1) == 0)
  {

    goto LABEL_71;
  }

  v42 = [v58 isEqualToData:v25];

  if (v42)
  {
    v48 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [v59 networkName];
      *buf = v57;
      v68 = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
      v69 = 1024;
      *v70 = 7073;
      *&v70[4] = 2112;
      *&v70[6] = v49;
      v71 = 2112;
      v72 = v60;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s : %d: Network :%@ matches with mdns record :%@", buf, 0x26u);
    }

    [(ThreadNetworkfinder *)v66->_BAFinder clear];
    v42 = 1;
  }

LABEL_73:

  if (!v42)
  {
    goto LABEL_25;
  }

  if (v42 == 4)
  {
    goto LABEL_26;
  }

  v56 = 1;
LABEL_84:

  return v56;
}

- (BOOL)checkAndUpdateNetworkParamsFromMdnsScan:(id)a3 borderAgentID:(id)a4 leaderBorderAgentID:(id)a5 isNwFound:(BOOL *)a6 numAppleBRs:(int *)a7 numThirdPartyBRs:(int *)a8 isLeaderAppleDevice:(BOOL *)a9 numThreadNwsFound:(int *)a10 shouldRunPeriodicTdm:(BOOL *)a11
{
  v104 = a3;
  v106 = a4;
  v99 = a5;
  v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v129 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
    v130 = 1024;
    v131 = 7101;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d: Entered. Check and update network parameters from meshcop mDNS scan ", buf, 0x12u);
  }

  *a6 = 0;
  *a8 = 0;
  *a7 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v14 = v106;
  encode_data_into_string([v106 bytes], objc_msgSend(v106, "length"), buf, 0x100uLL, 0);
  v105 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", buf, +[NSString defaultCStringEncoding]);
  v15 = self;
  if (!self->_BAFinder)
  {
    v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 136315394;
      v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
      v115 = 1024;
      LODWORD(v116) = 7125;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%d: Initialize new ThreadNetworkFinder instance ", v113, 0x12u);
    }

    v17 = [objc_opt_new() init];
    BAFinder = self->_BAFinder;
    self->_BAFinder = v17;

    v15 = self;
    if (!self->_BAFinder)
    {
      v86 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      v100 = v86;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 136315394;
        v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
        v115 = 1024;
        LODWORD(v116) = 7131;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", v113, 0x12u);
      }

      v75 = 0;
      goto LABEL_124;
    }
  }

  v19 = [(ThreadNetworkManagerInstance *)v15 getCountOfThreadBorderRoutersWithMdns:?];
  if (!v19)
  {
    v74 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:];
    }

    [(ThreadNetworkfinder *)self->_BAFinder clear];
    v75 = 0;
    goto LABEL_125;
  }

  v100 = +[NSMutableSet set];
  v111 = v19;
  v108 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != v111; ++i)
  {
    v21 = [(ThreadNetworkfinder *)self->_BAFinder getBorderAgentForIndex:i];
    v22 = v21;
    if (!v21)
    {
      goto LABEL_97;
    }

    v23 = [v21 addresses];
    v24 = v23 == 0;

    if (v24)
    {
      v26 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v113 = 136315394;
        v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
        v115 = 2112;
        *&v116 = v22;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s : No IP address is available for the server : %@, continue to next BR", v113, 0x16u);
      }

      goto LABEL_96;
    }

    v25 = [v22 TXTRecordData];
    v26 = [NSNetService dictionaryFromTXTRecordData:v25];

    if (!v26)
    {
      v27 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v113 = 136315650;
        v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
        v115 = 1024;
        LODWORD(v116) = 7167;
        WORD2(v116) = 2112;
        *(&v116 + 6) = v22;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s : %d No text record data available for the server : %@, continue to next network", v113, 0x1Cu);
      }

      goto LABEL_95;
    }

    v27 = [v26 objectForKey:@"nn"];
    v110 = [v26 objectForKey:@"xp"];
    v109 = [v26 objectForKey:@"xa"];
    v107 = [v26 objectForKey:@"vn"];
    v28 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v113 = 136315650;
      v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
      v115 = 1024;
      LODWORD(v116) = 7176;
      WORD2(v116) = 2112;
      *(&v116 + 6) = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s:%d BorderAgent MDNS Text Record Data : %@", v113, 0x1Cu);
    }

    if (v27 && v110 && v109)
    {
      if ([v110 length] == 16 && objc_msgSend(v109, "length") == 16)
      {
        v29 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v110 length];
          *v113 = 136315650;
          v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
          v115 = 1024;
          LODWORD(v116) = 7184;
          WORD2(v116) = 2048;
          *(&v116 + 6) = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of OLD format (string based) with length : %lu", v113, 0x1Cu);
        }

        v31 = 0;
        goto LABEL_32;
      }

      if ([v110 length] == 8 && objc_msgSend(v109, "length") == 8)
      {
        v29 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        v31 = 1;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v36 = [v110 length];
          *v113 = 136315650;
          v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
          v115 = 1024;
          LODWORD(v116) = 7188;
          WORD2(v116) = 2048;
          *(&v116 + 6) = v36;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of NEW format (binary based) with length : %lu", v113, 0x1Cu);
        }

LABEL_32:

        v32 = [[NSString alloc] initWithData:v27 encoding:4];
        if (!v32)
        {
          v46 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v113 = 136315650;
            v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
            v115 = 1024;
            LODWORD(v116) = 7199;
            WORD2(v116) = 2112;
            *(&v116 + 6) = v22;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s : %d network name nsstring conversion failure for server : %@, continue to next network", v113, 0x1Cu);
          }

          goto LABEL_93;
        }

        v98 = [[NSString alloc] initWithData:v107 encoding:4];
        if (!v98)
        {
          log = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *v113 = 136315650;
            v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
            v115 = 1024;
            LODWORD(v116) = 7205;
            WORD2(v116) = 2112;
            *(&v116 + 6) = v22;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : %d vendor name nsstring conversion failure for server : %@, continue to next network", v113, 0x1Cu);
          }

          goto LABEL_92;
        }

        [v100 addObject:v32];
        v37 = [v98 containsString:@"Apple"];
        v38 = a8;
        if (v37)
        {
          v38 = a7;
        }

        ++*v38;
        if ((v31 & 1) == 0)
        {
          v47 = [[NSString alloc] initWithData:v110 encoding:4];
          v48 = [[NSString alloc] initWithData:v109 encoding:4];
          log = v47;
          v95 = v48;
          if (v47 && (v49 = v48) != 0)
          {
            v50 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v47];
            v51 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v49];
            v52 = v51;
            v94 = v50;
            if (v50 && v51)
            {
              if ([v99 isEqualToData:v51] && (objc_msgSend(v104, "networkName"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToString:", v32), v53, v54))
              {
                v93 = 1;
                if ([v98 isEqualToString:@"Apple"])
                {
                  *a9 = 1;
                }
              }

              else
              {
                v93 = 0;
              }

              v66 = [v104 networkName];
              if ([v66 isEqualToString:v32])
              {
                v67 = [v104 extendedPANID];
                if ([v67 isEqualToData:v94])
                {
                  v68 = [v106 isEqualToData:v52];

                  if (v68)
                  {
                    v69 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                    {
                      v70 = [v104 networkName];
                      *v113 = 136315906;
                      v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
                      v115 = 1024;
                      LODWORD(v116) = 7246;
                      WORD2(v116) = 2112;
                      *(&v116 + 6) = v70;
                      HIWORD(v116) = 2112;
                      *v117 = v32;
                      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s : %d: Network :%@ matches with mdns record :%@", v113, 0x26u);
                    }

                    *a6 = 1;
                  }
                }

                else
                {
                }
              }

              else
              {
              }

              v71 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *v113 = 136317442;
                v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
                v115 = 1024;
                LODWORD(v116) = 7250;
                WORD2(v116) = 2112;
                *(&v116 + 6) = v32;
                HIWORD(v116) = 2112;
                *v117 = log;
                *&v117[8] = 2112;
                *&v117[10] = v95;
                v118 = 2112;
                v119 = v94;
                v120 = 2112;
                v121 = v52;
                v122 = 2112;
                v123 = v106;
                v124 = 2112;
                v125 = v107;
                v126 = 1024;
                v127 = v93;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s:%d: network name str : %@, xpan id str : %@, baid str : %@, foundxpanid : %@, foundbaid : %@ nwFound:true, borderAgentID : %@, vendorName:%@, isLeader:%d", v113, 0x5Eu);
              }
            }

            else
            {
              v63 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *v113 = 136315650;
                v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
                v115 = 1024;
                LODWORD(v116) = 7231;
                WORD2(v116) = 2112;
                *(&v116 + 6) = v22;
                _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%s : %d hex string conversion to nsdata failure for server : %@, continue to next network", v113, 0x1Cu);
              }
            }
          }

          else
          {
            v55 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *v113 = 136315650;
              v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
              v115 = 1024;
              LODWORD(v116) = 7223;
              WORD2(v116) = 2112;
              *(&v116 + 6) = v22;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s : %d xpanid and baid nsstring conversion failure, server : %@, continue to next network", v113, 0x1Cu);
            }
          }

          goto LABEL_92;
        }

        v39 = [v104 networkName];
        if ([v39 isEqualToString:v32])
        {
          v40 = [v104 extendedPANID];
          if ([v40 isEqualToData:v110])
          {
            v41 = [v106 isEqualToData:v109];

            if (v41)
            {
              v42 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = [v104 networkName];
                *v113 = 136315906;
                v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
                v115 = 1024;
                LODWORD(v116) = 7256;
                WORD2(v116) = 2112;
                *(&v116 + 6) = v43;
                HIWORD(v116) = 2112;
                *v117 = v32;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : %d: Network :%@ matches with mdns record :%@", v113, 0x26u);
              }

              *a6 = 1;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v56 = [v104 networkName];
        if ([v56 isEqualToString:v32])
        {
          v57 = [v99 isEqualToData:v109];

          if (v57)
          {
            v96 = 1;
            if ([v98 isEqualToString:@"Apple"])
            {
              *a9 = 1;
            }

            goto LABEL_69;
          }
        }

        else
        {
        }

        v96 = 0;
LABEL_69:
        v58 = [v104 networkName];
        if ([v58 isEqualToString:v32])
        {
          v59 = [v104 extendedPANID];
          if ([v59 isEqualToData:v110])
          {
            v60 = [v98 isEqualToString:@"Apple"];

            if (v60)
            {
              v61 = v109;
              encode_data_into_string([v109 bytes], objc_msgSend(v109, "length"), v113, 0x100uLL, 0);
              v62 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v113, +[NSString defaultCStringEncoding]);
              [v108 addObject:v62];
            }
          }

          else
          {
          }
        }

        else
        {
        }

        log = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v64 = [v104 networkName];
          v65 = [v104 extendedPANID];
          *v113 = 136317442;
          v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
          v115 = 1024;
          LODWORD(v116) = 7289;
          WORD2(v116) = 2112;
          *(&v116 + 6) = v64;
          HIWORD(v116) = 2112;
          *v117 = v65;
          *&v117[8] = 2112;
          *&v117[10] = v106;
          v118 = 2112;
          v119 = v32;
          v120 = 2112;
          v121 = v110;
          v122 = 2112;
          v123 = v109;
          v124 = 2112;
          v125 = v107;
          v126 = 1024;
          v127 = v96;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:%d: Comparing  => storing(network name:%@, xpanid :%@, baid : %@), mdns (network name:%@, xpanid:%@, baid : %@, vendorName:%@, isLeader:%d)", v113, 0x5Eu);
        }

LABEL_92:

        v46 = v98;
LABEL_93:

        goto LABEL_94;
      }

      v32 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v44 = [v110 length];
        v45 = [v109 length];
        *v113 = 136315906;
        v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
        v115 = 1024;
        LODWORD(v116) = 7192;
        WORD2(v116) = 2048;
        *(&v116 + 6) = v44;
        HIWORD(v116) = 2048;
        *v117 = v45;
        v33 = v32;
        v34 = "%s:%d Continuing... BorderAgent ID and XpanID length mismatch !!! xpan id length : %lu, border agent id length : %lu";
        v35 = 38;
        goto LABEL_45;
      }
    }

    else
    {
      v32 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v113 = 136315650;
        v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
        v115 = 1024;
        LODWORD(v116) = 7179;
        WORD2(v116) = 2112;
        *(&v116 + 6) = v22;
        v33 = v32;
        v34 = "%s : %d cannot parse dictionary data for server : %@, continue to next network";
        v35 = 28;
LABEL_45:
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, v113, v35);
      }
    }

LABEL_94:

LABEL_95:
LABEL_96:

LABEL_97:
  }

  if ([v108 count])
  {
    if ([v108 count] == 1)
    {
      v72 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:];
      }

      v73 = 1;
      goto LABEL_109;
    }

    if ([v108 count] >= 2)
    {
      [v108 sortUsingSelector:"localizedCaseInsensitiveCompare:"];
      for (j = 0; j < [v108 count]; ++j)
      {
        v84 = [v108 objectAtIndex:j];
        if (v111 <= 4)
        {
          v85 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            *v113 = 136316162;
            v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
            v115 = 1024;
            LODWORD(v116) = 7331;
            WORD2(v116) = 2112;
            *(&v116 + 6) = v105;
            HIWORD(v116) = 1024;
            *v117 = j;
            *&v117[4] = 2112;
            *&v117[6] = v84;
            _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "%s:%d: currentBAIdStr=%@, index=%d baIdStrArray=%@ ", v113, 0x2Cu);
          }
        }
      }

      v88 = [v108 count];
      if (v88 >= 1)
      {
        v89 = 0;
        if (v88 == 1)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        do
        {
          v91 = [v108 objectAtIndexedSubscript:v89];
          v92 = [v105 isEqualToString:v91];

          if (v92)
          {
            *a11 = 1;
          }

          ++v89;
        }

        while (v90 != v89);
      }
    }
  }

  else
  {
    v72 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:];
    }

    v73 = 0;
LABEL_109:

    *a11 = v73;
  }

  *a10 = [v100 count];
  v76 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
  {
    v77 = *a7;
    v78 = *a8;
    v79 = *a9;
    v80 = *a10;
    v81 = *a6;
    v82 = *a11;
    *v113 = 136316930;
    v114 = "[ThreadNetworkManagerInstance checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:]";
    v115 = 1024;
    LODWORD(v116) = 7346;
    WORD2(v116) = 1024;
    *(&v116 + 6) = v77;
    WORD5(v116) = 1024;
    HIDWORD(v116) = v78;
    *v117 = 1024;
    *&v117[2] = v79;
    *&v117[6] = 1024;
    *&v117[8] = v80;
    *&v117[12] = 1024;
    *&v117[14] = v81;
    v118 = 1024;
    LODWORD(v119) = v82;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "%s:%d: numAppleBRs=%d, numThirdPartyBRs=%d, isLeaderAppleDevice=%d, numThreadNetworks=%d isCurrentNodeMeshcopEntryFound=%d shouldRunTdm=%d", v113, 0x36u);
  }

  [(ThreadNetworkfinder *)self->_BAFinder clear];
  v75 = 1;
LABEL_124:

LABEL_125:
  return v75;
}

- (BOOL)updateMeshcopRelatedParams:(BOOL *)a3 numAppleBRs:(int *)a4 numThirdPartyBRs:(int *)a5 isLeaderAppleDevice:(BOOL *)a6 numThreadNwsFound:(int *)a7 shouldRunPeriodicTdm:(BOOL *)a8
{
  v9 = [(ThreadNetworkManagerInstance *)self getCurrentNetworkNameAndXpanid:a3];
  v38.var0 = 0;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v36, "NCP:ExtendedAddress");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v36 output:&v38];
    v11 = LODWORD(__p[0]) == 0;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    *__p = 0u;
    v42 = 0u;
    v11 = 1;
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
    if (v11)
    {
LABEL_7:
      any_to_string(&v38, __p);
      v12 = SBYTE7(v42);
      v13 = __p[0];
      v14 = +[NSString defaultCStringEncoding];
      if (v12 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = v13;
      }

      v16 = [NSString stringWithCString:v15 encoding:v14];
      v17 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v16];

      if (SBYTE7(v42) < 0)
      {
        operator delete(__p[0]);
      }

      v35.var0 = 0;
      v18 = self->_CtrInternalClientPtr;
      std::string::basic_string[abi:ne200100]<0>(v33, "Thread:Leader:ExtendedAddress");
      if (v18)
      {
        [(CtrInternalClient *)v18 getProperty:v33 output:&v35];
        v19 = LODWORD(__p[0]) == 0;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        *__p = 0u;
        v42 = 0u;
        v19 = 1;
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
        if (v19)
        {
          goto LABEL_22;
        }
      }

      else if (v19)
      {
LABEL_22:
        any_to_data(&v35, __p);
        v40 = *__p[0];
        __p[1] = __p[0];
        operator delete(__p[0]);
        encode_data_into_string(&v40, 8, v39, 0x14uLL, 0);
        v21 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v39;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "retrieved leader_ext_addr: %s", __p, 0xCu);
        }

        any_to_string(&v35, __p);
        v22 = SBYTE7(v42);
        v23 = __p[0];
        v24 = +[NSString defaultCStringEncoding];
        if (v22 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = v23;
        }

        v26 = [NSString stringWithCString:v25 encoding:v24];
        v27 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v26];

        if (SBYTE7(v42) < 0)
        {
          operator delete(__p[0]);
        }

        v28 = [NSData dataWithBytes:"FF" length:8];
        v29 = [v27 isEqualToData:v28];

        if (v29)
        {
          v30 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkManagerInstance updateMeshcopRelatedParams:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:];
          }
        }

        v20 = v29 ^ 1;
LABEL_38:
        if (v35.var0)
        {
          (*(*v35.var0 + 8))(v35.var0);
        }

        goto LABEL_40;
      }

      v31 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance updateMeshcopRelatedParams:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:];
      }

      v20 = 0;
      goto LABEL_38;
    }
  }

  else if (v11)
  {
    goto LABEL_7;
  }

  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCurrentBorderAgent];
  }

  v20 = 0;
LABEL_40:

  if (v38.var0)
  {
    (*(*v38.var0 + 8))(v38.var0);
  }

  return v20;
}

- (BOOL)checkIfMdnsIsPublishedForBAID
{
  v3 = [(ThreadNetworkManagerInstance *)self getCurrentNetworkNameAndXpanid];
  v19.var0 = 0;
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v15, "NCP:ExtendedAddress");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v15 output:&v19];
    v5 = LODWORD(__p[0]) == 0;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    *__p = 0u;
    v18 = 0u;
    v5 = 1;
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
LABEL_7:
    any_to_string(&v19, __p);
    v6 = SBYTE7(v18);
    v7 = __p[0];
    v8 = +[NSString defaultCStringEncoding];
    if (v6 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = v7;
    }

    v10 = [NSString stringWithCString:v9 encoding:v8];
    v11 = [(ThreadNetworkManagerInstance *)self dataFromHexString:v10];

    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = [(ThreadNetworkManagerInstance *)self checkIfNetworkIsFoundInMDNSScan:v3 borderAgentID:v11];
    if (v12)
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "mDNS record is published", __p, 2u);
      }
    }

    else
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkManagerInstance checkIfMdnsIsPublishedForBAID];
      }
    }

    goto LABEL_22;
  }

  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkManagerInstance getCurrentBorderAgent];
  }

  LOBYTE(v12) = 0;
LABEL_22:

  if (v19.var0)
  {
    (*(*v19.var0 + 8))(v19.var0);
  }

  return v12;
}

- (void)checkMeshcopMdns
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)createDriverInterface:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__ThreadNetworkManagerInstance_createDriverInterface___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadNetworkManagerInstance_MsgHandler:(uint64_t *)a1 message:(uint64_t *)a2 .cold.1(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)submitHistogramCAEvent:histValues:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)submitHistogramCAEvent:histValues:.cold.2()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)retrieveActiveDataSetRecordForUniqueId:(uint64_t)a1 record:.cold.2(uint64_t a1)
{
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)retrieveActiveDataSetRecordForUniqueId:record:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __78__ThreadNetworkManagerInstance_retrieveActiveDataSetRecordForUniqueId_record___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)retrieveCredentialsForUniqueId:(uint64_t)a1 credentialsRecord_t:.cold.2(uint64_t a1)
{
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)retrieveCredentialsForUniqueId:credentialsRecord_t:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateDataSetTLVs:creds:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.4()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.6()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.7()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.9()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.10()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.11()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.12()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)validateDataSetTLVs:creds:.cold.13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:(unsigned __int8 *)a1 creds:.cold.14(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.15()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.19()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.20()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateDataSetTLVs:creds:.cold.21()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.23()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.25()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)validateDataSetTLVs:creds:.cold.26()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateDataSetTLVs:creds:.cold.27()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateDataSetTLVs:creds:.cold.28()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateDataSetTLVs:creds:.cold.29()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateDataSetTLVs:creds:.cold.30()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)howToStartThreadNetwork:activeOperationalDataset:credentialsRecord_t:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updatePrimaryResident:isPrimaryResident:isPrimaryResidentThreadCapable:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)updateHomeThreadInfo:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadStop
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)threadLeave
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadStart:activeOperationalDataset:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadStart:activeOperationalDataset:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadStart:activeOperationalDataset:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)threadStart:activeOperationalDataset:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)threadStart:activeOperationalDataset:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)threadStart:activeOperationalDataset:output:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fillupThreadCredentialsToSelfHealThreadNetwork:(unsigned int *)a1 store:.cold.1(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __85__ThreadNetworkManagerInstance_fillupThreadCredentialsToSelfHealThreadNetwork_store___block_invoke_309_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __61__ThreadNetworkManagerInstance_getPreferredNetworkWithNoScan__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)joinerAttach:output:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)formNetworkWithAODForPrimaryOrSharedUser:(char *)a1 isPrimaryUser:(uint64_t *)a2 routerMode:geoAvailable:defaultChildNode:output:.cold.1(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)formNetworkWithAODForPrimaryOrSharedUser:(char *)a1 isPrimaryUser:(uint64_t *)a2 routerMode:geoAvailable:defaultChildNode:output:.cold.2(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)formNetworkWithAODForPrimaryOrSharedUser:isPrimaryUser:routerMode:geoAvailable:defaultChildNode:output:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)startThreadNetworkWithAOD:(char *)a1 output:(uint64_t *)a2 .cold.1(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)startThreadNetworkWithAOD:(char *)a1 output:(uint64_t *)a2 .cold.2(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)startThreadNetworkWithAOD:output:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)formNetworkWithAOD:(char *)a1 record:(uint64_t *)a2 output:.cold.1(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)formNetworkWithAOD:(char *)a1 record:(uint64_t *)a2 output:.cold.2(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updatePreferredNetworkForDatasetChange
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __70__ThreadNetworkManagerInstance_updatePreferredNetworkForDatasetChange__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getCurrentNetworkNameAndXpanid
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getCurrentNetworkCredentials
{
  OUTLINED_FUNCTION_18_1();
  *v2 = 136315650;
  OUTLINED_FUNCTION_13_1(v3, v4, v2);
  OUTLINED_FUNCTION_17_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)getCurrentBorderAgent
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getCurrentCredentialsDataSet
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)saveThreadConfigurationAOD:(uint64_t)a3 passPhrase:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a3;
  OUTLINED_FUNCTION_17_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void __70__ThreadNetworkManagerInstance_saveThreadConfigurationAOD_passPhrase___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __72__ThreadNetworkManagerInstance_saveThreadConfiguration_passPhrase_uuid___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveLastKnownJoinedNetwork:datasetRecord:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)formNewNetwork:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)attachToNetwork:(int *)a1 output:.cold.1(int *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)setChannelUsingChannelManger:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ThreadNetworkManagerInstance_startNetworkTopologyBuilder__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getCountOfThreadBorderRoutersWithMdns:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)checkIfNetworkIsFoundInMDNSScan:(os_log_t)log borderAgentID:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[ThreadNetworkManagerInstance checkIfNetworkIsFoundInMDNSScan:borderAgentID:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 7094;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : %d: Network :%@ not found", buf, 0x1Cu);
}

- (void)checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:.cold.1()
{
  v1[0] = 136315650;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d: currentBAIdStr=%@ is the only apple device advertising meshcop", v1, 0x1Cu);
}

- (void)checkAndUpdateNetworkParamsFromMdnsScan:borderAgentID:leaderBorderAgentID:isNwFound:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:.cold.2()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)updateMeshcopRelatedParams:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateMeshcopRelatedParams:numAppleBRs:numThirdPartyBRs:isLeaderAppleDevice:numThreadNwsFound:shouldRunPeriodicTdm:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkIfMdnsIsPublishedForBAID
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resetThreadSessionMetrics
{
  *(&qword_1004E5CB8 + 5) = 0;
  threadSessionMetrics[0] = 0u;
  *&qword_1004E5CB0 = 0u;
  *&dword_1004E5CC8 = 0u;
  *&qword_1004E5CD8 = 0u;
  *&qword_1004E5CE8 = 0u;
  v3 = qword_1004E5D28;
  qword_1004E5D28 = @"Regular-Stop";

  *&qword_1004E5D18 = 0u;
  *&qword_1004E5D08 = 0u;
  *&dword_1004E5CF8 = 0u;
  if (![(ThreadNetworkManagerInstance *)self getThreadSessionStatus])
  {

    [(ThreadNetworkManagerInstance *)self resetMetricsBetweenRoleChanges];
  }
}

- (void)updateThreadSessionStartTime
{
  *&threadSessionMetrics[0] = time_ms();
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v3 updateThreadSessionStartTime];
  }

  qword_1004E5CB8 = *&threadSessionMetrics[0];
  dword_1004E5CC0 = 0;
  byte_1004E5CC4 = 0;
  [(ThreadNetworkManagerInstance *)self resetMetricsBetweenRoleChanges];
  v4 = qword_1004E5D80;
  qword_1004E5D80 = @"Thread-Session-Start";

  *(&threadSessionMetrics[0] + 1) = time_ms();
  qword_1004E5CB0 = 0;
  qword_1004E5E00 = 0;
  qword_1004E5E08 = 0;
  mObjectWEDHistory = 0;
  v5 = qword_1004E5D28;
  qword_1004E5D28 = @"Regular-Stop";

  [(ThreadNetworkManagerInstance *)self CAresetCoexTaskPeriodMetrics];
  [(ThreadNetworkManagerInstance *)self noteBTWIFILoadOnThreadStart];
}

- (void)noteBTWIFILoadOnThreadStart
{
  v35 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "Command success");
  v3 = v33;
  v4 = SBYTE7(v34);
  v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];

  if (!v5)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 noteBTWIFILoadOnThreadStart:v10];
    }

LABEL_24:

    goto LABEL_25;
  }

  v6 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "coex:rcp2:btwifi:load");
  if (v6)
  {
    [v6 getProperty:__p output:&v35];
    v7 = v33 == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v33 = 0u;
  v34 = 0u;
  v7 = 1;
  if (v4 < 0)
  {
LABEL_4:
    operator delete(v3);
  }

LABEL_5:
  v3 = *(&v33 + 1);
  LOBYTE(v4) = HIBYTE(v34);
  HIBYTE(v34) = 0;
  BYTE8(v33) = 0;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    if (v35)
    {
      if (qword_1004E5D40)
      {
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&xmmword_1004E5D30, *(&xmmword_1004E5D30 + 1));
        *&xmmword_1004E5D30 = &xmmword_1004E5D30 + 8;
        qword_1004E5D40 = 0;
        *(&xmmword_1004E5D30 + 1) = 0;
      }

      boost::any_cast<std::map<std::string,boost::any>>(&v35, &v33);
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&xmmword_1004E5D30, *(&xmmword_1004E5D30 + 1));
      v8 = *(&v33 + 1);
      xmmword_1004E5D30 = v33;
      qword_1004E5D40 = v34;
      if (v34)
      {
        *(*(&v33 + 1) + 16) = &xmmword_1004E5D30 + 8;
        *&v33 = &v33 + 8;
        *(&v33 + 1) = 0;
        *&v34 = 0;
        v8 = 0;
      }

      else
      {
        *&xmmword_1004E5D30 = &xmmword_1004E5D30 + 8;
      }

      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v33, v8);
      if (*&threadSessionMetrics[0])
      {
        qword_1004E5CB8 = time_ms();
        goto LABEL_25;
      }

      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 noteBTWIFILoadOnThreadStart:v24];
      }
    }

    else
    {
      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 noteBTWIFILoadOnThreadStart:v17];
      }
    }

    goto LABEL_24;
  }

LABEL_25:
  if ((v4 & 0x80) != 0)
  {
    operator delete(v3);
  }

  if (v35)
  {
    (*(*v35 + 8))(v35);
  }
}

- (void)setIsAssociatedFirstTimeAfterThreadStart
{
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8 && ![(ThreadNetworkManagerInstance *)self getIsAssociatedFirstTimeAfterThreadStart])
  {
    *(&threadSessionMetrics[0] + 1) = time_ms();
    byte_1004E5CC4 = 1;
  }
}

- (BOOL)generateThreadSessionEvent:(BOOL)a3
{
  v74 = a3;
  if (![(ThreadNetworkManagerInstance *)self getIsAssociatedFirstTimeAfterThreadStart])
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = *(&threadSessionMetrics[0] + 1) - *&threadSessionMetrics[0];
  v4 = *(&threadSessionMetrics[0] + 1) <= *&threadSessionMetrics[0] || *&threadSessionMetrics[0] == 0;
  if (v4)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v5 generateThreadSessionEvent:v6, v7, v8, v9, v10, v11, v12];
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = +[NSMutableDictionary dictionary];
  [(ThreadNetworkManagerInstance *)self getCurrentBTWifiLoad:v13];
  v14 = time_ms();
  qword_1004E5CB0 = v14;
  if (v14 <= *&threadSessionMetrics[0] || *&threadSessionMetrics[0] == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v14 - *&threadSessionMetrics[0]) / 0x3E8;
  }

  v17 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "TNMRCP2:CA:";
    *&buf[12] = 2048;
    *&buf[14] = *&threadSessionMetrics[0];
    v86 = 2048;
    v87 = qword_1004E5CB0;
    v88 = 2048;
    v89 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, " %s:threadStartTime:%lld,threadStopTime:%lld,SessionDuration:%lld sec", buf, 0x2Au);
  }

  if (byte_1004E5C7F >= 0)
  {
    v18 = &mDaemonVersion;
  }

  else
  {
    v18 = mDaemonVersion;
  }

  v19 = [NSString stringWithUTF8String:v18];
  [v13 setObject:v19 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v20 = &mVendorVersion;
  }

  else
  {
    v20 = mVendorVersion;
  }

  v21 = [NSString stringWithUTF8String:v20];
  [v13 setObject:v21 forKey:@"header_vendor_version"];

  v22 = [NSNumber numberWithUnsignedLong:v3];
  [v13 setObject:v22 forKey:@"duration_first_association"];

  v23 = [NSNumber numberWithUnsignedLong:v16];
  [v13 setObject:v23 forKey:@"duration_thread_session"];

  v24 = [NSNumber numberWithUnsignedLong:dword_1004E5CC0];
  [v13 setObject:v24 forKey:@"role_change_count"];

  [(ThreadNetworkManagerInstance *)self getThreadSessionWEDConnectionHistory:v13];
  v25 = [NSNumber numberWithUnsignedLongLong:qword_1004E5E08];
  [v13 setObject:v25 forKey:@"wed_link_failure_count"];

  if (v74)
  {
    [v13 setObject:@"timer" forKey:@"trigger_type"];
    v26 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadStartFailDueToBluetoothOff]];
    [v13 setObject:v26 forKey:@"BTOff_threadStart_count"];

    v27 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToBluetoothOff]];
    [v13 setObject:v27 forKey:@"BTOff_threadStop_count"];

    v28 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadStartFailDueToEscoOn]];
    [v13 setObject:v28 forKey:@"EscoOn_threadStart_count"];

    v29 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToEscoOn]];
    [v13 setObject:v29 forKey:@"EscoOn_threadStop_count"];

    v30 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToAPOff]];
    [v13 setObject:v30 forKey:@"APOff_threadStop_count"];
  }

  else
  {
    if (v16 >= 0x709 && ![(ThreadNetworkManagerInstance *)self mIsTestClient])
    {
      v31 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "TNMRCP2:CA:";
        *&buf[12] = 2048;
        *&buf[14] = *&threadSessionMetrics[0];
        v86 = 2048;
        v87 = qword_1004E5CB0;
        v88 = 2048;
        v89 = v16;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, " %sthreadStartTime:%lld,triggered ABC_THREAD_SESSION_DURATION_EXCEEDED:threadStopTime:%lld,SessionDuration:%lld sec", buf, 0x2Au);
      }

      v32 = RcpHostContext::sRcpHostContext;
      if (!RcpHostContext::sRcpHostContext)
      {
        __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "Performance");
      std::string::basic_string[abi:ne200100]<0>(v80, "Thread session duration");
      std::string::basic_string[abi:ne200100]<0>(__p, "Thread session duration exceeded");
      RcpHostContext::captureABC(v32, v82, v80, __p, 0, 1);
      if (v79 < 0)
      {
        operator delete(__p[0]);
      }

      if (v81 < 0)
      {
        operator delete(v80[0]);
      }

      if (v83 < 0)
      {
        operator delete(v82[0]);
      }
    }

    [(ThreadNetworkManagerInstance *)self setMIsTestClient:0];
    [v13 setObject:@"event" forKey:@"trigger_type"];
    [v13 setObject:qword_1004E5D28 forKey:@"threadstop_reason"];
  }

  v33 = [NSNumber numberWithUnsignedLong:dword_1004E5CC8];
  [v13 setObject:v33 forKey:@"start_pairing_total_count"];

  v34 = [NSNumber numberWithUnsignedLong:dword_1004E5CCC];
  [v13 setObject:v34 forKey:@"start_pairing_success_count"];

  if (dword_1004E5CC8 >= dword_1004E5CCC)
  {
    v35 = (dword_1004E5CC8 - dword_1004E5CCC);
  }

  else
  {
    v35 = 0;
  }

  v36 = [NSNumber numberWithUnsignedLong:v35];
  [v13 setObject:v36 forKey:@"start_pairing_failure_count"];

  v37 = [NSNumber numberWithUnsignedLong:dword_1004E5CD0];
  [v13 setObject:v37 forKey:@"stop_pairing_total_count"];

  v38 = [NSNumber numberWithUnsignedLong:qword_1004E5CD8 / 0x3E8uLL];
  [v13 setObject:v38 forKey:@"duration_pairing_total"];

  v39 = [NSNumber numberWithUnsignedLong:qword_1004E5CE0 / 0x3E8uLL];
  [v13 setObject:v39 forKey:@"duration_pairing_success"];

  v40 = [NSNumber numberWithUnsignedLong:dword_1004E5CF8];
  [v13 setObject:v40 forKey:@"start_fwupdate_total_count"];

  v41 = [NSNumber numberWithUnsignedLong:dword_1004E5CFC];
  [v13 setObject:v41 forKey:@"start_fwupdate_success_count"];

  if (dword_1004E5CF8 >= dword_1004E5CFC)
  {
    v42 = (dword_1004E5CF8 - dword_1004E5CFC);
  }

  else
  {
    v42 = 0;
  }

  v43 = [NSNumber numberWithUnsignedLong:v42];
  [v13 setObject:v43 forKey:@"start_fwupdate_failure_count"];

  v44 = [NSNumber numberWithUnsignedLong:dword_1004E5D00];
  [v13 setObject:v44 forKey:@"stop_fwupdate_total_count"];

  v45 = [NSNumber numberWithUnsignedLong:qword_1004E5D08 / 0x3E8uLL];
  [v13 setObject:v45 forKey:@"duration_fwupdate_total"];

  v46 = [NSNumber numberWithUnsignedLong:qword_1004E5D10 / 0x3E8uLL];
  [v13 setObject:v46 forKey:@"duration_fwupdate_success"];

  if (qword_1004E5D58)
  {
    v47 = qword_1004E5D48;
    if (qword_1004E5D48 != &qword_1004E5D50)
    {
      do
      {
        v48 = (v47 + 32);
        if (*(v47 + 55) < 0)
        {
          v48 = *v48;
        }

        v49 = [NSString stringWithUTF8String:v48];
        v50 = [@"duration_" stringByAppendingString:v49];
        v51 = v49;
        std::string::basic_string[abi:ne200100]<0>(buf, [v49 UTF8String]);
        v52 = v50;
        std::string::basic_string[abi:ne200100]<0>(v76, [v50 UTF8String]);
        v53 = *&buf[8];
        if (v86 >= 0)
        {
          v53 = HIBYTE(v86);
        }

        v54 = v77;
        v55 = v77;
        if (v53)
        {
          if ((v77 & 0x80u) != 0)
          {
            v54 = v76[1];
          }

          if (v54)
          {
            v84 = buf;
            v56 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&qword_1004E5D48, buf);
            v57 = [NSNumber numberWithUnsignedLong:any_to_uint64(v56 + 7, 0) / 0x3E8];
            if ((v77 & 0x80u) == 0)
            {
              v58 = v76;
            }

            else
            {
              v58 = v76[0];
            }

            v59 = [NSString stringWithUTF8String:v58];
            [v13 setObject:v57 forKey:v59];

            v55 = v77;
          }
        }

        if ((v55 & 0x80) != 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v86) < 0)
        {
          operator delete(*buf);
        }

        v60 = *(v47 + 8);
        if (v60)
        {
          do
          {
            v61 = v60;
            v60 = *v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v61 = *(v47 + 16);
            v4 = *v61 == v47;
            v47 = v61;
          }

          while (!v4);
        }

        v47 = v61;
      }

      while (v61 != &qword_1004E5D50);
    }
  }

  else
  {
    v62 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v62 generateThreadSessionEvent:v63, v64, v65, v66, v67, v68, v69];
    }
  }

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v13];
  v70 = v13;
  AnalyticsSendEventLazy();

  [(ThreadNetworkManagerInstance *)self resetThreadSessionMetrics];
  [(ThreadNetworkManagerInstance *)self resetThreadSessionWEDConnectionHistory];
  [(ThreadNetworkManagerInstance *)self CAresetCoexTaskPeriodMetrics];
  if (v74)
  {
    [(ThreadNetworkManagerInstance *)self resetPeriodicRCP2_threadSessionMetrics];
    if ([(ThreadNetworkManagerInstance *)self getThreadSessionStatus])
    {
      *&threadSessionMetrics[0] = time_ms();
      qword_1004E5CB8 = *&threadSessionMetrics[0];
      [(ThreadNetworkManagerInstance *)self noteBTWIFILoadOnThreadStart];
    }
  }

  v71 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = "sessionEnd";
    if (v74)
    {
      v72 = "Timer";
    }

    *buf = 136315138;
    *&buf[4] = v72;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, " Triggered bluestoneThreadSessionInfo on %s.", buf, 0xCu);
  }

  return 1;
}

- (void)generateStateInfoEventMetrics
{
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]!= 8)
  {
    v3 = +[NSMutableDictionary dictionary];
    if (byte_1004E5C7F >= 0)
    {
      v4 = &mDaemonVersion;
    }

    else
    {
      v4 = mDaemonVersion;
    }

    v5 = [NSString stringWithUTF8String:v4];
    [v3 setObject:v5 forKey:@"header_daemon_version"];

    if (byte_1004E5C97 >= 0)
    {
      v6 = &mVendorVersion;
    }

    else
    {
      v6 = mVendorVersion;
    }

    v7 = [NSString stringWithUTF8String:v6];
    [v3 setObject:v7 forKey:@"header_vendor_version"];

    nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], __p);
    if (v19 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    v10 = v9;
    v11 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v9 UTF8String], +[NSString defaultCStringEncoding](NSString, "defaultCStringEncoding"));

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    [v3 setObject:v11 forKey:@"thread_nw_state"];
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      nl::wpantund::ncp_state_to_string([(ThreadNetworkManagerInstance *)self lastKnownNCPState], __p);
      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = [NSString stringWithUTF8String:v13];
      v15 = v14;
      v16 = [v14 UTF8String];
      *buf = 136315138;
      v21 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "TNM:NCPState:%s is not associated.", buf, 0xCu);

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v17 = v3;
    AnalyticsSendEventLazy();
  }
}

- (void)getCurrentBTWifiLoad:(id)a3
{
  v4 = a3;
  v28 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v5 = *buf;
  v6 = SBYTE7(v30);
  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;

  if (v9)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, " %sCouldn't  get BTWifiLoadinfo, as input is Null", buf, 0xCu);
    }

    goto LABEL_30;
  }

  v11 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "coex:rcp2:btwifi:load");
  if (!v11)
  {
    *buf = 0u;
    v30 = 0u;
    v12 = 1;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [v11 getProperty:__p output:&v28];
  v12 = *buf == 0;
  if (v6 < 0)
  {
LABEL_13:
    operator delete(v5);
  }

LABEL_14:
  v5 = *&buf[8];
  LOBYTE(v6) = HIBYTE(v30);
  HIBYTE(v30) = 0;
  buf[8] = 0;
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    if (v28)
    {
      v25 = (*(*v28 + 24))(v28);
      [(ThreadNetworkManagerInstance *)self calculateCoexTaskPeriod:&v25];
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      v13 = xpc_null_create();
      v24 = v13;
      v14 = v28;
      if (v28)
      {
        v14 = (*(*v28 + 24))(v28);
      }

      v23 = v14;
      v15.var0 = &v23;
      convert_ValMap_to_xpc_object(v15, "coex:rcp2:btwifi:load", "PropGet", buf);
      v16 = *buf;
      v17 = xpc_null_create();
      v18 = *buf;
      *buf = v17;

      v24 = v16;
      v19 = *buf;
      *buf = 0;

      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      *buf = &v24;
      *&buf[8] = "value";
      v20 = xpc::dict::object_proxy::operator*(buf);
      CAMetricsHandlers_handle_getprop_BTWifiLoadInfo(v20, v4);

      v21 = v24;
      v24 = 0;
    }

    else
    {
      v22 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "TNMRCP2:CA:";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, " %sCouldn't get BTWifiLoadinfo,ValMap empty", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if ((v6 & 0x80) != 0)
  {
    operator delete(v5);
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }
}

- (void)CAgetCoexCounter
{
  v7 = 0;
  v2 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(v5, "vendor:coex:rcp2:counters");
  if (v2)
  {
    [v2 getProperty:v5 output:&v7];
    v3 = LODWORD(__p[0]) == 0;
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    *__p = 0u;
    v9 = 0u;
    v3 = 1;
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (!v3)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, " %sFail to get coex state counters", __p, 0xCu);
    }
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

- (void)updateThreadSessionmetrics:(id)a3 previousNodeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "TNMRCP2:CA:";
    v28 = 2080;
    v29 = [v7 UTF8String];
    v30 = 2080;
    v31 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%sPrevRole:%s,CurRole:%s", buf, 0x20u);
  }

  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  v9 = v6;
  std::string::basic_string[abi:ne200100]<0>(buf, [v6 UTF8String]);
  v10 = nl::wpantund::string_to_node_type(buf);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(*buf);
  }

  [(ThreadNetworkManagerInstance *)self setIsAssociatedFirstTimeAfterThreadStart];
  [(ThreadNetworkManagerInstance *)self generateStateInfoEventMetrics];
  [(ThreadNetworkManagerInstance *)self getNCPState:0];
  if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]== 8 && v10)
  {
    if ([(ThreadNetworkManagerInstance *)self lastKnownNCPState]!= 8)
    {
      goto LABEL_21;
    }

    if (byte_1004E5D70)
    {
      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = v7;
        v13 = [v7 UTF8String];
        v14 = v6;
        v15 = [v6 UTF8String];
        *buf = 136315650;
        *&buf[4] = "TNMRCP2:CA:";
        v28 = 2080;
        v29 = v13;
        v30 = 2080;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%sBecause of no intermediate transition notification,skipping role transition CA event where prevRole:%s, curRole:%s", buf, 0x20u);
      }
    }

    else
    {
      mThreadInfoBetweenRoles = time_ms();
      v26[0] = qword_1004E5D80;
      v26[1] = @"->";
      v26[2] = v6;
      v20 = [NSArray arrayWithObjects:v26 count:3];
      v21 = [v20 componentsJoinedByString:@" "];
      v22 = qword_1004E5D78;
      qword_1004E5D78 = v21;

      [(ThreadNetworkManagerInstance *)self getMetricsBetweenRoleChanges];
      byte_1004E5D70 = 1;
    }

    objc_storeStrong(&qword_1004E5D88, qword_1004E5D80);
    v25 = v6;
    v19 = [NSArray arrayWithObjects:&v25 count:1];
    v23 = [v19 componentsJoinedByString:&stru_1004D2028];
    v24 = qword_1004E5D80;
    qword_1004E5D80 = v23;
  }

  else
  {
    if (byte_1004E5D70 == 1)
    {
      v16 = time_ms();
      v17 = 0;
      qword_1004E5D68 = v16;
      byte_1004E5D70 = 0;
      if (v16 > mThreadInfoBetweenRoles && mThreadInfoBetweenRoles)
      {
        v17 = (v16 - mThreadInfoBetweenRoles) / 0x3E8;
      }

      qword_1004E5D90 = v17;
      mThreadInfoBetweenRoles = 0;
    }

    v18 = qword_1004E5D80;
    v19 = qword_1004E5D88;
    qword_1004E5D88 = v18;
  }

LABEL_21:
  if ((v10 & 0xFFFFFFFD) != 0)
  {
    [(ThreadNetworkManagerInstance *)self CAgetCoexCounter];
    [(ThreadNetworkManagerInstance *)self configureCAMetrics:0];
    [(ThreadNetworkManagerInstance *)self incrementNumberOfRoleChangeInCurrentThreadSession];
  }
}

- (id)CAgetPrevValidDeviceRole
{
  if (qword_1004E5D88)
  {
    v3 = qword_1004E5D88;
  }

  else
  {
    v3 = @"NA";
  }

  return v3;
}

- (void)resetRCP2CoexMetrics
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v3 = *buf;
  v4 = SBYTE7(v13);
  v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:coex:rcp2:state:table:reset");
  if (v5)
  {
    [v5 setProperty:__p property_val:"0"];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v13 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = SHIBYTE(v13);
  HIBYTE(v13) = 0;
  buf[8] = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%sReset kWPANTUNDVendor_CoEx_RCP2_State_Table_Reset stats", buf, 0xCu);
    }
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

- (void)getRCP2CoexMetrics:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableDictionary dictionary];
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v6 = *buf;
  v7 = SBYTE7(v32);
  v8 = xpc_null_create();
  v34 = v8;
  if (byte_1004E5C7F >= 0)
  {
    v9 = &mDaemonVersion;
  }

  else
  {
    v9 = mDaemonVersion;
  }

  v10 = [NSString stringWithUTF8String:v9];
  [v5 setObject:v10 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v11 = &mVendorVersion;
  }

  else
  {
    v11 = mVendorVersion;
  }

  v12 = [NSString stringWithUTF8String:v11];
  [v5 setObject:v12 forKey:@"header_vendor_version"];

  v33 = 0;
  v13 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "coex:rcp2:coex:counters:asvalmap");
  if (v13)
  {
    [v13 getProperty:__p output:&v33];
    v14 = *buf == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *buf = 0u;
  v32 = 0u;
  v14 = 1;
  if (v7 < 0)
  {
LABEL_9:
    operator delete(v6);
  }

LABEL_10:
  v15 = *&buf[8];
  v16 = SHIBYTE(v32);
  HIBYTE(v32) = 0;
  buf[8] = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v17 = v33;
    if (v33)
    {
      v17 = (*(*v33 + 24))(v33);
    }

    v28 = v17;
    v18.var0 = &v28;
    convert_ValMap_to_xpc_object(v18, "coex:rcp2:coex:counters:asvalmap", "PropGet", buf);
    v19 = *buf;
    v20 = xpc_null_create();
    v21 = *buf;
    *buf = v20;

    v34 = v19;
    v22 = *buf;
    *buf = 0;

    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    *buf = &v34;
    *&buf[8] = "value";
    v23 = xpc::dict::object_proxy::operator*(buf);
    CAMetricsHandlers_handle_getprop_vendorcoex_RCP2_counters(v23, v5);
  }

  if (v3)
  {
    v24 = @"timer";
  }

  else
  {
    v24 = @"event";
  }

  [v5 setObject:v24 forKey:@"trigger_type"];
  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
  v25 = v5;
  AnalyticsSendEventLazy();
  v26 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Triggered bluestoneCoexMetrics", buf, 2u);
  }

  [(ThreadNetworkManagerInstance *)self resetRCP2CoexMetrics];
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v27 = v34;
  v34 = 0;

  if (v16 < 0)
  {
    operator delete(v15);
  }
}

- (void)resetMetricsBetweenRoleChanges
{
  mThreadInfoBetweenRoles = 0;
  qword_1004E5D68 = 0;
  byte_1004E5D70 = 0;
  v2 = qword_1004E5D88;
  qword_1004E5D88 = @"unknown";
  qword_1004E5D90 = 0;

  v3 = qword_1004E5D80;
  qword_1004E5D80 = @"unknown";
}

- (void)CAgetPcapMetrics:(BOOL)a3
{
  v3 = a3;
  if ([(ThreadNetworkManagerInstance *)self getThreadSessionStatus])
  {
    v5 = +[NSMutableDictionary dictionary];
    std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
    v6 = *buf;
    v7 = SBYTE7(v36);
    v34 = xpc_null_create();
    if (byte_1004E5C7F >= 0)
    {
      v8 = &mDaemonVersion;
    }

    else
    {
      v8 = mDaemonVersion;
    }

    v9 = [NSString stringWithUTF8String:v8];
    [v5 setObject:v9 forKey:@"header_daemon_version"];

    if (byte_1004E5C97 >= 0)
    {
      v10 = &mVendorVersion;
    }

    else
    {
      v10 = mVendorVersion;
    }

    v11 = [NSString stringWithUTF8String:v10];
    [v5 setObject:v11 forKey:@"header_vendor_version"];

    v33 = 0;
    v12 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(__p, "rcp2PcapState");
    if (v12)
    {
      [v12 getProperty:__p output:&v33];
      v13 = *buf == 0;
      if ((v7 & 0x80000000) == 0)
      {
LABEL_11:
        v14 = *&buf[8];
        v15 = SHIBYTE(v36);
        HIBYTE(v36) = 0;
        buf[8] = 0;
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        v16 = v33;
        if (v33)
        {
          v16 = (*(*v33 + 24))(v33);
        }

        v30 = v16;
        v17.var0 = &v30;
        convert_ValMap_to_xpc_object(v17, "rcp2PcapState", "PropGet", buf);
        v18 = *buf;
        v19 = xpc_null_create();
        v20 = *buf;
        *buf = v19;

        v21 = v34;
        v34 = v18;

        v22 = *buf;
        *buf = 0;

        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        *buf = &v34;
        *&buf[8] = "value";
        v23 = xpc::dict::object_proxy::operator*(buf);
        v24 = CAMetricsHandlers_handle_getprop_RCP2_generic_hist(v23, v5, 0xDu, @"rcp2PcapState") == 1;

        if (v24)
        {
          v25 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "TNMRCP2:CA:";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%sCouldn't send rcp2PcapState", buf, 0xCu);
          }
        }

        else
        {
LABEL_24:
          if (v3)
          {
            v26 = @"timer";
          }

          else
          {
            v26 = @"event";
          }

          [v5 setObject:v26 forKey:@"trigger_type"];
          [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
          v29 = v5;
          AnalyticsSendExplodingEventLazy();
          v27 = log_get_logging_obg("com.apple.wpantund.nm", "default");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Triggered bluestonePcapStateInfo", buf, 2u);
          }

          [(ThreadNetworkManagerInstance *)self resetMetrics:@"rcp2PcapStateReset"];
        }

        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        v28 = v34;
        v34 = 0;

        if (v15 < 0)
        {
          operator delete(v14);
        }

        goto LABEL_34;
      }
    }

    else
    {
      *buf = 0u;
      v36 = 0u;
      v13 = 1;
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    operator delete(v6);
    goto LABEL_11;
  }

  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "TNMRCP2:CA:";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, " %sCouldn't send rcp2PcapState, threadSession is not active", buf, 0xCu);
  }

LABEL_34:
}

- (void)resetMetrics:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v5 = *buf;
  v6 = SBYTE7(v17);
  v7 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  v8 = v4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  if (v7)
  {
    [v7 setProperty:__p property_val:"0"];
    v9 = *buf == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v17 = 0u;
  v9 = 1;
  if (v6 < 0)
  {
LABEL_3:
    operator delete(v5);
  }

LABEL_4:
  v10 = *&buf[8];
  v11 = SHIBYTE(v17);
  HIBYTE(v17) = 0;
  buf[8] = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v4;
      -[ThreadNetworkManagerInstance(RCP2CAMetrics_extension) resetMetrics:].cold.1([v4 UTF8String], buf, v12);
    }
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

- (void)getMetricsBetweenRoleChanges
{
  v3 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v4 = &mDaemonVersion;
  }

  else
  {
    v4 = mDaemonVersion;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [v3 setObject:v5 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v6 = &mVendorVersion;
  }

  else
  {
    v6 = mVendorVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v3 setObject:v7 forKey:@"header_vendor_version"];

  if (qword_1004E5D68)
  {
    v8 = mThreadInfoBetweenRoles - qword_1004E5D68;
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSNumber numberWithUnsignedLongLong:v8];
  [v3 setObject:v9 forKey:@"duration_role_detach_to_attach"];

  v10 = [NSNumber numberWithUnsignedLongLong:qword_1004E5D90];
  [v3 setObject:v10 forKey:@"duration_prev_role"];

  std::string::basic_string[abi:ne200100]<0>(__p, [qword_1004E5D78 UTF8String]);
  if (v29 < 0)
  {
    if (__p[1])
    {
      v11 = __p[0];
      goto LABEL_15;
    }
  }

  else if (v29)
  {
    v11 = __p;
LABEL_15:
    v12 = [NSString stringWithUTF8String:v11];
    [v3 setObject:v12 forKey:@"from_to_role"];
    goto LABEL_18;
  }

  [v3 setObject:@"NA" forKey:@"from_to_role"];
  v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v12 getMetricsBetweenRoleChanges:v13];
  }

LABEL_18:

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v3];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = __85__ThreadNetworkManagerInstance_RCP2CAMetrics_extension__getMetricsBetweenRoleChanges__block_invoke;
  v26 = &unk_1004C1808;
  v20 = v3;
  v27 = v20;
  AnalyticsSendEventLazy();
  v21 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Triggered bluestoneRoleTransitionInfo", v22, 2u);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)resetPeriodicRCP2_threadSessionMetrics
{
  [(ThreadNetworkManagerInstance *)self resetCounterThreadSessionStoppedDueToBluetoothOff];
  [(ThreadNetworkManagerInstance *)self resetCounterThreadStartFailDueToBluetoothOff];
  [(ThreadNetworkManagerInstance *)self resetCounterThreadSessionStoppedDueToEscoOn];
  [(ThreadNetworkManagerInstance *)self resetCounterThreadStartFailDueToEscoOn];

  [(ThreadNetworkManagerInstance *)self resetCounterThreadSessionStoppedDueToAPOff];
}

- (void)getThreadSessionWEDConnectionHistory:(id)a3
{
  v8 = a3;
  v3 = [NSNumber numberWithUnsignedInt:mObjectWEDHistory];
  [v8 setObject:v3 forKey:@"wed_total_conn_req_count"];

  v4 = [NSNumber numberWithUnsignedInt:HIDWORD(mObjectWEDHistory)];
  [v8 setObject:v4 forKey:@"wed_conn_req_success_count"];

  v5 = [NSNumber numberWithUnsignedInt:HIDWORD(qword_1004E5E00)];
  [v8 setObject:v5 forKey:@"wed_conn_req_fail_count"];

  v6 = [NSNumber numberWithUnsignedInt:HIDWORD(qword_1004E5E08)];
  [v8 setObject:v6 forKey:@"wed_conn_req_kbusy_fail_count"];

  v7 = [NSNumber numberWithUnsignedInt:qword_1004E5E00];
  [v8 setObject:v7 forKey:@"wed_duplicate_conn_req_count"];
}

- (void)resetThreadSessionWEDConnectionHistory
{
  mObjectWEDHistory = 0;
  qword_1004E5E00 = 0;
  qword_1004E5E08 = 0;
}

- (void)getStreamRawResponseHistogramMetric:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableDictionary dictionary];
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v6 = *buf;
  v7 = SBYTE7(v36);
  v34 = xpc_null_create();
  if (byte_1004E5C7F >= 0)
  {
    v8 = &mDaemonVersion;
  }

  else
  {
    v8 = mDaemonVersion;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [v5 setObject:v9 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v10 = &mVendorVersion;
  }

  else
  {
    v10 = mVendorVersion;
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v5 setObject:v11 forKey:@"header_vendor_version"];

  v33 = 0;
  v12 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "streamRawRespTimeHist");
  if (v12)
  {
    [v12 getProperty:__p output:&v33];
    v13 = *buf == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *buf = 0u;
  v36 = 0u;
  v13 = 1;
  if (v7 < 0)
  {
LABEL_9:
    operator delete(v6);
  }

LABEL_10:
  v14 = *&buf[8];
  v15 = SHIBYTE(v36);
  HIBYTE(v36) = 0;
  buf[8] = 0;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v16 = v33;
  if (v33)
  {
    v16 = (*(*v33 + 24))(v33);
  }

  v30 = v16;
  v17.var0 = &v30;
  convert_ValMap_to_xpc_object(v17, "streamRawRespTimeHist", "PropGet", buf);
  v18 = *buf;
  v19 = xpc_null_create();
  v20 = *buf;
  *buf = v19;

  v21 = v34;
  v34 = v18;

  v22 = *buf;
  *buf = 0;

  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  *buf = &v34;
  *&buf[8] = "value";
  v23 = xpc::dict::object_proxy::operator*(buf);
  v24 = CAMetricsHandlers_handle_getprop_RCP2_generic_hist(v23, v5, 0x32u, @"streamRawRespTimeHist") == 1;

  if (v24)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, " %sCouldn't send streamRawRespTimeHist", buf, 0xCu);
    }
  }

  else
  {
LABEL_21:
    if (v3)
    {
      v26 = @"timer";
    }

    else
    {
      v26 = @"event";
    }

    [v5 setObject:v26 forKey:@"trigger_type"];
    [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
    v29 = v5;
    AnalyticsSendExplodingEventLazy();
    v27 = log_get_logging_obg("com.apple.wpantund.nm", "default");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Triggered bluestoneStreamRawResponseTimeHist", buf, 2u);
    }

    [(ThreadNetworkManagerInstance *)self resetMetrics:@"streamRawRespTimeHistReset"];
  }

  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v28 = v34;
  v34 = 0;

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

- (void)resetNetworkRadioHistogramMetrics
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "Command success");
  v3 = v19;
  v4 = SBYTE7(v20);
  v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:MAC:packet:RSSIHistogram");
  if (v5)
  {
    [v5 setProperty:__p property_val:"0"];
    v6 = v19 == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = 0u;
  v20 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *(&v19 + 1);
  v8 = SHIBYTE(v20);
  HIBYTE(v20) = 0;
  BYTE8(v19) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v6)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 resetNetworkRadioHistogramMetrics:v10];
    }
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

- (void)noteTimeWhenWEDAttachStart:(id)a3
{
  v4 = a3;
  if (qword_1004E5DF0 != v4 && byte_1004E5DE8 == 0)
  {
    v6 = v4;
    byte_1004E5DE8 = 0;
    *&currentWEDInfo = time_ms();
    objc_storeStrong(&qword_1004E5DF0, a3);
    v4 = v6;
  }
}

- (void)updateWEDConnectionReqDupCount
{
  if (qword_1004E5E00 == -1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%sdupConnReq exceeds uint32 range.", &v3, 0xCu);
    }
  }

  else
  {
    LODWORD(qword_1004E5E00) = qword_1004E5E00 + 1;
  }
}

- (void)noteTimeWhenWEDAttachCompleteSuccessOrFail:(BOOL)a3
{
  v3 = a3;
  v4 = time_ms();
  v5 = v4;
  *(&currentWEDInfo + 1) = v4;
  if (!v3)
  {
    if (HIDWORD(qword_1004E5E00) == -1)
    {
      v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "TNMRCP2:CA:";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%sfailureConnReq exceeds uint32 range.", &v9, 0xCu);
      }
    }

    else
    {
      ++HIDWORD(qword_1004E5E00);
    }

    byte_1004E5DE8 = 0;
    qword_1004E5DD0 = 0;
    qword_1004E5DD8 = v5 - currentWEDInfo;
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v9 = 136315138;
    v10 = "TNMRCP2:CA:";
    v7 = "%sWED Attach failed";
    goto LABEL_14;
  }

  if (v4 >= currentWEDInfo)
  {
    qword_1004E5DD0 = v4 - currentWEDInfo;
    qword_1004E5DD8 = 0;
    byte_1004E5DE8 = 1;
    if (HIDWORD(mObjectWEDHistory) != -1)
    {
      ++HIDWORD(mObjectWEDHistory);
      return;
    }

    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "TNMRCP2:CA:";
      v7 = "%ssuccessfulConnReq exceeds uint32 range.";
      goto LABEL_14;
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "TNMRCP2:CA:";
      v7 = "%sWEDAttachComplete time less than WEDAttachStart";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
    }
  }

LABEL_15:
}

- (void)noteTimeWhenWEDDetachStart
{
  if (currentWEDInfo)
  {
    qword_1004E5DC0 = time_ms();
  }
}

- (void)noteTimeWhenWEDDetachCompleteSuccessOrFail:(BOOL)a3
{
  v3 = a3;
  v5 = time_ms();
  qword_1004E5DC8 = v5;
  if (v5 >= qword_1004E5DC0)
  {
    byte_1004E5DE8 = 0;
    if (v3)
    {
      qword_1004E5DE0 = v5 - currentWEDInfo;
    }

    else
    {
      qword_1004E5DD8 = v5 - currentWEDInfo;
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%sWED Detach time less than Attach time", &v7, 0xCu);
    }
  }

  [(ThreadNetworkManagerInstance *)self getCurrentWEDInfoMetrics];
}

- (void)updateBusyFailureCount
{
  if (HIDWORD(qword_1004E5E08) == -1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%sbusyFailures exceeds uint32 range.", &v3, 0xCu);
    }
  }

  else
  {
    ++HIDWORD(qword_1004E5E08);
  }
}

- (void)updateLinkFailureCount
{
  if (qword_1004E5E08 == -1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%slinkFailures exceeds uint32 range.", &v3, 0xCu);
    }
  }

  else
  {
    LODWORD(qword_1004E5E08) = qword_1004E5E08 + 1;
  }
}

- (void)updateWEDConnectionCount
{
  if (mObjectWEDHistory == -1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "TNMRCP2:CA:";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%stotalConnReq exceeds uint32 range.", &v3, 0xCu);
    }
  }

  else
  {
    LODWORD(mObjectWEDHistory) = mObjectWEDHistory + 1;
  }
}

- (void)resetCurrentWEDInfoMetrics
{
  qword_1004E5DD0 = 0;
  qword_1004E5DD8 = 0;
  byte_1004E5DE8 = 0;
  qword_1004E5DE0 = 0;
  v2 = qword_1004E5DF0;
  qword_1004E5DF0 = 0;

  currentWEDInfo = 0u;
  *&qword_1004E5DC0 = 0u;
}

- (void)getCurrentWEDInfoMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  if (byte_1004E5C7F >= 0)
  {
    v4 = &mDaemonVersion;
  }

  else
  {
    v4 = mDaemonVersion;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [v3 setObject:v5 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v6 = &mVendorVersion;
  }

  else
  {
    v6 = mVendorVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v3 setObject:v7 forKey:@"header_vendor_version"];

  v8 = [NSNumber numberWithUnsignedLongLong:qword_1004E5DD0];
  [v3 setObject:v8 forKey:@"wed_duration_to_attach"];

  v9 = [NSNumber numberWithUnsignedLongLong:qword_1004E5DE0 / 0x3E8uLL];
  [v3 setObject:v9 forKey:@"wed_duration_attach_to_detach"];

  v10 = [NSNumber numberWithUnsignedLongLong:qword_1004E5DD8];
  [v3 setObject:v10 forKey:@"wed_duration_attach_connectionfail"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v3];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = __81__ThreadNetworkManagerInstance_RCP2CAMetrics_extension__getCurrentWEDInfoMetrics__block_invoke;
  v17 = &unk_1004C1808;
  v11 = v3;
  v18 = v11;
  AnalyticsSendEventLazy();
  v12 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Triggered bluestoneWEDConnectionInfo", v13, 2u);
  }

  [(ThreadNetworkManagerInstance *)self resetCurrentWEDInfoMetrics];
}

- (void)getBTWifiLoadInfoEvent:(any)a3
{
  v5 = +[NSMutableDictionary dictionary];
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v6 = *buf;
  v7 = SBYTE7(v42);
  v43.var0 = 0;
  v8 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Channel");
  if (v8)
  {
    [v8 getProperty:__p output:&v43];
    v9 = *buf == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0u;
  v42 = 0u;
  v9 = 1;
  if (v7 < 0)
  {
LABEL_3:
    operator delete(v6);
  }

LABEL_4:
  v10 = *&buf[8];
  v11 = SHIBYTE(v42);
  HIBYTE(v42) = 0;
  buf[8] = 0;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    v12 = [NSNumber numberWithUnsignedInt:any_to_int(&v43)];
    [v5 setObject:v12 forKey:@"thread_channel"];
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v12 getBTWifiLoadInfoEvent:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  if (byte_1004E5C7F >= 0)
  {
    v20 = &mDaemonVersion;
  }

  else
  {
    v20 = mDaemonVersion;
  }

  v21 = [NSString stringWithUTF8String:v20];
  [v5 setObject:v21 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v22 = &mVendorVersion;
  }

  else
  {
    v22 = mVendorVersion;
  }

  v23 = [NSString stringWithUTF8String:v22];
  [v5 setObject:v23 forKey:@"header_vendor_version"];

  v24 = xpc_null_create();
  v38 = v24;
  if (*a3.var0)
  {
    v37 = (*(**a3.var0 + 24))(*a3.var0);
    [(ThreadNetworkManagerInstance *)self calculateCoexTaskPeriod:&v37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v25 = *a3.var0;
    if (*a3.var0)
    {
      v25 = (*(*v25 + 24))(v25);
    }

    v36 = v25;
    v26.var0 = &v36;
    convert_ValMap_to_xpc_object(v26, "coex:rcp2:btwifi:load", "PropGet", buf);
    v27 = *buf;
    v28 = xpc_null_create();
    v29 = *buf;
    *buf = v28;

    v38 = v27;
    v30 = *buf;
    *buf = 0;

    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    *buf = &v38;
    *&buf[8] = "value";
    v31 = xpc::dict::object_proxy::operator*(buf);
    CAMetricsHandlers_handle_getprop_BTWifiLoadInfo(v31, v5);
  }

  v32 = [NSNumber numberWithBool:[(ThreadNetworkManagerInstance *)self getPairingStatus]];
  [v5 setObject:v32 forKey:@"is_pairing"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
  v33 = v5;
  AnalyticsSendEventLazy();
  v34 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Triggered bluestoneBTWifiLoadinfo", buf, 2u);
  }

  v35 = v38;
  v38 = 0;

  if (v43.var0)
  {
    (*(*v43.var0 + 8))(v43.var0);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

- (void)calculateCoexTaskPeriod:(any)a3
{
  boost::any_cast<std::map<std::string,boost::any>>(a3.var0, &v54);
  v53 = 0;
  v48 = time_ms();
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v48 calculateCoexTaskPeriod:v3];
  }

  if (*&threadSessionMetrics[0] - 1 >= qword_1004E5CB8)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>(&xmmword_1004E5D30, v54, v55);
    if (*&threadSessionMetrics[0])
    {
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (v48 <= qword_1004E5CB8 || (v53 = v48 - qword_1004E5CB8, v48 == qword_1004E5CB8))
  {
    v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v30 calculateCoexTaskPeriod:v31, v32, v33, v34, v35, v36, v37];
    }

    goto LABEL_96;
  }

  if (!qword_1004E5D40)
  {
    v30 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v30 calculateCoexTaskPeriod:v38, v39, v40, v41, v42, v43, v44];
    }

LABEL_96:

    goto LABEL_105;
  }

  v4 = xmmword_1004E5D30;
  if (xmmword_1004E5D30 == (&xmmword_1004E5D30 + 8))
  {
    goto LABEL_103;
  }

  v47 = 0;
  do
  {
    v5 = v4 + 2;
    if (*(v4 + 55) < 0)
    {
      v5 = *v5;
    }

    v6 = [NSString stringWithUTF8String:v5];
    any_to_string(v4 + 7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = [NSString stringWithUTF8String:p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = v8;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v8 UTF8String]);
    v10 = v6;
    std::string::basic_string[abi:ne200100]<0>(&__s1, [v6 UTF8String]);
    memset(&v50, 0, sizeof(v50));
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      p_s1 = __s1.__r_.__value_.__r.__words[0];
      if (strcmp(__s1.__r_.__value_.__l.__data_, "bt_audio_task") && strcmp(p_s1, "wifi_p2p_status") && strcmp(p_s1, "wifi_association_status"))
      {
        if (strcmp(p_s1, "bt_hid_high_count") && strcmp(p_s1, "bt_hid_irregular_count"))
        {
LABEL_52:
          if (strcmp(p_s1, "bt_hid_normal_count"))
          {
            goto LABEL_75;
          }
        }

LABEL_53:
        v20 = [NSString stringWithFormat:@"%@_%@", v6, v8];
        v21 = v20;
        std::string::basic_string[abi:ne200100]<0>(&v49, [v20 UTF8String]);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        v50 = v49;
        v22 = [v8 intValue] > 0;

        v47 |= v22;
        goto LABEL_66;
      }
    }

    else
    {
      v11 = __s1.__r_.__value_.__r.__words[0] == 0x6F696475615F7462 && *(__s1.__r_.__value_.__r.__words + 6) == 0x6B7361745F6F69;
      if (!v11 && (__s1.__r_.__value_.__r.__words[0] != 0x7032705F69666977 || __s1.__r_.__value_.__l.__size_ != 0x7375746174735FLL))
      {
        v13 = __s1.__r_.__value_.__r.__words[0] == 0x7373615F69666977 && __s1.__r_.__value_.__l.__size_ == 0x6E6F69746169636FLL;
        if (!v13 || __s1.__r_.__value_.__r.__words[2] != 0x7375746174735FLL)
        {
          if (__s1.__r_.__value_.__r.__words[0] != 0x685F6469685F7462 || __s1.__r_.__value_.__l.__size_ != 0x6E756F635F686769 || LOWORD(__s1.__r_.__value_.__r.__words[2]) != 116)
          {
            v17 = __s1.__r_.__value_.__r.__words[0] == 0x695F6469685F7462 && __s1.__r_.__value_.__l.__size_ == 0x72616C7567657272;
            if (!v17 || *(&__s1.__r_.__value_.__r.__words[1] + 7) != 0x746E756F635F72)
            {
              p_s1 = &__s1;
              goto LABEL_52;
            }
          }

          goto LABEL_53;
        }
      }
    }

    std::string::operator=(&v50, &__p);
    if (!std::string::compare(&__s1, "bt_audio_task"))
    {
      if (std::string::compare(&__p, "A2DP"))
      {
        std::string::compare(&__p, "A2DP_LLM");
      }

      if (!std::string::compare(&__p, "LEA1.0"))
      {
        v23 = "LEA1";
        goto LABEL_65;
      }

      if (!std::string::compare(&__p, "LEA1.0_5ms"))
      {
        v23 = "LEA1_5ms";
        goto LABEL_65;
      }

      if (!std::string::compare(&__p, "LEA2.0"))
      {
        v23 = "LEA2";
LABEL_65:
        std::string::assign(&v50, v23);
      }
    }

LABEL_66:
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(&qword_1004E5D48, &v50.__r_.__value_.__l.__data_) == &qword_1004E5D50)
      {
        v49.__r_.__value_.__r.__words[0] = &v50;
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&qword_1004E5D48, &v50.__r_.__value_.__l.__data_);
        boost::any::operator=<unsigned long long &>();
      }

      v49.__r_.__value_.__r.__words[0] = &v50;
      v26 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&qword_1004E5D48, &v50.__r_.__value_.__l.__data_);
      any_to_uint64(v26 + 7, 0);
      v49.__r_.__value_.__r.__words[0] = &v50;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&qword_1004E5D48, &v50.__r_.__value_.__l.__data_);
      boost::any::operator=<unsigned long long &>();
    }

    v25 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)buf calculateCoexTaskPeriod:v25];
    }

LABEL_75:
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v27 = *(v4 + 1);
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = *(v4 + 2);
        v11 = *v28 == v4;
        v4 = v28;
      }

      while (!v11);
    }

    v4 = v28;
  }

  while (v28 != (&xmmword_1004E5D30 + 8));
  if (v47)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "bt_hid");
    v29 = std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(&qword_1004E5D48, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v29 == &qword_1004E5D50)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "bt_hid");
      __s1.__r_.__value_.__r.__words[0] = &__p;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_1004E5D48, &__p.__r_.__value_.__l.__data_);
      boost::any::operator=<unsigned long long &>();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "bt_hid");
    __s1.__r_.__value_.__r.__words[0] = &__p;
    v45 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_1004E5D48, &__p.__r_.__value_.__l.__data_);
    v46 = any_to_uint64(v45 + 7, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v50.__r_.__value_.__r.__words[0] = v53 + v46;
    std::string::basic_string[abi:ne200100]<0>(&__p, "bt_hid");
    __s1.__r_.__value_.__r.__words[0] = &__p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_1004E5D48, &__p.__r_.__value_.__l.__data_);
    boost::any::operator=<unsigned long long &>();
  }

LABEL_103:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>(&xmmword_1004E5D30, v54, v55);
LABEL_104:
  qword_1004E5CB8 = v48;
LABEL_105:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v54, v55[0]);
}

- (void)CAresetCoexTaskPeriodMetrics
{
  __p[3] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "No_Audio_Task");
  v3.__r_.__value_.__r.__words[0] = __p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_1004E5D48, __p);
  boost::any::operator=<unsigned long long &>();
}

- (void)triggerBTWifiLoadInfoEvent
{
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command success");
  v3 = *buf;
  v4 = SBYTE7(v14);
  if (self)
  {
    v5 = [(ThreadNetworkManagerInstance *)self CtrInternalClientPtr];
    std::string::basic_string[abi:ne200100]<0>(__p, "coex:rcp2:btwifi:load");
    if (v5)
    {
      [v5 getProperty:__p output:&v12];
      v6 = *buf == 0;
      if ((v4 & 0x80000000) == 0)
      {
LABEL_5:
        v3 = *&buf[8];
        LOBYTE(v4) = HIBYTE(v14);
        HIBYTE(v14) = 0;
        buf[8] = 0;
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        if (v6)
        {
          v7 = v12;
          if (v12)
          {
            v7 = (*(*v12 + 24))(v12);
          }

          v9 = v7;
          [(ThreadNetworkManagerInstance *)self getBTWifiLoadInfoEvent:&v9];
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      *buf = 0u;
      v14 = 0u;
      v6 = 1;
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    operator delete(v3);
    goto LABEL_5;
  }

  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "TNMRCP2:CA:";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " %sCouldn't trigger bluestoneBTWifiLoadinfo", buf, 0xCu);
  }

LABEL_15:
  if ((v4 & 0x80) != 0)
  {
    operator delete(v3);
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }
}

- (void)updateThreadSessionStopReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:&stru_1004D2028])
  {
    objc_storeStrong(&qword_1004E5D28, a3);
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v6 updateThreadSessionStopReason:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

- (void)getThreadSessionRejectInfoMetrics:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  if (v5)
  {
    if (byte_1004E5C7F >= 0)
    {
      v6 = &mDaemonVersion;
    }

    else
    {
      v6 = mDaemonVersion;
    }

    v7 = [NSString stringWithUTF8String:v6];
    [v5 setObject:v7 forKey:@"header_daemon_version"];

    if (byte_1004E5C97 >= 0)
    {
      v8 = &mVendorVersion;
    }

    else
    {
      v8 = mVendorVersion;
    }

    v9 = [NSString stringWithUTF8String:v8];
    [v5 setObject:v9 forKey:@"header_vendor_version"];

    [v5 setObject:v4 forKey:@"threadstart_rejected"];
    [(ThreadNetworkManagerInstance *)self getCurrentBTWifiLoad:v5];
    [(ThreadNetworkManagerInstance *)self addCommonDimensions:v5];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __91__ThreadNetworkManagerInstance_RCP2CAMetrics_extension__getThreadSessionRejectInfoMetrics___block_invoke;
    v23 = &unk_1004C1808;
    v24 = v5;
    AnalyticsSendEventLazy();
    v10 = log_get_logging_obg("com.apple.wpantund.nm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Triggered bluestoneThreadSessionRejectInfo", v19, 2u);
    }

    v11 = v24;
  }

  else
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v11 getThreadSessionRejectInfoMetrics:v12, v13, v14, v15, v16, v17, v18];
    }
  }
}

- (void)generateAPLifeInfoMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  if (!v3)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 getThreadSessionRejectInfoMetrics:v17, v18, v19, v20, v21, v22, v23];
    }

    goto LABEL_15;
  }

  if (byte_1004E5C7F >= 0)
  {
    v4 = &mDaemonVersion;
  }

  else
  {
    v4 = mDaemonVersion;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [v3 setObject:v5 forKey:@"header_daemon_version"];

  if (byte_1004E5C97 >= 0)
  {
    v6 = &mVendorVersion;
  }

  else
  {
    v6 = mVendorVersion;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v3 setObject:v7 forKey:@"header_vendor_version"];

  v8 = time_ms();
  qword_1004E5E18 = v8;
  if (v8 <= mAPInfo || !mAPInfo || v8 - mAPInfo <= 0x3E7)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ThreadNetworkManagerInstance(RCP2CAMetrics_extension) *)v9 generateAPLifeInfoMetrics:v10];
    }

LABEL_15:

    goto LABEL_16;
  }

  v24 = [NSNumber numberWithUnsignedLong:(v8 - mAPInfo) / 0x3E8];
  [v3 setObject:v24 forKey:@"duration_ap_on"];

  v25 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadStartFailDueToBluetoothOff]];
  [v3 setObject:v25 forKey:@"BTOff_threadStart_count"];

  v26 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToBluetoothOff]];
  [v3 setObject:v26 forKey:@"BTOff_threadStop_count"];

  v27 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadStartFailDueToEscoOn]];
  [v3 setObject:v27 forKey:@"EscoOn_threadStart_count"];

  v28 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToEscoOn]];
  [v3 setObject:v28 forKey:@"EscoOn_threadStop_count"];

  v29 = [NSNumber numberWithUnsignedInt:[(ThreadNetworkManagerInstance *)self getCounterThreadSessionStoppedDueToAPOff]];
  [v3 setObject:v29 forKey:@"APOff_threadStop_count"];

  [(ThreadNetworkManagerInstance *)self addCommonDimensions:v3];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = __82__ThreadNetworkManagerInstance_RCP2CAMetrics_extension__generateAPLifeInfoMetrics__block_invoke;
  v35 = &unk_1004C1808;
  v36 = v3;
  AnalyticsSendEventLazy();
  v30 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Triggered bluestoneApplicationProcessorLifeInfo", v31, 2u);
  }

  [(ThreadNetworkManagerInstance *)self resetPeriodicRCP2_threadSessionMetrics];
  mAPInfo = 0;
  qword_1004E5E18 = 0;
LABEL_16:
}

- (void)CAincrementStartProcessCount:(BOOL)a3
{
  v3 = 88;
  if (a3)
  {
    v3 = 40;
  }

  ++*(threadSessionMetrics + v3);
  [(ThreadNetworkManagerInstance *)self CAnoteStartProcessReqTime:?];
}

- (void)CAincrementStartProcessSuccessCount:(BOOL)a3
{
  v3 = 92;
  if (a3)
  {
    v3 = 44;
  }

  ++*(&threadSessionMetrics + v3);
}

- (void)CAincrementStopProcessCount:(BOOL)a3
{
  v3 = 6;
  if (a3)
  {
    v3 = 3;
  }

  ++LODWORD(threadSessionMetrics[v3]);
}

- (void)CAincrementStopProcessSuccessCount:(BOOL)a3
{
  v3 = 100;
  if (a3)
  {
    v3 = 52;
  }

  ++*(threadSessionMetrics + v3);
}

- (void)CAnoteStartProcessReqTime:(BOOL)a3
{
  v3 = a3;
  v4 = time_ms();
  v5 = 120;
  if (v3)
  {
    v5 = 72;
  }

  v6 = 8;
  if (v3)
  {
    v6 = 5;
  }

  *(threadSessionMetrics + v5) = v4;
  *&threadSessionMetrics[v6] = v4;
}

- (void)CAnoteStopProcessReqTimeSuccessOrFail:(BOOL)a3 isProcessPairing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = time_ms();
  if (v4)
  {
    if (qword_1004E5CE8)
    {
      v7 = v6 > qword_1004E5CE8;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v6 - qword_1004E5CE8;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      qword_1004E5CE0 += v8;
    }

    v9 = &qword_1004E5CD8;
  }

  else
  {
    if (qword_1004E5D18)
    {
      v10 = v6 > qword_1004E5D18;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v8 = v6 - qword_1004E5D18;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      qword_1004E5D10 += v8;
    }

    v9 = &qword_1004E5D08;
  }

  *v9 += v8;
  v9[2] = 0;
  v9[3] = 0;
}

@end
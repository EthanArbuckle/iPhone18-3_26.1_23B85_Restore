@interface IDSStunCandidatePair
+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)a3 remoteCandidate:(id)a4 sessionID:(id)a5 delegate:(id)a6;
- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)a3;
- (BOOL)_optionallyCheckEncMarker:(id)a3;
- (BOOL)isActualRelayStunCandidatePair;
- (BOOL)isConstrained;
- (BOOL)isDelegated;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpensive;
- (BOOL)isP2P;
- (BOOL)isRelayStunCandidatePair;
- (BOOL)isValidRelayStunCandidatePair;
- (BOOL)processDataMessageErrorIndication:(id)a3;
- (BOOL)processInfoIndication:(id)a3 arrivalTime:(double)a4;
- (BOOL)processInfoResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5;
- (BOOL)processParticipantUpdateIndication:(id)a3 arrivalTime:(double)a4;
- (BOOL)processParticipantUpdateResponse:(id)a3;
- (BOOL)processPluginControlIndication:(id)a3;
- (BOOL)processPluginRegistrationResponse:(id)a3;
- (BOOL)processPutMaterialResponse:(id)a3;
- (BOOL)processQUICCallModeUpdateResponse:(id)a3;
- (BOOL)processQUICChannelConfigResponse:(id)a3;
- (BOOL)processQUICErrorIndication:(id)a3;
- (BOOL)processQUICErrorResponse:(id)a3 packetBuffer:(id *)a4 startTime:(double)a5 headerOverhead:(unint64_t)a6;
- (BOOL)processQUICGetMaterialResponse:(id)a3;
- (BOOL)processQUICInfoResponse:(id)a3 receivedBytes:(unint64_t)a4;
- (BOOL)processQUICParticipantUpdateIndication:(id)a3;
- (BOOL)processQUICParticipantUpdateResponse:(id)a3;
- (BOOL)processQUICPluginControlIndication:(id)a3;
- (BOOL)processQUICPluginRegistrationResponse:(id)a3;
- (BOOL)processQUICPutMaterialIndication:(id)a3;
- (BOOL)processQUICPutMaterialResponse:(id)a3;
- (BOOL)processQUICSessionInfoIndication:(id)a3 arrivalTime:(double)a4 isLightweightParticipant:(BOOL)a5;
- (BOOL)processQUICSessionInfoResponse:(id)a3 receivedBytes:(unint64_t)a4 isLightweightParticipant:(BOOL)a5;
- (BOOL)processQUICStatsResponse:(id)a3 arrivalTime:(double)a4;
- (BOOL)processQUICTestResponse:(id)a3 arrivalTime:(double)a4;
- (BOOL)processSessionInfoIndication:(id)a3 arrivalTime:(double)a4 isLightweightParticipant:(BOOL)a5;
- (BOOL)processSessionInfoResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5 isLightweightParticipant:(BOOL)a6;
- (BOOL)processStatsResponse:(id)a3 arrivalTime:(double)a4;
- (BOOL)processStunErrorResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5;
- (BOOL)processTestResponse:(id)a3 arrivalTime:(double)a4;
- (BOOL)removeProtoRequest:(unint64_t)a3;
- (BOOL)sendQUICCallModeUpdateRequest:(id)a3;
- (BOOL)sendQUICChannelConfigRequest:(id)a3;
- (BOOL)sendQUICGetMaterialRequest:(id)a3;
- (BOOL)sendQUICPutMaterialRequest:(id)a3;
- (BOOL)shouldProcessStunResponse:(id)a3;
- (BOOL)shouldRexmitStunRequest:(id)a3;
- (IDSStunCandidatePair)initWithLocalCandidate:(id)a3 remoteCandidate:(id)a4 sessionID:(id)a5 delegate:(id)a6;
- (NSString)description;
- (NSString)interfaceName;
- (NSString)kindSuffix;
- (id)_pluginNameForProtoRequest:(unint64_t)a3;
- (id)_pluginNameForStunRequest:(id)a3;
- (id)candidatePairToken;
- (int64_t)ipFamily;
- (int64_t)kind;
- (unint64_t)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4;
- (unint64_t)getParticipantIDHash:(id)a3;
- (unint64_t)getStunSentBytes:(id)a3;
- (unint64_t)participantIDForAlias:(unint64_t)a3 salt:(id)a4;
- (unint64_t)totalBytesReceived;
- (unint64_t)totalBytesSent;
- (unint64_t)totalPacketsReceived;
- (unint64_t)totalPacketsSent;
- (unsigned)hbCounter;
- (unsigned)nextSessionInfoReqID;
- (void)_addParticipantIDs:(id)a3 toParticipantIDMap:(id)a4;
- (void)_handleLinkProbingTimer;
- (void)_handleNoSessionStateTimer;
- (void)_handleReallocTimer;
- (void)_handleSessionConnectedTimer;
- (void)_handleSessionConvergenceTimer;
- (void)_handleSessionGoAwayTimer;
- (void)_notifyQREventAdded:(id)a3;
- (void)_notifySessionStreamInfoReceived:(id)a3 withParticipants:(id)a4 lightweightParticipants:(id)a5 joinedParticipantInfo:(id)a6 leftParticipantInfo:(id)a7 updatedParticipantInfo:(id)a8 sentBytes:(unint64_t)a9 receivedBytes:(unint64_t)a10 offlineRequest:(BOOL)a11 streamInfoRequest:(BOOL)a12 status:(unsigned int)a13 commandFlag:(unsigned int)a14 isIndication:(BOOL)a15;
- (void)_removeProtoPluginRegistrationRequest:(unint64_t)a3;
- (void)_savePluginNameForProtoRequest:(unint64_t)a3 pluginName:(id)a4;
- (void)_savePluginNameForRequest:(id)a3 pluginName:(id)a4;
- (void)_startNoSessionStateTimer;
- (void)_startReallocTimer;
- (void)_stopNoSessionStateTimer;
- (void)_stopReallocTimer;
- (void)addProtoRequest:(unint64_t)a3;
- (void)addStunRequest:(id)a3;
- (void)dealloc;
- (void)deriveAES128CTRKeys:(id)a3;
- (void)initParticipantIDMap:(id)a3;
- (void)invalidate;
- (void)processSessionInfoRequestTimeout:(id)a3;
- (void)receiveLinkTestStatsPacket:(id)a3;
- (void)removeFromParticipantIDMap:(id)a3;
- (void)removeStunRequest:(id)a3;
- (void)sendInfoRequest:(id)a3;
- (void)sendLinkTestStatsPacket:(id)a3;
- (void)sendParticipantUpdateRequest:(id)a3 options:(id)a4;
- (void)sendPutMaterialRequest:(id)a3 options:(id)a4;
- (void)sendQRPluginRegistrationRequest:(id)a3 options:(id)a4;
- (void)sendQUICInfoRequest;
- (void)sendQUICParticipantUpdateRequestWithOptions:(id)a3;
- (void)sendQUICPluginRegistrationRequestWithOptions:(id)a3;
- (void)sendQUICSessionInfoRequestWithOptions:(id)a3;
- (void)sendQUICStatsRequestWithOptions:(id)a3;
- (void)sendQUICTestRequest;
- (void)sendSessionInfoRequest:(id)a3 options:(id)a4;
- (void)sendStatsRequest:(id)a3 options:(id)a4;
- (void)sendTestRequest:(id)a3;
- (void)setChannelSettings:(unsigned int)a3;
- (void)setDelegatedLinkID:(char)a3;
- (void)setIsQUIC:(BOOL)a3;
- (void)setLinkUUIDWithRelayLinkIDs;
- (void)setPendingNoSessionState:(BOOL)a3;
- (void)setPendingRealloc:(BOOL)a3;
- (void)setPropertiesWithReallocCandidatePair:(id)a3 reallocToken:(id)a4;
- (void)setPropertiesWithRelaySessionInfo:(id)a3 sessionInfoDict:(id)a4 enableSKE:(BOOL)a5;
- (void)setProtocolVersion:(unsigned __int8)a3 isInitiator:(BOOL)a4 enableSKE:(BOOL)a5;
- (void)setRelayLinkID:(unsigned __int16)a3;
- (void)setRemoteRelayLinkID:(unsigned __int16)a3;
- (void)setServerIsDegraded:(BOOL)a3;
- (void)setTestOptionsFromUserDefaults;
- (void)startLinkProbingTimer:(unsigned int)a3;
- (void)startSessionConnectedTimer:(int)a3 block:(id)a4;
- (void)startSessionConvergenceTimer:(int)a3 block:(id)a4;
- (void)startSessionGoAwayTimer:(int)a3 block:(id)a4;
- (void)stopLinkProbingTimer;
- (void)stopSessionConnectedTimer;
- (void)stopSessionConvergenceTimer;
- (void)stopSessionGoAwayTimer;
- (void)switchToOptimizedStatsInterval;
- (void)synthesizeNat64WithPrefix;
- (void)updateParticipantIDMap:(id)a3;
- (void)updateStunSentBytes:(int64_t)a3 requestID:(id)a4;
- (void)updateURIToParticipantIDMapping:(id)a3;
@end

@implementation IDSStunCandidatePair

+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)a3 remoteCandidate:(id)a4 sessionID:(id)a5 delegate:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[IDSStunCandidatePair alloc] initWithLocalCandidate:v12 remoteCandidate:v11 sessionID:v10 delegate:v9];

  return v13;
}

- (IDSStunCandidatePair)initWithLocalCandidate:(id)a3 remoteCandidate:(id)a4 sessionID:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = IDSStunCandidatePair;
  v14 = [(IDSStunCandidatePair *)&v32 init];
  if (v14)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDSStunCandidatePair:initWithLocalCandidate", v31, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSStunCandidatePair:initWithLocalCandidate");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSStunCandidatePair:initWithLocalCandidate");
        }
      }
    }

    v16 = [MEMORY[0x1E695DF90] dictionary];
    connections = v14->_connections;
    v14->_connections = v16;

    v14->_state = 0;
    v18 = [v10 copy];
    local = v14->_local;
    v14->_local = v18;

    v20 = [v11 copy];
    remote = v14->_remote;
    v14->_remote = v20;

    v22 = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v14->_uniqueID;
    v14->_uniqueID = v22;

    objc_storeStrong(&v14->_sessionID, a5);
    objc_storeWeak(&v14->_delegate, v13);
    v14->_statsIntervalInSeconds = 12;
    v14->_triggeredCheckTime = 0.0;
    v24 = [MEMORY[0x1E695DFA8] set];
    packetListeners = v14->_packetListeners;
    v14->_packetListeners = v24;

    v26 = [[IDSTestableLinkWithScheduler alloc] initWithLink:v14 addBlock:&unk_1F1AAB900];
    testableLink = v14->_testableLink;
    v14->_testableLink = v26;

    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v28 = [v13 createLinkCycleForCandidatePair:v14];
      linkMetrics = v14->_linkMetrics;
      v14->_linkMetrics = v28;
    }
  }

  return v14;
}

- (void)dealloc
{
  [(IDSStunCandidatePair *)self _stopReallocTimer];
  v3.receiver = self;
  v3.super_class = IDSStunCandidatePair;
  [(IDSStunCandidatePair *)&v3 dealloc];
}

- (void)invalidate
{
  self->_state = 6;
  pendingStunRequests = self->_pendingStunRequests;
  self->_pendingStunRequests = 0;

  repliedStunRequests = self->_repliedStunRequests;
  self->_repliedStunRequests = 0;

  requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
  self->_requestIDToQueryLinkIDs = 0;

  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  self->_sessionConnectedTimeoutBlock = 0;

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  self->_sessionConvergenceBlock = 0;

  requestIDToStatsIDs = self->_requestIDToStatsIDs;
  self->_requestIDToStatsIDs = 0;

  stunSentBytesToRequestID = self->_stunSentBytesToRequestID;
  self->_stunSentBytesToRequestID = 0;

  pluginNameToStunReqID = self->_pluginNameToStunReqID;
  self->_pluginNameToStunReqID = 0;

  transactionIDToIdentifier = self->_transactionIDToIdentifier;
  self->_transactionIDToIdentifier = 0;

  [(IDSStunCandidatePair *)self setAllocbindFailoverTimer:0];
  [(IDSStunCandidatePair *)self setIsRealloc:0];
  [(IDSStunCandidatePair *)self stopLinkProbingTimer];
  hbhEncKey = self->_hbhEncKey;
  self->_hbhEncKey = 0;

  hbhDecKey = self->_hbhDecKey;
  self->_hbhDecKey = 0;
}

- (NSString)description
{
  v48 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v3;
  v47 = v3;
  v44 = v3;
  v45 = v3;
  v42 = v3;
  v43 = v3;
  *__str = v3;
  v41 = v3;
  v38 = v3;
  v39 = v3;
  v36 = v3;
  v37 = v3;
  v34 = v3;
  v35 = v3;
  *v32 = v3;
  v33 = v3;
  v30 = v3;
  v31 = v3;
  v28 = v3;
  v29 = v3;
  v26 = v3;
  v27 = v3;
  *v24 = v3;
  v25 = v3;
  v4 = [(IDSStunCandidate *)self->_local address];
  v5 = [(IDSStunCandidate *)self->_local external];
  v6 = [(IDSStunCandidate *)self->_remote external];
  SAToIPPortString(__str, 0x80uLL, v4);
  SAToIPPortString(v32, 0x80uLL, v5);
  SAToIPPortString(v24, 0x80uLL, v6);
  LODWORD(v6) = [(IDSStunCandidate *)self->_local radioAccessTechnology];
  v7 = [(IDSStunCandidate *)self->_remote radioAccessTechnology];
  v23 = [(IDSStunCandidate *)self->_local mtu];
  v8 = [(IDSStunCandidate *)self->_local type];
  v9 = [(IDSStunCandidate *)self->_remote type];
  v10 = [(IDSStunCandidate *)self->_remote mtu];
  remote = self->_remote;
  local = self->_local;
  v22 = MEMORY[0x1E696AEC0];
  v12 = (&_IDSStunCandidateTypeStrings)[v8];
  v13 = IDSRadioAccessTechnologyToString(v6);
  v14 = (&_IDSStunCandidateTypeStrings)[v9];
  v15 = IDSRadioAccessTechnologyToString(v7);
  v16 = bswap32(self->_channelNumber) >> 16;
  v17 = (&_IDSStunCandidatePairStateStrings)[self->_state];
  v18 = [(NSUUID *)self->_linkUUID UUIDString];
  v19 = [v22 stringWithFormat:@"[%s(%s, %p)-%s(%p)/%s/%s/%u/%s/%s/%u/(%04x)/%s/%@/%d|%d/%04x/%04x/%@/%@]", __str, v32, local, v24, remote, v12, v13, v23, v14, v15, v10, v16, v17, v18, self->_linkID, self->_delegatedLinkID, self->_relayLinkID, self->_remoteRelayLinkID, self->_sessionID, self->_connections];

  return v19;
}

- (id)candidatePairToken
{
  v3 = [(IDSStunCandidate *)self->_local address];
  v4 = [(IDSStunCandidate *)self->_remote external];
  sessionID = self->_sessionID;

  return tokenForStunCandidatePair(v3, v4, sessionID);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(IDSStunCandidate *)self->_local address];
  v6 = [v4 local];
  v7 = IsSameSA(v5, [v6 address]);

  v8 = [(IDSStunCandidate *)self->_remote external];
  v9 = [v4 remote];
  v10 = IsSameSA(v8, [v9 external]);

  LODWORD(v9) = [(IDSStunCandidate *)self->_local isRelayStunCandidate];
  v11 = [v4 local];
  v12 = v9 ^ [v11 isRelayStunCandidate];

  if (self->_remoteRelayLinkID)
  {
    relayLinkID = self->_relayLinkID;
    if (relayLinkID == [v4 relayLinkID])
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      v15 = remoteRelayLinkID == [v4 remoteRelayLinkID];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = (v12 ^ 1) & v15;
  v17 = v7 && v10 && v16;

  return v17;
}

- (NSString)kindSuffix
{
  if ([(IDSStunCandidatePair *)self isP2P])
  {
    return @".p2p";
  }

  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return @".vr";
  }

  return @".relay";
}

- (BOOL)isRelayStunCandidatePair
{
  if ([(IDSStunCandidate *)self->_local isRelayStunCandidate])
  {
    return 1;
  }

  remote = self->_remote;

  return [(IDSStunCandidate *)remote isRelayStunCandidate];
}

- (BOOL)isValidRelayStunCandidatePair
{
  v3 = [(NSData *)self->_relaySessionToken length];
  if (v3)
  {
    LOBYTE(v3) = [(NSData *)self->_relaySessionKey length]!= 0;
  }

  return v3;
}

- (BOOL)isActualRelayStunCandidatePair
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 0;
  }

  return [(IDSStunCandidatePair *)self isRelayStunCandidatePair];
}

- (BOOL)isP2P
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 0;
  }

  else
  {
    return ![(IDSStunCandidatePair *)self isRelayStunCandidatePair];
  }
}

- (void)switchToOptimizedStatsInterval
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSStunCandidatePair *)self description];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "switchToOptimizedStatsInterval for link: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = [(IDSStunCandidatePair *)self description];
      _IDSLogTransport(@"GL", @"IDS", @"switchToOptimizedStatsInterval for link: %@");

      if (_IDSShouldLog())
      {
        v6 = [(IDSStunCandidatePair *)self description];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"switchToOptimizedStatsInterval for link: %@");
      }
    }
  }

  self->_statsIntervalInSeconds = 60;
}

- (void)setPropertiesWithRelaySessionInfo:(id)a3 sessionInfoDict:(id)a4 enableSKE:(BOOL)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 relaySessionToken];
  relaySessionToken = self->_relaySessionToken;
  self->_relaySessionToken = v11;

  v13 = [v9 relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = v13;

  v15 = [v9 pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = v15;

  v17 = [v9 pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = v17;

  self->_relayProviderType = [v9 relayServerProviderType];
  self->_allocateType = [v9 allocateType];
  [v9 allocateTime];
  self->_allocateTime = v19;
  self->_participantID = [v9 participantID];
  self->_isPseudoParticipant = [v9 isPseudoParticipant];
  self->_callType = [v9 callType];
  self->_sessionIsNonUserParticipantInitiated = [v9 sessionIsUserParticipantInitiated];
  v20 = [v9 handOffOverQREnabled];
  v21 = [v9 defaultDeviceLocalCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = v21;

  v23 = [v9 defaultDeviceRemoteCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = v23;

  v25 = [v9 groupID];
  groupID = self->_groupID;
  self->_groupID = v25;

  self->_protocolVersion = [v9 protocolVersion];
  self->_isInitiator = [v9 isInitiator];
  v27 = [v9 softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = v27;

  if (self->_softwareData)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_softwareData encoding:4];
    if (![(NSString *)self->_appName isEqualToString:v29])
    {
      v30 = [(NSData *)self->_softwareData base64EncodedStringWithOptions:0];
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_softwareData;
        sessionID = self->_sessionID;
        *buf = 138412802;
        *v48 = v32;
        *&v48[8] = 2112;
        *&v48[10] = v30;
        v49 = 2112;
        v50 = sessionID;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "update app name to (%@, %@) for %@.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v45 = v30;
          v46 = self->_sessionID;
          v44 = self->_softwareData;
          _IDSLogTransport(@"GL", @"IDS", @"update app name to (%@, %@) for %@.");
          if (_IDSShouldLog())
          {
            v45 = v30;
            v46 = self->_sessionID;
            v44 = self->_softwareData;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"update app name to (%@, %@) for %@.");
          }
        }
      }

      objc_storeStrong(&self->_appName, v29);
    }
  }

  if ([v9 isInitiator])
  {
    v34 = [MEMORY[0x1E696AFB0] UUID];
    linkUUID = self->_linkUUID;
    self->_linkUUID = v34;
  }

  objc_storeStrong(&self->_relaySessionInfo, a3);
  objc_storeStrong(&self->_sessionInfoDict, a4);
  self->_enableSKE = a5;
  allocateType = self->_allocateType;
  if (allocateType == 3)
  {
    v37 = 293359;
    goto LABEL_18;
  }

  if (allocateType == 1 && self->_relayProviderType == 2)
  {
    v37 = 8197;
LABEL_18:
    self->_capabilityFlags = v37;
  }

  if (v20)
  {
    self->_capabilityFlags |= 0x1000000uLL;
  }

  v38 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    capabilityFlags = self->_capabilityFlags;
    *buf = 134218242;
    *v48 = capabilityFlags;
    *&v48[8] = 2112;
    *&v48[10] = self;
    _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "_capabilityFlags: 0x%llx for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_capabilityFlags: 0x%llx for %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_capabilityFlags: 0x%llx for %@");
      }
    }
  }

  if (self->_sessionIsNonUserParticipantInitiated)
  {
    self->_stateFlags = 1;
  }

  callType = self->_callType;
  if (callType)
  {
    stateFlags = self->_stateFlags;
    self->_stateFlags = stateFlags | 2;
    if (callType == 1)
    {
      self->_stateFlags = stateFlags | 6;
    }
  }

  v42 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->_stateFlags;
    *buf = 67109378;
    *v48 = v43;
    *&v48[4] = 2112;
    *&v48[6] = self;
    _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "_stateFlags: 0x%x for %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_stateFlags: 0x%x for %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_stateFlags: 0x%x for %@");
      }
    }
  }
}

- (void)setIsQUIC:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  self->_isQUIC = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    capabilityFlags = self->_capabilityFlags;
    *buf = 138412802;
    if (v3)
    {
      v6 = @"YES";
    }

    v9 = v6;
    v10 = 2048;
    v11 = capabilityFlags;
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@");
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@");
    }
  }
}

- (void)setPropertiesWithReallocCandidatePair:(id)a3 reallocToken:(id)a4
{
  objc_storeStrong(&self->_relaySessionToken, a4);
  v35 = a4;
  v7 = a3;
  self->_pendingRealloc = 1;
  v8 = [v7 relaySessionInfo];
  relaySessionInfo = self->_relaySessionInfo;
  self->_relaySessionInfo = v8;

  v10 = [v7 sessionInfoDict];
  sessionInfoDict = self->_sessionInfoDict;
  self->_sessionInfoDict = v10;

  self->_allocateType = [v7 allocateType];
  [v7 allocateTime];
  self->_allocateTime = v12;
  self->_participantID = [v7 participantID];
  v13 = [v7 relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = v13;

  self->_relayProviderType = [v7 relayProviderType];
  v15 = [v7 pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = v15;

  v17 = [v7 pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = v17;

  self->_isAcceptedRelaySession = [v7 isAcceptedRelaySession];
  v19 = [v7 relayRemote];
  relayRemote = self->_relayRemote;
  self->_relayRemote = v19;

  self->_recvSKEData = [v7 recvSKEData];
  self->_sentSKEData = [v7 sentSKEData];
  v21 = [v7 skeData];
  skeData = self->_skeData;
  self->_skeData = v21;

  v23 = [v7 defaultLocalDeviceCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = v23;

  v25 = [v7 defaultRemoteDeviceCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = v25;

  v27 = [v7 groupID];
  groupID = self->_groupID;
  self->_groupID = v27;

  v29 = [v7 linkUUID];
  linkUUID = self->_linkUUID;
  self->_linkUUID = v29;

  self->_capabilityFlags = [v7 capabilityFlags];
  self->_protocolVersion = [v7 protocolVersion];
  self->_isInitiator = [v7 isInitiator];
  self->_enableSKE = [v7 enableSKE];
  v31 = [v7 softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = v31;

  v33 = [v7 appName];

  appName = self->_appName;
  self->_appName = v33;
}

- (unsigned)nextSessionInfoReqID
{
  v2 = self->_sessionInfoReqCount + 1;
  self->_sessionInfoReqCount = v2;
  return v2;
}

- (void)setLinkUUIDWithRelayLinkIDs
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  relayLinkID = self->_relayLinkID;
  remoteRelayLinkID = self->_remoteRelayLinkID;
  v5 = __rev16(relayLinkID);
  v6 = __rev16(remoteRelayLinkID);
  v7 = relayLinkID >= remoteRelayLinkID;
  if (relayLinkID >= remoteRelayLinkID)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v12[0] = v8;
  v12[1] = v9;
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
  linkUUID = self->_linkUUID;
  self->_linkUUID = v10;
}

- (void)synthesizeNat64WithPrefix
{
  v38 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v3;
  v37 = v3;
  v34 = v3;
  v35 = v3;
  v32 = v3;
  v33 = v3;
  *__str = v3;
  v31 = v3;
  v28 = v3;
  v29 = v3;
  v26 = v3;
  v27 = v3;
  v24 = v3;
  v25 = v3;
  *v22 = v3;
  v23 = v3;
  if ([(IDSStunCandidate *)self->_local prefix])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v4;
    v21 = v4;
    v18 = v4;
    v19 = v4;
    v16 = v4;
    v17 = v4;
    *v14 = v4;
    v15 = v4;
    v5 = [(IDSStunCandidate *)self->_local address];
    v6 = [(IDSStunCandidate *)self->_remote external];
    if (v5->sa_family == 30)
    {
      v7 = v6;
      if (v6->sa_family == 2)
      {
        if (nw_nat64_synthesize_v6())
        {
          *v14 = 7708;
          *&v14[2] = *(v7 + 2);
          SAToIPPortString(__str, 0x80uLL, v7);
          SAToIPPortString(v22, 0x80uLL, v14);
          [(IDSStunCandidate *)self->_remote setExternal:v14];
          v8 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v11 = __str;
            v12 = 2080;
            v13 = v22;
            _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "nat64 translation: %s -> %s.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"nat64 translation: %s -> %s.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"nat64 translation: %s -> %s.");
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "nat64 translation failed due to invalid prefix.", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"nat64 translation failed due to invalid prefix.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"nat64 translation failed due to invalid prefix.");
        }
      }
    }
  }
}

- (void)setPendingNoSessionState:(BOOL)a3
{
  self->_pendingNoSessionStateAllocbind = a3;
  if (a3)
  {
    MEMORY[0x1EEE66B58](self, sel__startNoSessionStateTimer);
  }

  else
  {
    [(IDSStunCandidatePair *)self _stopNoSessionStateTimer];
  }
}

- (void)_handleNoSessionStateTimer
{
  v8 = *MEMORY[0x1E69E9840];
  self->_pendingNoSessionStateAllocbind = 0;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    noSessionStateTimer = self->_noSessionStateTimer;
    *buf = 134217984;
    v7 = noSessionStateTimer;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "noSessionStateTimer %p fires, _noSessionStateTimer timed out.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = self->_noSessionStateTimer;
      _IDSLogTransport(@"GL", @"IDS", @"noSessionStateTimer %p fires, _noSessionStateTimer timed out.");
      if (_IDSShouldLog())
      {
        v5 = self->_noSessionStateTimer;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"noSessionStateTimer %p fires, _noSessionStateTimer timed out.");
      }
    }
  }

  [(IDSStunCandidatePair *)self _stopNoSessionStateTimer];
}

- (void)_startNoSessionStateTimer
{
  v15 = *MEMORY[0x1E69E9840];
  noSessionStateTimer = self->_noSessionStateTimer;
  if (noSessionStateTimer)
  {
    dispatch_source_cancel(noSessionStateTimer);
  }

  v4 = im_primary_queue();
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  v6 = self->_noSessionStateTimer;
  self->_noSessionStateTimer = v5;

  v7 = self->_noSessionStateTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x5F5E100uLL);
  v9 = self->_noSessionStateTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C754D8;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_noSessionStateTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_noSessionStateTimer;
    *buf = 134217984;
    v14 = v11;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start noSessionStateTimer %p.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start noSessionStateTimer %p.");
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start noSessionStateTimer %p.");
    }
  }
}

- (void)_stopNoSessionStateTimer
{
  v9 = *MEMORY[0x1E69E9840];
  noSessionStateTimer = self->_noSessionStateTimer;
  if (noSessionStateTimer)
  {
    dispatch_source_cancel(noSessionStateTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_noSessionStateTimer;
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop noSessionStateTimer %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop noSessionStateTimer %p.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop noSessionStateTimer %p.");
      }
    }

    v6 = self->_noSessionStateTimer;
    self->_noSessionStateTimer = 0;
  }
}

- (void)setPendingRealloc:(BOOL)a3
{
  self->_pendingRealloc = a3;
  if (a3)
  {
    MEMORY[0x1EEE66B58](self, sel__startReallocTimer);
  }

  else
  {
    [(IDSStunCandidatePair *)self _stopReallocTimer];
  }
}

- (void)_handleReallocTimer
{
  v8 = *MEMORY[0x1E69E9840];
  self->_pendingRealloc = 0;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    reallocTimer = self->_reallocTimer;
    *buf = 134217984;
    v7 = reallocTimer;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "realloc timer %p fires, realloc timed out.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"realloc timer %p fires, realloc timed out.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"realloc timer %p fires, realloc timed out.");
      }
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A7C7583C;
  v5[3] = &unk_1E77E0138;
  v5[4] = self;
  IDSTransportThreadAddBlock(v5);
}

- (void)_startReallocTimer
{
  v15 = *MEMORY[0x1E69E9840];
  reallocTimer = self->_reallocTimer;
  if (reallocTimer)
  {
    dispatch_source_cancel(reallocTimer);
  }

  v4 = im_primary_queue();
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  v6 = self->_reallocTimer;
  self->_reallocTimer = v5;

  v7 = self->_reallocTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x5F5E100uLL);
  v9 = self->_reallocTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C75A54;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_reallocTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_reallocTimer;
    *buf = 134217984;
    v14 = v11;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start realloc timer %p.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start realloc timer %p.");
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start realloc timer %p.");
    }
  }
}

- (void)_stopReallocTimer
{
  v9 = *MEMORY[0x1E69E9840];
  reallocTimer = self->_reallocTimer;
  if (reallocTimer)
  {
    dispatch_source_cancel(reallocTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_reallocTimer;
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop realloc timer %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop realloc timer %p.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop realloc timer %p.");
      }
    }

    v6 = self->_reallocTimer;
    self->_reallocTimer = 0;
  }
}

- (void)_handleSessionConnectedTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConnectedTimer = self->_sessionConnectedTimer;
    v5 = _Block_copy(self->_sessionConnectedTimeoutBlock);
    *buf = 134218240;
    v11 = sessionConnectedTimer;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session connected timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = self->_sessionConnectedTimer;
      v9 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session connected timer %p fired, block %p.");

      if (_IDSShouldLog())
      {
        v8 = self->_sessionConnectedTimer;
        v9 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session connected timer %p fired, block %p.");
      }
    }
  }

  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  if (sessionConnectedTimeoutBlock)
  {
    sessionConnectedTimeoutBlock[2](sessionConnectedTimeoutBlock, v6);
  }

  [(IDSStunCandidatePair *)self stopSessionConnectedTimer:v8];
}

- (void)startSessionConnectedTimer:(int)a3 block:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  sessionConnectedTimer = self->_sessionConnectedTimer;
  if (sessionConnectedTimer)
  {
    dispatch_source_cancel(sessionConnectedTimer);
  }

  v8 = im_primary_queue();
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
  v10 = self->_sessionConnectedTimer;
  self->_sessionConnectedTimer = v9;

  v11 = self->_sessionConnectedTimer;
  v12 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v11, v12, 1000000000 * a3, 0x5F5E100uLL);
  v13 = self->_sessionConnectedTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C76028;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  v14 = _Block_copy(v6);
  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  self->_sessionConnectedTimeoutBlock = v14;

  dispatch_resume(self->_sessionConnectedTimer);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_sessionConnectedTimer;
    v18 = _Block_copy(self->_sessionConnectedTimeoutBlock);
    *buf = 134218496;
    v23 = v17;
    v24 = 1024;
    v25 = a3;
    v26 = 2048;
    v27 = v18;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "start session connected timer %p, timeout %d sec, block %p.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"start session connected timer %p, timeout %d sec, block %p.");

      if (_IDSShouldLog())
      {
        v20 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"start session connected timer %p, timeout %d sec, block %p.");
      }
    }
  }
}

- (void)stopSessionConnectedTimer
{
  v15 = *MEMORY[0x1E69E9840];
  sessionConnectedTimer = self->_sessionConnectedTimer;
  if (sessionConnectedTimer)
  {
    dispatch_source_cancel(sessionConnectedTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConnectedTimer;
      v6 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      *buf = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session connected timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session connected timer %p, block %p.");

      if (_IDSShouldLog())
      {
        v10 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session connected timer %p, block %p.");
      }
    }

    v7 = self->_sessionConnectedTimer;
    self->_sessionConnectedTimer = 0;

    sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
    self->_sessionConnectedTimeoutBlock = 0;
  }
}

- (void)_handleSessionConvergenceTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v11 = sessionConvergenceTimer;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session convergence timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p fired, block %p.");

      if (_IDSShouldLog())
      {
        v8 = self->_sessionConvergenceTimer;
        v9 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p fired, block %p.");
      }
    }
  }

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  if (sessionConvergenceBlock)
  {
    sessionConvergenceBlock[2](sessionConvergenceBlock, v6);
  }

  [(IDSStunCandidatePair *)self stopSessionConvergenceTimer:v8];
}

- (void)startSessionConvergenceTimer:(int)a3 block:(id)a4
{
  v4 = *&a3;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (*&self->_sessionConvergenceTimer == 0)
  {
    v14 = im_primary_queue();
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = v15;

    v17 = self->_sessionConvergenceTimer;
    v18 = dispatch_time(0, 1000000000 * v4);
    dispatch_source_set_timer(v17, v18, 1000000000 * v4, 0x5F5E100uLL);
    v19 = self->_sessionConvergenceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C76800;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    v20 = _Block_copy(v6);
    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = v20;

    dispatch_resume(self->_sessionConvergenceTimer);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_sessionConvergenceTimer;
      v24 = _Block_copy(self->_sessionConvergenceBlock);
      v25 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v37 = v23;
      v38 = 1024;
      *v39 = v4;
      *&v39[4] = 2048;
      *&v39[6] = v24;
      *&v39[14] = 2112;
      *&v39[16] = v25;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "start session convergence timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v26 = self->_sessionConvergenceTimer;
        v27 = _Block_copy(self->_sessionConvergenceBlock);
        [(IDSStunCandidatePair *)self candidatePairToken];
        v33 = v32 = v27;
        _IDSLogTransport(@"GL", @"IDS", @"start session convergence timer %p, timeout %d sec, block %p for %@.");

        if (_IDSShouldLog())
        {
          v28 = _Block_copy(self->_sessionConvergenceBlock);
          v34 = [(IDSStunCandidatePair *)self candidatePairToken:v26];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session convergence timer %p, timeout %d sec, block %p for %@.");
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      v10 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v37 = v8;
      v38 = 2048;
      *v39 = v9;
      *&v39[8] = 2112;
      *&v39[10] = v10;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session convergence timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionConvergenceTimer;
        v12 = _Block_copy(self->_sessionConvergenceBlock);
        [(IDSStunCandidatePair *)self candidatePairToken];
        v30 = v29 = v12;
        _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p and block %p for %@ are already scheduled.");

        if (_IDSShouldLog())
        {
          v13 = _Block_copy(self->_sessionConvergenceBlock);
          v31 = [(IDSStunCandidatePair *)self candidatePairToken:v11];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p and block %p for %@ are already scheduled.");
        }
      }
    }
  }
}

- (void)stopSessionConvergenceTimer
{
  v15 = *MEMORY[0x1E69E9840];
  sessionConvergenceTimer = self->_sessionConvergenceTimer;
  if (sessionConvergenceTimer)
  {
    dispatch_source_cancel(sessionConvergenceTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConvergenceTimer;
      v6 = _Block_copy(self->_sessionConvergenceBlock);
      *buf = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session convergence timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session convergence timer %p, block %p.");

      if (_IDSShouldLog())
      {
        v10 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session convergence timer %p, block %p.");
      }
    }

    v7 = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = 0;

    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = 0;
  }
}

- (void)_handleSessionGoAwayTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v11 = sessionConvergenceTimer;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session goaway timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p fired, block %p.");

      if (_IDSShouldLog())
      {
        v8 = self->_sessionConvergenceTimer;
        v9 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p fired, block %p.");
      }
    }
  }

  sessionGoAwayBlock = self->_sessionGoAwayBlock;
  if (sessionGoAwayBlock)
  {
    sessionGoAwayBlock[2](sessionGoAwayBlock, v6);
  }

  [(IDSStunCandidatePair *)self stopSessionGoAwayTimer:v8];
}

- (void)startSessionGoAwayTimer:(int)a3 block:(id)a4
{
  v4 = *&a3;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (*&self->_sessionGoAwayTimer == 0)
  {
    v14 = im_primary_queue();
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
    sessionGoAwayTimer = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = v15;

    v17 = self->_sessionGoAwayTimer;
    v18 = dispatch_time(0, 1000000000 * v4);
    dispatch_source_set_timer(v17, v18, 1000000000 * v4, 0x5F5E100uLL);
    v19 = self->_sessionGoAwayTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C76FD8;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    v20 = _Block_copy(v6);
    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = v20;

    dispatch_resume(self->_sessionGoAwayTimer);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_sessionGoAwayTimer;
      v24 = _Block_copy(self->_sessionGoAwayBlock);
      v25 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v37 = v23;
      v38 = 1024;
      *v39 = v4;
      *&v39[4] = 2048;
      *&v39[6] = v24;
      *&v39[14] = 2112;
      *&v39[16] = v25;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "start session goaway timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v26 = self->_sessionGoAwayTimer;
        v27 = _Block_copy(self->_sessionGoAwayBlock);
        [(IDSStunCandidatePair *)self candidatePairToken];
        v33 = v32 = v27;
        _IDSLogTransport(@"GL", @"IDS", @"start session goaway timer %p, timeout %d sec, block %p for %@.");

        if (_IDSShouldLog())
        {
          v28 = _Block_copy(self->_sessionGoAwayBlock);
          v34 = [(IDSStunCandidatePair *)self candidatePairToken:v26];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session goaway timer %p, timeout %d sec, block %p for %@.");
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionGoAwayTimer;
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      v10 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v37 = v8;
      v38 = 2048;
      *v39 = v9;
      *&v39[8] = 2112;
      *&v39[10] = v10;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session goaway timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionGoAwayTimer;
        v12 = _Block_copy(self->_sessionGoAwayBlock);
        [(IDSStunCandidatePair *)self candidatePairToken];
        v30 = v29 = v12;
        _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p and block %p for %@ are already scheduled.");

        if (_IDSShouldLog())
        {
          v13 = _Block_copy(self->_sessionGoAwayBlock);
          v31 = [(IDSStunCandidatePair *)self candidatePairToken:v11];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p and block %p for %@ are already scheduled.");
        }
      }
    }
  }
}

- (void)stopSessionGoAwayTimer
{
  v15 = *MEMORY[0x1E69E9840];
  sessionGoAwayTimer = self->_sessionGoAwayTimer;
  if (sessionGoAwayTimer)
  {
    dispatch_source_cancel(sessionGoAwayTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionGoAwayTimer;
      v6 = _Block_copy(self->_sessionGoAwayBlock);
      *buf = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session GoAway timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session GoAway timer %p, block %p.");

      if (_IDSShouldLog())
      {
        v10 = _Block_copy(self->_sessionGoAwayBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session GoAway timer %p, block %p.");
      }
    }

    v7 = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = 0;

    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = 0;
  }
}

- (unsigned)hbCounter
{
  v2 = self->_hbCounter + 1;
  self->_hbCounter = v2;
  return v2;
}

- (void)setChannelSettings:(unsigned int)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  statsIntervalInSeconds = self->_statsIntervalInSeconds;
  if (statsIntervalInSeconds != a3 && statsIntervalInSeconds != 60)
  {
    v6 = a3;
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_statsIntervalInSeconds;
      *buf = 67109376;
      *v14 = v8;
      *&v14[4] = 1024;
      *&v14[6] = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "update stats interval (%u->%u).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update stats interval (%u->%u).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update stats interval (%u->%u).");
        }
      }
    }

    self->_statsIntervalInSeconds = v6;
  }

  v9 = v3 & 0x100;
  if (self->_serverIsDegraded != v9 >> 8)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (self->_serverIsDegraded)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v9)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      *v14 = v12;
      *&v14[8] = 2112;
      v15 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "update server degraded status (%@->%@).", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update server degraded status (%@->%@).");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update server degraded status (%@->%@).");
      }
    }

    self->_serverIsDegraded = BYTE1(v9);
  }
}

- (void)setTestOptionsFromUserDefaults
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = MEMORY[0x1AC562F80](@"com.apple.ids", @"QuickRelayTestOptions");
    v6 = v7;
    if (!v7)
    {
LABEL_32:
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        testStartTime = self->_testStartTime;
        *buf = 138412546;
        v25 = v6;
        v26 = 2048;
        v27 = testStartTime;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "test(%@) start time = %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"test(%@) start time = %f");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"test(%@) start time = %f");
          }
        }
      }

      goto LABEL_38;
    }

    v8 = [v7 componentsSeparatedByString:{@", "}];
    v9 = [v8 count];
    if (v9 < 2)
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "invalid test configs", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid test configs");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid test configs");
          }
        }
      }
    }

    else
    {
      v10 = v9;
      v11 = [v8 objectAtIndex:0];
      self->_testOptions = [v11 hexValue];

      if (self->_testOptions)
      {
        v12 = [v8 objectAtIndex:v10 - 1];
        [v12 doubleValue];
        self->_testStartTime = v13;

        if (self->_testStartTime < 0.0)
        {
          self->_testStartTime = 0.0;
        }

        self->_testStartTime = ids_monotonic_time() + self->_testStartTime;
        if (v10 == 4)
        {
          v19 = [v8 objectAtIndex:1];
          self->_testRequestedMessageType = [v19 unsignedIntValue];

          testSubOperation = [v8 objectAtIndex:2];
          self->_testRequestedErrorCode = [testSubOperation unsignedIntValue];
        }

        else
        {
          if (v10 != 3)
          {
LABEL_31:

            goto LABEL_32;
          }

          v14 = [v8 objectAtIndex:1];
          testSubOperation = self->_testSubOperation;
          self->_testSubOperation = v14;
        }

        goto LABEL_31;
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        *buf = 67109120;
        LODWORD(v25) = testOptions;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Invalid testOptions = %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Invalid testOptions = %d");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Invalid testOptions = %d");
          }
        }
      }
    }

    goto LABEL_38;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v25 = v4;
    v26 = 2080;
    v27 = *&v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip setting test options for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v22 = [(IDSStunCandidatePair *)self candidatePairToken];
      v23 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip setting test options for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v6 = [(IDSStunCandidatePair *)self candidatePairToken:v22];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip setting test options for %@, state [%s].");
LABEL_38:
      }
    }
  }
}

- (void)setRelayLinkID:(unsigned __int16)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_relayLinkID != a3)
  {
    v3 = a3;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      relayLinkID = self->_relayLinkID;
      *buf = 67109634;
      v8 = relayLinkID;
      v9 = 1024;
      v10 = v3;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update relay-link-id (%04x->%04x) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update relay-link-id (%04x->%04x) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update relay-link-id (%04x->%04x) for %@.");
      }
    }

    self->_relayLinkID = v3;
  }
}

- (void)setRemoteRelayLinkID:(unsigned __int16)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_remoteRelayLinkID != a3)
  {
    v3 = a3;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      *buf = 67109634;
      v8 = remoteRelayLinkID;
      v9 = 1024;
      v10 = v3;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update remote relay-link-id (%04x->%04x) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update remote relay-link-id (%04x->%04x) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update remote relay-link-id (%04x->%04x) for %@.");
      }
    }

    self->_remoteRelayLinkID = v3;
  }
}

- (void)setDelegatedLinkID:(char)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_delegatedLinkID != a3)
  {
    v3 = a3;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      delegatedLinkID = self->_delegatedLinkID;
      *buf = 67109634;
      v8 = delegatedLinkID;
      v9 = 1024;
      v10 = v3;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update delegated linkID (%d->%d) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update delegated linkID (%d->%d) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update delegated linkID (%d->%d) for %@.");
      }
    }

    self->_delegatedLinkID = v3;
  }
}

- (void)setServerIsDegraded:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_serverIsDegraded != a3)
  {
    v3 = a3;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_serverIsDegraded)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *buf = 138412802;
      v9 = v7;
      v10 = 2112;
      if (v3)
      {
        v6 = @"YES";
      }

      v11 = v6;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update server degraded (%@->%@) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update server degraded (%@->%@) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update server degraded (%@->%@) for %@.");
      }
    }

    self->_serverIsDegraded = v3;
  }
}

- (void)setProtocolVersion:(unsigned __int8)a3 isInitiator:(BOOL)a4 enableSKE:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    protocolVersion = self->_protocolVersion;
    v11 = @"NO";
    if (self->_isInitiator)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if (v6)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    sessionID = self->_sessionID;
    if (self->_enableSKE)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *buf = 67110658;
    if (v5)
    {
      v11 = @"YES";
    }

    v17 = protocolVersion;
    v18 = 1024;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = sessionID;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.", buf, 0x40u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.");
      }
    }
  }

  self->_protocolVersion = v7;
  self->_isInitiator = v6;
  self->_enableSKE = v5;
}

- (void)deriveAES128CTRKeys:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  if (StunUtilDeriveHKDFSha256Keys(self->_relaySessionKey, self->_sessionID, self->_participantID, v4, &v32))
  {
    v5 = [v4 copy];
    hbhSalt = self->_hbhSalt;
    self->_hbhSalt = v5;

    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v32 length:16];
    encKey = self->_encKey;
    self->_encKey = v7;

    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v33 length:16];
    decKey = self->_decKey;
    self->_decKey = v9;

    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:16];
    hmacKey = self->_hmacKey;
    self->_hmacKey = v11;

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_encKey;
      v15 = self->_decKey;
      v16 = self->_hmacKey;
      relaySessionKey = self->_relaySessionKey;
      v18 = self->_hbhSalt;
      *buf = 138413570;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = relaySessionKey;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = self;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@");
        }
      }
    }
  }

  else
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilDeriveHKDFSha256Keys failed.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilDeriveHKDFSha256Keys failed.");
        }
      }
    }
  }
}

- (unint64_t)getParticipantIDHash:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v4;
  macOut[1] = v4;
  data = bswap64([a3 unsignedLongLongValue]);
  CCHmac(2u, [(NSData *)self->_hmacKey bytes], [(NSData *)self->_hmacKey length], &data, 8uLL, macOut);
  return bswap64(*&macOut[0]);
}

- (void)_addParticipantIDs:(id)a3 toParticipantIDMap:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Mutable = a4;
  v7 = [(NSDictionary *)Mutable allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v20 + 1) + 8 * v12), "unsignedLongLongValue")}];
        if (([v7 containsObject:v13] & 1) == 0)
        {
          v14 = [(IDSStunCandidatePair *)self getParticipantIDHash:v13];
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v15 = v13;
          if (v15)
          {
            CFDictionarySetValue(Mutable, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14], v15);
          }

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
          if (v16)
          {
            CFDictionarySetValue(Mutable, v15, v16);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  participantIDMap = self->_participantIDMap;
  self->_participantIDMap = Mutable;
  v18 = Mutable;
}

- (void)initParticipantIDMap:(id)a3
{
  v4 = a3;
  if (self->_hmacKey)
  {
    v5 = [(IDSQuickRelaySessionInfo *)self->_relaySessionInfo allParticipantIDs];
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = 0;
    }

    [(IDSStunCandidatePair *)self _addParticipantIDs:v5 toParticipantIDMap:v6];
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "initParticipantIDMap failed due to invalid hmac key.", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"initParticipantIDMap failed due to invalid hmac key.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"initParticipantIDMap failed due to invalid hmac key.");
        }
      }
    }
  }
}

- (void)updateParticipantIDMap:(id)a3
{
  v4 = a3;
  if (self->_hmacKey)
  {
    v5 = [(NSDictionary *)self->_participantIDMap mutableCopy];
    [(IDSStunCandidatePair *)self _addParticipantIDs:v4 toParticipantIDMap:v5];
    linkID = self->_linkID;
    v7 = [v5 description];
    v14 = MEMORY[0x1E69E9820];
    LOBYTE(v16) = linkID;
    v8 = v7;
    v15 = v8;
    cut_dispatch_log_queue();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [(NSDictionary *)self->_participantIDMap copy:v14];
      [v11 candidatePair:self didReceiveMappedParticipantsDict:v12 forLinkID:self->_linkID];
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "updateParticipantIDMap failed due to invalid hmac key.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"updateParticipantIDMap failed due to invalid hmac key.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"updateParticipantIDMap failed due to invalid hmac key.");
        }
      }
    }
  }
}

- (void)removeFromParticipantIDMap:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = v4;
  if (self->_hmacKey)
  {
    v5 = v4;
    v6 = [(NSDictionary *)self->_participantIDMap mutableCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [(IDSStunCandidatePair *)self getParticipantIDHash:v11];
          if (v11 != 0 && v6 != 0)
          {
            CFDictionaryRemoveValue(v6, v11);
          }

          if ([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12] != 0 && v6 != 0)
          {
            CFDictionaryRemoveValue(v6, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12]);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_participantIDMap, v6);
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      linkID = self->_linkID;
      participantIDMap = self->_participantIDMap;
      *buf = 138412802;
      v23 = v7;
      v24 = 1024;
      v25 = linkID;
      v26 = 2112;
      v27 = participantIDMap;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "removed %@ from participantID map for link %d:%@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removed %@ from participantID map for link %d:%@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removed %@ from participantID map for link %d:%@");
        }
      }
    }
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "removeFromParticipantIDMap failed due to invalid hmac key.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removeFromParticipantIDMap failed due to invalid hmac key.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removeFromParticipantIDMap failed due to invalid hmac key.");
        }
      }
    }
  }
}

- (void)updateURIToParticipantIDMapping:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  Value = 0;
  theDict = v3;
  if (v3 && @"qal")
  {
    Value = CFDictionaryGetValue(v3, @"qal");
  }

  v5 = Value;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = v5;
  [v6 addObjectsFromArray:v5];
  if (!self->_URIToParticipantIDs)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    URIToParticipantIDs = self->_URIToParticipantIDs;
    self->_URIToParticipantIDs = Mutable;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        if (v12)
        {
          v13 = @"qri" == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = CFDictionaryGetValue(*(*(&v33 + 1) + 8 * i), @"qri");
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "unsignedLongLongValue")}];
        if (v12 != 0 && @"tP" != 0)
        {
          v16 = CFDictionaryGetValue(v12, @"tP");
          if (v16)
          {
            v17 = v16;
            v18 = [(NSDictionary *)self->_URIToParticipantIDs objectForKeyedSubscript:v16];
            v19 = v18;
            if (v18)
            {
              if (([v18 containsObject:v15] & 1) == 0)
              {
                [v19 addObject:v15];
                CFDictionarySetValue(self->_URIToParticipantIDs, v17, v19);
              }
            }

            else
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v20 addObject:v15];
              v21 = v20;
              if (v21)
              {
                CFDictionarySetValue(self->_URIToParticipantIDs, v17, v21);
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v38 = v17;
                v39 = 2080;
                v40 = "_URIToParticipantIDs";
                _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }

  v22 = [(NSDictionary *)self->_URIToParticipantIDs description];
  if (@"qai")
  {
    v23 = theDict != 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = CFDictionaryGetValue(theDict, @"qai");
    if (v24)
    {
      v25 = IDSLoggableDescriptionForObjectOnService(v22, v24);

      v22 = v25;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(NSDictionary *)self->_URIToParticipantIDs count];
    *buf = 134218242;
    v38 = v27;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "URIToParticipantIDs count %lu: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v28 = [(NSDictionary *)self->_URIToParticipantIDs count];
      _IDSLogTransport(@"GL", @"IDS", @"URIToParticipantIDs count %lu: %@");
      if (_IDSShouldLog())
      {
        [(NSDictionary *)self->_URIToParticipantIDs count:v28];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"URIToParticipantIDs count %lu: %@");
      }
    }
  }
}

- (unint64_t)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  participantIDMap = self->_participantIDMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v9 = [(NSDictionary *)participantIDMap objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = IDSIDAliasHashUInt64([v9 unsignedLongLongValue], v6);
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218755;
      v15 = [v9 unsignedLongLongValue];
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = v6;
      v20 = 2049;
      v21 = v10;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = [v9 unsignedLongLongValue];
        _IDSLogTransport(@"GL", @"IDS", @"createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu");
        if (_IDSShouldLog())
        {
          [v9 unsignedLongLongValue];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu");
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)participantIDForAlias:(unint64_t)a3 salt:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_participantIDMap;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) unsignedLongLongValue];
        if (IDSIDAliasHashUInt64(v11, v6) == a3)
        {

          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = a3;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "participantIDForAlias: No match found for alias %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"participantIDForAlias: No match found for alias %llu salt %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"participantIDForAlias: No match found for alias %llu salt %@");
      }
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v22 = v4;
  v23 = v4;
  *__str = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  v14 = v4;
  v15 = v4;
  *v12 = v4;
  v13 = v4;
  v5 = [(IDSStunCandidate *)self->_local external];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = SAToIPPortString(__str, 0x80uLL, v5);
    v10 = 2080;
    v11 = SAToIPPortString(v12, 0x80uLL, a3);
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "original external address = %s, new external address = %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      SAToIPPortString(__str, 0x80uLL, v5);
      SAToIPPortString(v12, 0x80uLL, a3);
      _IDSLogTransport(@"GL", @"IDS", @"original external address = %s, new external address = %s");
      if (_IDSShouldLog())
      {
        SAToIPPortString(__str, 0x80uLL, v5);
        SAToIPPortString(v12, 0x80uLL, a3);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"original external address = %s, new external address = %s");
      }
    }
  }

  return !IsSameSA(a3, v5) && a3->sa_family != 0;
}

- (void)addStunRequest:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableArray *)self->_pendingStunRequests containsObject:v4]& 1) == 0)
  {
    pendingStunRequests = self->_pendingStunRequests;
    if (!pendingStunRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_pendingStunRequests;
      self->_pendingStunRequests = v6;

      pendingStunRequests = self->_pendingStunRequests;
    }

    if (v4 && pendingStunRequests)
    {
      CFArrayAppendValue(pendingStunRequests, v4);
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "add pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"add pending stun request: %@ for %@");
    }
  }
}

- (void)removeStunRequest:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:v4])
  {
    [(NSMutableArray *)self->_pendingStunRequests removeObject:v4];
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "remove pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = v4;
        v8 = self;
        _IDSLogTransport(@"GL", @"IDS", @"remove pending stun request: %@ for %@");
        if (_IDSShouldLog())
        {
          v7 = v4;
          v8 = self;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove pending stun request: %@ for %@");
        }
      }
    }
  }

  if ([(NSMutableArray *)self->_repliedStunRequests containsObject:v4, v7, v8])
  {
    [(NSMutableArray *)self->_repliedStunRequests removeObject:v4];
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "remove replied stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"remove replied stun request: %@ for %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove replied stun request: %@ for %@");
        }
      }
    }
  }
}

- (BOOL)shouldRexmitStunRequest:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_repliedStunRequests containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:v4];
  }

  return v5;
}

- (BOOL)shouldProcessStunResponse:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:v4];
  if (v5)
  {
    repliedStunRequests = self->_repliedStunRequests;
    if (!repliedStunRequests)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_repliedStunRequests;
      self->_repliedStunRequests = v7;

      repliedStunRequests = self->_repliedStunRequests;
    }

    if (v4 && repliedStunRequests)
    {
      CFArrayAppendValue(repliedStunRequests, v4);
    }

    [(NSMutableArray *)self->_pendingStunRequests removeObject:v4];
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = self;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "stun request %@ is no longer pending for %@, ignore response.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"stun request %@ is no longer pending for %@, ignore response.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"stun request %@ is no longer pending for %@, ignore response.");
        }
      }
    }
  }

  return v5;
}

- (void)_savePluginNameForRequest:(id)a3 pluginName:(id)a4
{
  key = a3;
  v6 = a4;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:key])
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    if (v6)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, key, v6);
    }
  }
}

- (id)_pluginNameForStunRequest:(id)a3
{
  Value = 0;
  if (a3)
  {
    pluginNameToStunReqID = self->_pluginNameToStunReqID;
    if (pluginNameToStunReqID)
    {
      Value = CFDictionaryGetValue(pluginNameToStunReqID, a3);
      v3 = vars8;
    }
  }

  return Value;
}

- (void)updateStunSentBytes:(int64_t)a3 requestID:(id)a4
{
  v6 = a4;
  if ((a3 & 0x8000000000000000) == 0)
  {
    Value = 0;
    key = v6;
    if (v6 && self->_stunSentBytesToRequestID)
    {
      Value = CFDictionaryGetValue(self->_stunSentBytesToRequestID, v6);
    }

    v8 = a3 + [Value unsignedIntValue];
    if (!self->_stunSentBytesToRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      stunSentBytesToRequestID = self->_stunSentBytesToRequestID;
      self->_stunSentBytesToRequestID = Mutable;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
    if (v11)
    {
      CFDictionarySetValue(self->_stunSentBytesToRequestID, key, v11);
    }

    v6 = key;
  }
}

- (unint64_t)getStunSentBytes:(id)a3
{
  v4 = a3;
  if (v4 && (stunSentBytesToRequestID = self->_stunSentBytesToRequestID) != 0)
  {
    v6 = [CFDictionaryGetValue(stunSentBytesToRequestID v4)];
  }

  else
  {
    v6 = [0 unsignedIntValue];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v7 = self->_stunSentBytesToRequestID;
  if (v7)
  {
    CFDictionaryRemoveValue(v7, v4);
  }

LABEL_7:

  return v6;
}

- (void)sendStatsRequest:(id)a3 options:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [v6 requestID];
    v12 = ids_monotonic_time();
    [v6 startTime];
    if (v13 == 0.0)
    {
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = (self->_statsIntervalInSeconds >> 1);
      if (v12 - v13 >= v14)
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v52 = v11;
          v53 = 1024;
          *v54 = v14;
          _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "stats request %@ timed out after %u seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v38 = v11;
            v40 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"stats request %@ timed out after %u seconds.");
            if (_IDSShouldLog())
            {
              v38 = v11;
              v40 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"stats request %@ timed out after %u seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v11, v38, v40];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        if (requestIDToStatsIDs)
        {
          if (v11)
          {
            v36 = CFDictionaryGetValue(requestIDToStatsIDs, v11);
            if (v36)
            {
              v37 = v36;
              [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:v11];
            }
          }
        }

        goto LABEL_66;
      }

      v12 = v13;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (![(IDSStunCandidatePair *)self shouldRexmitStunRequest:v11])
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v11];
      goto LABEL_66;
    }

LABEL_14:
    v15 = [v6 transactionID];
    v16 = StunUtilCreateMessage(3811, v15, self, v7);

    if (v16)
    {
      v17 = [v16 requestID];

      [v16 setStartTime:v12];
      [(IDSStunCandidatePair *)self addStunRequest:v17];
      Value = 0;
      if (v7 && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(v7, @"ids-extchannel-stat-identifier-key");
      }

      v19 = [Value unsignedLongLongValue];
      v20 = 0;
      if (self->_requestIDToStatsIDs && v17)
      {
        v20 = CFDictionaryGetValue(self->_requestIDToStatsIDs, v17);
      }

      v21 = [v20 unsignedLongLongValue];
      if (v19 && v19 != v21)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v23 = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
        if (v24)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, v17, v24);
        }

        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v52 = v19;
          v53 = 2112;
          *v54 = v17;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v38 = v19;
            v40 = v17;
            _IDSLogTransport(@"GL", @"IDS", @"add stats identifier %llu for %@.");
            if (_IDSShouldLog())
            {
              v38 = v19;
              v40 = v17;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"add stats identifier %llu for %@.");
            }
          }
        }
      }

      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        linkID = self->_linkID;
        *buf = 138412802;
        v52 = v17;
        v53 = 1024;
        *v54 = linkID;
        *&v54[4] = 2048;
        *&v54[6] = v19;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "send stats req %@ for link %d, statsIdentifier: %llu.", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v40 = self->_linkID;
          v42 = v19;
          v38 = v17;
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %@ for link %d, statsIdentifier: %llu.");
          if (_IDSShouldLog())
          {
            v40 = self->_linkID;
            v42 = v19;
            v38 = v17;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send stats req %@ for link %d, statsIdentifier: %llu.");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendStunMessage:v16 candidatePair:self];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = self->_packetListeners;
      v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v30)
      {
        v31 = *v47;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v47 != v31)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(&v46 + 1) + 8 * i) didSendStatsRequestWithID:v17 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v38, v40, v42), &unk_1F1AAB920}];
          }

          v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v30);
      }

      if (([(IDSStunCandidate *)self->_local transport]- 1) > 1)
      {
        v11 = v17;
        v6 = v16;
      }

      else
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_1A7C7ABD4;
        v43[3] = &unk_1E77E1068;
        v43[4] = self;
        v6 = v16;
        v44 = v6;
        v45 = v7;
        IDSTransportThreadAddBlockAfter(v43, 1.0);

        v11 = v17;
      }
    }

    else
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "failed to create stats request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create stats request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create stats request.");
          }
        }
      }

      v6 = 0;
    }

    goto LABEL_66;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v52 = v9;
    v53 = 2080;
    *v54 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = [(IDSStunCandidatePair *)self candidatePairToken];
      v41 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken:v39];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip stats request for %@, state [%s].");
LABEL_66:
      }
    }
  }
}

- (void)sendInfoRequest:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_state < 5)
  {
    v9 = [v4 requestID];
    if (v5)
    {
      v10 = ids_monotonic_time();
      [v5 startTime];
      if (v10 - v11 >= 10.0)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 transactionID];
          *buf = 138412546;
          v31 = v13;
          v32 = 1024;
          LODWORD(v33) = 10;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v22 = [v5 transactionID];
            v24 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"info request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              v22 = [v5 transactionID];
              v24 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"info request %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(v5, 26, self, 0.0);
        v14 = GLUCreateQRStunMessageEvent(v5, 0x1Au, self, 0, 0.0);
        if (v14)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v14];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v9, v22, v24];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:v9];

        goto LABEL_38;
      }
    }

    else
    {
      v15 = StunUtilCreateMessage(3812, 0, self, 0);
      v5 = v15;
      if (!v15)
      {
        v21 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "failed to create info request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create info request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create info request.");
            }
          }
        }

        v5 = 0;
        goto LABEL_38;
      }

      v16 = [v15 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v16];
      v9 = v16;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v9])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v31 = v5;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v26 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send info request %@ for %@.");

          if (_IDSShouldLog())
          {
            v27 = [(IDSStunCandidatePair *)self candidatePairToken:v5];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send info request %@ for %@.");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained sendStunMessage:v5 candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v20 requestID:v9];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1A7C7B274;
        v28[3] = &unk_1E77E0250;
        v28[4] = self;
        v5 = v5;
        v29 = v5;
        IDSTransportThreadAddBlockAfter(v28, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v9];
    }

    goto LABEL_38;
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IDSStunCandidatePair *)self candidatePairToken];
    v8 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v31 = v7;
    v32 = 2080;
    v33 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v23 = [(IDSStunCandidatePair *)self candidatePairToken];
      v25 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:v23];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].");
LABEL_38:
      }
    }
  }
}

- (void)sendQRPluginRegistrationRequest:(id)a3 options:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_state < 5)
  {
    v11 = [v6 requestID];
    if (v6)
    {
      v12 = ids_monotonic_time();
      [v6 startTime];
      if (v12 - v13 >= 10.0)
      {
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v6 transactionID];
          *buf = 138412546;
          v41 = v28;
          v42 = 1024;
          LODWORD(v43) = 10;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "plugin registration request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v31 = [v6 transactionID];
            v33 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"plugin registration request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              v31 = [v6 transactionID];
              v33 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"plugin registration request %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(v6, 26, self, 0.0);
        v29 = GLUCreateQRStunMessageEvent(v6, 0x21u, self, 0, 0.0);
        if (v29)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v29];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v11, v31, v33];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:v11];

        goto LABEL_48;
      }

      v14 = v11;
    }

    else
    {
      v6 = StunUtilCreateMessage(3816, 0, self, v7);
      v15 = [(IDSStunCandidatePair *)self encKey];
      [v6 initAES128CTR:v15];

      if (!v6)
      {
        v30 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "failed to create QR plugin registration request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create QR plugin registration request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QR plugin registration request.");
            }
          }
        }

        v6 = 0;
        goto LABEL_48;
      }

      v14 = [v6 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v14];
      Value = 0;
      if (v7 && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(v7, @"gl-option-plugin-operation");
      }

      v17 = [Value isEqualToNumber:&unk_1F1B20330];
      v18 = @"Unregister";
      if (v17)
      {
        v18 = @"Register";
      }

      v19 = v18;
      v20 = 0;
      v21 = MEMORY[0x1E696AEC0];
      if (v7 && @"gl-option-plugin-name")
      {
        v20 = CFDictionaryGetValue(v7, @"gl-option-plugin-name");
      }

      v22 = [v21 stringWithFormat:@"%@.%@", v20, v19];
      [(IDSStunCandidatePair *)self _savePluginNameForRequest:v14 pluginName:v22];
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v14])
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v41 = v6;
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v35 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send QR plugin registration request %@ for %@.");

          if (_IDSShouldLog())
          {
            v36 = [(IDSStunCandidatePair *)self candidatePairToken:v6];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send QR plugin registration request %@ for %@.");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v26 = [WeakRetained sendStunMessage:v6 candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v26 requestID:v14];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = sub_1A7C7BA0C;
        v37[3] = &unk_1E77E1068;
        v37[4] = self;
        v6 = v6;
        v38 = v6;
        v39 = v7;
        IDSTransportThreadAddBlockAfter(v37, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v14];
      [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:v14];
    }

    v11 = v14;
LABEL_48:

    goto LABEL_49;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v41 = v9;
    v42 = 2080;
    v43 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = [(IDSStunCandidatePair *)self candidatePairToken];
      v34 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken:v32];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].");
        goto LABEL_48;
      }
    }
  }

LABEL_49:
}

- (void)sendSessionInfoRequest:(id)a3 options:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [v6 requestID];
    if (v6)
    {
      v12 = ids_monotonic_time();
      [v6 startTime];
      if (v12 - v13 >= 10.0)
      {
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v6 transactionID];
          *buf = 138412546;
          v47 = v33;
          v48 = 1024;
          LODWORD(v49) = 10;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "session-info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v38 = [v6 transactionID];
            v40 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"session-info request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              v38 = [v6 transactionID];
              v40 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info request %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(v6, 30, self, 0.0);
        v34 = GLUCreateQRStunMessageEvent(v6, 0x1Eu, self, 0, 0.0);
        if (v34)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v34];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v11, v38, v40];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:v11];

        goto LABEL_52;
      }

      v14 = v11;
    }

    else
    {
      v21 = StunUtilCreateMessage(3813, 0, self, v7);
      v6 = v21;
      if (!v21)
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "failed to create session-info request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create session-info request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create session-info request.");
            }
          }
        }

        v6 = 0;
        goto LABEL_52;
      }

      [v21 initAES128CTR:self->_encKey];
      v14 = [v6 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v14];
      Value = 0;
      if (v7 && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(v7, @"gl-option-sessioninfo-link-id-to-query");
      }

      v23 = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v26 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v27 = [MEMORY[0x1E696AD98] numberWithChar:v23];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v27 forKey:v14];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v28;
      }

      if (v7)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v30 = CFDictionaryGetValue(v7, @"gl-option-sessioninfo-request-type");
          if (v30)
          {
            v31 = v30;
            CFDictionarySetValue(self->_requestIDToSessionInfoReqType, v14, v30);
          }
        }
      }
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v14])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v16 = [WeakRetained sendStunMessage:v6 candidatePair:self];

      if (v16 == -2)
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v47 = v6;
          v48 = 2112;
          v49 = v18;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "error: failed to send session-info request %@ for %@ because it exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v40 = v38 = v6;
            _IDSLogTransport(@"GL", @"IDS", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v6];
              v40 = v38 = v6;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v14, v38, v40];
        v19 = objc_loadWeakRetained(&self->_delegate);
        [v19 candidatePair:self didReceiveSessionInfo:0 status:1];

        v20 = GLUCreateQRStunMessageEvent(v6, 0x24u, self, 0, 0.0);
        if (v20)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v20];
        }
      }

      else
      {
        [(IDSStunCandidatePair *)self updateStunSentBytes:v16 requestID:v14];
        v36 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v47 = v6;
          v48 = 2112;
          v49 = v37;
          v50 = 2048;
          v51 = v16;
          _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v40 = [(IDSStunCandidatePair *)self candidatePairToken];
            v42 = v16;
            v38 = v6;
            _IDSLogTransport(@"GL", @"IDS", @"send session-info request %@ for %@, sentBytes: %lu");

            if (_IDSShouldLog())
            {
              v40 = [(IDSStunCandidatePair *)self candidatePairToken:v6];
              v42 = v16;
              v38 = v6;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"send session-info request %@ for %@, sentBytes: %lu");
            }
          }
        }

        if (([(IDSStunCandidate *)self->_local transport:v38]- 1) <= 1)
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = sub_1A7C7C39C;
          v43[3] = &unk_1E77E1068;
          v43[4] = self;
          v6 = v6;
          v44 = v6;
          v45 = v7;
          IDSTransportThreadAddBlockAfter(v43, 1.0);
        }
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v14];
      [(NSMutableDictionary *)self->_requestIDToQueryLinkIDs removeObjectForKey:v14];
      [(NSMutableDictionary *)self->_requestIDToSessionInfoReqType removeObjectForKey:v14];
    }

    v11 = v14;
LABEL_52:

    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v47 = v9;
    v48 = 2080;
    v49 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = [(IDSStunCandidatePair *)self candidatePairToken];
      v41 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken:v39];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].");
        goto LABEL_52;
      }
    }
  }

LABEL_53:
}

- (void)sendPutMaterialRequest:(id)a3 options:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [v6 requestID];
    if (v6)
    {
      v12 = ids_monotonic_time();
      [v6 startTime];
      if (v12 - v13 >= 10.0)
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v6 transactionID];
          *buf = 138412546;
          v38 = v27;
          v39 = 1024;
          LODWORD(v40) = 10;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "PutMaterial request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v30 = [v6 transactionID];
            v32 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"PutMaterial request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              v30 = [v6 transactionID];
              v32 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"PutMaterial request %@ timed out after %d seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v11, v30, v32];
        v28 = GLUCreateQRStunMessageEventWithEventSubType(244, 0x28u, self, 0, 10.0);
        if (v28)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v28];
        }

        goto LABEL_53;
      }

      v14 = v6;
    }

    else
    {
      v15 = StunUtilCreateMessage(3817, 0, self, v7);
      v14 = v15;
      if (!v15)
      {
        v29 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "failed to create PutMaterial request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create PutMaterial request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create PutMaterial request.");
            }
          }
        }

        v6 = 0;
        goto LABEL_53;
      }

      [v15 initAES128CTR:self->_encKey];
      v16 = [v14 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v16];
      v11 = v16;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v11])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v38 = v14;
        v39 = 2112;
        v40 = v18;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send PutMaterial request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v32 = v30 = v14;
          _IDSLogTransport(@"GL", @"IDS", @"send PutMaterial request %@ for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:v14];
            v32 = v30 = v14;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send PutMaterial request %@ for %@.");
          }
        }
      }

      v19 = v6 != 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v21 = [WeakRetained sendStunMessage:v14 candidatePair:self];

      v22 = v21 != -2 || v19;
      if ((v22 & 1) == 0)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v38 = v14;
          v39 = 2112;
          v40 = v24;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "warning: send PutMaterial request %@ for %@ exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v32 = v30 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"warning: send PutMaterial request %@ for %@ exceeds MTU size");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v14];
              v32 = v30 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"warning: send PutMaterial request %@ for %@ exceeds MTU size");
            }
          }
        }

        v25 = GLUCreateQRStunMessageEvent(v14, 0x24u, self, 0, 0.0);
        if (v25)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v25];
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v21 requestID:v11, v30, v32];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_1A7C7CBC8;
        v34[3] = &unk_1E77E1068;
        v34[4] = self;
        v6 = v14;
        v35 = v6;
        v36 = v7;
        IDSTransportThreadAddBlockAfter(v34, 1.0);

        goto LABEL_53;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v11];
    }

    v6 = v14;
    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v38 = v9;
    v39 = 2080;
    v40 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip PutMaterial request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v31 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip PutMaterial request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken:v31];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip PutMaterial request for %@, state [%s].");
LABEL_53:
      }
    }
  }
}

- (void)sendParticipantUpdateRequest:(id)a3 options:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [v6 requestID];
    if (v6)
    {
      v12 = ids_monotonic_time();
      [v6 startTime];
      if (v12 - v13 >= 10.0)
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v6 transactionID];
          *buf = 138412802;
          v45 = v27;
          v46 = 2112;
          v47 = v11;
          v48 = 1024;
          v49 = 10;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "participant update request %@ requestID: %@ timed out after %d seconds.", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [v6 transactionID];
            v38 = v11;
            v36 = v40 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"participant update request %@ requestID: %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              [v6 transactionID];
              v38 = v11;
              v36 = v40 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"participant update request %@ requestID: %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(v6, 32, self, 0.0);
        v28 = GLUCreateQRStunMessageEvent(v6, 0x20u, self, 0, 0.0);
        if (v28)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v28];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v11, v36, v38, v40];
        v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
        Value = 0;
        if (v7 && @"gl-option-participant-update-request-type")
        {
          Value = CFDictionaryGetValue(v7, @"gl-option-participant-update-request-type");
        }

        v31 = [Value intValue];
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v31];
        if (v32)
        {
          CFDictionarySetValue(v29, @"ids-stun-attribute-session-state-type", v32);
        }

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:2];
        if (v33)
        {
          CFDictionarySetValue(v29, @"ids-stun-message-type", v33);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F644();
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained candidatePair:self didReceiveParticipantUpdate:v29 status:2];

        goto LABEL_62;
      }

      v14 = v6;
    }

    else
    {
      v15 = StunUtilCreateMessage(3815, 0, self, v7);
      v14 = v15;
      if (!v15)
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "failed to create participant update request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create participant update request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create participant update request.");
            }
          }
        }

        v6 = 0;
        goto LABEL_62;
      }

      [v15 initAES128CTR:self->_encKey];
      v16 = [v14 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v16];
      v11 = v16;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v11])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v45 = v14;
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send participant update request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v38 = v36 = v14;
          _IDSLogTransport(@"GL", @"IDS", @"send participant update request %@ for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:v14];
            v38 = v36 = v14;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send participant update request %@ for %@.");
          }
        }
      }

      v19 = v6 != 0;
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = [v20 sendStunMessage:v14 candidatePair:self];

      v22 = v21 != -2 || v19;
      if ((v22 & 1) == 0)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v45 = v14;
          v46 = 2112;
          v47 = v24;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "warning: send participant update request %@ for %@ exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v38 = v36 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"warning: send participant update request %@ for %@ exceeds MTU size");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v14];
              v38 = v36 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"warning: send participant update request %@ for %@ exceeds MTU size");
            }
          }
        }

        v25 = GLUCreateQRStunMessageEvent(v14, 0x24u, self, 0, 0.0);
        if (v25)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v25];
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v21 requestID:v11, v36, v38];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = sub_1A7C7D500;
        v41[3] = &unk_1E77E1068;
        v41[4] = self;
        v6 = v14;
        v42 = v6;
        v43 = v7;
        IDSTransportThreadAddBlockAfter(v41, 1.0);

        goto LABEL_62;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v11];
    }

    v6 = v14;
    goto LABEL_62;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v45 = v9;
    v46 = 2080;
    v47 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = [(IDSStunCandidatePair *)self candidatePairToken];
      v39 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken:v37];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].");
LABEL_62:
      }
    }
  }
}

- (BOOL)sendQUICGetMaterialRequest:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:v4 candidatePair:self];

    v8 = [v4 transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:v8];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v8];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v11;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send get material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send get material request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:v4];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send get material request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7D8E8;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = v8;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = v13;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip get material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v16 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip get material request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:v16];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip get material request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICPutMaterialRequest:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:v4 candidatePair:self];

    v8 = [v4 transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:v8];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v8];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v11;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send put material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send put material request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:v4];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send put material request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7DE80;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = v8;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = v13;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip put material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v16 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip put material request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:v16];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip put material request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICCallModeUpdateRequest:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:v4 candidatePair:self];

    v8 = [v4 transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:v8];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v8];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v11;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send CallModeUpdate request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send CallModeUpdate request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:v4];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send CallModeUpdate request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7E440;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = v8;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = v13;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip CallModeUpdate request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v16 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip CallModeUpdate request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:v16];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip CallModeUpdate request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (void)sendTestRequest:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    self->_testStartTime = 0.0;
    v9 = self->_testSubOperation == 0;
    v10 = MEMORY[0x1E695DF20];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
    if (v9)
    {
      [v10 dictionaryWithObject:v11 forKey:@"gl-option-test-options-flags"];
    }

    else
    {
      [v10 dictionaryWithObjectsAndKeys:{v11, @"gl-option-test-options-flags", self->_testSubOperation, @"gl-option-test-sub-operation", 0}];
    }
    v8 = ;

    v12 = [v4 requestID];
    if (v4)
    {
      v13 = ids_monotonic_time();
      [v4 startTime];
      if (v13 - v14 >= 10.0)
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 transactionID];
          *buf = 138412546;
          *v39 = v16;
          *&v39[8] = 1024;
          *&v39[10] = 10;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "test request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v31 = [v4 transactionID];
            v33 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"test request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              v31 = [v4 transactionID];
              v33 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"test request %@ timed out after %d seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:v12, v31, v33];
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v17 = StunUtilCreateMessage(2049, 0, self, v8);
      v4 = v17;
      if (!v17)
      {
        v30 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "failed to create test request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create test request.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create test request.");
            }
          }
        }

        v4 = 0;
        goto LABEL_39;
      }

      v18 = [v17 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:v18];
      v12 = v18;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:v12])
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testSubOperation = self->_testSubOperation;
        v22 = [(IDSStunCandidatePair *)self candidatePairToken];
        linkID = self->_linkID;
        *buf = 67110402;
        *v39 = testOptions;
        *&v39[4] = 2112;
        *&v39[6] = testSubOperation;
        *&v39[14] = 2112;
        *&v39[16] = v4;
        v40 = 2112;
        v41 = v22;
        v42 = 2112;
        v43 = v12;
        v44 = 1024;
        v45 = linkID;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "send test(0x%x,%@) request %@ for %@, %@ link: %d", buf, 0x36u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = self->_testOptions;
          v25 = self->_testSubOperation;
          v26 = [(IDSStunCandidatePair *)self candidatePairToken];
          v35 = self->_linkID;
          _IDSLogTransport(@"GL", @"IDS", @"send test(0x%x,%@) request %@ for %@, %@ link: %d");

          if (_IDSShouldLog())
          {
            v27 = [(IDSStunCandidatePair *)self candidatePairToken:v24];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send test(0x%x,%@) request %@ for %@, %@ link: %d");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = [WeakRetained sendStunMessage:v4 candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v29 requestID:v12];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1A7C7ED30;
        v36[3] = &unk_1E77E0250;
        v36[4] = self;
        v4 = v4;
        v37 = v4;
        IDSTransportThreadAddBlockAfter(v36, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:v12];
    }

    goto LABEL_39;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    *v39 = v6;
    *&v39[8] = 2080;
    *&v39[10] = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = [(IDSStunCandidatePair *)self candidatePairToken];
      v34 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:v32];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test request for %@, state [%s].");
LABEL_40:
      }
    }
  }
}

- (void)_handleLinkProbingTimer
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"gl-attr-active-probing-link-id";
  v3 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
  v16[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  if (self->_remoteRelayLinkID)
  {
    v13[0] = @"gl-attr-active-probing-link-id";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
    v14[0] = v5;
    v13[1] = @"gl-attr-remote-relay-link-id";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_remoteRelayLinkID];
    v14[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v4 = v7;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "_handleLinkProbingTimer for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_handleLinkProbingTimer for %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_handleLinkProbingTimer for %@");
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(IDSStunCandidatePair *)self candidatePairToken];
  [WeakRetained sendProbingRequestWithoptions:v4 candidatePairToken:v10];
}

- (void)startLinkProbingTimer:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  probingTimer = self->_probingTimer;
  if (probingTimer)
  {
    dispatch_source_cancel(probingTimer);
  }

  v6 = im_primary_queue();
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
  v8 = self->_probingTimer;
  self->_probingTimer = v7;

  dispatch_source_set_timer(self->_probingTimer, 0, (a3 / 1000.0 * 1000000000.0), 0xF4240uLL);
  v9 = self->_probingTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C7F1B0;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_probingTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_probingTimer;
    *buf = 134218498;
    v14 = v11;
    v15 = 2112;
    v16 = self;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start link probing timer %p for %@, interval: %u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start link probing timer %p for %@, interval: %u");
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start link probing timer %p for %@, interval: %u");
    }
  }
}

- (void)stopLinkProbingTimer
{
  v11 = *MEMORY[0x1E69E9840];
  probingTimer = self->_probingTimer;
  if (probingTimer)
  {
    dispatch_source_cancel(probingTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_probingTimer;
      *buf = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = self;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop link probing timer %p for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop link probing timer %p for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop link probing timer %p for %@.");
      }
    }

    v6 = self->_probingTimer;
    self->_probingTimer = 0;
  }
}

- (BOOL)processStatsResponse:(id)a3 arrivalTime:(double)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 requestID];
  if ([(IDSStunCandidatePair *)self shouldProcessStunResponse:v7])
  {
    v51 = 0;
    HasValidUInt32Attr = StunUtilHasValidUInt32Attr(v6, 65523, &v51);
    if (HasValidUInt32Attr)
    {
      v9 = ntpTime32(a4);
      v10 = vcvtd_n_f64_u32((v9 - v51), 0x10uLL) + ((v9 - v51) >> 16);
      serverLatency = self->_serverLatency;
      if (serverLatency == 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 * 0.1 + serverLatency * 0.9;
      }

      self->_serverLatency = v12;
      v46 = (v10 * 1000.0);
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 requestID];
        v15 = (self->_serverLatency * 1000.0);
        linkID = self->_linkID;
        *buf = 138413058;
        v54 = v14;
        v55 = 1024;
        *v56 = linkID;
        *&v56[4] = 1024;
        *&v56[6] = v46;
        v57 = 1024;
        v58 = v15;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v17 = [v6 requestID];
          v45 = (self->_serverLatency * 1000.0);
          v41 = self->_linkID;
          v44 = v46;
          v38 = v17;
          _IDSLogTransport(@"GL", @"IDS", @"recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).");

          if (_IDSShouldLog())
          {
            v18 = [v6 requestID];
            v45 = (self->_serverLatency * 1000.0);
            v41 = self->_linkID;
            v44 = v46;
            v38 = v18;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).");
          }
        }
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v19 = self->_packetListeners;
      v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v20)
      {
        v21 = *v48;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v47 + 1) + 8 * i) didReceiveStatsResponseWithID:v7 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v38, v41, v44, v45), &unk_1F1AAB940}];
          }

          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v20);
      }

      Value = 0;
      if (v7 && self->_requestIDToStatsIDs)
      {
        Value = CFDictionaryGetValue(self->_requestIDToStatsIDs, v7);
      }

      v24 = Value;
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v24 unsignedLongLongValue];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        *buf = 134218242;
        v54 = v26;
        v55 = 2112;
        *v56 = requestIDToStatsIDs;
        _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "statsIdentifier: %llu, requestIDToStatsIDs: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v39 = [v24 unsignedLongLongValue];
          v42 = self->_requestIDToStatsIDs;
          _IDSLogTransport(@"GL", @"IDS", @"statsIdentifier: %llu, requestIDToStatsIDs: %@");
          if (_IDSShouldLog())
          {
            [v24 unsignedLongLongValue];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"statsIdentifier: %llu, requestIDToStatsIDs: %@");
          }
        }
      }

      if (v24)
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
        CFDictionarySetValue(v28, @"gl-option-stats-identifier", v24);
        v29 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
        if (v29)
        {
          CFDictionarySetValue(v28, @"gl-option-linkid", v29);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F6CC();
        }

        v31 = [MEMORY[0x1E696AD98] numberWithInt:v46];
        if (v31)
        {
          CFDictionarySetValue(v28, @"gl-option-stats-server-timestamp", v31);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F754();
        }

        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v24 unsignedLongLongValue];
          v34 = self->_linkID;
          *buf = 134218496;
          v54 = v33;
          v55 = 1024;
          *v56 = v34;
          *&v56[4] = 1024;
          *&v56[6] = v46;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v35 = [v24 unsignedLongLongValue];
            v43 = self->_linkID;
            v40 = v35;
            _IDSLogTransport(@"GL", @"IDS", @"processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms");
            if (_IDSShouldLog())
            {
              [v24 unsignedLongLongValue];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms");
            }
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained candidatePair:self didReceiveSessionStats:v28 success:1];

        [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:v7];
      }
    }

    else
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "receive invalid stats response, missing client-timestamp.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"receive invalid stats response, missing client-timestamp.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid stats response, missing client-timestamp.");
          }
        }
      }
    }
  }

  else
  {
    HasValidUInt32Attr = 1;
  }

  return HasValidUInt32Attr;
}

- (BOOL)_optionallyCheckEncMarker:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(__b, 170, sizeof(__b));
  v9 = 0;
  if (!StunUtilHasValidBinaryDataAttr(v3, 60934, __b, &v9))
  {
    goto LABEL_4;
  }

  if (v9 != 4)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v9;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "optionallyCheckEncMarker failed due to invalid marker length (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"optionallyCheckEncMarker failed due to invalid marker length (%d)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"optionallyCheckEncMarker failed due to invalid marker length (%d)");
        }
      }
    }

    goto LABEL_17;
  }

  if (__b[0] != 1414938954)
  {
    v6 = bswap32(__b[0]);
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = v6;
      v12 = 1024;
      v13 = 1245795924;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).");
        }
      }
    }

LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

- (BOOL)processInfoResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v9];

  if (v10)
  {
    if ((StunUtilHasValidChannelNumber(v8, self->_channelNumber, 0) & 1) != 0 || self->_state < 3)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v13;
      v40 = v13;
      v37 = v13;
      v38 = v13;
      v35 = v13;
      v36 = v13;
      *buf = v13;
      v34 = v13;
      v32[6] = v13;
      v32[7] = v13;
      v32[4] = v13;
      v32[5] = v13;
      v32[2] = v13;
      v32[3] = v13;
      v32[0] = v13;
      v32[1] = v13;
      HasValidXorMappedAddress = StunUtilHasValidXorMappedAddress(v8, v32);
      if (HasValidXorMappedAddress)
      {
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315138;
          v31 = SAToIPPortString(buf, 0x80uLL, v32);
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Got info response with xor-mapped-address [%s]", v30, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            SAToIPPortString(buf, 0x80uLL, v32);
            _IDSLogTransport(@"GL", @"IDS", @"Got info response with xor-mapped-address [%s]");
            if (_IDSShouldLog())
            {
              SAToIPPortString(buf, 0x80uLL, v32);
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Got info response with xor-mapped-address [%s]");
            }
          }
        }

        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(IDSStunCandidatePair *)self candidatePairToken];
          *v30 = 138412290;
          v31 = v16;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", v30, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v26 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.");

            if (_IDSShouldLog())
            {
              v27 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.");
            }
          }
        }

        v17 = StunUtilProcessActiveParticipants(v8);
        v18 = StunUtilProcessLightweightParticipants(v8);
        if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:v8])
        {
          var2 = a4->var2;
          v20 = [v8 requestID];
          v21 = [(IDSStunCandidatePair *)self getStunSentBytes:v20];

          v22 = 0;
          v23 = var2 + a5;
        }

        else
        {
          v23 = 0;
          v21 = 0;
          v22 = 4;
        }

        BYTE4(v29) = 0;
        HIDWORD(v28) = v22;
        LODWORD(v29) = 0;
        LOWORD(v28) = 1;
        [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:v17 joinedParticipantInfo:v18 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v21 offlineRequest:v23 streamInfoRequest:v28 status:v29 commandFlag:? isIndication:?];
      }

      else
      {
        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "processInfoResponse failed due to invalid xor-mapped-address.", v30, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processInfoResponse failed due to invalid xor-mapped-address.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processInfoResponse failed due to invalid xor-mapped-address.");
            }
          }
        }
      }
    }

    else
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "processInfoResponse failed due to invalid channel-number.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processInfoResponse failed due to invalid channel-number.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processInfoResponse failed due to invalid channel-number.");
          }
        }
      }

      LOBYTE(HasValidXorMappedAddress) = 0;
    }
  }

  else
  {
    LOBYTE(HasValidXorMappedAddress) = 1;
  }

  return HasValidXorMappedAddress;
}

- (BOOL)processSessionInfoResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5 isLightweightParticipant:(BOOL)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 requestID];
  v12 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v11];

  if (!v12)
  {
LABEL_35:
    v23 = 1;
    goto LABEL_36;
  }

  if (StunUtilHasValidChannelNumber(v10, self->_channelNumber, 0))
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 requestID];
      v15 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v43 = v14;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive session-info response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v16 = [v10 requestID];
        [(IDSStunCandidatePair *)self candidatePairToken];
        v38 = v37 = v16;
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %@ for %@.");

        if (_IDSShouldLog())
        {
          v17 = [v10 requestID];
          [(IDSStunCandidatePair *)self candidatePairToken];
          v38 = v37 = v17;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %@ for %@.");
        }
      }
    }

    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:v10, v37, v38])
    {
      if (self->_requestIDToQueryLinkIDs)
      {
        v18 = [v10 requestID];
        if (v18)
        {
          requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
          v20 = [v10 requestID];
          v21 = [CFDictionaryGetValue(requestIDToQueryLinkIDs v20)];
        }

        else
        {
          v21 = [0 intValue];
        }
      }

      else
      {
        v21 = [0 intValue];
      }

      v24 = StunUtilProcessStreamInfo(v10, self->_linkID, v21);
      Value = 0;
      if (v24 && @"stream-info-peer-published-streams")
      {
        Value = CFDictionaryGetValue(v24, @"stream-info-peer-published-streams");
      }

      v25 = StunUtilProcessParticipants(Value, self->_participantID, a6);
      v27 = StunUtilProcessLightweightParticipants(v10);
      var2 = a4->var2;
      v31 = [v10 requestID];
      v41 = [(IDSStunCandidatePair *)self getStunSentBytes:v31];

      v28 = 0;
      v26 = var2 + a5;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v41 = 0;
      v27 = 0;
      v28 = 4;
    }

    if (self->_requestIDToSessionInfoReqType)
    {
      v32 = [v10 requestID];
      if (v32)
      {
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        v34 = [v10 requestID];
        v35 = [CFDictionaryGetValue(requestIDToSessionInfoReqType v34)];
      }

      else
      {
        v35 = [0 intValue];
      }
    }

    else
    {
      v35 = [0 intValue];
    }

    BYTE4(v40) = 0;
    HIDWORD(v39) = v28;
    LODWORD(v40) = 0;
    BYTE1(v39) = v35 == 2;
    LOBYTE(v39) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v24 lightweightParticipants:v25 joinedParticipantInfo:v27 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v41 offlineRequest:v26 streamInfoRequest:v39 status:v40 commandFlag:? isIndication:?];

    goto LABEL_35;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processSessionInfoResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processSessionInfoResponse failed due to invalid channel-number.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processSessionInfoResponse failed due to invalid channel-number.");
      }
    }
  }

  v23 = 0;
LABEL_36:

  return v23;
}

- (BOOL)processTestResponse:(id)a3 arrivalTime:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 requestID];
  v7 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v6];

  if (!v7)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(v5, self->_channelNumber, 0))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.");

        if (_IDSShouldLog())
        {
          v14 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive test response for %@.");
        }
      }
    }

    goto LABEL_9;
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "processTestResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processTestResponse failed due to invalid channel-number.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processTestResponse failed due to invalid channel-number.");
      }
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (BOOL)processParticipantUpdateResponse:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v5];

  if (!v6)
  {
LABEL_13:
    v15 = 1;
    goto LABEL_21;
  }

  if (StunUtilHasValidChannelNumber(v4, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 requestID];
      v9 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = [v4 requestID];
        [(IDSStunCandidatePair *)self candidatePairToken];
        v19 = v18 = v10;
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %@ for %@.");

        if (_IDSShouldLog())
        {
          v11 = [v4 requestID];
          [(IDSStunCandidatePair *)self candidatePairToken];
          v19 = v18 = v11;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %@ for %@.");
        }
      }
    }

    v12 = StunUtilProcessParticipantUpdate(v4, 0, [v4 type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:v4])
    {
      v13 = 0;
    }

    else
    {
      v13 = 4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v12 status:v13];

    goto LABEL_13;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "processParticipantUpdateResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processParticipantUpdateResponse failed due to invalid channel-number.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processParticipantUpdateResponse failed due to invalid channel-number.");
      }
    }
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (BOOL)processPutMaterialResponse:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v5];

  if (!v6)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(v4, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 requestID];
      v9 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive PutMaterial response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = [v4 requestID];
        v15 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive PutMaterial response %@ for %@.");

        if (_IDSShouldLog())
        {
          v11 = [v4 requestID];
          v16 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive PutMaterial response %@ for %@.");
        }
      }
    }

    goto LABEL_9;
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "processPutMaterialResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processPutMaterialResponse failed due to invalid channel-number.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processPutMaterialResponse failed due to invalid channel-number.");
      }
    }
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)processInfoIndication:(id)a3 arrivalTime:(double)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive info indication for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive info indication for %@.");

      if (_IDSShouldLog())
      {
        v10 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info indication for %@.");
      }
    }
  }

  return 1;
}

- (BOOL)processSessionInfoIndication:(id)a3 arrivalTime:(double)a4 isLightweightParticipant:(BOOL)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(v7, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication for %@.");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication for %@.");
        }
      }
    }

    v11 = StunUtilProcessStreamInfo(v7, self->_linkID, self->_linkID);
    Value = 0;
    if (v11 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v11, @"stream-info-peer-published-streams");
    }

    v13 = StunUtilProcessParticipants(Value, self->_participantID, a5);
    v14 = StunUtilProcessLightweightParticipants(v7);
    BYTE4(v20) = 1;
    LODWORD(v20) = 0;
    LOWORD(v19) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v11 lightweightParticipants:v13 joinedParticipantInfo:v14 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:0 offlineRequest:0 streamInfoRequest:v19 status:v20 commandFlag:? isIndication:?];
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "processSessionInfoIndication failed due to invalid channel-number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processSessionInfoIndication failed due to invalid channel-number.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processSessionInfoIndication failed due to invalid channel-number.");
        }
      }
    }
  }

  return HasValidChannelNumber;
}

- (BOOL)processDataMessageErrorIndication:(id)a3
{
  v48[184] = *MEMORY[0x1E69E9840];
  v4 = a3;
  bzero(v45, 0x5D0uLL);
  if (([v4 getAttribute:9 attribute:v45] & 1) == 0)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_ERROR, "receive invalid data message error indication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV(0, @"IDSFoundation", @"Warning", @"receive invalid data message error indication.");
      _IDSLogTransport(@"Warning", @"IDS", @"receive invalid data message error indication.");
    }

    goto LABEL_25;
  }

  v5 = v47 + 100 * v46;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 2080;
    *&buf[20] = v48;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive data message error indication for %@, error_code(%u) reason(%s)", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v33 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive data message error indication for %@, error_code(%u) reason(%s)");

      if (_IDSShouldLog())
      {
        v34 = [(IDSStunCandidatePair *)self candidatePairToken:v33];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive data message error indication for %@, error_code(%u) reason(%s)");
      }
    }
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  v41 = v8;
  v42 = v8;
  v39 = v8;
  v40 = v8;
  *buf = v8;
  *&buf[16] = v8;
  v37[6] = v8;
  v37[7] = v8;
  v37[4] = v8;
  v37[5] = v8;
  v37[2] = v8;
  v37[3] = v8;
  v37[0] = v8;
  v37[1] = v8;
  if (StunUtilHasValidXorMappedAddress(v4, v37))
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 136315138;
      v36 = SAToIPPortString(buf, 0x80uLL, v37);
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Got error indication with xor-mapped-address [%s]", v35, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        SAToIPPortString(buf, 0x80uLL, v37);
        _IDSLogTransport(@"GL", @"IDS", @"Got error indication with xor-mapped-address [%s]");
        if (_IDSShouldLog())
        {
          SAToIPPortString(buf, 0x80uLL, v37);
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Got error indication with xor-mapped-address [%s]");
        }
      }
    }
  }

  if (v5 > 0x25Fu)
  {
    switch(v5)
    {
      case 0x260u:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          v24 = objc_loadWeakRetained(&self->_delegate);
          [v24 receiveBlockedIndicationWithReason:49];
        }

        goto LABEL_45;
      case 0x262u:
        v29 = objc_loadWeakRetained(&self->_delegate);
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          v31 = objc_loadWeakRetained(&self->_delegate);
          [v31 receiveErrorIndicationWithCode:1];
        }

        goto LABEL_45;
      case 0x263u:
        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = objc_loadWeakRetained(&self->_delegate);
          [v17 receiveBlockedIndicationWithReason:46];
        }

        goto LABEL_45;
    }

LABEL_35:
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 67109120;
      LODWORD(v36) = v5;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "invalid case: %hu", v35, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid case: %hu");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid case: %hu");
        }
      }
    }

LABEL_25:
    v14 = 0;
    goto LABEL_46;
  }

  if (v5 != 601)
  {
    if (v5 == 602)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        v28 = objc_loadWeakRetained(&self->_delegate);
        [v28 receiveIdleClientErrorForCandidatePair:self];
      }

      goto LABEL_45;
    }

    if (v5 == 603)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        [v12 receiveBlockedIndicationWithReason:44];
      }

      goto LABEL_45;
    }

    goto LABEL_35;
  }

  v18 = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
LABEL_45:
    v14 = 1;
    goto LABEL_46;
  }

  v20 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:v37];
  v21 = objc_loadWeakRetained(&self->_delegate);
  v14 = [v21 receiveNoSessionStateForCandidatePair:self didLocalExternalAddressChange:v20];

LABEL_46:
  return v14;
}

- (BOOL)processParticipantUpdateIndication:(id)a3 arrivalTime:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(v5, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication for %@.");

        if (_IDSShouldLog())
        {
          v14 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication for %@.");
        }
      }
    }

    v9 = StunUtilProcessParticipantUpdate(v5, 0, [v5 type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:v5])
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v9 status:v10];
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "processParticipantUpdateIndication failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processParticipantUpdateIndication failed due to invalid channel number.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processParticipantUpdateIndication failed due to invalid channel number.");
        }
      }
    }
  }

  return HasValidChannelNumber;
}

- (BOOL)processPluginRegistrationResponse:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (StunUtilHasValidChannelNumber(v4, self->_channelNumber, 0))
  {
    v5 = [v4 requestID];
    v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v5];

    if (v6)
    {
      v7 = [v4 requestID];
      v8 = [(IDSStunCandidatePair *)self _pluginNameForStunRequest:v7];

      if (v8)
      {
        v9 = [v4 requestID];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:v9];
      }

      v10 = [v8 pathExtension];
      v11 = [v10 isEqualToString:@"Register"];
      if (v11 & 1) != 0 || ([v10 isEqualToString:@"Unregister"])
      {
        v27 = 0;
        v12 = StunUtilHasValidUInt64Attr(v4, 65493, &v27) | v11 ^ 1;
        if (v12)
        {
          v13 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412802;
            v29 = v14;
            v30 = 2048;
            v31 = v27;
            v32 = 2112;
            v33 = v8;
            _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive plugin update for %@, with participant id: %llu, and name %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v15 = [(IDSStunCandidatePair *)self candidatePairToken];
              v25 = v27;
              v26 = v8;
              v24 = v15;
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@");

              if (_IDSShouldLog())
              {
                v16 = [(IDSStunCandidatePair *)self candidatePairToken:v15];
                v25 = v27;
                v26 = v8;
                v24 = v16;
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@");
              }
            }
          }

          v17 = [v8 stringByDeletingPathExtension];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v19 = WeakRetained;
          if (v11)
          {
            [WeakRetained candidatePair:self didReceivePluginRegistration:v27 pluginName:v17];
          }

          else
          {
            [WeakRetained candidatePair:self didReceivePluginUnregistration:v27 pluginName:v17];
          }
        }

        else
        {
          v21 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "received update plugin needs valid participant id when registering.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"received update plugin needs valid participant id when registering.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"received update plugin needs valid participant id when registering.");
              }
            }
          }
        }
      }

      else
      {
        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "invalid plugin operation - ignoring this response", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"invalid plugin operation - ignoring this response");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid plugin operation - ignoring this response");
            }
          }
        }

        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "processPluginRegistrationResponse failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processPluginRegistrationResponse failed due to invalid channel number.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processPluginRegistrationResponse failed due to invalid channel number.");
        }
      }
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)processPluginControlIndication:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((StunUtilHasValidChannelNumber(v4, self->_channelNumber, 0) & 1) == 0)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "processPluginControlIndication failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processPluginControlIndication failed due to invalid channel number.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processPluginControlIndication failed due to invalid channel number.");
        }
      }
    }

    goto LABEL_23;
  }

  v19 = 0;
  if ((StunUtilHasValidUInt64Attr(v4, 65493, &v19) & 1) == 0)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "received plugin event needs valid participant id.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"received plugin event needs valid participant id.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"received plugin event needs valid participant id.");
        }
      }
    }

LABEL_23:
    HasValidUInt8Attr = 0;
    goto LABEL_24;
  }

  v18 = 0;
  HasValidUInt8Attr = StunUtilHasValidUInt8Attr(v4, 65491, &v18);
  if (HasValidUInt8Attr)
  {
    v6 = [v4 transactionID];
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138413058;
      v21 = v8;
      v22 = 2048;
      v23 = v19;
      v24 = 1024;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken];
        v17 = v18;
        v16 = v19;
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@");

        if (_IDSShouldLog())
        {
          v10 = [(IDSStunCandidatePair *)self candidatePairToken:v9];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:v19 operation:v18 transactionID:v6];
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "received plugin event needs valid operation.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"received plugin event needs valid operation.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"received plugin event needs valid operation.");
        }
      }
    }
  }

LABEL_24:

  return HasValidUInt8Attr;
}

- (BOOL)processStunErrorResponse:(id)a3 packetBuffer:(id *)a4 headerOverhead:(unint64_t)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:v9];

  if (!v10)
  {
LABEL_10:
    v15 = 1;
    goto LABEL_77;
  }

  v77 = -21846;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v91[6] = v11;
  v91[7] = v11;
  v91[4] = v11;
  v91[5] = v11;
  v91[2] = v11;
  v91[3] = v11;
  v91[0] = v11;
  v91[1] = v11;
  v76 = 0;
  v12 = [v8 type];
  if (StunUtilHasValidErrorCodeAttr(v8, &v77, v91, &v76))
  {
    if (self->_state == 2)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 1024;
        *&buf[14] = v12;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v67 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.");

          if (_IDSShouldLog())
          {
            v68 = [(IDSStunCandidatePair *)self candidatePairToken:v67];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"%@ is already in error state, ignore error response %04x.");
          }
        }
      }

      goto LABEL_10;
    }

    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v77;
      v19 = ids_monotonic_time();
      [v8 startTime];
      v21 = v20;
      v22 = [(IDSStunCandidate *)self->_local address][1];
      *buf = 67110146;
      *&buf[4] = v12;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      *&buf[14] = 2080;
      *&buf[16] = v91;
      *&buf[24] = 2048;
      *&buf[26] = (v19 - v21) * 1000.0;
      *&buf[34] = 1024;
      *&buf[36] = v22;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v23 = v77;
        v24 = ids_monotonic_time();
        [v8 startTime];
        v26 = v25;
        v75 = [(IDSStunCandidate *)self->_local address][1];
        *(&v74 + 1) = (v24 - v26) * 1000.0;
        v73 = v23;
        *&v74 = v91;
        v66 = v12;
        _IDSLogTransport(@"GL", @"IDS", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.");
        if (_IDSShouldLog())
        {
          v27 = v77;
          v28 = ids_monotonic_time();
          [v8 startTime];
          v30 = v29;
          v75 = [(IDSStunCandidate *)self->_local address][1];
          *(&v74 + 1) = (v28 - v30) * 1000.0;
          v73 = v27;
          *&v74 = v91;
          v66 = v12;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.");
        }
      }
    }

    v31 = GLUtilStunErrorToGlobalLinkError(v77);
    GLUtilReportAWDStunMessageEvent(v8, v31, self, 0.0);
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v89 = v32;
    v90 = v32;
    v87 = v32;
    v88 = v32;
    *&buf[32] = v32;
    v86 = v32;
    *buf = v32;
    *&buf[16] = v32;
    v84[6] = v32;
    v84[7] = v32;
    v84[4] = v32;
    v84[5] = v32;
    v84[2] = v32;
    v84[3] = v32;
    v84[0] = v32;
    v84[1] = v32;
    if (StunUtilHasValidXorMappedAddress(v8, v84))
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = SAToIPPortString(buf, 0x80uLL, v84);
        *v78 = 136315138;
        v79 = v34;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "Got error response with xor-mapped-address [%s]", v78, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v66 = SAToIPPortString(buf, 0x80uLL, v84);
          _IDSLogTransport(@"GL", @"IDS", @"Got error response with xor-mapped-address [%s]");
          if (_IDSShouldLog())
          {
            v66 = SAToIPPortString(buf, 0x80uLL, v84);
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Got error response with xor-mapped-address [%s]");
          }
        }
      }
    }

    v35 = GLUtilStunErrorToGlobalLinkError(v77);
    v36 = GLUCreateQRStunMessageEvent(v8, v35, self, 0, 0.0);
    if (v36)
    {
      [(IDSStunCandidatePair *)self _notifyQREventAdded:v36];
    }

    if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 0xFF0)
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = (&_IDSStunCandidatePairStateStrings)[self->_state];
        v39 = off_1EB2B43B8;
        v40 = [(IDSStunCandidatePair *)self candidatePairToken];
        *v78 = 136315650;
        v79 = v38;
        v80 = 2080;
        v81 = v39;
        v82 = 2112;
        v83 = v40;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", v78, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v41 = (&_IDSStunCandidatePairStateStrings)[self->_state];
          v42 = off_1EB2B43B8;
          [(IDSStunCandidatePair *)self candidatePairToken];
          *&v74 = v73 = v42;
          v66 = v41;
          _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.");

          if (_IDSShouldLog())
          {
            v43 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            v44 = off_1EB2B43B8;
            [(IDSStunCandidatePair *)self candidatePairToken:v66];
            *&v74 = v73 = v44;
            v66 = v43;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.");
          }
        }
      }

      self->_state = 2;
      v45 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        participantID = self->_participantID;
        v47 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
        *v78 = 134218242;
        v79 = participantID;
        v80 = 2112;
        v81 = v47;
        _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "failed participant:[%16llX], token:[%@]", v78, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = self->_participantID;
          [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
          v73 = v66 = v48;
          _IDSLogTransport(@"GL", @"IDS", @"failed participant:[%16llX], token:[%@]");

          if (_IDSShouldLog())
          {
            v49 = self->_participantID;
            [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0, v66, v73];
            v73 = v66 = v49;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed participant:[%16llX], token:[%@]");
          }
        }
      }
    }

    else
    {
      switch(v12)
      {
        case 4088:
          v62 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *v78 = 0;
            _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "receive plugin registrion error response", v78, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin registrion error response");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin registrion error response");
              }
            }
          }

          break;
        case 4087:
          v55 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v78 = 138412290;
            v79 = v56;
            _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", v78, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v71 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.");

              if (_IDSShouldLog())
              {
                v72 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.");
              }
            }
          }

          v57 = StunUtilProcessParticipantUpdate(v8, v77, 4087);
          v58 = v57;
          if (!v57 || ![v57 count])
          {
            v65 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *v78 = 0;
              _os_log_impl(&dword_1A7AD9000, v65, OS_LOG_TYPE_DEFAULT, "receive participant update error response: invalid participantUpdateInfo", v78, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response: invalid participantUpdateInfo");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response: invalid participantUpdateInfo");
                }
              }
            }

            v15 = 0;
            goto LABEL_76;
          }

          v59 = sub_1A7C74D88(v77);
          if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:v8])
          {
            v60 = v59;
          }

          else
          {
            v60 = 4;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained candidatePair:self didReceiveParticipantUpdate:v58 status:v60];

LABEL_75:
          v15 = 1;
LABEL_76:

          goto LABEL_77;
        case 4085:
          var2 = a4->var2;
          v51 = [v8 requestID];
          v52 = [(IDSStunCandidatePair *)self getStunSentBytes:v51];

          v53 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v78 = 138412290;
            v79 = v54;
            _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", v78, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v69 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.");

              if (_IDSShouldLog())
              {
                v70 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.");
              }
            }
          }

          BYTE12(v74) = 0;
          *(&v74 + 4) = 2;
          LOWORD(v74) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v52 offlineRequest:var2 + a5 streamInfoRequest:v74 status:v75 commandFlag:? isIndication:?];
          break;
      }
    }

    v63 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:v84, v66, v73, v74];
    v58 = objc_loadWeakRetained(&self->_delegate);
    [v58 candidatePair:self didReceiveStunErrorResponse:v12 errorCode:v77 didLocalExternalAddressChange:v63];
    goto LABEL_75;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "receive invalid stun error code attr, ignore error response %04x.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive invalid stun error code attr, ignore error response %04x.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid stun error code attr, ignore error response %04x.");
      }
    }
  }

  v15 = 0;
LABEL_77:

  return v15;
}

- (void)processSessionInfoRequestTimeout:(id)a3
{
  BYTE12(v3) = 0;
  *(&v3 + 4) = 3;
  LOWORD(v3) = 0;
  [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:a3] offlineRequest:0 streamInfoRequest:v3 status:? commandFlag:? isIndication:?];
}

- (void)_notifySessionStreamInfoReceived:(id)a3 withParticipants:(id)a4 lightweightParticipants:(id)a5 joinedParticipantInfo:(id)a6 leftParticipantInfo:(id)a7 updatedParticipantInfo:(id)a8 sentBytes:(unint64_t)a9 receivedBytes:(unint64_t)a10 offlineRequest:(BOOL)a11 streamInfoRequest:(BOOL)a12 status:(unsigned int)a13 commandFlag:(unsigned int)a14 isIndication:(BOOL)a15
{
  value = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = v25;
  if (v22)
  {
    CFDictionarySetValue(v25, @"gl-option-sessioninfo-response-joined-participant-info-key", v22);
  }

  if (v23)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-left-participant-info-key", v23);
  }

  if (v24)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-updated-participant-info-key", v24);
  }

  if (value)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-streaminfo-key", value);
  }

  if (v20)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-participants-key", v20);
  }

  if (v21)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-lightweight-participants-key", v21);
  }

  if (a9)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a9];
    if (v27)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-bytes-sent-key", v27);
    }
  }

  if (a10)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a10];
    if (v28)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-bytes-received-key", v28);
    }
  }

  if (a11)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v29)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-offline-request-key", v29);
    }
  }

  if (a12)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-type", &unk_1F1B20348);
  }

  if (a14)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a14];
    if (v30)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-command-flag", v30);
    }
  }

  if (a15)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v31)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-Indication", v31);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained candidatePair:self didReceiveSessionInfo:v26 status:a13];
}

- (void)_notifyQREventAdded:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 candidatePair:self didAddQREvent:v7];
  }
}

- (void)addProtoRequest:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  pendingProtoRequests = self->_pendingProtoRequests;
  if (!pendingProtoRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingProtoRequests;
    self->_pendingProtoRequests = v6;

    pendingProtoRequests = self->_pendingProtoRequests;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(NSMutableSet *)v10 addObject:v11];

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v14 = a3;
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "add pending proto request: %llu for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"add pending proto request: %llu for %@");
      }
    }
  }
}

- (BOOL)removeProtoRequest:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  pendingProtoRequests = self->_pendingProtoRequests;
  if (!pendingProtoRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingProtoRequests;
    self->_pendingProtoRequests = v6;

    pendingProtoRequests = self->_pendingProtoRequests;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if (v9)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(NSMutableSet *)v10 removeObject:v11];

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "remove pending proto request: %llu for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"remove pending proto request: %llu for %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove pending proto request: %llu for %@");
        }
      }
    }
  }

  return v9;
}

- (void)_savePluginNameForProtoRequest:(unint64_t)a3 pluginName:(id)a4
{
  v11 = a4;
  pendingProtoRequests = self->_pendingProtoRequests;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  LODWORD(pendingProtoRequests) = [(NSMutableSet *)pendingProtoRequests containsObject:v7];

  if (pendingProtoRequests)
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    v10 = v11;
    if (v10)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3], v10);
    }
  }
}

- (id)_pluginNameForProtoRequest:(unint64_t)a3
{
  if (self->_pluginNameToStunReqID)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    if (v5)
    {
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      v8 = CFDictionaryGetValue(pluginNameToStunReqID, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeProtoPluginRegistrationRequest:(unint64_t)a3
{
  pluginNameToStunReqID = self->_pluginNameToStunReqID;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)pluginNameToStunReqID removeObjectForKey:v4];
}

- (void)sendQUICInfoRequest
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_state < 5)
  {
    v6 = [[IDSQRProtoMessage alloc] initWithType:5 candidatePair:self options:0];
    if (v6)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v17 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send info request %@ for %@.");

          if (_IDSShouldLog())
          {
            v18 = [(IDSStunCandidatePair *)self candidatePairToken:v6];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send info request %@ for %@.");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v6 candidatePair:self];

      v11 = [(IDSQRProtoMessage *)v6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:v11];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v11];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v12];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A7C8455C;
      v19[3] = &unk_1E77E2780;
      v20 = v12;
      v21 = v11;
      v22 = 5;
      v19[4] = self;
      v13 = v12;
      IDSTransportThreadAddBlockAfter(v19, 10.0);
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "failed to create info request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create info request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create info request.");
          }
        }
      }
    }

    goto LABEL_22;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v24 = v4;
    v25 = 2080;
    v26 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = [(IDSStunCandidatePair *)self candidatePairToken];
      v16 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v6 = [(IDSStunCandidatePair *)self candidatePairToken:v15];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].");
LABEL_22:
      }
    }
  }
}

- (BOOL)sendQUICChannelConfigRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "send sendQUICChannelConfigRequest", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"send sendQUICChannelConfigRequest");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"send sendQUICChannelConfigRequest");
      }
    }
  }

  v6 = self->_state - 3;
  if (v6 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained sendProtoMessage:v4 candidatePair:self];

    v9 = [v4 transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:v9];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v9];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v8 requestID:v10];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v23 = v4;
      v24 = 2112;
      v25 = v12;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "send ChannelConfig request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v18 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send ChannelConfig request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v19 = [(IDSStunCandidatePair *)self candidatePairToken:v4];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send ChannelConfig request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C84BFC;
    v21[3] = &unk_1E77E2758;
    v21[4] = self;
    v21[5] = v9;
    IDSTransportThreadAddBlockAfter(v21, 10.0);
    goto LABEL_15;
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IDSStunCandidatePair *)self candidatePairToken];
    v15 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v23 = v14;
    v24 = 2080;
    v25 = v15;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "skip sendQUICChannelConfigRequest request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = [(IDSStunCandidatePair *)self candidatePairToken];
      v20 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip sendQUICChannelConfigRequest request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v10 = [(IDSStunCandidatePair *)self candidatePairToken:v17];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip sendQUICChannelConfigRequest request for %@, state [%s].");
LABEL_15:
      }
    }
  }

  return v6 < 2;
}

- (void)sendQUICParticipantUpdateRequestWithOptions:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:7 candidatePair:self options:v4];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      v11 = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:v11];
      v12 = [v4 objectForKeyedSubscript:@"gl-option-ids-client-context-identifier-key"];
      v13 = [v12 unsignedLongLongValue];

      if (v13)
      {
        transactionIDToIdentifier = self->_transactionIDToIdentifier;
        if (!transactionIDToIdentifier)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v16 = self->_transactionIDToIdentifier;
          self->_transactionIDToIdentifier = Mutable;

          transactionIDToIdentifier = self->_transactionIDToIdentifier;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
        [(NSMutableDictionary *)transactionIDToIdentifier setObject:v17 forKey:v18];
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v11];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v19];
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v32 = v8;
        v33 = 2112;
        v34 = v21;
        v35 = 2048;
        v36 = v10;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "send participant update request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v25 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send participant update request %@ for %@, sentBytes: %lu");

          if (_IDSShouldLog())
          {
            v26 = [(IDSStunCandidatePair *)self candidatePairToken:v8];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send participant update request %@ for %@, sentBytes: %lu");
          }
        }
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1A7C85330;
      v27[3] = &unk_1E77E2780;
      v27[4] = self;
      v29 = v11;
      v30 = 7;
      v28 = v4;
      IDSTransportThreadAddBlockAfter(v27, 10.0);
    }

    else
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "failed to create participant update request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create participant update request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create participant update request.");
          }
        }
      }
    }

    goto LABEL_26;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v32 = v6;
    v33 = 2080;
    v34 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v23 = [(IDSStunCandidatePair *)self candidatePairToken];
      v24 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:v23];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].");
LABEL_26:
      }
    }
  }
}

- (void)sendQUICPluginRegistrationRequestWithOptions:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state < 5)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:10 candidatePair:self options:v4];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      v11 = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:v11];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v11];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v12];
      Value = 0;
      if (v4 && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(v4, @"gl-option-plugin-operation");
      }

      v14 = Value;
      v15 = [v14 isEqualToNumber:&unk_1F1B20330];
      v16 = @"Unregister";
      if (v15)
      {
        v16 = @"Register";
      }

      v17 = v16;
      v18 = 0;
      v19 = MEMORY[0x1E696AEC0];
      if (v4 && @"gl-option-plugin-name")
      {
        v18 = CFDictionaryGetValue(v4, @"gl-option-plugin-name");
      }

      v20 = [v19 stringWithFormat:@"%@.%@", v18, v17];
      [(IDSStunCandidatePair *)self _savePluginNameForProtoRequest:v11 pluginName:v20];
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v31 = v8;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v26 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send QR plugin registration request %@ for %@.");

          if (_IDSShouldLog())
          {
            v27 = [(IDSStunCandidatePair *)self candidatePairToken:v8];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send QR plugin registration request %@ for %@.");
          }
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A7C85B28;
      v28[3] = &unk_1E77E27A8;
      v28[4] = self;
      v28[5] = v11;
      v29 = 10;
      IDSTransportThreadAddBlockAfter(v28, 10.0);
    }

    else
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "failed to create QR plugin registration request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create QR plugin registration request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QR plugin registration request.");
          }
        }
      }
    }

    goto LABEL_30;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v31 = v6;
    v32 = 2080;
    v33 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v24 = [(IDSStunCandidatePair *)self candidatePairToken];
      v25 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:v24];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].");
LABEL_30:
      }
    }
  }
}

- (void)sendQUICSessionInfoRequestWithOptions:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:15 candidatePair:self options:v4];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      v11 = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:v11];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v11];
      Value = 0;
      if (v4 && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(v4, @"gl-option-sessioninfo-link-id-to-query");
      }

      v14 = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v18 = [MEMORY[0x1E696AD98] numberWithChar:v14];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v18 forKey:v12];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v19;
      }

      if (v4)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v21 = CFDictionaryGetValue(v4, @"gl-option-sessioninfo-request-type");
          if (v21)
          {
            v22 = v21;
            CFDictionarySetValue(self->_requestIDToSessionInfoReqType, v12, v21);
          }
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v12];
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v36 = v8;
        v37 = 2112;
        v38 = v24;
        v39 = 2048;
        v40 = v10;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v29 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send session-info request %@ for %@, sentBytes: %lu");

          if (_IDSShouldLog())
          {
            v30 = [(IDSStunCandidatePair *)self candidatePairToken:v8];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send session-info request %@ for %@, sentBytes: %lu");
          }
        }
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1A7C862DC;
      v31[3] = &unk_1E77E2780;
      v32 = v12;
      v33 = v11;
      v34 = 15;
      v31[4] = self;
      v25 = v12;
      IDSTransportThreadAddBlockAfter(v31, 10.0);
    }

    else
    {
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "failed to create session-info request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create session-info request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create session-info request.");
          }
        }
      }
    }

    goto LABEL_33;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v36 = v6;
    v37 = 2080;
    v38 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v27 = [(IDSStunCandidatePair *)self candidatePairToken];
      v28 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:v27];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].");
LABEL_33:
      }
    }
  }
}

- (void)sendQUICStatsRequestWithOptions:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:18 candidatePair:self options:v4];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v35 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      v36 = [(IDSQRProtoMessage *)v8 transactionID];
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        linkID = self->_linkID;
        *buf = 134218240;
        v49 = v36;
        v50 = 1024;
        LODWORD(v51) = linkID;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send stats req %llx for link %d.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v29 = v36;
          v32 = self->_linkID;
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %llx for link %d.");
          if (_IDSShouldLog())
          {
            v29 = v36;
            v32 = self->_linkID;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send stats req %llx for link %d.");
          }
        }
      }

      [(IDSStunCandidatePair *)self addProtoRequest:v36, v29, v32];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v36];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = self->_packetListeners;
      v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v14)
      {
        v15 = *v44;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v44 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v43 + 1) + 8 * i) didSendStatsRequestWithID:v12 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB960}];
          }

          v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v14);
      }

      Value = 0;
      if (v4 && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(v4, @"ids-extchannel-stat-identifier-key");
      }

      v18 = [Value unsignedLongLongValue];
      v19 = 0;
      if (self->_requestIDToStatsIDs && v12)
      {
        v19 = CFDictionaryGetValue(self->_requestIDToStatsIDs, v12);
      }

      v20 = [v19 unsignedLongLongValue];
      if (v18 && v18 != v20)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          requestIDToStatsIDs = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
        if (v23)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, v12, v23);
        }

        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v49 = v18;
          v50 = 2112;
          v51 = v12;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v31 = v18;
            v34 = v12;
            _IDSLogTransport(@"GL", @"IDS", @"sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.");
            if (_IDSShouldLog())
            {
              v31 = v18;
              v34 = v12;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.");
            }
          }
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v35 requestID:v12, v31, v34];
      v25 = self->_statsIntervalInSeconds >> 1;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1A7C86BD4;
      v37[3] = &unk_1E77E27D0;
      v39 = v36;
      v40 = v18;
      v37[4] = self;
      v38 = v12;
      v42 = v25;
      v41 = 18;
      v26 = v25;
      v27 = v12;
      IDSTransportThreadAddBlockAfter(v37, v26);
    }

    else
    {
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "failed to create stats request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create stats request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create stats request.");
          }
        }
      }
    }

    goto LABEL_47;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v49 = v6;
    v50 = 2080;
    v51 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v30 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:v30];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip stats request for %@, state [%s].");
LABEL_47:
      }
    }
  }
}

- (void)sendQUICTestRequest
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    self->_testStartTime = 0.0;
    if (self->_testSubOperation)
    {
      v6 = MEMORY[0x1E695DF20];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
      v35 = [v6 dictionaryWithObjectsAndKeys:{v7, @"gl-option-test-options-flags", self->_testSubOperation, @"gl-option-test-sub-operation", 0}];
    }

    else
    {
      v8 = self->_testRequestedErrorCode == 0;
      v9 = MEMORY[0x1E695DF20];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
      if (v8)
      {
        v35 = [v9 dictionaryWithObject:v7 forKey:@"gl-option-test-options-flags"];
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_testRequestedMessageType];
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_testRequestedErrorCode];
        v35 = [v9 dictionaryWithObjectsAndKeys:{v7, @"gl-option-test-options-flags", v10, @"gl-option-test-requested-message-type", v11, @"gl-option-test-requested-error-code-type", 0}];
      }
    }

    v12 = [[IDSQRProtoMessage alloc] initWithType:20 candidatePair:self options:v35];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v14 = [WeakRetained sendProtoMessage:v12 candidatePair:self];

      v15 = [(IDSQRProtoMessage *)v12 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:v15];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v15];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v14 requestID:v16];
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testRequestedMessageType = self->_testRequestedMessageType;
        testRequestedErrorCode = self->_testRequestedErrorCode;
        testSubOperation = self->_testSubOperation;
        v22 = [(IDSStunCandidatePair *)self candidatePairToken];
        linkID = self->_linkID;
        *buf = 67110914;
        *v38 = testOptions;
        *&v38[4] = 1024;
        *&v38[6] = testRequestedMessageType;
        LOWORD(v39) = 1024;
        *(&v39 + 2) = testRequestedErrorCode;
        HIWORD(v39) = 2112;
        v40 = testSubOperation;
        v41 = 2112;
        v42 = v12;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v16;
        v47 = 1024;
        v48 = linkID;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d", buf, 0x42u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = self->_testOptions;
          v25 = self->_testRequestedMessageType;
          v26 = self->_testRequestedErrorCode;
          v27 = self->_testSubOperation;
          v28 = [(IDSStunCandidatePair *)self candidatePairToken];
          v34 = self->_linkID;
          _IDSLogTransport(@"GL", @"IDS", @"send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d");

          if (_IDSShouldLog())
          {
            v29 = [(IDSStunCandidatePair *)self candidatePairToken:v24];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d");
          }
        }
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1A7C8740C;
      v36[3] = &unk_1E77E2758;
      v36[4] = self;
      v36[5] = v15;
      IDSTransportThreadAddBlockAfter(v36, 10.0);
    }

    else
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "failed to create test request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create test request.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create test request.");
          }
        }
      }
    }
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      *buf = 138412546;
      *v38 = v4;
      *&v38[8] = 2080;
      v39 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v31 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v32 = [(IDSStunCandidatePair *)self candidatePairToken:v31];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test request for %@, state [%s].");
      }
    }
  }
}

- (BOOL)processQUICInfoResponse:(id)a3 receivedBytes:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 transactionID];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v7];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:v7])
  {
    v9 = [v6 infoResponse];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 clientAddress];
      v12 = v11 != 0;
      if (v11)
      {
        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Got info response with client address [%@]", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Got info response with client address [%@]");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Got info response with client address [%@]");
            }
          }
        }

        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v23 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.");

            if (_IDSShouldLog())
            {
              v24 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.");
            }
          }
        }

        v16 = ProtoUtilProcessActiveParticipantsFromInfo(v10);
        v17 = ProtoUtilProcessActiveLightweightParticipantsFromInfo(v10);
        BYTE4(v26) = 0;
        LODWORD(v26) = 0;
        LOWORD(v25) = 1;
        [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:v16 joinedParticipantInfo:v17 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:v8] offlineRequest:a4 streamInfoRequest:v25 status:v26 commandFlag:? isIndication:?];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained disconnectIdleQUICConnectionForCandidatePair:self];

        v19 = objc_loadWeakRetained(&self->_delegate);
        [v19 candidatePairDidReceiveInfoResponse:self];
      }

      else
      {
        v21 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "processQUICInfoResponse failed due to invalid client address.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processQUICInfoResponse failed due to invalid client address.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICInfoResponse failed due to invalid client address.");
            }
          }
        }
      }
    }

    else
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "processQUICInfoResponse failed due to invalid infoResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICInfoResponse failed due to invalid infoResponse.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICInfoResponse failed due to invalid infoResponse.");
          }
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)processQUICParticipantUpdateResponse:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 transactionID];
  transactionIDToIdentifier = self->_transactionIDToIdentifier;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v8 = [(NSMutableDictionary *)transactionIDToIdentifier objectForKey:v7];
  v9 = [v8 unsignedLongLongValue];

  if ([(IDSStunCandidatePair *)self removeProtoRequest:v5])
  {
    v10 = [v4 participantUpdateResponse];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v23 = v5;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive participant update response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v21 = v20 = v5;
          _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %llu for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:v5];
            v21 = v20 = v5;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %llu for %@.");
          }
        }
      }

      v14 = ProtoUtilProcessParticipantUpdate(v10, 0, [v4 messageType]);
      v15 = [v14 mutableCopy];

      if (v9)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
        [v15 setObject:v16 forKeyedSubscript:@"ids-stun-attribute-client-context-identifier"];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceiveParticipantUpdate:v15 status:0];
    }

    else
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.");
          }
        }
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)processQUICGetMaterialResponse:(id)a3
{
  v4 = a3;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [v4 transactionID]))
  {
    v5 = [v4 getMaterialResponse];
    v6 = v5 != 0;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceiveGetMaterialResponse:v5];
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "processQUICGetMaterialResponse failed due to invalid getMaterialResponse", v10, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICGetMaterialResponse failed due to invalid getMaterialResponse");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICGetMaterialResponse failed due to invalid getMaterialResponse");
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICPutMaterialResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:v5])
  {
    v6 = [v4 putMaterialResponse];
    v7 = v6 != 0;
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceivePutMaterialResponse:v6 forTxId:v5];
    }

    else
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "processQUICPutMaterialResponse failed due to invalid putMaterialResponse", v11, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICPutMaterialResponse failed due to invalid putMaterialResponse");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPutMaterialResponse failed due to invalid putMaterialResponse");
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processQUICChannelConfigResponse:(id)a3
{
  v4 = a3;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [v4 transactionID]))
  {
    v5 = [v4 channelConfigResponse];
    v6 = v5 != 0;
    if (!v5)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse", v9, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse");
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICCallModeUpdateResponse:(id)a3
{
  v4 = a3;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [v4 transactionID]))
  {
    v5 = [v4 callModeUpdateResponse];
    v6 = v5 != 0;
    if (!v5)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse", v9, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse");
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICPluginRegistrationResponse:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:v5])
  {
    v6 = [v4 pluginControlResponse];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [(IDSStunCandidatePair *)self _pluginNameForProtoRequest:v5];
      if (v8)
      {
        [(IDSStunCandidatePair *)self _removeProtoPluginRegistrationRequest:v5];
      }

      v9 = [v8 pathExtension];
      v10 = [v9 isEqualToString:@"Register"];
      if (v10 & 1) != 0 || ([v9 isEqualToString:@"Unregister"])
      {
        v11 = [v6 pluginParticipantId];
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v24 = v13;
          v25 = 2048;
          v26 = v11;
          v27 = 2112;
          v28 = v8;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive plugin update for %@, with participant id: %llu, and name %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v21 = v11;
            v20 = v22 = v8;
            _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v20];
              v21 = v11;
              v20 = v22 = v8;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@");
            }
          }
        }

        v14 = [v8 stringByDeletingPathExtension];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v16 = WeakRetained;
        if (v10)
        {
          [WeakRetained candidatePair:self didReceivePluginRegistration:v11 pluginName:v14];
        }

        else
        {
          [WeakRetained candidatePair:self didReceivePluginUnregistration:v11 pluginName:v14];
        }
      }

      else
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "invalid plugin operation - ignoring this response", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"invalid plugin operation - ignoring this response");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid plugin operation - ignoring this response");
            }
          }
        }
      }
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.");
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processQUICSessionInfoResponse:(id)a3 receivedBytes:(unint64_t)a4 isLightweightParticipant:(BOOL)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 transactionID];
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v8];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:v8])
  {
    v9 = [v7 sessionInfoResponse];
    v35 = v9 != 0;
    if (v9)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v38 = v8;
        v39 = 2112;
        v40 = v11;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive session-info response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v30 = v29 = v8;
          _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %llu for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:v8];
            v30 = v29 = v8;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %llu for %@.");
          }
        }
      }

      Value = 0;
      if (self->_requestIDToQueryLinkIDs && key)
      {
        Value = CFDictionaryGetValue(self->_requestIDToQueryLinkIDs, key);
      }

      v13 = ProtoUtilProcessStreamInfo(v9, self->_linkID, [Value intValue]);
      v14 = 0;
      if (v13 && @"stream-info-peer-published-streams")
      {
        v14 = CFDictionaryGetValue(v13, @"stream-info-peer-published-streams");
      }

      v15 = StunUtilProcessParticipants(v14, self->_participantID, a5);
      v16 = ProtoUtilProcessLightweightParticipants(v9);
      v17 = [v9 leftParticipants];
      v33 = ProtoUtilProcessLeftParticipants(v17, v15, v16);

      v18 = [v9 joinedParticipants];
      v19 = ProtoUtilProcessjoinedParticipants(v18, v15, v16);

      v20 = [v9 updatedParticipants];
      v21 = ProtoUtilProcessUpdatedParticipants(v20, v15, v16);

      v22 = [(IDSStunCandidatePair *)self getStunSentBytes:key];
      requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
      if (requestIDToSessionInfoReqType != 0 && key != 0)
      {
        v24 = CFDictionaryGetValue(requestIDToSessionInfoReqType, key);
      }

      else
      {
        v24 = 0;
      }

      v26 = [v24 intValue];
      v27 = [v9 hasCommandFlags];
      if (v27)
      {
        v27 = [v9 commandFlags];
      }

      BYTE4(v32) = 0;
      LODWORD(v32) = v27;
      BYTE1(v31) = v26 == 2;
      LOBYTE(v31) = 0;
      [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v13 lightweightParticipants:v15 joinedParticipantInfo:v16 leftParticipantInfo:v19 updatedParticipantInfo:v33 sentBytes:v21 receivedBytes:v22 offlineRequest:a4 streamInfoRequest:v31 status:v32 commandFlag:? isIndication:?];
    }

    else
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.");
          }
        }
      }
    }
  }

  else
  {
    v35 = 1;
  }

  return v35;
}

- (BOOL)processQUICStatsResponse:(id)a3 arrivalTime:(double)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:v7])
  {
    v8 = [v6 statsResponse];
    v9 = v8;
    v42 = v8 != 0;
    if (v8)
    {
      v10 = [v8 clientTimestampNtp];
      v11 = ntpTime32(a4);
      v12 = vcvtd_n_f64_u32((v11 - v10), 0x10uLL) + ((v11 - v10) >> 16);
      serverLatency = self->_serverLatency;
      if (serverLatency == 0.0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 * 0.1 + serverLatency * 0.9;
      }

      self->_serverLatency = v14;
      v41 = (v12 * 1000.0);
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (self->_serverLatency * 1000.0);
        linkID = self->_linkID;
        *buf = 134218752;
        v49 = v7;
        v50 = 1024;
        v51 = linkID;
        v52 = 1024;
        v53 = v41;
        v54 = 1024;
        v55 = v16;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v40 = (self->_serverLatency * 1000.0);
          v37 = self->_linkID;
          v39 = v41;
          _IDSLogTransport(@"GL", @"IDS", @"processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).");
          if (_IDSShouldLog())
          {
            v40 = (self->_serverLatency * 1000.0);
            v37 = self->_linkID;
            v39 = v41;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).");
          }
        }
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v7, v37, v39, v40];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = self->_packetListeners;
      v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v20)
      {
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v43 + 1) + 8 * i) didReceiveStatsResponseWithID:v18 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB980}];
          }

          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v20);
      }

      requestIDToStatsIDs = self->_requestIDToStatsIDs;
      if (requestIDToStatsIDs)
      {
        if (v18)
        {
          v24 = CFDictionaryGetValue(requestIDToStatsIDs, v18);
          if (v24)
          {
            v25 = v24;
            v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
            CFDictionarySetValue(v26, @"gl-option-stats-identifier", v25);
            v27 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
            if (v27)
            {
              CFDictionarySetValue(v26, @"gl-option-linkid", v27);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1F6CC();
            }

            v29 = [MEMORY[0x1E696AD98] numberWithInt:v41];
            if (v29)
            {
              CFDictionarySetValue(v26, @"gl-option-stats-server-timestamp", v29);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1F754();
            }

            v30 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v25 unsignedLongLongValue];
              v32 = self->_linkID;
              *buf = 134218496;
              v49 = v31;
              v50 = 1024;
              v51 = v32;
              v52 = 1024;
              v53 = v41;
              _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", buf, 0x18u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v33 = [v25 unsignedLongLongValue];
                v38 = self->_linkID;
                v36 = v33;
                _IDSLogTransport(@"GL", @"IDS", @"processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms");
                if (_IDSShouldLog())
                {
                  [v25 unsignedLongLongValue];
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms");
                }
              }
            }

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained candidatePair:self didReceiveSessionStats:v26 success:1];

            [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:v18];
          }
        }
      }
    }

    else
    {
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "invalid stats resp received", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid stats resp received");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid stats resp received");
          }
        }
      }
    }
  }

  else
  {
    v42 = 1;
  }

  return v42;
}

- (BOOL)processQUICTestResponse:(id)a3 arrivalTime:(double)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [v5 transactionID]))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.");

        if (_IDSShouldLog())
        {
          v10 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive test response for %@.");
        }
      }
    }
  }

  return 1;
}

- (BOOL)processQUICParticipantUpdateIndication:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 participantUpdateIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 txnId];
    v8 = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive participant update indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = [v5 txnId];
      v14 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [v5 txnId];
        v15 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication(%llu) for %@.");
      }
    }
  }

  if (v5)
  {
    v10 = ProtoUtilProcessParticipantUpdate(v5, 0, [v4 messageType]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v10 status:0];
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.");
        }
      }
    }
  }

  return v5 != 0;
}

- (BOOL)processQUICPluginControlIndication:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pluginControlIndication];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pluginParticipantId];
    v8 = [v6 pluginOperation];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 txnId];
      v11 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2048;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive plugin event(%llu) for %@, with participant id: %llu, operation %u", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = [v6 txnId];
        v16 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u");

        if (_IDSShouldLog())
        {
          [v6 txnId];
          v17 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:v7 operation:v8 transactionID:0];
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "processQUICPluginControlIndication failed due to invalid pluginControlIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICPluginControlIndication failed due to invalid pluginControlIndication.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPluginControlIndication failed due to invalid pluginControlIndication.");
        }
      }
    }
  }

  return v6 != 0;
}

- (BOOL)processQUICSessionInfoIndication:(id)a3 arrivalTime:(double)a4 isLightweightParticipant:(BOOL)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 sessionInfoIndication];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 txnId];
    v11 = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = [v8 txnId];
      v25 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [v8 txnId];
        v26 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication(%llu) for %@.");
      }
    }
  }

  if (v8)
  {
    v13 = ProtoUtilProcessStreamInfo(v8, self->_linkID, self->_linkID);
    Value = 0;
    if (v13 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v13, @"stream-info-peer-published-streams");
    }

    v15 = StunUtilProcessParticipants(Value, self->_participantID, a5);
    v16 = ProtoUtilProcessLightweightParticipants(v8);
    v17 = [v8 leftParticipants];
    v18 = ProtoUtilProcessLeftParticipants(v17, v15, v16);

    v19 = [v8 joinedParticipants];
    v20 = ProtoUtilProcessjoinedParticipants(v19, v15, v16);

    v21 = [v8 updatedParticipants];
    v22 = ProtoUtilProcessUpdatedParticipants(v21, v15, v16);

    BYTE4(v28) = 1;
    LODWORD(v28) = 0;
    LOWORD(v27) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v13 lightweightParticipants:v15 joinedParticipantInfo:v16 leftParticipantInfo:v20 updatedParticipantInfo:v18 sentBytes:v22 receivedBytes:0 offlineRequest:0 streamInfoRequest:v27 status:v28 commandFlag:? isIndication:?];
  }

  else
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.");
        }
      }
    }
  }

  return v8 != 0;
}

- (BOOL)processQUICPutMaterialIndication:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 putMaterialIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 txnId];
    v8 = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive put material indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = [v5 txnId];
      v13 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive put material indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [v5 txnId];
        v14 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive put material indication(%llu) for %@.");
      }
    }
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePutMaterialIndication:v5];
  }

  else
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "processQUICPutMaterialIndication failed due to invalid putMaterialIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICPutMaterialIndication failed due to invalid putMaterialIndication.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPutMaterialIndication failed due to invalid putMaterialIndication.");
        }
      }
    }
  }

  return v5 != 0;
}

- (BOOL)processQUICErrorIndication:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 errorIndication];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 errorCode];
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 txnId];
      v10 = [(IDSStunCandidatePair *)self candidatePairToken];
      v11 = [v6 errorReason];
      v12 = [v6 channelId];
      v13 = [v6 clientAddress];
      *buf = 134219266;
      v46 = v9;
      v47 = 2112;
      v48 = v10;
      v49 = 1024;
      v50 = v7;
      v51 = 2112;
      v52 = v11;
      v53 = 1024;
      v54 = v12;
      v55 = 2112;
      v56 = v13;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)", buf, 0x36u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = [v6 txnId];
        v15 = [(IDSStunCandidatePair *)self candidatePairToken];
        v16 = [v6 errorReason];
        v17 = [v6 channelId];
        v43 = [v6 clientAddress];
        _IDSLogTransport(@"GL", @"IDS", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)");

        if (_IDSShouldLog())
        {
          [v6 txnId];
          v18 = [(IDSStunCandidatePair *)self candidatePairToken];
          v19 = [v6 errorReason];
          [v6 channelId];
          v44 = [v6 clientAddress];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)");
        }
      }
    }

    if (v7 <= 0x261u)
    {
      if (v7 == 603)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v33 = objc_loadWeakRetained(&self->_delegate);
          [v33 receiveBlockedIndicationWithReason:44];
        }

        goto LABEL_51;
      }

      if (v7 == 608)
      {
        if (self->_state > 2)
        {
          v39 = objc_loadWeakRetained(&self->_delegate);
          v40 = objc_opt_respondsToSelector();

          if (v40)
          {
            v41 = objc_loadWeakRetained(&self->_delegate);
            [v41 receiveBlockedIndicationWithReason:49];
          }
        }

        else
        {
          v23 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            *buf = 136315138;
            v46 = v24;
            _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s");
              }
            }
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      switch(v7)
      {
        case 0x262u:
          v25 = objc_loadWeakRetained(&self->_delegate);
          v26 = objc_opt_respondsToSelector();

          if (v26)
          {
            v27 = objc_loadWeakRetained(&self->_delegate);
            [v27 receiveErrorIndicationWithCode:1];
          }

          goto LABEL_51;
        case 0x263u:
          v28 = objc_loadWeakRetained(&self->_delegate);
          v29 = objc_opt_respondsToSelector();

          if (v29)
          {
            v30 = objc_loadWeakRetained(&self->_delegate);
            [v30 receiveBlockedIndicationWithReason:46];
          }

          goto LABEL_51;
        case 0x266u:
          if (self->_state > 2)
          {
            v36 = objc_loadWeakRetained(&self->_delegate);
            v37 = objc_opt_respondsToSelector();

            if (v37)
            {
              v38 = objc_loadWeakRetained(&self->_delegate);
              [v38 receiveErrorIndicationWithCode:2];
            }
          }

          else
          {
            v20 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = (&_IDSStunCandidatePairStateStrings)[self->_state];
              *buf = 136315138;
              v46 = v21;
              _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s");
                }
              }
            }
          }

LABEL_51:
          v35 = 1;
          goto LABEL_52;
      }
    }

    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v46) = v7;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "invalid case: %hu", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid case: %hu");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid case: %hu");
        }
      }
    }
  }

  else
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication failed due to invalid errorIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication failed due to invalid errorIndication.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication failed due to invalid errorIndication.");
        }
      }
    }
  }

  v35 = 0;
LABEL_52:

  return v35;
}

- (BOOL)processQUICErrorResponse:(id)a3 packetBuffer:(id *)a4 startTime:(double)a5 headerOverhead:(unint64_t)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  var31 = a4->var31;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", var31];
  var35_low = LOWORD(a4->var35);
  var34 = a4->var34;
  v15 = [(IDSStunCandidatePair *)self isRealloc];
  if (var34 > 14)
  {
    if (var34 > 19)
    {
      if (var34 == 20)
      {
        v16 = 2321;
        goto LABEL_23;
      }

      if (var34 == 22)
      {
        v16 = 4082;
        goto LABEL_23;
      }
    }

    else
    {
      if (var34 == 15)
      {
        v16 = 4085;
        goto LABEL_23;
      }

      if (var34 == 18)
      {
        v16 = 4083;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (var34 > 6)
  {
    if (var34 == 7)
    {
      v16 = 4087;
      goto LABEL_23;
    }

    if (var34 == 10)
    {
      v16 = 4088;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (var34 != 1)
  {
    if (var34 == 5)
    {
      v16 = 4084;
      goto LABEL_23;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  if (v15)
  {
    v16 = 4081;
  }

  else
  {
    v16 = 4080;
  }

LABEL_23:
  if ([(IDSStunCandidatePair *)self removeProtoRequest:var31])
  {
    if (self->_state != 2)
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = ids_monotonic_time();
        v22 = [(IDSStunCandidate *)self->_local address][1];
        *buf = 67109888;
        *v66 = var34;
        *&v66[4] = 1024;
        *&v66[6] = var35_low;
        *v67 = 2048;
        *&v67[2] = (v21 - a5) * 1000.0;
        LOWORD(v68) = 1024;
        *(&v68 + 2) = v22;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v23 = ids_monotonic_time();
          *(&v62 + 1) = [(IDSStunCandidate *)self->_local address][1];
          *&v62 = (v23 - a5) * 1000.0;
          v57 = var34;
          v61 = var35_low;
          _IDSLogTransport(@"GL", @"IDS", @"receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.");
          if (_IDSShouldLog())
          {
            v24 = ids_monotonic_time();
            *(&v62 + 1) = [(IDSStunCandidate *)self->_local address:var34][1];
            *&v62 = (v24 - a5) * 1000.0;
            v57 = var34;
            v61 = var35_low;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.");
          }
        }
      }

      v25 = GLUtilStunErrorToGlobalLinkError(var35_low);
      GLUtilReportAWDStunMessageEventWithType(v16, v25, self, 0.0);
      v26 = GLUtilStunErrorToGlobalLinkError(var35_low);
      v64 = GLUCreateQRStunMessageEventWithType(v16, v26, self, 0, 0.0);
      if (v64)
      {
        [(IDSStunCandidatePair *)self _notifyQREventAdded:v64];
      }

      if (var34 > 9)
      {
        if (var34 == 10)
        {
          v54 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "receive plugin registrion error response", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin registrion error response");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin registrion error response");
              }
            }
          }

          goto LABEL_75;
        }

        if (var34 == 15)
        {
          var2 = a4->var2;
          v35 = [(IDSStunCandidatePair *)self getStunSentBytes:v12];
          v36 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412290;
            *v66 = v37;
            _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v59 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.");

              if (_IDSShouldLog())
              {
                v60 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.");
              }
            }
          }

          BYTE12(v62) = 0;
          *(&v62 + 4) = 2;
          LOWORD(v62) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v35 offlineRequest:var2 + a6 streamInfoRequest:v62 status:? commandFlag:? isIndication:?];
        }
      }

      else if (var34 == 1)
      {
        v38 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = (&_IDSStunCandidatePairStateStrings)[self->_state];
          v40 = off_1EB2B43B8;
          v41 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 136315650;
          *v66 = v39;
          *&v66[8] = 2080;
          *v67 = v40;
          *&v67[8] = 2112;
          v68 = v41;
          _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v42 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            v43 = off_1EB2B43B8;
            [(IDSStunCandidatePair *)self candidatePairToken];
            *&v62 = v61 = v43;
            v57 = v42;
            _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.");

            if (_IDSShouldLog())
            {
              v44 = (&_IDSStunCandidatePairStateStrings)[self->_state];
              v45 = off_1EB2B43B8;
              [(IDSStunCandidatePair *)self candidatePairToken:v42];
              *&v62 = v61 = v45;
              v57 = v44;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.");
            }
          }
        }

        self->_state = 2;
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          participantID = self->_participantID;
          v48 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
          *buf = 134218242;
          *v66 = participantID;
          *&v66[8] = 2112;
          *v67 = v48;
          _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "failed participant:[%16llX], token:[%@]", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v49 = self->_participantID;
            [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
            v61 = v57 = v49;
            _IDSLogTransport(@"GL", @"IDS", @"failed participant:[%16llX], token:[%@]");

            if (_IDSShouldLog())
            {
              v50 = self->_participantID;
              [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0, v57, v61];
              v61 = v57 = v50;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed participant:[%16llX], token:[%@]");
            }
          }
        }
      }

      else if (var34 == 7)
      {
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          *v66 = v28;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v57 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.");

            if (_IDSShouldLog())
            {
              v57 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.");
            }
          }
        }

        v29 = [v10 participantUpdateResponse];
        v30 = v29;
        if (v29)
        {
          v31 = ProtoUtilProcessParticipantUpdate(v29, var35_low, 7);
          v32 = v31;
          if (v31 && [v31 count])
          {
            v33 = sub_1A7C74D88(var35_low);
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained candidatePair:self didReceiveParticipantUpdate:v32 status:v33];

            v19 = 1;
          }

          else
          {
            v55 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "receive participant update error response: invalid participantUpdateInfo", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response: invalid participantUpdateInfo");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response: invalid participantUpdateInfo");
                }
              }
            }

            v19 = 0;
          }
        }

        else
        {
          v56 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "processQUICErrorResponse failed due to invalid participantUpdateResponse.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorResponse failed due to invalid participantUpdateResponse.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorResponse failed due to invalid participantUpdateResponse.");
              }
            }
          }

          v19 = 0;
        }

        goto LABEL_76;
      }

      v51 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:&a4->var20, v57, v61, v62];
      v52 = objc_loadWeakRetained(&self->_delegate);
      [v52 candidatePair:self didReceiveStunErrorResponse:v16 errorCode:var35_low didLocalExternalAddressChange:v51];

LABEL_75:
      v19 = 1;
LABEL_76:

      goto LABEL_77;
    }

    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      *v66 = v18;
      *&v66[8] = 1024;
      *v67 = var34;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v58 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.");

        if (_IDSShouldLog())
        {
          v64 = [(IDSStunCandidatePair *)self candidatePairToken:v58];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%@ is already in error state, ignore error response %04x.");
          goto LABEL_75;
        }
      }
    }
  }

  v19 = 1;
LABEL_77:

  return v19;
}

- (int64_t)kind
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 2;
  }

  if ([(IDSStunCandidatePair *)self isP2P])
  {
    return 3;
  }

  return [(IDSStunCandidatePair *)self isRelayStunCandidatePair];
}

- (NSString)interfaceName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interfaceNameForCandidatePair:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unknown";
  }

  v7 = v6;

  return &v6->isa;
}

- (int64_t)ipFamily
{
  if ([(IDSStunCandidate *)self->_local address][1] == 30)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

- (BOOL)isExpensive
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained isCandidatePairExpensive:v2];

  return v2;
}

- (BOOL)isConstrained
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained isCandidatePairConstrained:v2];

  return v2;
}

- (BOOL)isDelegated
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained isCandidatePairDelegated:v2];

  return v2;
}

- (void)receiveLinkTestStatsPacket:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "received link test packet, forwarding to listeners", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received link test packet, forwarding to listeners");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received link test packet, forwarding to listeners");
      }
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_packetListeners;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) didReceiveStatsTestPacketWithPayload:v4 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v10), &unk_1F1AAB9A0}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)sendLinkTestStatsPacket:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if ([(IDSStunCandidatePair *)self isActualRelayStunCandidatePair])
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = [(IDSStunCandidatePair *)self linkID];
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "send relay test packet on link %u", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v14 = [(IDSStunCandidatePair *)self linkID];
          _IDSLogTransport(@"GL", @"IDS", @"send relay test packet on link %u");
          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self linkID];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send relay test packet on link %u");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendTestPacketChannelDataMessage:v4 candidatePair:self];
    }

    else
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
        {
          v11 = "VR";
        }

        else if ([(IDSStunCandidatePair *)self isP2P])
        {
          v11 = "P2P";
        }

        else
        {
          v11 = "Other";
        }

        *buf = 136315394;
        v18 = v11;
        v19 = 1024;
        LODWORD(v20) = [(IDSStunCandidatePair *)self linkID];
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send non-relay test packet over %s on link %u", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
        {
          v12 = "VR";
        }

        else
        {
          v12 = [(IDSStunCandidatePair *)self isP2P]? "P2P" : "Other";
        }

        v16 = [(IDSStunCandidatePair *)self linkID];
        _IDSLogTransport(@"GL", @"IDS", @"send non-relay test packet over %s on link %u");
        if (_IDSShouldLog())
        {
          if (![(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair:v12])
          {
            [(IDSStunCandidatePair *)self isP2P];
          }

          [(IDSStunCandidatePair *)self linkID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send non-relay test packet over %s on link %u");
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendTestPacketCommandMessage:v4 candidatePair:self];
    }

    goto LABEL_35;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test stats packet for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = [(IDSStunCandidatePair *)self candidatePairToken];
      v15 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test stats packet for %@, state [%s].");

      if (_IDSShouldLog())
      {
        WeakRetained = [(IDSStunCandidatePair *)self candidatePairToken:v13];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test stats packet for %@, state [%s].");
LABEL_35:
      }
    }
  }
}

- (unint64_t)totalPacketsSent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 328);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalPacketsReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 332);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalBytesSent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 336);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalBytesReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 344);
  }

  else
  {
    return 0;
  }
}

@end
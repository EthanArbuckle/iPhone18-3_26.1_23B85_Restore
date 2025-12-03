@interface IDSStunCandidatePair
+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate;
- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)change;
- (BOOL)_optionallyCheckEncMarker:(id)marker;
- (BOOL)isActualRelayStunCandidatePair;
- (BOOL)isConstrained;
- (BOOL)isDelegated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpensive;
- (BOOL)isP2P;
- (BOOL)isRelayStunCandidatePair;
- (BOOL)isValidRelayStunCandidatePair;
- (BOOL)processDataMessageErrorIndication:(id)indication;
- (BOOL)processInfoIndication:(id)indication arrivalTime:(double)time;
- (BOOL)processInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead;
- (BOOL)processParticipantUpdateIndication:(id)indication arrivalTime:(double)time;
- (BOOL)processParticipantUpdateResponse:(id)response;
- (BOOL)processPluginControlIndication:(id)indication;
- (BOOL)processPluginRegistrationResponse:(id)response;
- (BOOL)processPutMaterialResponse:(id)response;
- (BOOL)processQUICCallModeUpdateResponse:(id)response;
- (BOOL)processQUICChannelConfigResponse:(id)response;
- (BOOL)processQUICErrorIndication:(id)indication;
- (BOOL)processQUICErrorResponse:(id)response packetBuffer:(id *)buffer startTime:(double)time headerOverhead:(unint64_t)overhead;
- (BOOL)processQUICGetMaterialResponse:(id)response;
- (BOOL)processQUICInfoResponse:(id)response receivedBytes:(unint64_t)bytes;
- (BOOL)processQUICParticipantUpdateIndication:(id)indication;
- (BOOL)processQUICParticipantUpdateResponse:(id)response;
- (BOOL)processQUICPluginControlIndication:(id)indication;
- (BOOL)processQUICPluginRegistrationResponse:(id)response;
- (BOOL)processQUICPutMaterialIndication:(id)indication;
- (BOOL)processQUICPutMaterialResponse:(id)response;
- (BOOL)processQUICSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant;
- (BOOL)processQUICSessionInfoResponse:(id)response receivedBytes:(unint64_t)bytes isLightweightParticipant:(BOOL)participant;
- (BOOL)processQUICStatsResponse:(id)response arrivalTime:(double)time;
- (BOOL)processQUICTestResponse:(id)response arrivalTime:(double)time;
- (BOOL)processSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant;
- (BOOL)processSessionInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead isLightweightParticipant:(BOOL)participant;
- (BOOL)processStatsResponse:(id)response arrivalTime:(double)time;
- (BOOL)processStunErrorResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead;
- (BOOL)processTestResponse:(id)response arrivalTime:(double)time;
- (BOOL)removeProtoRequest:(unint64_t)request;
- (BOOL)sendQUICCallModeUpdateRequest:(id)request;
- (BOOL)sendQUICChannelConfigRequest:(id)request;
- (BOOL)sendQUICGetMaterialRequest:(id)request;
- (BOOL)sendQUICPutMaterialRequest:(id)request;
- (BOOL)shouldProcessStunResponse:(id)response;
- (BOOL)shouldRexmitStunRequest:(id)request;
- (IDSStunCandidatePair)initWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate;
- (NSString)description;
- (NSString)interfaceName;
- (NSString)kindSuffix;
- (id)_pluginNameForProtoRequest:(unint64_t)request;
- (id)_pluginNameForStunRequest:(id)request;
- (id)candidatePairToken;
- (int64_t)ipFamily;
- (int64_t)kind;
- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unint64_t)getParticipantIDHash:(id)hash;
- (unint64_t)getStunSentBytes:(id)bytes;
- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt;
- (unint64_t)totalBytesReceived;
- (unint64_t)totalBytesSent;
- (unint64_t)totalPacketsReceived;
- (unint64_t)totalPacketsSent;
- (unsigned)hbCounter;
- (unsigned)nextSessionInfoReqID;
- (void)_addParticipantIDs:(id)ds toParticipantIDMap:(id)map;
- (void)_handleLinkProbingTimer;
- (void)_handleNoSessionStateTimer;
- (void)_handleReallocTimer;
- (void)_handleSessionConnectedTimer;
- (void)_handleSessionConvergenceTimer;
- (void)_handleSessionGoAwayTimer;
- (void)_notifyQREventAdded:(id)added;
- (void)_notifySessionStreamInfoReceived:(id)received withParticipants:(id)participants lightweightParticipants:(id)lightweightParticipants joinedParticipantInfo:(id)info leftParticipantInfo:(id)participantInfo updatedParticipantInfo:(id)updatedParticipantInfo sentBytes:(unint64_t)bytes receivedBytes:(unint64_t)self0 offlineRequest:(BOOL)self1 streamInfoRequest:(BOOL)self2 status:(unsigned int)self3 commandFlag:(unsigned int)self4 isIndication:(BOOL)self5;
- (void)_removeProtoPluginRegistrationRequest:(unint64_t)request;
- (void)_savePluginNameForProtoRequest:(unint64_t)request pluginName:(id)name;
- (void)_savePluginNameForRequest:(id)request pluginName:(id)name;
- (void)_startNoSessionStateTimer;
- (void)_startReallocTimer;
- (void)_stopNoSessionStateTimer;
- (void)_stopReallocTimer;
- (void)addProtoRequest:(unint64_t)request;
- (void)addStunRequest:(id)request;
- (void)dealloc;
- (void)deriveAES128CTRKeys:(id)keys;
- (void)initParticipantIDMap:(id)map;
- (void)invalidate;
- (void)processSessionInfoRequestTimeout:(id)timeout;
- (void)receiveLinkTestStatsPacket:(id)packet;
- (void)removeFromParticipantIDMap:(id)map;
- (void)removeStunRequest:(id)request;
- (void)sendInfoRequest:(id)request;
- (void)sendLinkTestStatsPacket:(id)packet;
- (void)sendParticipantUpdateRequest:(id)request options:(id)options;
- (void)sendPutMaterialRequest:(id)request options:(id)options;
- (void)sendQRPluginRegistrationRequest:(id)request options:(id)options;
- (void)sendQUICInfoRequest;
- (void)sendQUICParticipantUpdateRequestWithOptions:(id)options;
- (void)sendQUICPluginRegistrationRequestWithOptions:(id)options;
- (void)sendQUICSessionInfoRequestWithOptions:(id)options;
- (void)sendQUICStatsRequestWithOptions:(id)options;
- (void)sendQUICTestRequest;
- (void)sendSessionInfoRequest:(id)request options:(id)options;
- (void)sendStatsRequest:(id)request options:(id)options;
- (void)sendTestRequest:(id)request;
- (void)setChannelSettings:(unsigned int)settings;
- (void)setDelegatedLinkID:(char)d;
- (void)setIsQUIC:(BOOL)c;
- (void)setLinkUUIDWithRelayLinkIDs;
- (void)setPendingNoSessionState:(BOOL)state;
- (void)setPendingRealloc:(BOOL)realloc;
- (void)setPropertiesWithReallocCandidatePair:(id)pair reallocToken:(id)token;
- (void)setPropertiesWithRelaySessionInfo:(id)info sessionInfoDict:(id)dict enableSKE:(BOOL)e;
- (void)setProtocolVersion:(unsigned __int8)version isInitiator:(BOOL)initiator enableSKE:(BOOL)e;
- (void)setRelayLinkID:(unsigned __int16)d;
- (void)setRemoteRelayLinkID:(unsigned __int16)d;
- (void)setServerIsDegraded:(BOOL)degraded;
- (void)setTestOptionsFromUserDefaults;
- (void)startLinkProbingTimer:(unsigned int)timer;
- (void)startSessionConnectedTimer:(int)timer block:(id)block;
- (void)startSessionConvergenceTimer:(int)timer block:(id)block;
- (void)startSessionGoAwayTimer:(int)timer block:(id)block;
- (void)stopLinkProbingTimer;
- (void)stopSessionConnectedTimer;
- (void)stopSessionConvergenceTimer;
- (void)stopSessionGoAwayTimer;
- (void)switchToOptimizedStatsInterval;
- (void)synthesizeNat64WithPrefix;
- (void)updateParticipantIDMap:(id)map;
- (void)updateStunSentBytes:(int64_t)bytes requestID:(id)d;
- (void)updateURIToParticipantIDMapping:(id)mapping;
@end

@implementation IDSStunCandidatePair

+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate
{
  delegateCopy = delegate;
  dCopy = d;
  remoteCandidateCopy = remoteCandidate;
  candidateCopy = candidate;
  v13 = [[IDSStunCandidatePair alloc] initWithLocalCandidate:candidateCopy remoteCandidate:remoteCandidateCopy sessionID:dCopy delegate:delegateCopy];

  return v13;
}

- (IDSStunCandidatePair)initWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate
{
  candidateCopy = candidate;
  remoteCandidateCopy = remoteCandidate;
  dCopy = d;
  delegateCopy = delegate;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    connections = v14->_connections;
    v14->_connections = dictionary;

    v14->_state = 0;
    v18 = [candidateCopy copy];
    local = v14->_local;
    v14->_local = v18;

    v20 = [remoteCandidateCopy copy];
    remote = v14->_remote;
    v14->_remote = v20;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v14->_uniqueID;
    v14->_uniqueID = uUID;

    objc_storeStrong(&v14->_sessionID, d);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_statsIntervalInSeconds = 12;
    v14->_triggeredCheckTime = 0.0;
    v24 = [MEMORY[0x1E695DFA8] set];
    packetListeners = v14->_packetListeners;
    v14->_packetListeners = v24;

    v26 = [[IDSTestableLinkWithScheduler alloc] initWithLink:v14 addBlock:&unk_1F1AAB900];
    testableLink = v14->_testableLink;
    v14->_testableLink = v26;

    if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v28 = [delegateCopy createLinkCycleForCandidatePair:v14];
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
  address = [(IDSStunCandidate *)self->_local address];
  external = [(IDSStunCandidate *)self->_local external];
  external2 = [(IDSStunCandidate *)self->_remote external];
  SAToIPPortString(__str, 0x80uLL, address);
  SAToIPPortString(v32, 0x80uLL, external);
  SAToIPPortString(v24, 0x80uLL, external2);
  LODWORD(external2) = [(IDSStunCandidate *)self->_local radioAccessTechnology];
  radioAccessTechnology = [(IDSStunCandidate *)self->_remote radioAccessTechnology];
  v23 = [(IDSStunCandidate *)self->_local mtu];
  type = [(IDSStunCandidate *)self->_local type];
  type2 = [(IDSStunCandidate *)self->_remote type];
  v10 = [(IDSStunCandidate *)self->_remote mtu];
  remote = self->_remote;
  local = self->_local;
  v22 = MEMORY[0x1E696AEC0];
  v12 = (&_IDSStunCandidateTypeStrings)[type];
  v13 = IDSRadioAccessTechnologyToString(external2);
  v14 = (&_IDSStunCandidateTypeStrings)[type2];
  v15 = IDSRadioAccessTechnologyToString(radioAccessTechnology);
  v16 = bswap32(self->_channelNumber) >> 16;
  v17 = (&_IDSStunCandidatePairStateStrings)[self->_state];
  uUIDString = [(NSUUID *)self->_linkUUID UUIDString];
  v19 = [v22 stringWithFormat:@"[%s(%s, %p)-%s(%p)/%s/%s/%u/%s/%s/%u/(%04x)/%s/%@/%d|%d/%04x/%04x/%@/%@]", __str, v32, local, v24, remote, v12, v13, v23, v14, v15, v10, v16, v17, uUIDString, self->_linkID, self->_delegatedLinkID, self->_relayLinkID, self->_remoteRelayLinkID, self->_sessionID, self->_connections];

  return v19;
}

- (id)candidatePairToken
{
  address = [(IDSStunCandidate *)self->_local address];
  external = [(IDSStunCandidate *)self->_remote external];
  sessionID = self->_sessionID;

  return tokenForStunCandidatePair(address, external, sessionID);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  address = [(IDSStunCandidate *)self->_local address];
  local = [equalCopy local];
  v7 = IsSameSA(address, [local address]);

  external = [(IDSStunCandidate *)self->_remote external];
  remote = [equalCopy remote];
  v10 = IsSameSA(external, [remote external]);

  LODWORD(remote) = [(IDSStunCandidate *)self->_local isRelayStunCandidate];
  local2 = [equalCopy local];
  v12 = remote ^ [local2 isRelayStunCandidate];

  if (self->_remoteRelayLinkID)
  {
    relayLinkID = self->_relayLinkID;
    if (relayLinkID == [equalCopy relayLinkID])
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      v15 = remoteRelayLinkID == [equalCopy remoteRelayLinkID];
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

- (void)setPropertiesWithRelaySessionInfo:(id)info sessionInfoDict:(id)dict enableSKE:(BOOL)e
{
  v51 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dictCopy = dict;
  relaySessionToken = [infoCopy relaySessionToken];
  relaySessionToken = self->_relaySessionToken;
  self->_relaySessionToken = relaySessionToken;

  relaySessionKey = [infoCopy relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = relaySessionKey;

  pskTransportParameters = [infoCopy pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = pskTransportParameters;

  pskH3Settings = [infoCopy pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = pskH3Settings;

  self->_relayProviderType = [infoCopy relayServerProviderType];
  self->_allocateType = [infoCopy allocateType];
  [infoCopy allocateTime];
  self->_allocateTime = v19;
  self->_participantID = [infoCopy participantID];
  self->_isPseudoParticipant = [infoCopy isPseudoParticipant];
  self->_callType = [infoCopy callType];
  self->_sessionIsNonUserParticipantInitiated = [infoCopy sessionIsUserParticipantInitiated];
  handOffOverQREnabled = [infoCopy handOffOverQREnabled];
  defaultDeviceLocalCBUUID = [infoCopy defaultDeviceLocalCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = defaultDeviceLocalCBUUID;

  defaultDeviceRemoteCBUUID = [infoCopy defaultDeviceRemoteCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = defaultDeviceRemoteCBUUID;

  groupID = [infoCopy groupID];
  groupID = self->_groupID;
  self->_groupID = groupID;

  self->_protocolVersion = [infoCopy protocolVersion];
  self->_isInitiator = [infoCopy isInitiator];
  softwareData = [infoCopy softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = softwareData;

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

  if ([infoCopy isInitiator])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    linkUUID = self->_linkUUID;
    self->_linkUUID = uUID;
  }

  objc_storeStrong(&self->_relaySessionInfo, info);
  objc_storeStrong(&self->_sessionInfoDict, dict);
  self->_enableSKE = e;
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

  if (handOffOverQREnabled)
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

- (void)setIsQUIC:(BOOL)c
{
  cCopy = c;
  v14 = *MEMORY[0x1E69E9840];
  self->_isQUIC = c;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    capabilityFlags = self->_capabilityFlags;
    *buf = 138412802;
    if (cCopy)
    {
      v6 = @"YES";
    }

    v9 = v6;
    v10 = 2048;
    v11 = capabilityFlags;
    v12 = 2112;
    selfCopy = self;
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

- (void)setPropertiesWithReallocCandidatePair:(id)pair reallocToken:(id)token
{
  objc_storeStrong(&self->_relaySessionToken, token);
  tokenCopy = token;
  pairCopy = pair;
  self->_pendingRealloc = 1;
  relaySessionInfo = [pairCopy relaySessionInfo];
  relaySessionInfo = self->_relaySessionInfo;
  self->_relaySessionInfo = relaySessionInfo;

  sessionInfoDict = [pairCopy sessionInfoDict];
  sessionInfoDict = self->_sessionInfoDict;
  self->_sessionInfoDict = sessionInfoDict;

  self->_allocateType = [pairCopy allocateType];
  [pairCopy allocateTime];
  self->_allocateTime = v12;
  self->_participantID = [pairCopy participantID];
  relaySessionKey = [pairCopy relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = relaySessionKey;

  self->_relayProviderType = [pairCopy relayProviderType];
  pskTransportParameters = [pairCopy pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = pskTransportParameters;

  pskH3Settings = [pairCopy pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = pskH3Settings;

  self->_isAcceptedRelaySession = [pairCopy isAcceptedRelaySession];
  relayRemote = [pairCopy relayRemote];
  relayRemote = self->_relayRemote;
  self->_relayRemote = relayRemote;

  self->_recvSKEData = [pairCopy recvSKEData];
  self->_sentSKEData = [pairCopy sentSKEData];
  skeData = [pairCopy skeData];
  skeData = self->_skeData;
  self->_skeData = skeData;

  defaultLocalDeviceCBUUID = [pairCopy defaultLocalDeviceCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = defaultLocalDeviceCBUUID;

  defaultRemoteDeviceCBUUID = [pairCopy defaultRemoteDeviceCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = defaultRemoteDeviceCBUUID;

  groupID = [pairCopy groupID];
  groupID = self->_groupID;
  self->_groupID = groupID;

  linkUUID = [pairCopy linkUUID];
  linkUUID = self->_linkUUID;
  self->_linkUUID = linkUUID;

  self->_capabilityFlags = [pairCopy capabilityFlags];
  self->_protocolVersion = [pairCopy protocolVersion];
  self->_isInitiator = [pairCopy isInitiator];
  self->_enableSKE = [pairCopy enableSKE];
  softwareData = [pairCopy softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = softwareData;

  appName = [pairCopy appName];

  appName = self->_appName;
  self->_appName = appName;
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
    address = [(IDSStunCandidate *)self->_local address];
    external = [(IDSStunCandidate *)self->_remote external];
    if (address->sa_family == 30)
    {
      v7 = external;
      if (external->sa_family == 2)
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

- (void)setPendingNoSessionState:(BOOL)state
{
  self->_pendingNoSessionStateAllocbind = state;
  if (state)
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

- (void)setPendingRealloc:(BOOL)realloc
{
  self->_pendingRealloc = realloc;
  if (realloc)
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

- (void)startSessionConnectedTimer:(int)timer block:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
  v12 = dispatch_time(0, 1000000000 * timer);
  dispatch_source_set_timer(v11, v12, 1000000000 * timer, 0x5F5E100uLL);
  v13 = self->_sessionConnectedTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C76028;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  v14 = _Block_copy(blockCopy);
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
    timerCopy = timer;
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

- (void)startSessionConvergenceTimer:(int)timer block:(id)block
{
  v4 = *&timer;
  v40 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
    v20 = _Block_copy(blockCopy);
    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = v20;

    dispatch_resume(self->_sessionConvergenceTimer);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_sessionConvergenceTimer;
      v24 = _Block_copy(self->_sessionConvergenceBlock);
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v37 = v23;
      v38 = 1024;
      *v39 = v4;
      *&v39[4] = 2048;
      *&v39[6] = v24;
      *&v39[14] = 2112;
      *&v39[16] = candidatePairToken;
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
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v37 = v8;
      v38 = 2048;
      *v39 = v9;
      *&v39[8] = 2112;
      *&v39[10] = candidatePairToken2;
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

- (void)startSessionGoAwayTimer:(int)timer block:(id)block
{
  v4 = *&timer;
  v40 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
    v20 = _Block_copy(blockCopy);
    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = v20;

    dispatch_resume(self->_sessionGoAwayTimer);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_sessionGoAwayTimer;
      v24 = _Block_copy(self->_sessionGoAwayBlock);
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v37 = v23;
      v38 = 1024;
      *v39 = v4;
      *&v39[4] = 2048;
      *&v39[6] = v24;
      *&v39[14] = 2112;
      *&v39[16] = candidatePairToken;
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
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v37 = v8;
      v38 = 2048;
      *v39 = v9;
      *&v39[8] = 2112;
      *&v39[10] = candidatePairToken2;
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

- (void)setChannelSettings:(unsigned int)settings
{
  settingsCopy = settings;
  v16 = *MEMORY[0x1E69E9840];
  statsIntervalInSeconds = self->_statsIntervalInSeconds;
  if (statsIntervalInSeconds != settings && statsIntervalInSeconds != 60)
  {
    settingsCopy2 = settings;
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_statsIntervalInSeconds;
      *buf = 67109376;
      *v14 = v8;
      *&v14[4] = 1024;
      *&v14[6] = settingsCopy2;
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

    self->_statsIntervalInSeconds = settingsCopy2;
  }

  v9 = settingsCopy & 0x100;
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
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v25 = candidatePairToken;
    v26 = 2080;
    v27 = *&v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip setting test options for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      v23 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip setting test options for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v6 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip setting test options for %@, state [%s].");
LABEL_38:
      }
    }
  }
}

- (void)setRelayLinkID:(unsigned __int16)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_relayLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      relayLinkID = self->_relayLinkID;
      *buf = 67109634;
      v8 = relayLinkID;
      v9 = 1024;
      v10 = dCopy;
      v11 = 2112;
      selfCopy = self;
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

    self->_relayLinkID = dCopy;
  }
}

- (void)setRemoteRelayLinkID:(unsigned __int16)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_remoteRelayLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      *buf = 67109634;
      v8 = remoteRelayLinkID;
      v9 = 1024;
      v10 = dCopy;
      v11 = 2112;
      selfCopy = self;
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

    self->_remoteRelayLinkID = dCopy;
  }
}

- (void)setDelegatedLinkID:(char)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_delegatedLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      delegatedLinkID = self->_delegatedLinkID;
      *buf = 67109634;
      v8 = delegatedLinkID;
      v9 = 1024;
      v10 = dCopy;
      v11 = 2112;
      selfCopy = self;
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

    self->_delegatedLinkID = dCopy;
  }
}

- (void)setServerIsDegraded:(BOOL)degraded
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_serverIsDegraded != degraded)
  {
    degradedCopy = degraded;
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
      if (degradedCopy)
      {
        v6 = @"YES";
      }

      v11 = v6;
      v12 = 2112;
      selfCopy = self;
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

    self->_serverIsDegraded = degradedCopy;
  }
}

- (void)setProtocolVersion:(unsigned __int8)version isInitiator:(BOOL)initiator enableSKE:(BOOL)e
{
  eCopy = e;
  initiatorCopy = initiator;
  versionCopy = version;
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

    if (initiatorCopy)
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
    if (eCopy)
    {
      v11 = @"YES";
    }

    v17 = protocolVersion;
    v18 = 1024;
    v19 = versionCopy;
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

  self->_protocolVersion = versionCopy;
  self->_isInitiator = initiatorCopy;
  self->_enableSKE = eCopy;
}

- (void)deriveAES128CTRKeys:(id)keys
{
  v35 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  if (StunUtilDeriveHKDFSha256Keys(self->_relaySessionKey, self->_sessionID, self->_participantID, keysCopy, &v32))
  {
    v5 = [keysCopy copy];
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
      selfCopy = self;
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

- (unint64_t)getParticipantIDHash:(id)hash
{
  v8 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v4;
  macOut[1] = v4;
  data = bswap64([hash unsignedLongLongValue]);
  CCHmac(2u, [(NSData *)self->_hmacKey bytes], [(NSData *)self->_hmacKey length], &data, 8uLL, macOut);
  return bswap64(*&macOut[0]);
}

- (void)_addParticipantIDs:(id)ds toParticipantIDMap:(id)map
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  Mutable = map;
  allKeys = [(NSDictionary *)Mutable allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = dsCopy;
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
        if (([allKeys containsObject:v13] & 1) == 0)
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

- (void)initParticipantIDMap:(id)map
{
  mapCopy = map;
  if (self->_hmacKey)
  {
    allParticipantIDs = [(IDSQuickRelaySessionInfo *)self->_relaySessionInfo allParticipantIDs];
    if (mapCopy)
    {
      v6 = [mapCopy mutableCopy];
    }

    else
    {
      v6 = 0;
    }

    [(IDSStunCandidatePair *)self _addParticipantIDs:allParticipantIDs toParticipantIDMap:v6];
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

- (void)updateParticipantIDMap:(id)map
{
  mapCopy = map;
  if (self->_hmacKey)
  {
    v5 = [(NSDictionary *)self->_participantIDMap mutableCopy];
    [(IDSStunCandidatePair *)self _addParticipantIDs:mapCopy toParticipantIDMap:v5];
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

- (void)removeFromParticipantIDMap:(id)map
{
  v29 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v17 = mapCopy;
  if (self->_hmacKey)
  {
    v5 = mapCopy;
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

- (void)updateURIToParticipantIDMapping:(id)mapping
{
  v42 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  Value = 0;
  theDict = mappingCopy;
  if (mappingCopy && @"qal")
  {
    Value = CFDictionaryGetValue(mappingCopy, @"qal");
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

- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt
{
  v22 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  participantIDMap = self->_participantIDMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v9 = [(NSDictionary *)participantIDMap objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = IDSIDAliasHashUInt64([v9 unsignedLongLongValue], saltCopy);
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218755;
      unsignedLongLongValue = [v9 unsignedLongLongValue];
      v16 = 2048;
      dCopy = d;
      v18 = 2112;
      v19 = saltCopy;
      v20 = 2049;
      v21 = v10;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        unsignedLongLongValue2 = [v9 unsignedLongLongValue];
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

- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt
{
  v23 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
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

        unsignedLongLongValue = [*(*(&v14 + 1) + 8 * v10) unsignedLongLongValue];
        if (IDSIDAliasHashUInt64(unsignedLongLongValue, saltCopy) == alias)
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
    aliasCopy = alias;
    v20 = 2112;
    v21 = saltCopy;
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

  unsignedLongLongValue = 0;
LABEL_17:

  return unsignedLongLongValue;
}

- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)change
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
  external = [(IDSStunCandidate *)self->_local external];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = SAToIPPortString(__str, 0x80uLL, external);
    v10 = 2080;
    v11 = SAToIPPortString(v12, 0x80uLL, change);
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "original external address = %s, new external address = %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      SAToIPPortString(__str, 0x80uLL, external);
      SAToIPPortString(v12, 0x80uLL, change);
      _IDSLogTransport(@"GL", @"IDS", @"original external address = %s, new external address = %s");
      if (_IDSShouldLog())
      {
        SAToIPPortString(__str, 0x80uLL, external);
        SAToIPPortString(v12, 0x80uLL, change);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"original external address = %s, new external address = %s");
      }
    }
  }

  return !IsSameSA(change, external) && change->sa_family != 0;
}

- (void)addStunRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (([(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy]& 1) == 0)
  {
    pendingStunRequests = self->_pendingStunRequests;
    if (!pendingStunRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_pendingStunRequests;
      self->_pendingStunRequests = v6;

      pendingStunRequests = self->_pendingStunRequests;
    }

    if (requestCopy && pendingStunRequests)
    {
      CFArrayAppendValue(pendingStunRequests, requestCopy);
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = requestCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "add pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"add pending stun request: %@ for %@");
    }
  }
}

- (void)removeStunRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy])
  {
    [(NSMutableArray *)self->_pendingStunRequests removeObject:requestCopy];
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = requestCopy;
      v11 = 2112;
      selfCopy4 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "remove pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = requestCopy;
        selfCopy3 = self;
        _IDSLogTransport(@"GL", @"IDS", @"remove pending stun request: %@ for %@");
        if (_IDSShouldLog())
        {
          v7 = requestCopy;
          selfCopy3 = self;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove pending stun request: %@ for %@");
        }
      }
    }
  }

  if ([(NSMutableArray *)self->_repliedStunRequests containsObject:requestCopy, v7, selfCopy3])
  {
    [(NSMutableArray *)self->_repliedStunRequests removeObject:requestCopy];
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = requestCopy;
      v11 = 2112;
      selfCopy4 = self;
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

- (BOOL)shouldRexmitStunRequest:(id)request
{
  requestCopy = request;
  if (([(NSMutableArray *)self->_repliedStunRequests containsObject:requestCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy];
  }

  return v5;
}

- (BOOL)shouldProcessStunResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:responseCopy];
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

    if (responseCopy && repliedStunRequests)
    {
      CFArrayAppendValue(repliedStunRequests, responseCopy);
    }

    [(NSMutableArray *)self->_pendingStunRequests removeObject:responseCopy];
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = responseCopy;
      v13 = 2112;
      selfCopy = self;
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

- (void)_savePluginNameForRequest:(id)request pluginName:(id)name
{
  key = request;
  nameCopy = name;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:key])
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    if (nameCopy)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, key, nameCopy);
    }
  }
}

- (id)_pluginNameForStunRequest:(id)request
{
  Value = 0;
  if (request)
  {
    pluginNameToStunReqID = self->_pluginNameToStunReqID;
    if (pluginNameToStunReqID)
    {
      Value = CFDictionaryGetValue(pluginNameToStunReqID, request);
      v3 = vars8;
    }
  }

  return Value;
}

- (void)updateStunSentBytes:(int64_t)bytes requestID:(id)d
{
  dCopy = d;
  if ((bytes & 0x8000000000000000) == 0)
  {
    Value = 0;
    key = dCopy;
    if (dCopy && self->_stunSentBytesToRequestID)
    {
      Value = CFDictionaryGetValue(self->_stunSentBytesToRequestID, dCopy);
    }

    v8 = bytes + [Value unsignedIntValue];
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

    dCopy = key;
  }
}

- (unint64_t)getStunSentBytes:(id)bytes
{
  bytesCopy = bytes;
  if (bytesCopy && (stunSentBytesToRequestID = self->_stunSentBytesToRequestID) != 0)
  {
    unsignedIntValue = [CFDictionaryGetValue(stunSentBytesToRequestID bytesCopy)];
  }

  else
  {
    unsignedIntValue = [0 unsignedIntValue];
    if (!bytesCopy)
    {
      goto LABEL_7;
    }
  }

  v7 = self->_stunSentBytesToRequestID;
  if (v7)
  {
    CFDictionaryRemoveValue(v7, bytesCopy);
  }

LABEL_7:

  return unsignedIntValue;
}

- (void)sendStatsRequest:(id)request options:(id)options
{
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    v12 = ids_monotonic_time();
    [requestCopy startTime];
    if (v13 == 0.0)
    {
      if (!requestID)
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
          v52 = requestID;
          v53 = 1024;
          *v54 = v14;
          _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "stats request %@ timed out after %u seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v38 = requestID;
            v40 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"stats request %@ timed out after %u seconds.");
            if (_IDSShouldLog())
            {
              v38 = requestID;
              v40 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"stats request %@ timed out after %u seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, v38, v40];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        if (requestIDToStatsIDs)
        {
          if (requestID)
          {
            v36 = CFDictionaryGetValue(requestIDToStatsIDs, requestID);
            if (v36)
            {
              v37 = v36;
              [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:requestID];
            }
          }
        }

        goto LABEL_66;
      }

      v12 = v13;
      if (!requestID)
      {
        goto LABEL_14;
      }
    }

    if (![(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
      goto LABEL_66;
    }

LABEL_14:
    transactionID = [requestCopy transactionID];
    v16 = StunUtilCreateMessage(3811, transactionID, self, optionsCopy);

    if (v16)
    {
      requestID2 = [v16 requestID];

      [v16 setStartTime:v12];
      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"ids-extchannel-stat-identifier-key");
      }

      unsignedLongLongValue = [Value unsignedLongLongValue];
      v20 = 0;
      if (self->_requestIDToStatsIDs && requestID2)
      {
        v20 = CFDictionaryGetValue(self->_requestIDToStatsIDs, requestID2);
      }

      unsignedLongLongValue2 = [v20 unsignedLongLongValue];
      if (unsignedLongLongValue && unsignedLongLongValue != unsignedLongLongValue2)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v23 = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        if (v24)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, requestID2, v24);
        }

        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v52 = unsignedLongLongValue;
          v53 = 2112;
          *v54 = requestID2;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v38 = unsignedLongLongValue;
            v40 = requestID2;
            _IDSLogTransport(@"GL", @"IDS", @"add stats identifier %llu for %@.");
            if (_IDSShouldLog())
            {
              v38 = unsignedLongLongValue;
              v40 = requestID2;
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
        v52 = requestID2;
        v53 = 1024;
        *v54 = linkID;
        *&v54[4] = 2048;
        *&v54[6] = unsignedLongLongValue;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "send stats req %@ for link %d, statsIdentifier: %llu.", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v40 = self->_linkID;
          v42 = unsignedLongLongValue;
          v38 = requestID2;
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %@ for link %d, statsIdentifier: %llu.");
          if (_IDSShouldLog())
          {
            v40 = self->_linkID;
            v42 = unsignedLongLongValue;
            v38 = requestID2;
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

            [*(*(&v46 + 1) + 8 * i) didSendStatsRequestWithID:requestID2 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v38, v40, v42), &unk_1F1AAB920}];
          }

          v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v30);
      }

      if (([(IDSStunCandidate *)self->_local transport]- 1) > 1)
      {
        requestID = requestID2;
        requestCopy = v16;
      }

      else
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_1A7C7ABD4;
        v43[3] = &unk_1E77E1068;
        v43[4] = self;
        requestCopy = v16;
        v44 = requestCopy;
        v45 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v43, 1.0);

        requestID = requestID2;
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

      requestCopy = 0;
    }

    goto LABEL_66;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v52 = candidatePairToken;
    v53 = 2080;
    *v54 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      v41 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip stats request for %@, state [%s].");
LABEL_66:
      }
    }
  }
}

- (void)sendInfoRequest:(id)request
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = requestCopy;
  if (self->_state < 5)
  {
    requestID = [requestCopy requestID];
    if (v5)
    {
      v10 = ids_monotonic_time();
      [v5 startTime];
      if (v10 - v11 >= 10.0)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [v5 transactionID];
          *buf = 138412546;
          v31 = transactionID;
          v32 = 1024;
          LODWORD(v33) = 10;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [v5 transactionID];
            v24 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"info request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              transactionID2 = [v5 transactionID];
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

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, transactionID2, v24];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:requestID];

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

      requestID2 = [v15 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v31 = v5;
        v32 = 2112;
        v33 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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

      [(IDSStunCandidatePair *)self updateStunSentBytes:v20 requestID:requestID];
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
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    goto LABEL_38;
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v8 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v31 = candidatePairToken3;
    v32 = 2080;
    v33 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v25 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].");
LABEL_38:
      }
    }
  }
}

- (void)sendQRPluginRegistrationRequest:(id)request options:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state < 5)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v12 = ids_monotonic_time();
      [requestCopy startTime];
      if (v12 - v13 >= 10.0)
      {
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v41 = transactionID;
          v42 = 1024;
          LODWORD(v43) = 10;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "plugin registration request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            v33 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"plugin registration request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              transactionID2 = [requestCopy transactionID];
              v33 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"plugin registration request %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 26, self, 0.0);
        v29 = GLUCreateQRStunMessageEvent(requestCopy, 0x21u, self, 0, 0.0);
        if (v29)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v29];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, transactionID2, v33];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID];

        goto LABEL_48;
      }

      requestID2 = requestID;
    }

    else
    {
      requestCopy = StunUtilCreateMessage(3816, 0, self, optionsCopy);
      encKey = [(IDSStunCandidatePair *)self encKey];
      [requestCopy initAES128CTR:encKey];

      if (!requestCopy)
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

        requestCopy = 0;
        goto LABEL_48;
      }

      requestID2 = [requestCopy requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
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
      if (optionsCopy && @"gl-option-plugin-name")
      {
        v20 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
      }

      v22 = [v21 stringWithFormat:@"%@.%@", v20, v19];
      [(IDSStunCandidatePair *)self _savePluginNameForRequest:requestID2 pluginName:v22];
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID2])
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v41 = requestCopy;
        v42 = 2112;
        v43 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send QR plugin registration request %@ for %@.");

          if (_IDSShouldLog())
          {
            v36 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send QR plugin registration request %@ for %@.");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v26 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v26 requestID:requestID2];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = sub_1A7C7BA0C;
        v37[3] = &unk_1E77E1068;
        v37[4] = self;
        requestCopy = requestCopy;
        v38 = requestCopy;
        v39 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v37, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID2];
      [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID2];
    }

    requestID = requestID2;
LABEL_48:

    goto LABEL_49;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v41 = candidatePairToken3;
    v42 = 2080;
    v43 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v34 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].");
        goto LABEL_48;
      }
    }
  }

LABEL_49:
}

- (void)sendSessionInfoRequest:(id)request options:(id)options
{
  v52 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v12 = ids_monotonic_time();
      [requestCopy startTime];
      if (v12 - v13 >= 10.0)
      {
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v47 = transactionID;
          v48 = 1024;
          LODWORD(v49) = 10;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "session-info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            candidatePairToken3 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"session-info request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              transactionID2 = [requestCopy transactionID];
              candidatePairToken3 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info request %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 30, self, 0.0);
        v34 = GLUCreateQRStunMessageEvent(requestCopy, 0x1Eu, self, 0, 0.0);
        if (v34)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v34];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, transactionID2, candidatePairToken3];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:requestID];

        goto LABEL_52;
      }

      requestID2 = requestID;
    }

    else
    {
      v21 = StunUtilCreateMessage(3813, 0, self, optionsCopy);
      requestCopy = v21;
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

        requestCopy = 0;
        goto LABEL_52;
      }

      [v21 initAES128CTR:self->_encKey];
      requestID2 = [requestCopy requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-link-id-to-query");
      }

      intValue = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v26 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v27 = [MEMORY[0x1E696AD98] numberWithChar:intValue];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v27 forKey:requestID2];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v28;
      }

      if (optionsCopy)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v30 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
          if (v30)
          {
            v31 = v30;
            CFDictionarySetValue(self->_requestIDToSessionInfoReqType, requestID2, v30);
          }
        }
      }
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID2])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v16 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      if (v16 == -2)
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v47 = requestCopy;
          v48 = 2112;
          v49 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "error: failed to send session-info request %@ for %@ because it exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            candidatePairToken3 = transactionID2 = requestCopy;
            _IDSLogTransport(@"GL", @"IDS", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
              candidatePairToken3 = transactionID2 = requestCopy;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID2, transactionID2, candidatePairToken3];
        v19 = objc_loadWeakRetained(&self->_delegate);
        [v19 candidatePair:self didReceiveSessionInfo:0 status:1];

        v20 = GLUCreateQRStunMessageEvent(requestCopy, 0x24u, self, 0, 0.0);
        if (v20)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v20];
        }
      }

      else
      {
        [(IDSStunCandidatePair *)self updateStunSentBytes:v16 requestID:requestID2];
        v36 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v47 = requestCopy;
          v48 = 2112;
          v49 = candidatePairToken2;
          v50 = 2048;
          v51 = v16;
          _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            v42 = v16;
            transactionID2 = requestCopy;
            _IDSLogTransport(@"GL", @"IDS", @"send session-info request %@ for %@, sentBytes: %lu");

            if (_IDSShouldLog())
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
              v42 = v16;
              transactionID2 = requestCopy;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"send session-info request %@ for %@, sentBytes: %lu");
            }
          }
        }

        if (([(IDSStunCandidate *)self->_local transport:transactionID2]- 1) <= 1)
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = sub_1A7C7C39C;
          v43[3] = &unk_1E77E1068;
          v43[4] = self;
          requestCopy = requestCopy;
          v44 = requestCopy;
          v45 = optionsCopy;
          IDSTransportThreadAddBlockAfter(v43, 1.0);
        }
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID2];
      [(NSMutableDictionary *)self->_requestIDToQueryLinkIDs removeObjectForKey:requestID2];
      [(NSMutableDictionary *)self->_requestIDToSessionInfoReqType removeObjectForKey:requestID2];
    }

    requestID = requestID2;
LABEL_52:

    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v47 = candidatePairToken4;
    v48 = 2080;
    v49 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      v41 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken5];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].");
        goto LABEL_52;
      }
    }
  }

LABEL_53:
}

- (void)sendPutMaterialRequest:(id)request options:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v12 = ids_monotonic_time();
      [requestCopy startTime];
      if (v12 - v13 >= 10.0)
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v38 = transactionID;
          v39 = 1024;
          LODWORD(v40) = 10;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "PutMaterial request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            v32 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"PutMaterial request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              transactionID2 = [requestCopy transactionID];
              v32 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"PutMaterial request %@ timed out after %d seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, transactionID2, v32];
        v28 = GLUCreateQRStunMessageEventWithEventSubType(244, 0x28u, self, 0, 10.0);
        if (v28)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v28];
        }

        goto LABEL_53;
      }

      v14 = requestCopy;
    }

    else
    {
      v15 = StunUtilCreateMessage(3817, 0, self, optionsCopy);
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

        requestCopy = 0;
        goto LABEL_53;
      }

      [v15 initAES128CTR:self->_encKey];
      requestID2 = [v14 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v38 = v14;
        v39 = 2112;
        v40 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send PutMaterial request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v32 = transactionID2 = v14;
          _IDSLogTransport(@"GL", @"IDS", @"send PutMaterial request %@ for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:v14];
            v32 = transactionID2 = v14;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send PutMaterial request %@ for %@.");
          }
        }
      }

      v19 = requestCopy != 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v21 = [WeakRetained sendStunMessage:v14 candidatePair:self];

      v22 = v21 != -2 || v19;
      if ((v22 & 1) == 0)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v38 = v14;
          v39 = 2112;
          v40 = candidatePairToken2;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "warning: send PutMaterial request %@ for %@ exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v32 = transactionID2 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"warning: send PutMaterial request %@ for %@ exceeds MTU size");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v14];
              v32 = transactionID2 = v14;
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

      [(IDSStunCandidatePair *)self updateStunSentBytes:v21 requestID:requestID, transactionID2, v32];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_1A7C7CBC8;
        v34[3] = &unk_1E77E1068;
        v34[4] = self;
        requestCopy = v14;
        v35 = requestCopy;
        v36 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v34, 1.0);

        goto LABEL_53;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    requestCopy = v14;
    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v38 = candidatePairToken3;
    v39 = 2080;
    v40 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip PutMaterial request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip PutMaterial request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip PutMaterial request for %@, state [%s].");
LABEL_53:
      }
    }
  }
}

- (void)sendParticipantUpdateRequest:(id)request options:(id)options
{
  v50 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v12 = ids_monotonic_time();
      [requestCopy startTime];
      if (v12 - v13 >= 10.0)
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412802;
          v45 = transactionID;
          v46 = 2112;
          v47 = requestID;
          v48 = 1024;
          v49 = 10;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "participant update request %@ requestID: %@ timed out after %d seconds.", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [requestCopy transactionID];
            v38 = requestID;
            v36 = v40 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"participant update request %@ requestID: %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              [requestCopy transactionID];
              v38 = requestID;
              v36 = v40 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"participant update request %@ requestID: %@ timed out after %d seconds.");
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 32, self, 0.0);
        v28 = GLUCreateQRStunMessageEvent(requestCopy, 0x20u, self, 0, 0.0);
        if (v28)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v28];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, v36, v38, v40];
        v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
        Value = 0;
        if (optionsCopy && @"gl-option-participant-update-request-type")
        {
          Value = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-type");
        }

        intValue = [Value intValue];
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:intValue];
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

      v14 = requestCopy;
    }

    else
    {
      v15 = StunUtilCreateMessage(3815, 0, self, optionsCopy);
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

        requestCopy = 0;
        goto LABEL_62;
      }

      [v15 initAES128CTR:self->_encKey];
      requestID2 = [v14 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v45 = v14;
        v46 = 2112;
        v47 = candidatePairToken;
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

      v19 = requestCopy != 0;
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = [v20 sendStunMessage:v14 candidatePair:self];

      v22 = v21 != -2 || v19;
      if ((v22 & 1) == 0)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v45 = v14;
          v46 = 2112;
          v47 = candidatePairToken2;
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

      [(IDSStunCandidatePair *)self updateStunSentBytes:v21 requestID:requestID, v36, v38];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = sub_1A7C7D500;
        v41[3] = &unk_1E77E1068;
        v41[4] = self;
        requestCopy = v14;
        v42 = requestCopy;
        v43 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v41, 1.0);

        goto LABEL_62;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    requestCopy = v14;
    goto LABEL_62;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v45 = candidatePairToken3;
    v46 = 2080;
    v47 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v39 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].");
LABEL_62:
      }
    }
  }
}

- (BOOL)sendQUICGetMaterialRequest:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = requestCopy;
      v23 = 2112;
      v24 = candidatePairToken;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send get material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send get material request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send get material request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7D8E8;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = candidatePairToken3;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip get material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip get material request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip get material request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICPutMaterialRequest:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = requestCopy;
      v23 = 2112;
      v24 = candidatePairToken;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send put material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send put material request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send put material request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7DE80;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = candidatePairToken3;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip put material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip put material request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip put material request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICCallModeUpdateRequest:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:v9];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v22 = requestCopy;
      v23 = 2112;
      v24 = candidatePairToken;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send CallModeUpdate request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send CallModeUpdate request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v18 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send CallModeUpdate request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C7E440;
    v20[3] = &unk_1E77E2758;
    v20[4] = self;
    v20[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v20, 10.0);
    goto LABEL_9;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v14 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v22 = candidatePairToken3;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "skip CallModeUpdate request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v19 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip CallModeUpdate request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v9 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip CallModeUpdate request for %@, state [%s].");
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (void)sendTestRequest:(id)request
{
  v46 = *MEMORY[0x1E69E9840];
  requestCopy = request;
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

    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v13 = ids_monotonic_time();
      [requestCopy startTime];
      if (v13 - v14 >= 10.0)
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          *v39 = transactionID;
          *&v39[8] = 1024;
          *&v39[10] = 10;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "test request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            v33 = 10;
            _IDSLogTransport(@"GL", @"IDS", @"test request %@ timed out after %d seconds.");

            if (_IDSShouldLog())
            {
              transactionID2 = [requestCopy transactionID];
              v33 = 10;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"test request %@ timed out after %d seconds.");
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID, transactionID2, v33];
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v17 = StunUtilCreateMessage(2049, 0, self, v8);
      requestCopy = v17;
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

        requestCopy = 0;
        goto LABEL_39;
      }

      requestID2 = [v17 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testSubOperation = self->_testSubOperation;
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        linkID = self->_linkID;
        *buf = 67110402;
        *v39 = testOptions;
        *&v39[4] = 2112;
        *&v39[6] = testSubOperation;
        *&v39[14] = 2112;
        *&v39[16] = requestCopy;
        v40 = 2112;
        v41 = candidatePairToken;
        v42 = 2112;
        v43 = requestID;
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
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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
      v29 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v29 requestID:requestID];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1A7C7ED30;
        v36[3] = &unk_1E77E0250;
        v36[4] = self;
        requestCopy = requestCopy;
        v37 = requestCopy;
        IDSTransportThreadAddBlockAfter(v36, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    goto LABEL_39;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    *v39 = candidatePairToken3;
    *&v39[8] = 2080;
    *&v39[10] = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v34 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
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
    selfCopy = self;
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
  candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
  [WeakRetained sendProbingRequestWithoptions:v4 candidatePairToken:candidatePairToken];
}

- (void)startLinkProbingTimer:(unsigned int)timer
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

  dispatch_source_set_timer(self->_probingTimer, 0, (timer / 1000.0 * 1000000000.0), 0xF4240uLL);
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
    selfCopy = self;
    v17 = 1024;
    timerCopy = timer;
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
      selfCopy = self;
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

- (BOOL)processStatsResponse:(id)response arrivalTime:(double)time
{
  v59 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  if ([(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID])
  {
    v51 = 0;
    HasValidUInt32Attr = StunUtilHasValidUInt32Attr(responseCopy, 65523, &v51);
    if (HasValidUInt32Attr)
    {
      v9 = ntpTime32(time);
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
        requestID2 = [responseCopy requestID];
        v15 = (self->_serverLatency * 1000.0);
        linkID = self->_linkID;
        *buf = 138413058;
        v54 = requestID2;
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
          requestID3 = [responseCopy requestID];
          v45 = (self->_serverLatency * 1000.0);
          v41 = self->_linkID;
          v44 = v46;
          v38 = requestID3;
          _IDSLogTransport(@"GL", @"IDS", @"recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).");

          if (_IDSShouldLog())
          {
            requestID4 = [responseCopy requestID];
            v45 = (self->_serverLatency * 1000.0);
            v41 = self->_linkID;
            v44 = v46;
            v38 = requestID4;
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

            [*(*(&v47 + 1) + 8 * i) didReceiveStatsResponseWithID:requestID linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v38, v41, v44, v45), &unk_1F1AAB940}];
          }

          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v20);
      }

      Value = 0;
      if (requestID && self->_requestIDToStatsIDs)
      {
        Value = CFDictionaryGetValue(self->_requestIDToStatsIDs, requestID);
      }

      v24 = Value;
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue = [v24 unsignedLongLongValue];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        *buf = 134218242;
        v54 = unsignedLongLongValue;
        v55 = 2112;
        *v56 = requestIDToStatsIDs;
        _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "statsIdentifier: %llu, requestIDToStatsIDs: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          unsignedLongLongValue2 = [v24 unsignedLongLongValue];
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
          unsignedLongLongValue3 = [v24 unsignedLongLongValue];
          v34 = self->_linkID;
          *buf = 134218496;
          v54 = unsignedLongLongValue3;
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
            unsignedLongLongValue4 = [v24 unsignedLongLongValue];
            v43 = self->_linkID;
            v40 = unsignedLongLongValue4;
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

        [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:requestID];
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

- (BOOL)_optionallyCheckEncMarker:(id)marker
{
  v15 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  memset(__b, 170, sizeof(__b));
  v9 = 0;
  if (!StunUtilHasValidBinaryDataAttr(markerCopy, 60934, __b, &v9))
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

- (BOOL)processInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead
{
  v41 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (v10)
  {
    if ((StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0) & 1) != 0 || self->_state < 3)
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
      HasValidXorMappedAddress = StunUtilHasValidXorMappedAddress(responseCopy, v32);
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
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *v30 = 138412290;
          v31 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", v30, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.");

            if (_IDSShouldLog())
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.");
            }
          }
        }

        v17 = StunUtilProcessActiveParticipants(responseCopy);
        v18 = StunUtilProcessLightweightParticipants(responseCopy);
        if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
        {
          var2 = buffer->var2;
          requestID2 = [responseCopy requestID];
          v21 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID2];

          v22 = 0;
          v23 = var2 + overhead;
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

- (BOOL)processSessionInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead isLightweightParticipant:(BOOL)participant
{
  v46 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v12 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v12)
  {
LABEL_35:
    v23 = 1;
    goto LABEL_36;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v43 = requestID2;
      v44 = 2112;
      v45 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive session-info response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        [(IDSStunCandidatePair *)self candidatePairToken];
        v38 = v37 = requestID3;
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %@ for %@.");

        if (_IDSShouldLog())
        {
          requestID4 = [responseCopy requestID];
          [(IDSStunCandidatePair *)self candidatePairToken];
          v38 = v37 = requestID4;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %@ for %@.");
        }
      }
    }

    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy, v37, v38])
    {
      if (self->_requestIDToQueryLinkIDs)
      {
        requestID5 = [responseCopy requestID];
        if (requestID5)
        {
          requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
          requestID6 = [responseCopy requestID];
          intValue = [CFDictionaryGetValue(requestIDToQueryLinkIDs requestID6)];
        }

        else
        {
          intValue = [0 intValue];
        }
      }

      else
      {
        intValue = [0 intValue];
      }

      v24 = StunUtilProcessStreamInfo(responseCopy, self->_linkID, intValue);
      Value = 0;
      if (v24 && @"stream-info-peer-published-streams")
      {
        Value = CFDictionaryGetValue(v24, @"stream-info-peer-published-streams");
      }

      v25 = StunUtilProcessParticipants(Value, self->_participantID, participant);
      v27 = StunUtilProcessLightweightParticipants(responseCopy);
      var2 = buffer->var2;
      requestID7 = [responseCopy requestID];
      v41 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID7];

      v28 = 0;
      v26 = var2 + overhead;
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
      requestID8 = [responseCopy requestID];
      if (requestID8)
      {
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        requestID9 = [responseCopy requestID];
        intValue2 = [CFDictionaryGetValue(requestIDToSessionInfoReqType requestID9)];
      }

      else
      {
        intValue2 = [0 intValue];
      }
    }

    else
    {
      intValue2 = [0 intValue];
    }

    BYTE4(v40) = 0;
    HIDWORD(v39) = v28;
    LODWORD(v40) = 0;
    BYTE1(v39) = intValue2 == 2;
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

- (BOOL)processTestResponse:(id)response arrivalTime:(double)time
{
  v17 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v7 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v7)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v16 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.");

        if (_IDSShouldLog())
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
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

- (BOOL)processParticipantUpdateResponse:(id)response
{
  v24 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v6)
  {
LABEL_13:
    v15 = 1;
    goto LABEL_21;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v21 = requestID2;
      v22 = 2112;
      v23 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        [(IDSStunCandidatePair *)self candidatePairToken];
        v19 = v18 = requestID3;
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %@ for %@.");

        if (_IDSShouldLog())
        {
          requestID4 = [responseCopy requestID];
          [(IDSStunCandidatePair *)self candidatePairToken];
          v19 = v18 = requestID4;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %@ for %@.");
        }
      }
    }

    v12 = StunUtilProcessParticipantUpdate(responseCopy, 0, [responseCopy type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
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

- (BOOL)processPutMaterialResponse:(id)response
{
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v6)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v18 = requestID2;
      v19 = 2112;
      v20 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive PutMaterial response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive PutMaterial response %@ for %@.");

        if (_IDSShouldLog())
        {
          requestID4 = [responseCopy requestID];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
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

- (BOOL)processInfoIndication:(id)indication arrivalTime:(double)time
{
  v13 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412290;
    v12 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive info indication for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive info indication for %@.");

      if (_IDSShouldLog())
      {
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info indication for %@.");
      }
    }
  }

  return 1;
}

- (BOOL)processSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant
{
  v23 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v22 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication for %@.");

        if (_IDSShouldLog())
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication for %@.");
        }
      }
    }

    v11 = StunUtilProcessStreamInfo(indicationCopy, self->_linkID, self->_linkID);
    Value = 0;
    if (v11 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v11, @"stream-info-peer-published-streams");
    }

    v13 = StunUtilProcessParticipants(Value, self->_participantID, participant);
    v14 = StunUtilProcessLightweightParticipants(indicationCopy);
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

- (BOOL)processDataMessageErrorIndication:(id)indication
{
  v48[184] = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  bzero(v45, 0x5D0uLL);
  if (([indicationCopy getAttribute:9 attribute:v45] & 1) == 0)
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
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412802;
    *&buf[4] = candidatePairToken;
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
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive data message error indication for %@, error_code(%u) reason(%s)");

      if (_IDSShouldLog())
      {
        v34 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
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
  if (StunUtilHasValidXorMappedAddress(indicationCopy, v37))
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

- (BOOL)processParticipantUpdateIndication:(id)indication arrivalTime:(double)time
{
  v17 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v16 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication for %@.");

        if (_IDSShouldLog())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication for %@.");
        }
      }
    }

    v9 = StunUtilProcessParticipantUpdate(indicationCopy, 0, [indicationCopy type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:indicationCopy])
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

- (BOOL)processPluginRegistrationResponse:(id)response
{
  v34 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    requestID = [responseCopy requestID];
    v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

    if (v6)
    {
      requestID2 = [responseCopy requestID];
      v8 = [(IDSStunCandidatePair *)self _pluginNameForStunRequest:requestID2];

      if (v8)
      {
        requestID3 = [responseCopy requestID];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID3];
      }

      pathExtension = [v8 pathExtension];
      v11 = [pathExtension isEqualToString:@"Register"];
      if (v11 & 1) != 0 || ([pathExtension isEqualToString:@"Unregister"])
      {
        v27 = 0;
        v12 = StunUtilHasValidUInt64Attr(responseCopy, 65493, &v27) | v11 ^ 1;
        if (v12)
        {
          v13 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412802;
            v29 = candidatePairToken;
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
              candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
              v25 = v27;
              v26 = v8;
              v24 = candidatePairToken2;
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@");

              if (_IDSShouldLog())
              {
                v16 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
                v25 = v27;
                v26 = v8;
                v24 = v16;
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@");
              }
            }
          }

          stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v19 = WeakRetained;
          if (v11)
          {
            [WeakRetained candidatePair:self didReceivePluginRegistration:v27 pluginName:stringByDeletingPathExtension];
          }

          else
          {
            [WeakRetained candidatePair:self didReceivePluginUnregistration:v27 pluginName:stringByDeletingPathExtension];
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

- (BOOL)processPluginControlIndication:(id)indication
{
  v28 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  if ((StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0) & 1) == 0)
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
  if ((StunUtilHasValidUInt64Attr(indicationCopy, 65493, &v19) & 1) == 0)
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
  HasValidUInt8Attr = StunUtilHasValidUInt8Attr(indicationCopy, 65491, &v18);
  if (HasValidUInt8Attr)
  {
    transactionID = [indicationCopy transactionID];
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138413058;
      v21 = candidatePairToken;
      v22 = 2048;
      v23 = v19;
      v24 = 1024;
      v25 = v18;
      v26 = 2112;
      v27 = transactionID;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        v17 = v18;
        v16 = v19;
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@");

        if (_IDSShouldLog())
        {
          v10 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:v19 operation:v18 transactionID:transactionID];
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

- (BOOL)processStunErrorResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead
{
  v92 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

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
  type = [responseCopy type];
  if (StunUtilHasValidErrorCodeAttr(responseCopy, &v77, v91, &v76))
  {
    if (self->_state == 2)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        *&buf[4] = candidatePairToken;
        *&buf[12] = 1024;
        *&buf[14] = type;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.");

          if (_IDSShouldLog())
          {
            v68 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
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
      [responseCopy startTime];
      v21 = v20;
      v22 = [(IDSStunCandidate *)self->_local address][1];
      *buf = 67110146;
      *&buf[4] = type;
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
        [responseCopy startTime];
        v26 = v25;
        v75 = [(IDSStunCandidate *)self->_local address][1];
        *(&v74 + 1) = (v24 - v26) * 1000.0;
        v73 = v23;
        *&v74 = v91;
        v66 = type;
        _IDSLogTransport(@"GL", @"IDS", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.");
        if (_IDSShouldLog())
        {
          v27 = v77;
          v28 = ids_monotonic_time();
          [responseCopy startTime];
          v30 = v29;
          v75 = [(IDSStunCandidate *)self->_local address][1];
          *(&v74 + 1) = (v28 - v30) * 1000.0;
          v73 = v27;
          *&v74 = v91;
          v66 = type;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.");
        }
      }
    }

    v31 = GLUtilStunErrorToGlobalLinkError(v77);
    GLUtilReportAWDStunMessageEvent(responseCopy, v31, self, 0.0);
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
    if (StunUtilHasValidXorMappedAddress(responseCopy, v84))
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
    v36 = GLUCreateQRStunMessageEvent(responseCopy, v35, self, 0, 0.0);
    if (v36)
    {
      [(IDSStunCandidatePair *)self _notifyQREventAdded:v36];
    }

    if ((type & 0xFFFFFFFFFFFFFFFELL) == 0xFF0)
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = (&_IDSStunCandidatePairStateStrings)[self->_state];
        v39 = off_1EB2B43B8;
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        *v78 = 136315650;
        v79 = v38;
        v80 = 2080;
        v81 = v39;
        v82 = 2112;
        v83 = candidatePairToken3;
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
      switch(type)
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
            candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v78 = 138412290;
            v79 = candidatePairToken4;
            _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", v78, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.");

              if (_IDSShouldLog())
              {
                candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.");
              }
            }
          }

          v57 = StunUtilProcessParticipantUpdate(responseCopy, v77, 4087);
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
          if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
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
          var2 = buffer->var2;
          requestID2 = [responseCopy requestID];
          v52 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID2];

          v53 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v78 = 138412290;
            v79 = candidatePairToken7;
            _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", v78, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.");

              if (_IDSShouldLog())
              {
                candidatePairToken9 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.");
              }
            }
          }

          BYTE12(v74) = 0;
          *(&v74 + 4) = 2;
          LOWORD(v74) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v52 offlineRequest:var2 + overhead streamInfoRequest:v74 status:v75 commandFlag:? isIndication:?];
          break;
      }
    }

    v63 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:v84, v66, v73, v74];
    v58 = objc_loadWeakRetained(&self->_delegate);
    [v58 candidatePair:self didReceiveStunErrorResponse:type errorCode:v77 didLocalExternalAddressChange:v63];
    goto LABEL_75;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = type;
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

- (void)processSessionInfoRequestTimeout:(id)timeout
{
  BYTE12(v3) = 0;
  *(&v3 + 4) = 3;
  LOWORD(v3) = 0;
  [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:timeout] offlineRequest:0 streamInfoRequest:v3 status:? commandFlag:? isIndication:?];
}

- (void)_notifySessionStreamInfoReceived:(id)received withParticipants:(id)participants lightweightParticipants:(id)lightweightParticipants joinedParticipantInfo:(id)info leftParticipantInfo:(id)participantInfo updatedParticipantInfo:(id)updatedParticipantInfo sentBytes:(unint64_t)bytes receivedBytes:(unint64_t)self0 offlineRequest:(BOOL)self1 streamInfoRequest:(BOOL)self2 status:(unsigned int)self3 commandFlag:(unsigned int)self4 isIndication:(BOOL)self5
{
  value = received;
  participantsCopy = participants;
  lightweightParticipantsCopy = lightweightParticipants;
  infoCopy = info;
  participantInfoCopy = participantInfo;
  updatedParticipantInfoCopy = updatedParticipantInfo;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = v25;
  if (infoCopy)
  {
    CFDictionarySetValue(v25, @"gl-option-sessioninfo-response-joined-participant-info-key", infoCopy);
  }

  if (participantInfoCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-left-participant-info-key", participantInfoCopy);
  }

  if (updatedParticipantInfoCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-updated-participant-info-key", updatedParticipantInfoCopy);
  }

  if (value)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-streaminfo-key", value);
  }

  if (participantsCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-participants-key", participantsCopy);
  }

  if (lightweightParticipantsCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-lightweight-participants-key", lightweightParticipantsCopy);
  }

  if (bytes)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:bytes];
    if (v27)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-bytes-sent-key", v27);
    }
  }

  if (receivedBytes)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:receivedBytes];
    if (v28)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-bytes-received-key", v28);
    }
  }

  if (request)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v29)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-offline-request-key", v29);
    }
  }

  if (infoRequest)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-type", &unk_1F1B20348);
  }

  if (flag)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:flag];
    if (v30)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-command-flag", v30);
    }
  }

  if (indication)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v31)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-Indication", v31);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained candidatePair:self didReceiveSessionInfo:v26 status:status];
}

- (void)_notifyQREventAdded:(id)added
{
  addedCopy = added;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 candidatePair:self didAddQREvent:addedCopy];
  }
}

- (void)addProtoRequest:(unint64_t)request
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

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
    [(NSMutableSet *)v10 addObject:v11];

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      requestCopy = request;
      v15 = 2112;
      selfCopy = self;
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

- (BOOL)removeProtoRequest:(unint64_t)request
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

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if (v9)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
    [(NSMutableSet *)v10 removeObject:v11];

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      requestCopy = request;
      v16 = 2112;
      selfCopy = self;
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

- (void)_savePluginNameForProtoRequest:(unint64_t)request pluginName:(id)name
{
  nameCopy = name;
  pendingProtoRequests = self->_pendingProtoRequests;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  LODWORD(pendingProtoRequests) = [(NSMutableSet *)pendingProtoRequests containsObject:v7];

  if (pendingProtoRequests)
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    v10 = nameCopy;
    if (v10)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request], v10);
    }
  }
}

- (id)_pluginNameForProtoRequest:(unint64_t)request
{
  if (self->_pluginNameToStunReqID)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    if (v5)
    {
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
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

- (void)_removeProtoPluginRegistrationRequest:(unint64_t)request
{
  pluginNameToStunReqID = self->_pluginNameToStunReqID;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
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
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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

      transactionID = [(IDSQRProtoMessage *)v6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v12];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A7C8455C;
      v19[3] = &unk_1E77E2780;
      v20 = v12;
      v21 = transactionID;
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
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v24 = candidatePairToken3;
    v25 = 2080;
    v26 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v16 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v6 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].");
LABEL_22:
      }
    }
  }
}

- (BOOL)sendQUICChannelConfigRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
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
    v8 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v8 requestID:v10];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v23 = requestCopy;
      v24 = 2112;
      v25 = candidatePairToken;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "send ChannelConfig request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send ChannelConfig request %@ for %@, sentBytes: %lu");

        if (_IDSShouldLog())
        {
          v19 = [(IDSStunCandidatePair *)self candidatePairToken:requestCopy];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send ChannelConfig request %@ for %@, sentBytes: %lu");
        }
      }
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C84BFC;
    v21[3] = &unk_1E77E2758;
    v21[4] = self;
    v21[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v21, 10.0);
    goto LABEL_15;
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v15 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v23 = candidatePairToken3;
    v24 = 2080;
    v25 = v15;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "skip sendQUICChannelConfigRequest request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v20 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip sendQUICChannelConfigRequest request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v10 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip sendQUICChannelConfigRequest request for %@, state [%s].");
LABEL_15:
      }
    }
  }

  return v6 < 2;
}

- (void)sendQUICParticipantUpdateRequestWithOptions:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:7 candidatePair:self options:optionsCopy];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v12 = [optionsCopy objectForKeyedSubscript:@"gl-option-ids-client-context-identifier-key"];
      unsignedLongLongValue = [v12 unsignedLongLongValue];

      if (unsignedLongLongValue)
      {
        transactionIDToIdentifier = self->_transactionIDToIdentifier;
        if (!transactionIDToIdentifier)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v16 = self->_transactionIDToIdentifier;
          self->_transactionIDToIdentifier = Mutable;

          transactionIDToIdentifier = self->_transactionIDToIdentifier;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:transactionID];
        [(NSMutableDictionary *)transactionIDToIdentifier setObject:v17 forKey:v18];
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v19];
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v32 = v8;
        v33 = 2112;
        v34 = candidatePairToken;
        v35 = 2048;
        v36 = v10;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "send participant update request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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
      v29 = transactionID;
      v30 = 7;
      v28 = optionsCopy;
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
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v32 = candidatePairToken3;
    v33 = 2080;
    v34 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v24 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].");
LABEL_26:
      }
    }
  }
}

- (void)sendQUICPluginRegistrationRequestWithOptions:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state < 5)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:10 candidatePair:self options:optionsCopy];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v10 requestID:v12];
      Value = 0;
      if (optionsCopy && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
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
      if (optionsCopy && @"gl-option-plugin-name")
      {
        v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
      }

      v20 = [v19 stringWithFormat:@"%@.%@", v18, v17];
      [(IDSStunCandidatePair *)self _savePluginNameForProtoRequest:transactionID pluginName:v20];
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v31 = v8;
        v32 = 2112;
        v33 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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
      v28[5] = transactionID;
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
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v31 = candidatePairToken3;
    v32 = 2080;
    v33 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v25 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].");
LABEL_30:
      }
    }
  }
}

- (void)sendQUICSessionInfoRequestWithOptions:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:15 candidatePair:self options:optionsCopy];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)v8 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      Value = 0;
      if (optionsCopy && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-link-id-to-query");
      }

      intValue = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v18 = [MEMORY[0x1E696AD98] numberWithChar:intValue];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v18 forKey:v12];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v19;
      }

      if (optionsCopy)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v21 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
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
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v36 = v8;
        v37 = 2112;
        v38 = candidatePairToken;
        v39 = 2048;
        v40 = v10;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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
      v33 = transactionID;
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
    candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v36 = candidatePairToken3;
    v37 = 2080;
    v38 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v28 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].");
LABEL_33:
      }
    }
  }
}

- (void)sendQUICStatsRequestWithOptions:(id)options
{
  v52 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [[IDSQRProtoMessage alloc] initWithType:18 candidatePair:self options:optionsCopy];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v35 = [WeakRetained sendProtoMessage:v8 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)v8 transactionID];
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        linkID = self->_linkID;
        *buf = 134218240;
        v49 = transactionID;
        v50 = 1024;
        LODWORD(v51) = linkID;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send stats req %llx for link %d.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v29 = transactionID;
          v32 = self->_linkID;
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %llx for link %d.");
          if (_IDSShouldLog())
          {
            v29 = transactionID;
            v32 = self->_linkID;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send stats req %llx for link %d.");
          }
        }
      }

      [(IDSStunCandidatePair *)self addProtoRequest:transactionID, v29, v32];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
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
      if (optionsCopy && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"ids-extchannel-stat-identifier-key");
      }

      unsignedLongLongValue = [Value unsignedLongLongValue];
      v19 = 0;
      if (self->_requestIDToStatsIDs && v12)
      {
        v19 = CFDictionaryGetValue(self->_requestIDToStatsIDs, v12);
      }

      unsignedLongLongValue2 = [v19 unsignedLongLongValue];
      if (unsignedLongLongValue && unsignedLongLongValue != unsignedLongLongValue2)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          requestIDToStatsIDs = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        if (v23)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, v12, v23);
        }

        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v49 = unsignedLongLongValue;
          v50 = 2112;
          v51 = v12;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v31 = unsignedLongLongValue;
            v34 = v12;
            _IDSLogTransport(@"GL", @"IDS", @"sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.");
            if (_IDSShouldLog())
            {
              v31 = unsignedLongLongValue;
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
      v39 = transactionID;
      v40 = unsignedLongLongValue;
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
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v49 = candidatePairToken;
    v50 = 2080;
    v51 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v8 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
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

      transactionID = [(IDSQRProtoMessage *)v12 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v14 requestID:v16];
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testRequestedMessageType = self->_testRequestedMessageType;
        testRequestedErrorCode = self->_testRequestedErrorCode;
        testSubOperation = self->_testSubOperation;
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
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
        v44 = candidatePairToken;
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
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
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
      v36[5] = transactionID;
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
      candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
      v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      *buf = 138412546;
      *v38 = candidatePairToken3;
      *&v38[8] = 2080;
      v39 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].");

      if (_IDSShouldLog())
      {
        v32 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken4];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test request for %@, state [%s].");
      }
    }
  }
}

- (BOOL)processQUICInfoResponse:(id)response receivedBytes:(unint64_t)bytes
{
  v29 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    infoResponse = [responseCopy infoResponse];
    v10 = infoResponse;
    if (infoResponse)
    {
      clientAddress = [infoResponse clientAddress];
      v12 = clientAddress != 0;
      if (clientAddress)
      {
        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = clientAddress;
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
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          v28 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.");

            if (_IDSShouldLog())
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.");
            }
          }
        }

        v16 = ProtoUtilProcessActiveParticipantsFromInfo(v10);
        v17 = ProtoUtilProcessActiveLightweightParticipantsFromInfo(v10);
        BYTE4(v26) = 0;
        LODWORD(v26) = 0;
        LOWORD(v25) = 1;
        [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:v16 joinedParticipantInfo:v17 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:v8] offlineRequest:bytes streamInfoRequest:v25 status:v26 commandFlag:? isIndication:?];
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

- (BOOL)processQUICParticipantUpdateResponse:(id)response
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  transactionIDToIdentifier = self->_transactionIDToIdentifier;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:transactionID];
  v8 = [(NSMutableDictionary *)transactionIDToIdentifier objectForKey:v7];
  unsignedLongLongValue = [v8 unsignedLongLongValue];

  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    participantUpdateResponse = [responseCopy participantUpdateResponse];
    v11 = participantUpdateResponse != 0;
    if (participantUpdateResponse)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v23 = transactionID;
        v24 = 2112;
        v25 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive participant update response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v21 = v20 = transactionID;
          _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %llu for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:transactionID];
            v21 = v20 = transactionID;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %llu for %@.");
          }
        }
      }

      v14 = ProtoUtilProcessParticipantUpdate(participantUpdateResponse, 0, [responseCopy messageType]);
      v15 = [v14 mutableCopy];

      if (unsignedLongLongValue)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
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

- (BOOL)processQUICGetMaterialResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    getMaterialResponse = [responseCopy getMaterialResponse];
    v6 = getMaterialResponse != 0;
    if (getMaterialResponse)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceiveGetMaterialResponse:getMaterialResponse];
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

- (BOOL)processQUICPutMaterialResponse:(id)response
{
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    putMaterialResponse = [responseCopy putMaterialResponse];
    v7 = putMaterialResponse != 0;
    if (putMaterialResponse)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceivePutMaterialResponse:putMaterialResponse forTxId:transactionID];
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

- (BOOL)processQUICChannelConfigResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    channelConfigResponse = [responseCopy channelConfigResponse];
    v6 = channelConfigResponse != 0;
    if (!channelConfigResponse)
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

- (BOOL)processQUICCallModeUpdateResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    callModeUpdateResponse = [responseCopy callModeUpdateResponse];
    v6 = callModeUpdateResponse != 0;
    if (!callModeUpdateResponse)
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

- (BOOL)processQUICPluginRegistrationResponse:(id)response
{
  v29 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    pluginControlResponse = [responseCopy pluginControlResponse];
    v7 = pluginControlResponse != 0;
    if (pluginControlResponse)
    {
      v8 = [(IDSStunCandidatePair *)self _pluginNameForProtoRequest:transactionID];
      if (v8)
      {
        [(IDSStunCandidatePair *)self _removeProtoPluginRegistrationRequest:transactionID];
      }

      pathExtension = [v8 pathExtension];
      v10 = [pathExtension isEqualToString:@"Register"];
      if (v10 & 1) != 0 || ([pathExtension isEqualToString:@"Unregister"])
      {
        pluginParticipantId = [pluginControlResponse pluginParticipantId];
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v24 = candidatePairToken;
          v25 = 2048;
          v26 = pluginParticipantId;
          v27 = 2112;
          v28 = v8;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive plugin update for %@, with participant id: %llu, and name %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [(IDSStunCandidatePair *)self candidatePairToken];
            v21 = pluginParticipantId;
            v20 = v22 = v8;
            _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@");

            if (_IDSShouldLog())
            {
              [(IDSStunCandidatePair *)self candidatePairToken:v20];
              v21 = pluginParticipantId;
              v20 = v22 = v8;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@");
            }
          }
        }

        stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v16 = WeakRetained;
        if (v10)
        {
          [WeakRetained candidatePair:self didReceivePluginRegistration:pluginParticipantId pluginName:stringByDeletingPathExtension];
        }

        else
        {
          [WeakRetained candidatePair:self didReceivePluginUnregistration:pluginParticipantId pluginName:stringByDeletingPathExtension];
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

- (BOOL)processQUICSessionInfoResponse:(id)response receivedBytes:(unint64_t)bytes isLightweightParticipant:(BOOL)participant
{
  v41 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    sessionInfoResponse = [responseCopy sessionInfoResponse];
    v35 = sessionInfoResponse != 0;
    if (sessionInfoResponse)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v38 = transactionID;
        v39 = 2112;
        v40 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive session-info response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [(IDSStunCandidatePair *)self candidatePairToken];
          v30 = v29 = transactionID;
          _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %llu for %@.");

          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self candidatePairToken:transactionID];
            v30 = v29 = transactionID;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %llu for %@.");
          }
        }
      }

      Value = 0;
      if (self->_requestIDToQueryLinkIDs && key)
      {
        Value = CFDictionaryGetValue(self->_requestIDToQueryLinkIDs, key);
      }

      v13 = ProtoUtilProcessStreamInfo(sessionInfoResponse, self->_linkID, [Value intValue]);
      v14 = 0;
      if (v13 && @"stream-info-peer-published-streams")
      {
        v14 = CFDictionaryGetValue(v13, @"stream-info-peer-published-streams");
      }

      v15 = StunUtilProcessParticipants(v14, self->_participantID, participant);
      v16 = ProtoUtilProcessLightweightParticipants(sessionInfoResponse);
      leftParticipants = [sessionInfoResponse leftParticipants];
      v33 = ProtoUtilProcessLeftParticipants(leftParticipants, v15, v16);

      joinedParticipants = [sessionInfoResponse joinedParticipants];
      v19 = ProtoUtilProcessjoinedParticipants(joinedParticipants, v15, v16);

      updatedParticipants = [sessionInfoResponse updatedParticipants];
      v21 = ProtoUtilProcessUpdatedParticipants(updatedParticipants, v15, v16);

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

      intValue = [v24 intValue];
      hasCommandFlags = [sessionInfoResponse hasCommandFlags];
      if (hasCommandFlags)
      {
        hasCommandFlags = [sessionInfoResponse commandFlags];
      }

      BYTE4(v32) = 0;
      LODWORD(v32) = hasCommandFlags;
      BYTE1(v31) = intValue == 2;
      LOBYTE(v31) = 0;
      [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v13 lightweightParticipants:v15 joinedParticipantInfo:v16 leftParticipantInfo:v19 updatedParticipantInfo:v33 sentBytes:v21 receivedBytes:v22 offlineRequest:bytes streamInfoRequest:v31 status:v32 commandFlag:? isIndication:?];
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

- (BOOL)processQUICStatsResponse:(id)response arrivalTime:(double)time
{
  v56 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    statsResponse = [responseCopy statsResponse];
    v9 = statsResponse;
    v42 = statsResponse != 0;
    if (statsResponse)
    {
      clientTimestampNtp = [statsResponse clientTimestampNtp];
      v11 = ntpTime32(time);
      v12 = vcvtd_n_f64_u32((v11 - clientTimestampNtp), 0x10uLL) + ((v11 - clientTimestampNtp) >> 16);
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
        v49 = transactionID;
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

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID, v37, v39, v40];
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
              unsignedLongLongValue = [v25 unsignedLongLongValue];
              v32 = self->_linkID;
              *buf = 134218496;
              v49 = unsignedLongLongValue;
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
                unsignedLongLongValue2 = [v25 unsignedLongLongValue];
                v38 = self->_linkID;
                v36 = unsignedLongLongValue2;
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

- (BOOL)processQUICTestResponse:(id)response arrivalTime:(double)time
{
  v13 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v12 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.");

        if (_IDSShouldLog())
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive test response for %@.");
        }
      }
    }
  }

  return 1;
}

- (BOOL)processQUICParticipantUpdateIndication:(id)indication
{
  v20 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  participantUpdateIndication = [indicationCopy participantUpdateIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [participantUpdateIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v17 = txnId;
    v18 = 2112;
    v19 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive participant update indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [participantUpdateIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [participantUpdateIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication(%llu) for %@.");
      }
    }
  }

  if (participantUpdateIndication)
  {
    v10 = ProtoUtilProcessParticipantUpdate(participantUpdateIndication, 0, [indicationCopy messageType]);
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

  return participantUpdateIndication != 0;
}

- (BOOL)processQUICPluginControlIndication:(id)indication
{
  v26 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  pluginControlIndication = [indicationCopy pluginControlIndication];
  v6 = pluginControlIndication;
  if (pluginControlIndication)
  {
    pluginParticipantId = [pluginControlIndication pluginParticipantId];
    pluginOperation = [v6 pluginOperation];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      txnId = [v6 txnId];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v19 = txnId;
      v20 = 2112;
      v21 = candidatePairToken;
      v22 = 2048;
      v23 = pluginParticipantId;
      v24 = 1024;
      v25 = pluginOperation;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive plugin event(%llu) for %@, with participant id: %llu, operation %u", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        txnId2 = [v6 txnId];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u");

        if (_IDSShouldLog())
        {
          [v6 txnId];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u");
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:pluginParticipantId operation:pluginOperation transactionID:0];
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

- (BOOL)processQUICSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant
{
  v33 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  sessionInfoIndication = [indicationCopy sessionInfoIndication];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [sessionInfoIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v30 = txnId;
    v31 = 2112;
    v32 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [sessionInfoIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [sessionInfoIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication(%llu) for %@.");
      }
    }
  }

  if (sessionInfoIndication)
  {
    v13 = ProtoUtilProcessStreamInfo(sessionInfoIndication, self->_linkID, self->_linkID);
    Value = 0;
    if (v13 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v13, @"stream-info-peer-published-streams");
    }

    v15 = StunUtilProcessParticipants(Value, self->_participantID, participant);
    v16 = ProtoUtilProcessLightweightParticipants(sessionInfoIndication);
    leftParticipants = [sessionInfoIndication leftParticipants];
    v18 = ProtoUtilProcessLeftParticipants(leftParticipants, v15, v16);

    joinedParticipants = [sessionInfoIndication joinedParticipants];
    v20 = ProtoUtilProcessjoinedParticipants(joinedParticipants, v15, v16);

    updatedParticipants = [sessionInfoIndication updatedParticipants];
    v22 = ProtoUtilProcessUpdatedParticipants(updatedParticipants, v15, v16);

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

  return sessionInfoIndication != 0;
}

- (BOOL)processQUICPutMaterialIndication:(id)indication
{
  v19 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  putMaterialIndication = [indicationCopy putMaterialIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [putMaterialIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v16 = txnId;
    v17 = 2112;
    v18 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive put material indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [putMaterialIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive put material indication(%llu) for %@.");

      if (_IDSShouldLog())
      {
        [putMaterialIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive put material indication(%llu) for %@.");
      }
    }
  }

  if (putMaterialIndication)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePutMaterialIndication:putMaterialIndication];
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

  return putMaterialIndication != 0;
}

- (BOOL)processQUICErrorIndication:(id)indication
{
  v57 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  errorIndication = [indicationCopy errorIndication];
  v6 = errorIndication;
  if (errorIndication)
  {
    errorCode = [errorIndication errorCode];
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      txnId = [v6 txnId];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      errorReason = [v6 errorReason];
      channelId = [v6 channelId];
      clientAddress = [v6 clientAddress];
      *buf = 134219266;
      v46 = txnId;
      v47 = 2112;
      v48 = candidatePairToken;
      v49 = 1024;
      v50 = errorCode;
      v51 = 2112;
      v52 = errorReason;
      v53 = 1024;
      v54 = channelId;
      v55 = 2112;
      v56 = clientAddress;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)", buf, 0x36u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        txnId2 = [v6 txnId];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        errorReason2 = [v6 errorReason];
        channelId2 = [v6 channelId];
        clientAddress2 = [v6 clientAddress];
        _IDSLogTransport(@"GL", @"IDS", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)");

        if (_IDSShouldLog())
        {
          [v6 txnId];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          errorReason3 = [v6 errorReason];
          [v6 channelId];
          clientAddress3 = [v6 clientAddress];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)");
        }
      }
    }

    if (errorCode <= 0x261u)
    {
      if (errorCode == 603)
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

      if (errorCode == 608)
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
      switch(errorCode)
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
      LODWORD(v46) = errorCode;
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

- (BOOL)processQUICErrorResponse:(id)response packetBuffer:(id *)buffer startTime:(double)time headerOverhead:(unint64_t)overhead
{
  v69 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  var31 = buffer->var31;
  var31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", var31];
  var35_low = LOWORD(buffer->var35);
  var34 = buffer->var34;
  isRealloc = [(IDSStunCandidatePair *)self isRealloc];
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

  if (isRealloc)
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
        *&v67[2] = (v21 - time) * 1000.0;
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
          *&v62 = (v23 - time) * 1000.0;
          candidatePairToken6 = var34;
          v61 = var35_low;
          _IDSLogTransport(@"GL", @"IDS", @"receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.");
          if (_IDSShouldLog())
          {
            v24 = ids_monotonic_time();
            *(&v62 + 1) = [(IDSStunCandidate *)self->_local address:var34][1];
            *&v62 = (v24 - time) * 1000.0;
            candidatePairToken6 = var34;
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
          var2 = buffer->var2;
          v35 = [(IDSStunCandidatePair *)self getStunSentBytes:var31];
          v36 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412290;
            *v66 = candidatePairToken;
            _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.");

              if (_IDSShouldLog())
              {
                candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.");
              }
            }
          }

          BYTE12(v62) = 0;
          *(&v62 + 4) = 2;
          LOWORD(v62) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v35 offlineRequest:var2 + overhead streamInfoRequest:v62 status:? commandFlag:? isIndication:?];
        }
      }

      else if (var34 == 1)
      {
        v38 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = (&_IDSStunCandidatePairStateStrings)[self->_state];
          v40 = off_1EB2B43B8;
          candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 136315650;
          *v66 = v39;
          *&v66[8] = 2080;
          *v67 = v40;
          *&v67[8] = 2112;
          v68 = candidatePairToken4;
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
            candidatePairToken6 = v42;
            _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.");

            if (_IDSShouldLog())
            {
              v44 = (&_IDSStunCandidatePairStateStrings)[self->_state];
              v45 = off_1EB2B43B8;
              [(IDSStunCandidatePair *)self candidatePairToken:v42];
              *&v62 = v61 = v45;
              candidatePairToken6 = v44;
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
            v61 = candidatePairToken6 = v49;
            _IDSLogTransport(@"GL", @"IDS", @"failed participant:[%16llX], token:[%@]");

            if (_IDSShouldLog())
            {
              v50 = self->_participantID;
              [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0, candidatePairToken6, v61];
              v61 = candidatePairToken6 = v50;
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
          candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          *v66 = candidatePairToken5;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.");

            if (_IDSShouldLog())
            {
              candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.");
            }
          }
        }

        participantUpdateResponse = [responseCopy participantUpdateResponse];
        v30 = participantUpdateResponse;
        if (participantUpdateResponse)
        {
          v31 = ProtoUtilProcessParticipantUpdate(participantUpdateResponse, var35_low, 7);
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

      v51 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:&buffer->var20, candidatePairToken6, v61, v62];
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
      candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      *v66 = candidatePairToken7;
      *&v66[8] = 1024;
      *v67 = var34;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.");

        if (_IDSShouldLog())
        {
          v64 = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken8];
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairExpensive:selfCopy];

  return selfCopy;
}

- (BOOL)isConstrained
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairConstrained:selfCopy];

  return selfCopy;
}

- (BOOL)isDelegated
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairDelegated:selfCopy];

  return selfCopy;
}

- (void)receiveLinkTestStatsPacket:(id)packet
{
  v16 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
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

        [*(*(&v10 + 1) + 8 * v9++) didReceiveStatsTestPacketWithPayload:packetCopy linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v10), &unk_1F1AAB9A0}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)sendLinkTestStatsPacket:(id)packet
{
  v21 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
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
          linkID = [(IDSStunCandidatePair *)self linkID];
          _IDSLogTransport(@"GL", @"IDS", @"send relay test packet on link %u");
          if (_IDSShouldLog())
          {
            [(IDSStunCandidatePair *)self linkID];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send relay test packet on link %u");
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendTestPacketChannelDataMessage:packetCopy candidatePair:self];
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

        linkID2 = [(IDSStunCandidatePair *)self linkID];
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
      [WeakRetained sendTestPacketCommandMessage:packetCopy candidatePair:self];
    }

    goto LABEL_35;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v18 = candidatePairToken;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test stats packet for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      v15 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      _IDSLogTransport(@"GL", @"IDS", @"skip test stats packet for %@, state [%s].");

      if (_IDSShouldLog())
      {
        WeakRetained = [(IDSStunCandidatePair *)self candidatePairToken:candidatePairToken2];
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
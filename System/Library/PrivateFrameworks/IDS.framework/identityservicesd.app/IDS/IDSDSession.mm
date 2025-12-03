@interface IDSDSession
- (BOOL)_checkAndSendCachedDataForClient:(id)client;
- (BOOL)_shouldEnableCellularSlicingAfterDiceRoll;
- (BOOL)_shouldSubmitMetricsBasedOnDate:(id)date isInitiator:(BOOL)initiator;
- (BOOL)_shouldSubmitMetricsForThisSession;
- (BOOL)_shouldUseIPsecLink;
- (BOOL)_useBTDatagramPipe;
- (BOOL)destinationsContainFromURI:(id)i;
- (BOOL)didProcessParticipantUpdateFrom:(id)from dedupTimestamp:(double)timestamp;
- (BOOL)enableQuickRelay;
- (BOOL)isInitiator;
- (BOOL)isScreenSharingSession;
- (BOOL)isWithDefaultPairedDevice;
- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (BOOL)shouldAllocateForInvitee;
- (BOOL)shouldReportToClient:(id)client timeStamp:(double)stamp type:(unint64_t)type overPush:(BOOL)push;
- (IDSDGroupStatusNotificationController)groupStatusNotificationController;
- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options;
- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options availabilityCheck:(id)check;
- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options availabilityCheck:(id)check accountController:(id)controller utunController:(id)utunController;
- (IDSGlobalLinkProtocol)onTransportThread_globalLink;
- (NSArray)requiredCapabilities;
- (NSArray)requiredLackOfCapabilities;
- (NSSet)destinations;
- (NSString)description;
- (char)keyMaterial;
- (double)_serverSpecifiedJoinNotificationDeliveryTimeout;
- (id)_acceptedDeviceToken;
- (id)_acceptedDeviceUniqueID;
- (id)_breakDictionaryIntoMultipleChunks:(id)chunks chunkSize:(int)size;
- (id)_checkIfPushMessageSizeGreaterThanMaxLimit:(id)limit maxLimit:(unint64_t)maxLimit;
- (id)_createGroupSessionActiveParticipantsFromParticipants:(id)participants pushTokenForParticipants:(id)forParticipants;
- (id)_createOneWayParticipantDictionaryFromMappedParticipantsDict:(id)dict;
- (id)_createStreamSubscriptionRequest:(id)request;
- (id)_extractFieldBytesFromMetadata:(const void *)metadata ofSize:(unsigned int)size packetBuffer:(id *)buffer;
- (id)_generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:(id)blob;
- (id)_generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:(id)blob timeStamp:(double)stamp;
- (id)_getNewLinkOptionsForActiveParticipantInfoRequest;
- (id)_getParticipantIDFromPushToken:(id)token;
- (id)_getPushTokenFromParticipantID:(unint64_t)d;
- (id)_getPushTokenFromParticipantIDNumber:(id)number;
- (id)_getPushTokensFromParticipantIDArray:(id)array useNullPlaceholder:(BOOL)placeholder;
- (id)_getURIFromParticipantIDNumber:(id)number;
- (id)_socketOptionsForDevice:(id)device uniqueID:(id)d pushToken:(id)token connectionSuffix:(id)suffix;
- (id)accountID;
- (id)buildRTCSummaryReport;
- (id)connectDuration;
- (id)destinationsLightweightStatus;
- (id)formAndEncryptDataBlob:(id)blob type:(int)type;
- (id)fromURI;
- (id)getAppID;
- (id)getCallerCert;
- (id)getCellularNetworkInfo:(id)info;
- (id)getDesiredMaterialSetForEncryptedData;
- (id)getEncryptedDataBlob;
- (id)getEncryptedMirageHandshakeBlob;
- (id)getFromService;
- (id)getLinkIDToLocalRemoteEndpointPairDictionary;
- (id)groupID;
- (id)participantID;
- (id)prepareSessionInfoForGlobalLink:(id)link;
- (id)rtcNormalizeTime:(double)time;
- (id)serverDesiredKeyMaterials;
- (id)sessionDuration;
- (id)uniqueID;
- (int64_t)_loggingFlags;
- (int64_t)clientType;
- (unint64_t)_getExperimentGroupThresholdForCellularSlicing;
- (unint64_t)connectionCountHint;
- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt;
- (unsigned)globalLinkErrorToSessionEndReason:(int64_t)reason;
- (unsigned)state;
- (void)InvalidateStableKeyMaterialInFrameworkCache:(id)cache;
- (void)_broadcastSessionStartWithSocket:(int)socket;
- (void)_buildCellularNetworkInfoSessionEvent:(id *)event;
- (void)_checkAndRunClientChannelTests:(id)tests;
- (void)_checkAndUnassertRealTimeMode;
- (void)_cleanupQuickRelaySession;
- (void)_cleanupSessionConnection;
- (void)_cleanupSocketPairConnection;
- (void)_closeSocketToDevice:(id)device;
- (void)_connectQRDirectlyToClientChannel:(id)channel;
- (void)_connectSocketDescriptor:(int)descriptor toClientChannel:(id)channel;
- (void)_decryptReceivedDataBlobsUsingSKMs;
- (void)_endSession;
- (void)_finishPacketLog;
- (void)_generateKeys:(id)keys;
- (void)_invalidateClientChannel:(id)channel;
- (void)_lightweightParticipantSync:(unsigned __int8)sync;
- (void)_noteJoinNotificationDidDeliverWithSuccess:(BOOL)success;
- (void)_noteJoinNotificationWillSend;
- (void)_notifyClientsSessionStopped;
- (void)_processParticipantInfo:(id)info type:(unint64_t)type;
- (void)_receivedReinitiateBringupAckMessage:(id)message fromURI:(id)i;
- (void)_receivedReinitiateBringupMessage:(id)message fromURI:(id)i;
- (void)_receivedReinitiateRequestMessage:(id)message fromURI:(id)i;
- (void)_receivedReinitiateTeardownAckMessage:(id)message fromURI:(id)i;
- (void)_receivedReinitiateTeardownMessage:(id)message fromURI:(id)i;
- (void)_reportRTC;
- (void)_resetPreferences:(id)preferences;
- (void)_sendClientDecryptedDatabBlobs:(id)blobs type:(int)type forParticipant:(id)participant;
- (void)_sendLinkSelectionPreference:(id)preference linkScore:(id)score ipPreference:(id)ipPreference uplinkNackDisabled:(id)disabled;
- (void)_sendPMTUChangeToClient:(unsigned __int16)client forLinkID:(char)d;
- (void)_sendParticipantMappingUpdateToClient:(id)client forLinkID:(char)d shouldReplace:(BOOL)replace;
- (void)_sendQREventToAVC:(id)c;
- (void)_sendRemoteParticipantJoinInfoEventToClient:(id)client forParticipant:(id)participant;
- (void)_sendRemoteParticipantLeaveInfoEventToClient:(id)client forParticipant:(id)participant;
- (void)_sendRemoteParticipantUpdateInfoEventToClient:(id)client forParticipant:(id)participant;
- (void)_sendSessionEndWithData:(id)data;
- (void)_sendSessionInfoResponseErrorToClient:(unsigned int)client;
- (void)_sendStreamSubscriptionRequest:(id)request;
- (void)_sendingOfflineActiveParticipantInfoRequest:(id)request;
- (void)_sessionStartWithSocketDescriptor:(int)descriptor;
- (void)_setClientType:(int64_t)type;
- (void)_setInitialLinkType:(unint64_t)type;
- (void)_setLinkProtocol:(id)protocol;
- (void)_startReinitiateAsInitiator;
- (void)_updateActiveLightweightParticipants:(id)participants;
- (void)_updateActiveParticipants:(id)participants;
- (void)acceptInvitation;
- (void)acceptInvitationWithData:(id)data;
- (void)addQREventForRTCReport:(id)report;
- (void)cancelInvitation;
- (void)cancelInvitationWithData:(id)data;
- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)override;
- (void)checkAndCallSessionStart;
- (void)cleanupSessionWithCleanStatus:(BOOL)status;
- (void)connectQRServer:(id)server withPreferredLocalInterface:(int)interface;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didStart:(BOOL)start error:(id)error;
- (void)connection:(id)connection receivedData:(id)data;
- (void)connectionDidStop:(id)stop error:(id)error;
- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt;
- (void)dealloc;
- (void)declineInvitation;
- (void)declineInvitationWithData:(id)data;
- (void)declineInvitationWithData:(id)data forceFromURI:(id)i additionalMessageAttributes:(id)attributes;
- (void)didCreateMKM:(id)m;
- (void)didReceiveBlockedIndicationForLink:(id)link reason:(unsigned int)reason;
- (void)didReceiveCurrentCellularSignalRaw:(int)raw signalStrength:(int)strength signalGrade:(int)grade;
- (void)didSendKeyMaterial:(id)material duration:(double)duration;
- (void)didSessionReinitiated;
- (void)enableP2Plinks;
- (void)endSession;
- (void)endSessionWithData:(id)data;
- (void)endSessionWithReason:(unsigned int)reason;
- (void)getActiveParticipants:(id)participants pushTokenForParticipants:(id)forParticipants isLightweightParticipant:(BOOL)participant;
- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt;
- (void)handleAVConferenceError:(id)error;
- (void)hasOutdatedSKI:(id)i;
- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes;
- (void)invitationDeclined;
- (void)joinWithOptions:(id)options messageContext:(id)context;
- (void)leaveGroupSession:(id)session options:(id)options;
- (void)link:(id)link didAddQREvent:(id)event;
- (void)link:(id)link didCellularMTUChange:(unsigned __int16)change;
- (void)link:(id)link didCellularNWPathFlagsChanged:(unsigned __int16)changed;
- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link didConnectUnderlyingLink:(char)underlyingLink linkUUID:(id)d localAttributes:(id)attributes remoteAttributes:(id)remoteAttributes;
- (void)link:(id)link didDefaultUnderlyingLinkChangeSucceeded:(BOOL)succeeded currentDefaultLinkID:(char)d;
- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link didDisconnectUnderlyingLinkID:(char)d linkUUID:(id)iD reason:(unsigned __int8)reason;
- (void)link:(id)link didFinishConvergenceForRelaySessionID:(id)d;
- (void)link:(id)link didGetLinkProbingStatus:(id)status;
- (void)link:(id)link didRATChange:(unsigned __int8)change;
- (void)link:(id)link didReceiveChildConnections:(id)connections forLinkID:(char)d;
- (void)link:(id)link didReceiveDebugDataForClient:(id)client dataType:(unsigned __int8)type;
- (void)link:(id)link didReceiveEncryptedDataBlobs:(id)blobs;
- (void)link:(id)link didReceiveEncryptionInformation:(id)information;
- (void)link:(id)link didReceiveErrorIndicationWithCode:(unsigned int)code;
- (void)link:(id)link didReceiveKeyMaterialMessageData:(id)data fromParticipantIDs:(id)ds toParticipantID:(id)d;
- (void)link:(id)link didReceiveMappedParticipantsDict:(id)dict forLinkID:(char)d;
- (void)link:(id)link didReceiveMaterialInfo:(id)info material:(id)material;
- (void)link:(id)link didReceiveMembershipChangedInformation:(unsigned __int8)information;
- (void)link:(id)link didReceiveParticipantUpdate:(id)update status:(unsigned __int16)status;
- (void)link:(id)link didReceivePluginDisconnect:(id)disconnect;
- (void)link:(id)link didReceivePluginRegistration:(unint64_t)registration pluginName:(id)name;
- (void)link:(id)link didReceivePluginUnregistration:(unint64_t)unregistration pluginName:(id)name;
- (void)link:(id)link didReceiveReliableUnicastServerMaterial:(id)material;
- (void)link:(id)link didReceiveReportEvent:(id)event;
- (void)link:(id)link didReceiveRequestToPurgeRegistration:(id)registration;
- (void)link:(id)link didReceiveSKEData:(id)data;
- (void)link:(id)link didReceiveSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD status:(unsigned int)status;
- (void)link:(id)link didReceiveSessionStateCounter:(unsigned int)counter;
- (void)link:(id)link didReceiveSessionStats:(id)stats relayGroupID:(id)d relaySessionID:(id)iD success:(BOOL)success;
- (void)link:(id)link didSoMaskChange:(unsigned int)change;
- (void)link:(id)link didWiFiNWPathFlagsChanged:(unsigned __int16)changed;
- (void)link:(id)link pathMTUDidChange:(unsigned __int16)change forLinkID:(char)d;
- (void)link:(id)link reportNoSessionState:(id)state;
- (void)manageDesignatedMembers:(id)members withType:(unsigned __int16)type;
- (void)mapMKIFromMaterial:(id)material token:(id)token;
- (void)materialInfoError:(id)error;
- (void)onParticipantID2PushTokenMappingChange:(id)change;
- (void)onURI2ParticipantIDMappingChange:(id)change allocateResponse:(id)response;
- (void)openSocketToDevice:(id)device;
- (void)openSocketWithOptionsCallback:(int)callback linkType:(unint64_t)type newConnection:(id)connection error:(id)error forIndex:(int)index priority:(int64_t)priority;
- (void)processAllocationErrorStatus:(int)status errorCode:(int)code;
- (void)qrAllocatorDidReceiveAllocateResponse:(id)response;
- (void)receiveAndDecryptEncryptedDataBlobs:(id)blobs;
- (void)receiveJoinNotificationFromAParticipant;
- (void)receivedAcceptMessage:(id)message fromURI:(id)i;
- (void)receivedCancelMessage:(id)message fromURI:(id)i;
- (void)receivedDeclineMessage:(id)message fromURI:(id)i;
- (void)receivedEndMessage:(id)message fromURI:(id)i;
- (void)receivedReinitiateMessage:(id)message fromURI:(id)i;
- (void)receivedSessionMessage:(id)message fromURI:(id)i;
- (void)reconnectSession;
- (void)recvKeyMaterial:(id)material;
- (void)recvMembershipChangeEventWithReason:(unsigned __int8)reason completionHandler:(id)handler;
- (void)recvStableKeyMaterialForFrameworkCache:(id)cache;
- (void)registerClientChannel;
- (void)registerMultiplexerTransport;
- (void)registerPluginWithOptions:(id)options messageContext:(id)context;
- (void)reinitiate;
- (void)rejectedKeyRecoveryRequestFromURI:(id)i reason:(unsigned int)reason;
- (void)removeParticipantIDs:(id)ds;
- (void)reportFirstMKMReceivedFromPush:(double)push;
- (void)reportMKMReceivedOverPushFromToken:(id)token material:(id)material;
- (void)reportMKMReceivedOverPushViaCacheForParticipantID:(unint64_t)d material:(id)material;
- (void)reportMKMReceivedOverQRFromToken:(id)token material:(id)material;
- (void)reportParticipantUpdateEventFor:(id)for type:(unint64_t)type overPush:(BOOL)push;
- (void)reportPreKeyReceivedOverPushFromToken:(id)token;
- (void)reportSendRatchetedMKMToAVCForParticipantID:(unint64_t)d mki:(id)mki;
- (void)requestEncryptionKeyForParticipantIDs:(id)ds;
- (void)requestKeyValueDeliveryDataForKey:(unsigned int)key participantID:(unint64_t)d;
- (void)requestMaterialsForParticipantIDs:(id)ds materialType:(int)type;
- (void)requestSessionInfoWithOptions:(id)options;
- (void)requestURIsForParticipantIDs:(id)ds withRequestID:(id)d;
- (void)runConnectivityCheckWithCompletionBlock:(id)block;
- (void)sendAllocationRequest:(id)request;
- (void)sendCancelInvitationMessage;
- (void)sendInvitationWithData:(id)data declineOnError:(BOOL)error;
- (void)sendInvitationWithOptions:(id)options declineOnError:(BOOL)error;
- (void)sendKeyMaterialMessage:(id)message toDestination:(id)destination;
- (void)sendKeyMaterialMessageDataOverQR:(id)r toDestination:(id)destination completionBlock:(id)block;
- (void)sendSessionMessage:(id)message toDestinations:(id)destinations;
- (void)setAcceptedRelaySession:(id)session;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate;
- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate;
- (void)setGroupStreamInfo:(id)info sessionInfo:(id)sessionInfo;
- (void)setHasPendingAllocation:(BOOL)allocation forIDSSession:(id)session;
- (void)setInviteTimeout:(int64_t)timeout;
- (void)setLinkSelectionStrategyWithData:(id)data;
- (void)setMuted:(BOOL)muted;
- (void)setParticipantIDToURI:(id)i participantID:(id)d;
- (void)setPreferences:(id)preferences;
- (void)setQuickRelaySessionToken:(id)token;
- (void)setQuickRelayUserTypeForSession:(unsigned __int16)session;
- (void)setRemoteBlob:(id)blob;
- (void)setRemoteUseCloudPairedControlChannel:(id)channel;
- (void)setRemoteUsePhoneContinuityLocalMessage:(id)message;
- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)setSSRCRecv:(unsigned int)recv;
- (void)setSeqRecvStart:(unsigned int)start;
- (void)startListeningOnClientSocket:(int)socket isRawSocket:(BOOL)rawSocket;
- (void)submitAWDMetricsForIDSSessionAcceptReceived;
- (void)submitAWDMetricsForIDSSessionAcceptSent;
- (void)submitAWDMetricsForIDSSessionCancelReceived;
- (void)submitAWDMetricsForIDSSessionCancelSentWithRemoteEndReason:(unsigned int)reason numberOfRecipients:(id)recipients;
- (void)submitAWDMetricsForIDSSessionCompleted;
- (void)submitAWDMetricsForIDSSessionConnected;
- (void)submitAWDMetricsForIDSSessionDeclineReceived;
- (void)submitAWDMetricsForIDSSessionDeclineSent;
- (void)submitAWDMetricsForIDSSessionInvitationReceived;
- (void)submitAWDMetricsForIDSSessionInvitationSentWithNumberOfRecipients:(id)recipients;
- (void)submitAWDMetricsForIDSSessionReinitiateConnected;
- (void)submitAWDMetricsForIDSSessionReinitiateRequested;
- (void)submitAWDMetricsForIDSSessionReinitiateStarted;
- (void)submitAWDMetricsForIDSSessionStarted;
- (void)submitAWDMetricsForIDSSessionWithEndReason:(unsigned int)reason;
- (void)terminateCallDueToIdleClientForLink:(id)link;
- (void)unregisterClientChannel;
- (void)unregisterPluginWithOptions:(id)options messageContext:(id)context;
- (void)updateMembers:(id)members withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally lightweightStatusDict:(id)dict;
- (void)updateParticipantData:(id)data withContext:(id)context;
- (void)updateParticipantInfo:(id)info;
- (void)updateParticipantType:(unsigned __int16)type members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict;
- (void)updateParticipantType:(unsigned __int16)type members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict timestamp:(double)timestamp identifier:(unint64_t)identifier;
- (void)updateRelevantEncryptedDataBlob;
- (void)updateServerDesiredKeyValueDeliveryMaterialsNeeded;
- (void)writeToClientChannel:(id)channel packetBuffer:(id *)buffer metaData:(const char *)data metadataSize:(unsigned int)size;
@end

@implementation IDSDSession

- (int64_t)_loggingFlags
{
  sharedState = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState isScreenSharingSession];

  if (isScreenSharingSession)
  {
    return 8703;
  }

  else
  {
    return 511;
  }
}

- (void)_generateKeys:(id)keys
{
  keysCopy = keys;
  v5 = +[IDSGroupEncryptionController sharedInstance];
  v6 = [v5 createRealTimeEncryptionFullIdentityForDevice:keysCopy completionBlock:0];

  v7 = +[IDSGroupEncryptionController sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  v12 = [v7 stableKeyMaterialForGroup:groupID sessionID:uniqueID];

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    groupID2 = [sharedState3 groupID];
    sharedState4 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState4 uniqueID];
    *buf = 138412802;
    v39 = groupID2;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = uniqueID2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ has valid SKM: %@ for sessionID: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState5 = [(IDSDSession *)self sharedState];
      groupID3 = [sharedState5 groupID];
      sharedState6 = [(IDSDSession *)self sharedState];
      [sharedState6 uniqueID];
      v37 = v36 = v12;
      v35 = groupID3;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v21 = [(IDSDSession *)self sharedState:groupID3];
        groupID4 = [v21 groupID];
        sharedState7 = [(IDSDSession *)self sharedState];
        [sharedState7 uniqueID];
        v37 = v36 = v12;
        v35 = groupID4;
        _IDSLogV();
      }
    }
  }

  v24 = [(IDSDSession *)self sharedState:v35];
  uniqueID3 = [v24 uniqueID];

  v26 = [uniqueID3 stringByAppendingString:@"datablob-context"];
  v27 = v26;
  uTF8String = [v26 UTF8String];

  v29 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String)];
  os_unfair_lock_lock(&self->_lock);
  v30 = [[IDSGroupEncryptionKeyManager alloc] initWithEncryptionContext:v29 encryptionKeySize:32];
  dataBlobEncryptionManager = self->_dataBlobEncryptionManager;
  self->_dataBlobEncryptionManager = v30;

  v32 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SKM: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (v12)
  {
    [(IDSGroupEncryptionKeyManager *)self->_dataBlobEncryptionManager recvKeyMaterial:v12];
    v33 = [[IDSGroupSessionDataCryptor alloc] initWithTopic:@"dataBlobEncryption" keyManager:self->_dataBlobEncryptionManager];
    cryptorForBlobs = self->_cryptorForBlobs;
    self->_cryptorForBlobs = v33;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options
{
  optionsCopy = options;
  destinationsCopy = destinations;
  accountCopy = account;
  v11 = objc_alloc_init(IDSDSessionDefaultAvailabilityCheck);
  v12 = [(IDSDSession *)self initWithAccount:accountCopy destinations:destinationsCopy options:optionsCopy availabilityCheck:v11];

  return v12;
}

- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options availabilityCheck:(id)check
{
  checkCopy = check;
  optionsCopy = options;
  destinationsCopy = destinations;
  accountCopy = account;
  v14 = +[IDSDAccountController sharedInstance];
  v15 = +[IDSUTunController sharedInstance];
  v16 = [(IDSDSession *)self initWithAccount:accountCopy destinations:destinationsCopy options:optionsCopy availabilityCheck:checkCopy accountController:v14 utunController:v15];

  return v16;
}

- (IDSDSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options availabilityCheck:(id)check accountController:(id)controller utunController:(id)utunController
{
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  checkCopy = check;
  controllerCopy = controller;
  utunControllerCopy = utunController;
  v413.receiver = self;
  v413.super_class = IDSDSession;
  v14 = [(IDSDSession *)&v413 init];

  if (!v14)
  {
    goto LABEL_289;
  }

  v384 = [optionsCopy objectForKey:IDSSessionUniqueIDKey];
  v377 = [optionsCopy objectForKey:IDSSessionTransportTypeKey];
  v381 = [optionsCopy objectForKey:IDSSessionConnectionCountHintKey];
  v15 = [optionsCopy objectForKey:IDSSessionInstanceIDKey];
  instanceID = v14->_instanceID;
  v14->_instanceID = v15;

  v17 = IDSSessionIsInitiatorKey;
  v18 = [optionsCopy objectForKey:IDSSessionIsInitiatorKey];
  if (v18)
  {
    v19 = [optionsCopy objectForKey:v17];
    bOOLValue = [v19 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  objc_storeStrong(&v14->_accountController, controller);
  objc_storeStrong(&v14->_utunController, utunController);
  v378 = [controllerCopy accountWithUniqueID:accountCopy];
  service = [v378 service];
  identifier = [service identifier];
  v20 = +[IDSQuickRelayAllocator sharedInstance];
  qrAllocator = v14->_qrAllocator;
  v14->_qrAllocator = v20;

  v22 = [IDSDSessionSharedState alloc];
  displayName = [service displayName];
  v24 = [(IDSDSessionSharedState *)v22 initWithDictionary:optionsCopy serviceName:displayName isInitiator:bOOLValue uniqueID:v384 accountID:accountCopy destinations:destinationsCopy];
  sharedState = v14->_sharedState;
  v14->_sharedState = v24;

  v26 = [IDSDSessionMessenger alloc];
  sharedState = [(IDSDSession *)v14 sharedState];
  v28 = [(IDSDSessionMessenger *)v26 initWithDictionary:optionsCopy sharedState:sharedState accountController:controllerCopy];
  messenger = v14->_messenger;
  v14->_messenger = v28;

  v30 = [IDSDSessionInvitationManager alloc];
  sharedState2 = [(IDSDSession *)v14 sharedState];
  messenger = [(IDSDSession *)v14 messenger];
  v33 = [(IDSDSessionInvitationManager *)v30 initWithDictionary:optionsCopy sharedState:sharedState2 messenger:messenger];
  invitationManager = v14->_invitationManager;
  v14->_invitationManager = v33;

  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [optionsCopy description];
    v37 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v416 = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "*** options : %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v38 = [optionsCopy description];
      *&v366 = IDSLoggableDescriptionForObjectOnService();
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v39 = [optionsCopy description];
        *&v366 = IDSLoggableDescriptionForObjectOnService();
        _IDSLogV();
      }
    }
  }

  messenger2 = [(IDSDSession *)v14 messenger];
  if (messenger2)
  {
    invitationManager = [(IDSDSession *)v14 invitationManager];
    if (invitationManager)
    {
      sharedState3 = [(IDSDSession *)v14 sharedState];
      v43 = sharedState3 == 0;

      if (!v43)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v44 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "There was an error creating the managers for IDSDSession.  Aborting...", buf, 2u);
  }

LABEL_19:
  v45 = objc_alloc_init(_TtC17identityservicesd26IDSGlobalLinkConfiguration);
  globalLinkConfiguration = v14->_globalLinkConfiguration;
  v14->_globalLinkConfiguration = v45;

  v411[1] = _NSConcreteStackBlock;
  v411[2] = 3221225472;
  v411[3] = sub_100385534;
  v411[4] = &unk_100BD8A20;
  v47 = v14;
  v412 = v47;
  IDSTransportThreadAddBlock();
  messenger3 = [(IDSDSession *)v47 messenger];
  [messenger3 setDelegate:v47];

  invitationManager2 = [(IDSDSession *)v47 invitationManager];
  [invitationManager2 setDelegate:v47];

  sharedState4 = [(IDSDSession *)v47 sharedState];
  [sharedState4 setDelegate:v47];

  v47->_lock._os_unfair_lock_opaque = 0;
  v47->_clientChannelLock._os_unfair_lock_opaque = 0;
  v51 = [optionsCopy objectForKey:IDSSessionDisallowCellularInterfaceKey];
  v47->_disallowCellularInterface = [v51 BOOLValue];

  v52 = [[CoreTelephonyClient alloc] initWithQueue:0];
  ctClient = v47->_ctClient;
  v47->_ctClient = v52;

  if (!v47->_ctClient)
  {
    v224 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
    {
      sub_1009186CC();
    }

    goto LABEL_290;
  }

  v54 = dispatch_queue_create("com.apple.ids.IDSDSession.networkSlicingReportingQueue", 0);
  networkSlicingReportingQueue = v47->_networkSlicingReportingQueue;
  v47->_networkSlicingReportingQueue = v54;

  v56 = _os_feature_enabled_impl();
  v57 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = @"NO";
    if (v56)
    {
      v58 = @"YES";
    }

    *buf = 138412290;
    v416 = v58;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Sliced cellular interface feature is enabled: %@", buf, 0xCu);
  }

  if (v56)
  {
    v59 = v47->_ctClient;
    v411[0] = 0;
    theDict = [(CoreTelephonyClient *)v59 getSliceTrafficDescriptors:v411];
    v60 = v411[0];
    if (v60 || (-[__CFDictionary trafficDescriptors](theDict, "trafficDescriptors"), (v341 = objc_claimAutoreleasedReturnValue()) == 0) || (-[__CFDictionary trafficDescriptors](theDict, "trafficDescriptors"), v342 = objc_claimAutoreleasedReturnValue(), v343 = [v342 count] == 0, v342, v341, v343))
    {
      v61 = 0;
    }

    else
    {
      v47->_cellularSlicingFlags |= 0x20u;
      v61 = 1;
    }

    v62 = IMGetDomainBoolForKeyWithDefaultValue();
    _shouldEnableCellularSlicingAfterDiceRoll = [(IDSDSession *)v47 _shouldEnableCellularSlicingAfterDiceRoll];
    v64 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = @"NO";
      if (v61)
      {
        v66 = @"YES";
      }

      else
      {
        v66 = @"NO";
      }

      disallowCellularInterface = v47->_disallowCellularInterface;
      if (_shouldEnableCellularSlicingAfterDiceRoll)
      {
        v68 = @"YES";
      }

      else
      {
        v68 = @"NO";
      }

      *buf = 138413058;
      v416 = v66;
      if (v62)
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      v417 = 2112;
      v418 = v68;
      v419 = 2112;
      if (disallowCellularInterface)
      {
        v65 = @"YES";
      }

      v420 = v69;
      v421 = 2112;
      v422 = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Sliced cellular interface feature - is slicing supported: %@ should enable cellular slicing after dice roll: %@, should force enable cellular slicing: %@ is cellular interface disallowed: %@", buf, 0x2Au);
    }

    if ((v61 & ~v47->_disallowCellularInterface & _shouldEnableCellularSlicingAfterDiceRoll | v62))
    {
      v70 = im_primary_queue();
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1003855C0;
      handler[3] = &unk_100BD99B8;
      v71 = v47;
      v410 = v71;
      v72 = notify_register_dispatch("com.apple.private.restrict-post.CoreTelephony.Slicing.Interfaces.Active.State", &v47->_sliceActiveNotificationToken, v70, handler);

      if (v72)
      {
        v73 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_100918630();
        }
      }

      state64 = 0;
      notify_get_state(v47->_sliceActiveNotificationToken, &state64);
      v74 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v416 = state64;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Sliced cellular interface - received bitmask: %llu", buf, 0xCu);
      }

      v75 = +[IDSNWPathUtils sharedInstance];
      v76 = state64;
      sharedState5 = [(IDSDSession *)v71 sharedState];
      uniqueID = [sharedState5 uniqueID];
      [v75 setSliceInterfaceBitMask:v76 forSession:uniqueID];

      objc_initWeak(buf, v71);
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      v79 = mach_continuous_time();
      v80 = *&qword_100CBD180;
      v406[0] = _NSConcreteStackBlock;
      v406[1] = 3221225472;
      v406[2] = sub_10038571C;
      v406[3] = &unk_100BD9A08;
      objc_copyWeak(v407, buf);
      *&v407[1] = v80 * v79;
      v81 = objc_retainBlock(v406);
      v82 = +[IDSNWPathUtils sharedInstance];
      sharedState6 = [(IDSDSession *)v71 sharedState];
      uniqueID2 = [sharedState6 uniqueID];
      [v82 bringUpSlicedInterface:v81 forServiceIdentifier:identifier forSession:uniqueID2];

      objc_destroyWeak(v407);
      objc_destroyWeak(buf);
    }
  }

  v85 = [optionsCopy objectForKey:IDSSessionDisallowWifiInterfaceKey];
  v47->_disallowWifiInterface = [v85 BOOLValue];

  v86 = [optionsCopy objectForKey:IDSGroupSessionCallScreeningMode];
  v47->_disableP2PLinks = [v86 BOOLValue];

  v87 = [optionsCopy objectForKey:IDSSessionPreferredAddressFamilyKey];
  v47->_preferredAddressFamily = [v87 unsignedIntValue];

  v88 = [optionsCopy objectForKey:IDSSessionPreferCellularForCallSetupKey];
  v47->_preferCellularForCallSetup = [v88 BOOLValue];

  v89 = [optionsCopy objectForKey:IDSSessionReliableUnicastRegistrationCompletionBlockKey];
  v90 = [v89 copy];
  reliableUnicastRegistrationCompletionBlock = v47->_reliableUnicastRegistrationCompletionBlock;
  v47->_reliableUnicastRegistrationCompletionBlock = v90;

  LOBYTE(v89) = _os_feature_enabled_impl();
  v92 = +[IDSServerBag sharedInstance];
  v93 = [v92 objectForKey:@"ids-disable-hand-off-over-qr"];
  bOOLValue2 = [v93 BOOLValue];

  v47->_handOffOverQREnabled = v89 & (bOOLValue2 ^ 1);
  v95 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    if (v47->_handOffOverQREnabled)
    {
      v96 = @"YES";
    }

    else
    {
      v96 = @"NO";
    }

    *buf = 138412290;
    v416 = v96;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Handoff Over QR Feature is Enabled: %@", buf, 0xCu);
  }

  v97 = +[NSString stringGUID];
  awdUniqueId = v47->_awdUniqueId;
  v47->_awdUniqueId = v97;

  v99 = +[NSDate date];
  awdStartTimestamp = v47->_awdStartTimestamp;
  v47->_awdStartTimestamp = v99;

  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  v47->_summaryReportBaseTime = *&qword_100CBD180 * mach_continuous_time();
  objc_storeStrong(&v47->_availabilityCheck, check);
  skeData = v47->_skeData;
  v47->_skeData = 0;

  v102 = [optionsCopy objectForKey:IDSDSessionSuppressClientNotificationsKey];
  v47->_supressClientNotifications = [v102 BOOLValue];

  v103 = [optionsCopy objectForKey:IDSGroupSessionStartedAsUPlusOneKey];
  v47->_startedAsUPlusOneSession = [v103 BOOLValue];

  v47->_switchedToUPlusMany = 0;
  v104 = [optionsCopy objectForKey:IDSGroupSessionIsLightweightParticipantKey];
  v47->_isLightweightParticipant = [v104 BOOLValue];

  v105 = objc_alloc_init(IDSGFTMetricsCollector);
  metricsCollector = v47->_metricsCollector;
  v47->_metricsCollector = v105;

  [(IDSGFTMetricsCollector *)v47->_metricsCollector setIsInitiator:bOOLValue];
  v107 = +[NSMutableDictionary dictionary];
  participantIDToPushToken = v47->_participantIDToPushToken;
  v47->_participantIDToPushToken = v107;

  v109 = +[NSMutableDictionary dictionary];
  participantIDToURI = v47->_participantIDToURI;
  v47->_participantIDToURI = v109;

  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  v47->_timeBase = *&qword_100CBD180 * mach_continuous_time();
  v47->_connectedLinkCount = 0;
  v47->_allowExpensiveQualityMetrics = [service allowExpensiveQualityMetrics];
  v111 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    if (v47->_allowExpensiveQualityMetrics)
    {
      v112 = @"YES";
    }

    else
    {
      v112 = @"NO";
    }

    identifier2 = [service identifier];
    *buf = 138412546;
    v416 = v112;
    v417 = 2112;
    v418 = identifier2;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "IDSDSession initWithAccount: allowExpensiveQualityMetrics: %@ (for service: %@)", buf, 0x16u);
  }

  v376 = [optionsCopy objectForKey:IDSSessionClientUUIDKey];
  if (v376)
  {
    v114 = [[NSUUID alloc] initWithUUIDString:v376];
    sharedState7 = [(IDSDSession *)v47 sharedState];
    [sharedState7 setClientUUID:v114];
  }

  v116 = +[IDSGroupEncryptionController sharedInstance];
  sharedState8 = [(IDSDSession *)v47 sharedState];
  groupID = [sharedState8 groupID];
  [v116 resetKeyMaterialLocalSentStatus:groupID];

  v119 = [optionsCopy objectForKey:IDSSessionIsMultiwayKey];
  bOOLValue3 = [v119 BOOLValue];

  if (bOOLValue3)
  {
    v120 = +[IDSGroupEncryptionController sharedInstance];
    internal = [v120 internal];
    sharedState9 = [(IDSDSession *)v47 sharedState];
    groupID2 = [sharedState9 groupID];
    v124 = [internal groupForID:groupID2];
    group = v47->_group;
    v47->_group = v124;

    if (_os_feature_enabled_impl())
    {
      v126 = [optionsCopy objectForKey:IDSGroupSessionShortMKIEnabledKey];
      v47->_isShortMKIEnabled = [v126 BOOLValue];
    }

    if (v47->_isShortMKIEnabled && _os_feature_enabled_impl())
    {
      v127 = [optionsCopy objectForKey:IDSGroupSessionTLEEnabledKey];
      v47->_isTLEEnabled = [v127 BOOLValue];
    }

    v128 = [optionsCopy objectForKey:IDSGroupSessionPartialTLEUPlusOneEnabledKey];
    v47->_isPartialTLEUPlusOneEnabled = [v128 BOOLValue];

    v129 = IMGetDomainBoolForKeyWithDefaultValue();
    v130 = IMGetDomainBoolForKeyWithDefaultValue();
    v131 = IMGetDomainBoolForKeyWithDefaultValue();
    if (v129)
    {
      v132 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        if (v47->_isShortMKIEnabled)
        {
          v133 = @"YES";
        }

        else
        {
          v133 = @"NO";
        }

        sharedState10 = [(IDSDSession *)v47 sharedState];
        groupID3 = [sharedState10 groupID];
        *buf = 138412802;
        v416 = v133;
        v417 = 2112;
        v418 = @"YES";
        v419 = 2112;
        v420 = groupID3;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "IDSDSession::init _isShortMKIEnabled:%@ shouldForceShortMKI:%@ for groupID:%@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v136 = @"NO";
        v137 = v47->_isShortMKIEnabled ? @"YES" : @"NO";
        sharedState11 = [(IDSDSession *)v47 sharedState];
        [sharedState11 groupID];
        v368 = *(&v366 + 1) = @"YES";
        *&v366 = v137;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          if (v47->_isShortMKIEnabled)
          {
            v136 = @"YES";
          }

          v139 = [(IDSDSession *)v47 sharedState:v137];
          [v139 groupID];
          v368 = *(&v366 + 1) = @"YES";
          *&v366 = v136;
          _IDSLogV();
        }
      }

      v47->_isShortMKIEnabled = v129;
    }

    if (v130)
    {
      v140 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        if (v47->_isTLEEnabled)
        {
          v141 = @"YES";
        }

        else
        {
          v141 = @"NO";
        }

        v142 = [(IDSDSession *)v47 sharedState:v366];
        groupID4 = [v142 groupID];
        *buf = 138412802;
        v416 = v141;
        v417 = 2112;
        v418 = @"YES";
        v419 = 2112;
        v420 = groupID4;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "IDSDSession::init _isTLEEnabled:%@ shouldForceTLE:%@ for groupID:%@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v144 = @"NO";
        v145 = v47->_isTLEEnabled ? @"YES" : @"NO";
        sharedState12 = [(IDSDSession *)v47 sharedState];
        [sharedState12 groupID];
        v368 = *(&v366 + 1) = @"YES";
        *&v366 = v145;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          if (v47->_isTLEEnabled)
          {
            v144 = @"YES";
          }

          v147 = [(IDSDSession *)v47 sharedState:v145];
          [v147 groupID];
          v368 = *(&v366 + 1) = @"YES";
          *&v366 = v144;
          _IDSLogV();
        }
      }

      v47->_isTLEEnabled = v130;
    }

    if (v131)
    {
      v148 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        if (v47->_isPartialTLEUPlusOneEnabled)
        {
          v149 = @"YES";
        }

        else
        {
          v149 = @"NO";
        }

        v150 = [(IDSDSession *)v47 sharedState:v366];
        groupID5 = [v150 groupID];
        *buf = 138412802;
        v416 = v149;
        v417 = 2112;
        v418 = @"YES";
        v419 = 2112;
        v420 = groupID5;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "IDSDSession::init _isPartialTLEUPlusOneEnabled:%@ shouldForcePartialTLEUPlusOne:%@ for groupID:%@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v152 = @"NO";
        v153 = v47->_isPartialTLEUPlusOneEnabled ? @"YES" : @"NO";
        sharedState13 = [(IDSDSession *)v47 sharedState];
        [sharedState13 groupID];
        v368 = *(&v366 + 1) = @"YES";
        *&v366 = v153;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          if (v47->_isPartialTLEUPlusOneEnabled)
          {
            v152 = @"YES";
          }

          v155 = [(IDSDSession *)v47 sharedState:v153];
          [v155 groupID];
          v368 = *(&v366 + 1) = @"YES";
          *&v366 = v152;
          _IDSLogV();
        }
      }

      v47->_isPartialTLEUPlusOneEnabled = v131;
    }

    v156 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      if (v47->_isShortMKIEnabled)
      {
        v157 = @"YES";
      }

      else
      {
        v157 = @"NO";
      }

      if (v47->_isTLEEnabled)
      {
        v158 = @"YES";
      }

      else
      {
        v158 = @"NO";
      }

      if (v47->_isPartialTLEUPlusOneEnabled)
      {
        v159 = @"YES";
      }

      else
      {
        v159 = @"NO";
      }

      v160 = [(IDSDSession *)v47 sharedState:v366];
      groupID6 = [v160 groupID];
      *buf = 138413058;
      v416 = v157;
      v417 = 2112;
      v418 = v158;
      v419 = 2112;
      v420 = v159;
      v421 = 2112;
      v422 = groupID6;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "IDSDSession::init _isShortMKIEnabled:%@ _isTLEEnabled:%@ _isPartialTLEUPlusOneEnabled:%@ for groupID:%@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v162 = @"NO";
      v163 = v47->_isShortMKIEnabled ? @"YES" : @"NO";
      v164 = v47->_isTLEEnabled ? @"YES" : @"NO";
      v165 = v47->_isPartialTLEUPlusOneEnabled ? @"YES" : @"NO";
      sharedState14 = [(IDSDSession *)v47 sharedState];
      [sharedState14 groupID];
      v370 = v368 = v165;
      *&v366 = v163;
      *(&v366 + 1) = v164;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        if (v47->_isShortMKIEnabled)
        {
          v167 = @"YES";
        }

        else
        {
          v167 = @"NO";
        }

        if (v47->_isTLEEnabled)
        {
          v168 = @"YES";
        }

        else
        {
          v168 = @"NO";
        }

        if (v47->_isPartialTLEUPlusOneEnabled)
        {
          v162 = @"YES";
        }

        v169 = [(IDSDSession *)v47 sharedState:v366];
        [v169 groupID];
        v370 = v368 = v162;
        *&v366 = v167;
        *(&v366 + 1) = v168;
        _IDSLogV();
      }
    }

    [(IDSGroupEncryptionControllerGroup *)v47->_group setShortMKIEnabled:v47->_isShortMKIEnabled, v366, v368, v370];
    v170 = v47->_group;
    sharedState15 = [(IDSDSession *)v47 sharedState];
    uniqueID3 = [sharedState15 uniqueID];
    v173 = [(IDSGroupEncryptionControllerGroup *)v170 ensureSessionForID:uniqueID3];
    groupSession = v47->_groupSession;
    v47->_groupSession = v173;

    v175 = [_TtC17identityservicesd45IDSGroupDefaultRootMaterialExchangeController alloc];
    config = [(IDSGroupEncryptionControllerGroup *)v47->_group config];
    v177 = v47->_groupSession;
    identifier3 = [service identifier];
    v179 = +[IDSGroupEncryptionController sharedInstance];
    v180 = [(IDSGroupDefaultRootMaterialExchangeController *)v175 initWithConfig:config session:v177 serviceID:identifier3 pushHandler:v179];
    exchangeController = v47->_exchangeController;
    v47->_exchangeController = v180;

    [(IDSGroupEncryptionControllerGroupSession *)v47->_groupSession setRootExchangeController:v47->_exchangeController];
    v182 = v47->_groupSession;
    v183 = v47->_metricsCollector;
    groupStatusNotificationController = [(IDSDSession *)v47 groupStatusNotificationController];
    v185 = [_TtC17identityservicesd27IDSDSessionKeyValueDelivery createWithDelegate:v47 session:v182 metricsCollector:v183 pushTokensForCapabilityProvider:groupStatusNotificationController];

    objc_storeStrong(&v47->_keyValueDelivery, v185);
    [v185 addMaterialProviderToSession:v47->_groupSession];
    v186 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
    {
      v187 = v47->_group;
      v188 = v47->_groupSession;
      v189 = v47->_exchangeController;
      *buf = 138412802;
      v416 = v187;
      v417 = 2112;
      v418 = v188;
      v419 = 2112;
      v420 = v189;
      _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "IDSDSession::init group:%@ session:%@ exchangeController:%@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v368 = v47->_exchangeController;
        v366 = *&v47->_group;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v368 = v47->_exchangeController;
          v366 = *&v47->_group;
          _IDSLogV();
        }
      }
    }
  }

  v190 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
  {
    sharedState16 = [(IDSDSession *)v47 sharedState];
    uniqueID4 = [sharedState16 uniqueID];
    v193 = uniqueID4;
    v194 = v14->_instanceID;
    v195 = @"NO";
    if (v47->_isLightweightParticipant)
    {
      v195 = @"YES";
    }

    *buf = 134218754;
    v416 = v47;
    v417 = 2112;
    v418 = uniqueID4;
    v419 = 2112;
    v420 = v194;
    v421 = 2112;
    v422 = v195;
    _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "IDSDSession::init { self: %p, uniqueID: %@, instanceID: %@, isLightweightParticipant: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    sharedState17 = [(IDSDSession *)v47 sharedState];
    uniqueID5 = [sharedState17 uniqueID];
    v198 = v47->_isLightweightParticipant ? @"YES" : @"NO";
    v368 = v14->_instanceID;
    v370 = v198;
    *&v366 = v47;
    *(&v366 + 1) = uniqueID5;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      v199 = [(IDSDSession *)v47 sharedState:v47];
      uniqueID6 = [v199 uniqueID];
      v201 = uniqueID6;
      if (v47->_isLightweightParticipant)
      {
        v202 = @"YES";
      }

      else
      {
        v202 = @"NO";
      }

      v368 = v14->_instanceID;
      v370 = v202;
      *&v366 = v47;
      *(&v366 + 1) = uniqueID6;
      _IDSLogV();
    }
  }

  if (v47->_supressClientNotifications)
  {
    v203 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
    {
      sharedState18 = [(IDSDSession *)v47 sharedState];
      uniqueID7 = [sharedState18 uniqueID];
      *buf = 138412290;
      v416 = uniqueID7;
      _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "[!] This session will be suppressing client notifications { self.sharedState.uniqueID: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState19 = [(IDSDSession *)v47 sharedState];
        *&v366 = [sharedState19 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState20 = [(IDSDSession *)v47 sharedState];
          *&v366 = [sharedState20 uniqueID];
          _IDSLogV();
        }
      }
    }
  }

  v47->_verboseFunctionalLogging = IMGetDomainBoolForKey();
  v47->_verbosePerformanceLogging = IMGetDomainBoolForKey();
  v208 = [identifier isEqualToIgnoringCase:@"com.apple.private.alloy.screensharing"];
  sharedState21 = [(IDSDSession *)v47 sharedState];
  v210 = sharedState21;
  if (v208)
  {
    [sharedState21 setIsScreenSharingSession:1];

    sharedState45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v212 = [NSString alloc];
    sharedState22 = [(IDSDSession *)v47 sharedState];
    uniqueID8 = [sharedState22 uniqueID];
    v214 = [v212 initWithFormat:@"com.apple.ids.Session-ConnectionQueue-%@", uniqueID8];

    v216 = v214;
    v217 = dispatch_queue_create([v214 UTF8String], sharedState45);
    v218 = [[_IDSSessionConnection alloc] initWithQueue:v217];
    sharedState23 = [(IDSDSession *)v47 sharedState];
    [sharedState23 setConnection:v218];

    sharedState24 = [(IDSDSession *)v47 sharedState];
    connection = [sharedState24 connection];
    [connection setDelegate:v47];

    sharedState25 = [(IDSDSession *)v47 sharedState];
    [sharedState25 setInviteTimeout:30.0];

    sharedState26 = [(IDSDSession *)v47 sharedState];
    [sharedState26 setEndSessionTimeout:5.0];

    goto LABEL_213;
  }

  [sharedState21 setIsScreenSharingSession:0];

  if (([identifier isEqualToString:@"com.apple.private.alloy.facetime.multi"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.arcade.fastsync") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.airdrop.walkaway") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.groupRemoteControl.cloud") & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.groupRemoteControl.session"))
  {
    v225 = [(IDSDSession *)v47 sharedState:v366];
    [v225 setClientType:6];

    sharedState27 = [(IDSDSession *)v47 sharedState];
    [sharedState27 setUseQRDirectly:1];

    v47->_shouldAssertRealTimeMode = 1;
    v47->_supportUnauthenticatedUser = 1;
    if ([identifier isEqualToString:@"com.apple.private.alloy.facetime.multi"])
    {
      v47->_isAutoDisconnectSupportedForGFTService = 1;
    }

    goto LABEL_193;
  }

  if ([identifier isEqualToString:@"com.apple.private.alloy.facetime.video"])
  {
    sharedState28 = [(IDSDSession *)v47 sharedState];
    [sharedState28 setClientType:1];

    sharedState29 = [(IDSDSession *)v47 sharedState];
    [sharedState29 setUseQRDirectly:1];

LABEL_296:
    v47->_shouldAssertRealTimeMode = 1;
    goto LABEL_193;
  }

  if ([identifier isEqualToString:@"com.apple.private.alloy.facetime.audio"])
  {
    sharedState30 = [(IDSDSession *)v47 sharedState];
    [sharedState30 setClientType:5];

    sharedState31 = [(IDSDSession *)v47 sharedState];
    [sharedState31 setUseQRDirectly:1];

    goto LABEL_296;
  }

  if (([identifier isEqualToString:@"com.apple.private.alloy.willow.stream"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.itunes"))
  {
    v358 = [(IDSDSession *)v47 sharedState:v366];
    [v358 setClientType:2];

    goto LABEL_193;
  }

  if ([identifier isEqualToString:@"com.apple.private.alloy.safeview"])
  {
    sharedState32 = [(IDSDSession *)v47 sharedState];
    [sharedState32 setClientType:3];

    goto LABEL_193;
  }

  if ([identifier isEqualToString:@"com.apple.private.alloy.screensharing.qr"])
  {
    sharedState33 = [(IDSDSession *)v47 sharedState];
    [sharedState33 setClientType:7];

    goto LABEL_193;
  }

  if ([identifier isEqualToString:@"com.apple.private.alloy.tincan.audio"])
  {
    sharedState34 = [(IDSDSession *)v47 sharedState];
    [sharedState34 setClientType:100];

    goto LABEL_193;
  }

  if (![identifier isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"])
  {
    if (![identifier isEqualToString:@"com.apple.private.alloy.carmelsync"] && !objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.notes") && !objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.dropin.communication") && !objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.safari.groupactivities") && !objc_msgSend(identifier, "isEqualToString:", @"com.apple.private.alloy.gftaastest.communication"))
    {
      goto LABEL_193;
    }

    sharedState35 = [(IDSDSession *)v47 sharedState];
    [sharedState35 setClientType:6];

    sharedState36 = [(IDSDSession *)v47 sharedState];
    [sharedState36 setUseQRDirectly:1];

    goto LABEL_296;
  }

  sharedState37 = [(IDSDSession *)v47 sharedState];
  [sharedState37 setClientType:4];

  v363 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v363, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v416 = &off_100C3BBD8;
    _os_log_impl(&_mh_execute_header, v363, OS_LOG_TYPE_DEFAULT, "com.apple.private.alloy.phonecontinuity: set connectionCountHint to: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v381 = &off_100C3BBD8;
    if (!_IDSShouldLogTransport())
    {
      goto LABEL_193;
    }

    *&v366 = &off_100C3BBD8;
    _IDSLogTransport();
    v381 = &off_100C3BBD8;
    if (!_IDSShouldLog())
    {
      goto LABEL_193;
    }

    *&v366 = &off_100C3BBD8;
    _IDSLogV();
  }

  v381 = &off_100C3BBD8;
LABEL_193:
  sharedState38 = [(IDSDSession *)v47 sharedState];
  enableSingleChannelDirectMode = [sharedState38 enableSingleChannelDirectMode];

  if (enableSingleChannelDirectMode)
  {
    sharedState39 = [(IDSDSession *)v47 sharedState];
    [sharedState39 setUseQRDirectly:1];

    v47->_shouldAssertRealTimeMode = 1;
    v230 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v416 = identifier;
      _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "use QR directly for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v367 = identifier;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v367 = identifier;
          _IDSLogV();
        }
      }
    }
  }

  v404 = 0u;
  v405 = 0u;
  v402 = 0u;
  v403 = 0u;
  sharedState40 = [(IDSDSession *)v47 sharedState];
  destinations = [sharedState40 destinations];

  v233 = [destinations countByEnumeratingWithState:&v402 objects:v414 count:16];
  if (v233)
  {
    v234 = *v403;
LABEL_202:
    v235 = 0;
    while (1)
    {
      if (*v403 != v234)
      {
        objc_enumerationMutation(destinations);
      }

      v236 = *(*(&v402 + 1) + 8 * v235);
      sharedState41 = [(IDSDSession *)v47 sharedState];
      LODWORD(v236) = [sharedState41 destinationIsDefaultPairedDevice:v236];

      if (!v236)
      {
        break;
      }

      if (v233 == ++v235)
      {
        v233 = [destinations countByEnumeratingWithState:&v402 objects:v414 count:16];
        if (v233)
        {
          goto LABEL_202;
        }

        goto LABEL_211;
      }
    }

    sharedState42 = [(IDSDSession *)v47 sharedState];
    enableQuickRelay = [sharedState42 enableQuickRelay];

    if (enableQuickRelay)
    {
      goto LABEL_212;
    }

    destinations = [(IDSDSession *)v47 utunController];
    sharedState43 = [(IDSDSession *)v47 sharedState];
    uniqueID9 = [sharedState43 uniqueID];
    [destinations startUDPGlobalLinkForDevice:uniqueID9];
  }

LABEL_211:

LABEL_212:
  sharedState44 = [(IDSDSession *)v47 sharedState];
  [sharedState44 setInviteTimeout:30.0];

  sharedState45 = [(IDSDSession *)v47 sharedState];
  [sharedState45 setEndSessionTimeout:2.0];
LABEL_213:

  integerValue = [v377 integerValue];
  sharedState46 = [(IDSDSession *)v47 sharedState];
  [sharedState46 setTransportType:integerValue];

  if ([v381 unsignedIntegerValue])
  {
    unsignedIntegerValue = [v381 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  sharedState47 = [(IDSDSession *)v47 sharedState];
  [sharedState47 setConnectionCountHint:unsignedIntegerValue];

  v47->_reason = 0;
  v247 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
  {
    sharedState48 = [(IDSDSession *)v47 sharedState];
    connectionCountHint = [sharedState48 connectionCountHint];
    unsignedIntegerValue2 = [v381 unsignedIntegerValue];
    *buf = 134218240;
    v416 = connectionCountHint;
    v417 = 2048;
    v418 = unsignedIntegerValue2;
    _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, " self.sharedState.connectionCountHint: %lu, [connectionCountHint unsignedIntegerValue]: %lu", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState49 = [(IDSDSession *)v47 sharedState];
      *&v366 = [sharedState49 connectionCountHint];
      *(&v366 + 1) = [v381 unsignedIntegerValue];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        sharedState50 = [(IDSDSession *)v47 sharedState];
        *&v366 = [sharedState50 connectionCountHint];
        *(&v366 + 1) = [v381 unsignedIntegerValue];
        _IDSLogV();
      }
    }
  }

  sharedState51 = [(IDSDSession *)v47 sharedState];
  serviceName = [sharedState51 serviceName];
  [(IDSDSession *)v47 _loggingFlags];
  DLCSessionBeginSession();

  v401 = 0;
  IMGetConferenceSettings();
  v372 = 0;
  v255 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
  {
    v256 = [(__CFString *)destinationsCopy count];
    v257 = @"incoming";
    *buf = 138413058;
    if (bOOLValue)
    {
      v257 = @"outgoing";
    }

    v416 = v257;
    v417 = 2112;
    v418 = v384;
    v419 = 2048;
    v420 = v256;
    v421 = 2112;
    v422 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "Created session (%@) %@ with %lu destinations %@", buf, 0x2Au);
  }

  sharedState52 = [(IDSDSession *)v47 sharedState];
  serviceName2 = [sharedState52 serviceName];
  if (bOOLValue)
  {
    v260 = @"outgoing";
  }

  else
  {
    v260 = @"incoming";
  }

  v369 = [(__CFString *)destinationsCopy count];
  DLCSessionLogWithLevel();

  v261 = [[NSString alloc] initWithString:{identifier, v260, v384, v369, destinationsCopy}];
  serviceIdentifier = v47->_serviceIdentifier;
  v47->_serviceIdentifier = v261;

  v373 = [(__CFString *)v384 componentsSeparatedByString:@"-"];
  theDicta = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(theDicta, @"state", &off_100C3BBF0);
  v263 = -[NSString substringFromIndex:](v47->_serviceIdentifier, "substringFromIndex:", [@"com.apple.private.alloy." length]);
  if (v263)
  {
    CFDictionarySetValue(theDicta, @"serviceName", v263);
  }

  v264 = [v373 objectAtIndexedSubscript:0];
  if (v264)
  {
    CFDictionarySetValue(theDicta, @"sessionID", v264);
  }

  v265 = [NSNumber numberWithBool:bOOLValue];
  if (v265)
  {
    CFDictionarySetValue(theDicta, @"isInitiator", v265);
  }

  IDSPowerLogDictionary();
  if ((bOOLValue & 1) == 0)
  {
    sharedState53 = [(IDSDSession *)v47 sharedState];
    [sharedState53 setInvitationTimer];

    sharedState54 = [(IDSDSession *)v47 sharedState];
    [sharedState54 setState:2];

    if (qword_100CBD178 == -1)
    {
LABEL_241:
      v47->_inviteRecvTime = *&qword_100CBD180 * mach_continuous_time();
      goto LABEL_243;
    }

LABEL_304:
    sub_1009186A4();
    goto LABEL_241;
  }

  if (bOOLValue3)
  {
    if (!v47->_startedAsUPlusOneSession)
    {
      goto LABEL_243;
    }

    if (qword_100CBD178 == -1)
    {
      goto LABEL_241;
    }

    goto LABEL_304;
  }

  sharedState55 = [(IDSDSession *)v47 sharedState];
  [sharedState55 setState:1];

LABEL_243:
  startedAsUPlusOneSession = v47->_startedAsUPlusOneSession;
  sharedState56 = [(IDSDSession *)v47 sharedState];
  [sharedState56 setIsInUPlusOneMode:startedAsUPlusOneSession];

  v271 = +[IDSDSessionController sharedInstance];
  [v271 updateCriticalReliabilityState];

  v47->_socketDescriptor = -1;
  v272 = objc_alloc_init(NSMutableDictionary);
  extraConnections = v47->_extraConnections;
  v47->_extraConnections = v272;

  v274 = objc_alloc_init(NSMutableDictionary);
  participantIDToAVCBlob = v47->_participantIDToAVCBlob;
  v47->_participantIDToAVCBlob = v274;

  v276 = objc_alloc_init(NSMutableDictionary);
  participantIDToTypeToEncryptedIDSContextBlobs = v47->_participantIDToTypeToEncryptedIDSContextBlobs;
  v47->_participantIDToTypeToEncryptedIDSContextBlobs = v276;

  v47->_linkProtocol = 2;
  v278 = objc_alloc_init(NSMutableDictionary);
  extraUDPSockets = v47->_extraUDPSockets;
  v47->_extraUDPSockets = v278;

  v389 = IMGetDomainValueForKey();
  if (v389)
  {
    [(IDSDSession *)v47 _setLinkProtocol:v389];
  }

  if (!bOOLValue3)
  {
    goto LABEL_268;
  }

  v280 = +[NSMutableData data];
  sessionInfoMetaData = v47->_sessionInfoMetaData;
  v47->_sessionInfoMetaData = v280;

  sharedState57 = [(IDSDSession *)v47 sharedState];
  [sharedState57 setSharedSession:1];

  sharedState58 = [(IDSDSession *)v47 sharedState];
  [sharedState58 setUseQRDirectly:1];

  sharedState59 = [(IDSDSession *)v47 sharedState];
  uniqueID10 = [sharedState59 uniqueID];
  [(IDSDSession *)v47 openSocketToDevice:uniqueID10];

  if (v47->_isLightweightParticipant)
  {
    v286 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v286, OS_LOG_TYPE_DEFAULT, "Skip IDSClientChannel because this is a lighweight participant.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    [(IDSDSession *)v47 registerClientChannel];
  }

  [(IDSDSession *)v47 registerMultiplexerTransport];
  v287 = [optionsCopy objectForKey:kIDSQRAllocateKey_Reason];
  qrReason = v47->_qrReason;
  v47->_qrReason = v287;

  v289 = [optionsCopy objectForKey:kIDSQRAllocateKey_QRError];
  qrError = v47->_qrError;
  v47->_qrError = v289;

  accountController = [(IDSDSession *)v47 accountController];
  sharedState60 = [(IDSDSession *)v47 sharedState];
  accountID = [sharedState60 accountID];
  v294 = [accountController accountWithUniqueID:accountID];
  primaryRegistration = [v294 primaryRegistration];
  pushToken = [primaryRegistration pushToken];
  identifier4 = [service identifier];
  v375 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:identifier4];

  if (v375)
  {
    v399[0] = _NSConcreteStackBlock;
    v399[1] = 3221225472;
    v399[2] = sub_1003858F4;
    v399[3] = &unk_100BD6ED0;
    v298 = v47;
    v400 = v298;
    v299 = objc_retainBlock(v399);
    groupStatusNotificationController2 = [(IDSDSession *)v298 groupStatusNotificationController];
    queue = [groupStatusNotificationController2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100385AD4;
    block[3] = &unk_100BD9A30;
    v302 = v298;
    v397 = v302;
    v371 = v299;
    v398 = v371;
    v303 = queue;
    v304 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v303, v304);

    v305 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
    {
      sharedState61 = [(IDSDSession *)v302 sharedState];
      destinations2 = [sharedState61 destinations];
      *buf = 138412290;
      v416 = destinations2;
      _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_DEFAULT, "Destinations are %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState62 = [(IDSDSession *)v302 sharedState];
        *&v366 = [sharedState62 destinations];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState63 = [(IDSDSession *)v302 sharedState];
          *&v366 = [sharedState63 destinations];
          _IDSLogV();
        }
      }
    }

    v310 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
    {
      sharedState64 = [(IDSDSession *)v302 sharedState];
      destinationsLightweightStatus = [sharedState64 destinationsLightweightStatus];
      *buf = 138412290;
      v416 = destinationsLightweightStatus;
      _os_log_impl(&_mh_execute_header, v310, OS_LOG_TYPE_DEFAULT, "Lightweight status per destination: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState65 = [(IDSDSession *)v302 sharedState];
        *&v366 = [sharedState65 destinationsLightweightStatus];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState66 = [(IDSDSession *)v302 sharedState];
          *&v366 = [sharedState66 destinationsLightweightStatus];
          _IDSLogV();
        }
      }
    }

    v315 = +[IDSGroupEncryptionController sharedInstance];
    sharedState67 = [(IDSDSession *)v302 sharedState];
    accountID2 = [sharedState67 accountID];
    sharedState68 = [(IDSDSession *)v302 sharedState];
    fromURI = [sharedState68 fromURI];
    sharedState69 = [(IDSDSession *)v302 sharedState];
    groupID7 = [sharedState69 groupID];
    [v315 setAccount:accountID2 fromURI:fromURI forGroup:groupID7];

    v322 = im_primary_queue();
    v393[0] = _NSConcreteStackBlock;
    v393[1] = 3221225472;
    v393[2] = sub_100385C60;
    v393[3] = &unk_100BD6E40;
    v394 = v302;
    v323 = v375;
    v395 = v323;
    v324 = v322;
    v325 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v393);
    dispatch_async(v324, v325);

LABEL_268:
    v326 = [optionsCopy objectForKey:IDSGroupSessionWantDidInitCallbackKey];
    bOOLValue4 = [v326 BOOLValue];

    if (bOOLValue4)
    {
      v328 = objc_alloc_init(IMMessageContext);
      [v328 setShouldBoost:1];
      v329 = +[IDSDaemon sharedInstance];
      sharedState70 = [(IDSDSession *)v47 sharedState];
      pushTopic = [sharedState70 pushTopic];
      groupID10 = [v329 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v328];

      v333 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
      {
        sharedState71 = [(IDSDSession *)v47 sharedState];
        uniqueID11 = [sharedState71 uniqueID];
        *buf = 138412290;
        v416 = uniqueID11;
        _os_log_impl(&_mh_execute_header, v333, OS_LOG_TYPE_DEFAULT, "Broadcasting did initialize group session: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState72 = [(IDSDSession *)v47 sharedState];
          *&v366 = [sharedState72 uniqueID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            sharedState73 = [(IDSDSession *)v47 sharedState];
            *&v366 = [sharedState73 uniqueID];
            _IDSLogV();
          }
        }
      }

      sharedState74 = [(IDSDSession *)v47 sharedState];
      uniqueID12 = [sharedState74 uniqueID];
      [groupID10 groupSessionDidInitialize:uniqueID12 error:0];
      v340 = 1;
      goto LABEL_276;
    }

    v340 = 1;
    goto LABEL_288;
  }

  v344 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
  {
    sharedState75 = [(IDSDSession *)v47 sharedState];
    groupID8 = [sharedState75 groupID];
    sharedState76 = [(IDSDSession *)v47 sharedState];
    serviceName3 = [sharedState76 serviceName];
    *buf = 138412546;
    v416 = groupID8;
    v417 = 2112;
    v418 = serviceName3;
    _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_DEFAULT, "Could not create session: %@ because failed to get this device push token for the service: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState77 = [(IDSDSession *)v47 sharedState];
      groupID9 = [sharedState77 groupID];
      sharedState78 = [(IDSDSession *)v47 sharedState];
      [sharedState78 serviceName];
      *(&v366 + 1) = *&v366 = groupID9;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v328 = [(IDSDSession *)v47 sharedState:groupID9];
        groupID10 = [v328 groupID];
        sharedState74 = [(IDSDSession *)v47 sharedState];
        uniqueID12 = [sharedState74 serviceName];
        *&v366 = groupID10;
        *(&v366 + 1) = uniqueID12;
        _IDSLogV();
        v340 = 0;
LABEL_276:

        goto LABEL_288;
      }
    }
  }

  v340 = 0;
LABEL_288:

  if ((v340 & 1) == 0)
  {
LABEL_290:
    v352 = 0;
    goto LABEL_291;
  }

LABEL_289:
  [(IDSDSession *)v14 submitAWDMetricsForIDSSessionStarted];
  v352 = v14;
LABEL_291:

  return v352;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    instanceID = [(IDSDSession *)self instanceID];
    *buf = 134218498;
    selfCopy = self;
    v58 = 2112;
    v59 = uniqueID;
    v60 = 2112;
    v61 = instanceID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSDSession::dealloc { self: %p, uniqueID: %@, instanceID: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      instanceID2 = [(IDSDSession *)self instanceID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v9 = [(IDSDSession *)self sharedState:self];
        uniqueID3 = [v9 uniqueID];
        instanceID3 = [(IDSDSession *)self instanceID];
        _IDSLogV();
      }
    }
  }

  v11 = self->_globalLinkConfiguration;
  onTransportThread_linkManager = [(IDSDSession *)self onTransportThread_linkManager];
  sharedState3 = [(IDSDSession *)self sharedState];
  uniqueID4 = [sharedState3 uniqueID];

  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_100386218;
  v52 = &unk_100BD89D8;
  v15 = onTransportThread_linkManager;
  v53 = v15;
  v16 = uniqueID4;
  v54 = v16;
  v17 = v11;
  v55 = v17;
  IDSTransportThreadAddBlock();
  *&self->_keyMaterial[16] = 0u;
  *&self->_keyMaterial[32] = 0u;
  *self->_keyMaterial = 0u;
  *&self->_keyMaterial[44] = 0u;
  sharedState4 = [(IDSDSession *)self sharedState];
  encryptionState = [sharedState4 encryptionState];

  sub_10050CB5C(encryptionState);
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sharedState5 = [(IDSDSession *)self sharedState];
    uniqueID5 = [sharedState5 uniqueID];
    *buf = 138412290;
    selfCopy = uniqueID5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Destroyed session %@", buf, 0xCu);
  }

  sharedState6 = [(IDSDSession *)self sharedState];
  serviceName = [sharedState6 serviceName];
  sharedState7 = [(IDSDSession *)self sharedState];
  uniqueID6 = [sharedState7 uniqueID];
  DLCSessionLogWithLevel();

  sharedState8 = [(IDSDSession *)self sharedState];
  serviceName2 = [sharedState8 serviceName];
  DLCSessionEndSession();

  sharedState9 = [(IDSDSession *)self sharedState];
  serviceName3 = [sharedState9 serviceName];

  if (serviceName3)
  {
    v30 = [NSString alloc];
    sharedState10 = [(IDSDSession *)self sharedState];
    serviceName4 = [sharedState10 serviceName];
    v33 = [v30 initWithString:serviceName4];

    [(IDSDSession *)self _resetPreferences:v33];
  }

  sharedState11 = [(IDSDSession *)self sharedState];
  [sharedState11 setState:9];

  [(IDSDSession *)self _cleanupSessionConnection];
  [(IDSBaseSocketPairConnection *)self->_baseSocketPairConnection endSession];
  v35 = +[IDSDSessionController sharedInstance];
  [v35 updateCriticalReliabilityState];

  extraConnections = self->_extraConnections;
  self->_extraConnections = 0;

  participantIDToAVCBlob = self->_participantIDToAVCBlob;
  self->_participantIDToAVCBlob = 0;

  participantIDToTypeToEncryptedIDSContextBlobs = self->_participantIDToTypeToEncryptedIDSContextBlobs;
  self->_participantIDToTypeToEncryptedIDSContextBlobs = 0;

  reliableUnicastRegistrationCompletionBlock = self->_reliableUnicastRegistrationCompletionBlock;
  if (reliableUnicastRegistrationCompletionBlock)
  {
    self->_reliableUnicastRegistrationCompletionBlock = 0;
  }

  [(IDSDSession *)self _checkAndUnassertRealTimeMode];
  sharedState12 = [(IDSDSession *)self sharedState];
  [sharedState12 clearAllTimers];

  ctClient = self->_ctClient;
  self->_ctClient = 0;

  cellularNetworkInterfaceBringupTime = self->_cellularNetworkInterfaceBringupTime;
  self->_cellularNetworkInterfaceBringupTime = 0;

  cellularNetworkInfoSessionEvent = self->_cellularNetworkInfoSessionEvent;
  self->_cellularNetworkInfoSessionEvent = 0;

  self->_cellularSlicingFlags = 0;
  networkSlicingReportingQueue = self->_networkSlicingReportingQueue;
  self->_networkSlicingReportingQueue = 0;

  v48.receiver = self;
  v48.super_class = IDSDSession;
  [(IDSDSession *)&v48 dealloc];
}

- (char)keyMaterial
{
  invitationManager = [(IDSDSession *)self invitationManager];

  return invitationManager + 8;
}

- (NSString)description
{
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  sharedState2 = [(IDSDSession *)self sharedState];
  accountID = [sharedState2 accountID];
  accountController = [(IDSDSession *)self accountController];
  sharedState3 = [(IDSDSession *)self sharedState];
  accountID2 = [sharedState3 accountID];
  v6 = [accountController accountWithUniqueID:accountID2];
  service = [v6 service];
  serviceName = [service serviceName];
  sharedState4 = [(IDSDSession *)self sharedState];
  destinations = [sharedState4 destinations];
  sharedState5 = [(IDSDSession *)self sharedState];
  transportType = [sharedState5 transportType];
  v13 = @"Unreliable";
  if (transportType == 1)
  {
    v13 = @"Reliable";
  }

  v14 = [NSString stringWithFormat:@"<%p> - uniqueID: %@   accountID: %@   service: %@   destinations: %@   transportType: %@", self, uniqueID, accountID, serviceName, destinations, v13];

  return v14;
}

- (IDSGlobalLinkProtocol)onTransportThread_globalLink
{
  onTransportThread_linkManager = [(IDSDSession *)self onTransportThread_linkManager];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v6 = [onTransportThread_linkManager globalLinkForSessionID:uniqueID];

  return v6;
}

- (unint64_t)_getExperimentGroupThresholdForCellularSlicing
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ids-threshold-percentage-for-cellular-slicing"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 100;
  }

  return unsignedIntegerValue;
}

- (BOOL)_shouldEnableCellularSlicingAfterDiceRoll
{
  _getExperimentGroupThresholdForCellularSlicing = [(IDSDSession *)self _getExperimentGroupThresholdForCellularSlicing];
  v4 = [NSNumber numberWithUnsignedInt:arc4random_uniform(0x64u)];
  v5 = +[IMLockdownManager sharedInstance];
  isCarrierInstall = [v5 isCarrierInstall];

  v7 = (_getExperimentGroupThresholdForCellularSlicing > [v4 unsignedIntValue]) | isCarrierInstall;
  if (v7)
  {
    self->_cellularSlicingFlags |= 0x40u;
  }

  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (isCarrierInstall)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v11 = 138412802;
    v12 = v9;
    v13 = 2048;
    v14 = _getExperimentGroupThresholdForCellularSlicing;
    v15 = 1024;
    unsignedIntValue = [v4 unsignedIntValue];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sliced cellular interface - isCarrierInstall (%@), currentServerBagPercentage (%lu), diceRoll (%u)", &v11, 0x1Cu);
  }

  return v7 & 1;
}

- (id)rtcNormalizeTime:(double)time
{
  if (time <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((time - self->_summaryReportBaseTime) * 1000.0);
  }

  return [NSNumber numberWithInt:v3];
}

- (id)buildRTCSummaryReport
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [(__CFDictionary *)Mutable setObject:&off_100C3BC08 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
  v4 = [NSNumber numberWithBool:self->_startedAsUPlusOneSession];
  [(__CFDictionary *)Mutable setObject:v4 forKeyedSubscript:IDSDSessionReportSummaryStartedAsUPlusOne];

  v5 = [NSNumber numberWithBool:self->_switchedToUPlusMany];
  [(__CFDictionary *)Mutable setObject:v5 forKeyedSubscript:IDSDSessionReportSummarySwitchedToUPlusMany];

  v6 = [(IDSDSession *)self rtcNormalizeTime:self->_joinStartTime];
  [(__CFDictionary *)Mutable setObject:v6 forKeyedSubscript:IDSDSessionReportSummaryJoinStartTimeKey];

  v7 = [(IDSDSession *)self rtcNormalizeTime:self->_joinSendStartTime];
  [(__CFDictionary *)Mutable setObject:v7 forKeyedSubscript:IDSDSessionReportSummaryJoinPushSendStartTimeKey];

  v8 = [(IDSDSession *)self rtcNormalizeTime:self->_joinSendEndTime];
  [(__CFDictionary *)Mutable setObject:v8 forKeyedSubscript:IDSDSessionReportSummaryJoinPushSendEndTimeKey];

  v9 = [(IDSDSession *)self rtcNormalizeTime:self->_joinRecvTime];
  [(__CFDictionary *)Mutable setObject:v9 forKeyedSubscript:IDSDSessionReportSummaryJoinPushRecvTimeKey];

  v10 = [(IDSDSession *)self rtcNormalizeTime:self->_clientChannelConnectTime];
  [(__CFDictionary *)Mutable setObject:v10 forKeyedSubscript:IDSDSessionReportSummaryClientChannelConnectedTimeKey];

  v11 = [(IDSDSession *)self rtcNormalizeTime:self->_firstMKMReceivedTime];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:IDSDSessionReportSummaryFirstMKMReceivedTimeKey];

  v12 = [(IDSDSession *)self rtcNormalizeTime:self->_firstMKMSentTime];
  [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:IDSDSessionReportSummaryFirstMKMSentTimeKey];

  v13 = [(IDSDSession *)self rtcNormalizeTime:self->_firstPacketReceivedTime];
  [(__CFDictionary *)Mutable setObject:v13 forKeyedSubscript:IDSDSessionReportSummaryFirstPacketReceivedTimeKey];

  return Mutable;
}

- (void)_reportRTC
{
  if (self->_hasReportedRTC)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Already reported RTC metrics; not reporting again.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    qrEventsForRTCReports = self->_qrEventsForRTCReports;
    self->_qrEventsForRTCReports = 0;
  }

  else
  {
    self->_hasReportedRTC = 1;
    v37 = [(IDSGFTMetricsCollector *)self->_metricsCollector collectForTimeBase:1 anonymize:self->_timeBase];
    v4 = [(IDSGFTMetricsCollector *)self->_metricsCollector collectForTimeBase:0 anonymize:self->_timeBase];
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cellularNetworkInfoSessionEvent = self->_cellularNetworkInfoSessionEvent;
      *buf = 138412290;
      v49 = *&cellularNetworkInfoSessionEvent;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "networkSlicing: Adding _cellularNetworkInfoSessionEvent=%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v33 = self->_cellularNetworkInfoSessionEvent;
      _IDSLogV();
    }

    if (self->_cellularNetworkInfoSessionEvent)
    {
      [(NSMutableArray *)self->_qrEventsForRTCReports addObject:?];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v7)
    {
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          v11 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v49 = *&v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "GFTMetrics will report %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v33 = v10;
            _IDSLogV();
          }
        }

        v7 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v7);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    qrEventsForRTCReports = v37;
    v12 = [(NSMutableArray *)qrEventsForRTCReports countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v12)
    {
      v13 = *v41;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(qrEventsForRTCReports);
          }

          [(NSMutableArray *)self->_qrEventsForRTCReports addObject:*(*(&v40 + 1) + 8 * j), v33];
        }

        v12 = [(NSMutableArray *)qrEventsForRTCReports countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v12);
    }

    v15 = self->_MKMOverPushTime - self->_MKMOverQRQUICTime;
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "time difference between MKM over push and MKM over QR QUIC: %.3f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v33 = *&v15;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v33 = *&v15;
          _IDSLogV();
        }
      }
    }

    if ([(NSMutableArray *)self->_qrEventsForRTCReports count])
    {
      buildRTCSummaryReport = [(IDSDSession *)self buildRTCSummaryReport];
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = *&buildRTCSummaryReport;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_reportRTC summary: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = buildRTCSummaryReport;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v34 = buildRTCSummaryReport;
            _IDSLogV();
          }
        }
      }

      [(NSMutableArray *)self->_qrEventsForRTCReports addObject:buildRTCSummaryReport, v34];
      v19 = objc_alloc_init(IMMessageContext);
      [v19 setShouldBoost:1];
      v20 = +[IDSDaemon sharedInstance];
      sharedState = [(IDSDSession *)self sharedState];
      pushTopic = [sharedState pushTopic];
      v23 = [v20 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v19];

      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        uniqueID = [sharedState2 uniqueID];
        *buf = 134218242;
        v49 = *&v23;
        v50 = 2112;
        v51 = uniqueID;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "didReceiveReport, broadcaster: %p for session: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState3 = [(IDSDSession *)self sharedState];
          [sharedState3 uniqueID];
          v36 = v35 = v23;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v28 = [(IDSDSession *)self sharedState:v23];
            [v28 uniqueID];
            v36 = v35 = v23;
            _IDSLogV();
          }
        }
      }

      v29 = [(IDSDSession *)self sharedState:v35];
      uniqueID2 = [v29 uniqueID];
      [v23 session:uniqueID2 didReceiveReport:self->_qrEventsForRTCReports];
    }

    else
    {
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No valid RTC reports to report", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    v32 = self->_qrEventsForRTCReports;
    self->_qrEventsForRTCReports = 0;
  }
}

- (void)_cleanupSessionConnection
{
  sharedState = [(IDSDSession *)self sharedState];
  connection = [sharedState connection];

  if (connection)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState2 uniqueID];
      sharedState3 = [(IDSDSession *)self sharedState];
      connection2 = [sharedState3 connection];
      *buf = 136315650;
      v23 = "[IDSDSession _cleanupSessionConnection]";
      v24 = 2112;
      v25 = uniqueID;
      v26 = 2048;
      v27 = connection2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: session %@ connection %p", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState4 uniqueID];
      sharedState5 = [(IDSDSession *)self sharedState];
      [sharedState5 connection];
      v21 = v20 = uniqueID2;
      v19 = "[IDSDSession _cleanupSessionConnection]";
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v13 = [(IDSDSession *)self sharedState:"[IDSDSession _cleanupSessionConnection]"];
        uniqueID3 = [v13 uniqueID];
        sharedState6 = [(IDSDSession *)self sharedState];
        [sharedState6 connection];
        v21 = v20 = uniqueID3;
        v19 = "[IDSDSession _cleanupSessionConnection]";
        _IDSLogV();
      }
    }

    v16 = [(IDSDSession *)self sharedState:v19];
    connection3 = [v16 connection];
    [connection3 setDelegate:0];

    sharedState7 = [(IDSDSession *)self sharedState];
    [sharedState7 setConnection:0];
  }
}

- (void)reportFirstMKMReceivedFromPush:(double)push
{
  if (!self->_hasReportedReceivedMKM)
  {
    self->_hasReportedReceivedMKM = 1;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      pushCopy = push;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reportMKMReceived received first MKM at %f time", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        pushCopy3 = push;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          pushCopy3 = push;
          _IDSLogV();
        }
      }
    }

    self->_MKMOverPushTime = push;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_qrEventsForRTCReports;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v7)
    {
      v8 = *v22;
      v9 = IDSDSessionReportQREventSubTypeKey;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 objectForKey:{v9, *&pushCopy3}];
          v13 = [v12 integerValue] == 311;

          if (v13)
          {
            v14 = IDSDSessionReportDurationKey;
            v15 = [v11 objectForKey:IDSDSessionReportDurationKey];
            [v15 doubleValue];
            v17 = v16;

            v18 = [NSNumber numberWithInt:((push - v17) * 1000.0)];
            [v11 setObject:v18 forKeyedSubscript:v14];

            v19 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              pushCopy = v17;
              v27 = 1024;
              v28 = ((push - v17) * 1000.0);
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "reportFirstMKMReceivedFromPush: get allocbind RTC report, time of allocbind response: %f, set the duration to %d ms", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  _IDSLogV();
                }
              }
            }

            goto LABEL_23;
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    if (qword_100CBD178 != -1)
    {
      sub_1009186A4();
    }

    self->_firstMKMReceivedTime = *&qword_100CBD180 * mach_continuous_time();
  }
}

- (void)reportPreKeyReceivedOverPushFromToken:(id)token
{
  v3 = [(IDSGFTMetricsCollector *)self->_metricsCollector joinCycleForToken:token];
  [v3 receivedPreKeyOverPush];
}

- (void)reportMKMReceivedOverPushFromToken:(id)token material:(id)material
{
  metricsCollector = self->_metricsCollector;
  materialCopy = material;
  tokenCopy = token;
  [(IDSGFTMetricsCollector *)metricsCollector receivedKMOverPushFromToken:tokenCopy];
  v8 = self->_metricsCollector;
  v9 = [materialCopy objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
  v10 = [(IDSGFTMetricsCollector *)v8 getOrCreateMKICycleFor:v9];
  [v10 receivedFromPush];

  [(IDSDSession *)self mapMKIFromMaterial:materialCopy token:tokenCopy];
}

- (void)reportMKMReceivedOverPushViaCacheForParticipantID:(unint64_t)d material:(id)material
{
  materialCopy = material;
  v11 = materialCopy;
  if (d)
  {
    v7 = [(IDSDSession *)self _getPushTokenFromParticipantID:d];
    metricsCollector = self->_metricsCollector;
    if (v7)
    {
      [(IDSGFTMetricsCollector *)self->_metricsCollector receivedKMOverPushViaCacheForToken:v7];
      [(IDSDSession *)self mapMKIFromMaterial:v11 token:v7];
    }

    else
    {
      v10 = [v11 objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
      [(IDSGFTMetricsCollector *)metricsCollector receivedUnknownKMOverPushViaCache:v10];
    }
  }

  else
  {
    v9 = self->_metricsCollector;
    v7 = [materialCopy objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
    [(IDSGFTMetricsCollector *)v9 receivedUnknownKMOverPushViaCache:v7];
  }
}

- (void)reportMKMReceivedOverQRFromToken:(id)token material:(id)material
{
  metricsCollector = self->_metricsCollector;
  materialCopy = material;
  tokenCopy = token;
  [(IDSGFTMetricsCollector *)metricsCollector receivedKMOverQRFromToken:tokenCopy];
  v8 = self->_metricsCollector;
  v9 = [materialCopy objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
  v10 = [(IDSGFTMetricsCollector *)v8 getOrCreateMKICycleFor:v9];
  [v10 receivedFromQR];

  [(IDSDSession *)self mapMKIFromMaterial:materialCopy token:tokenCopy];
}

- (void)reportSendRatchetedMKMToAVCForParticipantID:(unint64_t)d mki:(id)mki
{
  mkiCopy = mki;
  v6 = [(IDSDSession *)self _getPushTokenFromParticipantID:d];
  if (v6)
  {
    [(IDSGFTMetricsCollector *)self->_metricsCollector sendRatchetedKMtoAVCForToken:v6];
    metricsCollector = self->_metricsCollector;
    v8 = IDSGetUUIDDataFromNSUUID();
    v9 = [(IDSGFTMetricsCollector *)metricsCollector getOrCreateMKICycleFor:v8];
    [v9 receivedFromRatcheting];
  }
}

- (void)mapMKIFromMaterial:(id)material token:(id)token
{
  tokenCopy = token;
  if (material)
  {
    v9 = tokenCopy;
    v7 = [material objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
    v8 = v7;
    if (v7 && ([v7 isNull] & 1) == 0)
    {
      [(IDSGFTMetricsCollector *)self->_metricsCollector mapMKI:v8 toPushToken:v9];
    }

    tokenCopy = v9;
  }
}

- (void)_lightweightParticipantSync:(unsigned __int8)sync
{
  if (self->_isLightweightParticipant)
  {
    v13 = v3;
    v14 = v4;
    currentGenerationCounter = self->_currentGenerationCounter;
    if ((currentGenerationCounter - sync) >= 0x81u)
    {
      v8 = im_primary_queue();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100387DBC;
      v10[3] = &unk_100BD9A58;
      v10[4] = self;
      syncCopy = sync;
      v12 = currentGenerationCounter;
      v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v10);
      dispatch_async(v8, v9);
    }
  }
}

- (void)_buildCellularNetworkInfoSessionEvent:(id *)event
{
  objc_initWeak(&v9, self);
  networkSlicingReportingQueue = self->_networkSlicingReportingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100387FD0;
  block[3] = &unk_100BD9A80;
  objc_copyWeak(&v11, &v9);
  v6 = *&event->var14;
  v17 = *&event->var22[1];
  v18 = *event->var24;
  v7 = *event->var1;
  v12 = *event->var0;
  v13 = v7;
  v8 = *&event->var3;
  v14 = *event->var2;
  v19 = *&event->var25;
  v15 = v8;
  v16 = v6;
  dispatch_async(networkSlicingReportingQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v9);
}

- (id)getCellularNetworkInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v24 = 0;
    goto LABEL_21;
  }

  v5 = [(CoreTelephonyClient *)self->_ctClient getPreferredDataSubscriptionContextSync:0];
  if (!v5)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v6 = 28;
  v7 = 1;
  do
  {
    v8 = [(CoreTelephonyClient *)self->_ctClient getConnectionState:v5 connectionType:v6 error:0];
    if (v8)
    {
      v9 = v8;
      interfaceName = [v8 interfaceName];
      v11 = [interfaceName isEqualToString:infoCopy];

      if (v11)
      {
        break;
      }
    }

    v12 = v6 + 1;
    v7 = v6 < 0x23;
    v6 = (v6 + 1);
  }

  while (v12 != 36);
  ctClient = self->_ctClient;
  v14 = [[CTBundle alloc] initWithBundleType:1];
  v15 = [(CoreTelephonyClient *)ctClient copyBundleIdentifier:v5 bundleType:v14 error:0];

  v16 = 0;
  if ([v15 hasPrefix:@"com.apple."])
  {
    v16 = [v15 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
  }

  v17 = self->_ctClient;
  v18 = [[CTBundle alloc] initWithBundleType:2];
  v19 = [(CoreTelephonyClient *)v17 copyBundleIdentifier:v5 bundleType:v18 error:0];

  v20 = 0;
  if ([v19 hasPrefix:@"com.apple."])
  {
    v20 = [v19 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
  }

  v27[0] = infoCopy;
  v26[0] = IDSDSessionReportCellularNetworkInfoCellularInterfaceName;
  v26[1] = IDSDSessionReportCellularNetworkInfoIsNetworkSliceActive;
  v21 = [NSNumber numberWithBool:v7];
  v27[1] = v21;
  v26[2] = IDSDSessionReportCellularNetworkInfoHomeCarrierName;
  v22 = v16;
  if (!v16)
  {
    v22 = +[NSNull null];
  }

  v27[2] = v22;
  v26[3] = IDSDSessionReportCellularNetworkInfoServingCarrierName;
  v23 = v20;
  if (!v20)
  {
    v23 = +[NSNull null];
  }

  v27[3] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  if (!v20)
  {

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_25:

    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_17:

LABEL_20:
LABEL_21:

  return v24;
}

- (id)_getPushTokensFromParticipantIDArray:(id)array useNullPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  arrayCopy = array;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(IDSDSession *)self _getPushTokenFromParticipantIDNumber:*(*(&v16 + 1) + 8 * i), v16];
        if (v13)
        {
          [v7 addObject:v13];
        }

        else
        {
          if (placeholderCopy)
          {
            v14 = +[NSNull null];
            [v7 addObject:v14];
          }

          [(IDSGFTMetricsCollector *)self->_metricsCollector participantIdUnknown];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_getPushTokenFromParticipantID:(unint64_t)d
{
  v4 = [NSNumber numberWithUnsignedLongLong:d];
  v5 = [(IDSDSession *)self _getPushTokenFromParticipantIDNumber:v4];

  return v5;
}

- (id)_getPushTokenFromParticipantIDNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_participantIDToPushToken objectForKeyedSubscript:numberCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    rawToken = [v5 rawToken];
  }

  else
  {
    qrAllocator = [(IDSDSession *)self qrAllocator];
    sharedState = [(IDSDSession *)self sharedState];
    groupID = [sharedState groupID];
    rawToken = [qrAllocator getPushTokenFromParticipantID:groupID participantID:numberCopy];

    if (!rawToken)
    {
      v10 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = numberCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDSession: _getPushTokenFromParticipantID: token not found for participantID %@", &v12, 0xCu);
      }
    }
  }

  return rawToken;
}

- (id)_getURIFromParticipantIDNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_participantIDToURI objectForKeyedSubscript:numberCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    prefixedURI = [v5 prefixedURI];
  }

  else
  {
    qrAllocator = [(IDSDSession *)self qrAllocator];
    sharedState = [(IDSDSession *)self sharedState];
    groupID = [sharedState groupID];
    prefixedURI = [qrAllocator getURIFromParticipantID:groupID participantID:numberCopy];

    if (!prefixedURI)
    {
      v10 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = numberCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDSession: _getURIFromParticipantID: URI not found for participantID %@", &v12, 0xCu);
      }
    }
  }

  return prefixedURI;
}

- (id)_getParticipantIDFromPushToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [(NSMutableDictionary *)self->_participantIDToPushToken allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_participantIDToPushToken objectForKeyedSubscript:v9];
        if ([v10 isEqualToPushToken:tokenCopy])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    qrAllocator = [(IDSDSession *)self qrAllocator];
    sharedState = [(IDSDSession *)self sharedState];
    groupID = [sharedState groupID];
    rawToken = [tokenCopy rawToken];
    v6 = [qrAllocator getParticipantIDFromPushToken:groupID pushToken:rawToken];

    if (!v6)
    {
      v15 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSDSession: getParticipantIDFromPushToken: participantID not found for pushToken %@", buf, 0xCu);
      }
    }
  }

  v16 = v6;

  return v16;
}

- (void)setParticipantIDToURI:(id)i participantID:(id)d
{
  iCopy = i;
  dCopy = d;
  participantIDToURI = self->_participantIDToURI;
  if (!participantIDToURI)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9 = self->_participantIDToURI;
    self->_participantIDToURI = Mutable;

    participantIDToURI = self->_participantIDToURI;
  }

  [(NSMutableDictionary *)participantIDToURI setObject:iCopy forKeyedSubscript:dCopy];
}

- (void)registerClientChannel
{
  v3 = +[IDSClientChannelManager sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v6 = [@"session:" stringByAppendingString:uniqueID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100388DE4;
  v7[3] = &unk_100BD9AF8;
  v7[4] = self;
  [v3 registerClientChannelDestination:v6 connectHandler:v7];
}

- (void)unregisterClientChannel
{
  v6 = +[IDSClientChannelManager sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v5 = [@"session:" stringByAppendingString:uniqueID];
  [v6 unregisterClientChannelDestination:v5 clientUUID:self->_clientChannelUUID];
}

- (void)_invalidateClientChannel:(id)channel
{
  channelCopy = channel;
  v5 = +[IMLockdownManager sharedInstance];
  if ([v5 isInternalInstall])
  {
    idsDataChannelClientPID = self->_idsDataChannelClientPID;

    if (idsDataChannelClientPID >= 1)
    {
      if (qword_100CBD170 != -1)
      {
        sub_10091871C();
      }

      if (off_100CBD168 && (byte_100CBD160 & 1) == 0)
      {
        if (off_100CBD168(@"The client stopped reading incoming packets", 0, self->_idsDataChannelClientPID))
        {
          byte_100CBD160 = 1;
          v7 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = self->_idsDataChannelClientPID;
            *buf = 67109120;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully got the stack shot for the client PID: %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
LABEL_12:
            v14 = self->_idsDataChannelClientPID;
            _IDSLogV();
          }
        }

        else if ((byte_100CBD160 & 1) == 0)
        {
          v12 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = self->_idsDataChannelClientPID;
            *buf = 67109120;
            v17 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Couldn't get the stack shot for the client PID: %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLog())
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else
  {
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSClientChannel has excessively cached too many packets. Invalidating IDSClientChannel...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  [channelCopy invalidate];
  v10 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100389AAC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v10, v11);
}

- (void)writeToClientChannel:(id)channel packetBuffer:(id *)buffer metaData:(const char *)data metadataSize:(unsigned int)size
{
  v6 = *&size;
  channelCopy = channel;
  if (!channelCopy)
  {
    if (self->_isLightweightParticipant)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_96;
    }

    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState useQRDirectly])
    {
    }

    else
    {
      bypassUTun = self->_bypassUTun;

      if (!bypassUTun)
      {
        v43 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          if (buffer)
          {
            var2 = buffer->var2;
          }

          else
          {
            var2 = 0;
          }

          *buf = 134218752;
          bufferCopy = buffer;
          v78 = 2048;
          v79 = *&var2;
          v80 = 2048;
          dataCopy = data;
          v82 = 1024;
          LODWORD(v83) = v6;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "IDSClientChannel is nil - dropping packetBuffer %p (length %lu) metadata %p metadataSize %d", buf, 0x26u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_5;
      }
    }

    os_unfair_lock_lock(&self->_clientChannelLock);
    v14 = [IDSClientChannel alloc];
    sharedState2 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState2 uniqueID];
    v17 = [@"session:" stringByAppendingString:uniqueID];
    v18 = [(IDSClientChannel *)v14 initWithDestination:v17];
    clientChannel = self->_clientChannel;
    self->_clientChannel = v18;

    v11 = v18;
    os_unfair_lock_unlock(&self->_clientChannelLock);
    v20 = +[NSMutableArray array];
    [(IDSClientChannel *)v11 setCachedDataForClient:v20];

    goto LABEL_10;
  }

  v11 = channelCopy;
  if (self->_isLightweightParticipant)
  {
    goto LABEL_96;
  }

LABEL_10:
  if (![(IDSClientChannel *)v11 closed])
  {
    if (!v6 && (!buffer || !buffer->var2))
    {
      v42 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "writeToClientChannel: there is no real packet or metadata.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_16;
          }
        }
      }

      goto LABEL_96;
    }

    if ([(IDSDSession *)self _checkAndSendCachedDataForClient:v11]&& [(IDSClientChannel *)v11 writePacketBuffer:buffer metaData:data metadataSize:v6 moreComing:0])
    {
      self->_channelDataCachedTime = 0.0;
      goto LABEL_96;
    }

    cachedDataForClient = [(IDSClientChannel *)v11 cachedDataForClient];
    v66 = [[IDSClientChannelData alloc] initWithPacketBuffer:buffer metadata:data metadataSize:v6];
    [cachedDataForClient addObject:?];
    v65 = [cachedDataForClient count];
    if (v65 < 0x29)
    {
      goto LABEL_94;
    }

    v23 = +[IMLockdownManager sharedInstance];
    if ([v23 isInternalInstall])
    {
      excessiveCachingCount = [(IDSClientChannel *)v11 excessiveCachingCount];

      if (excessiveCachingCount)
      {
LABEL_37:
        if (![(IDSClientChannel *)v11 excessiveCachingReportCounter])
        {
          v37 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            bufferCopy = v65;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Added cachedData - total %lu cached client data to send", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v57 = v65;
            _IDSLogV();
          }
        }

        [(IDSClientChannel *)v11 setExcessiveCachingReportCounter:(([(IDSClientChannel *)v11 excessiveCachingReportCounter]+ 1) % 20)];
        [(IDSClientChannel *)v11 setExcessiveCachingCount:[(IDSClientChannel *)v11 excessiveCachingCount]+ 1];
        if ([(IDSClientChannel *)v11 excessiveCachingCount]>= 161)
        {
          v38 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            excessiveCachingCount2 = [(IDSClientChannel *)v11 excessiveCachingCount];
            *buf = 67109120;
            LODWORD(bufferCopy) = excessiveCachingCount2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "greater than threshold:  [clientChannel excessiveCachingCount]: %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v58 = COERCE_DOUBLE([(IDSClientChannel *)v11 excessiveCachingCount]);
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v58 = COERCE_DOUBLE([(IDSClientChannel *)v11 excessiveCachingCount]);
                _IDSLogV();
              }
            }
          }

          if (self->_channelDataCachedTime == 0.0)
          {
            if (qword_100CBD178 != -1)
            {
              sub_1009186A4();
            }

            self->_channelDataCachedTime = *&qword_100CBD180 * mach_continuous_time();
            v40 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              channelDataCachedTime = self->_channelDataCachedTime;
              *buf = 134217984;
              bufferCopy = *&channelDataCachedTime;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "writeToClientChannel: current data cached time: %f", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  _IDSLogV();
                }
              }
            }

            goto LABEL_95;
          }

          sharedState3 = [(IDSDSession *)self sharedState];
          if ([sharedState3 sharedSession])
          {
            v46 = 30.0;
          }

          else
          {
            v46 = 2.0;
          }

          v47 = sub_1003856DC();
          v48 = v47 - self->_channelDataCachedTime;
          if (v48 <= v46 && [(IDSClientChannel *)v11 excessiveCachingCount]< 1601)
          {
LABEL_95:

            goto LABEL_96;
          }

          v49 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = self->_channelDataCachedTime;
            *buf = 134218752;
            bufferCopy = *&v47;
            v78 = 2048;
            v79 = v50;
            v80 = 2048;
            dataCopy = *&v48;
            v82 = 2048;
            v83 = v46;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "invalid client channel: currentTime: %f, _channelDataCachedTime: %f, dataCachedDuration: %f, clientChannelTimedout: %f", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v60 = v48;
              v61 = v46;
              v58 = v47;
              v59 = self->_channelDataCachedTime;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v60 = v48;
                v61 = v46;
                v58 = v47;
                v59 = self->_channelDataCachedTime;
                _IDSLogV();
              }
            }
          }

          self->_channelDataCachedTime = 0.0;
          [(IDSDSession *)self _invalidateClientChannel:v11, *&v58, *&v59, *&v60, *&v61];
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v51 = cachedDataForClient;
        v52 = 0;
        v53 = [v51 countByEnumeratingWithState:&v71 objects:v75 count:16];
        if (v53)
        {
          v54 = *v72;
          while (2)
          {
            v55 = 0;
            v56 = v52;
            v52 += v53;
            do
            {
              if (*v72 != v54)
              {
                objc_enumerationMutation(v51);
              }

              if ([*(*(&v71 + 1) + 8 * v55) packetBuffer])
              {
                v52 = v56;
                goto LABEL_92;
              }

              ++v56;
              v55 = v55 + 1;
            }

            while (v53 != v55);
            v53 = [v51 countByEnumeratingWithState:&v71 objects:v75 count:16];
            if (v53)
            {
              continue;
            }

            break;
          }
        }

LABEL_92:

        if (v52 < v65)
        {
          [v51 removeObjectAtIndex:v52];
        }

LABEL_94:
        objc_initWeak(buf, v11);
        objc_initWeak(&location, self);
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_10038A7D0;
        v67[3] = &unk_100BD9B40;
        objc_copyWeak(&v68, buf);
        objc_copyWeak(&v69, &location);
        [(IDSClientChannel *)v11 setWriteHandler:v67];
        objc_destroyWeak(&v69);
        objc_destroyWeak(&v68);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
        goto LABEL_95;
      }

      accountController = [(IDSDSession *)self accountController];
      sharedState4 = [(IDSDSession *)self sharedState];
      accountID = [sharedState4 accountID];
      v25 = [accountController accountWithUniqueID:accountID];
      service = [v25 service];
      serviceName = [service serviceName];
      sharedState5 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState5 uniqueID];
      v23 = [NSString stringWithFormat:@"%@-%@", serviceName, uniqueID2];

      LODWORD(service) = IMGetDomainBoolForKey();
      v30 = IMGetDomainBoolForKey();
      v31 = IMGetDomainBoolForKey();
      v32 = IMGetDomainBoolForKey();
      v33 = IMGetDomainBoolForKey();
      if (service)
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      if (v30)
      {
        v34 |= 4u;
      }

      if (v31)
      {
        v34 |= 8u;
      }

      v35 = v34 | v32;
      if (v33)
      {
        v36 = v35 | 0x10;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        [v23 UTF8String];
        IDSNetworkingLogDump();
      }
    }

    goto LABEL_37;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    bufferCopy = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IDSClientChannel %p closed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_16:
        _IDSLogV();
      }
    }
  }

LABEL_96:
}

- (BOOL)_checkAndSendCachedDataForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientChannelLock);
  cachedDataForClient = [clientCopy cachedDataForClient];
  v6 = [cachedDataForClient count];
  if (!v6)
  {
    if (self->_channelDataCachedTime != 0.0)
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_checkAndSendCachedDataForClient: clear cached data time", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      self->_channelDataCachedTime = 0.0;
      [clientCopy setExcessiveCachingCount:0];
    }

LABEL_32:
    os_unfair_lock_unlock(&self->_clientChannelLock);
    v8 = 1;
    goto LABEL_33;
  }

  v7 = v6;
  if ([clientCopy closed])
  {
    goto LABEL_3;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Have %lu cached client data to send", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = v7;
    _IDSLogV();
  }

  v11 = 0;
  while (1)
  {
    v12 = [cachedDataForClient objectAtIndexedSubscript:{v11, v17}];
    if (![v12 metadataSize] && !objc_msgSend(v12, "packetBuffer"))
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_checkAndSendCachedDataForClient: there is no real packet or metadata", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      goto LABEL_21;
    }

    v13 = [clientCopy writePacketBuffer:objc_msgSend(v12 metaData:"packetBuffer") metadataSize:objc_msgSend(v12 moreComing:{"metadata"), objc_msgSend(v12, "metadataSize"), 1}];

    if (!v13)
    {
      break;
    }

LABEL_21:
    if (v7 == ++v11)
    {
      goto LABEL_31;
    }
  }

  if (v7 == v11)
  {
LABEL_31:
    cachedDataForClient2 = [clientCopy cachedDataForClient];
    [cachedDataForClient2 removeAllObjects];

    [clientCopy setWriteHandler:0];
    goto LABEL_32;
  }

  if (v11)
  {
    [clientCopy writePacketBuffer:0 metaData:0 metadataSize:0 moreComing:0];
    [cachedDataForClient removeObjectsInRange:{0, v11}];
  }

LABEL_3:
  os_unfair_lock_unlock(&self->_clientChannelLock);
  v8 = 0;
LABEL_33:

  return v8;
}

- (void)_checkAndRunClientChannelTests:(id)tests
{
  testsCopy = tests;
  if (IMGetDomainBoolForKey())
  {
    v6 = testsCopy;
    IDSTransportThreadAddBlockAfter();
  }

  if (IMGetDomainBoolForKey())
  {
    v5 = testsCopy;
    IDSTransportThreadAddBlockAfter();
    v4 = v5;
    IDSTransportThreadAddBlockAfter();
  }
}

- (void)_connectSocketDescriptor:(int)descriptor toClientChannel:(id)channel
{
  channelCopy = channel;
  if ([channelCopy transportType] == 1)
  {
    v7 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10038B9E4;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v7, v8);
  }

  else
  {
    [channelCopy setClientReady:1];
    if ([channelCopy connectWithTransportThread])
    {
      location[1] = _NSConcreteStackBlock;
      location[2] = 3221225472;
      location[3] = sub_10038B9FC;
      location[4] = &unk_100BD9B68;
      descriptorCopy = descriptor;
      location[5] = self;
      v9 = channelCopy;
      v28 = v9;
      IDSTransportThreadAddSocket();
      objc_initWeak(location, v9);
      objc_initWeak(&from, self);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10038BF68;
      v21[3] = &unk_100BD9B90;
      objc_copyWeak(&v23, &from);
      v10 = v9;
      v22 = v10;
      descriptorCopy2 = descriptor;
      objc_copyWeak(&v24, location);
      [v10 setPacketBufferHandler:v21];
      if ([v10 hasMetadata])
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10038CC5C;
        v19[3] = &unk_100BD9BB8;
        v19[4] = self;
        v20 = v10;
        v11 = objc_retainBlock(v19);
        utunController = [(IDSDSession *)self utunController];
        sharedState = [(IDSDSession *)self sharedState];
        uniqueID = [sharedState uniqueID];
        [utunController getLinkInformationForDevice:uniqueID completionHandler:v11];
      }

      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        socketDescriptor = self->_socketDescriptor;
        clientChannel = self->_clientChannel;
        *buf = 67109376;
        v33 = socketDescriptor;
        v34 = 2048;
        v35 = clientChannel;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "socket %d connected to IDSClientChannel %p", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      objc_destroyWeak(&v24);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
      v7 = v28;
    }

    else
    {
      v7 = im_primary_queue();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10038B9F0;
      v30[3] = &unk_100BD6ED0;
      v30[4] = self;
      v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v30);
      dispatch_async(v7, v18);
    }
  }
}

- (id)_extractFieldBytesFromMetadata:(const void *)metadata ofSize:(unsigned int)size packetBuffer:(id *)buffer
{
  v376 = -86;
  v375 = 0xAAAAAAAAAAAAAAAALL;
  v374 = -21846;
  v373 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v371 = v5;
  v372 = v5;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  IDSByteBufferInitForRead();
  if (IDSByteBufferReadField())
  {
    LODWORD(v337) = 0;
    v338 = 0.0;
    LODWORD(v339) = 0;
    v6 = 0;
    v341 = 0;
    v336 = IDSDataChannelEventNameKey;
    v340 = IDSDataChannelLinkIDKey;
    v342 = IDSDataChannelMKIUUIDKey;
    v332 = IDSDataChannelMKIArrivalTimeKey;
    v333 = IDSDataChannelPacketArrivalTimeKey;
    v330 = IDSDataChannelIsLocallyGeneratedKey;
    v335 = IDSDataChannelLastPacketReceivedTimeKey;
    v334 = IDSDataChannelLastPacketSentTimeKey;
    v331 = IDSGlobalLinkOptionSessionInfoRequestTypeKey;
    v346 = IDSDataChannelQualityOfServiceTimestampValueKey;
    v347 = IDSDataChannelQualityOfServicePayloadTypeKey;
    v344 = IDSDataChannelQualityOfServiceTransactionIDKey;
    v345 = IDSDataChannelQualityOfServiceOffsetBytesKey;
    v343 = IDSDataChannelQualityOfServiceDropOperationKey;
    do
    {
      v351 = v6;
      if (v376 <= 0xFBu)
      {
        switch(v376)
        {
          case 1u:
            if (v374 == 1)
            {
              v99 = *v375;
              v117 = [NSNumber numberWithChar:v99];
              [(__CFDictionary *)Mutable setObject:v117 forKeyedSubscript:@"ccmdtpli"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v118 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100CBD178 != -1)
                {
                  sub_1009186A4();
                }

                v119 = mach_continuous_time();
                *buf = 67109376;
                *v378 = v99;
                *&v378[4] = 2048;
                *&v378[6] = *&qword_100CBD180 * v119;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "got PacketLinkID %d [%013.6lf]", buf, 0x12u);
              }

              if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
              {
                goto LABEL_862;
              }

              if (qword_100CBD178 != -1)
              {
                goto LABEL_864;
              }

              goto LABEL_350;
            }

            v247 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 2u:
            if (v374 == 4)
            {
              v151 = v375;
              v152 = *v375++;
              *&v153 = *v375;
              v375 = v151 + 4;
              v154 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v378 = v152;
                *&v378[4] = 1024;
                *&v378[6] = LODWORD(v153);
                _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "got connectedLinkID %d connectedLinkAttributes %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v152;
                v326 = v153;
                _IDSLogV();
              }

              goto LABEL_862;
            }

            v251 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkConnected should be 4 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 3u:
            if (v374 == 1)
            {
              v111 = *v375++;
              v159 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v111;
                _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "got disconnectedLinkID %d", buf, 8u);
              }

              if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
              {
                goto LABEL_862;
              }

              goto LABEL_179;
            }

            v253 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v253, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkDisconnected should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 4u:
            if (v374 == 1)
            {
              v137 = *v375++;
              v138 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v137;
                _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "got defaultLinkID %d", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v137;
                _IDSLogV();
              }

              onTransportThread_globalLink = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink setDefaultUnderlyingLink:v137];

              goto LABEL_862;
            }

            v249 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DefaultLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 5u:
            if (v374 == 1)
            {
              v111 = *v375++;
              v112 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v111;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "got ratType %u", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
LABEL_179:
                uniqueID2 = v111;
                _IDSLogV();
              }

              goto LABEL_862;
            }

            v245 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RATChanged should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 6u:
            if (v374 == 6)
            {
              v92 = v375;
              *&v93 = *v375++;
              v94 = *v375;
              v375 = v92 + 2;
              v95 = *(v92 + 2);
              v375 = v92 + 6;
              onTransportThread_globalLink2 = [(IDSDSession *)self onTransportThread_globalLink];
              v97 = bswap32(v95);
              [onTransportThread_globalLink2 setPacketNotificationFilter:SLOBYTE(v93) uniqueTag:v97 isEnabled:v94 != 0];

              v98 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                *v378 = v97;
                *&v378[8] = 1024;
                *&v378[10] = LODWORD(v93);
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "got basebandRegKey %lu (linkID: %d)", buf, 0x12u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v97;
                v326 = v93;
                _IDSLogV();
              }

              goto LABEL_862;
            }

            v241 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_BasebandRegistrationKey should be 4 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 7u:
            if (v374 == 1)
            {
              v337 = *v375++;
              v116 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v337;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey %u", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v337;
                _IDSLogV();
              }

              goto LABEL_728;
            }

            v246 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 8u:
            if (v341)
            {
              if (((10 * v337) | 1) == v374)
              {
                v120 = +[NSMutableArray array];
                v121 = *v375++;
                for (i = v337; i; --i)
                {
                  v123 = v375;
                  v124 = *v375++;
                  v125 = *v375;
                  v375 = v123 + 5;
                  v126 = v123[5];
                  v375 = v123 + 6;
                  v127 = *(v123 + 3);
                  v128 = *(v123 + 4);
                  v375 = v123 + 10;
                  v381[0] = v347;
                  uniqueID2 = [NSNumber numberWithUnsignedChar:v124, uniqueID2];
                  v382[0] = uniqueID2;
                  v381[1] = v346;
                  v130 = [NSNumber numberWithUnsignedInt:bswap32(v125)];
                  v382[1] = v130;
                  v381[2] = v345;
                  v131 = [NSNumber numberWithUnsignedChar:v126];
                  v382[2] = v131;
                  v381[3] = v344;
                  v132 = [NSNumber numberWithUnsignedShort:bswap32(v127) >> 16];
                  v382[3] = v132;
                  v381[4] = v343;
                  v133 = [NSNumber numberWithUnsignedShort:bswap32(v128) >> 16];
                  v382[4] = v133;
                  v134 = [NSDictionary dictionaryWithObjects:v382 forKeys:v381 count:5];

                  [v120 addObject:v134];
                }

                onTransportThread_globalLink3 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink3 dropIPPackets:v121 payloadArray:v120];

                v136 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v378 = v120;
                  _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "got basebandQueueFlush %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  uniqueID2 = v120;
                  _IDSLogV();
                }
              }

              else
              {
                v296 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v378 = (10 * v337) | 1;
                  *&v378[4] = 1024;
                  *&v378[6] = v374;
                  *&v378[10] = 1024;
                  *&v378[12] = v376;
                  _os_log_impl(&_mh_execute_header, v296, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = (10 * v337) | 1u;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      *&v326 = v374;
                      *&v327 = v376;
                      uniqueID2 = (10 * v337) | 1u;
                      _IDSLogV();
                    }
                  }
                }
              }

LABEL_728:
              LOBYTE(v341) = 1;
            }

            else
            {
              v248 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_BasebandQueueFlushPayloadKey should know its size. needs kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }
              }

              LOBYTE(v341) = 0;
            }

            goto LABEL_862;
          case 9u:
            if (v374 == 10)
            {
              v379 = *v375;
              v380 = *(v375 + 4);
              v106 = +[NSMutableArray array];
              for (j = 0; j != 10; ++j)
              {
                if (!*(&v379 + j))
                {
                  break;
                }

                v108 = [NSNumber numberWithChar:?];
                [v106 addObject:v108];
              }

              v109 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v378 = v106;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_DiscardLinkIDsKey %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v106;
                _IDSLogV();
              }

              onTransportThread_globalLink4 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink4 stopKeepAlive:v106];
            }

            else
            {
              v244 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 10;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_KeepAliveLinksKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 10;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 10;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0xAu:
            if (v374 == 1)
            {
              *&v338 = *v375;
              v162 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = LODWORD(v338);
                _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_PreConnectionDataSizeKey %u", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = *&v338;
                _IDSLogV();
              }

              goto LABEL_835;
            }

            v255 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataSizeKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0xBu:
            if ((v341 & 0x100000000) != 0)
            {
              if (v374 == LOBYTE(v338))
              {
                v155 = [NSData dataWithBytes:v375 length:LODWORD(v338)];
                v156 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *v378 = v155;
                  *&v378[8] = 1024;
                  *&v378[10] = LODWORD(v338);
                  _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "got preConnectionData %@, size:%u bytes.", buf, 0x12u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  uniqueID2 = v155;
                  v326 = v338;
                  _IDSLogV();
                }

                onTransportThread_globalLink5 = [(IDSDSession *)self onTransportThread_globalLink];
                v158 = onTransportThread_globalLink5;
                if (onTransportThread_globalLink5)
                {
                  [onTransportThread_globalLink5 sendSKEData:v155];
                }

                else
                {
                  v319 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v319, OS_LOG_TYPE_DEFAULT, "sendSKEData failed because no GlobalLink yet. Will send later.", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        _IDSLogV();
                      }
                    }
                  }

                  objc_storeStrong(&self->_skeData, v155);
                }
              }

              else
              {
                v297 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v378 = LODWORD(v338);
                  *&v378[4] = 1024;
                  *&v378[6] = v374;
                  *&v378[10] = 1024;
                  *&v378[12] = v376;
                  _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = *&v338;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      *&v326 = v374;
                      *&v327 = v376;
                      uniqueID2 = *&v338;
                      _IDSLogV();
                    }
                  }
                }
              }

LABEL_835:
              BYTE4(v341) = 1;
            }

            else
            {
              v252 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey should know its size. needs kClientChannelMetadataType_PreConnectionDataSizeKey", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }
              }

              BYTE4(v341) = 0;
            }

            goto LABEL_862;
          case 0xCu:
            if (v374 == 2)
            {
              v83 = v375;
              v84 = *v375++;
              v85 = *v375;
              v375 = v83 + 2;
              onTransportThread_globalLink6 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink6 updateProtocolQualityOfService:v84 isGood:v85 != 0];

              v87 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = @"YES";
                if (!v85)
                {
                  v88 = @"NO";
                }

                *buf = 138412546;
                *v378 = v88;
                *&v378[8] = 1024;
                *&v378[10] = v84;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "got updateQoSIsGood %@ (linkID: %d)", buf, 0x12u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v89 = @"YES";
                if (!v85)
                {
                  v89 = @"NO";
                }

                uniqueID2 = v89;
                *&v326 = v84;
                _IDSLogV();
              }

              goto LABEL_862;
            }

            v240 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 2;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_UpdateQoSIsGoodKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 2;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_520;
                }
              }
            }

            goto LABEL_862;
          case 0xDu:
            if (v374 == 1)
            {
              v160 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_QueryRSSI", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              *buf = 0;
              LODWORD(v379) = 0;
              v370 = 0;
              onTransportThread_globalLink7 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink7 currentCellularSignalStrength:buf signalStrength:&v379 signalGrade:&v370];

              [(IDSDSession *)self didReceiveCurrentCellularSignalRaw:*buf signalStrength:v379 signalGrade:v370];
              goto LABEL_862;
            }

            v254 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 1;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_QueryRSSI should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 1;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_575;
                }
              }
            }

            goto LABEL_862;
          case 0xEu:
            if (v374 == 2)
            {
              v99 = __rev16(*v375);
              v375 += 2;
              v100 = [NSNumber numberWithUnsignedShort:v99];
              [(__CFDictionary *)Mutable setObject:v100 forKeyedSubscript:@"ccmdttc"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v101 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100CBD178 != -1)
                {
                  sub_1009186A4();
                }

                v102 = mach_continuous_time();
                *buf = 67109376;
                *v378 = v99;
                *&v378[4] = 2048;
                *&v378[6] = *&qword_100CBD180 * v102;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "got trafficClass %u [%013.6lf]", buf, 0x12u);
              }

              if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
              {
                goto LABEL_862;
              }

              if (qword_100CBD178 != -1)
              {
                goto LABEL_864;
              }

              goto LABEL_350;
            }

            v242 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 2;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TrafficClassKey should be %u byte, not %u bytes, field: %u", buf, 0x14u);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            *&v326 = v374;
            *&v327 = v376;
            uniqueID2 = 2;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_520;
          case 0xFu:
            if (v374 == 5)
            {
              v49 = v375;
              v50 = *v375++;
              v51 = bswap32(*v375);
              v375 = v49 + 5;
              v52 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v378 = v51;
                *&v378[4] = 1024;
                *&v378[6] = v50;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "got maxBitrate %u (linkID: %d)", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v51;
                *&v326 = v50;
                _IDSLogV();
              }
            }

            else
            {
              v236 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 5;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_MaxBitrateKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 5;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 5;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x12u:
            if (v374 == 8)
            {
              buffer->var30 = bswap64(*v375);
              goto LABEL_862;
            }

            v258 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 8;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v258, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ExpireTimestamp should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 8;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_569;
                }
              }
            }

            goto LABEL_862;
          case 0x13u:
            if (v374 == 1)
            {
              v81 = *v375 != 0;
              onTransportThread_globalLink8 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink8 setWiFiAssistState:v81];

              goto LABEL_862;
            }

            v238 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 1;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_WiFiAssistEnableKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 1;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_575;
                }
              }
            }

            goto LABEL_862;
          case 0x14u:
            if (v374 != 1)
            {
              v259 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 1;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DSCPKey should be %u byte, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 1;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_575:
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 1;
                    _IDSLogV();
                  }
                }
              }

              goto LABEL_862;
            }

            v99 = *v375++;
            v167 = [NSNumber numberWithUnsignedChar:v99];
            [(__CFDictionary *)Mutable setObject:v167 forKeyedSubscript:@"ccmdtdscp"];

            if (!self->_verboseFunctionalLogging)
            {
              goto LABEL_862;
            }

            v168 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
            {
              if (qword_100CBD178 != -1)
              {
                sub_1009186A4();
              }

              v169 = mach_continuous_time();
              *buf = 67109376;
              *v378 = v99;
              *&v378[4] = 2048;
              *&v378[6] = *&qword_100CBD180 * v169;
              _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "got DSCP %u [%013.6lf]", buf, 0x12u);
            }

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
            {
              goto LABEL_862;
            }

            if (qword_100CBD178 != -1)
            {
              goto LABEL_864;
            }

            goto LABEL_350;
          case 0x15u:
            if (v374 == 16)
            {
              *buffer->var29 = *v375;
            }

            else
            {
              v257 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 16;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketUUID should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 16;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 16;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x17u:
            if (v374 == 1)
            {
              v99 = *v375;
              v192 = [NSNumber numberWithUnsignedChar:v99];
              [(__CFDictionary *)Mutable setObject:v192 forKeyedSubscript:@"ccmdtcp"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v193 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100CBD178 != -1)
                {
                  sub_1009186A4();
                }

                v194 = mach_continuous_time();
                *buf = 67109376;
                *v378 = v99;
                *&v378[4] = 2048;
                *&v378[6] = *&qword_100CBD180 * v194;
                _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "got Channel Priority %u [%013.6lf]", buf, 0x12u);
              }

              if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
              {
                goto LABEL_862;
              }

              if (qword_100CBD178 != -1)
              {
                goto LABEL_864;
              }

              goto LABEL_350;
            }

            v262 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v262, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PriorityKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x18u:
            if (v374 == 8)
            {
              v99 = bswap64(*v375);
              v375 += 8;
              v195 = [NSNumber numberWithUnsignedLongLong:v99];
              [(__CFDictionary *)Mutable setObject:v195 forKeyedSubscript:@"ccmdtpid"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v196 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100CBD178 != -1)
                {
                  sub_1009186A4();
                }

                v197 = mach_continuous_time();
                *buf = 134218240;
                *v378 = v99;
                *&v378[8] = 2048;
                *&v378[10] = *&qword_100CBD180 * v197;
                _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "got Participant ID %llu [%013.6lf]", buf, 0x16u);
              }

              if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
              {
                goto LABEL_862;
              }

              if (qword_100CBD178 != -1)
              {
                goto LABEL_864;
              }

              goto LABEL_350;
            }

            v264 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v264, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PriorityKey should be 8 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x1Du:
            if (v374 != 1)
            {
              v260 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v378 = v374;
                *&v378[4] = 1024;
                *&v378[6] = v376;
                _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionInfoKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              if (!os_log_shim_legacy_logging_enabled())
              {
                goto LABEL_862;
              }

              if (!_IDSShouldLogTransport())
              {
                goto LABEL_862;
              }

              uniqueID2 = v374;
              *&v326 = v376;
              _IDSLogTransport();
              if (!_IDSShouldLog())
              {
                goto LABEL_862;
              }

              goto LABEL_641;
            }

            v170 = *v375;
            v171 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
            {
              if (v170)
              {
                v172 = @"YES";
              }

              else
              {
                v172 = @"NO";
              }

              sharedState = [(IDSDSession *)self sharedState];
              groupID = [sharedState groupID];
              *buf = 138412546;
              *v378 = v172;
              *&v378[8] = 2112;
              *&v378[10] = groupID;
              _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_EncryptionInfoKey %@ group: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              if (v170)
              {
                v175 = @"YES";
              }

              else
              {
                v175 = @"NO";
              }

              sharedState2 = [(IDSDSession *)self sharedState];
              [sharedState2 groupID];
              uniqueID2 = v175;
              v326 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              _IDSLogV();
            }

            if (v170)
            {
              sharedState3 = [(IDSDSession *)self sharedState];
              groupID2 = [sharedState3 groupID];

              if (groupID2)
              {
                v179 = +[IDSGroupEncryptionController sharedInstance];
                sharedState4 = [(IDSDSession *)self sharedState];
                accountID = [sharedState4 accountID];
                sharedState5 = [(IDSDSession *)self sharedState];
                fromURI = [sharedState5 fromURI];
                sharedState6 = [(IDSDSession *)self sharedState];
                groupID3 = [sharedState6 groupID];
                [v179 setAccount:accountID fromURI:fromURI forGroup:groupID3];

                v186 = im_primary_queue();
                v369[0] = _NSConcreteStackBlock;
                v369[1] = 3221225472;
                v369[2] = sub_100394E00;
                v369[3] = &unk_100BD6ED0;
                v369[4] = self;
                v187 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v369);
                dispatch_async(v186, v187);
              }

              goto LABEL_862;
            }

            v308 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionInfoKey FALSE. We won't pass the encryption information to the client.", buf, 2u);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_656;
          case 0x23u:
            if (v374 == 1)
            {
              v212 = *v375;
              if (v212 < 0xD)
              {
                v351 = *v375;
                if (self->_verboseFunctionalLogging)
                {
                  v298 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v378 = v212;
                    _os_log_impl(&_mh_execute_header, v298, OS_LOG_TYPE_DEFAULT, "got streamIDCount %u", buf, 8u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    uniqueID2 = v212;
                    _IDSLogV();
                  }
                }
              }

              else
              {
                v213 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v378 = v212;
                  _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "got invalid streamIDCount %u", buf, 8u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  uniqueID2 = v212;
                  _IDSLogV();
                }

                v351 = 0;
              }
            }

            goto LABEL_862;
          case 0x24u:
            if (v6 >= 1)
            {
              if (v374 == 2 * (v6 & 0x7F))
              {
                v70 = v6;
                var3 = buffer->var24[0].var3;
                do
                {
                  v72 = v375 + 2;
                  *var3 = bswap32(*v375) >> 16;
                  v375 = v72;
                  if (self->_verboseFunctionalLogging)
                  {
                    v73 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = *var3;
                      *buf = 67109120;
                      *v378 = v74;
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "got streamID %u", buf, 8u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        uniqueID2 = *var3;
                        _IDSLogTransport();
                        if (_IDSShouldLog())
                        {
                          uniqueID2 = *var3;
                          _IDSLogV();
                        }
                      }
                    }
                  }

                  ++var3;
                  --v70;
                }

                while (v70);
                buffer->var24[0].var20 |= 2u;
                buffer->var24[0].var2 = v6;
              }

              else
              {
                v289 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v378 = v374;
                  *&v378[4] = 1024;
                  *&v378[6] = 2 * (v6 & 0x7F);
                  _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StreamIDsKey: size mismatch (%u != %u), ignore.", buf, 0xEu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    uniqueID2 = v374;
                    *&v326 = 2 * (v6 & 0x7Fu);
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      uniqueID2 = v374;
                      *&v326 = 2 * (v6 & 0x7Fu);
                      _IDSLogV();
                    }
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x25u:
            if (v374 == 1)
            {
              [(__CFDictionary *)Mutable setObject:&__kCFBooleanTrue forKeyedSubscript:@"ccmdtipc"];
              goto LABEL_862;
            }

            v239 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CountPacketKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0x26u:
            if (v374 == 2)
            {
              v99 = __rev16(*v375);
              v375 += 2;
              v103 = [NSNumber numberWithUnsignedShort:v99];
              [(__CFDictionary *)Mutable setObject:v103 forKeyedSubscript:@"ccmdtpgid"];

              if (self->_verboseFunctionalLogging)
              {
                v104 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                {
                  if (qword_100CBD178 != -1)
                  {
                    sub_1009186A4();
                  }

                  v105 = mach_continuous_time();
                  *buf = 67109376;
                  *v378 = v99;
                  *&v378[4] = 2048;
                  *&v378[6] = *&qword_100CBD180 * v105;
                  _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "got probeGroupID %u [%013.6lf]", buf, 0x12u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLog())
                  {
                    if (qword_100CBD178 != -1)
                    {
LABEL_864:
                      sub_1009186A4();
                    }

LABEL_350:
                    v326 = *&qword_100CBD180 * mach_continuous_time();
                    uniqueID2 = v99;
                    _IDSLogV();
                  }
                }
              }

              goto LABEL_862;
            }

            v243 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProbeGroupIDKey should be 2 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x27u:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v68 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              v69 = v68;
              if (v68)
              {
                [v68 setObject:&off_100C3BC68 forKeyedSubscript:v331];
                [(IDSDSession *)self requestSessionInfoWithOptions:v69];
              }

              else
              {
                v301 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v301, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_SessionInfoKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v275 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v275, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_SessionInfoKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x28u:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v188 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v188)
              {
                v189 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v378 = v188;
                  _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey: send stats request with options: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    uniqueID2 = v188;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      uniqueID2 = v188;
                      _IDSLogV();
                    }
                  }
                }

                v362 = _NSConcreteStackBlock;
                v363 = 3221225472;
                v364 = sub_10039514C;
                v365 = &unk_100BD9AA8;
                selfCopy = self;
                v367 = v188;
                IDSTransportThreadAddBlock();
              }

              else
              {
                v305 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_StatsKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v279 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v279, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_StatsKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x29u:
            if (v374 == 1)
            {
              v44 = *v375;
              v210 = [NSNumber numberWithUnsignedChar:v44];
              [(__CFDictionary *)Mutable setObject:v210 forKeyedSubscript:@"ccmdtcdc"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v211 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v44;
                _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CurrentDatagramCount %u", buf, 8u);
              }

              if (!os_log_shim_legacy_logging_enabled())
              {
                goto LABEL_862;
              }

              if (!_IDSShouldLogTransport())
              {
                goto LABEL_862;
              }

              uniqueID2 = v44;
              _IDSLogTransport();
              if (!_IDSShouldLog())
              {
                goto LABEL_862;
              }

              goto LABEL_365;
            }

            v265 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v265, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CurrentDatagramCount should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x2Au:
            if (v374 == 1)
            {
              v44 = *v375;
              v163 = [NSNumber numberWithUnsignedChar:v44];
              [(__CFDictionary *)Mutable setObject:v163 forKeyedSubscript:@"ccmdttdc"];

              if (!self->_verboseFunctionalLogging)
              {
                goto LABEL_862;
              }

              v164 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v44;
                _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TotalDatagramCount %u", buf, 8u);
              }

              if (!os_log_shim_legacy_logging_enabled())
              {
                goto LABEL_862;
              }

              if (!_IDSShouldLogTransport())
              {
                goto LABEL_862;
              }

              uniqueID2 = v44;
              _IDSLogTransport();
              if (!_IDSShouldLog())
              {
                goto LABEL_862;
              }

              goto LABEL_365;
            }

            v256 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TotalDatagramCount should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x2Du:
            if (v374 == 2)
            {
              v44 = __rev16(*v375);
              v375 += 2;
              v45 = [NSNumber numberWithUnsignedShort:v44];
              [(__CFDictionary *)Mutable setObject:v45 forKeyedSubscript:@"ccmdtsid"];

              v46 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109120;
                *v378 = v44;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "got statsID %u", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
LABEL_365:
                uniqueID2 = v44;
                _IDSLogV();
              }

              goto LABEL_862;
            }

            v233 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsID should be 2 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_862;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_862;
            }

            uniqueID2 = v374;
            *&v326 = v376;
            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_862;
            }

            goto LABEL_641;
          case 0x33u:
            if (v374 == 1)
            {
              buffer->var24[0].var20 |= 0x80u;
              buffer->var24[0].var9 = 1;
              goto LABEL_862;
            }

            v266 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_OptOutPriorityFilter should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0x34u:
            if (v374 == 1)
            {
              buffer->var24[0].var20 |= 0x100u;
              buffer->var24[0].var12 = 1;
              goto LABEL_862;
            }

            v234 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TransitionPacketFlag should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0x35u:
            if (v374 == 1)
            {
              v53 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "got kClientChannelMetadataType_ForceUpdateEncryptionInfoKey", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              sharedState7 = [(IDSDSession *)self sharedState];
              groupID4 = [sharedState7 groupID];

              if (groupID4)
              {
                v56 = im_primary_queue();
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100394FA8;
                block[3] = &unk_100BD6ED0;
                block[4] = self;
                v57 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
                dispatch_async(v56, v57);
              }

              else
              {
                v309 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
                {
                  sharedState8 = [(IDSDSession *)self sharedState];
                  uniqueID = [sharedState8 uniqueID];
                  *buf = 138412290;
                  *v378 = uniqueID;
                  _os_log_impl(&_mh_execute_header, v309, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ForceUpdateEncryptionInfoKey coudln't get the group ID for the session %@!", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    sharedState9 = [(IDSDSession *)self sharedState];
                    uniqueID2 = [sharedState9 uniqueID];
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      sharedState10 = [(IDSDSession *)self sharedState];
                      uniqueID2 = [sharedState10 uniqueID];
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_862;
            }

            v237 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ForceUpdateEncryptionInfoKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0x39u:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v42 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v42)
              {
                onTransportThread_globalLink9 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink9 startLinkProbing:v42];
              }

              else
              {
                v299 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v299, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_StartLinkProbingKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v273 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_StartLinkProbingKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x3Au:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v165 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v165)
              {
                onTransportThread_globalLink10 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink10 stopLinkProbing:v165];
              }

              else
              {
                v304 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_StopLinkProbingKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v278 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_StopLinkProbingKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x3Bu:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v47 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v47)
              {
                onTransportThread_globalLink11 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink11 queryLinkProbingStatus:v47];
              }

              else
              {
                v300 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v300, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_QueryLinkStatusKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v274 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_QueryLinkStatusKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x40u:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v90 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v90)
              {
                onTransportThread_globalLink12 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink12 flushLinkProbingStatus:v90];
              }

              else
              {
                v302 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_flushLinkProbingStatusKey", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_861;
            }

            v276 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_flushLinkProbingStatusKey.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_698;
                }
              }
            }

            goto LABEL_861;
          case 0x41u:
            if (v374 == 4)
            {
              v214 = *v375;
              v375 += 4;
              onTransportThread_globalLink13 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink13 setRemoteDeviceVersion:bswap32(v214)];

              goto LABEL_862;
            }

            v267 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 4;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RemoteDeviceVersionKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 4;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_623;
                }
              }
            }

            goto LABEL_862;
          case 0x42u:
            if (v374)
            {
              v58 = objc_alloc_init(NSMutableArray);
              v59 = v374;
              v60 = v374 >> 3;
              v61 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v378 = v374;
                *&v378[4] = 1024;
                *&v378[6] = v60;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_MKMParticipantIDsKey: size: %u, count: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = v374;
                  v326 = *&v60;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = v374;
                    v326 = *&v60;
                    _IDSLogV();
                  }
                }
              }

              if (v59 >= 8)
              {
                v290 = 0;
                do
                {
                  v291 = *&v375[v290];
                  v3252 = [NSNumber numberWithUnsignedLongLong:v291, uniqueID2];
                  [v58 addObject:v3252];

                  v293 = [(IDSDSession *)self _getPushTokenFromParticipantID:v291];
                  if (v293)
                  {
                    v294 = [(IDSGFTMetricsCollector *)self->_metricsCollector joinCycleForToken:v293];
                    [v294 requestedKM];
                  }

                  else
                  {
                    v295 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      *v378 = v291;
                      _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_DEFAULT, "Couldn't get URI for MKMParticipantID %llu", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        uniqueID2 = v291;
                        _IDSLogTransport();
                        if (_IDSShouldLog())
                        {
                          uniqueID2 = v291;
                          _IDSLogV();
                        }
                      }
                    }
                  }

                  v290 += 8;
                }

                while (8 * v60 != v290);
              }

              v62 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v378 = v58;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "participantIDArray: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = v58;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = v58;
                    _IDSLogV();
                  }
                }
              }

              v63 = +[IDSGroupEncryptionController sharedInstance];
              sharedState11 = [(IDSDSession *)self sharedState];
              groupID5 = [sharedState11 groupID];
              sharedState12 = [(IDSDSession *)self sharedState];
              uniqueID3 = [sharedState12 uniqueID];
              [v63 sendKeyMaterialsRecoveryRequestToParticipants:v58 groupID:groupID5 sessionID:uniqueID3 requireMKM:1 requireSKM:0];
            }

            else
            {
              v272 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v272, OS_LOG_TYPE_DEFAULT, "Couldn't get valid kClientChannelMetadataType_MKMParticipantIDsKey.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_656:
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x43u:
            if (v374 == 1)
            {
              [(__CFDictionary *)Mutable setObject:&__kCFBooleanTrue forKeyedSubscript:@"ccmdtnhbhe"];
              goto LABEL_862;
            }

            v231 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = 1;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NeedsHBHEncryption should be %u byte, not %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = 1;
                *&v326 = v374;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_599;
                }
              }
            }

            goto LABEL_862;
          case 0x44u:
            if (v374 == 2)
            {
              v142 = v375;
              v143 = *v375++;
              v144 = *v375;
              v375 = v142 + 2;
              if (v143)
              {
                self->_switchedToUPlusMany = 0;
                sharedState13 = [(IDSDSession *)self sharedState];
                [sharedState13 setIsInUPlusOneMode:1];

                sharedState14 = [(IDSDSession *)self sharedState];
                [sharedState14 setIsInitiator:v144 != 0];

                v147 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                {
                  v148 = @"NO";
                  if (v144)
                  {
                    v148 = @"YES";
                  }

                  *buf = 138412290;
                  *v378 = v148;
                  _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_IsUPlusOneEnabledKey [U+1] enabling with isInitiator: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
                {
                  v149 = v144 ? @"YES" : @"NO";
                  uniqueID2 = v149;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = v149;
                    _IDSLogV();
                  }
                }

                sharedState15 = [(IDSDSession *)self sharedState];
                [sharedState15 clearAllTimers];
              }

              else
              {
                self->_switchedToUPlusMany = 1;
                sharedState15 = [(IDSDSession *)self sharedState];
                [sharedState15 setIsInUPlusOneMode:0];
              }

              sharedState16 = [(IDSDSession *)self sharedState];
              -[IDSGFTMetricsCollector setIsInitiator:](self->_metricsCollector, "setIsInitiator:", [sharedState16 isInitiator]);

              onTransportThread_globalLink14 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink14 enableUPlusOneSessionForTransition:v143 != 0];
            }

            else
            {
              v250 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 2;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_IsUPlusOneEnabledKey should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 2;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_520:
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 2;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x45u:
            if (v374 == 8)
            {
              v216 = *v375;
              v217 = v375[1];
              v218 = v375[2];
              v219 = v375[3];
              v220 = v375[4];
              v221 = v375[5];
              v328 = v375[6];
              v329 = v375[7];
              v375 += 8;
              sharedState17 = [(IDSDSession *)self sharedState];
              groupID6 = [sharedState17 groupID];

              if (groupID6)
              {
                v224 = +[IDSGroupEncryptionController sharedInstance];
                sharedState18 = [(IDSDSession *)self sharedState];
                groupID7 = [sharedState18 groupID];
                [v224 storeEncryptionSequenceNumber:(v216 << 56) | (v217 << 48) | (v218 << 40) | (v219 << 32) | (v220 << 24) | (v221 << 16) | (v328 << 8) | v329 groupID:groupID7];
              }
            }

            else
            {
              v268 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v378 = 8;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                *&v378[10] = 1024;
                *&v378[12] = v376;
                _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionSequenceNumber should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 8;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_569:
                    *&v326 = v374;
                    *&v327 = v376;
                    uniqueID2 = 8;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x47u:
            if (v374 == 1)
            {
              buffer->var24[0].var20 |= 0x10000u;
              buffer->var24[0].var17 = 1;
              goto LABEL_862;
            }

            v263 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = 1;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RetransmittedPacket should be %u byte, not %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = 1;
                *&v326 = v374;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_599;
                }
              }
            }

            goto LABEL_862;
          case 0x48u:
            if (v374 == 1)
            {
              buffer->var24[0].var20 |= 0x20000u;
              buffer->var24[0].var18 = 1;
              goto LABEL_862;
            }

            v235 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = 1;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NonRetransmittablePacket should be %u byte, not %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = 1;
                *&v326 = v374;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_599;
                }
              }
            }

            goto LABEL_862;
          case 0x4Cu:
            if (v374 == 1)
            {
              v41 = *v375;
              v356 = _NSConcreteStackBlock;
              v357 = 3221225472;
              v358 = sub_1003951A0;
              v359 = &unk_100BD9BE0;
              selfCopy2 = self;
              v361 = v41;
              IDSTransportThreadAddBlock();
            }

            else
            {
              v232 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v378 = 1;
                *&v378[4] = 1024;
                *&v378[6] = v374;
                _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ChildConnectionID should be %u bytes, not %u bytes", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = 1;
                  *&v326 = v374;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_599:
                    uniqueID2 = 1;
                    *&v326 = v374;
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x4Du:
            v3253 = [NSData dataWithBytes:v375 length:v374];
            if (v3253)
            {
              v140 = [IDSSessionInfoMetadataSerializer deserializeSessionInfoMetadata:v3253];
              if (v140)
              {
                onTransportThread_globalLink15 = [(IDSDSession *)self onTransportThread_globalLink];
                [onTransportThread_globalLink15 sendStatsRequest:v140];
              }

              else
              {
                v303 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_DEFAULT, "There was a problem creating NSDictionary from NSData for kClientChannelMetadataType_StatsRequestData", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }
            }

            else
            {
              v277 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_DEFAULT, "Couldn't get NSData for kClientChannelMetadataType_StatsRequestData.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
LABEL_698:
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_861;
          case 0x4Eu:
          case 0x4Fu:
          case 0x50u:
            v7 = [NSData dataWithBytes:v375 length:v374];
            v8 = JWDecodeDictionary();
            v9 = [v8 objectForKeyedSubscript:v342];
            if (v9 && (objc_opt_self(), v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
            {
              v12 = [[NSUUID alloc] initWithUUIDString:v9];
              if (!v12)
              {
                v13 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_extractFieldBytesFromMetadata report dictionary: could not read MKI as UUID", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }

              v14 = v333;
              if (((v376 & 0xFE) == 0x4E || (v14 = v332, v376 == 80)) && ([v8 objectForKeyedSubscript:{v14, uniqueID2}], v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) != 0))
              {
                [v15 doubleValue];
                v18 = v17;
                switch(v376)
                {
                  case 'P':
                    v317 = [v8 objectForKeyedSubscript:v330];
                    bOOLValue = [v317 BOOLValue];

                    [(IDSGFTMetricsCollector *)self->_metricsCollector avcReceiveMKMTime:v12 forMKI:bOOLValue isGeneratedLocally:v18];
                    break;
                  case 'O':
                    [(IDSGFTMetricsCollector *)self->_metricsCollector firstOutgoingPacketTime:v12 forMKI:v17];
                    break;
                  case 'N':
                    [(IDSGFTMetricsCollector *)self->_metricsCollector firstIncomingPacketTime:v12 forMKI:v17];
                    break;
                }
              }

              else
              {
                v271 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_DEFAULT, "_extractFieldBytesFromMetadata report dictionary: could not read times", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }

                v16 = 0;
              }
            }

            else
            {
              v29 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "_extractFieldBytesFromMetadata report dictionary: could not read MKI", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }
              }
            }

            goto LABEL_862;
          case 0x51u:
            v75 = [NSData dataWithBytes:v375 length:v374];
            v76 = JWDecodeDictionary();
            v77 = [v76 objectForKeyedSubscript:v336];
            v78 = [v76 objectForKeyedSubscript:v340];
            unsignedCharValue = [v78 unsignedCharValue];
            onTransportThread_globalLink16 = [(IDSDSession *)self onTransportThread_globalLink];
            [onTransportThread_globalLink16 reportLinkEvent:v77 linkID:unsignedCharValue];

            goto LABEL_862;
          case 0x53u:
            v198 = [NSData dataWithBytes:v375 length:v374];
            v199 = JWDecodeDictionary();
            v200 = [v199 objectForKeyedSubscript:v340];
            unsignedCharValue2 = [v200 unsignedCharValue];

            v202 = [v199 objectForKeyedSubscript:v335];
            [v202 doubleValue];
            v204 = v203;

            v205 = [v199 objectForKeyedSubscript:v334];
            [v205 doubleValue];
            v207 = v206;

            v208 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = unsignedCharValue2;
              *&v378[4] = 2048;
              *&v378[6] = v204;
              *&v378[14] = 2048;
              *&v378[16] = v207;
              _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkMetricsKey: linkID:%d lastPacketReceivedTime:%f lastPacketSentTime:%f", buf, 0x1Cu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v326 = v204;
                v327 = v207;
                uniqueID2 = unsignedCharValue2;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v326 = v204;
                  v327 = v207;
                  uniqueID2 = unsignedCharValue2;
                  _IDSLogV();
                }
              }
            }

            v209 = [(IDSDSession *)self onTransportThread_globalLink:uniqueID2];
            [v209 reportLinkMetricsForLinkID:unsignedCharValue2 lastPacketReceivedTime:v204 lastPacketSentTime:v207];

            goto LABEL_862;
          case 0x54u:
            if (v374 == 1)
            {
              v190 = *v375++;
              v191 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v190;
                _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "got hasCompoundPacket %u", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                uniqueID2 = v190;
                _IDSLogV();
              }

              if (v190)
              {
                [(IDSGFTMetricsCollector *)self->_metricsCollector hasSentCompoundPacket];
              }

              goto LABEL_862;
            }

            v261 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CompoundPacketKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  goto LABEL_641;
                }
              }
            }

            goto LABEL_862;
          case 0x55u:
            if (!self->_linkMeasurementDeltaData)
            {
              v30 = +[NSMutableData data];
              linkMeasurementDeltaData = self->_linkMeasurementDeltaData;
              self->_linkMeasurementDeltaData = v30;
            }

            v3253 = [NSData dataWithBytes:v375 length:v374, uniqueID2];
            if ([v3253 length])
            {
              [(NSMutableData *)self->_linkMeasurementDeltaData appendData:v3253];
              v32 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v3253 length];
                v34 = [(NSMutableData *)self->_linkMeasurementDeltaData length];
                *buf = 67109376;
                *v378 = v33;
                *&v378[4] = 1024;
                *&v378[6] = v34;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkQualityData: received %d byte chunk, buffer now %d bytes...", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = [v3253 length];
                  v326 = COERCE_DOUBLE([(NSMutableData *)self->_linkMeasurementDeltaData length]);
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = [v3253 length];
                    v326 = COERCE_DOUBLE([(NSMutableData *)self->_linkMeasurementDeltaData length]);
                    _IDSLogV();
                  }
                }
              }
            }

            else
            {
              v280 = [IDSLinksQualityMeasurerDelta createWithJSON:self->_linkMeasurementDeltaData];
              v281 = self->_linkMeasurementDeltaData;
              self->_linkMeasurementDeltaData = 0;

              if (v280)
              {
                v354[1] = _NSConcreteStackBlock;
                v354[2] = 3221225472;
                v354[3] = sub_10039522C;
                v354[4] = &unk_100BD9AA8;
                v354[5] = self;
                v355 = v280;
                IDSTransportThreadAddBlock();
              }

              else
              {
                v314 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkQualityData: could not parse delta", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }
              }
            }

            goto LABEL_861;
          case 0x56u:
            goto LABEL_852;
          case 0x57u:
            if (!self->_linkEngineMeasurementDeltaData)
            {
              v35 = +[NSMutableData data];
              linkEngineMeasurementDeltaData = self->_linkEngineMeasurementDeltaData;
              self->_linkEngineMeasurementDeltaData = v35;
            }

            v3254 = [NSData dataWithBytes:v375 length:v374, uniqueID2];
            if ([v3254 length])
            {
              [(NSMutableData *)self->_linkEngineMeasurementDeltaData appendData:v3254];
              v38 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v3254 length];
                v40 = [(NSMutableData *)self->_linkEngineMeasurementDeltaData length];
                *buf = 67109376;
                *v378 = v39;
                *&v378[4] = 1024;
                *&v378[6] = v40;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: received %d byte chunk, buffer now %d bytes...", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = [v3254 length];
                  v326 = COERCE_DOUBLE([(NSMutableData *)self->_linkEngineMeasurementDeltaData length]);
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = [v3254 length];
                    v326 = COERCE_DOUBLE([(NSMutableData *)self->_linkEngineMeasurementDeltaData length]);
                    _IDSLogV();
                  }
                }
              }
            }

            else
            {
              v282 = JWDecodeDictionary();
              v283 = self->_linkEngineMeasurementDeltaData;
              self->_linkEngineMeasurementDeltaData = 0;

              if (v282)
              {
                v284 = [v282 objectForKeyedSubscript:@"source"];
                v285 = [v282 objectForKeyedSubscript:@"delta"];
                if (v285)
                {
                  v286 = [v282 objectForKeyedSubscript:@"delta"];
                  v354[0] = 0;
                  v287 = [IDSLinksQualityReportDeltaObject createWithJSON:v286 error:v354];
                  v288 = v354[0];

                  if (v287)
                  {
                    v352 = v287;
                    v353 = v284;
                    IDSTransportThreadAddBlock();
                  }

                  else
                  {
                    v321 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v378 = v288;
                      _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: could not parse delta. Error: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        uniqueID2 = v288;
                        _IDSLogTransport();
                        if (_IDSShouldLog())
                        {
                          uniqueID2 = v288;
                          _IDSLogV();
                        }
                      }
                    }
                  }
                }

                else
                {
                  v320 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v378 = v282;
                    _os_log_impl(&_mh_execute_header, v320, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: could not get delta data. deltaWithSource: %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      uniqueID2 = v282;
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        uniqueID2 = v282;
                        _IDSLogV();
                      }
                    }
                  }
                }
              }

              else
              {
                v315 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                {
                  v316 = self->_linkEngineMeasurementDeltaData;
                  *buf = 138412290;
                  *v378 = v316;
                  _os_log_impl(&_mh_execute_header, v315, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: could not decode deltaWithSource. Data: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    uniqueID2 = self->_linkEngineMeasurementDeltaData;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      uniqueID2 = self->_linkEngineMeasurementDeltaData;
                      _IDSLogV();
                    }
                  }
                }
              }
            }

LABEL_852:
            if (!v374)
            {
              goto LABEL_862;
            }

            v3253 = [NSData dataWithBytes:v375 length:?];
            v322 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
            {
              v323 = [v3253 length];
              *buf = 67109120;
              *v378 = v323;
              _os_log_impl(&_mh_execute_header, v322, OS_LOG_TYPE_DEFAULT, "Received packet log data with size: %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = [v3253 length];
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  uniqueID2 = [v3253 length];
                  _IDSLogV();
                }
              }
            }

            if ([v3253 length])
            {
              os_unfair_lock_lock(&self->_lock);
              [(IDSObjCPacketLogWriter *)self->_packetLogWriter writeData:v3253];
              os_unfair_lock_unlock(&self->_lock);
            }

            goto LABEL_861;
          case 0x5Bu:
            if (v374 == 1)
            {
              v113 = *v375;
              v114 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v378 = v113;
                _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Received request to evaluate pathMTU for linkID %d", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  uniqueID2 = v113;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    uniqueID2 = v113;
                    _IDSLogV();
                  }
                }
              }

              onTransportThread_globalLink17 = [(IDSDSession *)self onTransportThread_globalLink];
              [onTransportThread_globalLink17 requestPathMTUEvaluationForLinkID:v113];
            }

            goto LABEL_862;
          default:
            goto LABEL_394;
        }
      }

      switch(v376)
      {
        case 0xFCu:
          if (v374 == 4)
          {
            self->_idsDataChannelClientPID = bswap32(*v375);
            v227 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
            {
              idsDataChannelClientPID = self->_idsDataChannelClientPID;
              *buf = 67109120;
              *v378 = idsDataChannelClientPID;
              _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "got the process PID %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              uniqueID2 = self->_idsDataChannelClientPID;
              _IDSLogV();
            }
          }

          else
          {
            v269 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v378 = 4;
              *&v378[4] = 1024;
              *&v378[6] = v374;
              *&v378[10] = 1024;
              *&v378[12] = v376;
              _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProcessIDKey should be %d byte, not %u bytes, field: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                *&v326 = v374;
                *&v327 = v376;
                uniqueID2 = 4;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
LABEL_623:
                  *&v326 = v374;
                  *&v327 = v376;
                  uniqueID2 = 4;
                  _IDSLogV();
                }
              }
            }
          }

          break;
        case 0xFDu:
          if (v374 == 1)
          {
            v339 = *v375;
            v229 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v378 = v339;
              _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferTypeKey %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v339;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  uniqueID2 = v339;
                  _IDSLogV();
                }
              }
            }
          }

          else
          {
            v270 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v378 = v374;
              *&v378[4] = 1024;
              *&v378[6] = v376;
              _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferTypeKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                uniqueID2 = v374;
                *&v326 = v376;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
LABEL_641:
                  uniqueID2 = v374;
                  *&v326 = v376;
                  _IDSLogV();
                }
              }
            }
          }

          break;
        case 0xFEu:
          v19 = [NSData dataWithBytes:v375 length:v374];
          v3253 = v19;
          if (v339 == 1)
          {
            v21 = v19;
            v22 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v3253 bytes], 1);
            sharedState19 = [(IDSDSession *)self sharedState];
            [sharedState19 setGroupID:v22];

            v24 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              sharedState20 = [(IDSDSession *)self sharedState];
              groupID8 = [sharedState20 groupID];
              *buf = 138412290;
              *v378 = groupID8;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferKey got the group ID %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                sharedState21 = [(IDSDSession *)self sharedState];
                uniqueID2 = [sharedState21 groupID];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  sharedState22 = [(IDSDSession *)self sharedState];
                  uniqueID2 = [sharedState22 groupID];
                  _IDSLogV();
                }
              }
            }
          }

LABEL_861:

          break;
        default:
LABEL_394:
          v230 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v378 = v376;
            _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "Unknown metadata type: %u", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              uniqueID2 = v376;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                uniqueID2 = v376;
                _IDSLogV();
              }
            }
          }

          break;
      }

LABEL_862:
      v6 = v351;
    }

    while ((IDSByteBufferReadField() & 1) != 0);
  }

  IDSByteBufferRelease();

  return Mutable;
}

- (void)_connectQRDirectlyToClientChannel:(id)channel
{
  channelCopy = channel;
  [channelCopy setClientReady:1];
  if ([channelCopy connectWithTransportThread])
  {
    [(IDSDSession *)self _finishPacketLog];
    os_unfair_lock_lock(&self->_lock);
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_connectQRDirectlyToClientChannel: creating packet log writer", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v6 = [IDSObjCPacketLogWriter alloc];
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    v9 = [v6 initWithSessionID:uniqueID processName:@"DC"];
    packetLogWriter = self->_packetLogWriter;
    self->_packetLogWriter = v9;

    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1003959E8;
    v14[3] = &unk_100BD9C48;
    objc_copyWeak(&v15, &location);
    [channelCopy setPacketBufferHandler:v14];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = channelCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "QR directly connected to IDSClientChannel %p", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003959DC;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v12, v13);
  }
}

- (void)requestSessionInfoWithOptions:(id)options
{
  optionsCopy = options;
  v5 = IDSGlobalLinkOptionSessionInfoRequestTypeKey;
  v68 = optionsCopy;
  v6 = [optionsCopy objectForKey:IDSGlobalLinkOptionSessionInfoRequestTypeKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  sharedState = [(IDSDSession *)self sharedState];
  fromURI = [sharedState fromURI];
  unprefixedURI = [fromURI unprefixedURI];
  _bestGuessURI = [unprefixedURI _bestGuessURI];

  if (!_bestGuessURI || !IMStringIsPseudonymID() || (-[IDSDSession qrAllocator](self, "qrAllocator"), v11 = objc_claimAutoreleasedReturnValue(), -[IDSDSession sharedState](self, "sharedState"), v12 = objc_claimAutoreleasedReturnValue(), [v12 uniqueID], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "findAllocateResponseForSessionID:FromURI:", v13, _bestGuessURI), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, !v14) && unsignedIntegerValue == 2)
  {
    qrAllocator = [(IDSDSession *)self qrAllocator];
    sharedState2 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState2 uniqueID];
    sharedState3 = [(IDSDSession *)self sharedState];
    groupID = [sharedState3 groupID];
    v14 = [qrAllocator getAllocateResponse:uniqueID groupID:groupID];
  }

  if (v14)
  {
    if (kIDSQRAllocateKey_RelaySessionID)
    {
      Value = CFDictionaryGetValue(v14, kIDSQRAllocateKey_RelaySessionID);
    }

    else
    {
      Value = 0;
    }

    v32 = Value;
    if (kIDSQRAllocateKey_GroupID)
    {
      v33 = CFDictionaryGetValue(v14, kIDSQRAllocateKey_GroupID);
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState4 groupID];
      *buf = 138413058;
      selfCopy3 = self;
      v79 = 2112;
      v80 = groupID2;
      v81 = 2112;
      v82 = v34;
      v83 = 2112;
      v84 = v32;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@: requestSessionInfoWithOptions for groupID %@ relayGroupID %@ relaySessionID %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState5 = [(IDSDSession *)self sharedState];
        [sharedState5 groupID];
        v66 = v34;
        v67 = v32;
        v65 = v64 = self;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v39 = [(IDSDSession *)self sharedState:self];
          [v39 groupID];
          v66 = v34;
          v67 = v32;
          v65 = v64 = self;
          _IDSLogV();
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v41 = [NSNumber numberWithInteger:unsignedIntegerValue];
    if (v41)
    {
      CFDictionarySetValue(Mutable, v5, v41);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100918730();
    }

    v42 = self->_metricsCollector;
    if (v42)
    {
      CFDictionarySetValue(Mutable, IDSGlobalLinkOptionMetricsCollectorKey, v42);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009187AC();
    }

    v43 = +[IDSGroupEncryptionController sharedInstance];
    p2pNegotiatorProvider = [v43 p2pNegotiatorProvider];

    if (p2pNegotiatorProvider)
    {
      CFDictionarySetValue(Mutable, IDSGlobalLinkOptionP2PNegotiatorKey, p2pNegotiatorProvider);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100918834();
    }

    if (unsignedIntegerValue == 2)
    {
      v49 = [(IDSDSession *)self _createStreamSubscriptionRequest:v68];
      v50 = [v49 copy];

      Mutable = v50;
    }

    else if (unsignedIntegerValue == 1)
    {
      v45 = IDSGlobalLinkOptionSessionInfoCommandFlagKey;
      v46 = [v68 objectForKey:IDSGlobalLinkOptionSessionInfoCommandFlagKey];
      unsignedIntValue = [v46 unsignedIntValue];

      if (unsignedIntValue)
      {
        v48 = [NSNumber numberWithUnsignedInt:unsignedIntValue];
        if (v48)
        {
          CFDictionarySetValue(Mutable, v45, v48);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100918730();
        }
      }

      v60 = [(IDSDSession *)self _getNewLinkOptionsForActiveParticipantInfoRequest:v64];
      if (v60)
      {
        CFDictionarySetValue(Mutable, IDSGlobalLinkOptionNewLinkOptionsKey, v60);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009188BC();
      }

      CFDictionarySetValue(Mutable, IDSGlobalLinkOptionQRSessionInfoKey, v14);
    }

    else
    {
      v51 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v79 = 2048;
        v80 = unsignedIntegerValue;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: requestSessionInfoWithOptions doesn't support the requestType: %ld", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    v61 = Mutable;
    v62 = v32;
    v63 = v34;
    IDSTransportThreadAddBlock();
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = unsignedIntegerValue;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "cachedSessionInfo is nil, requestType: %lu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if (&unsignedIntegerValue[-1]._globalLinkConfiguration + 7 > 1)
    {
      v52 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%@: requestSessionInfoWithOptions failed! Couldn't get the cached response from QRAllocator.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      accountController = [(IDSDSession *)self accountController];
      sharedState6 = [(IDSDSession *)self sharedState];
      accountID = [sharedState6 accountID];
      v25 = [accountController accountWithUniqueID:accountID];
      service = [v25 service];

      qrAllocator2 = [(IDSDSession *)self qrAllocator];
      sharedState7 = [(IDSDSession *)self sharedState];
      v29 = [sharedState7 getQuickRelayAllocateOptions:&off_100C3BC80];

      CFDictionarySetValue(v29, kIDSQRAllocateKey_AllocateType, &off_100C3BC80);
      sharedState8 = [(IDSDSession *)self sharedState];
      groupID3 = [sharedState8 groupID];

      if (groupID3)
      {
        CFDictionarySetValue(v29, kIDSQRAllocateKey_GroupID, groupID3);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100918944();
      }

      v53 = [NSNumber numberWithBool:self->_isLightweightParticipant];
      if (v53)
      {
        CFDictionarySetValue(v29, kIDSQRAllocateKey_IsLightweightParticipant, v53);
      }

      objc_initWeak(buf, self);
      [(IDSGFTMetricsCollector *)self->_metricsCollector requestAllocation];
      v54 = im_primary_base_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003972B4;
      block[3] = &unk_100BD9C98;
      v71 = qrAllocator2;
      selfCopy4 = self;
      v73 = service;
      v74 = v29;
      v55 = v29;
      v56 = service;
      v57 = qrAllocator2;
      objc_copyWeak(v76, buf);
      v76[1] = unsignedIntegerValue;
      v75 = v68;
      v58 = v54;
      v59 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
      dispatch_async(v58, v59);

      objc_destroyWeak(v76);
      objc_destroyWeak(buf);
    }
  }
}

- (void)requestURIsForParticipantIDs:(id)ds withRequestID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v7 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(IDSDSession *)self _getURIFromParticipantIDNumber:v13];
        if (v14)
        {
          [v7 setObject:v14 forKey:v13];
        }

        else
        {
          v15 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs: could not find URI for participant id: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  v16 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 count];
    *buf = 138412546;
    v30 = dCopy;
    v31 = 2048;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs: request id %@ found %lu participants.", buf, 0x16u);
  }

  v18 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039797C;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v23 = v7;
  v24 = dCopy;
  v19 = dCopy;
  v20 = v7;
  dispatch_async(v18, block);
}

- (void)registerPluginWithOptions:(id)options messageContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  Value = 0;
  if (optionsCopy && IDSGroupSessionPluginNameKey)
  {
    Value = CFDictionaryGetValue(optionsCopy, IDSGroupSessionPluginNameKey);
  }

  v8 = Value;
  v9 = 0;
  if (optionsCopy && IDSGroupSessionRawPublicKeyKey)
  {
    v9 = CFDictionaryGetValue(optionsCopy, IDSGroupSessionRawPublicKeyKey);
  }

  v10 = v9;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = v8;
  if (v12)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginNameKey, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009189CC();
  }

  CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginOperationKey, &off_100C3BC98);
  if (v10)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginRawPublicKeyKey, v10);
  }

  v18 = v12;
  v19 = Mutable;
  v13 = Mutable;
  v14 = v12;
  IDSTransportThreadAddBlock();
  [contextCopy setReply:1];
  v15 = +[IDSDaemon sharedInstance];
  localObject = [contextCopy localObject];
  v17 = [v15 broadcasterForLocalObject:localObject messageContext:contextCopy];

  [v17 emptyXPCReply];
}

- (void)unregisterPluginWithOptions:(id)options messageContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  Value = 0;
  if (optionsCopy && IDSGroupSessionPluginNameKey)
  {
    Value = CFDictionaryGetValue(optionsCopy, IDSGroupSessionPluginNameKey);
  }

  v8 = Value;
  v9 = 0;
  if (optionsCopy && IDSGroupSessionRawPublicKeyKey)
  {
    v9 = CFDictionaryGetValue(optionsCopy, IDSGroupSessionRawPublicKeyKey);
  }

  v10 = v9;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = v8;
  if (v12)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginNameKey, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009189CC();
  }

  CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginOperationKey, &off_100C3BC20);
  if (v10)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginRawPublicKeyKey, v10);
  }

  v18 = v12;
  v19 = Mutable;
  v13 = Mutable;
  v14 = v12;
  IDSTransportThreadAddBlock();
  [contextCopy setReply:1];
  v15 = +[IDSDaemon sharedInstance];
  localObject = [contextCopy localObject];
  v17 = [v15 broadcasterForLocalObject:localObject messageContext:contextCopy];

  [v17 emptyXPCReply];
}

- (void)_sendingOfflineActiveParticipantInfoRequest:(id)request
{
  requestCopy = request;
  v5 = IDSGlobalLinkOptionSessionInfoRequestTypeKey;
  v6 = [requestCopy objectForKey:IDSGlobalLinkOptionSessionInfoRequestTypeKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  sharedState2 = [(IDSDSession *)self sharedState];
  groupID = [sharedState2 groupID];
  v13 = [qrAllocator getAllocateResponse:uniqueID groupID:groupID];

  Value = 0;
  if (v13 && kIDSQRAllocateKey_RelaySessionID)
  {
    Value = CFDictionaryGetValue(v13, kIDSQRAllocateKey_RelaySessionID);
  }

  v15 = Value;
  v16 = 0;
  if (v13 && kIDSQRAllocateKey_GroupID)
  {
    v16 = CFDictionaryGetValue(v13, kIDSQRAllocateKey_GroupID);
  }

  v17 = v16;
  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    groupID2 = [sharedState3 groupID];
    *buf = 138413058;
    selfCopy = self;
    v39 = 2112;
    v40 = groupID2;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: _sendingOfflineActiveParticipantInfoRequest for groupID %@ relayGroupID %@ relaySessionID %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      groupID3 = [sharedState4 groupID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v22 = [(IDSDSession *)self sharedState:self];
        groupID4 = [v22 groupID];
        _IDSLogV();
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v24 = [NSNumber numberWithInteger:unsignedIntegerValue];
  if (v24)
  {
    CFDictionarySetValue(Mutable, v5, v24);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918730();
  }

  _getNewLinkOptionsForActiveParticipantInfoRequest = [(IDSDSession *)self _getNewLinkOptionsForActiveParticipantInfoRequest];
  if (_getNewLinkOptionsForActiveParticipantInfoRequest)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionNewLinkOptionsKey, _getNewLinkOptionsForActiveParticipantInfoRequest);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009188BC();
  }

  v26 = v13 != 0;

  v27 = v13;
  if (v26)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionQRSessionInfoKey, v27);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918A54();
  }

  v28 = self->_metricsCollector;
  if (v28)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionMetricsCollectorKey, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009187AC();
  }

  v29 = +[IDSGroupEncryptionController sharedInstance];
  p2pNegotiatorProvider = [v29 p2pNegotiatorProvider];

  if (p2pNegotiatorProvider)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionP2PNegotiatorKey, p2pNegotiatorProvider);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918834();
  }

  v36 = v15;
  v31 = Mutable;
  v32 = v15;
  v33 = v17;
  IDSTransportThreadAddBlock();
}

- (id)_createStreamSubscriptionRequest:(id)request
{
  requestCopy = request;
  v5 = IDSGlobalLinkOptionSessionInfoRequestTypeKey;
  v6 = [requestCopy objectForKey:IDSGlobalLinkOptionSessionInfoRequestTypeKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = [NSNumber numberWithInteger:unsignedIntegerValue];
  if (v9)
  {
    CFDictionarySetValue(Mutable, v5, v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918730();
  }

  v10 = self->_metricsCollector;
  if (v10)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionMetricsCollectorKey, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009187AC();
  }

  v11 = +[IDSGroupEncryptionController sharedInstance];
  p2pNegotiatorProvider = [v11 p2pNegotiatorProvider];

  if (p2pNegotiatorProvider)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionP2PNegotiatorKey, p2pNegotiatorProvider);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918834();
  }

  v13 = [requestCopy objectForKeyedSubscript:IDSDataChannelLinkIDToQueryKey];
  if (!v13)
  {
    v13 = [requestCopy objectForKeyedSubscript:IDSDataChannelLinkIDKey];
  }

  v14 = IDSDataChannelPublishedStreamsKey;
  v15 = [requestCopy objectForKeyedSubscript:IDSDataChannelPublishedStreamsKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [requestCopy objectForKeyedSubscript:v14];
    v17 = v16 = v13;
    v18 = [v17 isEqualToString:IDSDataChannelNoStreamsKey];

    v13 = v16;
    if (v18)
    {
      v19 = &__NSArray0__struct;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v19 = [requestCopy objectForKeyedSubscript:v14];
LABEL_20:
  v20 = [requestCopy objectForKeyedSubscript:IDSDataChannelSubscribedStreamsKey];
  v57 = +[NSMutableArray array];
  v21 = IDSDataChannelAllParticipantsKey;
  v22 = [v20 objectForKeyedSubscript:IDSDataChannelAllParticipantsKey];

  if (!v22)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    allKeys = [v20 allKeys];
    v29 = [allKeys countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (!v29)
    {
      goto LABEL_45;
    }

    v30 = v29;
    v52 = v13;
    v53 = v19;
    v54 = Mutable;
    v55 = requestCopy;
    v31 = *v59;
    v56 = IDSDataChannelAllStreamsKey;
    while (1)
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(allKeys);
        }

        v33 = *(*(&v58 + 1) + 8 * i);
        v34 = [v20 objectForKeyedSubscript:{v33, v52, v53, v54, v55}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v20 objectForKeyedSubscript:v33];
          v36 = v35 = allKeys;
          v37 = [v36 isEqualToString:v56];

          allKeys = v35;
          if (v37)
          {
            v38 = [IDSQRParticipantStreams streamWithParticipantID:v33 streamArray:0 anyParticipant:0 anyStream:1];
            [v57 addObject:v38];
            goto LABEL_34;
          }
        }

        else
        {
        }

        v39 = [v20 objectForKeyedSubscript:v33];
        v38 = [v39 mutableCopy];

        v40 = [IDSQRParticipantStreams streamWithParticipantID:v33 streamArray:v38 anyParticipant:0 anyStream:0];
        [v57 addObject:v40];

LABEL_34:
      }

      v30 = [allKeys countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (!v30)
      {
        Mutable = v54;
        requestCopy = v55;
        v13 = v52;
        v19 = v53;
        goto LABEL_45;
      }
    }
  }

  v23 = v19;
  v24 = [v20 objectForKeyedSubscript:v21];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_38:
    v41 = [v20 objectForKeyedSubscript:v21];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [v20 objectForKeyedSubscript:v21];
      v43 = [v42 isEqualToString:IDSDataChannelNoStreamsKey];

      if (v43)
      {
        v27 = 0;
        goto LABEL_41;
      }
    }

    else
    {
    }

    v45 = [v20 objectForKeyedSubscript:v21];
    v44 = [IDSQRParticipantStreams streamWithParticipantID:0 streamArray:v45 anyParticipant:1 anyStream:0];

    goto LABEL_44;
  }

  v25 = [v20 objectForKeyedSubscript:v21];
  v26 = [v25 isEqualToString:IDSDataChannelAllStreamsKey];

  if (!v26)
  {
    goto LABEL_38;
  }

  v27 = 1;
LABEL_41:
  v44 = [IDSQRParticipantStreams streamWithParticipantID:0 streamArray:0 anyParticipant:1 anyStream:v27];
LABEL_44:
  [v57 addObject:v44];
  v19 = v23;
  allKeys = v44;
LABEL_45:

  v46 = [requestCopy objectForKeyedSubscript:IDSDataChannelLinkIDKey];
  if (v46)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionLinkIDKey, v46);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918ADC();
  }

  v47 = v13;
  if (v47)
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionSessionInfoLinkIDToQueryKey, v47);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918B64();
  }

  v48 = [requestCopy objectForKeyedSubscript:IDSDataChannelParticipantGenerationCounterKey];
  if (v48)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_StreamInfoGenerationCounter, v48);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918BEC();
  }

  v49 = v57;
  if (v49)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_StreamInfoSubscribedStreams, v49);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918C74();
  }

  if (v19)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_StreamInfoPublishedStreams, v19);
  }

  v50 = [requestCopy objectForKeyedSubscript:IDSDataChannelMaxConcurrentStreamsKey];
  if (v50)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams, v50);
  }

  return Mutable;
}

- (void)_sendStreamSubscriptionRequest:(id)request
{
  requestCopy = request;
  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  sharedState2 = [(IDSDSession *)self sharedState];
  groupID = [sharedState2 groupID];
  v10 = [qrAllocator getAllocateResponse:uniqueID groupID:groupID];

  Value = 0;
  if (v10 && kIDSQRAllocateKey_RelaySessionID)
  {
    Value = CFDictionaryGetValue(v10, kIDSQRAllocateKey_RelaySessionID);
  }

  v12 = Value;
  v13 = 0;
  if (v10 && kIDSQRAllocateKey_GroupID)
  {
    v13 = CFDictionaryGetValue(v10, kIDSQRAllocateKey_GroupID);
  }

  v14 = v13;
  [(IDSDSession *)self _createStreamSubscriptionRequest:requestCopy];
  v18 = v14;
  v20 = v19 = v12;
  v15 = v20;
  v16 = v12;
  v17 = v14;
  IDSTransportThreadAddBlock();
}

- (id)_getNewLinkOptionsForActiveParticipantInfoRequest
{
  v3 = [(IDSDSession *)self prepareSessionInfoForGlobalLink:&__NSDictionary0__struct];
  CFDictionarySetValue(v3, IDSSessionIsMultiwayKey, &__kCFBooleanTrue);
  selfCopy = self;
  if (selfCopy)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_AlternateDelegate, selfCopy);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918CFC();
  }

  return v3;
}

- (void)didReceiveCurrentCellularSignalRaw:(int)raw signalStrength:(int)strength signalGrade:(int)grade
{
  v5 = *&grade;
  v6 = *&strength;
  v7 = *&raw;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    LOWORD(v24[0]) = 1024;
    *(v24 + 2) = v7;
    WORD3(v24[0]) = 1024;
    DWORD2(v24[0]) = v6;
    WORD6(v24[0]) = 1024;
    *(v24 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@> didReceiveCurrentCellularSignalRaw:%d signalStrength:%d signalGrade:%d", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v6;
    v21 = v5;
    selfCopy2 = self;
    v19 = v7;
    _IDSLogV();
  }

  v10 = [(IDSDSession *)self sharedState:selfCopy2];
  if ([v10 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v16 = [sharedState3 clientType] == 6;

  if (v16)
  {
LABEL_12:
    if ([(IDSClientChannel *)self->_clientChannel hasMetadata])
    {
      v13 = malloc_type_malloc(0x1000uLL, 0x40480E7BuLL);
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v25 = -1431655766;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24[1] = v14;
      v24[0] = v14;
      buf[0] = BYTE3(v7);
      buf[1] = BYTE2(v7);
      buf[2] = BYTE1(v7);
      buf[3] = v7;
      LOBYTE(selfCopy3) = BYTE3(v6);
      BYTE1(selfCopy3) = BYTE2(v6);
      BYTE2(selfCopy3) = BYTE1(v6);
      BYTE3(selfCopy3) = v6;
      BYTE4(selfCopy3) = BYTE3(v5);
      BYTE5(selfCopy3) = BYTE2(v5);
      BYTE6(selfCopy3) = BYTE1(v5);
      HIBYTE(selfCopy3) = v5;
      IDSByteBufferWriteField();
      [(IDSDSession *)self writeToClientChannel:self->_clientChannel packetBuffer:0 metaData:v13 metadataSize:0];
      IDSByteBufferRelease();
    }

    return;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to get cellular signals", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)_sendLinkSelectionPreference:(id)preference linkScore:(id)score ipPreference:(id)ipPreference uplinkNackDisabled:(id)disabled
{
  preferenceCopy = preference;
  scoreCopy = score;
  ipPreferenceCopy = ipPreference;
  disabledCopy = disabled;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState useQRDirectly])
  {
    goto LABEL_6;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 1)
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  if ([sharedState3 clientType] == 5)
  {

    goto LABEL_5;
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  clientType = [sharedState4 clientType];

  if (clientType == 6)
  {
LABEL_7:
    if (preferenceCopy && scoreCopy)
    {
      unsignedCharValue = [(IDSDSession *)preferenceCopy unsignedCharValue];
      unsignedCharValue2 = [scoreCopy unsignedCharValue];
      v19 = [NSNumber numberWithUnsignedChar:unsignedCharValue];
      if (v19)
      {
        CFDictionarySetValue(Mutable, IDSLinkSuggestionKey, v19);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100918D84();
      }

      v21 = [NSNumber numberWithUnsignedChar:unsignedCharValue2];
      if (v21)
      {
        CFDictionarySetValue(Mutable, IDSLinkScoreKey, v21);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100918E0C();
      }

      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy17 = self;
        v52 = 1024;
        *v53 = unsignedCharValue;
        *&v53[4] = 1024;
        *&v53[6] = unsignedCharValue2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<%@> _sendLinkSelectionPreference: linkSuggestion: %u, linkScore: %u", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v43 = unsignedCharValue;
          v45 = unsignedCharValue2;
          selfCopy15 = self;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v43 = unsignedCharValue;
            v45 = unsignedCharValue2;
            selfCopy15 = self;
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy17 = preferenceCopy;
        v52 = 2112;
        *v53 = scoreCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No linkSuggestion: %@ or linkScore: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          selfCopy15 = preferenceCopy;
          v43 = scoreCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            selfCopy15 = preferenceCopy;
            v43 = scoreCopy;
            _IDSLogV();
          }
        }
      }
    }

    if (ipPreferenceCopy)
    {
      unsignedCharValue3 = [ipPreferenceCopy unsignedCharValue];
      v24 = [NSNumber numberWithUnsignedChar:unsignedCharValue3];
      if (v24)
      {
        CFDictionarySetValue(Mutable, IDSLinkIPPreferenceKey, v24);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100918E94();
      }

      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy17 = self;
        v52 = 2080;
        *v53 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
        *&v53[8] = 1024;
        LODWORD(v54) = unsignedCharValue3;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "<%@> %s: ipPreference: %u", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
          v45 = unsignedCharValue3;
          selfCopy15 = self;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
            v45 = unsignedCharValue3;
            selfCopy15 = self;
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy17 = self;
        v52 = 2080;
        *v53 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@> %s: ipPreferenceObj is nil.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          selfCopy15 = self;
          v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            selfCopy15 = self;
            v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
            _IDSLogV();
          }
        }
      }
    }

    if (disabledCopy)
    {
      bOOLValue = [disabledCopy BOOLValue];
      v28 = [NSNumber numberWithBool:bOOLValue];
      if (v28)
      {
        CFDictionarySetValue(Mutable, IDSUplinkNackDisabledKey, v28);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100918F1C();
      }

      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"NO";
        if (bOOLValue)
        {
          v31 = @"YES";
        }

        *buf = 138412802;
        selfCopy17 = self;
        v52 = 2080;
        *v53 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
        *&v53[8] = 2112;
        v54 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<%@> %s: uplinkNackDisabled: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v32 = bOOLValue ? @"YES" : @"NO";
        v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
        v45 = v32;
        selfCopy15 = self;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
          v45 = v32;
          selfCopy15 = self;
          _IDSLogV();
        }
      }
    }

    else
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy17 = self;
        v52 = 2080;
        *v53 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "<%@> %s: uplinkNackDisabledObj is nil.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          selfCopy15 = self;
          v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            selfCopy15 = self;
            v43 = "[IDSDSession _sendLinkSelectionPreference:linkScore:ipPreference:uplinkNackDisabled:]";
            _IDSLogV();
          }
        }
      }
    }

    if ([(__CFDictionary *)Mutable count:selfCopy15])
    {
      v49 = 0;
      v33 = [NSKeyedArchiver archivedDataWithRootObject:Mutable requiringSecureCoding:0 error:&v49];
      v34 = v49;
      if (v34)
      {
        v35 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          sharedState5 = [(IDSDSession *)self sharedState];
          groupID = [sharedState5 groupID];
          *buf = 138412802;
          selfCopy17 = self;
          v52 = 2112;
          *v53 = groupID;
          *&v53[8] = 2112;
          v54 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@> _sendLinkSelectionPreference failed to encode linkSelectionEvents for group %@ (error: %@)", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          sharedState6 = [(IDSDSession *)self sharedState];
          groupID2 = [sharedState6 groupID];
          _IDSLogV();
        }
      }

      else
      {
        objc_initWeak(buf, self->_clientChannel);
        objc_copyWeak(&v48, buf);
        v47 = v33;
        IDSTransportThreadAddBlock();

        objc_destroyWeak(&v48);
        objc_destroyWeak(buf);
      }
    }

    goto LABEL_77;
  }

  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy17 = self;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_LinkSuggestion", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_77:
}

- (void)updateRelevantEncryptedDataBlob
{
  participantInfo = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];

  if (participantInfo)
  {
    participantInfo2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];
    v5 = [(IDSDSession *)self formAndEncryptDataBlob:participantInfo2 type:12];

    os_unfair_lock_lock(&self->_lock);
    encryptedDataBlob = self->_encryptedDataBlob;
    self->_encryptedDataBlob = v5;

    os_unfair_lock_unlock(&self->_lock);
  }

  participantMirageHandshakeBlob = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantMirageHandshakeBlob];

  if (participantMirageHandshakeBlob)
  {
    participantMirageHandshakeBlob2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantMirageHandshakeBlob];
    v9 = [(IDSDSession *)self formAndEncryptDataBlob:participantMirageHandshakeBlob2 type:6];

    os_unfair_lock_lock(&self->_lock);
    encryptedMirageHandshakeBlob = self->_encryptedMirageHandshakeBlob;
    self->_encryptedMirageHandshakeBlob = v9;

    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = +[IDSGroupEncryptionController sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  [v15 updateServerDesiredKeyMaterialsForGroup:groupID sessionID:uniqueID];
}

- (id)getEncryptedDataBlob
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_encryptedDataBlob;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)getEncryptedMirageHandshakeBlob
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_encryptedMirageHandshakeBlob;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)formAndEncryptDataBlob:(id)blob type:(int)type
{
  blobCopy = blob;
  os_unfair_lock_lock(&self->_lock);
  if (blobCopy)
  {
    cryptorForBlobs = self->_cryptorForBlobs;
    v16 = 0;
    v8 = [(IDSGroupSessionDataCryptor *)cryptorForBlobs encryptData:blobCopy sequenceNumber:0 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100918FA4();
      }

      os_unfair_lock_unlock(&self->_lock);
      v11 = 0;
    }

    else
    {
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      getEncryptionKeyID = [(IDSGroupSessionDataCryptor *)self->_cryptorForBlobs getEncryptionKeyID];
      os_unfair_lock_unlock(&self->_lock);
      [getEncryptionKeyID getUUIDBytes:v27];
      v11 = [NSMutableData dataWithBytes:v27 length:16];
      [v11 appendData:v8];
      v14 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110146;
        typeCopy = type;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = blobCopy;
        v23 = 2112;
        v24 = getEncryptionKeyID;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "type: %d, encrypted blob: %@ plain blob: %@, localSKI: %@, encryptedData: %@", buf, 0x30u);
      }
    }
  }

  else
  {
    v12 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "formAndEncryptDataBlob: no valid plainDataBlob", buf, 2u);
    }

    os_unfair_lock_unlock(&self->_lock);
    v11 = 0;
  }

  return v11;
}

- (id)prepareSessionInfoForGlobalLink:(id)link
{
  v4 = [link mutableCopy];
  os_unfair_lock_lock(&self->_clientChannelLock);
  v5 = [NSNumber numberWithUnsignedLongLong:[(IDSClientChannel *)self->_clientChannel clientUniquePID]];
  if (v5)
  {
    CFDictionarySetValue(v4, kIDSQRAllocateKey_ClientUniquePID, v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919014();
  }

  os_unfair_lock_unlock(&self->_clientChannelLock);
  v6 = [NSNumber numberWithBool:[(IDSDSession *)self disallowCellularInterface]];
  if (v6)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionDisallowCellularKey, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091909C();
  }

  v7 = [NSNumber numberWithBool:[(IDSDSession *)self disallowWifiInterface]];
  if (v7)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionDisallowWiFiKey, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919124();
  }

  sharedState = [(IDSDSession *)self sharedState];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sharedState clientType]);

  if (v9)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionClientTypeKey, v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009191AC();
  }

  v10 = [NSNumber numberWithBool:self->_isLightweightParticipant];
  if (v10)
  {
    CFDictionarySetValue(v4, IDSGroupSessionIsLightweightParticipantKey, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919234();
  }

  v11 = [NSNumber numberWithBool:self->_startedAsUPlusOneSession];
  if (v11)
  {
    CFDictionarySetValue(v4, IDSGroupSessionStartedAsUPlusOneKey, v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009192BC();
  }

  v12 = self->_metricsCollector;
  if (v12)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionMetricsCollectorKey, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919344();
  }

  v13 = +[IDSGroupEncryptionController sharedInstance];
  p2pNegotiatorProvider = [v13 p2pNegotiatorProvider];

  if (p2pNegotiatorProvider)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionP2PNegotiatorKey, p2pNegotiatorProvider);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009193CC();
  }

  v15 = [NSNumber numberWithBool:self->_isAutoDisconnectSupportedForGFTService];
  if (v15)
  {
    CFDictionarySetValue(v4, IDSGlobalLinkOptionIsGFTServiceKey, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919454();
  }

  [(__CFDictionary *)v4 setObject:self->_callType forKeyedSubscript:IDSGlobalLinkOptionCallTypeKey];
  sharedState2 = [(IDSDSession *)self sharedState];
  clientUUID = [sharedState2 clientUUID];
  [(__CFDictionary *)v4 setObject:clientUUID forKeyedSubscript:kIDSQRAllocateKey_RelayClientUUID];

  v18 = [NSNumber numberWithBool:self->_forceTCPFallbackOnCell];
  [(__CFDictionary *)v4 setObject:v18 forKeyedSubscript:IDSGroupSessionForceTCPFallbackOnCellKey];

  v19 = [NSNumber numberWithBool:self->_forceTCPFallbackOnWiFi];
  [(__CFDictionary *)v4 setObject:v19 forKeyedSubscript:IDSGroupSessionForceTCPFallbackOnWiFiKey];

  v20 = [NSNumber numberWithBool:self->_disableP2PLinks];
  [(__CFDictionary *)v4 setObject:v20 forKeyedSubscript:IDSGlobalLinkDisableP2PLinks];

  v21 = [NSNumber numberWithBool:self->_forceIPv6];
  [(__CFDictionary *)v4 setObject:v21 forKeyedSubscript:IDSGlobalLinkOptionForceIPv6Key];

  v22 = [NSNumber numberWithBool:self->_isShortMKIEnabled];
  [(__CFDictionary *)v4 setObject:v22 forKeyedSubscript:IDSGroupSessionShortMKIEnabledKey];

  v23 = [NSNumber numberWithBool:self->_isTLEEnabled];
  [(__CFDictionary *)v4 setObject:v23 forKeyedSubscript:IDSGroupSessionTLEEnabledKey];

  v24 = [NSNumber numberWithBool:self->_isPartialTLEUPlusOneEnabled];
  [(__CFDictionary *)v4 setObject:v24 forKeyedSubscript:IDSGroupSessionPartialTLEUPlusOneEnabledKey];

  [(__CFDictionary *)v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSGroupSessionGeckoEnabledKey];
  v25 = [NSNumber numberWithBool:self->_allowExpensiveQualityMetrics];
  [(__CFDictionary *)v4 setObject:v25 forKeyedSubscript:IDSGlobalLinkOptionAllowExpensiveQualityMetrics];

  return v4;
}

- (void)connectQRServer:(id)server withPreferredLocalInterface:(int)interface
{
  serverCopy = server;
  theDict = serverCopy;
  if (serverCopy)
  {
    v7 = serverCopy;
    interfaceCopy = interface;
    [(IDSGFTMetricsCollector *)self->_metricsCollector connectQRServer];
    v155 = [(IDSDSession *)self prepareSessionInfoForGlobalLink:v7];
    v153 = [(__CFDictionary *)v155 objectForKey:kIDSQRAllocateKey_LinkSuggestion];
    v152 = [(__CFDictionary *)v155 objectForKey:kIDSQRAllocateKey_LinkScore];
    v151 = [(__CFDictionary *)v155 objectForKey:kIDSQRAllocateKey_RelayIPPreference];
    v150 = [(__CFDictionary *)v155 objectForKey:kIDSQRAllocateKey_UplinkNackDisabled];
    [(IDSDSession *)self _sendLinkSelectionPreference:v153 linkScore:v152 ipPreference:v151 uplinkNackDisabled:v150];
    v8 = kIDSQRAllocateKey_AllocateType;
    v9 = [(__CFDictionary *)v155 objectForKey:kIDSQRAllocateKey_AllocateType];
    intValue = [v9 intValue];

    if (intValue != 3)
    {
      v147 = 0;
      v17 = [(__CFDictionary *)v155 objectForKeyedSubscript:v8];
      intValue2 = [v17 intValue];
      if (intValue2 == 2)
      {
        sharedState = [(IDSDSession *)self sharedState];
        sharedSession = [sharedState sharedSession];
      }

      else
      {
        sharedSession = 0;
      }

      goto LABEL_23;
    }

    if (self->_groupSessionState == 2)
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        groupID = [sharedState2 groupID];
        *buf = 138412290;
        v163 = groupID;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User already left group %@; don't connect", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState3 = [(IDSDSession *)self sharedState];
          groupID2 = [sharedState3 groupID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            sharedState4 = [(IDSDSession *)self sharedState];
            groupID3 = [sharedState4 groupID];
            _IDSLogV();
          }
        }
      }

      goto LABEL_187;
    }

    if (kIDSQRAllocateKey_RecipientID)
    {
      Value = CFDictionaryGetValue(theDict, kIDSQRAllocateKey_RecipientID);
    }

    else
    {
      Value = 0;
    }

    [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setParticipantID:Value];
    v147 = intValue == 3;
    if (kIDSQRAllocateKey_RelaySessionID)
    {
      v62 = CFDictionaryGetValue(theDict, kIDSQRAllocateKey_RelaySessionID);
    }

    else
    {
      v62 = 0;
    }

    [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setRelaySessionID:v62];
    participantID = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
    if (participantID)
    {
      relaySessionID = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams relaySessionID];
      if (relaySessionID)
      {
        participantData = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantData];

        if (participantData)
        {
          v66 = +[IDSGroupEncryptionController sharedInstance];
          sharedState5 = [(IDSDSession *)self sharedState];
          groupID4 = [sharedState5 groupID];
          sharedState6 = [(IDSDSession *)self sharedState];
          uniqueID = [sharedState6 uniqueID];
          [v66 updateServerDesiredKeyMaterialsForGroup:groupID4 sessionID:uniqueID];

          quicMaterialExchangeProvider = [(IDSGroupDefaultRootMaterialExchangeController *)self->_exchangeController quicMaterialExchangeProvider];
          if (quicMaterialExchangeProvider)
          {
            CFDictionarySetValue(v155, IDSGroupSessionQUICExchangeProviderKey, quicMaterialExchangeProvider);
          }

          else
          {
            v137 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1009194DC();
            }
          }

          sharedSession = 1;
LABEL_23:
          v22 = [NSNumber numberWithUnsignedInteger:self->_preferredAddressFamily];
          if (v22)
          {
            CFDictionarySetValue(v155, IDSGlobalLinkOptionPreferredAddressFamilyKey, v22);
          }

          else
          {
            v23 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100919564();
            }
          }

          v24 = [NSNumber numberWithBool:self->_preferCellularForCallSetup];
          if (v24)
          {
            CFDictionarySetValue(v155, IDSGlobalLinkOptionPreferCellularForCallSetupKey, v24);
          }

          else
          {
            v25 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1009195EC();
            }
          }

          v26 = [NSNumber numberWithBool:sharedSession];
          if (v26)
          {
            CFDictionarySetValue(v155, IDSSessionIsMultiwayKey, v26);
          }

          else
          {
            v27 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100919674();
            }
          }

          v28 = [NSNumber numberWithBool:self->_sessionIsNonUserParticipantInitiated];
          if (v28)
          {
            CFDictionarySetValue(v155, IDSGlobalLinkOptionSessionIsNonUserParticipantInitiated, v28);
          }

          else
          {
            v29 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1009196FC();
            }
          }

          v30 = [NSNumber numberWithBool:self->_handOffOverQREnabled];
          if (v30)
          {
            CFDictionarySetValue(v155, IDSGlobalLinkOptionSessionHandOffOverQREnabled, v30);
          }

          else
          {
            v31 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100919784();
            }
          }

          v32 = [NSNumber numberWithUnsignedChar:self->_cellularSlicingFlags];
          if (v32)
          {
            CFDictionarySetValue(v155, IDSGlobalLinkOptionSessionCellularSlicingFlags, v32);
          }

          else
          {
            v33 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10091980C();
            }
          }

          participantInfo = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];
          v35 = [participantInfo length] == 0;

          if (!v35)
          {
            participantInfo2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];
            if (participantInfo2)
            {
              CFDictionarySetValue(v155, IDSGroupSessionParticipantDataKey, participantInfo2);
            }

            else
            {
              v37 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919894();
              }
            }
          }

          sharedState7 = [(IDSDSession *)self sharedState];
          if (([sharedState7 useQRDirectly] & 1) == 0)
          {
            sharedState8 = [(IDSDSession *)self sharedState];
            if ([sharedState8 clientType] != 1)
            {
              sharedState9 = [(IDSDSession *)self sharedState];
              if ([sharedState9 clientType] != 5)
              {
                sharedState10 = [(IDSDSession *)self sharedState];
                v73 = [sharedState10 clientType] == 6;

                if (!v73 && intValue != 3)
                {
                  goto LABEL_72;
                }

                goto LABEL_66;
              }
            }
          }

LABEL_66:
          selfCopy = self;
          CFDictionarySetValue(v155, kIDSQRAllocateKey_AlternateDelegate, selfCopy);

          os_unfair_lock_lock(&selfCopy->_clientChannelLock);
          v42 = [NSNumber numberWithUnsignedLongLong:[(IDSClientChannel *)selfCopy->_clientChannel clientUniquePID]];
          if (v42)
          {
            CFDictionarySetValue(v155, kIDSQRAllocateKey_ClientUniquePID, v42);
          }

          else
          {
            v43 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10091991C();
            }
          }

          os_unfair_lock_unlock(&selfCopy->_clientChannelLock);
LABEL_72:
          v44 = [NSNumber numberWithInteger:self->_linkProtocol];
          if (v44)
          {
            CFDictionarySetValue(v155, kIDSQRAllocateKey_RelayLinkProtocol, v44);
          }

          else
          {
            v45 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1009199A4();
            }
          }

          if (self->_linkProtocol != 2)
          {
            v46 = [NSNumber numberWithUnsignedShort:self->_relayPort];
            if (v46)
            {
              CFDictionarySetValue(v155, kIDSQRAllocateKey_RelayPort, v46);
            }

            else
            {
              v47 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919A2C();
              }
            }
          }

          sharedState11 = [(IDSDSession *)self sharedState];
          isInitiator = [sharedState11 isInitiator];

          if (intValue == 3)
          {
            if (!self->_startedAsUPlusOneSession)
            {
LABEL_144:
              [(IDSGFTMetricsCollector *)self->_metricsCollector setIsInitiator:isInitiator];
              v96 = self->_metricsCollector;
              if (v96)
              {
                CFDictionarySetValue(v155, IDSGlobalLinkOptionMetricsCollectorKey, v96);
              }

              else
              {
                v97 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_100919CD4();
                }
              }

              v98 = +[IDSGroupEncryptionController sharedInstance];
              p2pNegotiatorProvider = [v98 p2pNegotiatorProvider];

              if (p2pNegotiatorProvider)
              {
                CFDictionarySetValue(v155, IDSGlobalLinkOptionP2PNegotiatorKey, p2pNegotiatorProvider);
              }

              else
              {
                v100 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_100919D5C();
                }
              }

              os_unfair_lock_lock(&self->_clientChannelLock);
              v101 = [NSNumber numberWithUnsignedLongLong:[(IDSClientChannel *)self->_clientChannel clientUniquePID]];
              if (v101)
              {
                CFDictionarySetValue(v155, kIDSQRAllocateKey_ClientUniquePID, v101);
              }

              else
              {
                v102 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10091991C();
                }
              }

              os_unfair_lock_unlock(&self->_clientChannelLock);
              v103 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v104 = intValue;
                sharedState12 = [(IDSDSession *)self sharedState];
                uniqueID2 = [sharedState12 uniqueID];
                v107 = @"YES";
                if (v104 == 3)
                {
                  v108 = @"YES";
                }

                else
                {
                  v108 = @"NO";
                }

                if (isInitiator)
                {
                  v109 = @"YES";
                }

                else
                {
                  v109 = @"NO";
                }

                sharedState13 = [(IDSDSession *)self sharedState];
                if (![sharedState13 isScreenSharingSession])
                {
                  v107 = @"NO";
                }

                sharedState14 = [(IDSDSession *)self sharedState];
                *buf = 138413314;
                v163 = uniqueID2;
                v164 = 2112;
                v165 = v108;
                v166 = 2112;
                v167 = v109;
                v168 = 2112;
                v169 = v107;
                v170 = 1024;
                LODWORD(v171) = [sharedState14 clientType];
                _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Connect to QR server for %@. (sharedSession:%@, isInitiator:%@, isLegacy:%@, clientType:%d)", buf, 0x30u);

                intValue = v104;
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                sharedState15 = [(IDSDSession *)self sharedState];
                uniqueID3 = [sharedState15 uniqueID];
                v114 = @"NO";
                v115 = intValue == 3 ? @"YES" : @"NO";
                v116 = isInitiator ? @"YES" : @"NO";
                sharedState16 = [(IDSDSession *)self sharedState];
                v118 = [sharedState16 isScreenSharingSession] ? @"YES" : @"NO";
                sharedState17 = [(IDSDSession *)self sharedState];
                v143 = v118;
                clientType = [sharedState17 clientType];
                v141 = v115;
                v142 = v116;
                v138 = uniqueID3;
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v120 = [(IDSDSession *)self sharedState:uniqueID3];
                  uniqueID4 = [v120 uniqueID];
                  sharedState18 = [(IDSDSession *)self sharedState];
                  if ([sharedState18 isScreenSharingSession])
                  {
                    v114 = @"YES";
                  }

                  sharedState19 = [(IDSDSession *)self sharedState];
                  v143 = v114;
                  clientType = [sharedState19 clientType];
                  v141 = v115;
                  v142 = v116;
                  v138 = uniqueID4;
                  _IDSLogV();
                }
              }

              v124 = [(IDSDSession *)self qrAllocator:v138];
              sharedState20 = [(IDSDSession *)self sharedState];
              uniqueID5 = [sharedState20 uniqueID];
              v127 = [v124 getLocalParticipantIDForRelaySessionID:uniqueID5];

              v128 = +[IDSGroupEncryptionController sharedInstance];
              sharedState21 = [(IDSDSession *)self sharedState];
              uniqueID6 = [sharedState21 uniqueID];
              sharedState22 = [(IDSDSession *)self sharedState];
              uniqueID7 = [sharedState22 uniqueID];
              v133 = [v128 setLocalParticipantID:v127 forGroupID:uniqueID6 sessionID:uniqueID7];

              if (v133 == 2)
              {
                [(IDSGFTMetricsCollector *)self->_metricsCollector participantIdChanged];
              }

              objc_initWeak(buf, self);
              utunController = [(IDSDSession *)self utunController];
              sharedState23 = [(IDSDSession *)self sharedState];
              uniqueID8 = [sharedState23 uniqueID];
              v156[0] = _NSConcreteStackBlock;
              v156[1] = 3221225472;
              v156[2] = sub_10039C064;
              v156[3] = &unk_100BD9D88;
              objc_copyWeak(&v159, buf);
              v157 = v155;
              selfCopy2 = self;
              v160 = isInitiator;
              v161 = v147;
              [utunController connectGlobalLinkForDevice:uniqueID8 sessionInfo:v157 connectReadyHandler:v156 withLocalInterfacePreference:interfaceCopy];

              objc_destroyWeak(&v159);
              objc_destroyWeak(buf);
LABEL_187:

              goto LABEL_188;
            }

            v49 = 0;
            if (v155 && kIDSQRAllocateKey_isInitiator)
            {
              v49 = CFDictionaryGetValue(v155, kIDSQRAllocateKey_isInitiator);
            }

            if ([v49 BOOLValue])
            {
              if (qword_100CBD178 != -1)
              {
                sub_1009186A4();
              }

              v50 = mach_continuous_time();
              v51 = *&qword_100CBD180;
              sharedState24 = [(IDSDSession *)self sharedState];
              [sharedState24 setInviteSentTime:v51 * v50];

              sharedState25 = [(IDSDSession *)self sharedState];
              [sharedState25 inviteSentTime];
              v54 = [NSNumber numberWithDouble:?];

              if (v54)
              {
                goto LABEL_93;
              }

              v95 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919C4C();
              }

              goto LABEL_141;
            }

            v54 = [NSNumber numberWithDouble:self->_inviteRecvTime];
            if (v54)
            {
LABEL_108:
              CFDictionarySetValue(v155, IDSGlobalLinkOptionInviteRecvTimeKey, v54);
LABEL_138:
              isInitiator = 0;
LABEL_143:

              goto LABEL_144;
            }

            v94 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100919BC4();
            }
          }

          else
          {
            sharedState26 = [(IDSDSession *)self sharedState];
            v56 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState26 enableSKE]);

            if (v56)
            {
              CFDictionarySetValue(v155, IDSGlobalLinkOptionEnableSKEKey, v56);
            }

            else
            {
              v57 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919AB4();
              }
            }

            sharedState27 = [(IDSDSession *)self sharedState];
            v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState27 useSecureQRControlMessage]);

            if (v59)
            {
              CFDictionarySetValue(v155, IDSGlobalLinkOptionUseSecureControlMessageKey, v59);
            }

            else
            {
              v60 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919B3C();
              }
            }

            if (isInitiator)
            {
              sharedState28 = [(IDSDSession *)self sharedState];
              [sharedState28 inviteSentTime];
              v54 = [NSNumber numberWithDouble:?];

              if (v54)
              {
LABEL_93:
                CFDictionarySetValue(v155, IDSGlobalLinkOptionInviteSentTimeKey, v54);
LABEL_142:
                isInitiator = 1;
                goto LABEL_143;
              }

              v93 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100919C4C();
              }

LABEL_141:

              goto LABEL_142;
            }

            v54 = [NSNumber numberWithDouble:self->_inviteRecvTime];
            if (v54)
            {
              goto LABEL_108;
            }

            v92 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100919BC4();
            }
          }

          goto LABEL_138;
        }
      }

      else
      {
      }
    }

    v74 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      sharedState29 = [(IDSDSession *)self sharedState];
      groupID5 = [sharedState29 groupID];
      groupStatusNotificationParams = self->_groupStatusNotificationParams;
      participantID2 = [(IDSGroupStatusNotificationParameters *)groupStatusNotificationParams participantID];
      relaySessionID2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams relaySessionID];
      participantData2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantData];
      *buf = 138413314;
      v163 = groupID5;
      v164 = 2048;
      v165 = groupStatusNotificationParams;
      v166 = 2112;
      v167 = participantID2;
      v168 = 2112;
      v169 = relaySessionID2;
      v170 = 2112;
      v171 = participantData2;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "connectQRServer for group %@ failed due to missing (params %p, participantID %@, relaySessionID %@, participantData %@)", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState30 = [(IDSDSession *)self sharedState];
        groupID6 = [sharedState30 groupID];
        v83 = self->_groupStatusNotificationParams;
        participantID3 = [(IDSGroupStatusNotificationParameters *)v83 participantID];
        relaySessionID3 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams relaySessionID];
        participantData3 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantData];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v86 = [(IDSDSession *)self sharedState:groupID6];
          groupID7 = [v86 groupID];
          v89 = self->_groupStatusNotificationParams;
          p_groupStatusNotificationParams = &self->_groupStatusNotificationParams;
          participantID4 = [(IDSGroupStatusNotificationParameters *)v89 participantID];
          relaySessionID4 = [(IDSGroupStatusNotificationParameters *)*p_groupStatusNotificationParams relaySessionID];
          participantData4 = [(IDSGroupStatusNotificationParameters *)*p_groupStatusNotificationParams participantData];
          _IDSLogV();
        }
      }
    }

    goto LABEL_187;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "connectQRServer failed due to invalid parameter.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

LABEL_188:
}

- (void)_noteJoinNotificationWillSend
{
  if (self->_joinSendStartTime == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_100918708();
    }

    self->_joinSendStartTime = *&qword_100CBD180 * mach_continuous_time();
  }

  [(IDSDSession *)self _serverSpecifiedJoinNotificationDeliveryTimeout];
  v4 = v3;
  sharedState = [(IDSDSession *)self sharedState];
  destinations = [sharedState destinations];
  v7 = [destinations count];

  if (v7 && v4 > 2.22044605e-16)
  {
    objc_initWeak(&location, self);
    block = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_10039E16C;
    v44 = &unk_100BD9D38;
    objc_copyWeak(&v45, &location);
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    joinNotificationDeliveryTimeoutBlock = self->_joinNotificationDeliveryTimeoutBlock;
    self->_joinNotificationDeliveryTimeoutBlock = v8;

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      groupID = [sharedState2 groupID];
      v13 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
      sharedState3 = [(IDSDSession *)self sharedState];
      destinations2 = [sharedState3 destinations];
      *buf = 138413058;
      v48 = groupID;
      v49 = 2048;
      v50 = v4;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = destinations2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting timeout block for reliable join notification delivery { groupID: %@, timeout: %f, timeoutBlock: %@ destinations: %@ }", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState4 groupID];
        v18 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
        sharedState5 = [(IDSDSession *)self sharedState];
        [sharedState5 destinations];
        v40 = destinations4 = v18;
        v38 = v4;
        v37 = groupID2;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v20 = [(IDSDSession *)self sharedState:groupID2];
          groupID3 = [v20 groupID];
          v22 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
          sharedState6 = [(IDSDSession *)self sharedState];
          [sharedState6 destinations];
          v40 = destinations4 = v22;
          v38 = v4;
          v37 = groupID3;
          _IDSLogV();
        }
      }
    }

    v24 = dispatch_walltime(0, (v4 * 1000000000.0));
    v25 = im_primary_queue();
    dispatch_after(v24, v25, self->_joinNotificationDeliveryTimeoutBlock);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sharedState7 = [(IDSDSession *)self sharedState];
      groupID4 = [sharedState7 groupID];
      sharedState8 = [(IDSDSession *)self sharedState];
      destinations3 = [sharedState8 destinations];
      *buf = 138412802;
      v48 = groupID4;
      v49 = 2048;
      v50 = v4;
      v51 = 2112;
      v52 = destinations3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not starting timeout block for reliable join notification delivery { groupID: %@, timeout: %f, destinations: %@ }", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState9 = [(IDSDSession *)self sharedState];
        groupID5 = [sharedState9 groupID];
        sharedState10 = [(IDSDSession *)self sharedState];
        destinations4 = [sharedState10 destinations];
        v38 = v4;
        v37 = groupID5;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v34 = [(IDSDSession *)self sharedState:groupID5];
          groupID6 = [v34 groupID];
          sharedState11 = [(IDSDSession *)self sharedState];
          destinations4 = [sharedState11 destinations];
          v38 = v4;
          v37 = groupID6;
          _IDSLogV();
        }
      }
    }
  }

  [(IDSGFTMetricsCollector *)self->_metricsCollector willSendJoin:v37];
}

- (void)_noteJoinNotificationDidDeliverWithSuccess:(BOOL)success
{
  successCopy = success;
  if (self->_joinSendEndTime == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_100918708();
    }

    self->_joinSendEndTime = *&qword_100CBD180 * mach_continuous_time();
  }

  if (successCopy)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      groupID = [sharedState groupID];
      v8 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
      *buf = 138412546;
      v24 = groupID;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling timeout block for reliable join notification delivery { groupID: %@, timeoutBlock: %@ }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState2 groupID];
        v22 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v10 = [(IDSDSession *)self sharedState:groupID2];
          groupID2 = [v10 groupID];
          v22 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
          _IDSLogV();
        }
      }
    }

    p_joinNotificationDeliveryTimeoutBlock = &self->_joinNotificationDeliveryTimeoutBlock;
    joinNotificationDeliveryTimeoutBlock = self->_joinNotificationDeliveryTimeoutBlock;
    if (joinNotificationDeliveryTimeoutBlock)
    {
      dispatch_block_cancel(joinNotificationDeliveryTimeoutBlock);
LABEL_22:
      v20 = *p_joinNotificationDeliveryTimeoutBlock;
      *p_joinNotificationDeliveryTimeoutBlock = 0;
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      groupID3 = [sharedState3 groupID];
      v16 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
      *buf = 138412546;
      v24 = groupID3;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Triggering early execution of timeout block for reliable join notification delivery { groupID: %@, timeoutBlock: %@ }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState4 groupID];
        v22 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v18 = [(IDSDSession *)self sharedState:groupID2];
          groupID2 = [v18 groupID];
          v22 = objc_retainBlock(self->_joinNotificationDeliveryTimeoutBlock);
          _IDSLogV();
        }
      }
    }

    p_joinNotificationDeliveryTimeoutBlock = &self->_joinNotificationDeliveryTimeoutBlock;
    v19 = self->_joinNotificationDeliveryTimeoutBlock;
    if (v19)
    {
      v19[2]();
      goto LABEL_22;
    }
  }

  [(IDSGFTMetricsCollector *)self->_metricsCollector didSendJoin:groupID2];
}

- (double)_serverSpecifiedJoinNotificationDeliveryTimeout
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"ids-session-join-reliability-timeout"];

  v4 = 30.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

- (BOOL)shouldAllocateForInvitee
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"ids-session-allocate-for-invitee"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)openSocketWithOptionsCallback:(int)callback linkType:(unint64_t)type newConnection:(id)connection error:(id)error forIndex:(int)index priority:(int64_t)priority
{
  v9 = *&index;
  v12 = *&callback;
  connectionCopy = connection;
  errorCopy = error;
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v36 = v12;
    *&v36[4] = 1024;
    *&v36[6] = type;
    v37 = 2112;
    v38 = errorCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Open socket for session complete (socket: %d, initial link type:%d) (error: %@)", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      typeCopy2 = type;
      v29 = errorCopy;
      v27 = v12;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        typeCopy2 = type;
        v29 = errorCopy;
        v27 = v12;
        _IDSLogV();
      }
    }
  }

  [(IDSDSession *)self _setInitialLinkType:type, v27, typeCopy2, v29];
  if ([(IDSDSession *)self _shouldUseIPsecLink])
  {
    if (connectionCopy && !errorCopy)
    {
      priorityCopy2 = 300;
      if (priority > 599)
      {
        if (priority == 600 || priority == 700 || priority == 800)
        {
          goto LABEL_36;
        }
      }

      else
      {
        priorityCopy2 = priority;
        if (priority == 100)
        {
          goto LABEL_36;
        }

        priorityCopy2 = priority;
        if (priority == 200)
        {
          goto LABEL_36;
        }

        priorityCopy2 = 300;
        if (priority == 300)
        {
          goto LABEL_36;
        }
      }

      priorityCopy2 = 200;
LABEL_36:
      v25 = [[IDSDirectDataPathSocket alloc] initSocketWithNWConnection:connectionCopy priority:priorityCopy2 trafficClass:TrafficClassForIDSOpenSocketPriorityLevel() serviceConnectorConnection:0 streamSocket:0];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10039ED70;
      v30[3] = &unk_100BD9DB0;
      v34 = v9;
      v31 = connectionCopy;
      selfCopy = self;
      v33 = v25;
      v26 = v25;
      [v26 startSocket:v30];

      goto LABEL_39;
    }

    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = errorCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "openSocketToDevice: invalid nw connection (error: %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else if ((v12 & 0x80000000) != 0 || errorCopy)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "openSocketToDevice: failing because of invalid socket descriptor", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    sharedState = [(IDSDSession *)self sharedState];
    [sharedState clearAllTimers];

    [(IDSDSession *)self endSessionWithReason:10];
  }

  else
  {
    if (v9 == -1)
    {
      self->_socketDescriptor = v12;
    }

    else
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      extraConnections = selfCopy2->_extraConnections;
      v20 = [NSNumber numberWithInt:v12];
      v21 = [NSNumber numberWithInt:v9];
      [(NSMutableDictionary *)extraConnections setObject:v20 forKey:v21];

      objc_sync_exit(selfCopy2);
    }

    [(IDSDSession *)self checkAndCallSessionStart];
  }

LABEL_39:
}

- (void)openSocketToDevice:(id)device
{
  deviceCopy = device;
  if (self->_shouldAssertRealTimeMode && !self->_assertedRealTimeMode)
  {
    self->_assertedRealTimeMode = 1;
    IDSTransportThreadAddBlock();
  }

  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v7 = [accountController accountWithUniqueID:accountID];
  service = [v7 service];
  identifier = [service identifier];

  sharedState2 = [(IDSDSession *)self sharedState];
  clientType = [sharedState2 clientType];

  if (clientType == 4)
  {
    self->_bypassUTun = 1;
  }

  if ([(IDSDSession *)self _shouldUseIPsecLink])
  {
    self->_bypassUTun = 0;
    sharedState3 = [(IDSDSession *)self sharedState];
    [sharedState3 setUseBTDatagramPipe:0];

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_bypassUTun)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      sharedState4 = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState4 uniqueID];
      *buf = 138412802;
      v82 = v13;
      v83 = 2112;
      v84 = identifier;
      v85 = 2112;
      v86 = uniqueID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IPsecLink is enabled. UTun bypass: %@ service: %@, session: %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v16 = self->_bypassUTun ? @"YES" : @"NO";
      sharedState5 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState5 uniqueID];
      v65 = v16;
      v68 = identifier;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
LABEL_30:
        if (self->_bypassUTun)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v25 = [(IDSDSession *)self sharedState:v65];
        [v25 uniqueID];
        uniqueID2 = v68 = identifier;
        v65 = v24;
        _IDSLogV();
      }
    }
  }

  else
  {
    self->_bypassUTun = IMGetDomainBoolForKeyWithDefaultValue();
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_bypassUTun)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      sharedState6 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState6 uniqueID];
      *buf = 138412802;
      v82 = v19;
      v83 = 2112;
      v84 = identifier;
      v85 = 2112;
      v86 = uniqueID3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "UTun bypass: %@ service: %@, session: %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v22 = self->_bypassUTun ? @"YES" : @"NO";
      sharedState7 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState7 uniqueID];
      v65 = v22;
      v68 = identifier;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        goto LABEL_30;
      }
    }
  }

  v26 = [(IDSDSession *)self sharedState:v65];
  if ([v26 clientType] == 1)
  {
    v27 = 1;
  }

  else
  {
    sharedState8 = [(IDSDSession *)self sharedState];
    if ([sharedState8 clientType] == 5)
    {
      v27 = 1;
    }

    else
    {
      sharedState9 = [(IDSDSession *)self sharedState];
      v27 = [sharedState9 clientType] == 6;
    }
  }

  sharedState10 = [(IDSDSession *)self sharedState];
  useQRDirectly = [sharedState10 useQRDirectly];

  if ((useQRDirectly | v27))
  {
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sharedState11 = [(IDSDSession *)self sharedState];
      useQRDirectly2 = [sharedState11 useQRDirectly];
      v35 = @"NO";
      if (useQRDirectly2)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      *buf = 138412802;
      v82 = deviceCopy;
      v84 = v36;
      v83 = 2112;
      if (v27)
      {
        v35 = @"YES";
      }

      v85 = 2112;
      v86 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "openSocketToDevice deviceID %@, self.sharedState.useQRDirectly %@, _isFaceTime %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState12 = [(IDSDSession *)self sharedState];
      v38 = [sharedState12 useQRDirectly] ? @"YES" : @"NO";
      v39 = v27 ? @"YES" : @"NO";
      v69 = v38;
      v71 = v39;
      v66 = deviceCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v40 = [(IDSDSession *)self sharedState:deviceCopy];
        if ([v40 useQRDirectly])
        {
          v41 = @"YES";
        }

        else
        {
          v41 = @"NO";
        }

        v69 = v41;
        v71 = v39;
        v66 = deviceCopy;
        _IDSLogV();
      }
    }

    v42 = [(IDSDSession *)self sharedState:v66];
    [v42 clearAllTimers];

    [(IDSDSession *)self startQRSession];
  }

  else
  {
    v43 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      bypassUTun = self->_bypassUTun;
      *buf = 67109120;
      LODWORD(v82) = bypassUTun;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "open socket for session, byPassUtun: %d", buf, 8u);
    }

    sharedState13 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState13 serviceName];
    v67 = self->_bypassUTun;
    DLCSessionLogWithLevel();

    if (self->_bypassUTun)
    {
      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3221225472;
      v80[2] = sub_10039FB9C;
      v80[3] = &unk_100BD9E18;
      v80[4] = self;
      v47 = [[IDSConnectionContext alloc] initWithReadHandler:v80, v67];
      connectionContext = self->_connectionContext;
      self->_connectionContext = v47;
    }

    _acceptedDeviceUniqueID = [(IDSDSession *)self _acceptedDeviceUniqueID];
    _acceptedDeviceToken = [(IDSDSession *)self _acceptedDeviceToken];
    rawToken = [_acceptedDeviceToken rawToken];
    v73 = [(IDSDSession *)self _socketOptionsForDevice:deviceCopy uniqueID:_acceptedDeviceUniqueID pushToken:rawToken connectionSuffix:0];

    v52 = [v73 objectForKey:IDSOpenSocketOptionPriorityKey];
    v72 = v52;
    if (v52)
    {
      integerValue = [v52 integerValue];
    }

    else
    {
      integerValue = 200;
    }

    utunController = [(IDSDSession *)self utunController];
    v54 = im_primary_queue();
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10039FC24;
    v79[3] = &unk_100BD9E40;
    v79[4] = self;
    v79[5] = integerValue;
    [utunController openSocketWithOptions:v73 queue:v54 completionHandler:v79];

    sharedState14 = [(IDSDSession *)self sharedState];
    LODWORD(v54) = [sharedState14 connectionCountHint] > 1;

    if (v54)
    {
      sharedState15 = [(IDSDSession *)self sharedState];
      self->_extraConnectionCount = [sharedState15 connectionCountHint] - 1;

      if (self->_extraConnectionCount)
      {
        v57 = 0;
        do
        {
          utunController2 = [(IDSDSession *)self utunController];
          _acceptedDeviceUniqueID2 = [(IDSDSession *)self _acceptedDeviceUniqueID];
          _acceptedDeviceToken2 = [(IDSDSession *)self _acceptedDeviceToken];
          rawToken2 = [_acceptedDeviceToken2 rawToken];
          v62 = [NSString stringWithFormat:@"-%d", v57];
          v63 = [(IDSDSession *)self _socketOptionsForDevice:deviceCopy uniqueID:_acceptedDeviceUniqueID2 pushToken:rawToken2 connectionSuffix:v62];
          v64 = im_primary_queue();
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_10039FC44;
          v77[3] = &unk_100BD9E68;
          v78 = v57;
          v77[4] = self;
          v77[5] = integerValue;
          [utunController2 openSocketWithOptions:v63 queue:v64 completionHandler:v77];

          ++v57;
        }

        while (self->_extraConnectionCount > v57);
      }
    }
  }
}

- (void)_broadcastSessionStartWithSocket:(int)socket
{
  if (socket == -1)
  {
    value = 0;
  }

  else
  {
    value = xpc_fd_create(socket);
  }

  v4 = objc_alloc_init(IMMessageContext);
  [v4 setShouldBoost:1];
  v5 = +[IDSDaemon sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  pushTopic = [sharedState pushTopic];
  v8 = [v5 broadcasterForTopic:pushTopic entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v4];

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9)
  {
    IMInsertBoolsToXPCDictionary();
    xpc_dictionary_set_value(v9, "object", value);
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = [(IDSDSession *)self sharedState:1];
    uniqueID = [v11 uniqueID];

    if (uniqueID)
    {
      CFDictionarySetValue(v10, @"sessionID", uniqueID);
    }

    CFDictionarySetValue(v10, @"object-type", @"session-device-socket");
    v13 = [(__CFDictionary *)v10 copy];
    IMInsertKeyedCodableObjectsToXPCDictionary();

    [v8 sendXPCObject:{v9, v13, 0}];
  }
}

- (BOOL)_shouldUseIPsecLink
{
  isWithDefaultPairedDevice = [(IDSDSession *)self isWithDefaultPairedDevice];
  if (isWithDefaultPairedDevice)
  {
    v3 = +[IDSPairingManager sharedInstance];
    shouldUseIPsecLinkForDefaultPairedDevice = [v3 shouldUseIPsecLinkForDefaultPairedDevice];

    LOBYTE(isWithDefaultPairedDevice) = shouldUseIPsecLinkForDefaultPairedDevice;
  }

  return isWithDefaultPairedDevice;
}

- (void)_sessionStartWithSocketDescriptor:(int)descriptor
{
  if (!self->_sessionStartedCalled)
  {
    LODWORD(v3) = descriptor;
    self->_sessionStartedCalled = 1;
    sharedState = [(IDSDSession *)self sharedState];
    useBTDatagramPipe = [sharedState useBTDatagramPipe];

    if ((self->_bypassUTun | ([(IDSDSession *)self _shouldUseIPsecLink]| useBTDatagramPipe)))
    {
      v3 = 0xFFFFFFFFLL;
    }

    else
    {
      v3 = v3;
    }

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (self->_bypassUTun)
      {
        v8 = @"YES";
      }

      *buf = 67109378;
      v29 = v3;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sessionStartWithSocketDescriptor socketDescriptor %d, bypassUtun: %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = self->_bypassUTun ? @"YES" : @"NO";
      v26 = v3;
      v27 = v9;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (self->_bypassUTun)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v26 = v3;
        v27 = v10;
        _IDSLogV();
      }
    }

    [(IDSDSession *)self _broadcastSessionStartWithSocket:v3, v26, v27];
    sharedState2 = [(IDSDSession *)self sharedState];
    sharedSession = [sharedState2 sharedSession];

    if ((sharedSession & 1) == 0)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      [sharedState3 setState:5];
    }

    v14 = objc_alloc_init(NSDate);
    startDate = self->_startDate;
    self->_startDate = v14;

    [(IDSDSession *)self submitAWDMetricsForIDSSessionConnected];
    v16 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v16 isInternalInstall];

    if (isInternalInstall)
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      if (([sharedState4 useQRDirectly] & 1) == 0)
      {
        sharedState5 = [(IDSDSession *)self sharedState];
        if ([sharedState5 clientType] != 1)
        {
          sharedState6 = [(IDSDSession *)self sharedState];
          if ([sharedState6 clientType] != 5)
          {
            sharedState7 = [(IDSDSession *)self sharedState];
            v25 = [sharedState7 clientType] == 6;

            if (!v25)
            {
              return;
            }

            goto LABEL_28;
          }
        }
      }

LABEL_28:
      qrAllocator = [(IDSDSession *)self qrAllocator];
      sharedState8 = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState8 uniqueID];
      [qrAllocator getServerProviderForIDSSessionID:uniqueID];

      IDSTransportThreadAddBlock();
    }
  }
}

- (void)checkAndCallSessionStart
{
  if (self->_extraConnectionCount)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = [(NSMutableDictionary *)selfCopy->_extraConnections count]< self->_extraConnectionCount;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  if (self->_socketDescriptor != -1 && !v4)
  {
    sharedState = [(IDSDSession *)self sharedState];
    [sharedState clearAllTimers];

    socketDescriptor = self->_socketDescriptor;

    [(IDSDSession *)self _sessionStartWithSocketDescriptor:socketDescriptor];
  }
}

- (void)_setInitialLinkType:(unint64_t)type
{
  if (type && !self->_initialLinkType)
  {
    self->_initialLinkType = type;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState uniqueID];
      *buf = 67109378;
      typeCopy = type;
      v25 = 2112;
      v26 = uniqueID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set initial link type %d for session %@.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        uniqueID2 = [sharedState2 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v9 = [(IDSDSession *)self sharedState:type];
          uniqueID3 = [v9 uniqueID];
          _IDSLogV();
        }
      }
    }

    v10 = objc_alloc_init(IMMessageContext);
    [v10 setShouldBoost:1];
    v11 = +[IDSDaemon sharedInstance];
    sharedState3 = [(IDSDSession *)self sharedState];
    pushTopic = [sharedState3 pushTopic];
    v14 = [v11 broadcasterForTopic:pushTopic entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v10];

    v15 = xpc_dictionary_create(0, 0, 0);
    if (v15)
    {
      IMInsertBoolsToXPCDictionary();
      v16 = xpc_int64_create(type);
      xpc_dictionary_set_value(v15, "object", v16);

      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = [(IDSDSession *)self sharedState:1];
      uniqueID4 = [v18 uniqueID];

      if (uniqueID4)
      {
        CFDictionarySetValue(v17, @"sessionID", uniqueID4);
      }

      CFDictionarySetValue(v17, @"object-type", @"session-initial-link-type");
      v20 = [(__CFDictionary *)v17 copy];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      [v14 sendXPCObject:{v15, v20, 0}];
    }
  }
}

- (void)setAcceptedRelaySession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received delayed QR connection %@ for an accepted session", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if (self->_skeData)
    {
      objc_initWeak(buf, self);
      objc_copyWeak(&v11, buf);
      IDSTransportThreadAddBlock();
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sharedState = [(IDSDSession *)self sharedState];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState useSecureQRControlMessage]);

    if (v8)
    {
      CFDictionarySetValue(Mutable, IDSGlobalLinkOptionUseSecureControlMessageKey, v8);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100919F70();
    }

    v10 = sessionCopy;
    v9 = Mutable;
    IDSTransportThreadAddBlock();
  }
}

- (void)setHasPendingAllocation:(BOOL)allocation forIDSSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    IDSTransportThreadAddBlock();
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[IDSDSession setHasPendingAllocation:forIDSSession:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s IDSSessionID is nil!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (id)getCallerCert
{
  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v6 = [accountController accountWithUniqueID:accountID];
  _registrationCert = [v6 _registrationCert];

  return _registrationCert;
}

- (id)getFromService
{
  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v6 = [accountController accountWithUniqueID:accountID];
  service = [v6 service];
  identifier = [service identifier];

  return identifier;
}

- (id)getAppID
{
  sharedState = [(IDSDSession *)self sharedState];
  pushTopic = [sharedState pushTopic];

  return pushTopic;
}

- (unsigned)globalLinkErrorToSessionEndReason:(int64_t)reason
{
  if (reason > 0xE)
  {
    return 6;
  }

  else
  {
    return dword_1009AB6B8[reason];
  }
}

- (void)runConnectivityCheckWithCompletionBlock:(id)block
{
  blockCopy = block;
  availabilityCheck = self->_availabilityCheck;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A1004;
  v7[3] = &unk_100BD9EE0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(IDSDSessionAvailabilityCheck *)availabilityCheck checkLocalConnectivityForSession:self withCompletionBlock:v7];
}

- (void)startListeningOnClientSocket:(int)socket isRawSocket:(BOOL)rawSocket
{
  v4 = *&socket;
  v6 = [(IDSDSession *)self sharedState:*&socket];
  isScreenSharingSession = [v6 isScreenSharingSession];

  if (isScreenSharingSession)
  {
    if (self->_baseSocketPairConnection)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        socket = [(IDSBaseSocketPairConnection *)self->_baseSocketPairConnection socket];
        *buf = 136315394;
        v22 = "IDSDSession";
        v23 = 1024;
        v24 = socket;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s - We're already listening on socket %d", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        baseSocketPairConnection = self->_baseSocketPairConnection;
        p_baseSocketPairConnection = &self->_baseSocketPairConnection;
        socket2 = [(IDSBaseSocketPairConnection *)baseSocketPairConnection socket];
        _IDSWarnV();
        v20 = [(IDSBaseSocketPairConnection *)*p_baseSocketPairConnection socket:"IDSDSession"];
        _IDSLogV();
        [(IDSBaseSocketPairConnection *)*p_baseSocketPairConnection socket:"IDSDSession"];
        _IDSLogTransport();
      }
    }

    else
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v22) = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting to listen on raw client socket %d", buf, 8u);
      }

      sharedState = [(IDSDSession *)self sharedState];
      serviceName = [sharedState serviceName];
      DLCSessionLogWithLevel();

      v15 = [IDSBaseSocketPairConnection alloc];
      v16 = im_primary_queue();
      v17 = [v15 initWithSocket:v4 queue:v16 delegate:{self, v4}];
      v18 = self->_baseSocketPairConnection;
      self->_baseSocketPairConnection = v17;
    }
  }

  else if (v4 >= 1)
  {

    close(v4);
  }
}

- (void)cleanupSessionWithCleanStatus:(BOOL)status
{
  statusCopy = status;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleanup session: %@", buf, 0xCu);
  }

  sharedState = [(IDSDSession *)self sharedState];
  serviceName = [sharedState serviceName];
  DLCSessionLogWithLevel();

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "REPORT RTC: %@", buf, 0xCu);
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  serviceName2 = [sharedState2 serviceName];
  DLCSessionLogWithLevel();

  [(IDSDSession *)self _reportRTC];
  [(IDSDSession *)self unregisterClientChannel];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientChannel = self->_clientChannel;
    *buf = 134217984;
    selfCopy6 = clientChannel;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Releasing the client channel %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v87 = self->_clientChannel;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v87 = self->_clientChannel;
        _IDSLogV();
      }
    }
  }

  [(IDSClientChannel *)self->_clientChannel invalidate];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    isLightweightParticipant = self->_isLightweightParticipant;
    if (statusCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *buf = 138412802;
    selfCopy6 = self;
    v95 = 2112;
    if (isLightweightParticipant)
    {
      v14 = @"YES";
    }

    v96 = v16;
    v97 = 2112;
    v98 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ cleanupSessionWithCleanStatus: shouldCleanStatus: %@, _isLightweightParticipant: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v17 = statusCopy ? @"YES" : @"NO";
    v18 = self->_isLightweightParticipant ? @"YES" : @"NO";
    v90 = v17;
    v91 = v18;
    selfCopy5 = self;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (self->_isLightweightParticipant)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v90 = v17;
      v91 = v19;
      selfCopy5 = self;
      _IDSLogV();
    }
  }

  if (statusCopy)
  {
    globalLinkConfiguration = [(IDSDSession *)self globalLinkConfiguration];
    [globalLinkConfiguration reset];

    globalLinkConfiguration2 = [(IDSDSession *)self globalLinkConfiguration];
    [globalLinkConfiguration2 setCellInterfaceName:0];

    v22 = +[IDSNWPathUtils sharedInstance];
    sharedState3 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState3 uniqueID];
    [v22 takeDownSlicedInterfaceForSession:uniqueID];

    notify_cancel(self->_sliceActiveNotificationToken);
    sharedState4 = [(IDSDSession *)self sharedState];
    LODWORD(sharedState3) = [sharedState4 isScreenSharingSession];

    sharedState5 = [(IDSDSession *)self sharedState];
    v27 = sharedState5;
    if (sharedState3)
    {
      [sharedState5 setState:9];

      [(IDSDSession *)self _cleanupSessionConnection];
      sharedState6 = [(IDSDSession *)self sharedState];
      [sharedState6 clearAllTimers];

      [(IDSDSession *)self _cleanupSocketPairConnection];
      [(IDSDSession *)self _notifyClientsSessionStopped];
    }

    else
    {
      sharedSession = [sharedState5 sharedSession];

      if (sharedSession)
      {
        v31 = +[IDSGroupEncryptionController sharedInstance];
        sharedState7 = [(IDSDSession *)self sharedState];
        groupID = [sharedState7 groupID];
        [v31 resetKeyMaterialLocalSentStatus:groupID];

        v34 = +[IDSGroupEncryptionController sharedInstance];
        sharedState8 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState8 groupID];
        [v34 unsubscribeEndpointsForGroup:groupID2];
      }

      else
      {
        sharedState9 = [(IDSDSession *)self sharedState];
        uniqueID2 = [sharedState9 uniqueID];
        [(IDSDSession *)self _closeSocketToDevice:uniqueID2];

        [(IDSDSession *)self _closeSocketToDevice:kIDSDefaultPairedDeviceID];
      }

      v39 = [(IDSDSession *)self sharedState:selfCopy5];
      enableQuickRelay = [v39 enableQuickRelay];

      if (enableQuickRelay)
      {
        [(IDSDSession *)self _cleanupQuickRelaySession];
      }

      else
      {
        utunController = [(IDSDSession *)self utunController];
        sharedState10 = [(IDSDSession *)self sharedState];
        uniqueID3 = [sharedState10 uniqueID];
        [utunController stopUDPGlobalLinkForDevice:uniqueID3];
      }

      sharedState11 = [(IDSDSession *)self sharedState];
      [sharedState11 setState:9];
    }

    IDSTransportThreadAddBlock();
    if (self->_multiplexerTransport)
    {
      v45 = +[IDSGroupSessionMultiplexer sharedInstance];
      [v45 unregisterMultiplexerTransport:self->_multiplexerTransport];
    }

    os_unfair_lock_lock(&self->_lock);
    dataBlobEncryptionManager = self->_dataBlobEncryptionManager;
    self->_dataBlobEncryptionManager = 0;

    os_unfair_lock_unlock(&self->_lock);
    cryptorForBlobs = self->_cryptorForBlobs;
    self->_cryptorForBlobs = 0;

    typeToKeyIDToEncryptedData = self->_typeToKeyIDToEncryptedData;
    self->_typeToKeyIDToEncryptedData = 0;

    typeToParticipantIDToDecryptedDataBlob = self->_typeToParticipantIDToDecryptedDataBlob;
    self->_typeToParticipantIDToDecryptedDataBlob = 0;

    keyIDToParticipantID = self->_keyIDToParticipantID;
    self->_keyIDToParticipantID = 0;

    sharedState12 = [(IDSDSession *)self sharedState];
    localUnauthenticatedFullIdentity = [sharedState12 localUnauthenticatedFullIdentity];

    if (localUnauthenticatedFullIdentity)
    {
      sharedState13 = [(IDSDSession *)self sharedState];
      localUnauthenticatedFullIdentity2 = [sharedState13 localUnauthenticatedFullIdentity];
      v55 = [localUnauthenticatedFullIdentity2 description];

      sharedState14 = [(IDSDSession *)self sharedState];
      localUnauthenticatedFullIdentity3 = [sharedState14 localUnauthenticatedFullIdentity];
      v92 = 0;
      v58 = [localUnauthenticatedFullIdentity3 purgeFromKeychain:&v92];
      v59 = v92;

      if (v58)
      {
        v60 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy6 = v55;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Deleted localUnauthenticatedFullIdentity from keychain {identity: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            selfCopy5 = v55;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              selfCopy5 = v55;
              _IDSLogV();
            }
          }
        }
      }

      else
      {
        v61 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy6 = v59;
          v95 = 2112;
          v96 = v55;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Failed to delete localUnauthenticatedFullIdentity from keychain {error: %@, identity: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            selfCopy5 = v59;
            v90 = v55;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              selfCopy5 = v59;
              v90 = v55;
              _IDSLogV();
            }
          }
        }
      }

      v62 = [(IDSDSession *)self sharedState:selfCopy5];
      [v62 setLocalUnauthenticatedFullIdentity:0];

      sharedState15 = [(IDSDSession *)self sharedState];
      [sharedState15 setRemoteUnauthenticatedPublicIdentity:0];
    }

    sharedState16 = [(IDSDSession *)self sharedState];
    sharedSession2 = [sharedState16 sharedSession];

    if (sharedSession2)
    {
      sharedState17 = [(IDSDSession *)self sharedState];
      isInUPlusOneMode = [sharedState17 isInUPlusOneMode];

      if (isInUPlusOneMode)
      {
        v68 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          sharedState18 = [(IDSDSession *)self sharedState];
          groupID3 = [sharedState18 groupID];
          *buf = 138412290;
          selfCopy6 = groupID3;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "reset keys for U + 1 session: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            sharedState19 = [(IDSDSession *)self sharedState];
            groupID4 = [sharedState19 groupID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              sharedState20 = [(IDSDSession *)self sharedState];
              groupID4 = [sharedState20 groupID];
              _IDSLogV();
            }
          }
        }

        v73 = +[IDSGroupEncryptionController sharedInstance];
        sharedState21 = [(IDSDSession *)self sharedState];
        groupID5 = [sharedState21 groupID];
        [v73 resetKeysForGroup:groupID5 shouldRemoveCurrentParticipants:0];
      }

      v76 = IMGetCachedDomainIntForKeyWithDefaultValue();
      v77 = +[IDSGroupEncryptionController sharedInstance];
      sharedState22 = [(IDSDSession *)self sharedState];
      groupID6 = [sharedState22 groupID];
      [v77 resetMKMCacheAfterTimeoutForGroup:groupID6 interval:v76];

      [(IDSGroupEncryptionControllerGroupSession *)self->_groupSession setRootExchangeController:0];
      groupSession = self->_groupSession;
      self->_groupSession = 0;

      group = self->_group;
      self->_group = 0;

      exchangeController = self->_exchangeController;
      self->_exchangeController = 0;

      keyValueDelivery = self->_keyValueDelivery;
      self->_keyValueDelivery = 0;
    }

    if (_os_feature_enabled_impl())
    {
      v84 = +[IDSDSessionActiveParticipantsCache sharedInstance];
      sharedState23 = [(IDSDSession *)self sharedState];
      uniqueID4 = [sharedState23 uniqueID];
      [v84 removeParticipantsForSessionID:uniqueID4];
    }
  }

  else
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ cleanupSessionWithCleanStatus: no need to clean session status", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)_cleanupQuickRelaySession
{
  utunController = [(IDSDSession *)self utunController];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003A219C;
  v6[3] = &unk_100BD9F28;
  v6[4] = self;
  [utunController disconnectGlobalLinkForDevice:uniqueID isReinitiating:0 completionHandler:v6];
}

- (void)reconnectSession
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reconnect initiated By TU", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  sharedState = [(IDSDSession *)self sharedState];
  [sharedState clearAllTimers];

  [(IDSDSession *)self reinitiate];
  IDSTransportThreadAddBlock();
}

- (void)_finishPacketLog
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_packetLogWriter;
  packetLogWriter = self->_packetLogWriter;
  self->_packetLogWriter = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = v5;
  if (v5)
  {
    [(IDSObjCPacketLogWriter *)v5 writeData:0];
    v4 = v5;
  }
}

- (void)endSession
{
  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState isInitiator])
  {
    v4 = 11;
  }

  else
  {
    v4 = 12;
  }

  [(IDSDSession *)self endSessionWithReason:v4];
}

- (void)_sendSessionEndWithData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = _IDSSessionProtocolVersionNumber();
  if (v6)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageVersion, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917318();
  }

  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];

  if (uniqueID)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageSessionID, uniqueID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  participantID = [sharedState2 participantID];

  if (participantID)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageParticipantID, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (dataCopy)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageContext, dataCopy);
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    destinations = [sharedState3 destinations];
    sharedState4 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState4 uniqueID];
    *buf = 138412802;
    v28 = destinations;
    v29 = 2112;
    v30 = uniqueID2;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending END to %@, %@ <%@>", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState5 = [(IDSDSession *)self sharedState];
      destinations2 = [sharedState5 destinations];
      sharedState6 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState6 uniqueID];
      v26 = v5;
      v24 = destinations2;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v19 = [(IDSDSession *)self sharedState:destinations2];
        destinations3 = [v19 destinations];
        sharedState7 = [(IDSDSession *)self sharedState];
        uniqueID3 = [sharedState7 uniqueID];
        v26 = v5;
        v24 = destinations3;
        _IDSLogV();
      }
    }
  }

  v22 = [(IDSDSession *)self messenger:v24];
  v23 = [NSNumber numberWithInteger:237];
  [v22 sendMessage:v5 withCommand:v23];
}

- (void)endSessionWithData:(id)data
{
  dataCopy = data;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ending session with data", v12, 2u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  serviceName = [sharedState serviceName];
  DLCSessionLogWithLevel();

  sharedState2 = [(IDSDSession *)self sharedState];
  [sharedState2 setState:9];

  [(IDSDSession *)self _sendSessionEndWithData:dataCopy];
  sharedState3 = [(IDSDSession *)self sharedState];
  LODWORD(serviceName) = [sharedState3 isScreenSharingSession];

  if (serviceName)
  {
    [(IDSDSession *)self endSessionWithReason:11];
  }

  else
  {
    sharedState4 = [(IDSDSession *)self sharedState];
    [sharedState4 clearAllTimers];

    sharedState5 = [(IDSDSession *)self sharedState];
    [sharedState5 setEndSessionTimeoutTimer];
  }
}

- (void)_endSession
{
  globalLinkConfiguration = [(IDSDSession *)self globalLinkConfiguration];
  [globalLinkConfiguration setCellInterfaceName:0];

  v4 = +[IDSNWPathUtils sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  [v4 takeDownSlicedInterfaceForSession:uniqueID];

  notify_cancel(self->_sliceActiveNotificationToken);
  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    reason = self->_reason;
    if (qword_100CBD198 != -1)
    {
      sub_100919FF8();
    }

    if ([qword_100CBD188 count] <= reason)
    {
      if (byte_100CBD190 != 1)
      {
        reason = 0;
        goto LABEL_10;
      }

      if (!isRunningTests())
      {
        abort();
      }

      throwsIDSAbortException();
    }

    v9 = [qword_100CBD188 objectAtIndex:reason];
    reason = [NSString stringWithFormat:@"%@ (%d)", v9, reason];

LABEL_10:
    *buf = 138412290;
    v109 = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ending session with reason: %@", buf, 0xCu);
  }

  [(IDSGFTMetricsCollector *)self->_metricsCollector endWithReason:self->_reason];
  sharedState2 = [(IDSDSession *)self sharedState];
  serviceName = [sharedState2 serviceName];

  if (serviceName)
  {
    v13 = [NSString alloc];
    sharedState3 = [(IDSDSession *)self sharedState];
    serviceName2 = [sharedState3 serviceName];
    v16 = [v13 initWithString:serviceName2];

    [(IDSDSession *)self _resetPreferences:v16];
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  uniqueID2 = [sharedState4 uniqueID];
  v19 = [uniqueID2 componentsSeparatedByString:@"-"];

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"state", &off_100C3BCC8);
  v21 = -[NSString substringFromIndex:](self->_serviceIdentifier, "substringFromIndex:", [@"com.apple.private.alloy." length]);
  if (v21)
  {
    CFDictionarySetValue(Mutable, @"serviceName", v21);
  }

  v22 = [v19 objectAtIndexedSubscript:0];
  if (v22)
  {
    CFDictionarySetValue(Mutable, @"sessionID", v22);
  }

  IDSPowerLogDictionary();
  [(IDSDSession *)self unregisterClientChannel];
  v23 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    clientChannel = self->_clientChannel;
    *buf = 134217984;
    v109 = clientChannel;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Releasing the client channel %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v92 = self->_clientChannel;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v92 = self->_clientChannel;
        _IDSLogV();
      }
    }
  }

  [(IDSClientChannel *)self->_clientChannel invalidate];
  [(IDSDSession *)self _finishPacketLog];
  sharedState5 = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState5 isScreenSharingSession];

  if (isScreenSharingSession)
  {
    sharedState6 = [(IDSDSession *)self sharedState];
    connection = [sharedState6 connection];
    [connection stopConnection:0];

    [(IDSDSession *)self _cleanupSocketPairConnection];
    [(IDSDSession *)self _notifyClientsSessionStopped];
    [(IDSDSession *)self _cleanupQuickRelaySession];
    goto LABEL_73;
  }

  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState7 = [(IDSDSession *)self sharedState];
  uniqueID3 = [sharedState7 uniqueID];
  [qrAllocator invalidateSession:uniqueID3 isExpiryPurging:0];

  sharedState8 = [(IDSDSession *)self sharedState];
  if ([sharedState8 sharedSession])
  {
    participantID = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
    v34 = participantID == 0;

    if (!v34)
    {
      sharedState9 = [(IDSDSession *)self sharedState];
      groupID = [sharedState9 groupID];

      if (!groupID)
      {
        v43 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Cannot fan out the endSession leave notification to the group, no groupID!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_57;
      }

      if (self->_groupSessionState > 1)
      {
        v44 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          sharedState10 = [(IDSDSession *)self sharedState];
          groupID2 = [sharedState10 groupID];
          *buf = 138412290;
          v109 = groupID2;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Didn't fan out the leave notification, the group session %@ is already ended!", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_56;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_56;
        }

        sharedState11 = [(IDSDSession *)self sharedState];
        groupID3 = [sharedState11 groupID];
        _IDSLogTransport();

        if (!_IDSShouldLog())
        {
          goto LABEL_56;
        }

        sharedState12 = [(IDSDSession *)self sharedState];
        groupID4 = [sharedState12 groupID];
        groupID3 = groupID4;
        _IDSLogV();
      }

      else
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          sharedState13 = [(IDSDSession *)self sharedState];
          groupID5 = [sharedState13 groupID];
          *buf = 138412290;
          v109 = groupID5;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "notifyLeaveToGroup and sessionDidLeaveGroup for group session %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            sharedState14 = [(IDSDSession *)self sharedState];
            groupID3 = [sharedState14 groupID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              sharedState15 = [(IDSDSession *)self sharedState];
              groupID3 = [sharedState15 groupID];
              _IDSLogV();
            }
          }
        }

        if (self->_startedAsUPlusOneSession && self->_reason == 45)
        {
          v42 = [NSError alloc];
          sharedState12 = [v42 initWithDomain:IDSSessionErrorDomain code:45 userInfo:0];
        }

        else
        {
          sharedState12 = 0;
        }

        [(IDSGFTMetricsCollector *)self->_metricsCollector didLeave];
        groupStatusNotificationController = [(IDSDSession *)self groupStatusNotificationController];
        sharedState16 = [(IDSDSession *)self sharedState];
        groupID6 = [sharedState16 groupID];
        sharedState17 = [(IDSDSession *)self sharedState];
        destinations = [sharedState17 destinations];
        allObjects = [destinations allObjects];
        groupStatusNotificationParams = self->_groupStatusNotificationParams;
        accountController = [(IDSDSession *)self accountController];
        sharedState18 = [(IDSDSession *)self sharedState];
        accountID = [sharedState18 accountID];
        v51 = [accountController accountWithUniqueID:accountID];
        sharedState19 = [(IDSDSession *)self sharedState];
        fromURI = [sharedState19 fromURI];
        sharedState20 = [(IDSDSession *)self sharedState];
        uniqueID4 = [sharedState20 uniqueID];
        LOBYTE(v94) = [(IDSDSession *)self shouldReportUPlusOneKey];
        [groupStatusNotificationController notifyLeaveToGroup:groupID6 members:allObjects params:groupStatusNotificationParams fromAccount:v51 fromURI:fromURI sessionID:uniqueID4 isUPlusOne:v94];

        groupID4 = objc_alloc_init(IMMessageContext);
        [groupID4 setShouldBoost:1];
        v56 = +[IDSDaemon sharedInstance];
        sharedState21 = [(IDSDSession *)self sharedState];
        pushTopic = [sharedState21 pushTopic];
        v59 = [v56 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:groupID4];

        sharedState22 = [(IDSDSession *)self sharedState];
        uniqueID5 = [sharedState22 uniqueID];
        [v59 sessionDidLeaveGroup:uniqueID5 error:sharedState12];

        if (sharedState12)
        {
          self->_reason = -[IDSDSession globalLinkErrorToSessionEndReason:](self, "globalLinkErrorToSessionEndReason:", [sharedState12 code]);
        }

        [(IDSDSession *)self _reportRTC];
        self->_groupSessionState = 2;
      }

LABEL_56:
      v62 = +[IDSGroupEncryptionController sharedInstance];
      sharedState23 = [(IDSDSession *)self sharedState];
      groupID7 = [sharedState23 groupID];
      [v62 removeAccountForGroup:groupID7];
    }
  }

  else
  {
  }

LABEL_57:
  sharedState24 = [(IDSDSession *)self sharedState];
  uniqueID6 = [sharedState24 uniqueID];
  [(IDSDSession *)self _closeSocketToDevice:uniqueID6];

  [(IDSDSession *)self _closeSocketToDevice:kIDSDefaultPairedDeviceID];
  sharedState25 = [(IDSDSession *)self sharedState];
  LODWORD(uniqueID6) = [sharedState25 enableQuickRelay];

  if (uniqueID6)
  {
    [(IDSDSession *)self _cleanupQuickRelaySession];
  }

  else
  {
    utunController = [(IDSDSession *)self utunController];
    sharedState26 = [(IDSDSession *)self sharedState];
    uniqueID7 = [sharedState26 uniqueID];
    [utunController stopUDPGlobalLinkForDevice:uniqueID7];
  }

  sharedState27 = [(IDSDSession *)self sharedState];
  v72 = [sharedState27 clientType] == 4;

  if (v72)
  {
    sharedState28 = [(IDSDSession *)self sharedState];
    uniqueID8 = [sharedState28 uniqueID];
    v75 = [uniqueID8 copy];

    v76 = dispatch_time(0, 5000000000);
    v77 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A3A80;
    block[3] = &unk_100BD6ED0;
    v107 = v75;
    v78 = v75;
    dispatch_after(v76, v77, block);
  }

  sharedState29 = [(IDSDSession *)self sharedState];
  if ([sharedState29 sharedSession] && self->_groupSessionState == 2)
  {
    sharedState30 = [(IDSDSession *)self sharedState];
    v81 = [sharedState30 state] == 9;

    if (!v81)
    {
      v82 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        participantID2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
        *buf = 138412290;
        v109 = participantID2;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "The client left the group session. IDSGroupSession can be removed. _groupStatusNotificationParams.participantID = %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          groupID3 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            groupID3 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
            _IDSLogV();
          }
        }
      }

      sharedState31 = [(IDSDSession *)self sharedState];
      uniqueID9 = [sharedState31 uniqueID];
      v86 = [uniqueID9 copy];

      v87 = im_primary_queue();
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_1003A3B04;
      v104[3] = &unk_100BD6E40;
      v104[4] = self;
      v105 = v86;
      v88 = v86;
      v89 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v104);
      dispatch_async(v87, v89);
    }
  }

  else
  {
  }

LABEL_73:
  [(IDSDSession *)self setShouldConnectToQRServer:0];
  sharedState32 = [(IDSDSession *)self sharedState];
  [sharedState32 setState:9];

  sharedState33 = [(IDSDSession *)self sharedState];
  [sharedState33 clearAllTimers];

  IDSTransportThreadAddBlock();
  self->_channelDataCachedTime = 0.0;
}

- (void)_resetPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:&off_100C3BC50 forKey:@"PacketsPerSecond"];
  [v4 setObject:&off_100C3BC50 forKey:@"InputBytesPerSecond"];
  [v4 setObject:&off_100C3BC50 forKey:@"OutputBytesPerSecond"];
  [v4 removeObjectForKey:@"Intent"];
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting preferences for service %{public}@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v11 = preferencesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v11 = preferencesCopy;
        _IDSLogV();
      }
    }
  }

  v6 = +[IDSLinkPreferencesManager sharedInstance];
  v7 = [NSDictionary dictionaryWithDictionary:v4];
  [v6 updateService:preferencesCopy withPreferences:v7];

  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A3EB8;
  block[3] = &unk_100BD6ED0;
  v13 = preferencesCopy;
  v9 = preferencesCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v8, v10);
}

- (void)_closeSocketToDevice:(id)device
{
  deviceCopy = device;
  [(IDSDSession *)self _checkAndUnassertRealTimeMode];
  if (self->_bypassUTun)
  {
    connectionContext = self->_connectionContext;
    self->_connectionContext = 0;
  }

  sharedState = [(IDSDSession *)self sharedState];
  useQRDirectly = [sharedState useQRDirectly];

  if ((useQRDirectly & 1) == 0)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closing socket for session", buf, 2u);
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState2 serviceName];
    DLCSessionLogWithLevel();

    utunController = [(IDSDSession *)self utunController];
    _acceptedDeviceUniqueID = [(IDSDSession *)self _acceptedDeviceUniqueID];
    _acceptedDeviceToken = [(IDSDSession *)self _acceptedDeviceToken];
    rawToken = [_acceptedDeviceToken rawToken];
    v14 = [(IDSDSession *)self _socketOptionsForDevice:deviceCopy uniqueID:_acceptedDeviceUniqueID pushToken:rawToken connectionSuffix:0];
    [utunController closeSocketWithOptions:v14];

    directUDPSocket = self->_directUDPSocket;
    if (directUDPSocket)
    {
      [(IDSDirectDataPathSocket *)directUDPSocket shutdownSocket];
      v16 = self->_directUDPSocket;
      self->_directUDPSocket = 0;
    }

    sharedState3 = [(IDSDSession *)self sharedState];
    connectionCountHint = [sharedState3 connectionCountHint];

    if (connectionCountHint >= 2)
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      self->_extraConnectionCount = [sharedState4 connectionCountHint] - 1;

      if (self->_extraConnectionCount)
      {
        v20 = 0;
        do
        {
          utunController2 = [(IDSDSession *)self utunController];
          _acceptedDeviceUniqueID2 = [(IDSDSession *)self _acceptedDeviceUniqueID];
          _acceptedDeviceToken2 = [(IDSDSession *)self _acceptedDeviceToken];
          rawToken2 = [_acceptedDeviceToken2 rawToken];
          v25 = [NSString stringWithFormat:@"-%d", v20];
          v26 = [(IDSDSession *)self _socketOptionsForDevice:deviceCopy uniqueID:_acceptedDeviceUniqueID2 pushToken:rawToken2 connectionSuffix:v25];
          [utunController2 closeSocketWithOptions:v26];

          extraUDPSockets = self->_extraUDPSockets;
          v28 = [NSNumber numberWithInt:v20];
          v29 = [(NSMutableDictionary *)extraUDPSockets objectForKeyedSubscript:v28];

          if (v29)
          {
            [v29 shutdownSocket];
            v30 = self->_extraUDPSockets;
            v31 = [NSNumber numberWithInt:v20];
            [(NSMutableDictionary *)v30 removeObjectForKey:v31];
          }

          ++v20;
        }

        while (self->_extraConnectionCount > v20);
      }
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    allValues = [(NSMutableDictionary *)selfCopy->_extraConnections allValues];
    v34 = [NSMutableArray arrayWithArray:allValues];

    if (selfCopy->_socketDescriptor != -1)
    {
      v35 = [NSNumber numberWithInt:?];
      [v34 addObject:v35];

      selfCopy->_socketDescriptor = -1;
    }

    [(NSMutableDictionary *)selfCopy->_extraConnections removeAllObjects];
    objc_sync_exit(selfCopy);

    if ([v34 count])
    {
      v37 = v34;
      IDSTransportThreadAddBlock();
    }
  }

  [(IDSDSession *)self _notifyClientsSessionStopped];
}

- (id)_socketOptionsForDevice:(id)device uniqueID:(id)d pushToken:(id)token connectionSuffix:(id)suffix
{
  value = device;
  dCopy = d;
  tokenCopy = token;
  suffixCopy = suffix;
  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v15 = [accountController accountWithUniqueID:accountID];
  service = [v15 service];

  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = v16;
  if (IDSOpenSocketOptionAccountDefault)
  {
    CFDictionarySetValue(v16, @"account", IDSOpenSocketOptionAccountDefault);
  }

  identifier = [service identifier];
  if (identifier)
  {
    CFDictionarySetValue(v17, @"service", identifier);
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  v21 = uniqueID;
  if (suffixCopy)
  {
    v22 = [uniqueID stringByAppendingString:suffixCopy];

    v21 = v22;
  }

  if (v21)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionStreamNameKey, v21);
  }

  if (value)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionCBUUIDKey, value);
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  remoteUseCloudPairedControlChannel = [sharedState3 remoteUseCloudPairedControlChannel];

  if (remoteUseCloudPairedControlChannel && dCopy)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionDeviceUniqueIDKey, dCopy);
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  if ([sharedState4 isScreenSharingSession])
  {
    v26 = &off_100C3BCE0;
  }

  else
  {
    v26 = &off_100C3BCF8;
  }

  CFDictionarySetValue(v17, IDSOpenSocketOptionPriorityKey, v26);
  CFDictionarySetValue(v17, IDSOpenSocketOptionPhoneCallKey, &__kCFBooleanTrue);
  CFDictionarySetValue(v17, IDSOpenSocketOptionIsIDSDSessionSocket, &__kCFBooleanTrue);
  sharedState5 = [(IDSDSession *)self sharedState];
  peerProtocolVersion = [sharedState5 peerProtocolVersion];

  if (peerProtocolVersion >= 2)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionSRTPProtocolVersionKey, &off_100C3BBD8);
  }

  sharedState6 = [(IDSDSession *)self sharedState];
  localUnauthenticatedFullIdentity = [sharedState6 localUnauthenticatedFullIdentity];
  if (localUnauthenticatedFullIdentity)
  {
    sharedState7 = [(IDSDSession *)self sharedState];
    remoteUnauthenticatedPublicIdentity = [sharedState7 remoteUnauthenticatedPublicIdentity];

    if (remoteUnauthenticatedPublicIdentity)
    {
      v33 = [IDSUTunControlChannelIdentityPair alloc];
      sharedState8 = [(IDSDSession *)self sharedState];
      localUnauthenticatedFullIdentity2 = [sharedState8 localUnauthenticatedFullIdentity];
      sharedState9 = [(IDSDSession *)self sharedState];
      remoteUnauthenticatedPublicIdentity2 = [sharedState9 remoteUnauthenticatedPublicIdentity];
      v38 = [(IDSUTunControlChannelIdentityPair *)v33 initWithLocalFullIdentity:localUnauthenticatedFullIdentity2 remotePublicIdentity:remoteUnauthenticatedPublicIdentity2];

      v39 = v38;
      if (v39)
      {
        CFDictionarySetValue(v17, IDSOpenSocketOptionUnauthenticatedIdentityPair, v39);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091A00C();
      }
    }
  }

  else
  {
  }

  sharedState10 = [(IDSDSession *)self sharedState];
  v41 = [sharedState10 transportType] == 0;

  if (v41)
  {
    CFDictionarySetValue(v17, @"protocol", @"udp");
  }

  if (!dCopy && ![(IDSDSession *)self isWithDefaultPairedDevice])
  {
    sharedState11 = [(IDSDSession *)self sharedState];
    disableRemoteDeviceEncryption = [sharedState11 disableRemoteDeviceEncryption];

    if (disableRemoteDeviceEncryption)
    {
      v70 = IDSUTunControlChannelRemoteDeviceEncryptionInfo_UNENCRYPTED_Key;
      v71 = &__kCFBooleanTrue;
      anyObject = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      if (anyObject)
      {
        CFDictionarySetValue(v17, IDSOpenSocketOptionRemoteDeviceEncryptionInfoKey, anyObject);
      }
    }

    else
    {
      sharedState12 = [(IDSDSession *)self sharedState];
      destinations = [sharedState12 destinations];
      anyObject = [destinations anyObject];

      getFromService = [(IDSDSession *)self getFromService];
      sharedState13 = [(IDSDSession *)self sharedState];
      fromURI = [sharedState13 fromURI];
      unprefixedURI = [fromURI unprefixedURI];
      _bestGuessURI = [unprefixedURI _bestGuessURI];

      getCallerCert = [(IDSDSession *)self getCallerCert];
      v52 = getCallerCert;
      if (anyObject && service && _bestGuessURI && getCallerCert)
      {
        v68[0] = IDSUTunControlChannelRemoteDeviceEncryptionInfoRemoteTokenURIKey;
        prefixedURI = [anyObject prefixedURI];
        v69[0] = prefixedURI;
        v69[1] = getFromService;
        v68[1] = IDSUTunControlChannelRemoteDeviceEncryptionInfoServiceKey;
        v68[2] = IDSUTunControlChannelRemoteDeviceEncryptionInfoMyURIKey;
        v68[3] = IDSUTunControlChannelRemoteDeviceEncryptionInfoMyIdentityKey;
        v69[2] = _bestGuessURI;
        v69[3] = v52;
        v54 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];

        if (v54)
        {
          CFDictionarySetValue(v17, IDSOpenSocketOptionRemoteDeviceEncryptionInfoKey, v54);
        }
      }
    }
  }

  sharedState14 = [(IDSDSession *)self sharedState];
  disableEncryption = [sharedState14 disableEncryption];

  if (disableEncryption)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionEncryptionMethodKey, &off_100C3BC20);
  }

  connectionContext = self->_connectionContext;
  if (connectionContext)
  {
    CFDictionarySetValue(v17, @"connectionContext", connectionContext);
  }

  sharedState15 = [(IDSDSession *)self sharedState];
  useBTDatagramPipe = [sharedState15 useBTDatagramPipe];

  if (useBTDatagramPipe)
  {
    CFDictionarySetValue(v17, IDSOpenSocketOptionRealTimeKey, &__kCFBooleanTrue);
  }

  v60 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v17;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Made options to open socket %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return v17;
}

- (id)_acceptedDeviceUniqueID
{
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    destinations = [(IDSDSession *)self destinations];
    *buf = 138412290;
    v25 = destinations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device unique ID in: %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  destinations2 = [(IDSDSession *)self destinations];
  v6 = [destinations2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v18 = v7;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(destinations2);
        }

        pushToken = [*(*(&v19 + 1) + 8 * i) pushToken];
        v12 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v25 = pushToken;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
        }

        if (pushToken)
        {
          v13 = +[IDSDAccountController sharedInstance];
          rawToken = [pushToken rawToken];
          v15 = [v13 deviceIDForPushToken:rawToken];

          v16 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "    => Found unique ID: %@", buf, 0xCu);
          }

          if ([v15 length])
          {

            goto LABEL_21;
          }
        }
      }

      v8 = [destinations2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  destinations2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(destinations2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, destinations2, OS_LOG_TYPE_DEFAULT, "  => No unique ID found", buf, 2u);
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (id)_acceptedDeviceToken
{
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    destinations = [(IDSDSession *)self destinations];
    *buf = 138412290;
    v21 = destinations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device token in: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  destinations2 = [(IDSDSession *)self destinations];
  v6 = [destinations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412290;
    v14 = v7;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(destinations2);
      }

      pushToken = [*(*(&v15 + 1) + 8 * v10) pushToken];
      v12 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v14;
        v21 = pushToken;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
      }

      if (pushToken)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [destinations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    destinations2 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(destinations2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, destinations2, OS_LOG_TYPE_DEFAULT, "  => No token found", buf, 2u);
    }

    pushToken = 0;
  }

  return pushToken;
}

- (void)_checkAndUnassertRealTimeMode
{
  if (self->_assertedRealTimeMode)
  {
    self->_assertedRealTimeMode = 0;
    IDSTransportThreadAddBlock();
  }
}

- (void)_cleanupSocketPairConnection
{
  [(IDSBaseSocketPairConnection *)self->_baseSocketPairConnection endSession];
  baseSocketPairConnection = self->_baseSocketPairConnection;
  self->_baseSocketPairConnection = 0;
}

- (void)_notifyClientsSessionStopped
{
  sharedState = [(IDSDSession *)self sharedState];
  state = [sharedState state];

  if (state != 9)
  {
    v5 = OSLogHandleForIDSCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState2 uniqueID];
    reason = self->_reason;
    if (qword_100CBD198 != -1)
    {
      sub_100919FF8();
    }

    if ([qword_100CBD188 count] <= reason)
    {
      if (byte_100CBD190 != 1)
      {
        reason = 0;
        goto LABEL_11;
      }

      if (!isRunningTests())
      {
        goto LABEL_38;
      }

      throwsIDSAbortException();
    }

    v9 = [qword_100CBD188 objectAtIndex:reason];
    reason = [NSString stringWithFormat:@"%@ (%d)", v9, reason];

LABEL_11:
    *buf = 138412546;
    v39 = uniqueID;
    v40 = 2112;
    v41 = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying client session %@ stopped with reason %@", buf, 0x16u);

LABEL_12:
    sharedState3 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState3 serviceName];
    sharedState4 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState4 uniqueID];
    v15 = self->_reason;
    if (qword_100CBD198 != -1)
    {
      sub_10091A094();
    }

    if ([qword_100CBD188 count] <= v15)
    {
      if (byte_100CBD190 != 1)
      {
        v17 = 0;
        goto LABEL_20;
      }

      if (!isRunningTests())
      {
        goto LABEL_38;
      }

      throwsIDSAbortException();
    }

    v16 = [qword_100CBD188 objectAtIndex:v15];
    v17 = [NSString stringWithFormat:@"%@ (%d)", v16, v15];

LABEL_20:
    DLCSessionLogWithLevel();

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [(__CFDictionary *)Mutable setObject:&off_100C3BD10 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey, uniqueID2, v17];
    v19 = [NSNumber numberWithUnsignedInt:self->_reason];
    [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:IDSDSessionReportResultCodeKey];

    [(IDSDSession *)self addQREventForRTCReport:Mutable];
    sharedState5 = [(IDSDSession *)self sharedState];
    [sharedState5 setState:9];

    if (self->_supressClientNotifications)
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Session stopped notification suppressed", buf, 2u);
      }

      sharedState6 = [(IDSDSession *)self sharedState];
      serviceName2 = [sharedState6 serviceName];
      DLCSessionLogWithLevel();
LABEL_36:

      [(IDSDSessionAvailabilityCheck *)self->_availabilityCheck availabilityTimerCancel];
      self->_shouldConnectToQRServer = 0;
      IDSTransportThreadAddBlock();

      return;
    }

    sharedState6 = objc_alloc_init(IMMessageContext);
    [sharedState6 setShouldBoost:1];
    v24 = [NSDictionary alloc];
    v25 = self->_reason;
    if (qword_100CBD198 != -1)
    {
      sub_10091A094();
    }

    if ([qword_100CBD188 count] > v25)
    {
      goto LABEL_30;
    }

    if (byte_100CBD190 != 1)
    {
      v27 = 0;
      goto LABEL_32;
    }

    if (isRunningTests())
    {
      throwsIDSAbortException();
LABEL_30:
      v26 = [qword_100CBD188 objectAtIndex:v25];
      v27 = [NSString stringWithFormat:@"%@ (%d)", v26, v25];

LABEL_32:
      serviceName2 = [v24 initWithObjectsAndKeys:{v27, NSLocalizedDescriptionKey, 0}];

      v28 = [NSError alloc];
      v29 = [v28 initWithDomain:IDSSessionErrorDomain code:self->_reason userInfo:serviceName2];
      v30 = +[IDSDaemon sharedInstance];
      sharedState7 = [(IDSDSession *)self sharedState];
      pushTopic = [sharedState7 pushTopic];
      v33 = [v30 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:sharedState6];

      sharedState8 = [(IDSDSession *)self sharedState];
      LODWORD(pushTopic) = [sharedState8 sharedSession];

      sharedState9 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState9 uniqueID];
      v37 = self->_reason;
      if (pushTopic)
      {
        [v33 groupSessionEnded:uniqueID3 withReason:v37 error:v29];
      }

      else
      {
        [v33 sessionEnded:uniqueID3 withReason:v37 error:v29];
      }

      goto LABEL_36;
    }

LABEL_38:
    abort();
  }
}

- (void)endSessionWithReason:(unsigned int)reason
{
  v3 = *&reason;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(NSDate);
  endDate = self->_endDate;
  self->_endDate = v5;

  os_unfair_lock_unlock(&self->_lock);
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState clearAllTimers];

  sharedState2 = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState2 isScreenSharingSession];

  if (isScreenSharingSession)
  {
    [(IDSDSession *)self submitAWDMetricsForIDSSessionWithEndReason:v3];
  }

  self->_reason = v3;

  [(IDSDSession *)self _endSession];
}

- (id)sessionDuration
{
  if (self->_startDate)
  {
    os_unfair_lock_lock(&self->_lock);
    endDate = self->_endDate;
    if (endDate)
    {
      v4 = endDate;
    }

    else
    {
      v4 = +[NSDate date];
    }

    v6 = v4;
    os_unfair_lock_unlock(&self->_lock);
    [(NSDate *)v6 timeIntervalSinceDate:self->_startDate];
    v5 = v7;
  }

  else
  {
    v5 = 0.0;
  }

  return [NSNumber numberWithDouble:v5];
}

- (id)connectDuration
{
  v3 = self->_startDate;
  sharedState = [(IDSDSession *)self sharedState];
  startConnectingDate = [sharedState startConnectingDate];

  if (startConnectingDate)
  {
    if (!v3)
    {
      v3 = +[NSDate date];
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    startConnectingDate2 = [sharedState2 startConnectingDate];
    [(NSDate *)v3 timeIntervalSinceDate:startConnectingDate2];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [NSNumber numberWithDouble:v9];

  return v10;
}

- (void)setAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  sharedState = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState isScreenSharingSession];

  if (isScreenSharingSession)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (enabledCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling audio ? %@", buf, 0xCu);
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState2 serviceName];
    v11 = @"NO";
    if (enabledCopy)
    {
      v11 = @"YES";
    }

    v23 = v11;
    DLCSessionLogWithLevel();

    sharedState3 = [(IDSDSession *)self sharedState];
    connection = [sharedState3 connection];
    [connection setAudioEnabled:enabledCopy];

    v14 = objc_alloc_init(IMMessageContext);
    [v14 setShouldBoost:1];
    v15 = +[IDSDaemon sharedInstance];
    sharedState4 = [(IDSDSession *)self sharedState];
    pushTopic = [sharedState4 pushTopic];
    v18 = [v15 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v14];

    sharedState5 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState5 uniqueID];
    sharedState6 = [(IDSDSession *)self sharedState];
    connection2 = [sharedState6 connection];
    [v18 session:uniqueID audioEnabled:{objc_msgSend(connection2, "getAudioEnabled")}];
  }
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  sharedState = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState isScreenSharingSession];

  if (isScreenSharingSession)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (mutedCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Muting ? %@", buf, 0xCu);
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState2 serviceName];
    v11 = @"NO";
    if (mutedCopy)
    {
      v11 = @"YES";
    }

    v23 = v11;
    DLCSessionLogWithLevel();

    sharedState3 = [(IDSDSession *)self sharedState];
    connection = [sharedState3 connection];
    [connection setMuted:mutedCopy];

    v14 = objc_alloc_init(IMMessageContext);
    [v14 setShouldBoost:1];
    v15 = +[IDSDaemon sharedInstance];
    sharedState4 = [(IDSDSession *)self sharedState];
    pushTopic = [sharedState4 pushTopic];
    v18 = [v15 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v14];

    sharedState5 = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState5 uniqueID];
    sharedState6 = [(IDSDSession *)self sharedState];
    connection2 = [sharedState6 connection];
    [v18 session:uniqueID muted:{objc_msgSend(connection2, "muted")}];
  }
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting preferences %@", buf, 0xCu);
  }

  sharedState = [(IDSDSession *)self sharedState];
  serviceName = [sharedState serviceName];
  DLCSessionLogWithLevel();

  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager setPreferences:preferencesCopy];

  v9 = [preferencesCopy objectForKey:kIDSQRAllocateKey_RelayLinkProtocol];
  if (v9)
  {
    [(IDSDSession *)self _setLinkProtocol:v9];
  }

  v10 = [preferencesCopy objectForKey:IDSSessionDisallowWifiInterfaceKey];
  self->_disallowWifiInterface = [v10 BOOLValue];

  v11 = [preferencesCopy objectForKey:IDSSessionDisallowCellularInterfaceKey];
  self->_disallowCellularInterface = [v11 BOOLValue];

  v12 = [preferencesCopy objectForKey:IDSSessionPreferCellularForCallSetupKey];
  self->_preferCellularForCallSetup = [v12 BOOLValue];

  v13 = [preferencesCopy objectForKey:IDSSessionForceInternetInvitationKey];
  bOOLValue = [v13 BOOLValue];
  sharedState2 = [(IDSDSession *)self sharedState];
  [sharedState2 setForceInternetInvitation:bOOLValue];

  v16 = [preferencesCopy objectForKey:IDSSessionClientUUIDKey];
  if (v16)
  {
    v17 = [[NSUUID alloc] initWithUUIDString:v16];
    sharedState3 = [(IDSDSession *)self sharedState];
    [sharedState3 setClientUUID:v17];
  }
}

- (void)setLinkSelectionStrategyWithData:(id)data
{
  v7 = 0;
  v4 = [IDSLinkSelectionStrategy createWithJSON:data error:&v7];
  globalLinkConfiguration = [(IDSDSession *)self globalLinkConfiguration];
  [globalLinkConfiguration setLinkSelectionStrategy:v4];

  onTransportThread_globalLink = [(IDSDSession *)self onTransportThread_globalLink];
  [onTransportThread_globalLink setLinkSelectionStrategy:v4];
}

- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  context = objc_autoreleasePoolPush();
  sharedState = [(IDSDSession *)self sharedState];
  requiredCapabilities = [sharedState requiredCapabilities];
  v8 = [requiredCapabilities count];

  v9 = [capabilitiesCopy count];
  sharedState2 = [(IDSDSession *)self sharedState];
  requiredCapabilities2 = [sharedState2 requiredCapabilities];
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v12 = sub_1003A6C9C(requiredCapabilities2, capabilitiesCopy, &v95, &v94, &v93);
  v68 = v95;
  v70 = v94;
  v69 = v93;

  if (v12)
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    [sharedState3 setRequiredCapabilities:capabilitiesCopy];
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  requiredLackOfCapabilities = [sharedState4 requiredLackOfCapabilities];
  v16 = [requiredLackOfCapabilities count];

  v17 = [ofCapabilitiesCopy count];
  sharedState5 = [(IDSDSession *)self sharedState];
  requiredLackOfCapabilities2 = [sharedState5 requiredLackOfCapabilities];
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v20 = sub_1003A6C9C(requiredLackOfCapabilities2, ofCapabilitiesCopy, &v92, &v91, &v90);
  v65 = v92;
  v67 = v91;
  v66 = v90;

  if (v20)
  {
    sharedState6 = [(IDSDSession *)self sharedState];
    [sharedState6 setRequiredLackOfCapabilities:ofCapabilitiesCopy];
  }

  if (!v12)
  {
    v24 = 0;
    v72 = 0;
    v23 = 0;
    v22 = 0;
    if (!v20)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  sub_1003A6F1C(v8 != 0, v9 != 0, v68, v70, v69, &v89, &v88, &v87, &v86);
  v22 = v89;
  v23 = v88;
  v72 = v87;
  v24 = v86;
  if (v20)
  {
LABEL_9:
    v25 = v23;
    v84 = v22;
    v85 = v23;
    v82 = v72;
    v83 = v24;
    sub_1003A6F1C(v16 != 0, v17 != 0, v65, v67, v66, &v85, &v84, &v83, &v82);
    v23 = v85;

    v26 = v84;
    v27 = v83;

    v28 = v82;
    v24 = v27;
    v72 = v28;
    v22 = v26;
  }

LABEL_10:
  v71 = v23;
  if ([v22 count])
  {
    v29 = 1;
  }

  else
  {
    v29 = [v23 count] != 0;
  }

  if ([v24 count])
  {
    v30 = 1;
  }

  else
  {
    v30 = [v72 count] != 0;
  }

  v31 = objc_autoreleasePoolPush();
  if ((v12 & 1) == 0 && [capabilitiesCopy count])
  {
    if (v29)
    {
      if (!v22)
      {
        v22 = objc_alloc_init(NSMutableSet);
      }

      __imSetFromArray = [capabilitiesCopy __imSetFromArray];
      [v22 unionSet:__imSetFromArray];
    }

    if (v30)
    {
      if (!v24)
      {
        v24 = objc_alloc_init(NSMutableSet);
      }

      __imSetFromArray2 = [capabilitiesCopy __imSetFromArray];
      [v24 unionSet:__imSetFromArray2];
    }
  }

  if ((v20 & 1) == 0 && [ofCapabilitiesCopy count])
  {
    if (v29)
    {
      if (!v71)
      {
        v71 = objc_alloc_init(NSMutableSet);
      }

      __imSetFromArray3 = [ofCapabilitiesCopy __imSetFromArray];
      [v71 unionSet:__imSetFromArray3];
    }

    if (v30)
    {
      if (!v24)
      {
        v24 = objc_alloc_init(NSMutableSet);
      }

      __imSetFromArray4 = [ofCapabilitiesCopy __imSetFromArray];
      [v24 unionSet:__imSetFromArray4];
    }
  }

  objc_autoreleasePoolPop(v31);
  if (self->_groupSessionState == 1 && (v29 || v30))
  {
    v36 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      sharedState7 = [(IDSDSession *)self sharedState];
      groupID = [sharedState7 groupID];
      v39 = groupID;
      v40 = @"NO";
      if (v29)
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      *buf = 138412802;
      v97 = groupID;
      v99 = v41;
      v98 = 2112;
      if (v30)
      {
        v40 = @"YES";
      }

      v100 = 2112;
      v101 = v40;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "setRequiredCapabilities triggered leave to unsupported members {groupID: %@, needToSendJoin: %@, needToSendLeave: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState8 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState8 groupID];
      if (v29)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      if (v30)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v46 = [(IDSDSession *)self sharedState:groupID2];
        groupID3 = [v46 groupID];
        _IDSLogV();
      }
    }

    v47 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A70E0;
    block[3] = &unk_100BD9F70;
    v80 = v30;
    block[4] = self;
    v76 = v24;
    v77 = v72;
    v81 = v29;
    v78 = v22;
    v79 = v71;
    v48 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v47, v48);
  }

  else
  {
    v49 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      sharedState9 = [(IDSDSession *)self sharedState];
      groupID4 = [sharedState9 groupID];
      v52 = groupID4;
      v53 = @"NO";
      groupSessionState = self->_groupSessionState;
      *buf = 138413058;
      if (v29)
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      v97 = groupID4;
      if (v30)
      {
        v53 = @"YES";
      }

      v98 = 2112;
      v99 = v55;
      v100 = 2112;
      v101 = v53;
      v102 = 1024;
      v103 = groupSessionState;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "setRequiredCapabilities not triggering a leave to unsupported members {groupID: %@, needToSendJoin: %@, needToSendLeave: %@, groupSessionState: %d}", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState10 = [(IDSDSession *)self sharedState];
      groupID5 = [sharedState10 groupID];
      v58 = v29 ? @"YES" : @"NO";
      v59 = v30 ? @"YES" : @"NO";
      v63 = self->_groupSessionState;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v60 = [(IDSDSession *)self sharedState:groupID5];
        groupID6 = [v60 groupID];
        _IDSLogV();
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)setQuickRelayUserTypeForSession:(unsigned __int16)session
{
  sessionCopy = session;
  v5 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    v9 = 138412546;
    v10 = uniqueID;
    v11 = 1024;
    v12 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setQuickRelayUserTypeForSession called for session: %@ with userType: %u", &v9, 0x12u);
  }

  v8 = [NSNumber numberWithUnsignedShort:sessionCopy];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setQuickRelayUserType:v8];
}

- (void)enableP2Plinks
{
  self->_disableP2PLinks = 0;
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412290;
    v7 = uniqueID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enableP2Plinks called for session: %@", buf, 0xCu);
  }

  IDSTransportThreadAddBlock();
}

- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate
{
  self->_forceTCPFallbackOnWiFi = reinitiate;
  LOBYTE(v5) = reinitiate;
  IDSTransportThreadAddBlock();
  [(IDSDSession *)self reconnectSession:_NSConcreteStackBlock];
}

- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate
{
  self->_forceTCPFallbackOnCell = reinitiate;
  LOBYTE(v5) = reinitiate;
  IDSTransportThreadAddBlock();
  [(IDSDSession *)self reconnectSession:_NSConcreteStackBlock];
}

- (void)connection:(id)connection didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  connectionCopy = connection;
  errorCopy = error;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    v13 = @"NO";
    *buf = 138412802;
    v36 = uniqueID;
    v37 = 2112;
    if (startCopy)
    {
      v13 = @"YES";
    }

    v38 = v13;
    v39 = 2112;
    v40 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ session did start %@ with error %@", buf, 0x20u);
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  serviceName = [sharedState2 serviceName];
  sharedState3 = [(IDSDSession *)self sharedState];
  uniqueID2 = [sharedState3 uniqueID];
  v18 = uniqueID2;
  v19 = @"NO";
  if (startCopy)
  {
    v19 = @"YES";
  }

  v34 = v19;
  v33 = uniqueID2;
  DLCSessionLogWithLevel();

  v20 = [(IDSDSession *)self sharedState:v33];
  [v20 clearAllTimers];

  if (startCopy)
  {
    v21 = objc_alloc_init(IMMessageContext);
    [v21 setShouldBoost:1];
    v22 = +[IDSDaemon sharedInstance];
    sharedState4 = [(IDSDSession *)self sharedState];
    pushTopic = [sharedState4 pushTopic];
    v25 = [v22 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v21];

    sharedState5 = [(IDSDSession *)self sharedState];
    uniqueID3 = [sharedState5 uniqueID];
    [v25 sessionStarted:uniqueID3];

    sharedState6 = [(IDSDSession *)self sharedState];
    [sharedState6 setState:5];

    v29 = objc_alloc_init(NSDate);
    startDate = self->_startDate;
    self->_startDate = v29;
  }

  else
  {
    sharedState7 = [(IDSDSession *)self sharedState];
    isScreenSharingSession = [sharedState7 isScreenSharingSession];

    if (isScreenSharingSession)
    {
      [(IDSDSession *)self handleAVConferenceError:errorCopy];
    }

    [(IDSDSession *)self _notifyClientsSessionStopped];
  }

  [(IDSDSession *)self submitAWDMetricsForIDSSessionConnected];
}

- (void)connectionDidStop:(id)stop error:(id)error
{
  stopCopy = stop;
  errorCopy = error;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v16 = uniqueID;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ session did stop with error %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v14 = errorCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v12 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v12 uniqueID];
        v14 = errorCopy;
        _IDSLogV();
      }
    }
  }

  if (errorCopy)
  {
    [(IDSDSession *)self handleAVConferenceError:errorCopy];
  }

  [(IDSDSession *)self _cleanupSessionConnection:uniqueID2];
  [(IDSDSession *)self endSessionWithReason:12];
}

- (void)handleAVConferenceError:(id)error
{
  errorCopy = error;
  v5 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDSession *)self uniqueID];
    *buf = 138412546;
    v18 = uniqueID;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session: %@ received error: %@", buf, 0x16u);
  }

  if (errorCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(IDSDSession *)self uniqueID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412802;
      v18 = uniqueID2;
      v19 = 2112;
      v20 = errorCopy;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "Invalid error type posted to session: %@   error: %@    class: %@", buf, 0x20u);
    }
  }

  else
  {
    selfCopy = self;
    if ([(IDSDSession *)selfCopy state]== 9 || ![(IDSDSession *)selfCopy state])
    {
      sharedState2 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(sharedState2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, sharedState2, OS_LOG_TYPE_DEFAULT, "Ignoring error, we're already dead anyway!", buf, 2u);
      }

      goto LABEL_13;
    }

    v16 = 0;
    *buf = 0;
    domain = [errorCopy domain];
    v9 = [domain isEqualToString:IDSGKErrorDomain];

    if (v9)
    {
      sub_1005B2C58([errorCopy code], buf, &v16);
    }

    sharedState = [(IDSDSession *)selfCopy sharedState];
    error = [sharedState error];

    if (error != errorCopy)
    {
      sharedState2 = [(IDSDSession *)selfCopy sharedState];
      [sharedState2 setError:errorCopy];
LABEL_13:
    }
  }
}

- (void)connection:(id)connection receivedData:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  if (!self->_baseSocketPairConnection)
  {
    goto LABEL_9;
  }

  sharedState = [(IDSDSession *)self sharedState];
  encryptionInitialized = [sharedState encryptionInitialized];

  if (!encryptionInitialized)
  {
    v14 = dataCopy;
    goto LABEL_8;
  }

  v10 = [dataCopy length];
  if (v10 >= 1473)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v43) = 1472;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Data size is bigger than %d, ending call...", buf, 8u);
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState2 serviceName];
    DLCSessionLogWithLevel();

    [(IDSDSession *)self endSessionWithReason:19, 1472];
    goto LABEL_9;
  }

  v15 = v10 - 4;
  if (v10 <= 4)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Data size is too small, ending call...", buf, 2u);
    }

LABEL_13:

    sharedState3 = [(IDSDSession *)self sharedState];
    serviceName2 = [sharedState3 serviceName];
    DLCSessionLogWithLevel();

    [(IDSDSession *)self endSessionWithReason:19];
    goto LABEL_9;
  }

  bytes = [dataCopy bytes];
  v20 = __rev16(*bytes);
  if (v20 == 57344)
  {
    v21 = bytes;
    v22 = *(bytes + 2);
    v23 = *(bytes + 3);
    v24 = malloc_type_malloc(v15, 0x100004077774924uLL);
    if (!v24)
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Malloc error while decrypting, ending call...", buf, 2u);
      }

      goto LABEL_13;
    }

    v25 = v24;
    memcpy(v24, v21 + 2, v15);
    sharedState4 = [(IDSDSession *)self sharedState];
    v27 = v23 | (v22 << 8);
    encryptionState = [sharedState4 encryptionState];

    v29 = sub_10050CB8C(encryptionState, v27, v25, v15, 0);
    if (v29)
    {
      v30 = v29;
      if (v29 != 4)
      {
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v43) = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Stream decryption transform error %d", buf, 8u);
        }

        sharedState5 = [(IDSDSession *)self sharedState];
        serviceName3 = [sharedState5 serviceName];
        DLCSessionLogWithLevel();
      }

      free(v25);
      goto LABEL_9;
    }

    v14 = [NSData dataWithBytesNoCopy:v25 length:v15 freeWhenDone:1];

    v37 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v43 = [v14 hash];
      v44 = 2048;
      v45 = [v14 length];
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Received data Viceroy -> Daemon  (after decrypt data hash: %lu)  (length: %lu)", buf, 0x16u);
    }

    sharedState6 = [(IDSDSession *)self sharedState];
    serviceName4 = [sharedState6 serviceName];
    v40 = [v14 hash];
    v41 = [v14 length];
    DLCSessionLogWithLevel();

LABEL_8:
    [(IDSBaseSocketPairConnection *)self->_baseSocketPairConnection sendData:v14, v40, v41];
    dataCopy = v14;
    goto LABEL_9;
  }

  v34 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v43) = v20;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Magic number doesn't match 0x%04x, ignoring...", buf, 8u);
  }

  sharedState7 = [(IDSDSession *)self sharedState];
  serviceName5 = [sharedState7 serviceName];
  DLCSessionLogWithLevel();

LABEL_9:
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [dataCopy hash];
    sharedState = [(IDSDSession *)self sharedState];
    *buf = 134218496;
    v38 = v9;
    v39 = 1024;
    seqSend = [sharedState seqSend];
    v41 = 2048;
    v42 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending data Daemon -> Viceroy  (before encrypt data hash: %lu seq: %u)  (length: %lu)", buf, 0x1Cu);
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  serviceName = [sharedState2 serviceName];
  v13 = [dataCopy hash];
  sharedState3 = [(IDSDSession *)self sharedState];
  seqSend2 = [sharedState3 seqSend];
  v36 = [dataCopy length];
  DLCSessionLogWithLevel();

  v16 = [(IDSDSession *)self sharedState:v13];
  LODWORD(serviceName) = [v16 encryptionInitialized];

  if (!serviceName)
  {
    goto LABEL_15;
  }

  v17 = [dataCopy length];
  v18 = malloc_type_malloc((v17 + 4), 0x100004077774924uLL);
  if (v18)
  {
    v19 = dataCopy;
    memcpy(v18 + 4, [dataCopy bytes], v17);
    sharedState4 = [(IDSDSession *)self sharedState];
    encryptionState = [sharedState4 encryptionState];

    sharedState5 = [(IDSDSession *)self sharedState];
    v23 = sub_10050CB8C(encryptionState, [sharedState5 seqSend], v18 + 4, v17, 1);

    if (v23)
    {
      if (v23 != 4)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v38) = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Stream encryption transform error %d", buf, 8u);
        }

        sharedState6 = [(IDSDSession *)self sharedState];
        serviceName2 = [sharedState6 serviceName];
        DLCSessionLogWithLevel();

        [(IDSDSession *)self endSessionWithReason:18, v23];
      }

      free(v18);
      goto LABEL_16;
    }

    *v18 = 224;
    sharedState7 = [(IDSDSession *)self sharedState];
    seqSend3 = [sharedState7 seqSend];

    v18[2] = HIBYTE(seqSend3);
    v18[3] = seqSend3;
    v32 = [NSData dataWithBytesNoCopy:v18 length:v17 + 4 freeWhenDone:1];

    sharedState8 = [(IDSDSession *)self sharedState];
    [sharedState8 setSeqSend:{objc_msgSend(sharedState8, "seqSend") + 1}];

    dataCopy = v32;
LABEL_15:
    sharedState9 = [(IDSDSession *)self sharedState];
    connection = [sharedState9 connection];
    [connection sendData:dataCopy];

    goto LABEL_16;
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Malloc error while encrypting, ending call...", buf, 2u);
  }

  sharedState10 = [(IDSDSession *)self sharedState];
  serviceName3 = [sharedState10 serviceName];
  DLCSessionLogWithLevel();

  [(IDSDSession *)self endSessionWithReason:18];
LABEL_16:
}

- (void)_setLinkProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = protocolCopy;
  self->_linkProtocol = 2;
  if (protocolCopy)
  {
    strcpy(v13, "tcp");
    strcpy(v12, "tcpssl");
    uTF8String = [protocolCopy UTF8String];
    if (strncasecmp(uTF8String, v13, 3uLL) || !strncasecmp(uTF8String, v12, 6uLL))
    {
      if (!strncasecmp(uTF8String, v12, 6uLL) && sub_1003A8E0C((uTF8String + 6), &self->_relayPort))
      {
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          relayPort = self->_relayPort;
          v13[1] = 67109120;
          v14 = relayPort;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "use TCPSSL for QR, port: %u", &v13[1], 8u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
        {
          v9 = 4;
          goto LABEL_21;
        }

        _IDSLogTransport();
        v9 = 4;
        if (_IDSShouldLog())
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (sub_1003A8E0C((uTF8String + 3), &self->_relayPort))
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_relayPort;
        v13[1] = 67109120;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "use TCP for QR, port: %u", &v13[1], 8u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
      {
        v9 = 3;
        goto LABEL_21;
      }

      _IDSLogTransport();
      v9 = 3;
      if (_IDSShouldLog())
      {
LABEL_18:
        _IDSLogV();
      }

LABEL_21:
      self->_linkProtocol = v9;
    }
  }
}

- (void)addQREventForRTCReport:(id)report
{
  reportCopy = report;
  v5 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A9108;
  block[3] = &unk_100BD6E40;
  block[4] = self;
  v6 = reportCopy;
  v13 = v6;
  dispatch_async(v5, block);

  v7 = [v6 objectForKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = unsignedIntValue - 312 > 0x15 || ((1 << (unsignedIntValue - 56)) & 0x380003) == 0;
  if (!v9 || (unsignedIntValue - 202 <= 0x14 ? (v10 = ((1 << (unsignedIntValue + 54)) & 0x101081) == 0) : (v10 = 1), !v10 || unsignedIntValue - 402 < 2))
  {
    v11 = v6;
    IDSTransportThreadAddBlock();
  }
}

- (void)_sendQREventToAVC:(id)c
{
  cCopy = c;
  v15 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:cCopy requiringSecureCoding:0 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      groupID = [sharedState groupID];
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = groupID;
      *&buf[22] = 2112;
      *&buf[24] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> _sendQREventToAVC failed to encode qrEvent for group %@ (error: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState2 groupID];
      _IDSLogV();
    }
  }

  else
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = cCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@> _sendQREventToAVC: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v12;
    *&buf[16] = v12;
    IDSByteBufferInitForWrite();
    v13 = v5;
    [v5 bytes];
    [v5 length];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
  }
}

- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = linkCopy;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didDisconnectForDeviceUniqueID:%@ cbuuid:%@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)link:(id)link didReceiveSKEData:(id)data
{
  linkCopy = link;
  dataCopy = data;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveSKEData %d bytes.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = linkCopy;
      v20 = [dataCopy length];
      selfCopy2 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = [dataCopy length];
        v19 = linkCopy;
        v20 = v9;
        selfCopy2 = self;
        _IDSLogV();
      }
    }
  }

  v10 = [(IDSDSession *)self sharedState:selfCopy2];
  if ([v10 useQRDirectly])
  {
    goto LABEL_12;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_11:

LABEL_12:
LABEL_13:
    [dataCopy length];
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v13;
    *&buf[16] = v13;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    v14 = dataCopy;
    [dataCopy bytes];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_14;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_11;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v16 = [sharedState3 clientType] == 6;

  if (v16)
  {
    goto LABEL_13;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_PreConnectionDataKey", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_14:
}

- (void)link:(id)link didReceiveKeyMaterialMessageData:(id)data fromParticipantIDs:(id)ds toParticipantID:(id)d
{
  linkCopy = link;
  dataCopy = data;
  dsCopy = ds;
  dCopy = d;
  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy4 = self;
    v42 = 2112;
    v43 = linkCopy;
    v44 = 2112;
    v45 = dsCopy;
    v46 = 2112;
    v47 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveKeyMaterialMessageData from %@ to %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = dsCopy;
      v33 = dCopy;
      selfCopy3 = self;
      v31 = linkCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v32 = dsCopy;
        v33 = dCopy;
        selfCopy3 = self;
        v31 = linkCopy;
        _IDSLogV();
      }
    }
  }

  if (IMGetDomainBoolForKey())
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy4 = self;
      v42 = 2112;
      v43 = linkCopy;
      v44 = 2112;
      v45 = dsCopy;
      v46 = 2112;
      v47 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveKeyMaterialMessageData from %@ to %@: ignoring because disableQRMaterialMessage is set", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_38;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        v29 = [sharedState4 clientType] == 6;

        if (!v29)
        {
          goto LABEL_38;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v19 = [(IDSDSession *)self _getPushTokensFromParticipantIDArray:dsCopy useNullPlaceholder:0, selfCopy3, v31, v32, v33];
  if ([(IDSDSession *)v19 count])
  {
    firstObject = [(IDSDSession *)dsCopy firstObject];
    v21 = [(IDSDSession *)self _getURIFromParticipantIDNumber:firstObject];
    v22 = [IDSURI URIWithPrefixedURI:v21];

    v23 = [(IDSDSession *)self _getURIFromParticipantIDNumber:dCopy];
    v24 = [IDSURI URIWithPrefixedURI:v23];

    if (v22 && v24)
    {
      v25 = dispatch_get_global_queue(2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003AA0D8;
      block[3] = &unk_100BD9FC0;
      v35 = dataCopy;
      selfCopy5 = self;
      v37 = v22;
      v38 = v24;
      v39 = v19;
      dispatch_async(v25, block);
    }

    else
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy4 = v19;
        v42 = 2112;
        v43 = v22;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Could not process remote key material message from tokens %@ fromURI %@ toURI %@ (invalid)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }
  }

  else
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = dsCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "didReceiveKeyMaterialMessageData couldn't find push tokens for participantIDs %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

LABEL_38:
}

- (void)materialInfoError:(id)error
{
  metricsCollector = self->_metricsCollector;
  errorCopy = error;
  v5 = [(IDSGFTMetricsCollector *)metricsCollector error:@"m"];
  [v5 event:errorCopy];
}

- (void)link:(id)link didReceiveMaterialInfo:(id)info material:(id)material
{
  linkCopy = link;
  infoCopy = info;
  materialCopy = material;
  if ([infoCopy materialType] != 12 && objc_msgSend(infoCopy, "materialType") != 6)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v183 = infoCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo received material info: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v132 = infoCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v132 = infoCopy;
          _IDSLogV();
        }
      }
    }

    materialContent = [infoCopy materialContent];
    v154 = JWDecodeDictionary();

    if (!v154)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        materialContent2 = [infoCopy materialContent];
        *buf = 138412290;
        v183 = materialContent2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not decode content. Data: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          materialContent3 = [infoCopy materialContent];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            materialContent3 = [infoCopy materialContent];
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self materialInfoError:@"couldNotDecodeContent", materialContent3];
      goto LABEL_172;
    }

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v183 = v154;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo received material info content: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        materialContent3 = v154;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          materialContent3 = v154;
          _IDSLogV();
        }
      }
    }

    v148 = -[IDSDSession shouldVerifySignatureForMaterialType:](self, "shouldVerifySignatureForMaterialType:", [infoCopy materialType]);
    if (v148)
    {
      v151 = [v154 objectForKeyedSubscript:@"payload"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v63 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v183 = v154;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not read data from payload. Content: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_171;
      }

      v147 = JWDecodeDictionary();
      if (!v147)
      {
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v183 = v154;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not decode payload. Content: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            ownerParticipantId2 = v154;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              ownerParticipantId2 = v154;
              _IDSLogV();
            }
          }
        }

        [(IDSDSession *)self materialInfoError:@"couldNotDecodePayload", ownerParticipantId2];
        goto LABEL_171;
      }
    }

    else
    {
      v147 = v154;
      v151 = 0;
    }

    v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
    v18 = [(IDSDSession *)self _getURIFromParticipantIDNumber:v17];
    sharedState = [(IDSDSession *)self sharedState];
    serviceName = [sharedState serviceName];
    v153 = [IDSURI URIWithPrefixedURI:v18 withServiceLoggingHint:serviceName];

    v21 = -[IDSDSession _getPushTokenFromParticipantID:](self, "_getPushTokenFromParticipantID:", [materialCopy ownerParticipantId]);
    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName2 = [sharedState2 serviceName];
    v152 = [IDSPushToken pushTokenWithData:v21 withServiceLoggingHint:serviceName2];

    if (!v153)
    {
      os_unfair_lock_lock(&self->_lock);
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId = [materialCopy ownerParticipantId];
        participantIDToURI = self->_participantIDToURI;
        *buf = 134218242;
        v183 = ownerParticipantId;
        v184 = 2112;
        v185 = participantIDToURI;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: did not find mapping from participantID %llu to URI in allocator; trying cache: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId2 = [materialCopy ownerParticipantId];
          v136 = self->_participantIDToURI;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            ownerParticipantId2 = [materialCopy ownerParticipantId];
            v136 = self->_participantIDToURI;
            _IDSLogV();
          }
        }
      }

      v27 = self->_participantIDToURI;
      v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
      v153 = [(NSMutableDictionary *)v27 objectForKeyedSubscript:v28];

      os_unfair_lock_unlock(&self->_lock);
    }

    if (!v152)
    {
      os_unfair_lock_lock(&self->_lock);
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId3 = [materialCopy ownerParticipantId];
        participantIDToPushToken = self->_participantIDToPushToken;
        *buf = 134218242;
        v183 = ownerParticipantId3;
        v184 = 2112;
        v185 = participantIDToPushToken;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: did not find mapping from participantID %llu to push token in allocator; trying cache: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId2 = [materialCopy ownerParticipantId];
          v136 = self->_participantIDToPushToken;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            ownerParticipantId2 = [materialCopy ownerParticipantId];
            v136 = self->_participantIDToPushToken;
            _IDSLogV();
          }
        }
      }

      v32 = self->_participantIDToPushToken;
      v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
      v152 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:v33];

      os_unfair_lock_unlock(&self->_lock);
    }

    if (![materialCopy ownerParticipantId])
    {
      v64 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not process material because ownerParticipantId is 0", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self materialInfoError:@"missingOwnerParticipantID"];
      goto LABEL_170;
    }

    v34 = v153 == 0;
    if (!v153)
    {
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId4 = [materialCopy ownerParticipantId];
        *buf = 134217984;
        v183 = ownerParticipantId4;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not get fromURI for participant %llu", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId2 = [materialCopy ownerParticipantId];
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            ownerParticipantId2 = [materialCopy ownerParticipantId];
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self materialInfoError:@"missingFromURI", ownerParticipantId2];
    }

    if (!v152 || (+[NSNull null](NSNull, "null"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v152 isEqual:v37], v37, v38))
    {
      v39 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId5 = [materialCopy ownerParticipantId];
        *buf = 134217984;
        v183 = ownerParticipantId5;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not get push token for participant %llu", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId2 = [materialCopy ownerParticipantId];
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            ownerParticipantId2 = [materialCopy ownerParticipantId];
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self materialInfoError:@"missingFromToken", ownerParticipantId2];
      v34 = 1;
    }

    if (v153 && sub_1006D6B44(v153))
    {
      v41 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo dropping material info because it came from blocked URI", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      goto LABEL_170;
    }

    if (v34)
    {
      pendingMaterialInfoByParticipantID = self->_pendingMaterialInfoByParticipantID;
      if (!pendingMaterialInfoByParticipantID)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v44 = self->_pendingMaterialInfoByParticipantID;
        self->_pendingMaterialInfoByParticipantID = Mutable;

        pendingMaterialInfoByParticipantID = self->_pendingMaterialInfoByParticipantID;
      }

      v45 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
      v46 = [(NSMutableDictionary *)pendingMaterialInfoByParticipantID objectForKeyedSubscript:v45];
      v47 = v46 == 0;

      if (v47)
      {
        v48 = objc_alloc_init(NSMutableArray);
        v49 = self->_pendingMaterialInfoByParticipantID;
        v50 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
        [(NSMutableDictionary *)v49 setObject:v48 forKeyedSubscript:v50];
      }

      objc_initWeak(&location, self);
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      v51 = mach_continuous_time();
      v52 = *&qword_100CBD180;
      v53 = self->_pendingMaterialInfoByParticipantID;
      v54 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [materialCopy ownerParticipantId]);
      v55 = [(NSMutableDictionary *)v53 objectForKeyedSubscript:v54];
      v175[0] = _NSConcreteStackBlock;
      v175[1] = 3221225472;
      v175[2] = sub_1003AC9A4;
      v175[3] = &unk_100BD9FE8;
      v56 = materialCopy;
      v176 = v56;
      selfCopy = self;
      *&v180[1] = v52 * v51 + 60.0;
      objc_copyWeak(v180, &location);
      v178 = linkCopy;
      v179 = infoCopy;
      v57 = objc_retainBlock(v175);
      [v55 addObject:v57];

      while (1)
      {

        v58 = self->_pendingMaterialInfoByParticipantID;
        v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 ownerParticipantId]);
        v60 = [(NSMutableDictionary *)v58 objectForKeyedSubscript:v59];
        v61 = [v60 count] > 0x20;

        if (!v61)
        {
          break;
        }

        v62 = self->_pendingMaterialInfoByParticipantID;
        v54 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 ownerParticipantId]);
        v55 = [(NSMutableDictionary *)v62 objectForKeyedSubscript:v54];
        [v55 removeFirstObject];
      }

      v72 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId6 = [v56 ownerParticipantId];
        sharedState3 = [(IDSDSession *)self sharedState];
        groupID = [sharedState3 groupID];
        sharedState4 = [(IDSDSession *)self sharedState];
        uniqueID = [sharedState4 uniqueID];
        *buf = 134218498;
        v183 = ownerParticipantId6;
        v184 = 2112;
        v185 = groupID;
        v186 = 2112;
        v187 = uniqueID;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: saving material to _pendingMaterialInfoByParticipantID from %llu for group %@ and session %@ until we have allocation", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId7 = [v56 ownerParticipantId];
          sharedState5 = [(IDSDSession *)self sharedState];
          groupID2 = [sharedState5 groupID];
          sharedState6 = [(IDSDSession *)self sharedState];
          uniqueID2 = [sharedState6 uniqueID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            [v56 ownerParticipantId];
            sharedState7 = [(IDSDSession *)self sharedState];
            groupID3 = [sharedState7 groupID];
            sharedState8 = [(IDSDSession *)self sharedState];
            uniqueID3 = [sharedState8 uniqueID];
            _IDSLogV();
          }
        }
      }

      objc_destroyWeak(v180);
      objc_destroyWeak(&location);
      goto LABEL_170;
    }

    v146 = [v153 URIByAddingOptionalPushToken:v152];
    if (![(IDSDSession *)self destinationsContainFromURI:v146]&& ![(IDSDSession *)self destinationsContainFromURI:v153])
    {
      pendingMaterialInfoByFromID = self->_pendingMaterialInfoByFromID;
      if (!pendingMaterialInfoByFromID)
      {
        v88 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v89 = self->_pendingMaterialInfoByFromID;
        self->_pendingMaterialInfoByFromID = v88;

        pendingMaterialInfoByFromID = self->_pendingMaterialInfoByFromID;
      }

      v90 = [(NSMutableDictionary *)pendingMaterialInfoByFromID objectForKeyedSubscript:v153];
      v91 = v90 == 0;

      if (v91)
      {
        v92 = objc_alloc_init(NSMutableArray);
        [(NSMutableDictionary *)self->_pendingMaterialInfoByFromID setObject:v92 forKeyedSubscript:v153];
      }

      objc_initWeak(&location, self);
      v93 = sub_1003856DC();
      v94 = [(NSMutableDictionary *)self->_pendingMaterialInfoByFromID objectForKeyedSubscript:v153];
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 3221225472;
      v169[2] = sub_1003ACE10;
      v169[3] = &unk_100BD9FE8;
      v95 = materialCopy;
      v170 = v95;
      selfCopy2 = self;
      *&v174[1] = v93 + 60.0;
      objc_copyWeak(v174, &location);
      v172 = linkCopy;
      v173 = infoCopy;
      v96 = objc_retainBlock(v169);
      [v94 addObject:v96];

      while (1)
      {

        v97 = [(NSMutableDictionary *)self->_pendingMaterialInfoByFromID objectForKeyedSubscript:v153];
        v98 = [v97 count] > 0x20;

        if (!v98)
        {
          break;
        }

        v94 = [(NSMutableDictionary *)self->_pendingMaterialInfoByFromID objectForKeyedSubscript:v153];
        [v94 removeFirstObject];
      }

      v99 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        ownerParticipantId8 = [v95 ownerParticipantId];
        sharedState9 = [(IDSDSession *)self sharedState];
        groupID4 = [sharedState9 groupID];
        sharedState10 = [(IDSDSession *)self sharedState];
        uniqueID4 = [sharedState10 uniqueID];
        destinations = [(IDSDSession *)self destinations];
        *buf = 134218754;
        v183 = ownerParticipantId8;
        v184 = 2112;
        v185 = groupID4;
        v186 = 2112;
        v187 = uniqueID4;
        v188 = 2112;
        v189 = destinations;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: saving material from %llu for group %@ and session %@ until we have member, since the originator of material is not in group membership: %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          ownerParticipantId9 = [v95 ownerParticipantId];
          sharedState11 = [(IDSDSession *)self sharedState];
          groupID5 = [sharedState11 groupID];
          sharedState12 = [(IDSDSession *)self sharedState];
          uniqueID5 = [sharedState12 uniqueID];
          [(IDSDSession *)self destinations];
          v140 = v137 = uniqueID5;
          ownerParticipantId2 = ownerParticipantId9;
          v136 = groupID5;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            ownerParticipantId10 = [v95 ownerParticipantId];
            sharedState13 = [(IDSDSession *)self sharedState];
            groupID6 = [sharedState13 groupID];
            sharedState14 = [(IDSDSession *)self sharedState];
            uniqueID6 = [sharedState14 uniqueID];
            [(IDSDSession *)self destinations];
            v140 = v137 = uniqueID6;
            ownerParticipantId2 = ownerParticipantId10;
            v136 = groupID6;
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self materialInfoError:@"ReceivedFromUnknownMember", ownerParticipantId2, v136, v137, v140];

      objc_destroyWeak(v174);
      objc_destroyWeak(&location);
      goto LABEL_169;
    }

    if ([infoCopy materialType] == 13)
    {
      metricsCollector = self->_metricsCollector;
      rawToken = [v152 rawToken];
      [(IDSGFTMetricsCollector *)metricsCollector receivedUnverifiedKMOverQUICFromToken:rawToken];
    }

    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_1003AD27C;
    v162[3] = &unk_100BDA010;
    v163 = infoCopy;
    selfCopy3 = self;
    v165 = materialCopy;
    v67 = v147;
    v166 = v67;
    v68 = v152;
    v167 = v68;
    v143 = v153;
    v168 = v143;
    v145 = objc_retainBlock(v162);
    if (!v148)
    {
      v85 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo not verifying signature", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v86 = im_primary_queue();
      v156[0] = _NSConcreteStackBlock;
      v156[1] = 3221225472;
      v156[2] = sub_1003AE73C;
      v156[3] = &unk_100BD7270;
      v157 = v145;
      sub_1003859AC(v86, QOS_CLASS_USER_INTERACTIVE, v156);

      goto LABEL_168;
    }

    v69 = [v154 objectForKey:@"signature"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = [v154 objectForKey:@"signature"];
      v71 = [NSData _IDSDataFromBase64String:v70];
    }

    else
    {
      v70 = [v154 objectForKey:@"signature"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v150 = 0;
LABEL_144:

        if (v150)
        {
          v115 = objc_opt_class();
          v144 = sub_10001B2E4(v115, v154, @"sessionID");
          sharedState15 = [(IDSDSession *)self sharedState];
          uniqueID7 = [sharedState15 uniqueID];
          v118 = [v144 isEqual:uniqueID7];

          if (v118)
          {
            v119 = [v144 dataUsingEncoding:4];
            v120 = [NSMutableData dataWithData:v119];

            [v120 appendData:v151];
            v121 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v183 = v150;
              v184 = 2112;
              v185 = v67;
              _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo verifying signature: %@ matchesPayload: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                ownerParticipantId2 = v150;
                v136 = v67;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  ownerParticipantId2 = v150;
                  v136 = v67;
                  _IDSLogV();
                }
              }
            }

            v142 = [IDSEncryptionController sharedInstance:ownerParticipantId2];
            getCallerCert = [(IDSDSession *)self getCallerCert];
            rawToken2 = [v68 rawToken];
            getFromService = [(IDSDSession *)self getFromService];
            fromURI = [(IDSDSession *)self fromURI];
            v158[0] = _NSConcreteStackBlock;
            v158[1] = 3221225472;
            v158[2] = sub_1003AE4D8;
            v158[3] = &unk_100BDA060;
            v159 = v150;
            v160 = v67;
            v161 = v145;
            LOBYTE(v141) = 0;
            [v142 publicKeyVerifySignedData:v159 matchesData:v120 forSignatureType:0 identity:getCallerCert forURI:v143 pushToken:rawToken2 service:getFromService localURI:fromURI priority:300 completion:v158 avoidMainQueue:v141];
          }

          else
          {
            v127 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              sharedState16 = [(IDSDSession *)self sharedState];
              uniqueID8 = [sharedState16 uniqueID];
              *buf = 138412546;
              v183 = v144;
              v184 = 2112;
              v185 = uniqueID8;
              _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo ignoring material info; sessionID %@ does not match our sessionID %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                sharedState17 = [(IDSDSession *)self sharedState];
                [sharedState17 uniqueID];
                v136 = ownerParticipantId2 = v144;
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v131 = [(IDSDSession *)self sharedState:v144];
                  [v131 uniqueID];
                  v136 = ownerParticipantId2 = v144;
                  _IDSLogV();
                }
              }
            }

            [(IDSDSession *)self materialInfoError:@"sessionIDMismatch", ownerParticipantId2, v136];
          }
        }

        else
        {
          v126 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v183 = v154;
            _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo did not receive signature: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              ownerParticipantId2 = v154;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                ownerParticipantId2 = v154;
                _IDSLogV();
              }
            }
          }

          [(IDSDSession *)self materialInfoError:@"missingSignature", ownerParticipantId2];
        }

LABEL_168:

LABEL_169:
LABEL_170:

LABEL_171:
LABEL_172:

        goto LABEL_173;
      }

      v71 = [v154 objectForKey:@"signature"];
    }

    v150 = v71;

    goto LABEL_144;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v183) = [infoCopy materialType];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo type: %d, ignoring (handled separately)", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      materialType = [infoCopy materialType];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [infoCopy materialType];
        _IDSLogV();
      }
    }
  }

LABEL_173:
}

- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v25 = 2112;
    v26 = linkCopy;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = cbuuidCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didConnectForDeviceUniqueID:%@ cbuuid:%@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = dCopy;
    v21 = cbuuidCopy;
    selfCopy2 = self;
    v19 = linkCopy;
    _IDSLogV();
  }

  v12 = [(IDSDSession *)self onTransportThread_linkManager:selfCopy2];
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v15 = [v12 currentLinkType:uniqueID];

  v16 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003AEA70;
  block[3] = &unk_100BD7978;
  block[4] = self;
  block[5] = v15;
  v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v16, v17);
}

- (void)link:(id)link didReceiveReportEvent:(id)event
{
  linkCopy = link;
  eventCopy = event;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveReportEvent:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v30 = linkCopy;
    v31 = eventCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v6 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v6 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v41 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v9;
    v40 = v9;
    memset(buf, 170, 0x1000uLL);
    IDSByteBufferInitForWrite();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [eventCopy allKeys];
    v11 = 0;
    v12 = [allKeys countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (!v12)
    {
      goto LABEL_36;
    }

    v13 = *v36;
    v14 = IDSGlobalLinkAttributeAcceptDelayKey;
    v15 = IDSQuickRelayServerProviderKey;
    v16 = buf;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if ([v18 isEqualToString:{v14, v29}])
        {
          v19 = [eventCopy objectForKey:v14];
          unsignedIntValue = [v19 unsignedIntValue];

          v21 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 67109120;
            v43 = unsignedIntValue;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Report acceptDelay: %d", v42, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v29 = unsignedIntValue;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v29 = unsignedIntValue;
                _IDSLogV();
              }
            }
          }

          v22 = 1;
        }

        else
        {
          if (![v18 isEqualToString:v15])
          {
            continue;
          }

          v23 = [eventCopy objectForKey:v15];
          unsignedIntValue = [v23 unsignedIntValue];

          v24 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 67109120;
            v43 = unsignedIntValue;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Report QuickRelay Server Provider: %d", v42, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v29 = unsignedIntValue;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v29 = unsignedIntValue;
                _IDSLogV();
              }
            }
          }

          v22 = 2;
        }

        *v16 = 0;
        v16[2] = 0;
        v16[3] = v22;
        v16[4] = BYTE3(unsignedIntValue);
        v16[5] = BYTE2(unsignedIntValue);
        v16[6] = BYTE1(unsignedIntValue);
        v16[7] = unsignedIntValue;
        v16 += 8;
        v11 += 8;
      }

      v12 = [allKeys countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (!v12)
      {
LABEL_36:

        IDSByteBufferWriteField();
        [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
        IDSByteBufferRelease();
        goto LABEL_37;
      }
    }
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v26 = [sharedState3 clientType] == 6;

  if (v26)
  {
    goto LABEL_12;
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_InfoReportKey", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_37:
}

- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (self->_verboseFunctionalLogging)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var1 = packet->var1;
      var2 = packet->var2;
      var0 = packet->var0;
      var25 = packet->var25;
      v15 = *packet->var0;
      v16 = *(packet->var0 + 1);
      v17 = *(packet->var0 + 2);
      v18 = *(packet->var0 + 3);
      *buf = 138415362;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = linkCopy;
      *&buf[22] = 2048;
      *&buf[24] = packet;
      *v86 = 2112;
      *&v86[2] = dCopy;
      v87 = 2112;
      v88 = cbuuidCopy;
      v89 = 2048;
      v90 = var0;
      v91 = 2048;
      v92 = var2;
      v93 = 2048;
      v94 = var1;
      v95 = 1024;
      v96 = var25;
      v97 = 1024;
      v98 = v15;
      v99 = 1024;
      v100 = v16;
      v101 = 1024;
      v102 = v17;
      v103 = 1024;
      v104 = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceivePacket:%p fromDeviceUniqueID:%@ cbuuid:%@ packetBytes %p packetLength %ld packetMaxLength %ld linkID %d [%02x%02x%02x%02x ...]", buf, 0x70u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = *(packet->var0 + 2);
      v68 = *(packet->var0 + 3);
      v65 = *packet->var0;
      v66 = *(packet->var0 + 1);
      v63 = packet->var1;
      v64 = packet->var25;
      v61 = packet->var0;
      v62 = packet->var2;
      v59 = dCopy;
      v60 = cbuuidCopy;
      v55 = linkCopy;
      packetCopy = packet;
      selfCopy = self;
      _IDSLogV();
    }
  }

  if (self->_firstPacketReceivedTime == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_1009186A4();
    }

    self->_firstPacketReceivedTime = *&qword_100CBD180 * mach_continuous_time();
  }

  v19 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v19 useQRDirectly])
  {
    goto LABEL_18;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {
LABEL_16:

    goto LABEL_17;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  if ([sharedState3 clientType] == 6)
  {

    goto LABEL_16;
  }

  bypassUTun = self->_bypassUTun;

  if (!bypassUTun)
  {
    v52 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to receive packet", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_90;
  }

LABEL_19:
  var23 = packet->var23;
  if (var23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = var23;
  }

  v73 = v24;
  if (v24 >= 1)
  {
    v25 = 0;
    p_var28 = &packet->var28;
    var3 = packet->var24[0].var3;
    while (1)
    {
      *v86 = 0xAAAAAAAAAAAAAAAALL;
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v27;
      *&buf[16] = v27;
      IDSByteBufferInitForWrite();
      v28 = packet->var25;
      v83 = packet->var25;
      var21 = packet->var21;
      var22 = packet->var22;
      v29 = &packet->var24[v25];
      var20 = v29->var20;
      multiplexerTransport = self->_multiplexerTransport;
      if (!multiplexerTransport)
      {
        break;
      }

      if (var23 > 1)
      {
        v33 = _IDSLinkPacketBufferCreateWithUserBuffer();
        if (var20)
        {
          *(v33 + 536) |= 1u;
          *(v33 + 488) = v29->var4;
        }

        v32 = [(IDSMultiplexerGroupSessionTransport *)self->_multiplexerTransport tryConsumePacketBuffer:v33, v54, v56, v58];
        _IDSLinkPacketBufferRelease();
      }

      else
      {
        v32 = [(IDSMultiplexerGroupSessionTransport *)multiplexerTransport tryConsumePacketBuffer:packet];
      }

      if (v83 > 0)
      {
        goto LABEL_33;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_88:
      IDSByteBufferRelease();
      ++v25;
      var3 += 48;
      if (v25 == v73)
      {
        goto LABEL_89;
      }
    }

    if (v28 <= 0)
    {
LABEL_85:
      if (var23 > 1)
      {
        [IDSClientChannel writeBuffer:"writeBuffer:bufferSize:metaData:metadataSize:moreComing:" bufferSize:v29->var0 metaData:v29->var1 metadataSize:? moreComing:?];
      }

      else
      {
        [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:packet metadataSize:?];
      }

      goto LABEL_88;
    }

    v32 = 0;
LABEL_33:
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    v34 = *p_var28;
    if (*p_var28 > 0.0)
    {
      IDSByteBufferWriteField();
    }

    if ((var20 & 2) != 0)
    {
      p_var2 = &v29->var2;
      v35 = v29->var2;
      if (!((v35 < 1) | v32 & 1))
      {
        memset(v84, 170, 24);
        if (v35 >= 0xD)
        {
          *p_var2 = 12;
        }

        IDSByteBufferWriteField();
        v37 = *p_var2;
        if (v37 >= 1)
        {
          v38 = v84;
          v39 = var3;
          do
          {
            v40 = *v39++;
            *v38 = bswap32(v40) >> 16;
            v38 += 2;
            --v37;
          }

          while (v37);
        }

        IDSByteBufferWriteField();
      }
    }

    if (!(((var20 & 1) == 0) | v32 & 1))
    {
      *v84 = bswap64(v29->var4);
      IDSByteBufferWriteField();
    }

    if (!(((var20 & 8) == 0) | v32 & 1))
    {
      v84[0] = v29->var5;
      IDSByteBufferWriteField();
    }

    if (!(((var20 & 0x10) == 0) | v32 & 1))
    {
      *v84 = bswap32(v29->var6) >> 16;
      IDSByteBufferWriteField();
    }

    if ((var20 & 0x20) != 0)
    {
      v84[0] = v29->var7;
      if ((v32 & 1) == 0)
      {
        IDSByteBufferWriteField();
      }

      [(IDSDSession *)self _lightweightParticipantSync:v34, v54];
    }

    if (!(((var20 & 4) == 0) | v32 & 1))
    {
      IDSByteBufferWriteField();
    }

    if (!(((var20 & 0x80) == 0) | v32 & 1))
    {
      IDSByteBufferWriteField();
    }

    if ((var20 & 0x40) != 0)
    {
      v80 = bswap32(v29->var10) >> 16;
      IDSByteBufferWriteField();
      v79 = bswap32(v29->var11.var0) >> 16;
      IDSByteBufferWriteField();
      v78 = bswap32(v29->var11.var1) >> 16;
      IDSByteBufferWriteField();
      v77 = bswap32(v29->var11.var2) >> 16;
      IDSByteBufferWriteField();
      v76 = bswap32(v29->var11.var3) >> 16;
      IDSByteBufferWriteField();
      v75 = bswap32(v29->var11.var4) >> 16;
      IDSByteBufferWriteField();
      if (!packet->var2)
      {
        v41 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 67109632;
          *&v84[4] = v73;
          *&v84[8] = 1024;
          *&v84[10] = v80;
          *&v84[14] = 1024;
          *&v84[16] = HIBYTE(v80);
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "totalIncomingPackets= %d, statsID: %0x, %0x", v84, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v56 = v80;
          v58 = HIBYTE(v80);
          v54 = v73;
          _IDSLogV();
        }
      }
    }

    if (!(((var20 & 0x100) == 0) | v32 & 1))
    {
      IDSByteBufferWriteField();
    }

    if ((var20 & 0x400) != 0)
    {
      if (v32)
      {
LABEL_74:
        if ((var20 & 0x2000) != 0 && ((v29->var16 - LOBYTE(self->_currentSessionStateCounter)) & 0x80) == 0)
        {
          sharedState4 = [(IDSDSession *)self sharedState];
          sharedSession = [sharedState4 sharedSession];

          if (sharedSession)
          {
            v44 = im_primary_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003AFB8C;
            block[3] = &unk_100BD6ED0;
            block[4] = self;
            v45 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
            dispatch_async(v44, v45);
          }
        }

        if (!(((var20 & 0x10000) == 0) | v32 & 1))
        {
          v84[0] = 1;
          IDSByteBufferWriteField();
        }

        if (!(((var20 & 0x20000) == 0) | v32 & 1))
        {
          v84[0] = 1;
          IDSByteBufferWriteField();
        }

        if (v32)
        {
          if ((var20 & 0x40) != 0)
          {
            [(IDSDSession *)self writeToClientChannel:self->_clientChannel packetBuffer:0 metaData:v34 metadataSize:?];
          }

          goto LABEL_88;
        }

        goto LABEL_85;
      }
    }

    else if (v32 & 1 | !packet->var39)
    {
      goto LABEL_74;
    }

    v84[0] = 1;
    IDSByteBufferWriteField();
    goto LABEL_74;
  }

LABEL_89:
  v46 = +[NSDate date];
  [v46 timeIntervalSince1970];
  v48 = v47;
  sharedState5 = [(IDSDSession *)self sharedState];
  [sharedState5 setLastPacketTime:v48];

LABEL_90:
  return 1;
}

- (void)link:(id)link didConnectUnderlyingLink:(char)underlyingLink linkUUID:(id)d localAttributes:(id)attributes remoteAttributes:(id)remoteAttributes
{
  v9 = __chkstk_darwin(self);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v183 = v16;
  v185 = v9;
  v173 = v17;
  v182 = v15;
  v18 = v13;
  v186 = v11;
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    *&buf[4] = v185;
    *&buf[12] = 2112;
    *&buf[14] = v173;
    *&buf[22] = 1024;
    *&buf[24] = v183;
    *&buf[28] = 2112;
    *&buf[30] = v182;
    *&buf[38] = 2112;
    *&buf[40] = v18;
    *&buf[48] = 2112;
    *&buf[50] = v186;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didConnectUnderlyingLink:%d linkUUID:%@ localAttributes:%@ remoteAttributes:%@", buf, 0x3Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v171 = v18;
    v172 = v186;
    v168 = v183;
    v170 = v182;
    v164 = v185;
    v166 = v173;
    _IDSLogV();
  }

  sharedState = [v185 sharedState];
  uniqueID = [sharedState uniqueID];
  v175 = [uniqueID componentsSeparatedByString:@"-"];

  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(theDict, @"state", &off_100C3BD28);
  v22 = [*(v185 + 664) substringFromIndex:{objc_msgSend(@"com.apple.private.alloy.", "length")}];
  if (v22)
  {
    CFDictionarySetValue(theDict, @"serviceName", v22);
  }

  v23 = [v175 objectAtIndexedSubscript:0];
  if (v23)
  {
    CFDictionarySetValue(theDict, @"sessionID", v23);
  }

  IDSPowerLogDictionary();
  sharedState2 = [v185 sharedState];
  if ([sharedState2 useQRDirectly])
  {
    goto LABEL_15;
  }

  sharedState3 = [v185 sharedState];
  if ([sharedState3 clientType] == 1)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  sharedState4 = [v185 sharedState];
  if ([sharedState4 clientType] == 5)
  {

    goto LABEL_14;
  }

  sharedState5 = [v185 sharedState];
  v152 = [sharedState5 clientType] == 6;

  if (!v152)
  {
    v153 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      sharedState6 = [v185 sharedState];
      if ([sharedState6 useQRDirectly])
      {
        v155 = @"YES";
      }

      else
      {
        v155 = @"NO";
      }

      sharedState7 = [v185 sharedState];
      clientType = [sharedState7 clientType];
      if (clientType == 1)
      {
        v158 = 0;
        v159 = @"YES";
      }

      else
      {
        sharedState8 = [v185 sharedState];
        v159 = @"YES";
        if ([sharedState8 clientType] == 5)
        {
          v158 = 0;
        }

        else
        {
          sharedState9 = [v185 sharedState];
          if ([sharedState9 clientType] != 6)
          {
            v159 = @"NO";
          }

          v158 = 1;
        }
      }

      *buf = 138412802;
      *&buf[4] = v185;
      *&buf[12] = 2112;
      *&buf[14] = v155;
      *&buf[22] = 2112;
      *&buf[24] = v159;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "No need to send kClientChannelMetadataType_LinkConnected, <%@> useQR: %@, isFaceTimeCall: %@", buf, 0x20u);
      if (v158)
      {
      }

      if (clientType != 1)
      {
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      sharedState10 = [v185 sharedState];
      [sharedState10 useQRDirectly];
      sharedState11 = [v185 sharedState];
      if ([sharedState11 clientType] == 1)
      {
        _IDSLogV();
      }

      else
      {
        sharedState12 = [v185 sharedState];
        if ([sharedState12 clientType] == 5)
        {
          _IDSLogV();
        }

        else
        {
          sharedState13 = [v185 sharedState];
          [sharedState13 clientType];
          _IDSLogV();
        }
      }
    }

    goto LABEL_94;
  }

LABEL_16:
  v191 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v189 = v27;
  v190 = v27;
  IDSByteBufferInitForWrite();
  memset(buf, 170, sizeof(buf));
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0;
  v174 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeUniqueIDKey];
  [v174 getUUIDBytes:&v205];
  LOBYTE(v208) = v183;
  v28 = IDSGlobalLinkAttributeIPFamilyKey;
  v29 = [v18 objectForKey:IDSGlobalLinkAttributeIPFamilyKey];
  BYTE1(v208) = [v29 unsignedCharValue];

  v30 = IDSGlobalLinkAttributeTransportKey;
  v31 = [v18 objectForKey:IDSGlobalLinkAttributeTransportKey];
  BYTE2(v208) = [v31 unsignedCharValue];

  v32 = IDSGlobalLinkAttributeRATKey;
  v33 = [v18 objectForKey:IDSGlobalLinkAttributeRATKey];
  BYTE3(v208) = [v33 unsignedCharValue];

  v34 = [v18 objectForKey:IDSGlobalLinkAttributeIsPartialTLEUPlusOneEnabled];
  BYTE13(v209) = [v34 BOOLValue];

  v35 = [v18 objectForKey:IDSGlobalLinkAttributeIncludesQualityMetadataKey];
  BYTE14(v209) = [v35 BOOLValue];

  v36 = IDSGlobalLinkAttributeConstantOverheadKey;
  v37 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeConstantOverheadKey];
  unsignedShortValue = [v37 unsignedShortValue];

  v39 = [v186 objectForKeyedSubscript:v36];
  unsignedShortValue2 = [v39 unsignedShortValue];

  v41 = IDSGlobalLinkAttributeMTUKey;
  v42 = [v18 objectForKey:IDSGlobalLinkAttributeMTUKey];
  unsignedShortValue3 = [v42 unsignedShortValue];

  v44 = [v186 objectForKey:v41];
  unsignedShortValue4 = [v44 unsignedShortValue];

  v46 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *v192 = 138413570;
    *&v192[4] = v185;
    *&v192[12] = 1024;
    *&v192[14] = v183;
    *&v192[18] = 1024;
    *&v192[20] = unsignedShortValue3;
    *&v192[24] = 1024;
    *&v192[26] = unsignedShortValue4;
    *&v192[30] = 1024;
    LODWORD(v193) = unsignedShortValue;
    WORD2(v193) = 1024;
    *(&v193 + 6) = unsignedShortValue2;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "<%@> linkID %d: localMTU: %d; remoteMTU: %d; localOverhead: %d; remoteOverhead: %d", v192, 0x2Au);
  }

  if (unsignedShortValue3 >= unsignedShortValue4)
  {
    v47 = unsignedShortValue4;
  }

  else
  {
    v47 = unsignedShortValue3;
  }

  WORD3(v209) = v47;
  if (unsignedShortValue <= unsignedShortValue2)
  {
    v48 = unsignedShortValue2;
  }

  else
  {
    v48 = unsignedShortValue;
  }

  LOWORD(v212) = v48;
  v49 = [v186 objectForKey:v28];
  BYTE4(v208) = [v49 unsignedCharValue];

  v50 = [v186 objectForKey:v30];
  BYTE5(v208) = [v50 unsignedCharValue];

  v51 = [v186 objectForKey:v32];
  BYTE6(v208) = [v51 unsignedCharValue];

  [v182 getUUIDBytes:&v206];
  v180 = [v18 objectForKey:IDSGlobalLinkAttributeRelaySessionIDKey];
  if (v180)
  {
    v52 = [[NSUUID alloc] initWithUUIDString:v180];
    [v52 getUUIDBytes:&v207];
  }

  v53 = [v18 objectForKey:IDSGlobalLinkAttributeRelayServerDegradedKey];
  BYTE7(v208) = [v53 BOOLValue];

  v54 = IDSGlobalLinkAttributeLinkFlagsKey;
  v55 = [v18 objectForKey:IDSGlobalLinkAttributeLinkFlagsKey];
  WORD4(v208) = [v55 unsignedShortValue];

  v56 = [v186 objectForKey:v54];
  WORD5(v208) = [v56 unsignedShortValue];

  v57 = IDSGlobalLinkAttributeDataSoMaskKey;
  v58 = [v18 objectForKey:IDSGlobalLinkAttributeDataSoMaskKey];
  HIDWORD(v208) = [v58 unsignedIntValue];

  v59 = [v186 objectForKey:v57];
  LODWORD(v209) = [v59 unsignedIntValue];

  v60 = [v18 objectForKey:IDSGlobalLinkAttributeIsVirtualLinkKey];
  BYTE12(v209) = [v60 BOOLValue];

  v61 = [v18 objectForKey:IDSGlobalLinkAttributeDelegatedLinkIDKey];
  HIBYTE(v210) = [v61 charValue];

  v62 = [v18 objectForKey:IDSGlobalLinkAttributeLocalRelayLinkIDKey];
  WORD4(v209) = [v62 unsignedShortValue];

  v63 = [v18 objectForKey:IDSGlobalLinkAttributeRemoteRelayLinkIDKey];
  WORD5(v209) = [v63 unsignedShortValue];

  v64 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeLinkChannelNumberKey];
  WORD2(v209) = [v64 unsignedShortValue];

  v65 = [v18 objectForKey:IDSGlobalLinkAttributeInterfaceNameKey];
  v66 = v65;
  [v65 UTF8String];

  __strlcpy_chk();
  *&buf[64] = v209;
  *&buf[80] = v210;
  *&buf[96] = v211;
  *&buf[112] = v212;
  *buf = v205;
  *&buf[16] = v206;
  *&buf[32] = v207;
  *&buf[48] = v208;
  v178 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeConnectionsKey];
  v67 = JWEncodeDictionary();
  v68 = [v67 length];

  if ((v68 & 0xFFF8) > 0xF87uLL)
  {
    v71 = &buf[116];
  }

  else
  {
    *&buf[116] = bswap32(v68) >> 16;
    if (v68)
    {
      v69 = JWEncodeDictionary();
      v70 = v69;
      [v69 bytes];
      __memcpy_chk();
    }

    v71 = &buf[v68 + 118];
  }

  v72 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeRelayProtocolStackKey];
  v73 = v72;
  v74 = @"(unknown)";
  if (v72)
  {
    v74 = v72;
  }

  v177 = v74;

  v75 = [(__CFString *)v177 dataUsingEncoding:4];
  v76 = [v75 length];

  v77 = v76;
  v78 = (v204 - v71);
  if (v204 - v71 >= v76 + 2)
  {
    *v71 = bswap32(v76) >> 16;
    v79 = (v71 + 2);
    if (v76)
    {
      v80 = [(__CFString *)v177 dataUsingEncoding:4];
      v81 = v80;
      memcpy(v79, [v80 bytes], v77);
    }

    v71 = &v79[v77];
    v78 = (v204 - v71);
  }

  v176 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeQRExperiments];
  v82 = JWEncodeDictionary();
  v83 = [v82 length];

  v84 = v83;
  if (v78 >= v83 + 2)
  {
    *v71 = bswap32(v83) >> 16;
    v85 = (v71 + 2);
    if (v83)
    {
      v86 = JWEncodeDictionary();
      v87 = v86;
      memcpy(v85, [v86 bytes], v84);
    }

    v71 = &v85[v84];
  }

  v88 = IDSGlobalLinkAttributeIDSFeatureFlagsKey;
  v181 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeIDSFeatureFlagsKey];
  v201 = v88;
  v89 = v181;
  v90 = v181;
  if (!v181)
  {
    v90 = +[NSNull null];
    v89 = 0;
  }

  v91 = v89 == 0;
  v202 = v90;
  v92 = [NSDictionary dictionaryWithObjects:&v202 forKeys:&v201 count:1];
  v93 = JWEncodeDictionary();
  v94 = [v93 length];

  if (v91)
  {
  }

  v95 = v94;
  v96 = (v204 - v71);
  if (v204 - v71 >= v94 + 2)
  {
    *v71 = bswap32(v94) >> 16;
    v97 = (v71 + 2);
    if (v94)
    {
      v199 = v88;
      v98 = v181;
      v99 = v181;
      if (!v181)
      {
        v99 = +[NSNull null];
        v98 = 0;
      }

      v100 = v98 == 0;
      v200 = v99;
      v101 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v199 count:1];
      v102 = JWEncodeDictionary();
      v103 = v102;
      memcpy(v97, [v102 bytes], v95);

      if (v100)
      {
      }
    }

    v71 = &v97[v95];
    v96 = (v204 - v71);
  }

  v104 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeLinkEngineIDKey];
  v179 = [v104 dataUsingEncoding:4];
  v105 = [v179 length];
  v106 = v105;
  if (v96 >= v105 + 2)
  {
    *v71 = bswap32(v105) >> 16;
    v107 = (v71 + 2);
    if (v105)
    {
      v108 = v179;
      memcpy(v107, [v179 bytes], v106);
    }

    v71 = &v107[v106];
  }

  if (BYTE2(v208) - 2 <= 2)
  {
    v109 = [v18 objectForKey:IDSQuickRelayServerProviderKey];
    *v71 = [v109 unsignedCharValue];

    v110 = [v18 objectForKey:IDSGlobalLinkAttributeRelaySessionTokenKey];
    v111 = [v110 length];
    v112 = v111;
    v113 = (v204 - (v71 + 1));
    if (v113 >= v111 + 2)
    {
      *(v71 + 1) = bswap32(v111) >> 16;
      v114 = v71 + 3;
      if (v111)
      {
        v115 = v110;
        memcpy(v71 + 3, [v110 bytes], v112);
      }

      v71 = &v114[v112];
      v113 = (v204 - &v114[v112]);
    }

    else
    {
      ++v71;
    }

    v116 = [v18 objectForKey:IDSGlobalLinkAttributeRelaySessionKeyKey];
    v117 = [v116 length];
    v118 = v117;
    if (v113 >= v117 + 2)
    {
      *v71 = bswap32(v117) >> 16;
      v119 = (v71 + 2);
      if (v117)
      {
        v120 = v116;
        memcpy(v119, [v116 bytes], v118);
      }

      v71 = &v119[v118];
      v113 = (v204 - v71);
    }

    v121 = IDSGlobalLinkAttributeHBHEncryptionKey;
    v122 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeHBHEncryptionKey];
    v123 = [v122 length];

    if (v113 >= v123 + 2)
    {
      *v71 = bswap32(v123) >> 16;
      v124 = (v71 + 2);
      if (v123)
      {
        v125 = [v18 objectForKeyedSubscript:v121];
        v126 = v125;
        memcpy(v124, [v125 bytes], v123);
      }

      v71 = &v124[v123];
      v113 = (v204 - v71);
    }

    v127 = IDSGlobalLinkAttributeHBHDecryptionKey;
    v128 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeHBHDecryptionKey];
    v129 = [v128 length];

    if (v113 >= v129 + 2)
    {
      *v71 = bswap32(v129) >> 16;
      v130 = (v71 + 2);
      if (v129)
      {
        v131 = [v18 objectForKeyedSubscript:v127];
        v132 = v131;
        memcpy(v130, [v131 bytes], v129);
      }

      v71 = &v130[v129];
    }
  }

  v133 = v71 - buf;
  if ((v71 - buf) <= 0)
  {
    v142 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
    {
      *v192 = 136315394;
      *&v192[4] = "[IDSDSession link:didConnectUnderlyingLink:linkUUID:localAttributes:remoteAttributes:]";
      *&v192[12] = 1024;
      *&v192[14] = v71 - buf;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEBUG, "%s incorrect attribute length: %d", v192, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    IDSByteBufferRelease();
  }

  else
  {
    IDSByteBufferWriteField();
    [v185 writeToClientChannel:*(v185 + 72) packetBuffer:0 metaData:? metadataSize:?];
    IDSByteBufferRelease();
    v134 = [v18 objectForKeyedSubscript:IDSGlobalLinkAttributeLocalAddressKey];
    v135 = [v186 objectForKeyedSubscript:IDSGlobalLinkAttributeRemoteAddressKey];
    v136 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      *v192 = 67109634;
      *&v192[4] = v183;
      *&v192[8] = 2112;
      *&v192[10] = v134;
      *&v192[18] = 2112;
      *&v192[20] = v135;
      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "didConnectUnderlyingLink, linkid:%d, localAddress:%@, remoteAddress:%@", v192, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v167 = v134;
      v169 = v135;
      v165 = v183;
      _IDSLogV();
    }

    if (v134 && v135)
    {
      v137 = [IMPair pairWithFirst:v134 second:v135];
      v138 = *(v185 + 704);
      if (!v138)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v140 = *(v185 + 704);
        *(v185 + 704) = Mutable;

        v138 = *(v185 + 704);
      }

      v169 = [NSNumber numberWithChar:v183, v165, v167, v169];
      [v138 setObject:v137 forKey:v169];
    }

    v195 = v209;
    v196 = v210;
    v197 = v211;
    v198 = v212;
    *v192 = v205;
    *&v192[16] = v206;
    v193 = v207;
    v194 = v208;
    [v185 _buildCellularNetworkInfoSessionEvent:{v192, v165, v167}];
  }

  if (v133 > 0)
  {
LABEL_94:
    v143 = *(v185 + 632);
    *(v185 + 632) = v143 + 1;
    if (!v143)
    {
      sharedState14 = [v185 sharedState];
      uniqueID2 = [sharedState14 uniqueID];
      v146 = [uniqueID2 copy];

      v147 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003B1230;
      block[3] = &unk_100BD6E40;
      block[4] = v185;
      v188 = v146;
      v148 = v146;
      v149 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(v147, v149);

      sharedState15 = [v185 sharedState];
      [sharedState15 clearAllTimers];
    }
  }
}

- (void)link:(id)link didDisconnectUnderlyingLinkID:(char)d linkUUID:(id)iD reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  dCopy = d;
  linkCopy = link;
  iDCopy = iD;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = dCopy;
    *&buf[28] = 2112;
    *&buf[30] = iDCopy;
    *&buf[38] = 1024;
    v47 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didDisconnectUnderlyingLinkID:%d linkUUID:%@, reason: %d", buf, 0x2Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v37 = iDCopy;
    v38 = reasonCopy;
    v35 = linkCopy;
    v36 = dCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v12 = [(IDSDSession *)self sharedState:selfCopy];
  uniqueID = [v12 uniqueID];
  v40 = [uniqueID componentsSeparatedByString:@"-"];

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"state", &off_100C3BD40);
  v15 = -[NSString substringFromIndex:](self->_serviceIdentifier, "substringFromIndex:", [@"com.apple.private.alloy." length]);
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"serviceName", v15);
  }

  v16 = [v40 objectAtIndexedSubscript:0];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"sessionID", v16);
  }

  IDSPowerLogDictionary();
  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState useQRDirectly])
  {
    goto LABEL_15;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 1)
  {
LABEL_14:

LABEL_15:
LABEL_16:
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v20;
    *&buf[16] = v20;
    IDSByteBufferInitForWrite();
    v45[0] = 0xAAAAAAAAAAAAAAAALL;
    v45[1] = 0xAAAAAAAAAAAAAAAALL;
    v43 = dCopy;
    v44 = reasonCopy;
    [iDCopy getUUIDBytes:v45];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_17;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  if ([sharedState3 clientType] == 5)
  {

    goto LABEL_14;
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  v32 = [sharedState4 clientType] == 6;

  if (v32)
  {
    goto LABEL_16;
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_LinkDisconnected", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_17:
  v21 = self->_connectedLinkCount - 1;
  self->_connectedLinkCount = v21;
  if (!v21)
  {
    sharedState5 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState5 uniqueID];
    v24 = [uniqueID2 copy];

    v25 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003B185C;
    block[3] = &unk_100BD6E40;
    block[4] = self;
    v42 = v24;
    v26 = v24;
    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v25, v27);

    sharedState6 = [(IDSDSession *)self sharedState];
    if ([sharedState6 state] <= 6)
    {
      sharedState7 = [(IDSDSession *)self sharedState];
      isInUPlusOneMode = [sharedState7 isInUPlusOneMode];

      if (isInUPlusOneMode)
      {
LABEL_22:

        goto LABEL_23;
      }

      sharedState6 = [(IDSDSession *)self sharedState];
      [sharedState6 setReConnectTimer];
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)link:(id)link didReceiveReliableUnicastServerMaterial:(id)material
{
  linkCopy = link;
  materialCopy = material;
  v8 = materialCopy;
  if (self->_reliableUnicastRegistrationCompletionBlock)
  {
    v9 = [materialCopy mutableCopy];
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    [v9 setValue:uniqueID forKey:IDSSessionUniqueIDKey];

    (*(self->_reliableUnicastRegistrationCompletionBlock + 2))();
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = linkCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveReliableUnicastServerMaterial:%@, Registration Completion block is nil!", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (id)getLinkIDToLocalRemoteEndpointPairDictionary
{
  linkIDToLocalRemoteEndpointPair = self->_linkIDToLocalRemoteEndpointPair;
  if (!linkIDToLocalRemoteEndpointPair)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = self->_linkIDToLocalRemoteEndpointPair;
    self->_linkIDToLocalRemoteEndpointPair = Mutable;

    linkIDToLocalRemoteEndpointPair = self->_linkIDToLocalRemoteEndpointPair;
  }

  v6 = [(NSMutableDictionary *)linkIDToLocalRemoteEndpointPair copy];

  return v6;
}

- (void)link:(id)link didReceiveChildConnections:(id)connections forLinkID:(char)d
{
  dCopy = d;
  linkCopy = link;
  connectionsCopy = connections;
  v37 = dCopy;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = connectionsCopy;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveChildConnections:%@ forLinkID:%d", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = connectionsCopy;
    v34 = dCopy;
    selfCopy = self;
    v32 = linkCopy;
    _IDSLogV();
  }

  v11 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v11 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v14;
    *&buf[16] = v14;
    IDSByteBufferInitForWrite();
    v15 = [NSMutableData dataWithBytes:&v37 length:1];
    v16 = JWEncodeDictionary();
    [v15 appendData:v16];

    v17 = v15;
    [v15 bytes];
    [v15 length];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();

    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v19 = [sharedState3 clientType] == 6;

  if (v19)
  {
    goto LABEL_12;
  }

  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sharedState4 = [(IDSDSession *)self sharedState];
    if ([sharedState4 useQRDirectly])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    sharedState5 = [(IDSDSession *)self sharedState];
    clientType = [sharedState5 clientType];
    if (clientType == 1)
    {
      v25 = 0;
      v26 = @"YES";
    }

    else
    {
      sharedState6 = [(IDSDSession *)self sharedState];
      v26 = @"YES";
      if ([sharedState6 clientType] == 5)
      {
        v25 = 0;
      }

      else
      {
        sharedState7 = [(IDSDSession *)self sharedState];
        if ([sharedState7 clientType] != 6)
        {
          v26 = @"NO";
        }

        v25 = 1;
      }
    }

    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    *&buf[24] = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No need to send kClientChannelMetadataType_ChildConnections, <%@> useQR: %@, isFaceTimeCall: %@", buf, 0x20u);
    if (v25)
    {
    }

    if (clientType != 1)
    {
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    sharedState8 = [(IDSDSession *)self sharedState];
    [sharedState8 useQRDirectly];
    sharedState9 = [(IDSDSession *)self sharedState];
    if ([sharedState9 clientType] == 1)
    {
      _IDSLogV();
    }

    else
    {
      sharedState10 = [(IDSDSession *)self sharedState];
      if ([sharedState10 clientType] == 5)
      {
        _IDSLogV();
      }

      else
      {
        sharedState11 = [(IDSDSession *)self sharedState];
        [sharedState11 clientType];
        _IDSLogV();
      }
    }
  }

LABEL_13:
}

- (void)link:(id)link didWiFiNWPathFlagsChanged:(unsigned __int16)changed
{
  changedCopy = changed;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = changedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didWiFiNWPathFlagsChanged:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = linkCopy;
    v17 = changedCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v8 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v13 = [sharedState3 clientType] == 6;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_nwPathWiFiFlagsChanged", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_13:
}

- (void)link:(id)link didCellularNWPathFlagsChanged:(unsigned __int16)changed
{
  changedCopy = changed;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = changedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didCellularNWPathFlagsChanged:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = linkCopy;
    v17 = changedCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v8 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v13 = [sharedState3 clientType] == 6;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_nwPathCellularFlagsChanged", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_13:
}

- (void)link:(id)link didRATChange:(unsigned __int8)change
{
  changeCopy = change;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = changeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didRATChange:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = linkCopy;
    v17 = changeCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v8 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v13 = [sharedState3 clientType] == 6;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_RATChanged", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_13:
}

- (void)link:(id)link didCellularMTUChange:(unsigned __int16)change
{
  changeCopy = change;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = changeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didCellularMTUChange:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = linkCopy;
    v17 = changeCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v8 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v13 = [sharedState3 clientType] == 6;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_CellularMTUChanged", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_13:
}

- (void)link:(id)link didSoMaskChange:(unsigned int)change
{
  v4 = *&change;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didSoMaskChange:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = linkCopy;
    v17 = v4;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if ([v8 useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    goto LABEL_13;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  v13 = [sharedState3 clientType] == 6;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_SoMaskChanged", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_13:
}

- (void)link:(id)link didGetLinkProbingStatus:(id)status
{
  v4 = __chkstk_darwin(self);
  v6 = v5;
  v57 = v4;
  v52 = v7;
  v58 = v6;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v81 = v57;
    *&v81[8] = 2112;
    v82 = v52;
    v83 = 2112;
    v84 = v58;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didGetLinkProbingStatus:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v47 = v52;
    v49 = v58;
    v45 = v57;
    _IDSLogV();
  }

  sharedState = [v57 sharedState];
  if ([sharedState useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState2 = [v57 sharedState];
  if ([sharedState2 clientType] == 1)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  sharedState3 = [v57 sharedState];
  if ([sharedState3 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState4 = [v57 sharedState];
  v43 = [sharedState4 clientType] == 6;

  if (!v43)
  {
    v44 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v81 = v57;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_GetLinkStatusKey", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_72;
  }

LABEL_12:
  v53 = [v58 objectForKeyedSubscript:IDSDataChannelProbingLinkIDsKey];
  v56 = [v53 count];
  if (v56)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v53;
    v66 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v66)
    {
      v67 = 0;
      v12 = 0;
      key = IDSDataChannelTimeStampKey;
      v62 = IDSDataChannelNumberReorderedPacketsKey;
      v60 = IDSDataChannelNumberResponseKey;
      v61 = IDSDataChannelNumberRequestsKey;
      v59 = IDSDataChannelProbingRequestOffsetAndRTTKey;
      v54 = *v72;
      v13 = *v72;
      while (1)
      {
        if (v13 != v54)
        {
          v14 = v12;
          objc_enumerationMutation(obj);
          v12 = v14;
        }

        v65 = v12;
        v15 = *(*(&v71 + 1) + 8 * v12);
        bzero(buf, 0x1000uLL);
        v16 = [v58 objectForKeyedSubscript:v15];
        buf[3] = v56;
        v68 = v67 + 1;
        v81[0] = v67 + 1;
        v81[1] = [v15 charValue];
        if (v16 != 0 && key != 0)
        {
          Value = CFDictionaryGetValue(v16, key);
        }

        else
        {
          Value = 0;
        }

        *&v81[2] = bswap32([Value unsignedIntValue]);
        if (v16 != 0 && v62 != 0)
        {
          v18 = CFDictionaryGetValue(v16, v62);
        }

        else
        {
          v18 = 0;
        }

        *&v81[6] = __rev16([v18 unsignedShortValue]);
        if (v16 != 0 && v61 != 0)
        {
          v19 = CFDictionaryGetValue(v16, v61);
        }

        else
        {
          v19 = 0;
        }

        *&v81[8] = __rev16([v19 unsignedShortValue]);
        if (v16 != 0 && v60 != 0)
        {
          v20 = CFDictionaryGetValue(v16, v60);
        }

        else
        {
          v20 = 0;
        }

        LOWORD(v82) = __rev16([v20 unsignedShortValue]);
        if (v16 != 0 && v59 != 0)
        {
          v21 = CFDictionaryGetValue(v16, v59);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        v23 = [v22 count];
        WORD1(v82) = bswap32(v23) >> 16;
        v24 = v23;
        v64 = v23;
        if (v23)
        {
          v25 = 0;
          v26 = 0;
          v27 = 4 * v23;
          while (1)
          {
            v28 = [v22 objectAtIndexedSubscript:v26];
            v29 = [v28 objectAtIndexedSubscript:0];
            unsignedShortValue = [v29 unsignedShortValue];

            *(&v82 + v25 + 4) = __rev16(unsignedShortValue);
            if (v25 == 4076)
            {
              break;
            }

            v31 = [v22 objectAtIndexedSubscript:v26];
            v32 = [v31 objectAtIndexedSubscript:1];
            unsignedShortValue2 = [v32 unsignedShortValue];

            *(&v82 + v25 + 6) = __rev16(unsignedShortValue2);
            ++v26;
            v25 += 4;
            if (v27 == v25)
            {
              v34 = &v82 + v25 + 4;
              goto LABEL_47;
            }
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10091A1B0(&v69, v70);
          }

          v35 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 138412546;
            *v76 = v15;
            *&v76[8] = 1024;
            *v77 = 1019;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "didGetLinkProbingStatus: linkID: %@, rtt overflow, i: %d", v75, 0x12u);
          }

          v34 = v85;
          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v46 = v15;
            v48 = 1019;
            _IDSLogV();
          }

          v24 = 1019;
        }

        else
        {
          LOWORD(v34) = &v82 + 4;
        }

        if (v24 != v64)
        {

          goto LABEL_64;
        }

LABEL_47:
        buf[0] = 60;
        v36 = (v34 - buf);
        *&buf[1] = bswap32(v36 - 3) >> 16;
        v37 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 67109890;
          *v76 = v68;
          *&v76[4] = 1024;
          *&v76[6] = v56;
          *v77 = 2112;
          *&v77[2] = v15;
          v78 = 1024;
          v79 = v36 - 3;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "currentLinkCount: %u/%u, linkID: %@, size: %u", v75, 0x1Eu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v50 = v15;
          v51 = (v36 - 3);
          v46 = v68;
          v48 = v56;
          _IDSLogV();
        }

        [v57 writeToClientChannel:v57[9] packetBuffer:0 metaData:buf metadataSize:{v36, v46, v48, v50, v51}];

        v12 = v65 + 1;
        if (v65 + 1 >= v66)
        {
          v66 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
          if (!v66)
          {
            v64 = 0;
            ++v67;
            goto LABEL_64;
          }

          v12 = 0;
        }

        v13 = *v72;
        ++v67;
      }
    }

    v67 = 0;
    v64 = 0;
LABEL_64:

    if (v56 != v67)
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v81 = v67;
        *&v81[4] = 1024;
        *&v81[6] = v56;
        LOWORD(v82) = 1024;
        *(&v82 + 2) = v64;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "processedLinks: %u/%u, lastCount: %u", buf, 0x14u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v48 = v56;
        v50 = v64;
        v46 = v67;
        _IDSLogV();
      }

      v40 = [NSProcessInfo processInfo:v46];
      processName = [v40 processName];
      IMLogSimulateCrashForProcess();
    }
  }

  else
  {
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "didGetLinkProbingStatus: No valid linkIDs", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

LABEL_72:
}

- (void)link:(id)link didDefaultUnderlyingLinkChangeSucceeded:(BOOL)succeeded currentDefaultLinkID:(char)d
{
  dCopy = d;
  succeededCopy = succeeded;
  linkCopy = link;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    *buf = 138413058;
    *&buf[4] = self;
    if (succeededCopy)
    {
      v10 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = v10;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didDefaultUnderlyingLinkChangeSucceeded:%@ currentDefaultLinkID:%d", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (succeededCopy)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState useQRDirectly])
    {
LABEL_14:

LABEL_15:
      v19 = 0xAAAAAAAAAAAAAAAALL;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v14;
      *&buf[16] = v14;
      IDSByteBufferInitForWrite();
      IDSByteBufferWriteField();
      [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
      IDSByteBufferRelease();
      goto LABEL_16;
    }

    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] == 1)
    {
LABEL_13:

      goto LABEL_14;
    }

    sharedState3 = [(IDSDSession *)self sharedState];
    if ([sharedState3 clientType] == 5)
    {

      goto LABEL_13;
    }

    sharedState4 = [(IDSDSession *)self sharedState];
    v16 = [sharedState4 clientType] == 6;

    if (v16)
    {
      goto LABEL_15;
    }

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_DefaultLinkID", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

LABEL_16:
}

- (void)link:(id)link didAddQREvent:(id)event
{
  linkCopy = link;
  eventCopy = event;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = linkCopy;
    v21 = 2112;
    v22 = eventCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didAddQREvent:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = linkCopy;
    v16 = eventCopy;
    selfCopy2 = self;
    _IDSLogV();
  }

  v9 = [(IDSDSession *)self sharedState:selfCopy2];
  if (([v9 useQRDirectly] & 1) == 0)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState clientType] != 1)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      if ([sharedState2 clientType] != 5)
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        v13 = [sharedState3 clientType] == 6;

        if (!v13)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  [(IDSDSession *)self addQREventForRTCReport:eventCopy];
LABEL_13:
}

- (void)link:(id)link reportNoSessionState:(id)state
{
  linkCopy = link;
  stateCopy = state;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    v42 = 2112;
    v43 = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ reportNoSessionState:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v35 = linkCopy;
    v36 = stateCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v9 = [NSMutableDictionary dictionary:selfCopy];
  v10 = [NSNumber numberWithUnsignedInt:55];
  if (v10)
  {
    CFDictionarySetValue(v9, kIDSQRAllocateKey_ErrorCode, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919DE4();
  }

  memset(buf, 170, 16);
  v11 = [NSUUID alloc];
  v12 = kIDSQRAllocateKey_RequestID;
  v13 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_RequestID];
  v14 = [v11 initWithUUIDString:v13];
  [v14 getUUIDBytes:buf];

  v15 = [NSData dataWithBytes:buf length:16];
  if (v15)
  {
    CFDictionarySetValue(v9, v12, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v16 = kIDSQRAllocateKey_RelayAddress;
  v17 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_RelayAddress];
  if (v17)
  {
    CFDictionarySetValue(v9, v16, v17);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v18 = kIDSQRAllocateKey_RelayPort;
  v19 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_RelayPort];
  if (v19)
  {
    CFDictionarySetValue(v9, v18, v19);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v20 = kIDSQRAllocateKey_RelayAddressIPv6;
  v21 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_RelayAddressIPv6];
  if (v21)
  {
    CFDictionarySetValue(v9, v20, v21);
  }

  v22 = kIDSQRAllocateKey_AppID;
  v23 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_AppID];
  if (v23)
  {
    CFDictionarySetValue(v9, v22, v23);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v24 = +[IMDeviceSupport sharedInstance];
  userAgentString = [v24 userAgentString];

  v26 = userAgentString;
  if (v26)
  {
    CFDictionarySetValue(v9, kIDSQRAllocateKey_UserAgent, v26);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919EE8();
  }

  v27 = kIDSQRAllocateKey_ReportingDataBlob;
  v28 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_ReportingDataBlob];
  if (v28)
  {
    CFDictionarySetValue(v9, v27, v28);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v29 = kIDSQRAllocateKey_AllocateType;
  v30 = [stateCopy objectForKeyedSubscript:kIDSQRAllocateKey_AllocateType];
  if (v30)
  {
    CFDictionarySetValue(v9, v29, v30);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100919E6C();
  }

  v31 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003B442C;
  block[3] = &unk_100BDA088;
  v40 = 55;
  block[4] = self;
  v38 = v26;
  v39 = v9;
  v32 = v9;
  v33 = v26;
  dispatch_async(v31, block);
}

- (void)link:(id)link didReceiveParticipantUpdate:(id)update status:(unsigned __int16)status
{
  statusCopy = status;
  linkCopy = link;
  updateCopy = update;
  v9 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy4 = self;
    v84 = 2112;
    v85 = linkCopy;
    v86 = 2112;
    *v87 = updateCopy;
    *&v87[8] = 1024;
    *&v87[10] = statusCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveParticipantUpdate:%@, status:%u", buf, 0x26u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        v29 = [sharedState4 clientType] == 6;

        if (!v29)
        {
          goto LABEL_55;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  if (updateCopy)
  {
    v13 = [updateCopy objectForKey:IDSStunAttributeSessionStateCounterKey];
    unsignedIntValue = [v13 unsignedIntValue];

    v15 = [updateCopy objectForKey:IDSStunAttributeSessionStateTypeKey];
    unsignedShortValue = [v15 unsignedShortValue];

    v17 = [updateCopy objectForKey:IDSStunAttributeEncParticipantIDsKey];
    v18 = [updateCopy objectForKey:IDSStunAttributeStunTruncatedKey];
    v19 = v18 != 0;

    v20 = [updateCopy objectForKey:IDSStunMessageTypeKey];
    unsignedShortValue2 = [v20 unsignedShortValue];

    if (unsignedShortValue2 == 5)
    {
      if (unsignedIntValue && unsignedIntValue > self->_currentSessionStateCounter)
      {
        self->_currentSessionStateCounter = unsignedIntValue;
        v22 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003B50F4;
        block[3] = &unk_100BDA0B0;
        block[4] = self;
        v17 = v17;
        v77 = v17;
        v78 = unsignedShortValue;
        v79 = v19;
        v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(v22, v23);
      }
    }

    else if (unsignedShortValue2 - 2 > 2)
    {
      if (unsignedShortValue2 == 6)
      {
        v26 = im_primary_queue();
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1003B5798;
        v49[3] = &unk_100BD9A58;
        v49[4] = self;
        v50 = unsignedShortValue;
        v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v49);
        dispatch_async(v26, v27);
      }

      else
      {
        v31 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10091A1F4();
        }
      }
    }

    else
    {
      if ((unsignedShortValue2 == 3 || unsignedShortValue2 == 4 && (statusCopy & 0xFFFFFFFD) == 1) && unsignedIntValue && unsignedIntValue > self->_currentSessionStateCounter)
      {
        self->_currentSessionStateCounter = unsignedIntValue;
      }

      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x2020000000;
      v75 = -1431655766;
      if (unsignedShortValue == 3)
      {
        v24 = im_primary_queue();
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1003B5200;
        v68[3] = &unk_100BDA0D8;
        v71 = unsignedShortValue2;
        v72 = statusCopy;
        v68[4] = self;
        v70 = v74;
        v69 = v17;
        v73 = v19;
        v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v68);
        dispatch_async(v24, v25);
      }

      else if (unsignedShortValue > 2)
      {
        if (unsignedShortValue == 4)
        {
          v32 = im_primary_queue();
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_1003B54F8;
          v55[3] = &unk_100BDA0D8;
          v55[4] = self;
          v57 = v74;
          v58 = unsignedShortValue2;
          v59 = statusCopy;
          v56 = v17;
          v60 = v19;
          sub_1003859AC(v32, QOS_CLASS_USER_INTERACTIVE, v55);
        }

        else if (unsignedShortValue - 7 > 1)
        {
          v45 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            selfCopy4 = self;
            v84 = 2112;
            v85 = linkCopy;
            v86 = 1024;
            *v87 = unsignedShortValue;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveParticipantUpdate: IDSQRSessionSTUNMessageTypeErrorResponse, operationFlag: %u, not supported", buf, 0x1Cu);
          }
        }

        else
        {
          v33 = unsignedShortValue != 7;
          if (statusCopy)
          {
            v80 = NSDebugDescriptionErrorKey;
            v81 = @"participantUpgrade message error";
            v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            v35 = [NSError errorWithDomain:@"participantUpgrade" code:statusCopy userInfo:v34];

            self->_isLightweightParticipant = unsignedShortValue != 7;
            v36 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              isLightweightParticipant = self->_isLightweightParticipant;
              *buf = 138413058;
              if (isLightweightParticipant)
              {
                v38 = @"YES";
              }

              else
              {
                v38 = @"NO";
              }

              selfCopy4 = self;
              v84 = 2112;
              v85 = linkCopy;
              v86 = 1024;
              *v87 = unsignedShortValue;
              *&v87[4] = 2112;
              *&v87[6] = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveParticipantUpdate: operationFlag: %u has issue, change the _isLightweightParticipant to %@", buf, 0x26u);
            }

            v39 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              sharedState5 = [(IDSDSession *)self sharedState];
              groupID = [sharedState5 groupID];
              *buf = 138412546;
              selfCopy4 = self;
              v84 = 2112;
              v85 = groupID;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "<%@> didReceiveParticipantUpdate: reset MKM status for: %@", buf, 0x16u);
            }

            v42 = +[IDSGroupEncryptionController sharedInstance];
            sharedState6 = [(IDSDSession *)self sharedState];
            groupID2 = [sharedState6 groupID];
            [v42 resetMKMLocalSentStatus:groupID2];

            if (self->_isLightweightParticipant)
            {
              [(IDSDSession *)self unregisterClientChannel];
            }

            else
            {
              [(IDSDSession *)self registerClientChannel];
            }
          }

          else
          {
            v35 = 0;
          }

          v46 = im_primary_queue();
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_1003B5658;
          v51[3] = &unk_100BDA128;
          v51[4] = self;
          v54 = v33;
          v52 = updateCopy;
          v53 = v35;
          v47 = v35;
          sub_1003859AC(v46, QOS_CLASS_USER_INTERACTIVE, v51);
        }
      }

      else
      {
        v30 = im_primary_queue();
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1003B535C;
        v61[3] = &unk_100BDA100;
        v64 = unsignedShortValue2;
        v65 = statusCopy;
        v61[4] = self;
        v63 = v74;
        v66 = unsignedShortValue;
        v62 = v17;
        v67 = v19;
        sub_1003859AC(v30, QOS_CLASS_USER_INTERACTIVE, v61);
      }

      _Block_object_dispose(v74, 8);
    }
  }

  else
  {
    v17 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10091A278();
    }
  }

LABEL_55:
}

- (void)link:(id)link didReceiveSessionStateCounter:(unsigned int)counter
{
  linkCopy = link;
  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentSessionStateCounter = self->_currentSessionStateCounter;
    *buf = 138413058;
    selfCopy = self;
    v19 = 2112;
    v20 = linkCopy;
    v21 = 1024;
    counterCopy = counter;
    v23 = 1024;
    v24 = currentSessionStateCounter;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveSessionStateCounter:%u, _currentSessionStateCounter: %u", buf, 0x22u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  if (self->_currentSessionStateCounter < counter)
  {
    v12 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003B5AB4;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v12, v13);
  }

LABEL_11:
}

- (void)link:(id)link didReceivePluginRegistration:(unint64_t)registration pluginName:(id)name
{
  linkCopy = link;
  nameCopy = name;
  v10 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v30 = 2112;
    v31 = linkCopy;
    v32 = 2048;
    registrationCopy = registration;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ plugin didReceivePluginRegistration: %llu", buf, 0x20u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  participantID = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantID];
  unsignedLongLongValue = [participantID unsignedLongLongValue];

  v26[0] = IDSGroupSessionParticipantIdentifierKey;
  v16 = [NSNumber numberWithUnsignedLongLong:registration];
  v27[0] = v16;
  v26[1] = IDSGroupSessionLocalParticipantIdentifierKey;
  v17 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
  v26[2] = IDSGroupSessionPluginNameKey;
  v27[1] = v17;
  v27[2] = nameCopy;
  v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

  v19 = im_primary_queue();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1003B5E80;
  v24[3] = &unk_100BD6E40;
  v24[4] = self;
  v25 = v18;
  v20 = v18;
  v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v24);
  dispatch_async(v19, v21);

LABEL_10:
}

- (void)link:(id)link didReceivePluginUnregistration:(unint64_t)unregistration pluginName:(id)name
{
  linkCopy = link;
  nameCopy = name;
  v10 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v27 = 2112;
    v28 = linkCopy;
    v29 = 2048;
    unregistrationCopy = unregistration;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ plugin didReceivePluginUnregistration: %llu", buf, 0x20u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v23[0] = IDSGroupSessionParticipantIdentifierKey;
  v14 = [NSNumber numberWithUnsignedLongLong:unregistration];
  v23[1] = IDSGroupSessionPluginNameKey;
  v24[0] = v14;
  v24[1] = nameCopy;
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  v16 = im_primary_queue();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003B6208;
  v21[3] = &unk_100BD6E40;
  v21[4] = self;
  v22 = v15;
  v17 = v15;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v21);
  dispatch_async(v16, v18);

LABEL_10:
}

- (void)link:(id)link didReceiveRequestToPurgeRegistration:(id)registration
{
  linkCopy = link;
  registrationCopy = registration;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = linkCopy;
    v16 = 2112;
    v17 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ plugin didReceiveRequestToPurgeRegistration:%@", buf, 0x20u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003B6450;
  v10[3] = &unk_100BDA150;
  v10[4] = self;
  v11 = linkCopy;
  v9 = linkCopy;
  [registrationCopy enumerateKeysAndObjectsUsingBlock:v10];
}

- (void)link:(id)link didReceivePluginDisconnect:(id)disconnect
{
  linkCopy = link;
  disconnectCopy = disconnect;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = linkCopy;
    v14 = 2112;
    v15 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ plugin didReceivePluginDisconnect:%@", &v10, 0x20u);
  }

  multiplexerTransport = self->_multiplexerTransport;
  if (multiplexerTransport)
  {
    [(IDSMultiplexerGroupSessionTransport *)multiplexerTransport purgeQUICConnectionsForParticipants:disconnectCopy];
  }
}

- (id)_createOneWayParticipantDictionaryFromMappedParticipantsDict:(id)dict
{
  dictCopy = dict;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003B6678;
  v7[3] = &unk_100BDA178;
  v8 = objc_alloc_init(NSMutableDictionary);
  v4 = v8;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (id)_breakDictionaryIntoMultipleChunks:(id)chunks chunkSize:(int)size
{
  chunksCopy = chunks;
  allKeys = [chunksCopy allKeys];
  v6 = [allKeys count];
  v23 = objc_alloc_init(NSMutableArray);
  if (v6)
  {
    v7 = 0;
    sizeCopy = size;
    do
    {
      v8 = v7;
      if (v6 >= sizeCopy)
      {
        v9 = sizeCopy;
      }

      else
      {
        v9 = v6;
      }

      v10 = [allKeys subarrayWithRange:{v7, v9}];
      v11 = objc_alloc_init(NSMutableDictionary);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = [chunksCopy objectForKeyedSubscript:v17];
            [v11 setObject:v18 forKey:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      v19 = [v11 copy];
      [v23 addObject:v19];

      v6 -= [v12 count];
      v7 = [v12 count] + v8;
    }

    while (v6);
  }

  v20 = [v23 copy];

  return v20;
}

- (void)_sendParticipantMappingUpdateToClient:(id)client forLinkID:(char)d shouldReplace:(BOOL)replace
{
  v6 = [NSKeyedArchiver archivedDataWithRootObject:client requiringSecureCoding:1 error:0];
  IDSByteBufferInitForWrite();
  IDSByteBufferWriteField();
  [v6 bytes];
  [v6 length];
  IDSByteBufferWriteField();
  [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
  IDSByteBufferRelease();
}

- (void)link:(id)link didReceiveMappedParticipantsDict:(id)dict forLinkID:(char)d
{
  dCopy = d;
  linkCopy = link;
  dictCopy = dict;
  v10 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v25 = 2112;
    v26 = linkCopy;
    v27 = 2112;
    v28 = dictCopy;
    v29 = 1024;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveMappedParticipantsDict:%@ for linkID:%d ", buf, 0x26u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v14 = [(IDSDSession *)self _createOneWayParticipantDictionaryFromMappedParticipantsDict:dictCopy];
  if ([v14 count] > 0x1D)
  {
    v15 = [(IDSDSession *)self _breakDictionaryIntoMultipleChunks:v14 chunkSize:30];
    v16 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [dictCopy count];
      v18 = [v15 count];
      *buf = 134218240;
      selfCopy = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didReceiveMappedParticipantsDict: breaking %lu element dict into %lu chunks.", buf, 0x16u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003B6CA8;
    v21[3] = &unk_100BDA1A0;
    v21[4] = self;
    v22 = dCopy;
    [v15 enumerateObjectsUsingBlock:v21];
  }

  else
  {
    [(IDSDSession *)self _sendParticipantMappingUpdateToClient:v14 forLinkID:dCopy shouldReplace:1];
  }

LABEL_15:
}

- (void)_sendPMTUChangeToClient:(unsigned __int16)client forLinkID:(char)d
{
  if (d < 0)
  {
    v5 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10091A2E8();
    }
  }

  else
  {
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
  }
}

- (void)link:(id)link pathMTUDidChange:(unsigned __int16)change forLinkID:(char)d
{
  dCopy = d;
  changeCopy = change;
  linkCopy = link;
  v9 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = linkCopy;
    v19 = 1024;
    v20 = changeCopy;
    v21 = 1024;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ pathMTUDidChange:%d for linkID:%d ", &v15, 0x22u);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  [(IDSDSession *)self _sendPMTUChangeToClient:changeCopy forLinkID:dCopy];
LABEL_10:
}

- (void)didReceiveBlockedIndicationForLink:(id)link reason:(unsigned int)reason
{
  linkCopy = link;
  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = linkCopy;
    v21 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> didReceiveBlockedIndicationForLink:%@ reason: %u", buf, 0x1Cu);
  }

  sharedState = [(IDSDSession *)self sharedState];
  if (([sharedState useQRDirectly] & 1) == 0)
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    if ([sharedState2 clientType] != 1)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      if ([sharedState3 clientType] != 5)
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        clientType = [sharedState4 clientType];

        if (clientType != 6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v11 = im_primary_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003B7138;
  v15[3] = &unk_100BD89B0;
  v15[4] = self;
  reasonCopy2 = reason;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v15);
  dispatch_async(v11, v12);

LABEL_10:
}

- (void)link:(id)link didReceiveEncryptedDataBlobs:(id)blobs
{
  linkCopy = link;
  blobsCopy = blobs;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = linkCopy;
    v18 = 2112;
    v19 = blobsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link: %@ didReceiveEncryptedDataBlobs: %@", buf, 0x20u);
  }

  v9 = im_primary_queue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003B72BC;
  v12[3] = &unk_100BD6E40;
  v12[4] = self;
  v13 = blobsCopy;
  v10 = blobsCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v12);
  dispatch_async(v9, v11);
}

- (void)link:(id)link didReceiveErrorIndicationWithCode:(unsigned int)code
{
  linkCopy = link;
  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    codeCopy = code;
    v14 = 2112;
    v15 = linkCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didReceiveErrorIndicationWithCode: %u for link: %@ <%@>", buf, 0x1Cu);
  }

  if (code == 2)
  {
    [(IDSGFTMetricsCollector *)self->_metricsCollector serverShortMKICacheMiss];
  }

  else
  {
    v8 = im_primary_queue();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003B7438;
    v10[3] = &unk_100BD89B0;
    v10[4] = self;
    codeCopy2 = code;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v10);
    dispatch_async(v8, v9);
  }
}

- (void)link:(id)link didReceiveEncryptionInformation:(id)information
{
  linkCopy = link;
  informationCopy = information;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isGeneratedLocally = [informationCopy isGeneratedLocally];
    v10 = @"NO";
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    if (isGeneratedLocally)
    {
      v10 = @"YES";
    }

    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = informationCopy;
    LOWORD(v39[0]) = 2112;
    *(v39 + 2) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveEncryptionInformation:%@, local: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    isGeneratedLocally2 = [informationCopy isGeneratedLocally];
    v12 = @"NO";
    if (isGeneratedLocally2)
    {
      v12 = @"YES";
    }

    v35 = informationCopy;
    v36 = v12;
    selfCopy = self;
    v34 = linkCopy;
    _IDSLogV();
  }

  v13 = [(IDSDSession *)self sharedState:selfCopy];
  if (([v13 useQRDirectly] & 1) == 0)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState clientType] != 1)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      if ([sharedState2 clientType] != 5)
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        v32 = [sharedState3 clientType] == 6;

        if (!v32)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  isGeneratedLocally3 = [informationCopy isGeneratedLocally];
  metricsCollector = self->_metricsCollector;
  keyIndex = [informationCopy keyIndex];
  [(IDSGFTMetricsCollector *)metricsCollector sendMKMToAVC:keyIndex isGeneratedLocally:isGeneratedLocally3];

  v37[0] = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = 0xAAAAAAAAAAAAAAAALL;
  keyIndex2 = [informationCopy keyIndex];
  [keyIndex2 getUUIDBytes:v37];

  v39[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v20;
  *&buf[16] = v20;
  IDSByteBufferInitForWrite();
  if (isGeneratedLocally3)
  {
    sharedState4 = [(IDSDSession *)self sharedState];
    groupID = [sharedState4 groupID];
    v23 = groupID == 0;

    if (!v23)
    {
      v24 = +[IDSGroupEncryptionController sharedInstance];
      sharedState5 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState5 groupID];
      [v24 encryptionSequenceNumberForGroupID:groupID2];

      IDSByteBufferWriteField();
    }
  }

  keyMaterial = [informationCopy keyMaterial];
  v28 = keyMaterial;
  [keyMaterial bytes];
  IDSByteBufferWriteField();

  keySalt = [informationCopy keySalt];
  v30 = keySalt;
  [keySalt bytes];
  IDSByteBufferWriteField();

  IDSByteBufferWriteField();
  IDSByteBufferWriteField();
  [informationCopy shortKeyIndexLength];
  IDSByteBufferWriteField();
  [informationCopy participantID];
  IDSByteBufferWriteField();
  [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
  IDSByteBufferRelease();
LABEL_20:
}

- (void)link:(id)link didReceiveMembershipChangedInformation:(unsigned __int8)information
{
  informationCopy = information;
  linkCopy = link;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 1024;
    *&buf[24] = informationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveMembershipChangedInformation:%u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = linkCopy;
    v16 = informationCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v8 = [(IDSDSession *)self sharedState:selfCopy];
  if (([v8 useQRDirectly] & 1) == 0)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState clientType] != 1)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      if ([sharedState2 clientType] != 5)
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        v13 = [sharedState3 clientType] == 6;

        if (!v13)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v11;
  *&buf[16] = v11;
  IDSByteBufferInitForWrite();
  IDSByteBufferWriteField();
  [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
  IDSByteBufferRelease();
LABEL_13:
}

- (void)link:(id)link didReceiveDebugDataForClient:(id)client dataType:(unsigned __int8)type
{
  linkCopy = link;
  clientCopy = client;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = clientCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveDebugDataForClient:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = linkCopy;
    v19 = clientCopy;
    selfCopy = self;
    _IDSLogV();
  }

  v10 = [(IDSDSession *)self sharedState:selfCopy];
  if (([v10 useQRDirectly] & 1) == 0)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState clientType] != 1)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      if ([sharedState2 clientType] != 5)
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        v16 = [sharedState3 clientType] == 6;

        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v13 = clientCopy;
  [clientCopy bytes];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v14;
  *&buf[16] = v14;
  IDSByteBufferInitForWrite();
  IDSByteBufferWriteField();
  [clientCopy length];
  IDSByteBufferWriteField();
  [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
  IDSByteBufferRelease();
LABEL_13:
}

- (void)terminateCallDueToIdleClientForLink:(id)link
{
  linkCopy = link;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = linkCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@> terminateCallDueToIdleClientForLink:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    v14 = linkCopy;
    _IDSLogV();
  }

  v6 = [(IDSDSession *)self sharedState:selfCopy2];
  if (([v6 useQRDirectly] & 1) == 0)
  {
    sharedState = [(IDSDSession *)self sharedState];
    if ([sharedState clientType] != 1)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      if ([sharedState2 clientType] != 5)
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        v12 = [sharedState3 clientType] == 6;

        if (!v12)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v9 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003B8088;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v9, v10);

LABEL_13:
}

- (void)_sendSessionInfoResponseErrorToClient:(unsigned int)client
{
  IDSByteBufferInitForWrite();
  IDSByteBufferWriteField();
  [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
  IDSByteBufferRelease();
}

- (void)_processParticipantInfo:(id)info type:(unint64_t)type
{
  infoCopy = info;
  selfCopy = self;
  if (self->_handOffOverQREnabled)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v32 = infoCopy;
    obj = [infoCopy allKeys];
    v30 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v30)
    {
      v29 = *v55;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v54 + 1) + 8 * i);
          v6 = [v32 objectForKeyedSubscript:?];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v34 = v6;
          v37 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v37)
          {
            v35 = *v51;
            while (2)
            {
              v7 = 0;
              do
              {
                if (*v51 != v35)
                {
                  v8 = v7;
                  objc_enumerationMutation(v34);
                  v7 = v8;
                }

                v38 = v7;
                v9 = *(*(&v50 + 1) + 8 * v7);
                v40 = [v9 subdataWithRange:{0, 8}];
                if ([v40 length] <= 7)
                {
                  v27 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_processParticipantInfo: invalid encryptedBlobLength!", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        _IDSLogV();
                      }
                    }
                  }

                  goto LABEL_25;
                }

                v10 = v40;
                v11 = *[v40 bytes];
                v12 = [v9 subdataWithRange:{8, v11}];
                v13 = [v9 subdataWithRange:{v11 + 8, objc_msgSend(v9, "length") - v11 - 8}];
                v14 = [[NSMutableData alloc] initWithData:v40];
                [v14 appendData:v12];
                v15 = [(IDSDSession *)selfCopy _getURIFromParticipantIDNumber:v39];
                sharedState = [(IDSDSession *)selfCopy sharedState];
                serviceName = [sharedState serviceName];
                v18 = [IDSURI URIWithPrefixedURI:v15 withServiceLoggingHint:serviceName];

                v19 = [(IDSDSession *)selfCopy _getPushTokenFromParticipantIDNumber:v39];
                v20 = +[IDSEncryptionController sharedInstance];
                getCallerCert = [(IDSDSession *)selfCopy getCallerCert];
                getFromService = [(IDSDSession *)selfCopy getFromService];
                fromURI = [(IDSDSession *)selfCopy fromURI];
                v42[0] = _NSConcreteStackBlock;
                v42[1] = 3221225472;
                v42[2] = sub_1003B8648;
                v42[3] = &unk_100BDA1F0;
                v43 = v13;
                v44 = v14;
                v45 = v12;
                v46 = selfCopy;
                v47 = v39;
                typeCopy = type;
                v24 = v12;
                v25 = v14;
                v26 = v13;
                LOBYTE(v28) = 0;
                [v20 publicKeyVerifySignedData:v26 matchesData:v25 forSignatureType:0 identity:getCallerCert forURI:v18 pushToken:v19 service:getFromService localURI:fromURI priority:300 completion:v42 avoidMainQueue:v28];

                v7 = v38 + 1;
              }

              while (v37 != (v38 + 1));
              v37 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v30);
    }

LABEL_25:

    infoCopy = v32;
  }
}

- (void)link:(id)link didReceiveSessionInfo:(id)info relayGroupID:(id)d relaySessionID:(id)iD status:(unsigned int)status
{
  v7 = *&status;
  linkCopy = link;
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  v96 = linkCopy;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *&buf[4] = linkCopy;
    *&buf[12] = 2112;
    *&buf[14] = infoCopy;
    *&buf[22] = 2112;
    *&buf[24] = dCopy;
    *&buf[32] = 2112;
    *&buf[34] = iDCopy;
    v110 = 1024;
    v111 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "link:%@ didReceiveSessionInfo:%@ relayGroupID:%@ relaySessionID:%@ status: %u", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v88 = *&iDCopy;
    v89 = v7;
    v85 = infoCopy;
    v86 = dCopy;
    v84 = linkCopy;
    _IDSLogV();
  }

  if (!v7)
  {
    v19 = [infoCopy objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoResponseOfflineRequestKey];
    bOOLValue = [v19 BOOLValue];

    v21 = [infoCopy objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoIndicationKey];
    bOOLValue2 = [v21 BOOLValue];

    v23 = IDSGlobalLinkOptionSessionInfoResponseStreamInfoKey;
    v24 = [infoCopy objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoResponseStreamInfoKey];
    v25 = kIDSQRAllocateKey_StreamInfoGenerationCounter;
    if (v24 && kIDSQRAllocateKey_StreamInfoGenerationCounter)
    {
      v26 = [infoCopy objectForKeyedSubscript:v23];
      unsignedIntValue = [CFDictionaryGetValue(v26 v25)];
    }

    else
    {
      unsignedIntValue = [0 unsignedIntValue];
    }

    v28 = [infoCopy objectForKey:IDSGlobalLinkOptionSessionInfoCommandFlagKey];
    unsignedIntValue2 = [v28 unsignedIntValue];

    v93 = [infoCopy objectForKey:IDSGlobalLinkOptionSessionInfoResponseLightweightParticipantsKey];
    v92 = [infoCopy objectForKey:IDSGlobalLinkOptionSessionInfoResponseJoinedParticipantInfoKey];
    [(IDSDSession *)self _processParticipantInfo:v92 type:1];
    v91 = [infoCopy objectForKey:IDSGlobalLinkOptionSessionInfoResponseUpdatedParticipantInfoKey];
    [(IDSDSession *)self _processParticipantInfo:v91 type:5];
    v90 = [infoCopy objectForKey:IDSGlobalLinkOptionSessionInfoResponseLeftParticipantInfoKey];
    [(IDSDSession *)self _processParticipantInfo:v90 type:2];
    if (!(bOOLValue & 1 | ((bOOLValue2 & 1) == 0)) && self->_currentGenerationCounter >= unsignedIntValue)
    {
      genCounterUpdatedByResponseTime = self->_genCounterUpdatedByResponseTime;
      if (genCounterUpdatedByResponseTime)
      {
        [(NSDate *)genCounterUpdatedByResponseTime timeIntervalSinceNow];
        v32 = -v31;
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          currentGenerationCounter = self->_currentGenerationCounter;
          *buf = 138413058;
          *&buf[4] = v96;
          *&buf[12] = 1024;
          *&buf[14] = unsignedIntValue;
          *&buf[18] = 1024;
          *&buf[20] = currentGenerationCounter;
          *&buf[24] = 2048;
          *&buf[26] = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "link:%@ didReceiveSessionInfo: Got outdated indication with generationCounter: %u, currentGenerationCounter: %u after %lf seconds", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v88 = v32;
          v85 = unsignedIntValue;
          v86 = self->_currentGenerationCounter;
          v84 = v96;
          _IDSLogV();
        }

        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        [(__CFDictionary *)Mutable setObject:&off_100C3BD70 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
        v36 = [NSNumber numberWithDouble:v32];
        [(__CFDictionary *)Mutable setObject:v36 forKeyedSubscript:IDSDSessionReportDurationKey];

        [(__CFDictionary *)Mutable setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
        [(IDSDSession *)self addQREventForRTCReport:Mutable];
      }
    }

    if ((bOOLValue & 1) == 0)
    {
      v37 = self->_currentGenerationCounter;
      if (v37 >= unsignedIntValue)
      {
        if (v37 != unsignedIntValue || (unsignedIntValue2 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v38 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = self->_currentGenerationCounter;
          *buf = 138412802;
          *&buf[4] = v96;
          *&buf[12] = 1024;
          *&buf[14] = v39;
          *&buf[18] = 1024;
          *&buf[20] = unsignedIntValue;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "link:%@ didReceiveSessionInfo: increment generation counter (%u -> %u)", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v85 = self->_currentGenerationCounter;
          v86 = unsignedIntValue;
          v84 = v96;
          _IDSLogV();
        }

        self->_currentGenerationCounter = unsignedIntValue;
        if (bOOLValue2)
        {
          v40 = 0;
        }

        else
        {
          v40 = objc_alloc_init(NSDate);
        }

        v43 = self->_genCounterUpdatedByResponseTime;
        self->_genCounterUpdatedByResponseTime = v40;
      }
    }

    v44 = [infoCopy objectForKeyedSubscript:{IDSGlobalLinkOptionSessionInfoResponseParticipantsKey, v84, v85, v86, *&v88}];
    if ([v44 count])
    {
      v45 = [(IDSDSession *)self _getPushTokensFromParticipantIDArray:v44 useNullPlaceholder:1];
      [(IDSDSession *)self getActiveParticipants:v44 pushTokenForParticipants:v45 isLightweightParticipant:0];
    }

    else
    {
      v46 = im_primary_queue();
      v106[0] = _NSConcreteStackBlock;
      v106[1] = 3221225472;
      v106[2] = sub_1003B9C30;
      v106[3] = &unk_100BD6ED0;
      v106[4] = self;
      v47 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v106);
      dispatch_async(v46, v47);
    }

    if ([v93 count])
    {
      v48 = [(IDSDSession *)self _getPushTokensFromParticipantIDArray:v93 useNullPlaceholder:1];
      [(IDSDSession *)self getActiveParticipants:v93 pushTokenForParticipants:v48 isLightweightParticipant:1];
    }

    else
    {
      v49 = im_primary_queue();
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_1003B9DB8;
      v105[3] = &unk_100BD6ED0;
      v105[4] = self;
      v50 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v105);
      dispatch_async(v49, v50);
    }

LABEL_52:
    v95 = [infoCopy objectForKeyedSubscript:{v23, v84, v85, v86}];
    if (!v95)
    {
LABEL_107:

      goto LABEL_108;
    }

    theDict = +[NSMutableDictionary dictionary];
    v51 = [v95 objectForKeyedSubscript:IDSGlobalLinkOptionLinkIDKey];
    if (v51)
    {
      CFDictionarySetValue(theDict, IDSDataChannelLinkIDKey, v51);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A324();
    }

    v52 = [v95 objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoLinkIDToQueryKey];
    if (v52)
    {
      CFDictionarySetValue(theDict, IDSDataChannelLinkIDToQueryKey, v52);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A3AC();
    }

    v53 = [v95 objectForKeyedSubscript:v25];
    if (v53)
    {
      CFDictionarySetValue(theDict, IDSDataChannelParticipantGenerationCounterKey, v53);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A434();
    }

    v54 = [v95 objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoPeerSubscribedStreams];
    if (v54)
    {
      CFDictionarySetValue(theDict, IDSDataChannelPeerSubscribedStreamsKey, v54);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A4BC();
    }

    v55 = [v95 objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoPeerPublishedStreams];
    v56 = +[NSMutableDictionary dictionary];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v57 = v55;
    v58 = [v57 countByEnumeratingWithState:&v101 objects:v108 count:16];
    if (v58)
    {
      v59 = *v102;
      v60 = IDSDataChannelNoStreamsKey;
      v61 = IDSDataChannelAllStreamsKey;
      do
      {
        for (i = 0; i != v58; i = i + 1)
        {
          if (*v102 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v101 + 1) + 8 * i);
          if ([v63 anyStream])
          {
            participantID = [v63 participantID];
            [v56 setObject:v61 forKeyedSubscript:participantID];
          }

          else
          {
            streamArray = [v63 streamArray];
            v66 = streamArray == 0;

            if (v66)
            {
              participantID = [v63 participantID];
              [v56 setObject:v60 forKeyedSubscript:participantID];
            }

            else
            {
              participantID = [v63 streamArray];
              participantID2 = [v63 participantID];
              [v56 setObject:participantID forKeyedSubscript:participantID2];
            }
          }
        }

        v58 = [v57 countByEnumeratingWithState:&v101 objects:v108 count:16];
      }

      while (v58);
    }

    v68 = v56;
    if (v68)
    {
      CFDictionarySetValue(theDict, IDSDataChannelPeerPublishedStreamsKey, v68);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A544();
    }

    v69 = [infoCopy objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoRequestBytesSentKey];
    if (v69)
    {
      CFDictionarySetValue(theDict, IDSDataChannelSessionInfoRequestBytesSentKey, v69);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A5CC();
    }

    v70 = [infoCopy objectForKeyedSubscript:IDSGlobalLinkOptionSessionInfoResponseBytesReceivedKey];
    if (v70)
    {
      CFDictionarySetValue(theDict, IDSDataChannelSessionInfoResponseBytesReceivedKey, v70);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A654();
    }

    v100 = 0;
    v71 = [NSKeyedArchiver archivedDataWithRootObject:theDict requiringSecureCoding:0 error:&v100];
    v72 = v100;
    if (v72)
    {
      v73 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        sharedState = [(IDSDSession *)self sharedState];
        groupID = [sharedState groupID];
        *buf = 138413058;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v96;
        *&buf[22] = 2112;
        *&buf[24] = groupID;
        *&buf[32] = 2112;
        *&buf[34] = v72;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "<%@> link:%@ didReceiveSessionInfo failed to encode streamInfo response for group %@ (error: %@)", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState2 groupID];
        _IDSLogV();
      }

      goto LABEL_106;
    }

    sharedState3 = [(IDSDSession *)self sharedState];
    if (([sharedState3 useQRDirectly] & 1) == 0)
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      if ([sharedState4 clientType] != 1)
      {
        sharedState5 = [(IDSDSession *)self sharedState];
        if ([sharedState5 clientType] != 5)
        {
          sharedState6 = [(IDSDSession *)self sharedState];
          v83 = [sharedState6 clientType] == 6;

          if (!v83)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }
      }
    }

LABEL_105:
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v80 = 0xAAAAAAAAAAAAAAAALL;
    *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v80;
    *&buf[16] = v80;
    IDSByteBufferInitForWrite();
    v81 = v71;
    [v71 bytes];
    [v71 length];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
LABEL_106:

    goto LABEL_107;
  }

  sharedState7 = [(IDSDSession *)self sharedState];
  if ([sharedState7 useQRDirectly])
  {
LABEL_12:

LABEL_13:
    [(IDSDSession *)self _sendSessionInfoResponseErrorToClient:v7, v84, v85, v86, *&v88, v89];
    goto LABEL_14;
  }

  sharedState8 = [(IDSDSession *)self sharedState];
  if ([sharedState8 clientType] == 1)
  {
LABEL_11:

    goto LABEL_12;
  }

  sharedState9 = [(IDSDSession *)self sharedState];
  if ([sharedState9 clientType] == 5)
  {

    goto LABEL_11;
  }

  sharedState10 = [(IDSDSession *)self sharedState];
  v42 = [sharedState10 clientType] == 6;

  if (v42)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v7 != 1)
  {
    v17 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003B9B18;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v17, v18);
  }

LABEL_108:
}

- (void)link:(id)link didFinishConvergenceForRelaySessionID:(id)d
{
  linkCopy = link;
  dCopy = d;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = linkCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> link: %@ didFinishConvergenceForRelaySessionID: %@.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  self->_currentGenerationCounter = 0;
  genCounterUpdatedByResponseTime = self->_genCounterUpdatedByResponseTime;
  self->_genCounterUpdatedByResponseTime = 0;

  v10 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100C3BC20, IDSGlobalLinkOptionSessionInfoRequestTypeKey, &off_100C3BD88, IDSGlobalLinkOptionSessionInfoCommandFlagKey, 0];
  [(IDSDSession *)self requestSessionInfoWithOptions:v10];
}

- (void)link:(id)link didReceiveSessionStats:(id)stats relayGroupID:(id)d relaySessionID:(id)iD success:(BOOL)success
{
  successCopy = success;
  linkCopy = link;
  statsCopy = stats;
  dCopy = d;
  iDCopy = iD;
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138413570;
    *&buf[4] = self;
    if (successCopy)
    {
      v17 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = linkCopy;
    *&buf[22] = 2112;
    *&buf[24] = dCopy;
    *v40 = 2112;
    *&v40[2] = iDCopy;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = statsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@> link: %@ didReceiveSessionStats for group: %@ session: %@ success: %@ %@.", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (successCopy)
  {
    v18 = +[NSMutableDictionary dictionary];
    v19 = [statsCopy objectForKeyedSubscript:IDSGlobalLinkOptionLinkIDKey];
    if (v19)
    {
      CFDictionarySetValue(v18, IDSDataChannelLinkIDKey, v19);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A324();
    }

    v20 = [statsCopy objectForKeyedSubscript:IDSGlobalLinkOptionStatsIdentifierKey];
    if (v20)
    {
      CFDictionarySetValue(v18, IDSDataChannelStatIdentifierKey, v20);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A6DC();
    }

    v21 = [statsCopy objectForKeyedSubscript:IDSGlobalLinkOptionStatsRTTKey];
    if (v21)
    {
      CFDictionarySetValue(v18, IDSDataChannelStatRTTKey, v21);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A764();
    }

    v38 = 0;
    v37 = [NSKeyedArchiver archivedDataWithRootObject:v18 requiringSecureCoding:0 error:&v38];
    v22 = v38;
    if (v22)
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        sharedState = [(IDSDSession *)self sharedState];
        groupID = [sharedState groupID];
        *buf = 138413058;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = linkCopy;
        *&buf[22] = 2112;
        *&buf[24] = groupID;
        *v40 = 2112;
        *&v40[2] = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<%@> link: %@ didReceiveSessionStats failed to encode stats response for group %@ (error: %@)", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState2 = [(IDSDSession *)self sharedState];
          groupID2 = [sharedState2 groupID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v27 = [(IDSDSession *)self sharedState:self];
            groupID3 = [v27 groupID];
            _IDSLogV();
          }
        }
      }

      goto LABEL_36;
    }

    sharedState3 = [(IDSDSession *)self sharedState];
    if (([sharedState3 useQRDirectly] & 1) == 0)
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      if ([sharedState4 clientType] != 1)
      {
        sharedState5 = [(IDSDSession *)self sharedState];
        if ([sharedState5 clientType] != 5)
        {
          sharedState6 = [(IDSDSession *)self sharedState];
          v35 = [sharedState6 clientType] == 6;

          if (!v35)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

LABEL_35:
    *v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v30;
    *&buf[16] = v30;
    IDSByteBufferInitForWrite();
    v31 = v37;
    [v37 bytes];
    [v37 length];
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
LABEL_36:
  }
}

- (BOOL)destinationsContainFromURI:(id)i
{
  iCopy = i;
  tokenFreeURI = [iCopy tokenFreeURI];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  sharedState = [(IDSDSession *)self sharedState];
  destinations = [sharedState destinations];
  allObjects = [destinations allObjects];

  v9 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 isEqualToURI:iCopy] & 1) != 0 || (objc_msgSend(v12, "isEqualToURI:", tokenFreeURI))
        {
          v17 = 1;
          goto LABEL_17;
        }
      }

      v9 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    destinations2 = [sharedState2 destinations];
    *buf = 138412546;
    v26 = iCopy;
    v27 = 2112;
    v28 = destinations2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "destinationsContainFromURI: %@ is not in the destinations %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport() && (-[IDSDSession sharedState](self, "sharedState"), v16 = objc_claimAutoreleasedReturnValue(), [v16 destinations], v19 = objc_claimAutoreleasedReturnValue(), _IDSLogTransport(), v19, v16, _IDSShouldLog()))
  {
    allObjects = [(IDSDSession *)self sharedState:iCopy];
    destinations3 = [allObjects destinations];
    _IDSLogV();

    v17 = 0;
LABEL_17:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)updateMembers:(id)members withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally lightweightStatusDict:(id)dict
{
  locallyCopy = locally;
  membersCopy = members;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  dictCopy = dict;
  selfCopy = self;
  sharedState = [(IDSDSession *)self sharedState];
  destinations = [sharedState destinations];

  sharedState2 = [(IDSDSession *)self sharedState];
  destinationsLightweightStatus = [sharedState2 destinationsLightweightStatus];

  v185[0] = _NSConcreteStackBlock;
  v185[1] = 3221225472;
  v185[2] = sub_1003BBED0;
  v185[3] = &unk_100BD7530;
  v185[4] = self;
  v13 = [membersCopy __imArrayByApplyingBlock:v185];
  __imSetFromArray = [v13 __imSetFromArray];
  sharedState3 = [(IDSDSession *)self sharedState];
  [sharedState3 setDestinations:__imSetFromArray];

  sharedState4 = [(IDSDSession *)self sharedState];
  [sharedState4 setDestinationsLightweightStatus:dictCopy];

  sharedState5 = [(IDSDSession *)self sharedState];
  destinations2 = [sharedState5 destinations];
  sharedState6 = [(IDSDSession *)self sharedState];
  destinationsLightweightStatus2 = [sharedState6 destinationsLightweightStatus];
  v146 = sub_1004A8764(destinations, destinationsLightweightStatus, destinations2, destinationsLightweightStatus2);

  sharedState7 = [(IDSDSession *)selfCopy sharedState];
  destinations3 = [sharedState7 destinations];
  v23 = [destinations isEqualToSet:destinations3];
  if (capabilitiesCopy)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ignored updateMembers since destinations have not been changed.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v157 = [destinations count];
    sharedState8 = [(IDSDSession *)selfCopy sharedState];
    destinations4 = [sharedState8 destinations];
    v150 = [destinations4 count];

    if (v157 > v150)
    {
      v149 = 0;
      v35 = 2;
    }

    else
    {
      sharedState9 = [(IDSDSession *)selfCopy sharedState];
      destinations5 = [sharedState9 destinations];
      v149 = [destinations5 mutableCopy];

      [(NSMutableDictionary *)v149 minusSet:destinations];
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v190 = v149;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "updateMembers: newly added destinations: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v125 = v149;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v125 = v149;
            _IDSLogV();
          }
        }
      }

      if (selfCopy->_supportUnauthenticatedUser)
      {
        if ([(IDSDSession *)selfCopy shouldAllocateForInvitee]&& locallyCopy)
        {
LABEL_31:
          accountController = [(IDSDSession *)selfCopy accountController];
          sharedState10 = [(IDSDSession *)selfCopy sharedState];
          accountID = [sharedState10 accountID];
          v39 = [accountController accountWithUniqueID:accountID];
          _registrationCert = [v39 _registrationCert];

          sharedState11 = [(IDSDSession *)selfCopy sharedState];
          theDict = [sharedState11 getQuickRelayAllocateOptions:&off_100C3BC80];

          sharedState12 = [(IDSDSession *)selfCopy sharedState];
          groupID = [sharedState12 groupID];

          if (groupID)
          {
            CFDictionarySetValue(theDict, kIDSQRAllocateKey_GroupID, groupID);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10091A7EC();
          }

          CFDictionarySetValue(theDict, kIDSQRAllocateKey_AllocateRequestForUnauthorizedUser, &__kCFBooleanTrue);
          qrAllocator = [(IDSDSession *)selfCopy qrAllocator];
          sharedState13 = [(IDSDSession *)selfCopy sharedState];
          destinations6 = [sharedState13 destinations];
          allObjects = [destinations6 allObjects];
          sharedState14 = [(IDSDSession *)selfCopy sharedState];
          uniqueID = [sharedState14 uniqueID];
          sharedState15 = [(IDSDSession *)selfCopy sharedState];
          fromURI = [sharedState15 fromURI];
          unprefixedURI = [fromURI unprefixedURI];
          _bestGuessURI = [unprefixedURI _bestGuessURI];
          accountController2 = [(IDSDSession *)selfCopy accountController];
          sharedState16 = [(IDSDSession *)selfCopy sharedState];
          accountID2 = [sharedState16 accountID];
          v48 = [accountController2 accountWithUniqueID:accountID2];
          service = [v48 service];
          identifier = [service identifier];
          v51 = [qrAllocator setupNewAllocation:allObjects sessionID:uniqueID fromIdentity:_registrationCert fromURI:_bestGuessURI fromService:identifier options:theDict connectReadyHandler:0];
        }

        else
        {
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          _registrationCert = v149;
          v32 = [(NSMutableDictionary *)_registrationCert countByEnumeratingWithState:&v181 objects:v195 count:16];
          if (v32)
          {
            v33 = *v182;
            while (2)
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v182 != v33)
                {
                  objc_enumerationMutation(_registrationCert);
                }

                if ([*(*(&v181 + 1) + 8 * i) isTemporaryURI])
                {

                  goto LABEL_31;
                }
              }

              v32 = [(NSMutableDictionary *)_registrationCert countByEnumeratingWithState:&v181 objects:v195 count:16];
              if (v32)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v35 = 1;
    }

    theDicta = v35;
    v52 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      sharedState17 = [(IDSDSession *)selfCopy sharedState];
      groupID2 = [sharedState17 groupID];
      sharedState18 = [(IDSDSession *)selfCopy sharedState];
      destinations7 = [sharedState18 destinations];
      v57 = destinations7;
      v58 = @"NO";
      *buf = 138412802;
      v190 = groupID2;
      v191 = 2112;
      if (locallyCopy)
      {
        v58 = @"YES";
      }

      v192 = destinations7;
      v193 = 2112;
      v194 = v58;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Updated destinations for group %@ to %@ (triggeredLocally %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState19 = [(IDSDSession *)selfCopy sharedState];
      groupID3 = [sharedState19 groupID];
      sharedState20 = [(IDSDSession *)selfCopy sharedState];
      destinations8 = [sharedState20 destinations];
      v63 = destinations8;
      v64 = locallyCopy ? @"YES" : @"NO";
      destinations9 = destinations8;
      v127 = v64;
      v125 = groupID3;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v65 = [(IDSDSession *)selfCopy sharedState:groupID3];
        groupID4 = [v65 groupID];
        sharedState21 = [(IDSDSession *)selfCopy sharedState];
        destinations9 = [sharedState21 destinations];
        v127 = v64;
        v125 = groupID4;
        _IDSLogV();
      }
    }

    if (dictCopy)
    {
      v68 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v190 = dictCopy;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Updated destinations have lightweight status values: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v125 = dictCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v125 = dictCopy;
            _IDSLogV();
          }
        }
      }
    }

    v69 = v157 <= v150;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [(__CFDictionary *)Mutable setObject:&off_100C3BDA0 forKeyedSubscript:IDSDSessionReportTransportTypeKey];
    v70 = [NSNumber numberWithUnsignedChar:theDicta];
    [(__CFDictionary *)Mutable setObject:v70 forKeyedSubscript:IDSDSessionReportMembershipChangeTypeKey];

    [(__CFDictionary *)Mutable setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    [(IDSDSession *)selfCopy addQREventForRTCReport:Mutable];
    v71 = selfCopy;
    if (selfCopy->_isLightweightParticipant && v69)
    {
      sharedState22 = [(IDSDSession *)selfCopy sharedState];
      destinations10 = [sharedState22 destinations];
      v74 = [destinations10 mutableCopy];

      [v74 minusSet:destinations];
      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v75 = v74;
      v76 = [v75 countByEnumeratingWithState:&v177 objects:v188 count:16];
      v77 = v75;
      if (v76)
      {
        v78 = *v178;
        while (2)
        {
          for (j = 0; j != v76; j = j + 1)
          {
            if (*v178 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v177 + 1) + 8 * j);
            v81 = [(IDSDSession *)selfCopy qrAllocator:v125];
            sharedState23 = [(IDSDSession *)selfCopy sharedState];
            groupID5 = [sharedState23 groupID];
            prefixedURI = [v80 prefixedURI];
            LODWORD(v80) = [v81 isURIAvailabeInAllocateResponse:groupID5 uri:prefixedURI];

            if (!v80)
            {

              v85 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Re-allocating due to new member", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }
              }

              accountController3 = [(IDSDSession *)selfCopy accountController];
              sharedState24 = [(IDSDSession *)selfCopy sharedState];
              accountID3 = [sharedState24 accountID];
              v89 = [accountController3 accountWithUniqueID:accountID3];
              _registrationCert2 = [v89 _registrationCert];

              sharedState25 = [(IDSDSession *)selfCopy sharedState];
              v158 = [sharedState25 getQuickRelayAllocateOptions:&off_100C3BC80];

              sharedState26 = [(IDSDSession *)selfCopy sharedState];
              groupID6 = [sharedState26 groupID];

              if (groupID6)
              {
                CFDictionarySetValue(v158, kIDSQRAllocateKey_GroupID, groupID6);
              }

              else
              {
                v93 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10091A7EC();
                }
              }

              v94 = [NSNumber numberWithBool:selfCopy->_isLightweightParticipant];
              if (v94)
              {
                CFDictionarySetValue(v158, kIDSQRAllocateKey_IsLightweightParticipant, v94);
              }

              qrAllocator2 = [(IDSDSession *)selfCopy qrAllocator];
              sharedState27 = [(IDSDSession *)selfCopy sharedState];
              destinations11 = [sharedState27 destinations];
              allObjects2 = [destinations11 allObjects];
              sharedState28 = [(IDSDSession *)selfCopy sharedState];
              uniqueID2 = [sharedState28 uniqueID];
              sharedState29 = [(IDSDSession *)selfCopy sharedState];
              fromURI2 = [sharedState29 fromURI];
              unprefixedURI2 = [fromURI2 unprefixedURI];
              _bestGuessURI2 = [unprefixedURI2 _bestGuessURI];
              accountController4 = [(IDSDSession *)selfCopy accountController];
              sharedState30 = [(IDSDSession *)selfCopy sharedState];
              accountID4 = [sharedState30 accountID];
              v101 = [accountController4 accountWithUniqueID:accountID4];
              service2 = [v101 service];
              identifier2 = [service2 identifier];
              v104 = [qrAllocator2 setupNewAllocation:allObjects2 sessionID:uniqueID2 fromIdentity:_registrationCert2 fromURI:_bestGuessURI2 fromService:identifier2 options:v158 connectReadyHandler:0];

              v77 = _registrationCert2;
              goto LABEL_80;
            }
          }

          v76 = [v75 countByEnumeratingWithState:&v177 objects:v188 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }

        v77 = v75;
      }

LABEL_80:

      v71 = selfCopy;
    }

    if (v149)
    {
      v105 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        pendingMaterialInfoByFromID = v71->_pendingMaterialInfoByFromID;
        *buf = 138412546;
        v190 = pendingMaterialInfoByFromID;
        v191 = 2112;
        v192 = v149;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Checking if we have material in %@ for new destinations %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v125 = selfCopy->_pendingMaterialInfoByFromID;
          destinations9 = v149;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v125 = selfCopy->_pendingMaterialInfoByFromID;
            destinations9 = v149;
            _IDSLogV();
          }
        }
      }

      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v107 = v149;
      v108 = [(NSMutableDictionary *)v107 countByEnumeratingWithState:&v173 objects:v187 count:16];
      if (v108)
      {
        v109 = *v174;
        do
        {
          for (k = 0; k != v108; k = k + 1)
          {
            if (*v174 != v109)
            {
              objc_enumerationMutation(v107);
            }

            v111 = *(*(&v173 + 1) + 8 * k);
            v126 = [(NSMutableDictionary *)selfCopy->_pendingMaterialInfoByFromID objectForKeyedSubscript:v111, v125, destinations9];
            if (v126)
            {
              v113 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v190 = v126;
                v191 = 2112;
                v192 = v111;
                _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Found %@ for %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v125 = v126;
                  destinations9 = v111;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v125 = v126;
                    destinations9 = v111;
                    _IDSLogV();
                  }
                }
              }

              [(NSMutableDictionary *)selfCopy->_pendingMaterialInfoByFromID setObject:0 forKeyedSubscript:v111, v125];
              v171 = 0u;
              v172 = 0u;
              v170 = 0u;
              v169 = 0u;
              v114 = v126;
              v115 = [(NSMutableDictionary *)v114 countByEnumeratingWithState:&v169 objects:v186 count:16];
              if (v115)
              {
                v116 = *v170;
                do
                {
                  for (m = 0; m != v115; m = m + 1)
                  {
                    if (*v170 != v116)
                    {
                      objc_enumerationMutation(v114);
                    }

                    (*(*(*(&v169 + 1) + 8 * m) + 16))();
                  }

                  v115 = [(NSMutableDictionary *)v114 countByEnumeratingWithState:&v169 objects:v186 count:16];
                }

                while (v115);
              }
            }
          }

          v108 = [(NSMutableDictionary *)v107 countByEnumeratingWithState:&v173 objects:v187 count:16];
        }

        while (v108);
      }

      v71 = selfCopy;
    }

    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_1003BBF5C;
    v162[3] = &unk_100BDA218;
    v166 = v146;
    v162[4] = v71;
    v167 = locallyCopy;
    v168 = theDicta;
    v118 = v149;
    v163 = v118;
    v164 = contextCopy;
    v165 = capabilitiesCopy;
    v119 = objc_retainBlock(v162);
    groupStatusNotificationController = [(IDSDSession *)selfCopy groupStatusNotificationController];
    queue = [groupStatusNotificationController queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003BC83C;
    block[3] = &unk_100BD9A30;
    block[4] = selfCopy;
    v122 = v119;
    v161 = v122;
    v123 = queue;
    v124 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v123, v124);
  }
}

- (void)manageDesignatedMembers:(id)members withType:(unsigned __int16)type
{
  membersCopy = members;
  v6 = [NSSet setWithArray:membersCopy];
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    groupID = [sharedState groupID];
    *buf = 138412546;
    v16 = groupID;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "manageDesignatedMembers for group %@ to %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState2 groupID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v11 = [(IDSDSession *)self sharedState:groupID2];
        groupID3 = [v11 groupID];
        _IDSLogV();
      }
    }
  }

  v12 = v6;
  IDSTransportThreadAddBlock();
}

- (void)removeParticipantIDs:(id)ds
{
  dsCopy = ds;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    groupID = [sharedState groupID];
    *buf = 138412546;
    v14 = groupID;
    v15 = 2112;
    v16 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removeParticipantIDs for group %@ to %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState2 groupID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v9 = [(IDSDSession *)self sharedState:groupID2];
        groupID3 = [v9 groupID];
        _IDSLogV();
      }
    }
  }

  v10 = dsCopy;
  IDSTransportThreadAddBlock();
}

- (void)updateParticipantData:(id)data withContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateParticipantData: new participantData: %@", buf, 0xCu);
  }

  v9 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003BD0D4;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v14 = dataCopy;
  v15 = contextCopy;
  v10 = contextCopy;
  v11 = dataCopy;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v9, v12);
}

- (void)updateParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateParticipantInfo: new participantInfo: %@", &v15, 0xCu);
  }

  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setParticipantInfo:infoCopy];
  participantInfo = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];

  if (participantInfo)
  {
    participantInfo2 = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];
    v8 = [(IDSDSession *)self formAndEncryptDataBlob:participantInfo2 type:12];

    os_unfair_lock_lock(&self->_lock);
    encryptedDataBlob = self->_encryptedDataBlob;
    self->_encryptedDataBlob = v8;

    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = +[IDSGroupEncryptionController sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  [v10 updateServerDesiredKeyMaterialsForGroup:groupID sessionID:uniqueID];
}

- (void)updateParticipantType:(unsigned __int16)type members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict timestamp:(double)timestamp identifier:(unint64_t)identifier
{
  typeCopy = type;
  membersCopy = members;
  contextCopy = context;
  dictCopy = dict;
  if (!locally)
  {
    sharedState = [(IDSDSession *)self sharedState];
    [sharedState setDestinationsLightweightStatus:dictCopy];

    sharedState2 = [(IDSDSession *)self sharedState];
    groupID = [sharedState2 groupID];

    if (groupID)
    {
      v30 = im_primary_queue();
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_1003BDA50;
      v62[3] = &unk_100BD8FC0;
      v62[4] = self;
      v63 = membersCopy;
      locallyCopy = locally;
      v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v62);
      dispatch_async(v30, v31);

      v32 = v63;
LABEL_14:

      goto LABEL_20;
    }

    v33 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10091A874();
    }

LABEL_19:

    goto LABEL_20;
  }

  if (typeCopy >= 2)
  {
    v33 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10091A8B0();
    }

    goto LABEL_19;
  }

  isLightweightParticipant = self->_isLightweightParticipant;
  v20 = +[IDSFoundationLog IDSDSession];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (isLightweightParticipant != (typeCopy ^ 1))
  {
    if (v21)
    {
      v34 = @"NO";
      *buf = 138413058;
      if (typeCopy)
      {
        v35 = @"NO";
      }

      else
      {
        v35 = @"YES";
      }

      selfCopy = v35;
      v67 = 2112;
      if (isLightweightParticipant)
      {
        v34 = @"YES";
      }

      *v68 = v34;
      *&v68[8] = 1024;
      *&v68[10] = typeCopy;
      v69 = 2112;
      v70 = dictCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "updateParticipantType: to: %@, wasLightweightParticipant: %@, type: %u, lightweightStatusDict: %@", buf, 0x26u);
    }

    v36 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState3 groupID];
      *buf = 138412546;
      selfCopy = self;
      v67 = 2112;
      *v68 = groupID2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "<%@> updateParticipantType: reset MKM status for %@", buf, 0x16u);
    }

    v39 = +[IDSGroupEncryptionController sharedInstance];
    sharedState4 = [(IDSDSession *)self sharedState];
    groupID3 = [sharedState4 groupID];
    [v39 resetMKMLocalSentStatus:groupID3];

    sharedState5 = [(IDSDSession *)self sharedState];
    groupID4 = [sharedState5 groupID];

    if (groupID4)
    {
      self->_isLightweightParticipant = typeCopy ^ 1;
      sharedState6 = [(IDSDSession *)self sharedState];
      [sharedState6 setDestinationsLightweightStatus:dictCopy];

      if (self->_isLightweightParticipant)
      {
        [(IDSDSession *)self unregisterClientChannel];
      }

      else
      {
        [(IDSDSession *)self registerClientChannel];
        [(IDSDSession *)self _sendConnectedLinkInfoToAVC];
      }

      v45 = im_primary_queue();
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1003BDB44;
      v58[3] = &unk_100BDA0B0;
      v58[4] = self;
      v59 = membersCopy;
      locallyCopy2 = locally;
      v60 = typeCopy;
      v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v58);
      dispatch_async(v45, v46);

      v49 = _NSConcreteStackBlock;
      v50 = 3221225472;
      v51 = sub_1003BDCDC;
      v52 = &unk_100BDA268;
      selfCopy2 = self;
      v54 = contextCopy;
      timestampCopy = timestamp;
      v57 = typeCopy;
      identifierCopy = identifier;
      IDSTransportThreadAddBlock();

      v32 = v59;
      goto LABEL_14;
    }

    v33 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10091A924();
    }

    goto LABEL_19;
  }

  if (v21)
  {
    v22 = @"NO";
    v23 = self->_isLightweightParticipant;
    *buf = 138413058;
    if (isLightweightParticipant)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    selfCopy = v24;
    v67 = 1024;
    if (v23)
    {
      v22 = @"YES";
    }

    *v68 = typeCopy;
    *&v68[4] = 2112;
    *&v68[6] = v22;
    v69 = 2112;
    v70 = dictCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "updateParticipantType: No need to change the type: wasLightweightParticipant: %@, type: %u, current: %@, lightweightStatusDict: %@", buf, 0x26u);
  }

  v25 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003BDDB0;
  block[3] = &unk_100BD9A58;
  block[4] = self;
  v48 = typeCopy;
  v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v25, v26);

LABEL_20:
}

- (void)updateParticipantType:(unsigned __int16)type members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict
{
  typeCopy = type;
  membersCopy = members;
  contextCopy = context;
  dictCopy = dict;
  if (!locally)
  {
    sharedState = [(IDSDSession *)self sharedState];
    [sharedState setDestinationsLightweightStatus:dictCopy];

    sharedState2 = [(IDSDSession *)self sharedState];
    groupID = [sharedState2 groupID];

    if (groupID)
    {
      v26 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003BE4B0;
      block[3] = &unk_100BD8FC0;
      block[4] = self;
      v56 = membersCopy;
      locallyCopy = locally;
      v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
      dispatch_async(v26, v27);

      v28 = v56;
LABEL_14:

      goto LABEL_20;
    }

    v29 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10091A874();
    }

LABEL_19:

    goto LABEL_20;
  }

  if (typeCopy >= 2)
  {
    v29 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10091A8B0();
    }

    goto LABEL_19;
  }

  isLightweightParticipant = self->_isLightweightParticipant;
  v16 = +[IDSFoundationLog IDSDSession];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (isLightweightParticipant != (typeCopy ^ 1))
  {
    if (v17)
    {
      v30 = @"NO";
      *buf = 138413058;
      if (typeCopy)
      {
        v31 = @"NO";
      }

      else
      {
        v31 = @"YES";
      }

      selfCopy = v31;
      v60 = 2112;
      if (isLightweightParticipant)
      {
        v30 = @"YES";
      }

      *v61 = v30;
      *&v61[8] = 1024;
      *&v61[10] = typeCopy;
      v62 = 2112;
      v63 = dictCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateParticipantType: to: %@, wasLightweightParticipant: %@, type: %u, lightweightStatusDict: %@", buf, 0x26u);
    }

    v32 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      groupID2 = [sharedState3 groupID];
      *buf = 138412546;
      selfCopy = self;
      v60 = 2112;
      *v61 = groupID2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "<%@> updateParticipantType: reset MKM status for %@", buf, 0x16u);
    }

    v35 = +[IDSGroupEncryptionController sharedInstance];
    sharedState4 = [(IDSDSession *)self sharedState];
    groupID3 = [sharedState4 groupID];
    [v35 resetMKMLocalSentStatus:groupID3];

    sharedState5 = [(IDSDSession *)self sharedState];
    groupID4 = [sharedState5 groupID];

    if (groupID4)
    {
      self->_isLightweightParticipant = typeCopy ^ 1;
      sharedState6 = [(IDSDSession *)self sharedState];
      [sharedState6 setDestinationsLightweightStatus:dictCopy];

      if (self->_isLightweightParticipant)
      {
        [(IDSDSession *)self unregisterClientChannel];
      }

      else
      {
        [(IDSDSession *)self registerClientChannel];
        [(IDSDSession *)self _sendConnectedLinkInfoToAVC];
      }

      v41 = im_primary_queue();
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1003BE5A4;
      v51[3] = &unk_100BDA0B0;
      v51[4] = self;
      v52 = membersCopy;
      locallyCopy2 = locally;
      v53 = typeCopy;
      v42 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v51);
      dispatch_async(v41, v42);

      v45 = _NSConcreteStackBlock;
      v46 = 3221225472;
      v47 = sub_1003BE73C;
      v48 = &unk_100BDA290;
      selfCopy2 = self;
      v50 = typeCopy;
      IDSTransportThreadAddBlock();
      v28 = v52;
      goto LABEL_14;
    }

    v29 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10091A924();
    }

    goto LABEL_19;
  }

  if (v17)
  {
    v18 = @"NO";
    v19 = self->_isLightweightParticipant;
    *buf = 138413058;
    if (isLightweightParticipant)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    selfCopy = v20;
    v60 = 1024;
    if (v19)
    {
      v18 = @"YES";
    }

    *v61 = typeCopy;
    *&v61[4] = 2112;
    *&v61[6] = v18;
    v62 = 2112;
    v63 = dictCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateParticipantType: No need to change the type: wasLightweightParticipant: %@, type: %u, current: %@, lightweightStatusDict: %@", buf, 0x26u);
  }

  v21 = im_primary_queue();
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1003BE7D8;
  v43[3] = &unk_100BD9A58;
  v43[4] = self;
  v44 = typeCopy;
  v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v43);
  dispatch_async(v21, v22);

LABEL_20:
}

- (void)setGroupStreamInfo:(id)info sessionInfo:(id)sessionInfo
{
  infoCopy = info;
  theDict = sessionInfo;
  maxConcurrentStreams = [infoCopy maxConcurrentStreams];
  if (maxConcurrentStreams)
  {
    CFDictionarySetValue(theDict, kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams, maxConcurrentStreams);
  }

  generationCounter = [infoCopy generationCounter];
  if (generationCounter)
  {
    CFDictionarySetValue(theDict, kIDSQRAllocateKey_StreamInfoGenerationCounter, generationCounter);
  }

  publishedStreams = [infoCopy publishedStreams];
  if (publishedStreams)
  {
    CFDictionarySetValue(theDict, kIDSQRAllocateKey_StreamInfoPublishedStreams, publishedStreams);
  }

  subscribedStreams = [infoCopy subscribedStreams];
  value = +[NSMutableArray array];
  v9 = IDSGroupSessionAllParticipantsKey;
  v10 = [subscribedStreams objectForKeyedSubscript:IDSGroupSessionAllParticipantsKey];

  if (!v10)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [subscribedStreams allKeys];
    v15 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = *v45;
    v17 = IDSGroupSessionAllStreamsKey;
    while (1)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = [subscribedStreams objectForKeyedSubscript:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [subscribedStreams objectForKeyedSubscript:v19];
          v22 = [v21 isEqualToString:v17];

          if (v22)
          {
            v23 = [IDSQRParticipantStreams streamWithParticipantID:v19 streamArray:0 anyParticipant:0 anyStream:1];
            [value addObject:v23];
            goto LABEL_21;
          }
        }

        else
        {
        }

        v24 = [subscribedStreams objectForKeyedSubscript:v19];
        v23 = [v24 mutableCopy];

        v25 = [IDSQRParticipantStreams streamWithParticipantID:v19 streamArray:v23 anyParticipant:0 anyStream:0];
        [value addObject:v25];

LABEL_21:
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (!v15)
      {
LABEL_23:

        v26 = value;
        goto LABEL_32;
      }
    }
  }

  v11 = [subscribedStreams objectForKeyedSubscript:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_25:
    v27 = [subscribedStreams objectForKeyedSubscript:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [subscribedStreams objectForKeyedSubscript:v9];
      v29 = [v28 isEqualToString:IDSGroupSessionNoStreamsKey];

      if (v29)
      {
        v14 = [IDSQRParticipantStreams streamWithParticipantID:0 streamArray:0 anyParticipant:1 anyStream:0];
        goto LABEL_28;
      }
    }

    else
    {
    }

    v31 = [subscribedStreams objectForKeyedSubscript:v9];
    v30 = [IDSQRParticipantStreams streamWithParticipantID:0 streamArray:v31 anyParticipant:1 anyStream:0];

    goto LABEL_31;
  }

  v12 = [subscribedStreams objectForKeyedSubscript:v9];
  v13 = [v12 isEqualToString:IDSGroupSessionAllStreamsKey];

  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = [IDSQRParticipantStreams streamWithParticipantID:0 streamArray:0 anyParticipant:1 anyStream:1];
LABEL_28:
  v30 = v14;
LABEL_31:
  v26 = value;
  [value addObject:v30];

LABEL_32:
  if (v26)
  {
    CFDictionarySetValue(theDict, kIDSQRAllocateKey_StreamInfoSubscribedStreams, v26);
  }

  v32 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(__CFDictionary *)theDict objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
    subscribedStreams2 = [infoCopy subscribedStreams];
    *buf = 138412802;
    v49 = v33;
    v50 = 2112;
    v51 = theDict;
    v52 = 2112;
    v53 = subscribedStreams2;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "setGroupStreamInfo: sessionInfo[kIDSQRAllocateKey_StreamInfoSubscribedStreams]:%@, sessionInfo:%@, streamInfo.subscribedStreams:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v35 = kIDSQRAllocateKey_StreamInfoSubscribedStreams;
      v36 = [(__CFDictionary *)theDict objectForKeyedSubscript:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
      subscribedStreams3 = [infoCopy subscribedStreams];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v37 = [(__CFDictionary *)theDict objectForKeyedSubscript:v35, v36, theDict, subscribedStreams3];
        subscribedStreams4 = [infoCopy subscribedStreams];
        _IDSLogV();
      }
    }
  }
}

- (id)_checkIfPushMessageSizeGreaterThanMaxLimit:(id)limit maxLimit:(unint64_t)maxLimit
{
  limitCopy = limit;
  v7 = [limitCopy length];
  if (v7 <= maxLimit)
  {
    v16 = 0;
  }

  else
  {
    v8 = v7;
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      groupID = [sharedState groupID];
      *buf = 134218242;
      maxLimitCopy = maxLimit;
      v24 = 2112;
      v25 = groupID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client data blob size is greater than push size limitation which is %ld and groupID: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState2 groupID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v13 = [(IDSDSession *)self sharedState:maxLimit];
          groupID3 = [v13 groupID];
          _IDSLogV();
        }
      }
    }

    maxLimit = [[NSString alloc] initWithFormat:@"Client data blob size %lu is greater than push size limitation %ld", v8, maxLimit];
    v20 = NSDebugDescriptionErrorKey;
    v21 = maxLimit;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [NSError errorWithDomain:@"joinGroupSessionError" code:-1000 userInfo:v15];
  }

  return v16;
}

- (id)_generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:(id)blob
{
  blobCopy = blob;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_idsContextTimeStamp = v5;
  v6 = [(IDSDSession *)self _generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:blobCopy timeStamp:?];

  return v6;
}

- (id)_generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:(id)blob timeStamp:(double)stamp
{
  blobCopy = blob;
  stampCopy = stamp;
  v23 = [[NSMutableData alloc] initWithBytes:&stampCopy length:8];
  if (blobCopy)
  {
    [v23 appendData:blobCopy];
  }

  v6 = [(IDSDSession *)self formAndEncryptDataBlob:v23 type:7];
  v7 = v6;
  if (v6)
  {
    v25 = [v6 length];
    v21 = [[NSMutableData alloc] initWithBytes:&v25 length:8];
    [v21 appendData:v7];
    v8 = +[IDSEncryptionController sharedInstance];
    accountController = [(IDSDSession *)self accountController];
    sharedState = [(IDSDSession *)self sharedState];
    accountID = [sharedState accountID];
    v12 = [accountController accountWithUniqueID:accountID];
    service = [v12 service];
    identifier = [service identifier];
    v24 = 0;
    v15 = [v8 publicKeySignData:v21 withSignatureType:0 service:identifier priority:300 error:&v24];
    v16 = v24;

    if (!v15 || v16)
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unable to sign the encrypted blob with error :%@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = [[NSMutableData alloc] initWithData:v21];
      [v17 appendData:v15];
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to encrypt the blob!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v17 = 0;
  }

  return v17;
}

- (void)joinWithOptions:(id)options messageContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  if (self->_joinStartTime == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_100918708();
    }

    self->_joinStartTime = *&qword_100CBD180 * mach_continuous_time();
  }

  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v182 = [uniqueID componentsSeparatedByString:@"-"];

  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(theDict, @"state", &off_100C3BD88);
  v8 = -[NSString substringFromIndex:](self->_serviceIdentifier, "substringFromIndex:", [@"com.apple.private.alloy." length]);
  if (v8)
  {
    CFDictionarySetValue(theDict, @"serviceName", v8);
  }

  v9 = [v182 objectAtIndexedSubscript:0];
  if (v9)
  {
    CFDictionarySetValue(theDict, @"sessionID", v9);
  }

  IDSPowerLogDictionary();
  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID2 = [sharedState2 uniqueID];
  sharedState3 = [(IDSDSession *)self sharedState];
  groupID = [sharedState3 groupID];
  v15 = [qrAllocator getSessionInfoFromDefaults:uniqueID2 groupID:groupID];
  v183 = [v15 mutableCopy];

  v16 = objc_alloc_init(IDSGroupStatusNotificationParameters);
  groupStatusNotificationParams = self->_groupStatusNotificationParams;
  self->_groupStatusNotificationParams = v16;

  v18 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionIsInitiatorKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setIsInitiator:v18];

  v19 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionJoinTypeKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setJoinType:v19];

  v20 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionParticipantDataKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setParticipantData:v20];

  v21 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionParticipantInfoKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setParticipantInfo:v21];

  v22 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionPublishedStreamsKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setPublishedStreams:v22];

  v23 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionSubscribedStreamsKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setSubscribedStreams:v23];

  v24 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionMaxConcurrentStreamsKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setMaxConcurrentStreams:v24];

  v25 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionGenerationCounterKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setGenerationCounter:v25];

  v26 = IDSGroupSessionClientContextDataKey;
  v27 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionClientContextDataKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setClientJoinContextData:v27];

  v28 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionCommandContextKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setCommandContext:v28];

  v29 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionMirageProtocolHandshakeBlobKey];
  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setParticipantMirageHandshakeBlob:v29];

  self->_groupSessionState = 0;
  v30 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionStartedAsUPlusOneKey];
  self->_startedAsUPlusOneSession = [v30 BOOLValue];

  commandContext = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams commandContext];
  callType = self->_callType;
  self->_callType = commandContext;

  v33 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionNewServerAllocationKey];
  bOOLValue = [v33 BOOLValue];

  v34 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    sharedState4 = [(IDSDSession *)self sharedState];
    uniqueID3 = [sharedState4 uniqueID];
    sharedState5 = [(IDSDSession *)self sharedState];
    fromURI = [sharedState5 fromURI];
    participantData = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantData];
    participantInfo = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantInfo];
    participantMirageHandshakeBlob = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams participantMirageHandshakeBlob];
    v42 = self->_callType;
    *buf = 138413570;
    *v201 = uniqueID3;
    *&v201[8] = 2112;
    *&v201[10] = fromURI;
    *&v201[18] = 2112;
    *&v201[20] = participantData;
    v202 = 2112;
    v203 = participantInfo;
    v204 = 2112;
    v205 = participantMirageHandshakeBlob;
    v206 = 2112;
    v207 = v42;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "joinWithOptions for %@: URI: %@, participantData: %@, participantInfo: %@, handshakeBlob: %@, callType: %@", buf, 0x3Eu);
  }

  localDidJoin = [(IDSGFTMetricsCollector *)self->_metricsCollector localDidJoin];
  [(IDSGFTMetricsCollector *)self->_metricsCollector useGecko];
  [(IDSDSession *)self updateRelevantEncryptedDataBlob];
  sharedState6 = [(IDSDSession *)self sharedState];
  [sharedState6 setUseQRDirectly:1];

  sharedState7 = [(IDSDSession *)self sharedState];
  [sharedState7 setState:5];

  v175 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionForceQRKey];
  v46 = IDSGroupSessionCallScreeningMode;
  v47 = [optionsCopy objectForKey:IDSGroupSessionCallScreeningMode];
  self->_disableP2PLinks = [v47 BOOLValue];

  v48 = [optionsCopy objectForKey:v46];
  self->_sessionIsNonUserParticipantInitiated = [v48 BOOLValue];

  if (self->_sessionIsNonUserParticipantInitiated)
  {
    v49 = &off_100C3BDB8;
  }

  else
  {
    v49 = &off_100C3BDD0;
  }

  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setQuickRelayUserType:v49];
  v50 = [optionsCopy objectForKey:IDSGroupSessionForceTCPFallbackOnWiFiKey];
  self->_forceTCPFallbackOnWiFi = [v50 BOOLValue];

  v51 = [optionsCopy objectForKey:IDSGroupSessionForceTCPFallbackOnCellKey];
  self->_forceTCPFallbackOnCell = [v51 BOOLValue];

  v52 = [optionsCopy objectForKey:IDSGlobalLinkOptionForceIPv6Key];
  self->_forceIPv6 = [v52 BOOLValue];

  if (self->_forceIPv6)
  {
    self->_preferredAddressFamily = 2;
  }

  v53 = IDSGlobalLinkOptionPluginNameKey;
  value = [optionsCopy objectForKey:IDSGlobalLinkOptionPluginNameKey];
  if (value)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, v53, value);
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionPluginOperationKey, &off_100C3BC98);
    v55 = IDSGlobalLinkOptionPluginRawPublicKeyKey;
    v56 = [optionsCopy objectForKey:IDSGlobalLinkOptionPluginRawPublicKeyKey];
    if (v56)
    {
      CFDictionarySetValue(Mutable, v55, v56);
    }

    v193 = _NSConcreteStackBlock;
    v194 = 3221225472;
    v195 = sub_1003C0FC0;
    v196 = &unk_100BD89D8;
    selfCopy = self;
    v198 = value;
    v199 = Mutable;
    v57 = Mutable;
    IDSTransportThreadAddBlock();
  }

  v191[0] = _NSConcreteStackBlock;
  v191[1] = 3221225472;
  v191[2] = sub_1003C1068;
  v191[3] = &unk_100BD6ED0;
  v174 = contextCopy;
  v192 = v174;
  v180 = objc_retainBlock(v191);
  accountController = [(IDSDSession *)self accountController];
  sharedState8 = [(IDSDSession *)self sharedState];
  accountID = [sharedState8 accountID];
  v61 = [accountController accountWithUniqueID:accountID];
  maxRemoteMessagingPayloadSize = [v61 maxRemoteMessagingPayloadSize];

  v181 = [optionsCopy objectForKeyedSubscript:v26];
  v185 = [(IDSDSession *)self _checkIfPushMessageSizeGreaterThanMaxLimit:v181 maxLimit:maxRemoteMessagingPayloadSize];
  if (v185)
  {
    (v180[2])();
    v177 = objc_alloc_init(IMMessageContext);
    [v177 setShouldBoost:1];
    v63 = +[IDSDaemon sharedInstance];
    sharedState9 = [(IDSDSession *)self sharedState];
    pushTopic = [sharedState9 pushTopic];
    v156 = [v63 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v177];

    v154 = [IDSGroupSessionParticipantUpdate alloc];
    v66 = [NSUUID alloc];
    sharedState10 = [(IDSDSession *)self sharedState];
    groupID2 = [sharedState10 groupID];
    v158 = [v66 initWithUUIDString:groupID2];
    isInitiator = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams isInitiator];
    bOOLValue2 = [isInitiator BOOLValue];
    accountController2 = [(IDSDSession *)self accountController];
    sharedState11 = [(IDSDSession *)self sharedState];
    accountID2 = [sharedState11 accountID];
    v160 = [accountController2 accountWithUniqueID:accountID2];
    primaryRegistration = [v160 primaryRegistration];
    pushToken = [primaryRegistration pushToken];
    sharedState12 = [(IDSDSession *)self sharedState];
    fromURI2 = [sharedState12 fromURI];
    prefixedURI = [fromURI2 prefixedURI];
    v72 = _IDSCopyIDForTokenWithURI();
    joinType = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams joinType];
    v74 = [joinType integerValue] == 1;
    v75 = +[NSDate date];
    LOBYTE(v146) = 0;
    v76 = [v154 initWithGroupUUID:v158 isInitiator:bOOLValue2 participantIdentifier:0 participantDestinationID:v72 participantUpdateType:1 participantUpdateSubtype:v74 fromServer:v146 serverDate:v75 participantData:0 clientContextData:0 members:0 participantIDs:0 relaySessionID:0];

    sharedState13 = [(IDSDSession *)self sharedState];
    uniqueID4 = [sharedState13 uniqueID];
    dictionaryRepresentation = [v76 dictionaryRepresentation];
    [v156 sessionDidJoinGroup:uniqueID4 participantUpdateDictionary:dictionaryRepresentation error:v185];

    goto LABEL_63;
  }

  v80 = +[IDSDSessionController sharedInstance];
  [v80 updateCriticalReliabilityState];

  self->_sharedSessionHasJoined = 1;
  IDSTransportThreadAddBlock();
  if (v183)
  {
    CFDictionarySetValue(v183, kIDSQRAllocateKey_AllocateType, &off_100C3BC80);
    sharedState14 = [(IDSDSession *)self sharedState];
    groupID3 = [sharedState14 groupID];

    if (groupID3)
    {
      CFDictionarySetValue(v183, kIDSQRAllocateKey_GroupID, groupID3);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091A960();
    }

    [(IDSDSession *)self setGroupStreamInfo:self->_groupStatusNotificationParams sessionInfo:v183];
    if (([v175 isEqualToIgnoringCase:@"yes"] & 1) != 0 || IMGetDomainBoolForKey())
    {
      v104 = IDSGroupSessionForceQRSession;
      if (v104)
      {
        CFDictionarySetValue(v183, kIDSQRAllocateKey_TestOptions, v104);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091A9E8();
      }
    }

    [(IDSDSession *)self connectQRServer:v183 withPreferredLocalInterface:0];
    v173 = IDSGroupSessionTimeBaseKey;
LABEL_50:
    v178 = +[IDSGroupEncryptionController sharedInstance];
    sharedState15 = [(IDSDSession *)self sharedState];
    destinations = [sharedState15 destinations];
    allObjects = [destinations allObjects];
    sharedState16 = [(IDSDSession *)self sharedState];
    groupID4 = [sharedState16 groupID];
    sharedState17 = [(IDSDSession *)self sharedState];
    uniqueID5 = [sharedState17 uniqueID];
    sharedState18 = [(IDSDSession *)self sharedState];
    destinationsLightweightStatus = [sharedState18 destinationsLightweightStatus];
    [v178 setMembers:allObjects forGroup:groupID4 sessionID:uniqueID5 lightweightStatusDict:destinationsLightweightStatus];

    v114 = [optionsCopy objectForKeyedSubscript:v173];
    if (!v114)
    {
      v114 = +[NSDate now];
    }

    v115 = GLUCreateSetUPlusOneEvent();
    if (v115)
    {
      [(IDSDSession *)self addQREventForRTCReport:v115];
    }

    (v180[2])();

    goto LABEL_63;
  }

  sharedState19 = [(IDSDSession *)self sharedState];
  groupID5 = [sharedState19 groupID];
  if (groupID5)
  {
    sharedState20 = [(IDSDSession *)self sharedState];
    destinations2 = [sharedState20 destinations];
    v87 = destinations2 == 0;

    if (!v87)
    {
      if (self->_qrReason)
      {
        qrAllocator2 = [(IDSDSession *)self qrAllocator];
        sharedState21 = [(IDSDSession *)self sharedState];
        groupID6 = [sharedState21 groupID];
        v91 = [qrAllocator2 invalidateLatestResponse:groupID6 qrReason:-[NSNumber intValue](self->_qrReason previousError:{"intValue"), -[NSNumber intValue](self->_qrError, "intValue")}];

        v92 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          qrReason = self->_qrReason;
          qrError = self->_qrError;
          *buf = 67109634;
          *v201 = v91;
          *&v201[4] = 2112;
          *&v201[6] = qrReason;
          *&v201[14] = 2112;
          *&v201[16] = qrError;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "invalidateLatestResponse status: %d, reason: %@, error: %@", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v147 = self->_qrReason;
            v150 = self->_qrError;
            v146 = v91;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v147 = self->_qrReason;
              v150 = self->_qrError;
              v146 = v91;
              _IDSLogV();
            }
          }
        }
      }

      if (self->_handOffOverQREnabled)
      {
        v95 = [(IDSDSession *)self _generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:0];
        v96 = v95;
        if (v95)
        {
          v190 = v95;
          IDSTransportThreadAddBlock();
        }
      }

      v97 = [(IDSDSession *)self accountController:v146];
      sharedState22 = [(IDSDSession *)self sharedState];
      accountID3 = [sharedState22 accountID];
      v100 = [v97 accountWithUniqueID:accountID3];
      _registrationCert = [v100 _registrationCert];

      sharedState23 = [(IDSDSession *)self sharedState];
      v171 = [sharedState23 getQuickRelayAllocateOptions:&off_100C3BC80];

      CFDictionarySetValue(v171, kIDSQRAllocateKey_AllocateType, &off_100C3BC80);
      sharedState24 = [(IDSDSession *)self sharedState];
      groupID7 = [sharedState24 groupID];

      if (groupID7)
      {
        CFDictionarySetValue(v171, kIDSQRAllocateKey_GroupID, groupID7);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091A7EC();
      }

      if (([v175 isEqualToIgnoringCase:@"yes"] & 1) != 0 || IMGetDomainBoolForKey())
      {
        v127 = IDSGroupSessionForceQRSession;
        if (v127)
        {
          CFDictionarySetValue(v171, kIDSQRAllocateKey_TestOptions, v127);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10091AA70();
        }
      }

      [(IDSDSession *)self setGroupStreamInfo:self->_groupStatusNotificationParams sessionInfo:v171];
      [(IDSDSession *)self setShouldConnectToQRServer:1];
      CFDictionarySetValue(v171, kIDSQRAllocateKey_IsJoinAllocation, &__kCFBooleanTrue);
      if (bOOLValue)
      {
        CFDictionarySetValue(v171, kIDSQRAllocateKey_IsNewUPlusOneSession, &__kCFBooleanTrue);
      }

      v128 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionIsReliableUnicastSession];
      bOOLValue3 = [v128 BOOLValue];

      IDSTransportThreadAddBlock();
      if (bOOLValue3)
      {
        sharedState25 = [(IDSDSession *)self sharedState];
        isInitiator2 = [sharedState25 isInitiator];

        v132 = [NSNumber numberWithBool:isInitiator2 ^ 1];
        if (v132)
        {
          CFDictionarySetValue(v171, kIDSQRAllocateKey_waitingForAllocation, v132);
        }
      }

      if (self->_disableP2PLinks)
      {
        IDSTransportThreadAddBlock();
      }

      v169 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionConversationIDKey];
      if (v169)
      {
        CFDictionarySetValue(v171, kIDSQRAllocateKey_ConversationID, v169);
      }

      v173 = IDSGroupSessionTimeBaseKey;
      v179 = [optionsCopy objectForKeyedSubscript:?];
      if (v179)
      {
        CFDictionarySetValue(v171, kIDSQRAllocateKey_TimeBase, v179);

        if (qword_100CBD178 != -1)
        {
          sub_1009186A4();
        }

        v133 = mach_continuous_time();
        v134 = *&qword_100CBD180;
        [v179 timeIntervalSinceNow];
        self->_timeBase = v134 * v133 + v135;
        v189 = v179;
        IDSTransportThreadAddBlock();
      }

      v136 = [NSNumber numberWithBool:self->_isLightweightParticipant];
      if (v136)
      {
        CFDictionarySetValue(v171, kIDSQRAllocateKey_IsLightweightParticipant, v136);
      }

      [(IDSGFTMetricsCollector *)self->_metricsCollector requestAllocation];
      qrAllocator3 = [(IDSDSession *)self qrAllocator];
      sharedState26 = [(IDSDSession *)self sharedState];
      destinations3 = [sharedState26 destinations];
      allObjects2 = [destinations3 allObjects];
      sharedState27 = [(IDSDSession *)self sharedState];
      uniqueID6 = [sharedState27 uniqueID];
      sharedState28 = [(IDSDSession *)self sharedState];
      fromURI3 = [sharedState28 fromURI];
      unprefixedURI = [fromURI3 unprefixedURI];
      _bestGuessURI = [unprefixedURI _bestGuessURI];
      accountController3 = [(IDSDSession *)self accountController];
      sharedState29 = [(IDSDSession *)self sharedState];
      accountID4 = [sharedState29 accountID];
      v142 = [accountController3 accountWithUniqueID:accountID4];
      service = [v142 service];
      identifier = [service identifier];
      v145 = [qrAllocator3 setupNewAllocation:allObjects2 sessionID:uniqueID6 fromIdentity:_registrationCert fromURI:_bestGuessURI fromService:identifier options:v171 connectReadyHandler:0];

      if (v145)
      {
        [(IDSGFTMetricsCollector *)self->_metricsCollector sendAllocationRequest];
      }

      goto LABEL_50;
    }
  }

  else
  {
  }

  v116 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    sharedState30 = [(IDSDSession *)self sharedState];
    groupID8 = [sharedState30 groupID];
    sharedState31 = [(IDSDSession *)self sharedState];
    destinations4 = [sharedState31 destinations];
    *buf = 138412546;
    *v201 = groupID8;
    *&v201[8] = 2112;
    *&v201[10] = destinations4;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Participant query in process or defaults are not set for hardcoded QR session info, self.sharedState.groupID: %@, self.sharedState.destinations: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState32 = [(IDSDSession *)self sharedState];
      groupID9 = [sharedState32 groupID];
      sharedState33 = [(IDSDSession *)self sharedState];
      destinations5 = [sharedState33 destinations];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v124 = [(IDSDSession *)self sharedState:groupID9];
        groupID10 = [v124 groupID];
        sharedState34 = [(IDSDSession *)self sharedState];
        destinations6 = [sharedState34 destinations];
        _IDSLogV();
      }
    }
  }

  self->_joinGroupSessionPending = 1;
  (v180[2])();
LABEL_63:
}

- (void)receiveJoinNotificationFromAParticipant
{
  if (self->_startedAsUPlusOneSession)
  {
    v13[1] = _NSConcreteStackBlock;
    v13[2] = 3221225472;
    v13[3] = sub_1003C16D4;
    v13[4] = &unk_100BD8A20;
    v13[5] = self;
    IDSTransportThreadAddBlock();
  }

  if (self->_joinRecvTime == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_1009186A4();
    }

    self->_joinRecvTime = *&qword_100CBD180 * mach_continuous_time();
  }

  if (IMGetDomainBoolForKey() && !self->_reinitTestCompleted)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState uniqueID];
      *buf = 138412290;
      v15 = uniqueID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will reinitiate after 15s for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        uniqueID3 = [sharedState3 uniqueID];
        _IDSLogV();
      }
    }

    self->_reinitTestCompleted = 1;
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 15000000000);
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C1718;
    block[3] = &unk_100BD9D38;
    objc_copyWeak(v13, buf);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }
}

- (void)leaveGroupSession:(id)session options:(id)options
{
  optionsCopy = options;
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];
  v8 = [uniqueID componentsSeparatedByString:@"-"];

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"state", &off_100C3BDE8);
  v10 = -[NSString substringFromIndex:](self->_serviceIdentifier, "substringFromIndex:", [@"com.apple.private.alloy." length]);
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"serviceName", v10);
  }

  v11 = [v8 objectAtIndexedSubscript:0];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"sessionID", v11);
  }

  IDSPowerLogDictionary();
  self->_sharedSessionHasJoined = 0;
  [(IDSGFTMetricsCollector *)self->_metricsCollector leave];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_1003C1B54;
  v31 = &unk_100BD8A20;
  selfCopy = self;
  IDSTransportThreadAddBlock();
  [(IDSDSession *)self setShouldConnectToQRServer:0];
  sharedState2 = [(IDSDSession *)self sharedState];
  [sharedState2 setState:7];

  v13 = [optionsCopy objectForKey:IDSGroupSessionClientContextDataKey];

  [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams setClientLeaveContextData:v13];
  if (self->_handOffOverQREnabled)
  {
    clientLeaveContextData = [(IDSGroupStatusNotificationParameters *)self->_groupStatusNotificationParams clientLeaveContextData];
    v15 = [(IDSDSession *)self _generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:clientLeaveContextData];

    if (v15)
    {
      v26[5] = _NSConcreteStackBlock;
      v26[6] = 3221225472;
      v26[7] = sub_1003C1BD4;
      v26[8] = &unk_100BD9AA8;
      v26[9] = self;
      v27 = v15;
      IDSTransportThreadAddBlock();
    }
  }

  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState3 = [(IDSDSession *)self sharedState];
  groupID = [sharedState3 groupID];
  [qrAllocator cleanUpCachedMappings:groupID];

  utunController = [(IDSDSession *)self utunController];
  sharedState4 = [(IDSDSession *)self sharedState];
  uniqueID2 = [sharedState4 uniqueID];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1003C1C4C;
  v26[3] = &unk_100BD9F28;
  v26[4] = self;
  [utunController disconnectGlobalLinkForDevice:uniqueID2 isReinitiating:0 completionHandler:v26];

  v22 = +[IMLockdownManager sharedInstance];
  LODWORD(sharedState4) = [v22 isInternalInstall];

  if (sharedState4)
  {
    v23 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C22CC;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v23, v24);
  }
}

- (void)sendKeyMaterialMessage:(id)message toDestination:(id)destination
{
  messageCopy = message;
  destinationCopy = destination;
  v8 = +[NSString stringGUID];
  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v12 = [accountController accountWithUniqueID:accountID];

  if (v12)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      unprefixedURIStringsFromRegistration = [v12 unprefixedURIStringsFromRegistration];
      *buf = 138478339;
      v41 = messageCopy;
      v42 = 2112;
      v43 = unprefixedURIStringsFromRegistration;
      v44 = 2112;
      v45 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessage - message %{private}@ given aliases %@  destination: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        unprefixedURIStringsFromRegistration2 = [v12 unprefixedURIStringsFromRegistration];
        v37 = destinationCopy;
        v33 = messageCopy;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          unprefixedURIStringsFromRegistration2 = [v12 unprefixedURIStringsFromRegistration];
          v37 = destinationCopy;
          v33 = messageCopy;
          _IDSLogV();
        }
      }
    }

    v15 = objc_alloc_init(IDSSendParameters);
    [v15 setPriority:300];
    [v15 setDestinations:destinationCopy];
    [v15 setMessage:messageCopy];
    [v15 setIdentifier:v8];
    [v15 setAlwaysSkipSelf:1];
    v16 = IDSGetUUIDData();
    [v15 setMessageUUID:v16];

    [v15 setFireAndForget:1];
    [v15 setBypassStorage:1];
    [v15 setCommand:&off_100C3BE00];
    requiredLackOfCapabilities = [(IDSDSession *)self requiredLackOfCapabilities];
    v18 = [requiredLackOfCapabilities count];

    if (v18)
    {
      v19 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        requiredLackOfCapabilities2 = [(IDSDSession *)self requiredLackOfCapabilities];
        *buf = 138412290;
        v41 = requiredLackOfCapabilities2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessage - requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
      }

      requiredLackOfCapabilities3 = [(IDSDSession *)self requiredLackOfCapabilities];
      [v15 setRequireLackOfRegistrationProperties:requiredLackOfCapabilities3];
    }

    v22 = [(IDSDSession *)self requiredCapabilities:v33];
    v23 = [v22 count];

    if (v23)
    {
      v24 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        requiredCapabilities = [(IDSDSession *)self requiredCapabilities];
        *buf = 138412290;
        v41 = requiredCapabilities;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialMessage - requires properties {requiredCapabilities: %@}", buf, 0xCu);
      }

      requiredCapabilities2 = [(IDSDSession *)self requiredCapabilities];
      [v15 setRequireAllRegistrationProperties:requiredCapabilities2];
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1003C2948;
    v38[3] = &unk_100BD9D10;
    v39 = v8;
    [v12 sendMessageWithSendParameters:v15 willSendBlock:0 completionBlock:v38];
    accountID5 = v39;
    goto LABEL_21;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sharedState2 = [(IDSDSession *)self sharedState];
    accountID2 = [sharedState2 accountID];
    *buf = 138412546;
    v41 = @"IDSDSession";
    v42 = 2112;
    v43 = accountID2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@ - No account with unique ID %@ found to send a message, bailing...", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    accountID3 = [sharedState3 accountID];
    _IDSWarnV();

    v32 = [(IDSDSession *)self sharedState:@"IDSDSession"];
    accountID4 = [v32 accountID];
    _IDSLogV();

    v15 = [(IDSDSession *)self sharedState:@"IDSDSession"];
    accountID5 = [v15 accountID];
    _IDSLogTransport();
LABEL_21:
  }
}

- (void)sendKeyMaterialMessageDataOverQR:(id)r toDestination:(id)destination completionBlock:(id)block
{
  rCopy = r;
  destinationCopy = destination;
  blockCopy = block;
  v8 = blockCopy;
  v9 = destinationCopy;
  v10 = rCopy;
  IDSTransportThreadAddBlock();
}

- (id)getDesiredMaterialSetForEncryptedData
{
  keyValueDelivery = self->_keyValueDelivery;
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  v5 = [(IDSDSessionKeyValueDeliveryProtocol *)keyValueDelivery getAllKeyValueDeliveryLocalMaterialSetForGroupID:groupID];

  return v5;
}

- (void)updateServerDesiredKeyValueDeliveryMaterialsNeeded
{
  v7 = +[IDSGroupEncryptionController sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  [v7 updateServerDesiredKeyMaterialsForGroup:groupID sessionID:uniqueID];
}

- (void)requestKeyValueDeliveryDataForKey:(unsigned int)key participantID:(unint64_t)d
{
  if (key == 1)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v15 = 5;
      v16 = 2112;
      v17 = @"MIRAGEKEY";
      v18 = 2048;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requestKeyValueDeliveryDataForKey: requesting type %d (%@) for %llu", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v11 = @"MIRAGEKEY";
      dCopy3 = d;
      v10 = 5;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v11 = @"MIRAGEKEY";
        dCopy3 = d;
        v10 = 5;
        _IDSLogV();
      }
    }

    dCopy3 = [NSNumber numberWithUnsignedLongLong:d, v10, v11, dCopy3];
    v13 = dCopy3;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    [(IDSDSession *)self requestMaterialsForParticipantIDs:v8 materialType:5];
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requestKeyValueDeliveryDataForKey: unknown type: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (id)serverDesiredKeyMaterials
{
  v2 = [(NSSet *)self->_serverDesiredKeyMaterialsFromGroupEncryptionController mutableCopy];

  return v2;
}

- (void)didCreateMKM:(id)m
{
  metricsCollector = self->_metricsCollector;
  keyIndex = [m keyIndex];
  [(IDSGFTMetricsCollector *)metricsCollector didCreateMKM:keyIndex];
}

- (void)recvKeyMaterial:(id)material
{
  materialCopy = material;
  multiplexerTransport = self->_multiplexerTransport;
  if (multiplexerTransport)
  {
    fanoutEncryptionManager = [(IDSMultiplexerGroupSessionTransport *)multiplexerTransport fanoutEncryptionManager];
    [fanoutEncryptionManager recvKeyMaterial:materialCopy];
  }

  v7 = materialCopy;
  v21 = v7;
  IDSTransportThreadAddBlock();
  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  v8 = *&qword_100CBD180 * mach_continuous_time();
  self->_newKeyEventTime = v8;
  membershipChangeEventTime = self->_membershipChangeEventTime;
  if (membershipChangeEventTime != 0.0)
  {
    v10 = ((v8 - membershipChangeEventTime) * 1000.0);
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sharedState = [(IDSDSession *)self sharedState];
      groupID = [sharedState groupID];
      *buf = 134218242;
      v23 = v10;
      v24 = 2112;
      v25 = groupID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received the new MKM %lld milleseconds after the membership change event for group %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState2 = [(IDSDSession *)self sharedState];
        [sharedState2 groupID];
        v20 = v19 = v10;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v15 = [(IDSDSession *)self sharedState:v10];
          [v15 groupID];
          v20 = v19 = v10;
          _IDSLogV();
        }
      }
    }

    v16 = [IDSAWDLogging sharedInstance:v19];
    sharedState3 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState3 serviceName];
    [v16 IDSRealTimeEncryptionServiceName:serviceName activeParticipants:self->_cachedNumberOfActiveParticipants membershipChangeMKMTimeDelta:v10];

    self->_membershipChangeEventTime = 0.0;
    self->_newKeyEventTime = 0.0;
  }
}

- (void)didSendKeyMaterial:(id)material duration:(double)duration
{
  materialCopy = material;
  if (self->_firstMKMSentTime == 0.0)
  {
    v6 = materialCopy;
    if (qword_100CBD178 != -1)
    {
      sub_100918708();
    }

    self->_firstMKMSentTime = *&qword_100CBD180 * mach_continuous_time();
    materialCopy = v6;
  }
}

- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes
{
  multiplexerTransport = self->_multiplexerTransport;
  if (multiplexerTransport)
  {
    indexesCopy = indexes;
    fanoutEncryptionManager = [(IDSMultiplexerGroupSessionTransport *)multiplexerTransport fanoutEncryptionManager];
    [fanoutEncryptionManager invalidateKeyMaterialByKeyIndexes:indexesCopy];
  }
}

- (void)_sendClientDecryptedDatabBlobs:(id)blobs type:(int)type forParticipant:(id)participant
{
  blobsCopy = blobs;
  participantCopy = participant;
  participantURI = [participantCopy participantURI];
  v11 = [IDSURI URIWithPrefixedURI:participantURI];

  if (sub_1006D6B44(v11))
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_sendClientDecryptedDatabBlobs: dropping because it came from blocked URI", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v13 = im_primary_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003C3978;
    v15[3] = &unk_100BDA088;
    v15[4] = self;
    typeCopy = type;
    v16 = participantCopy;
    v17 = blobsCopy;
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v15);
    dispatch_async(v13, v14);
  }
}

- (void)_sendRemoteParticipantJoinInfoEventToClient:(id)client forParticipant:(id)participant
{
  clientCopy = client;
  participantCopy = participant;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C3C78;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v13 = participantCopy;
  v14 = clientCopy;
  v9 = clientCopy;
  v10 = participantCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v8, v11);
}

- (void)_sendRemoteParticipantLeaveInfoEventToClient:(id)client forParticipant:(id)participant
{
  clientCopy = client;
  participantCopy = participant;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C3E74;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v13 = participantCopy;
  v14 = clientCopy;
  v9 = clientCopy;
  v10 = participantCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v8, v11);
}

- (void)_sendRemoteParticipantUpdateInfoEventToClient:(id)client forParticipant:(id)participant
{
  clientCopy = client;
  participantCopy = participant;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C4070;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v13 = participantCopy;
  v14 = clientCopy;
  v9 = clientCopy;
  v10 = participantCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v8, v11);
}

- (void)receiveAndDecryptEncryptedDataBlobs:(id)blobs
{
  blobsCopy = blobs;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  if (!self->_typeToKeyIDToEncryptedData)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    typeToKeyIDToEncryptedData = self->_typeToKeyIDToEncryptedData;
    self->_typeToKeyIDToEncryptedData = Mutable;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = blobsCopy;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v33)
  {
    v32 = *v44;
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v32)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v36 = v7;
        v9 = *(*(&v43 + 1) + 8 * v7);
        v10 = [obj objectForKeyedSubscript:{v9, v28, v29}];
        theDict = [(NSMutableDictionary *)selfCopy->_typeToKeyIDToEncryptedData objectForKeyedSubscript:v9];
        if (!theDict)
        {
          theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v12)
        {
          v13 = *v40;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v39 + 1) + 8 * i);
              if ([v15 length] > 0x10)
              {
                v19 = [v15 subdataWithRange:{0, 16}];
                v20 = [v15 length] - 16;
                v21 = [v15 subdataWithRange:{16, v20}];
                v22 = v19;
                v23 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];
                v24 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v48 = v9;
                  v49 = 2048;
                  v50 = v20;
                  v51 = 2112;
                  v52 = v21;
                  v53 = 2112;
                  v54 = v23;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "receiveAndDecryptEncryptedDataBlobs: type: %@, blobLength: %lu, standaloneBlob: %@, keyID: %@", buf, 0x2Au);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v30 = v21;
                    v31 = v23;
                    v28 = v9;
                    v29 = v20;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v30 = v21;
                      v31 = v23;
                      v28 = v9;
                      v29 = v20;
                      _IDSLogV();
                    }
                  }
                }

                if (v21)
                {
                  CFDictionarySetValue(theDict, v23, v21);
                }
              }

              else
              {
                v16 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v15 length];
                  *buf = 138412546;
                  v48 = v9;
                  v49 = 2048;
                  v50 = v17;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "receiveAndDecryptEncryptedDataBlobs: blob too small: type: %@, dataBlob length: %lu", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v28 = v9;
                    v29 = [v15 length];
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v18 = [v15 length];
                      v28 = v9;
                      v29 = v18;
                      _IDSLogV();
                    }
                  }
                }
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v39 objects:v55 count:16];
          }

          while (v12);
        }

        v25 = theDict;
        if (theDict)
        {
          CFDictionarySetValue(selfCopy->_typeToKeyIDToEncryptedData, v9, theDict);
          v25 = theDict;
        }

        v7 = v36 + 1;
      }

      while ((v36 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v33);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v26 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C4730;
  block[3] = &unk_100BD6ED0;
  block[4] = selfCopy;
  v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v26, v27);
}

- (void)_decryptReceivedDataBlobsUsingSKMs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData count];
  v4 = +[IDSFoundationLog IDSDSession];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_typeToParticipantIDToDecryptedDataBlob count];
      typeToKeyIDToEncryptedData = self->_typeToKeyIDToEncryptedData;
      *buf = 134218242;
      v58 = v6;
      v59 = 2112;
      v60 = typeToKeyIDToEncryptedData;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: _typeToParticipantIDToDecryptedDataBlob count: %llu, _typeToKeyIDToEncryptedData: %@", buf, 0x16u);
    }

    if (!self->_typeToParticipantIDToDecryptedDataBlob)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      typeToParticipantIDToDecryptedDataBlob = self->_typeToParticipantIDToDecryptedDataBlob;
      self->_typeToParticipantIDToDecryptedDataBlob = Mutable;
    }

    v10 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData copy];
    os_unfair_lock_unlock(&self->_lock);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v10;
    v34 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v34)
    {
      v33 = *v52;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v51 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_typeToParticipantIDToDecryptedDataBlob objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v14 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData objectForKeyedSubscript:v12];
          if (!v14)
          {
            v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          intValue = [v12 intValue];
          v16 = [v14 count];
          v17 = objc_alloc_init(NSMutableSet);
          if (v16)
          {
            v39 = v13;
            v40 = i;
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_1003C4C64;
            v47[3] = &unk_100BDA330;
            v47[4] = v12;
            v47[5] = self;
            v36 = intValue;
            v50 = intValue;
            v35 = v13;
            v48 = v35;
            v37 = v17;
            v18 = v17;
            v49 = v18;
            v38 = v14;
            [v14 enumerateKeysAndObjectsUsingBlock:v47];
            os_unfair_lock_lock(&self->_lock);
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v44;
              do
              {
                for (j = 0; j != v21; j = j + 1)
                {
                  if (*v44 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v43 + 1) + 8 * j);
                  v25 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData objectForKeyedSubscript:v12];
                  [v25 removeObjectForKey:v24];

                  v26 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData objectForKeyedSubscript:v12];
                  v27 = [v26 count];

                  if (!v27)
                  {
                    [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData removeObjectForKey:v12];
                  }

                  v28 = +[IDSFoundationLog IDSDSession];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = [(NSMutableDictionary *)self->_typeToKeyIDToEncryptedData objectForKeyedSubscript:v12];
                    v30 = [v29 count];
                    v31 = self->_typeToKeyIDToEncryptedData;
                    *buf = 134218242;
                    v58 = v30;
                    v59 = 2112;
                    v60 = v31;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: count: %llu, %@", buf, 0x16u);
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v43 objects:v55 count:16];
              }

              while (v21);
            }

            os_unfair_lock_unlock(&self->_lock);
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1003C5174;
            v41[3] = &unk_100BDA358;
            v41[4] = self;
            v41[5] = v12;
            v42 = v36;
            [v35 enumerateKeysAndObjectsUsingBlock:v41];

            v13 = v39;
            i = v40;
            v17 = v37;
            v14 = v38;
          }
        }

        v34 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v34);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_decryptReceivedEncryptedDataBlobsUsingSKMs, no encryptedBlobTypeCount, return", buf, 2u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)shouldReportToClient:(id)client timeStamp:(double)stamp type:(unint64_t)type overPush:(BOOL)push
{
  pushCopy = push;
  clientCopy = client;
  participantIDToParticipantUpdateTypeToRemoteParticipantContext = self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext;
  if (!participantIDToParticipantUpdateTypeToRemoteParticipantContext)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext;
    self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext = Mutable;

    participantIDToParticipantUpdateTypeToRemoteParticipantContext = self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext;
  }

  v14 = [(NSMutableDictionary *)participantIDToParticipantUpdateTypeToRemoteParticipantContext objectForKeyedSubscript:clientCopy];
  if (!v14)
  {
    v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [(NSMutableDictionary *)self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext setObject:v14 forKeyedSubscript:clientCopy];
  }

  v15 = [NSNumber numberWithUnsignedInteger:type];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = v16;
  if (!v16)
  {
    v20 = [[IDSDSessionRemoteParticipantContext alloc] initWithtimeStamp:type updateType:stamp];
    [v14 setObject:v20 forKeyedSubscript:v15];
    [(NSMutableDictionary *)self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext setObject:v14 forKeyedSubscript:clientCopy];
    v21 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongLongValue = [clientCopy unsignedLongLongValue];
      v28 = @"NO";
      v33 = 138412802;
      v34 = v20;
      if (pushCopy)
      {
        v28 = @"YES";
      }

      v35 = 2048;
      v36 = unsignedLongLongValue;
      v37 = 2112;
      v38 = v28;
      v24 = "shouldReportToClient: Sending first event %@ for participantID: %llu overPush %@!";
      v25 = v21;
      v26 = 32;
      goto LABEL_15;
    }

LABEL_16:
    v29 = 1;
    goto LABEL_22;
  }

  [v16 timeStamp];
  v19 = v18;
  v20 = [[IDSDSessionRemoteParticipantContext alloc] initWithtimeStamp:type updateType:stamp];
  if (v19 < stamp)
  {
    [v14 setObject:v20 forKeyedSubscript:v15];
    [(NSMutableDictionary *)self->_participantIDToParticipantUpdateTypeToRemoteParticipantContext setObject:v14 forKeyedSubscript:clientCopy];
    v21 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongLongValue2 = [clientCopy unsignedLongLongValue];
      v23 = @"NO";
      v33 = 138413058;
      v34 = v20;
      v35 = 2112;
      if (pushCopy)
      {
        v23 = @"YES";
      }

      v36 = v17;
      v37 = 2048;
      v38 = unsignedLongLongValue2;
      v39 = 2112;
      v40 = v23;
      v24 = "shouldReportToClient: Sending update event %@ previous event %@ for participantID: %llu overPush %@!";
      v25 = v21;
      v26 = 42;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, &v33, v26);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v21 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    unsignedLongLongValue3 = [clientCopy unsignedLongLongValue];
    v31 = @"NO";
    v33 = 138413058;
    v34 = v20;
    v35 = 2112;
    if (pushCopy)
    {
      v31 = @"YES";
    }

    v36 = v17;
    v37 = 2048;
    v38 = unsignedLongLongValue3;
    v39 = 2112;
    v40 = v31;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "shouldReportToClient: Not Sending event %@ previous event %@ for participantID: %llu overPush %@!", &v33, 0x2Au);
  }

  v29 = 0;
LABEL_22:

  [(IDSDSession *)self reportParticipantUpdateEventFor:clientCopy type:type overPush:pushCopy];
  return v29;
}

- (void)reportParticipantUpdateEventFor:(id)for type:(unint64_t)type overPush:(BOOL)push
{
  pushCopy = push;
  forCopy = for;
  v9 = forCopy;
  switch(type)
  {
    case 5uLL:
      metricsCollector = self->_metricsCollector;
      v13 = v9;
      if (pushCopy)
      {
        forCopy = [(IDSGFTMetricsCollector *)metricsCollector receivedParticipantUpdateParticipantInfoEventOverPushFromParticipantID:v9];
      }

      else
      {
        forCopy = [(IDSGFTMetricsCollector *)metricsCollector receivedParticipantUpdateParticipantInfoEventOverQUICFromParticipantID:v9];
      }

      break;
    case 2uLL:
      v11 = self->_metricsCollector;
      v13 = v9;
      if (pushCopy)
      {
        forCopy = [(IDSGFTMetricsCollector *)v11 receivedParticipantUpdateLeaveEventOverPushFromParticipantID:v9];
      }

      else
      {
        forCopy = [(IDSGFTMetricsCollector *)v11 receivedParticipantUpdateLeaveEventOverQUICFromParticipantID:v9];
      }

      break;
    case 1uLL:
      v10 = self->_metricsCollector;
      v13 = v9;
      if (pushCopy)
      {
        forCopy = [(IDSGFTMetricsCollector *)v10 receivedParticipantUpdateJoinEventOverPushFromParticipantID:v9];
      }

      else
      {
        forCopy = [(IDSGFTMetricsCollector *)v10 receivedParticipantUpdateJoinEventOverQUICFromParticipantID:v9];
      }

      break;
    default:
      goto LABEL_14;
  }

  v9 = v13;
LABEL_14:

  _objc_release_x1(forCopy, v9);
}

- (BOOL)didProcessParticipantUpdateFrom:(id)from dedupTimestamp:(double)timestamp
{
  if (self->_handOffOverQREnabled)
  {
    v6 = [(IDSDSession *)self _getParticipantIDFromPushToken:from];
    if (v6)
    {
      v7 = ![(IDSDSession *)self shouldReportToClient:v6 timeStamp:5 type:1 overPush:timestamp];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)rejectedKeyRecoveryRequestFromURI:(id)i reason:(unsigned int)reason
{
  v4 = *&reason;
  iCopy = i;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412802;
    v21 = uniqueID;
    v22 = 2112;
    v23 = iCopy;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "rejectedKeyRecoveryRequestFromURI for session %@, from: %@, reason: %u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v11 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID3 = [v11 uniqueID];
        _IDSLogV();
      }
    }
  }

  v12 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C5E58;
  block[3] = &unk_100BD9B68;
  block[4] = self;
  v18 = iCopy;
  v19 = v4;
  v13 = iCopy;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v12, v14);
}

- (void)recvStableKeyMaterialForFrameworkCache:(id)cache
{
  cacheCopy = cache;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v42 = uniqueID;
    v43 = 2112;
    v44 = cacheCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "recvStableKeyMaterialForFrameworkCache for session %@. SKM: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v31 = cacheCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v8 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v8 uniqueID];
        v31 = cacheCopy;
        _IDSLogV();
      }
    }
  }

  if (cacheCopy && [cacheCopy count])
  {
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C64E0;
    block[3] = &unk_100BD6E40;
    block[4] = self;
    v10 = cacheCopy;
    v39 = v10;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v9, v11);

    os_unfair_lock_lock(&self->_lock);
    if (self->_dataBlobEncryptionManager)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v10;
      v12 = 0;
      v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v13)
      {
        v14 = *v35;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = [[IDSGroupEncryptionKeyMaterial alloc] initWithDictionary:*(*(&v34 + 1) + 8 * i)];
            v17 = [(IDSGroupEncryptionKeyManager *)self->_dataBlobEncryptionManager recvKeyMaterial:v16];
            keyIDToParticipantID = self->_keyIDToParticipantID;
            if (!keyIDToParticipantID)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v20 = self->_keyIDToParticipantID;
              self->_keyIDToParticipantID = Mutable;

              keyIDToParticipantID = self->_keyIDToParticipantID;
            }

            v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 participantID]);
            keyIndex = [v16 keyIndex];
            [(NSMutableDictionary *)keyIDToParticipantID setObject:v21 forKey:keyIndex];

            v12 |= v17;
          }

          v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v13);
      }

      v23 = [[IDSGroupSessionDataCryptor alloc] initWithTopic:@"dataBlobEncryption" keyManager:self->_dataBlobEncryptionManager];
      cryptorForBlobs = self->_cryptorForBlobs;
      self->_cryptorForBlobs = v23;

      os_unfair_lock_unlock(&self->_lock);
      [(IDSDSession *)self _decryptReceivedDataBlobsUsingSKMs];
      if (v12)
      {
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          sharedState3 = [(IDSDSession *)self sharedState];
          uniqueID3 = [sharedState3 uniqueID];
          *buf = 138412290;
          v42 = uniqueID3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "recvStableKeyMaterialForFrameworkCache for session %@. Re-encyrpting Blobs with new encryption key (local SKM)", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            sharedState4 = [(IDSDSession *)self sharedState];
            uniqueID2 = [sharedState4 uniqueID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              sharedState5 = [(IDSDSession *)self sharedState];
              uniqueID2 = [sharedState5 uniqueID];
              _IDSLogV();
            }
          }
        }

        [(IDSDSession *)self updateRelevantEncryptedDataBlob];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      [(IDSDSession *)self _decryptReceivedDataBlobsUsingSKMs];
    }
  }
}

- (void)InvalidateStableKeyMaterialInFrameworkCache:(id)cache
{
  cacheCopy = cache;
  v5 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C66AC;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = cacheCopy;
  v6 = cacheCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(v5, v7);
}

- (void)recvMembershipChangeEventWithReason:(unsigned __int8)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  multiplexerTransport = self->_multiplexerTransport;
  if (multiplexerTransport)
  {
    fanoutEncryptionManager = [(IDSMultiplexerGroupSessionTransport *)multiplexerTransport fanoutEncryptionManager];
    [fanoutEncryptionManager receiveMembershipChangedInformation:reasonCopy];

    if ((reasonCopy - 1) <= 1u)
    {
      fanoutEncryptionManager2 = [(IDSMultiplexerGroupSessionTransport *)self->_multiplexerTransport fanoutEncryptionManager];
      [fanoutEncryptionManager2 purgeOldKeyMaterial];
    }
  }

  v10 = handlerCopy;
  IDSTransportThreadAddBlock();
  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  self->_membershipChangeEventTime = *&qword_100CBD180 * mach_continuous_time();
}

- (void)sendAllocationRequest:(id)request
{
  requestCopy = request;
  accountController = [(IDSDSession *)self accountController];
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];
  v8 = [accountController accountWithUniqueID:accountID];
  service = [v8 service];

  qrAllocator = [(IDSDSession *)self qrAllocator];
  v26 = [requestCopy objectForKey:kIDSQRAllocateKey_Recipients];
  sharedState2 = [(IDSDSession *)self sharedState];
  v24 = requestCopy;
  v11 = [requestCopy objectForKey:kIDSQRAllocateKey_AllocateType];
  v25 = [sharedState2 getQuickRelayAllocateOptions:v11];

  objc_initWeak(location, self);
  [(IDSGFTMetricsCollector *)self->_metricsCollector requestAllocation];
  sharedState3 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState3 uniqueID];
  accountController2 = [(IDSDSession *)self accountController];
  sharedState4 = [(IDSDSession *)self sharedState];
  accountID2 = [sharedState4 accountID];
  v28 = [accountController2 accountWithUniqueID:accountID2];
  _registrationCert = [v28 _registrationCert];
  sharedState5 = [(IDSDSession *)self sharedState];
  fromURI = [sharedState5 fromURI];
  unprefixedURI = [fromURI unprefixedURI];
  _bestGuessURI = [unprefixedURI _bestGuessURI];
  identifier = [service identifier];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1003C6C40;
  v30[3] = &unk_100BDA3A8;
  objc_copyWeak(&v32, location);
  v21 = service;
  v31 = v21;
  v22 = [qrAllocator setupNewAllocation:v26 sessionID:uniqueID fromIdentity:_registrationCert fromURI:_bestGuessURI fromService:identifier options:v25 connectReadyHandler:v30];

  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
}

- (void)hasOutdatedSKI:(id)i
{
  iCopy = i;
  v11 = objc_alloc_init(IMMessageContext);
  [v11 setShouldBoost:1];
  v5 = +[IDSDaemon sharedInstance];
  sharedState = [(IDSDSession *)self sharedState];
  pushTopic = [sharedState pushTopic];
  v8 = [v5 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v11];

  sharedState2 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState2 uniqueID];
  [v8 session:uniqueID hasOutdatedSKI:iCopy];
}

- (void)requestEncryptionKeyForParticipantIDs:(id)ds
{
  dsCopy = ds;
  v5 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C6F2C;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = dsCopy;
  v6 = dsCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(v5, v7);
}

- (void)requestMaterialsForParticipantIDs:(id)ds materialType:(int)type
{
  v4 = *&type;
  dsCopy = ds;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412802;
    v16 = uniqueID;
    v17 = 2112;
    v18 = dsCopy;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "requestMaterialsForParticipantIDs for session %@. participantIDs: %@; materialType:%d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v11 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID3 = [v11 uniqueID];
        _IDSLogV();
      }
    }
  }

  v12 = dsCopy;
  IDSTransportThreadAddBlock();
}

- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  v4 = saltCopy;
  IDSTransportThreadAddBlock();
}

- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt
{
  saltCopy = salt;
  v4 = saltCopy;
  IDSTransportThreadAddBlock();
}

- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  saltCopy = salt;
  IDSTransportThreadAddSyncBlock();
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)onParticipantID2PushTokenMappingChange:(id)change
{
  changeCopy = change;
  v4 = [NSUUID alloc];
  v5 = [changeCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
  v6 = [v4 initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
  uUIDString = [v6 UUIDString];

  v25 = changeCopy;
  v7 = [changeCopy objectForKey:kIDSQRAllocateKey_Allocations];
  v8 = +[NSMutableArray array];
  v27 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = kIDSQRAllocateKey_RecipientID;
    v13 = kIDSQRAllocateKey_RecipientPushToken;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 objectForKey:v12];
        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 unsignedLongLongValue]);
        v18 = [v15 objectForKey:v13];
        [v8 addObject:v17];
        [v27 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_1003C7E54;
  block[8] = &unk_100BD89D8;
  block[9] = self;
  v29 = uUIDString;
  v30 = v8;
  v19 = v8;
  v20 = uUIDString;
  IDSTransportThreadAddBlock();
  v21 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C7EDC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v21, v22);
}

- (void)onURI2ParticipantIDMappingChange:(id)change allocateResponse:(id)response
{
  changeCopy = change;
  responseCopy = response;
  v7 = [NSUUID alloc];
  v8 = [responseCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
  v9 = [v7 initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
  uUIDString = [v9 UUIDString];

  v11 = [NSUUID alloc];
  v12 = [responseCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
  v13 = [v11 initWithUUIDBytes:{objc_msgSend(v12, "bytes")}];
  uUIDString2 = [v13 UUIDString];

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = uUIDString;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "URI to participantID mapping changed for sessionID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v19 = changeCopy;
  v16 = changeCopy;
  v17 = uUIDString2;
  IDSTransportThreadAddBlock();
  v18 = uUIDString;
  IDSTransportThreadAddBlock();
}

- (void)qrAllocatorDidReceiveAllocateResponse:(id)response
{
  [response objectForKey:kIDSQRAllocateKey_Allocations];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v24 = *v27;
    v23 = kIDSQRAllocateKey_RecipientID;
    v21 = kIDSQRAllocateKey_RecipientURI;
    v20 = kIDSQRAllocateKey_RecipientPushToken;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = [v5 objectForKey:{v23, v20}];
        v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 unsignedLongLongValue]);
        qrAllocator = [(IDSDSession *)self qrAllocator];
        sharedState = [(IDSDSession *)self sharedState];
        groupID = [sharedState groupID];
        v11 = [qrAllocator getURIFromParticipantID:groupID participantID:v7];

        os_unfair_lock_lock(&self->_lock);
        if (v11)
        {
          v12 = [IDSURI URIWithPrefixedURI:v11];
        }

        else
        {
          v13 = [v5 objectForKey:v21];
          v12 = [IDSURI URIWithPrefixedURI:v13];
        }

        [(NSMutableDictionary *)self->_participantIDToURI setObject:v12 forKeyedSubscript:v7];

        os_unfair_lock_unlock(&self->_lock);
        qrAllocator2 = [(IDSDSession *)self qrAllocator];
        sharedState2 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState2 groupID];
        v17 = [qrAllocator2 getPushTokenFromParticipantID:groupID2 participantID:v7];

        os_unfair_lock_lock(&self->_lock);
        if (v17)
        {
          v18 = [IDSPushToken pushTokenWithData:v17];
        }

        else
        {
          v19 = [v5 objectForKey:v20];
          v18 = [IDSPushToken pushTokenWithData:v19];
        }

        [(NSMutableDictionary *)self->_participantIDToPushToken setObject:v18 forKeyedSubscript:v7];

        os_unfair_lock_unlock(&self->_lock);
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }
}

- (void)processAllocationErrorStatus:(int)status errorCode:(int)code
{
  v4 = *&code;
  v5 = *&status;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412802;
    v16 = uniqueID;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Allocation failure for session %@, status = %d, code = %d", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      [sharedState2 uniqueID];
      v13 = v5;
      v12 = v14 = v4;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v11 = [(IDSDSession *)self sharedState:v12];
        [v11 uniqueID];
        v13 = v5;
        v12 = v14 = v4;
        _IDSLogV();
      }
    }
  }

  [(IDSDSession *)self endSessionWithReason:v4, v12, v13, v14];
}

- (void)_updateActiveParticipants:(id)participants
{
  participantsCopy = participants;
  self->_cachedNumberOfActiveParticipants = [participantsCopy count];
  v5 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C8BE8;
  v8[3] = &unk_100BD6E40;
  v9 = participantsCopy;
  selfCopy = self;
  v6 = participantsCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(v5, v7);
}

- (void)_updateActiveLightweightParticipants:(id)participants
{
  participantsCopy = participants;
  v5 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C91C8;
  v8[3] = &unk_100BD6E40;
  v9 = participantsCopy;
  selfCopy = self;
  v6 = participantsCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(v5, v7);
}

- (id)_createGroupSessionActiveParticipantsFromParticipants:(id)participants pushTokenForParticipants:(id)forParticipants
{
  participantsCopy = participants;
  forParticipantsCopy = forParticipants;
  v8 = +[NSMutableArray array];
  v9 = [NSUUID alloc];
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];
  v12 = [v9 initWithUUIDString:groupID];

  if ([participantsCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [participantsCopy objectAtIndex:v13];
      v15 = [forParticipantsCopy objectAtIndex:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v25) = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Missing push token at index %d. Replacing NSNull with nil.", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v22 = v13;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v22 = v13;
              _IDSLogV();
            }
          }
        }

        v15 = 0;
      }

      v17 = [(IDSDSession *)self _getURIFromParticipantIDNumber:v14, v22];
      if (v17)
      {
        v18 = [[IDSGroupSessionActiveParticipant alloc] initWithGroupUUID:v12 participantIdentifier:objc_msgSend(v14 isKnown:"unsignedLongLongValue") participantURI:1 pushToken:{v17, v15}];
      }

      else
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Couldn't get the URI from the QRAllocate response for participantID: %llu, create active participant with nil URI", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v23 = v14;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v23 = v14;
              _IDSLogV();
            }
          }
        }

        v18 = [[IDSGroupSessionActiveParticipant alloc] initWithGroupUUID:v12 participantIdentifier:objc_msgSend(v14 isKnown:"unsignedLongLongValue") participantURI:0 pushToken:{0, 0}];
      }

      v20 = v18;
      [v8 addObject:{v18, v23}];

      ++v13;
    }

    while ([participantsCopy count] > v13);
  }

  return v8;
}

- (void)getActiveParticipants:(id)participants pushTokenForParticipants:(id)forParticipants isLightweightParticipant:(BOOL)participant
{
  participantCopy = participant;
  participantsCopy = participants;
  forParticipantsCopy = forParticipants;
  if (_os_feature_enabled_impl())
  {
    v10 = +[IDSDSessionActiveParticipantsCache sharedInstance];
    v11 = [NSSet setWithArray:forParticipantsCopy];
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    [v10 updateParticipants:v11 forSessionID:uniqueID];
  }

  v14 = [(IDSDSession *)self _createGroupSessionActiveParticipantsFromParticipants:participantsCopy pushTokenForParticipants:forParticipantsCopy];
  if (v14)
  {
    if (participantCopy)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "update active lightweight participants: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = v14;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v34 = v14;
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self _updateActiveLightweightParticipants:v14, v34];
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "update active participants: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = v14;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v34 = v14;
            _IDSLogV();
          }
        }
      }

      [(IDSDSession *)self _updateActiveParticipants:v14, v34];
    }

    v18 = +[IDSGroupEncryptionController sharedInstance];
    sharedState2 = [(IDSDSession *)self sharedState];
    groupID = [sharedState2 groupID];
    v21 = [v18 localParticipantIDForGroupID:groupID] == 0;

    if (v21)
    {
      qrAllocator = [(IDSDSession *)self qrAllocator];
      sharedState3 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState3 uniqueID];
      v25 = [qrAllocator getLocalParticipantIDForRelaySessionID:uniqueID2];

      v26 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        groupID2 = [sharedState4 groupID];
        *buf = 134218242;
        v36 = v25;
        v37 = 2112;
        v38 = groupID2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "currentLocalParticipantID: %llu, groupID: %@", buf, 0x16u);
      }

      v29 = +[IDSGroupEncryptionController sharedInstance];
      sharedState5 = [(IDSDSession *)self sharedState];
      groupID3 = [sharedState5 groupID];
      sharedState6 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState6 uniqueID];
      [v29 setLocalParticipantID:v25 forGroupID:groupID3 sessionID:uniqueID3];
    }
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to get URI from QR allocate response", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)registerMultiplexerTransport
{
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];

  v5 = [[IDSMultiplexerGroupSessionTransport alloc] initWithIdentifier:uniqueID];
  multiplexerTransport = self->_multiplexerTransport;
  self->_multiplexerTransport = v5;

  v7 = [uniqueID stringByAppendingString:@"fanout context"];
  uTF8String = [v7 UTF8String];

  v9 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String)];
  [(IDSMultiplexerGroupSessionTransport *)self->_multiplexerTransport setParticipantIDToAliasConverter:self];
  v10 = [[IDSGroupEncryptionKeyManager alloc] initWithEncryptionContext:v9 encryptionKeySize:60];
  [(IDSMultiplexerGroupSessionTransport *)self->_multiplexerTransport setFanoutEncryptionManager:v10];

  onTransportThread_linkManager = [(IDSDSession *)self onTransportThread_linkManager];
  v12 = self->_multiplexerTransport;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1003C9F98;
  v19 = &unk_100BDA470;
  v20 = onTransportThread_linkManager;
  v21 = uniqueID;
  v13 = uniqueID;
  v14 = onTransportThread_linkManager;
  [(IDSMultiplexerGroupSessionTransport *)v12 setPacketBufferReadHandler:&v16];
  v15 = [IDSGroupSessionMultiplexer sharedInstance:v16];
  [v15 registerMultiplexerTransport:self->_multiplexerTransport];
}

- (void)reinitiate
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412290;
    v60 = uniqueID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reinitiate called for session %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        sharedState3 = [(IDSDSession *)self sharedState];
        uniqueID2 = [sharedState3 uniqueID];
        _IDSLogV();
      }
    }
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  supportsReinitiate = [sharedState4 supportsReinitiate];

  if (supportsReinitiate)
  {
    sharedState5 = [(IDSDSession *)self sharedState];
    v11 = [sharedState5 state] == 5;

    if (v11)
    {
      if ([(IDSDSession *)self isWithDefaultPairedDevice])
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sharedState6 = [(IDSDSession *)self sharedState];
          uniqueID3 = [sharedState6 uniqueID];
          *buf = 138412290;
          v60 = uniqueID3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate called, but this session is with the default paired device", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          sharedState7 = [(IDSDSession *)self sharedState];
          uniqueID4 = [sharedState7 uniqueID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            sharedState8 = [(IDSDSession *)self sharedState];
            uniqueID5 = [sharedState8 uniqueID];
            _IDSLogV();
          }
        }
      }

      else
      {
        sharedState9 = [(IDSDSession *)self sharedState];
        isInitiator = [sharedState9 isInitiator];

        if (isInitiator)
        {
          [(IDSDSession *)self _startReinitiateAsInitiator];
        }

        else
        {
          v46 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            sharedState10 = [(IDSDSession *)self sharedState];
            uniqueID6 = [sharedState10 uniqueID];
            *buf = 138412290;
            v60 = uniqueID6;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate: sending request for initiator to kick off reinitiate flow", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              sharedState11 = [(IDSDSession *)self sharedState];
              uniqueID7 = [sharedState11 uniqueID];
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                sharedState12 = [(IDSDSession *)self sharedState];
                uniqueID7 = [sharedState12 uniqueID];
                _IDSLogV();
              }
            }
          }

          messenger = [(IDSDSession *)self messenger];
          [messenger sendReinitiateMessageWithSubcommand:1];

          [(IDSDSession *)self submitAWDMetricsForIDSSessionReinitiateRequested];
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          [(__CFDictionary *)Mutable setObject:&off_100C3BE30 forKeyedSubscript:IDSDSessionReportTransportTypeKey];
          [(__CFDictionary *)Mutable setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
          [(IDSDSession *)self addQREventForRTCReport:Mutable];
        }
      }
    }

    else
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        sharedState13 = [(IDSDSession *)self sharedState];
        uniqueID8 = [sharedState13 uniqueID];
        sharedState14 = [(IDSDSession *)self sharedState];
        state = [sharedState14 state];
        *buf = 138412546;
        v60 = uniqueID8;
        v61 = 1024;
        v62 = state;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate called, but our current state is not connected (current state: %u)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState15 = [(IDSDSession *)self sharedState];
          uniqueID9 = [sharedState15 uniqueID];
          sharedState16 = [(IDSDSession *)self sharedState];
          state2 = [sharedState16 state];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v41 = [(IDSDSession *)self sharedState:uniqueID9];
            uniqueID10 = [v41 uniqueID];
            sharedState17 = [(IDSDSession *)self sharedState];
            [sharedState17 state];
            _IDSLogV();
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
      sharedState18 = [(IDSDSession *)self sharedState];
      uniqueID11 = [sharedState18 uniqueID];
      sharedState19 = [(IDSDSession *)self sharedState];
      enableQuickRelay = [sharedState19 enableQuickRelay];
      sharedState20 = [(IDSDSession *)self sharedState];
      useQRDirectly = [sharedState20 useQRDirectly];
      *buf = 138412802;
      v60 = uniqueID11;
      v61 = 1024;
      v62 = enableQuickRelay;
      v63 = 1024;
      v64 = useQRDirectly;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate called, but we don't support reinitiate, enableQuickRelay: %d, useQRDirectly: %d", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState21 = [(IDSDSession *)self sharedState];
        uniqueID12 = [sharedState21 uniqueID];
        sharedState22 = [(IDSDSession *)self sharedState];
        enableQuickRelay2 = [sharedState22 enableQuickRelay];
        sharedState23 = [(IDSDSession *)self sharedState];
        useQRDirectly2 = [sharedState23 useQRDirectly];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v29 = [(IDSDSession *)self sharedState:uniqueID12];
          uniqueID13 = [v29 uniqueID];
          sharedState24 = [(IDSDSession *)self sharedState];
          [sharedState24 enableQuickRelay];
          sharedState25 = [(IDSDSession *)self sharedState];
          [sharedState25 useQRDirectly];
          _IDSLogV();
        }
      }
    }
  }
}

- (void)_startReinitiateAsInitiator
{
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState setState:6];

  [(IDSDSession *)self submitAWDMetricsForIDSSessionReinitiateStarted];
  [(IDSGFTMetricsCollector *)self->_metricsCollector reinitStart];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [(__CFDictionary *)Mutable setObject:&off_100C3BE48 forKeyedSubscript:IDSDSessionReportTransportTypeKey];
  [(__CFDictionary *)Mutable setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
  [(IDSDSession *)self addQREventForRTCReport:Mutable];
  sharedState2 = [(IDSDSession *)self sharedState];
  [sharedState2 setEnableSKE:0];

  qrAllocator = [(IDSDSession *)self qrAllocator];
  sharedState3 = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState3 uniqueID];
  [qrAllocator invalidateSession:uniqueID isExpiryPurging:0];

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sharedState4 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState4 uniqueID];
    *buf = 138412290;
    v20 = uniqueID2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate: disconnecting global link", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState5 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState5 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        sharedState6 = [(IDSDSession *)self sharedState];
        uniqueID3 = [sharedState6 uniqueID];
        _IDSLogV();
      }
    }
  }

  utunController = [(IDSDSession *)self utunController];
  sharedState7 = [(IDSDSession *)self sharedState];
  uniqueID4 = [sharedState7 uniqueID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003CB064;
  v18[3] = &unk_100BD9F28;
  v18[4] = self;
  [utunController disconnectGlobalLinkForDevice:uniqueID4 isReinitiating:1 completionHandler:v18];
}

- (void)receivedReinitiateMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = [messageCopy objectForKeyedSubscript:IDSDSessionMessageReinitiateSubcommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v8 integerValue];
    v10 = integerValue;
    if (integerValue <= 2)
    {
      if (integerValue == 1)
      {
        [(IDSDSession *)self _receivedReinitiateRequestMessage:messageCopy fromURI:iCopy];
        goto LABEL_10;
      }

      if (integerValue == 2)
      {
        [(IDSDSession *)self _receivedReinitiateTeardownMessage:messageCopy fromURI:iCopy];
        goto LABEL_10;
      }
    }

    else
    {
      switch(integerValue)
      {
        case 3:
          [(IDSDSession *)self _receivedReinitiateTeardownAckMessage:messageCopy fromURI:iCopy];
          goto LABEL_10;
        case 4:
          [(IDSDSession *)self _receivedReinitiateBringupMessage:messageCopy fromURI:iCopy];
          goto LABEL_10;
        case 5:
          [(IDSDSession *)self _receivedReinitiateBringupAckMessage:messageCopy fromURI:iCopy];
          goto LABEL_10;
      }
    }

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithInteger:v10];
      sharedState = [(IDSDSession *)self sharedState];
      uniqueID = [sharedState uniqueID];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = uniqueID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled reinitiate subcommand type %@ for session %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v16 = [NSNumber numberWithInteger:v10];
        sharedState2 = [(IDSDSession *)self sharedState];
        uniqueID2 = [sharedState2 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v18 = [NSNumber numberWithInteger:v10, v16, uniqueID2];
          sharedState3 = [(IDSDSession *)self sharedState];
          uniqueID3 = [sharedState3 uniqueID];
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v11 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10091AD24();
    }
  }

LABEL_10:
}

- (void)_receivedReinitiateRequestMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    sharedState2 = [(IDSDSession *)self sharedState];
    isInitiator = [sharedState2 isInitiator];
    v13 = @"NO";
    *buf = 138412802;
    v49 = uniqueID;
    v50 = 2112;
    if (isInitiator)
    {
      v13 = @"YES";
    }

    v51 = messageCopy;
    v52 = 2112;
    v53 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reinitiate request message received for session %@: %@, isInitiator: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    uniqueID2 = [sharedState3 uniqueID];
    sharedState4 = [(IDSDSession *)self sharedState];
    v17 = [sharedState4 isInitiator] ? @"YES" : @"NO";
    v45 = messageCopy;
    v47 = v17;
    v42 = uniqueID2;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      v18 = [(IDSDSession *)self sharedState:uniqueID2];
      uniqueID3 = [v18 uniqueID];
      sharedState5 = [(IDSDSession *)self sharedState];
      if ([sharedState5 isInitiator])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v45 = messageCopy;
      v47 = v21;
      v42 = uniqueID3;
      _IDSLogV();
    }
  }

  v22 = [(IDSDSession *)self sharedState:v42];
  supportsReinitiate = [v22 supportsReinitiate];

  if (supportsReinitiate)
  {
    sharedState6 = [(IDSDSession *)self sharedState];
    v25 = [sharedState6 state] == 5;

    if (v25)
    {
      [(IDSDSession *)self _startReinitiateAsInitiator];
    }

    else
    {
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        sharedState7 = [(IDSDSession *)self sharedState];
        uniqueID4 = [sharedState7 uniqueID];
        sharedState8 = [(IDSDSession *)self sharedState];
        state = [sharedState8 state];
        *buf = 138412546;
        v49 = uniqueID4;
        v50 = 1024;
        LODWORD(v51) = state;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate request message, but our current state is not connected (current state: %u)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState9 = [(IDSDSession *)self sharedState];
          uniqueID5 = [sharedState9 uniqueID];
          sharedState10 = [(IDSDSession *)self sharedState];
          state2 = [sharedState10 state];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v39 = [(IDSDSession *)self sharedState:uniqueID5];
            uniqueID6 = [v39 uniqueID];
            sharedState11 = [(IDSDSession *)self sharedState];
            [sharedState11 state];
            _IDSLogV();
          }
        }
      }
    }
  }

  else
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sharedState12 = [(IDSDSession *)self sharedState];
      uniqueID7 = [sharedState12 uniqueID];
      *buf = 138412290;
      v49 = uniqueID7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate request message, but we don't support reinitiate", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState13 = [(IDSDSession *)self sharedState];
        uniqueID8 = [sharedState13 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState14 = [(IDSDSession *)self sharedState];
          uniqueID9 = [sharedState14 uniqueID];
          _IDSLogV();
        }
      }
    }
  }
}

- (void)_receivedReinitiateTeardownMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v54 = uniqueID;
    v55 = 2112;
    v56 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reinitiate teardown message received for session %@: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v50 = messageCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v12 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v12 uniqueID];
        v50 = messageCopy;
        _IDSLogV();
      }
    }
  }

  v13 = [(IDSDSession *)self sharedState:uniqueID2];
  supportsReinitiate = [v13 supportsReinitiate];

  if (supportsReinitiate)
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    v16 = [sharedState3 state] == 5;

    if (v16)
    {
      sharedState4 = [(IDSDSession *)self sharedState];
      [sharedState4 setState:6];

      [(IDSGFTMetricsCollector *)self->_metricsCollector reinitStart];
      sharedState5 = [(IDSDSession *)self sharedState];
      [sharedState5 setEnableSKE:0];

      qrAllocator = [(IDSDSession *)self qrAllocator];
      sharedState6 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState6 uniqueID];
      [qrAllocator invalidateSession:uniqueID3 isExpiryPurging:0];

      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sharedState7 = [(IDSDSession *)self sharedState];
        uniqueID4 = [sharedState7 uniqueID];
        *buf = 138412290;
        v54 = uniqueID4;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate teardown: disconnecting global link", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState8 = [(IDSDSession *)self sharedState];
          uniqueID5 = [sharedState8 uniqueID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            sharedState9 = [(IDSDSession *)self sharedState];
            uniqueID5 = [sharedState9 uniqueID];
            _IDSLogV();
          }
        }
      }

      utunController = [(IDSDSession *)self utunController];
      sharedState10 = [(IDSDSession *)self sharedState];
      uniqueID6 = [sharedState10 uniqueID];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1003CC254;
      v52[3] = &unk_100BD9F28;
      v52[4] = self;
      [utunController disconnectGlobalLinkForDevice:uniqueID6 isReinitiating:1 completionHandler:v52];
    }

    else
    {
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        sharedState11 = [(IDSDSession *)self sharedState];
        uniqueID7 = [sharedState11 uniqueID];
        sharedState12 = [(IDSDSession *)self sharedState];
        state = [sharedState12 state];
        *buf = 138412546;
        v54 = uniqueID7;
        v55 = 1024;
        LODWORD(v56) = state;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate teardown message, but our current state is not connected (current state: %u)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          sharedState13 = [(IDSDSession *)self sharedState];
          uniqueID8 = [sharedState13 uniqueID];
          sharedState14 = [(IDSDSession *)self sharedState];
          state2 = [sharedState14 state];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v43 = [(IDSDSession *)self sharedState:uniqueID8];
            uniqueID9 = [v43 uniqueID];
            sharedState15 = [(IDSDSession *)self sharedState];
            [sharedState15 state];
            _IDSLogV();
          }
        }
      }
    }
  }

  else
  {
    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sharedState16 = [(IDSDSession *)self sharedState];
      uniqueID10 = [sharedState16 uniqueID];
      *buf = 138412290;
      v54 = uniqueID10;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate teardown message, but we don't support reinitiate", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState17 = [(IDSDSession *)self sharedState];
        uniqueID11 = [sharedState17 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState18 = [(IDSDSession *)self sharedState];
          uniqueID12 = [sharedState18 uniqueID];
          _IDSLogV();
        }
      }
    }
  }
}

- (void)_receivedReinitiateTeardownAckMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v69 = uniqueID;
    v70 = 2112;
    v71 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reinitiate teardown ack message received for session %@: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v51 = messageCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v9 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v9 uniqueID];
        v51 = messageCopy;
        _IDSLogV();
      }
    }
  }

  v10 = [(IDSDSession *)self sharedState:uniqueID2];
  v11 = [v10 state] == 6;

  if (v11)
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    sharedSession = [sharedState3 sharedSession];

    sharedState4 = [(IDSDSession *)self sharedState];
    v15 = sharedState4;
    if (sharedSession)
    {
      theDict = [sharedState4 getQuickRelayAllocateOptions:&off_100C3BC80];

      sharedState5 = [(IDSDSession *)self sharedState];
      groupID = [sharedState5 groupID];

      if (groupID)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_GroupID, groupID);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091A7EC();
      }

      v29 = IDSGroupSessionForceQRSession;
      if (v29)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_TestOptions, v29);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091AA70();
      }

      selfCopy2 = self;
      self->_shouldConnectToQRServer = 1;
    }

    else
    {
      theDict = [sharedState4 getQuickRelayAllocateOptions:&off_100C3BC20];

      selfCopy2 = self;
    }

    qrAllocator = [(IDSDSession *)selfCopy2 qrAllocator];
    sharedState6 = [(IDSDSession *)self sharedState];
    uniqueID3 = [sharedState6 uniqueID];
    [qrAllocator clearResponseFromQRGroupID:uniqueID3];

    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      sharedState7 = [(IDSDSession *)self sharedState];
      uniqueID4 = [sharedState7 uniqueID];
      *buf = 138412290;
      v69 = uniqueID4;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate: setting up new QR allocation", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState8 = [(IDSDSession *)self sharedState];
        uniqueID5 = [sharedState8 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState9 = [(IDSDSession *)self sharedState];
          uniqueID5 = [sharedState9 uniqueID];
          _IDSLogV();
        }
      }
    }

    qrAllocator2 = [(IDSDSession *)self qrAllocator];
    sharedState10 = [(IDSDSession *)self sharedState];
    destinations = [sharedState10 destinations];
    allObjects = [destinations allObjects];
    sharedState11 = [(IDSDSession *)self sharedState];
    uniqueID6 = [sharedState11 uniqueID];
    v59 = +[IDSDAccountController sharedInstance];
    sharedState12 = [(IDSDSession *)self sharedState];
    accountID = [sharedState12 accountID];
    v57 = [v59 accountWithUniqueID:accountID];
    _registrationCert = [v57 _registrationCert];
    sharedState13 = [(IDSDSession *)self sharedState];
    fromURI = [sharedState13 fromURI];
    unprefixedURI = [fromURI unprefixedURI];
    _bestGuessURI = [unprefixedURI _bestGuessURI];
    v42 = +[IDSDAccountController sharedInstance];
    sharedState14 = [(IDSDSession *)self sharedState];
    accountID2 = [sharedState14 accountID];
    v45 = [v42 accountWithUniqueID:accountID2];
    service = [v45 service];
    identifier = [service identifier];
    v48 = [qrAllocator2 setupNewAllocation:allObjects sessionID:uniqueID6 fromIdentity:_registrationCert fromURI:_bestGuessURI fromService:identifier options:theDict connectReadyHandler:0];

    messenger = [(IDSDSession *)self messenger];
    [messenger sendReinitiateMessageWithSubcommand:4];
    goto LABEL_32;
  }

  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    sharedState15 = [(IDSDSession *)self sharedState];
    uniqueID7 = [sharedState15 uniqueID];
    sharedState16 = [(IDSDSession *)self sharedState];
    state = [sharedState16 state];
    *buf = 138412546;
    v69 = uniqueID7;
    v70 = 1024;
    LODWORD(v71) = state;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate teardown ack message, but our current state is not reinitiating (current state: %u)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState17 = [(IDSDSession *)self sharedState];
      uniqueID8 = [sharedState17 uniqueID];
      sharedState18 = [(IDSDSession *)self sharedState];
      state2 = [sharedState18 state];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        theDict = [(IDSDSession *)self sharedState:uniqueID8];
        messenger = [(__CFDictionary *)theDict uniqueID];
        sharedState19 = [(IDSDSession *)self sharedState];
        [sharedState19 state];
        _IDSLogV();

LABEL_32:
      }
    }
  }
}

- (void)_receivedReinitiateBringupMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v40 = uniqueID;
    v41 = 2112;
    v42 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reinitiate bringup message received for session %@: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v37 = messageCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v12 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v12 uniqueID];
        v37 = messageCopy;
        _IDSLogV();
      }
    }
  }

  v13 = [(IDSDSession *)self sharedState:uniqueID2];
  v14 = [v13 state] == 6;

  if (v14)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState3 uniqueID];
      *buf = 138412290;
      v40 = uniqueID3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %@ reinitiate bringup: requesting allocation for recipient", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        sharedState4 = [(IDSDSession *)self sharedState];
        uniqueID4 = [sharedState4 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          sharedState5 = [(IDSDSession *)self sharedState];
          uniqueID4 = [sharedState5 uniqueID];
          _IDSLogV();
        }
      }
    }

    qrAllocator = [(IDSDSession *)self qrAllocator];
    sharedState6 = [(IDSDSession *)self sharedState];
    uniqueID5 = [sharedState6 uniqueID];
    [qrAllocator requestAllocationForRecipient:uniqueID5];

    sharedState7 = [(IDSDSession *)self sharedState];
    [sharedState7 setState:5];

    [(IDSGFTMetricsCollector *)self->_metricsCollector reinitFinish];
    messenger = [(IDSDSession *)self messenger];
    [messenger sendReinitiateMessageWithSubcommand:5];
    goto LABEL_15;
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    sharedState8 = [(IDSDSession *)self sharedState];
    uniqueID6 = [sharedState8 uniqueID];
    sharedState9 = [(IDSDSession *)self sharedState];
    state = [sharedState9 state];
    *buf = 138412546;
    v40 = uniqueID6;
    v41 = 1024;
    LODWORD(v42) = state;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate bringup message, but our current state is not reintiating (current state: %u)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState10 = [(IDSDSession *)self sharedState];
      uniqueID7 = [sharedState10 uniqueID];
      sharedState11 = [(IDSDSession *)self sharedState];
      state2 = [sharedState11 state];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        messenger = [(IDSDSession *)self sharedState:uniqueID7];
        uniqueID8 = [messenger uniqueID];
        sharedState12 = [(IDSDSession *)self sharedState];
        [sharedState12 state];
        _IDSLogV();

LABEL_15:
      }
    }
  }
}

- (void)_receivedReinitiateBringupAckMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSession *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412546;
    v45 = uniqueID;
    v46 = 2112;
    v47 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reinitiate bringup ack message received for session %@: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      uniqueID2 = [sharedState2 uniqueID];
      v42 = messageCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v12 = [(IDSDSession *)self sharedState:uniqueID2];
        uniqueID2 = [v12 uniqueID];
        v42 = messageCopy;
        _IDSLogV();
      }
    }
  }

  v13 = [(IDSDSession *)self sharedState:uniqueID2];
  v14 = [v13 state] == 6;

  if (v14)
  {
    sharedState3 = [(IDSDSession *)self sharedState];
    sharedSession = [sharedState3 sharedSession];

    if ((sharedSession & 1) == 0)
    {
      pushToken = [iCopy pushToken];
      qrAllocator = [(IDSDSession *)self qrAllocator];
      sharedState4 = [(IDSDSession *)self sharedState];
      uniqueID3 = [sharedState4 uniqueID];
      rawToken = [pushToken rawToken];
      v22 = [qrAllocator getRelaySessionIDForIDSSessionID:uniqueID3 pushToken:rawToken];

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sharedState5 = [(IDSDSession *)self sharedState];
      v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState5 useSecureQRControlMessage]);

      if (v25)
      {
        CFDictionarySetValue(Mutable, IDSGlobalLinkOptionUseSecureControlMessageKey, v25);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919F70();
      }

      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v22;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Reinitiate accepted relay-session-id %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v41 = v22;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v41 = v22;
            _IDSLogV();
          }
        }
      }

      onTransportThread_globalLink = [(IDSDSession *)self onTransportThread_globalLink];
      [onTransportThread_globalLink setAcceptedRelaySession:v22 options:Mutable];
    }

    sharedState6 = [(IDSDSession *)self sharedState];
    [sharedState6 setState:5];

    [(IDSDSession *)self submitAWDMetricsForIDSSessionReinitiateConnected];
    v34 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [v34 setObject:&off_100C3BE60 forKeyedSubscript:IDSDSessionReportTransportTypeKey];
    [v34 setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    [(IDSDSession *)self addQREventForRTCReport:v34];
    [(IDSGFTMetricsCollector *)self->_metricsCollector reinitFinish];
    goto LABEL_27;
  }

  v26 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sharedState7 = [(IDSDSession *)self sharedState];
    uniqueID4 = [sharedState7 uniqueID];
    sharedState8 = [(IDSDSession *)self sharedState];
    state = [sharedState8 state];
    *buf = 138412546;
    v45 = uniqueID4;
    v46 = 1024;
    LODWORD(v47) = state;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Session %@ received reinitiate bringup ack message, but our current state is not reintiating (current state: %u)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState9 = [(IDSDSession *)self sharedState];
      uniqueID5 = [sharedState9 uniqueID];
      sharedState10 = [(IDSDSession *)self sharedState];
      state2 = [sharedState10 state];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v34 = [(IDSDSession *)self sharedState:uniqueID5];
        uniqueID6 = [v34 uniqueID];
        sharedState11 = [(IDSDSession *)self sharedState];
        [sharedState11 state];
        _IDSLogV();

LABEL_27:
      }
    }
  }
}

- (void)didSessionReinitiated
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@> IDSDSession didSessionReinitiated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy = self;
    _IDSLogV();
  }

  sharedState = [(IDSDSession *)self sharedState];
  if ([sharedState useQRDirectly])
  {
    goto LABEL_11;
  }

  sharedState2 = [(IDSDSession *)self sharedState];
  if ([sharedState2 clientType] == 1)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v7;
    v13 = v7;
    IDSByteBufferInitForWrite();
    IDSByteBufferWriteField();
    [IDSDSession writeToClientChannel:"writeToClientChannel:packetBuffer:metaData:metadataSize:" packetBuffer:self->_clientChannel metaData:0 metadataSize:?];
    IDSByteBufferRelease();
    return;
  }

  sharedState3 = [(IDSDSession *)self sharedState];
  if ([sharedState3 clientType] == 5)
  {

    goto LABEL_10;
  }

  sharedState4 = [(IDSDSession *)self sharedState];
  v9 = [sharedState4 clientType] == 6;

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@> need a client channel to send the event kClientChannelMetadataType_SessionReinitiated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)isWithDefaultPairedDevice
{
  sharedState = [(IDSDSession *)self sharedState];
  destinations = [sharedState destinations];
  allObjects = [destinations allObjects];
  lastObject = [allObjects lastObject];

  sharedState2 = [(IDSDSession *)self sharedState];
  LOBYTE(sharedState) = [sharedState2 destinationIsDefaultPairedDevice:lastObject];

  return sharedState;
}

- (void)invitationDeclined
{
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager sendCancelInvitationToDestinations:0 remoteEndReason:30 data:0];
}

- (void)sendCancelInvitationMessage
{
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager sendCancelInvitationToDestinations:0 remoteEndReason:0 data:0];
}

- (void)sendInvitationWithOptions:(id)options declineOnError:(BOOL)error
{
  errorCopy = error;
  optionsCopy = options;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager sendInvitationWithOptions:optionsCopy declineOnError:errorCopy];
}

- (void)sendInvitationWithData:(id)data declineOnError:(BOOL)error
{
  errorCopy = error;
  dataCopy = data;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager sendInvitationWithData:dataCopy declineOnError:errorCopy];
}

- (void)cancelInvitation
{
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager cancelInvitation];
}

- (void)cancelInvitationWithData:(id)data
{
  dataCopy = data;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager cancelInvitationWithData:dataCopy];
}

- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)override
{
  v3 = *&override;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager cancelInvitationWithRemoteEndedReasonOverride:v3];
}

- (void)acceptInvitation
{
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager acceptInvitation];
}

- (void)acceptInvitationWithData:(id)data
{
  dataCopy = data;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager acceptInvitationWithData:dataCopy];
}

- (void)declineInvitation
{
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager declineInvitation];
}

- (void)declineInvitationWithData:(id)data
{
  dataCopy = data;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager declineInvitationWithData:dataCopy];
}

- (void)declineInvitationWithData:(id)data forceFromURI:(id)i additionalMessageAttributes:(id)attributes
{
  attributesCopy = attributes;
  iCopy = i;
  dataCopy = data;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager declineInvitationWithData:dataCopy forceFromURI:iCopy additionalMessageAttributes:attributesCopy];
}

- (void)sendSessionMessage:(id)message toDestinations:(id)destinations
{
  destinationsCopy = destinations;
  messageCopy = message;
  messenger = [(IDSDSession *)self messenger];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003CE0BC;
  v10[3] = &unk_100BD7530;
  v10[4] = self;
  v9 = [destinationsCopy __imSetByApplyingBlock:v10];

  [messenger sendSessionMessage:messageCopy toDestinations:v9];
}

- (void)receivedAcceptMessage:(id)message fromURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager receivedAcceptMessage:messageCopy fromURI:iCopy];
}

- (void)receivedDeclineMessage:(id)message fromURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager receivedDeclineMessage:messageCopy fromURI:iCopy];
}

- (void)receivedCancelMessage:(id)message fromURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager receivedCancelMessage:messageCopy fromURI:iCopy];
}

- (void)receivedSessionMessage:(id)message fromURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  messenger = [(IDSDSession *)self messenger];
  [messenger receivedSessionMessage:messageCopy fromURI:iCopy];
}

- (void)receivedEndMessage:(id)message fromURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  messenger = [(IDSDSession *)self messenger];
  [messenger receivedEndMessage:messageCopy fromURI:iCopy];
}

- (void)setRemoteBlob:(id)blob
{
  blobCopy = blob;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager setRemoteBlob:blobCopy];
}

- (void)setInviteTimeout:(int64_t)timeout
{
  timeoutCopy = timeout;
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState setInviteTimeout:timeoutCopy];
}

- (void)setQuickRelaySessionToken:(id)token
{
  tokenCopy = token;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager setQuickRelaySessionToken:tokenCopy];
}

- (void)setRemoteUseCloudPairedControlChannel:(id)channel
{
  channelCopy = channel;
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState setRemoteUseCloudPairedControlChannel:channelCopy];
}

- (void)setRemoteUsePhoneContinuityLocalMessage:(id)message
{
  messageCopy = message;
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState setRemoteUseCloudPairedControlChannel:messageCopy];
}

- (void)setSSRCRecv:(unsigned int)recv
{
  v3 = *&recv;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager setSSRCRecv:v3];
}

- (void)setSeqRecvStart:(unsigned int)start
{
  v3 = *&start;
  invitationManager = [(IDSDSession *)self invitationManager];
  [invitationManager setSeqRecvStart:v3];
}

- (IDSDGroupStatusNotificationController)groupStatusNotificationController
{
  groupStatusNotificationController = self->_groupStatusNotificationController;
  if (groupStatusNotificationController)
  {
    v3 = groupStatusNotificationController;
  }

  else
  {
    v3 = +[IDSDGroupStatusNotificationController sharedInstance];
  }

  return v3;
}

- (NSSet)destinations
{
  sharedState = [(IDSDSession *)self sharedState];
  destinations = [sharedState destinations];

  return destinations;
}

- (id)destinationsLightweightStatus
{
  sharedState = [(IDSDSession *)self sharedState];
  destinationsLightweightStatus = [sharedState destinationsLightweightStatus];

  return destinationsLightweightStatus;
}

- (id)uniqueID
{
  sharedState = [(IDSDSession *)self sharedState];
  uniqueID = [sharedState uniqueID];

  return uniqueID;
}

- (BOOL)isInitiator
{
  sharedState = [(IDSDSession *)self sharedState];
  isInitiator = [sharedState isInitiator];

  return isInitiator;
}

- (BOOL)enableQuickRelay
{
  sharedState = [(IDSDSession *)self sharedState];
  enableQuickRelay = [sharedState enableQuickRelay];

  return enableQuickRelay;
}

- (int64_t)clientType
{
  sharedState = [(IDSDSession *)self sharedState];
  clientType = [sharedState clientType];

  return clientType;
}

- (id)participantID
{
  sharedState = [(IDSDSession *)self sharedState];
  participantID = [sharedState participantID];

  return participantID;
}

- (id)accountID
{
  sharedState = [(IDSDSession *)self sharedState];
  accountID = [sharedState accountID];

  return accountID;
}

- (id)groupID
{
  sharedState = [(IDSDSession *)self sharedState];
  groupID = [sharedState groupID];

  return groupID;
}

- (id)fromURI
{
  sharedState = [(IDSDSession *)self sharedState];
  fromURI = [sharedState fromURI];

  return fromURI;
}

- (unsigned)state
{
  sharedState = [(IDSDSession *)self sharedState];
  state = [sharedState state];

  return state;
}

- (BOOL)isScreenSharingSession
{
  sharedState = [(IDSDSession *)self sharedState];
  isScreenSharingSession = [sharedState isScreenSharingSession];

  return isScreenSharingSession;
}

- (void)_setClientType:(int64_t)type
{
  sharedState = [(IDSDSession *)self sharedState];
  [sharedState setClientType:type];
}

- (BOOL)_useBTDatagramPipe
{
  sharedState = [(IDSDSession *)self sharedState];
  useBTDatagramPipe = [sharedState useBTDatagramPipe];

  return useBTDatagramPipe;
}

- (unint64_t)connectionCountHint
{
  sharedState = [(IDSDSession *)self sharedState];
  connectionCountHint = [sharedState connectionCountHint];

  return connectionCountHint;
}

- (NSArray)requiredCapabilities
{
  sharedState = [(IDSDSession *)self sharedState];
  requiredCapabilities = [sharedState requiredCapabilities];

  return requiredCapabilities;
}

- (NSArray)requiredLackOfCapabilities
{
  sharedState = [(IDSDSession *)self sharedState];
  requiredLackOfCapabilities = [sharedState requiredLackOfCapabilities];

  return requiredLackOfCapabilities;
}

- (BOOL)_shouldSubmitMetricsForThisSession
{
  awdStartTimestamp = self->_awdStartTimestamp;
  if (!awdStartTimestamp)
  {
    v4 = +[NSDate date];
    v5 = self->_awdStartTimestamp;
    self->_awdStartTimestamp = v4;

    awdStartTimestamp = self->_awdStartTimestamp;
  }

  sharedState = [(IDSDSession *)self sharedState];
  v7 = -[IDSDSession _shouldSubmitMetricsBasedOnDate:isInitiator:](self, "_shouldSubmitMetricsBasedOnDate:isInitiator:", awdStartTimestamp, [sharedState isInitiator]);

  return v7;
}

- (BOOL)_shouldSubmitMetricsBasedOnDate:(id)date isInitiator:(BOOL)initiator
{
  initiatorCopy = initiator;
  dateCopy = date;
  v6 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v7 = [[NSTimeZone alloc] initWithName:@"GMT"];
  [v6 setTimeZone:v7];
  v8 = [v6 components:112 fromDate:dateCopy];

  v9 = [v8 day];
  hour = [v8 hour];
  minute = [v8 minute];
  if (hour == 23 && minute > 54)
  {
    v12 = 0;
  }

  else
  {
    v13 = (v9 & 1) == 0;
    if (initiatorCopy)
    {
      v13 = (v9 & 0x8000000000000001) == 1;
    }

    if (hour)
    {
      v14 = 0;
    }

    else
    {
      v14 = minute < 6;
    }

    v12 = !v14 && v13;
  }

  return v12;
}

- (void)submitAWDMetricsForIDSSessionStarted
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v3 = [IDSSessionStartedMetric alloc];
    awdUniqueId = self->_awdUniqueId;
    sharedState = [(IDSDSession *)self sharedState];
    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sharedState peerProtocolVersion]);
    sharedState2 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState2 serviceName];
    sharedState3 = [(IDSDSession *)self sharedState];
    v18 = [v3 initWithGuid:awdUniqueId protocolVersionNumber:v6 serviceName:serviceName clientType:{objc_msgSend(sharedState3, "clientType")}];

    v10 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v10 logMetric:v18];

    v11 = +[IDSAWDLogging sharedInstance];
    v12 = self->_awdUniqueId;
    sharedState4 = [(IDSDSession *)self sharedState];
    v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sharedState4 peerProtocolVersion]);
    sharedState5 = [(IDSDSession *)self sharedState];
    serviceName2 = [sharedState5 serviceName];
    sharedState6 = [(IDSDSession *)self sharedState];
    [v11 sessionStartedWithAWDGUID:v12 protocolVersionNumber:v14 serviceName:serviceName2 clientType:{objc_msgSend(sharedState6, "clientType")}];
  }
}

- (void)submitAWDMetricsForIDSSessionInvitationSentWithNumberOfRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v4 = [[IDSSessionInvitationSentMetric alloc] initWithGuid:self->_awdUniqueId numberOfRecipients:recipientsCopy];
    v5 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v5 logMetric:v4];

    v6 = +[IDSAWDLogging sharedInstance];
    [v6 sessionInvitationSentWithAWDGUID:self->_awdUniqueId numberOfRecipients:recipientsCopy];
  }
}

- (void)submitAWDMetricsForIDSSessionInvitationReceived
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionInvitationReceivedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionInvitationReceivedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionCancelSentWithRemoteEndReason:(unsigned int)reason numberOfRecipients:(id)recipients
{
  v4 = *&reason;
  recipientsCopy = recipients;
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v6 = [[IDSSessionCancelSentMetric alloc] initWithGuid:self->_awdUniqueId numberOfRecipients:recipientsCopy remoteSessionEndReason:v4];
    v7 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v7 logMetric:v6];

    v8 = +[IDSAWDLogging sharedInstance];
    [v8 sessionCancelSentWithAWDGUID:self->_awdUniqueId numberOfRecipients:recipientsCopy remoteSessionEndReason:v4];
  }
}

- (void)submitAWDMetricsForIDSSessionCancelReceived
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionCanceledMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionCancelReceivedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionDeclineSent
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionDeclineSentMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionDeclineSentWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionDeclineReceived
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionDeclineReceivedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionDeclineReceivedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionAcceptSent
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionAcceptSentMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionAcceptSentWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionAcceptReceived
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionAcceptReceivedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionAcceptReceivedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionConnected
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionConnectedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionConnectedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionReinitiateRequested
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionReinitiateRequestedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionReinitiateRequestedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionReinitiateStarted
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionReinitiateStartedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionReinitiateStartedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionReinitiateConnected
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    v5 = [[IDSSessionReinitiateConnectedMetric alloc] initWithGuid:self->_awdUniqueId];
    v3 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v3 logMetric:v5];

    v4 = +[IDSAWDLogging sharedInstance];
    [v4 sessionReinitiateConnectedWithAWDGUID:self->_awdUniqueId];
  }
}

- (void)submitAWDMetricsForIDSSessionCompleted
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    sharedState = [(IDSDSession *)self sharedState];
    destinations = [sharedState destinations];
    v34 = [IDSDestination destinationWithDestinations:destinations];

    v28 = sub_1004B67B0(v34);
    v30 = [IDSSessionCompleted alloc];
    awdUniqueId = self->_awdUniqueId;
    sharedState2 = [(IDSDSession *)self sharedState];
    v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sharedState2 peerProtocolVersion]);
    sharedState3 = [(IDSDSession *)self sharedState];
    serviceName = [sharedState3 serviceName];
    sharedState4 = [(IDSDSession *)self sharedState];
    clientType = [sharedState4 clientType];
    sharedState5 = [(IDSDSession *)self sharedState];
    enableQuickRelay = [sharedState5 enableQuickRelay];
    sharedState6 = [(IDSDSession *)self sharedState];
    useQRDirectly = [sharedState6 useQRDirectly];
    sharedState7 = [(IDSDSession *)self sharedState];
    isInitiator = [sharedState7 isInitiator];
    sharedState8 = [(IDSDSession *)self sharedState];
    isScreenSharingSession = [sharedState8 isScreenSharingSession];
    isWithDefaultPairedDevice = [(IDSDSession *)self isWithDefaultPairedDevice];
    sharedState9 = [(IDSDSession *)self sharedState];
    transportType = [sharedState9 transportType];
    initialLinkType = self->_initialLinkType;
    linkProtocol = self->_linkProtocol;
    reason = self->_reason;
    sessionDuration = [(IDSDSession *)self sessionDuration];
    connectDuration = [(IDSDSession *)self connectDuration];
    BYTE1(v17) = self->_disallowCellularInterface;
    LOBYTE(v17) = self->_disallowWifiInterface;
    HIDWORD(v16) = transportType;
    BYTE2(v16) = isWithDefaultPairedDevice;
    BYTE1(v16) = isScreenSharingSession;
    LOBYTE(v16) = isInitiator;
    v14 = [v30 initWithGuid:awdUniqueId protocolVersionNumber:v26 serviceName:serviceName clientType:clientType isQREnabled:enableQuickRelay isUsingQRDirectly:useQRDirectly isInitiator:v16 isScreenSharingSessionType:__PAIR64__(linkProtocol isWithDefaultPairedDevice:initialLinkType) transportType:__PAIR64__(v28 linkType:reason) linkProtocol:sessionDuration endedReason:connectDuration destinationType:v17 durationOfSession:? durationToConnect:? isWifiInterfaceDisallowed:? isCellularInterfaceDisallowed:?];

    v15 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v15 logMetric:v14];
  }
}

- (void)submitAWDMetricsForIDSSessionWithEndReason:(unsigned int)reason
{
  if ([(IDSDSession *)self _shouldSubmitMetricsForThisSession])
  {
    reasonCopy = reason;
    sharedState = [(IDSDSession *)self sharedState];
    connection = [sharedState connection];
    natType = [connection natType];

    if (qword_100CBF098 != -1)
    {
      sub_100929CBC();
    }

    if (qword_100CBF0A0)
    {
      sharedState2 = [(IDSDSession *)self sharedState];
      error = [sharedState2 error];
      userInfo = [error userInfo];
      v10 = [userInfo objectForKey:qword_100CBF0A0];
      intValue = [v10 intValue];
    }

    else
    {
      intValue = 0xFFFFFFFFLL;
    }

    v36 = [NSNumber numberWithInt:intValue];
    if (qword_100CBF0A8 != -1)
    {
      sub_100929CD0();
    }

    if (qword_100CBF0B0)
    {
      sharedState3 = [(IDSDSession *)self sharedState];
      error2 = [sharedState3 error];
      userInfo2 = [error2 userInfo];
      v15 = [userInfo2 objectForKey:qword_100CBF0B0];
      intValue2 = [v15 intValue];
    }

    else
    {
      intValue2 = 0xFFFFFFFFLL;
    }

    v32 = [NSNumber numberWithInt:intValue2];
    v33 = [IDSSessionEndedMetric alloc];
    sharedState4 = [(IDSDSession *)self sharedState];
    error3 = [sharedState4 error];
    code = [error3 code];
    sessionDuration = [(IDSDSession *)self sessionDuration];
    connectDuration = [(IDSDSession *)self connectDuration];
    sharedState5 = [(IDSDSession *)self sharedState];
    connection2 = [sharedState5 connection];
    connectionType = [connection2 connectionType];
    v24 = [NSNumber numberWithUnsignedInteger:natType];
    sharedState6 = [(IDSDSession *)self sharedState];
    LOBYTE(v30) = [sharedState6 isInitiator];
    BYTE4(v29) = 0;
    LODWORD(v29) = connectionType;
    LODWORD(v28) = 0;
    v26 = [v33 initWithGuid:0 endedReason:reasonCopy genericError:code gameKitError:0 conferenceMiscError:0 callDuration:sessionDuration networkCheckResult:v28 dataRate:&off_100C3CAD8 gksError:v36 connectDuration:connectDuration remoteNetworkConnection:0x200000002 localNetworkConnection:v29 connectionType:v24 usesRelay:&off_100C3CAF0 currentNATType:0 remoteNATType:v30 relayConnectDuration:&off_100C3CB08 isInitiator:v32 linkQuality:? gksReturnCode:?];

    v27 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v27 logMetric:v26];
  }
}

@end
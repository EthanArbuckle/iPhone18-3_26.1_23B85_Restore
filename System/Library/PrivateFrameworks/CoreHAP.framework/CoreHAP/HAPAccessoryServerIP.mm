@interface HAPAccessoryServerIP
+ (id)_parseSerializedAccessoryDictionary:(id)dictionary server:(id)server;
+ (id)logCategory;
+ (id)sharedPairOperationQueue;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_isSessionEstablished;
- (BOOL)_matchesError:(id)error withHAPErrorCode:(int64_t)code;
- (BOOL)_matchesError:(id)error withHAPHMErrorCode:(int64_t)code;
- (BOOL)_parseAndValidateTXTRecord;
- (BOOL)_parseTXTRecordDictionary:(id)dictionary;
- (BOOL)_processEvent:(id)event matchedCharacteristic:(id *)characteristic;
- (BOOL)_shouldConnectBasedOnDisconnectOnIdle;
- (BOOL)_shouldNotifyClientsOfPVFailure:(id)failure;
- (BOOL)_updateAccessories:(id)accessories;
- (BOOL)_validateProtocolInfo:(id)info;
- (BOOL)hasBonjourDeviceInfo;
- (BOOL)isBonjourDiscoveryPending;
- (BOOL)isEstablishingSecureConnection;
- (BOOL)isPaired;
- (BOOL)isPostSoftAuthWacStarted;
- (BOOL)isPreSoftAuthWacStarted;
- (BOOL)isSecuritySessionOpen;
- (BOOL)isSessionEstablished;
- (BOOL)isWacAccessory;
- (BOOL)isWacComplete;
- (BOOL)isWacLegacy;
- (BOOL)isWacNeeded;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error;
- (HAPAccessoryServerBrowserIP)browser;
- (HAPAccessoryServerIP)initWithBonjourDeviceInfo:(id)info keyStore:(id)store browser:(id)browser discoveryMethod:(unint64_t)method;
- (HAPAccessoryServerIP)initWithHAPWACAccessory:(id)accessory keystore:(id)keystore browser:(id)browser;
- (HAPAccessoryServerIP)initWithKeyStore:(id)store browser:(id)browser discoveryMethod:(unint64_t)method;
- (HAPSocketInfo)currentSocketInfo;
- (HAPWACAccessory)hapWACAccessory;
- (HMFNetAddress)peerAddress;
- (HMFNetAddress)peerAddressEx;
- (NSDictionary)bonjourDeviceInfo;
- (NSString)description;
- (NSString)model;
- (NSString)peerEndpointDescription;
- (NSString)sourceVersion;
- (double)_getReachabilityTimeoutValue;
- (double)_getReachabilityTimeoutValueWithSleepInterval:(id)interval;
- (double)remainingTTLForExpiry:(id)expiry;
- (id)_joinAccessoryNetworkWithCompletion:(id)completion;
- (id)_queuedReadOperationBlock:(id)block timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (id)_queuedWriteOperationBlock:(id)block timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (id)_serializeCharacteristicWriteRequestTuples:(void *)tuples error:;
- (id)_startReachabilityEventTimer;
- (id)getAddressTypeWithSocketInfo:(id)info;
- (id)primaryAccessory;
- (id)readAndResetHAPMetrics:(BOOL)metrics;
- (id)services;
- (int)_continuePairingAfterAuthPromptWithRetry:(BOOL)retry;
- (int)_continuePairingWithSetupCode:(id)code;
- (int)_doEnsureHTTPClientSetUp;
- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)type;
- (int)_handlePairSetupCompletionWithData:(id)data;
- (int)_handlePairVerifyCompletionWithData:(id)data;
- (int)_pairSetupStartWithConsentRequired:(BOOL)required;
- (int)_pairSetupTryPassword:(id)password;
- (int)_pairVerifyStartWithRetry:(BOOL)retry;
- (int)_promptForSetupCodeWithFlags:(unsigned int)flags delaySeconds:(int)seconds pairingFlags:(unsigned int)pairingFlags isWAC:(BOOL)c;
- (int)getBonjourDeviceDNSName:(id *)name;
- (int64_t)_socketUpdateTypeForCachedSocketInfo:(id)info newSocketInfo:(id)socketInfo;
- (unint64_t)abruptDisconnectionCounter;
- (unint64_t)consecutivePairVerifyFailureCount;
- (unint64_t)statusFlags;
- (unsigned)_getNameResolutionGroupResolveTimeout;
- (void)__registerForInternalCharacteristicNotifications;
- (void)_accessoryDidBecomeUnreachable:(id)unreachable;
- (void)_cancelNameResolution;
- (void)_clearIPCacheOnError:(id)error;
- (void)_continuePairingAfterConfirmingSecureWAC:(id)c;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_continuePairingAfterWAC:(id)c;
- (void)_continuePairingUsingWAC;
- (void)_doBonjourReconfirm;
- (void)_doPollForAccessory:(id)accessory;
- (void)_doReachabilityWithError:(id)error forAccessory:(id)accessory;
- (void)_doResolveWithGroup:(id)group;
- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)_error:(id)_error forReadCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler;
- (void)_error:(id)_error forWriteCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler;
- (void)_establishSecureConnectionAndFetchAttributeDatabaseWithReason:(id)reason;
- (void)_establishSecureSession;
- (void)_establishSecureSessionAndRemovePairing:(id)pairing queue:(id)queue completion:(id)completion;
- (void)_getAttributeDatabase;
- (void)_handleConnectionIdleTimeout;
- (void)_handleListPairingsResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status httpError:(id)error completionQueue:(id)queue completionHandler:(id)handler;
- (void)_handleMFiCertValidation;
- (void)_handlePairSetupAfterM4Callback;
- (void)_handlePairingsResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status httpError:(id)error removeRequest:(BOOL)request completionQueue:(id)queue completionBlock:(id)block;
- (void)_handlePrepareWriteResponseObject:(id)object type:(unint64_t)type prepareIdentifier:(id)identifier httpStatus:(int)status error:(id)error requestTuples:(id)tuples timeout:(double)timeout expiry:(id)self0 queue:(id)self1 originalCompletion:(id)self2 completion:(id)self3;
- (void)_handleReadECONNRESETError:(id)error readCharacteristics:(id)characteristics responses:(id)responses timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_handleReadResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status error:(id)error characteristics:(id)characteristics completion:(id)completion;
- (void)_handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)_handleWriteECONNResetError:(id)error writeRequests:(id)requests responses:(id)responses timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_handleWriteResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status error:(id)error requestTuples:(id)tuples completion:(id)completion;
- (void)_httpClientDidCloseConnectionDueToServer:(id)server;
- (void)_incrementPairVerifyFailureCount;
- (void)_indicateSessionActivityWithReason:(id)reason;
- (void)_insertReadCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_insertWriteCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue withCompletionHandler:(id)handler;
- (void)_invalidateWAC;
- (void)_invokePairVerifyCompletionBlock:(id)block;
- (void)_isAccessoryPublicKeyPresent:(BOOL *)present registeredWithHomeKit:(BOOL *)kit;
- (void)_kickConnectionIdleTimer;
- (void)_listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)_notifyDelegateNeedsOwnershipToken;
- (void)_notifyDelegateOfDiscoveryCompletionWithError:(id)error;
- (void)_notifyDelegateOfPairingProgress:(int64_t)progress;
- (void)_notifyDelegatesOfAddAccessoryFailureWithError:(id)error;
- (void)_notifyDelegatesOfConnectionState:(BOOL)state withError:(id)error;
- (void)_notifyDelegatesPairingStopped:(id)stopped;
- (void)_pairSetupContinueWAC;
- (void)_pairVerifyStartWAC:(id)c;
- (void)_parseAttributeDatabase:(id)database transaction:(id)transaction;
- (void)_performExecuteWriteValues:(id)values prepareIdentifier:(id)identifier timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_performTimedWriteValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_performWriteValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_pollAccessory;
- (void)_populateSocketUpdateType;
- (void)_processQueuedOperationsWithError:(id)error;
- (void)_queueAddPairingWithIdentifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion;
- (void)_queueEnableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)_queueListPairingWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)_queueReadCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_queueWriteCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue withCompletionHandler:(id)handler;
- (void)_readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)_removePairingWithIdentifier:(id)identifier publicKey:(id)key queue:(id)queue completion:(id)completion;
- (void)_requestResource:(id)resource queue:(id)queue completionHandler:(id)handler;
- (void)_reset;
- (void)_sendRemovePairingWithData:(id)data queue:(id)queue completion:(id)completion;
- (void)_skipReconfirm;
- (void)_startConnectionIdleTimer;
- (void)_startReachability;
- (void)_stopReachability;
- (void)_stopReachabilityTimer;
- (void)_suspendConnectionIdleTimer;
- (void)_tearDownSessionAndStartReachabilityWithError:(id)error;
- (void)_tearDownSessionWithError:(id)error;
- (void)_tearDownWAC;
- (void)_updateCacheForDevice:(id)device socketInfo:(id)info bonjour:(id)bonjour;
- (void)_updateProtocolVersionFromPrimaryAccessory:(id)accessory;
- (void)_updateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)_validatePairingAuthMethod:(id)method activity:(id)activity;
- (void)_validateReachabilityTimer;
- (void)_writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler;
- (void)addActiveSession:(int64_t)session;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)authSession:(id)session authComplete:(id)complete;
- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token;
- (void)authSession:(id)session confirmUUID:(id)d token:(id)token;
- (void)authSession:(id)session sendAuthExchangeData:(id)data;
- (void)authSession:(id)session validateUUID:(id)d token:(id)token;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)createKeysForDataStreamWithKeySalt:(id)salt completionHandler:(id)handler;
- (void)dealloc;
- (void)disconnectOnIdleUpdated;
- (void)disconnectWithError:(id)error;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)ensureNetworkMonitor;
- (void)getAccessoryInfo:(id)info;
- (void)handleHTTPClientUnavailableErrorWithCompletion:(id)completion serializationType:(unint64_t)type;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)hapWACAccessoryClient:(id)client wacProgress:(unint64_t)progress;
- (void)httpClient:(id)client didReceiveEvent:(id)event;
- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)httpClient:(id)client didReceiveSocketEvent:(unint64_t)event;
- (void)httpClient:(id)client didStartConnectingToNetAddress:(id)address;
- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)httpClientDidCloseConnectionDueToServer:(id)server;
- (void)identifyWithCompletion:(id)completion;
- (void)incrementHAPIPHTTPEventsCount;
- (void)incrementHAPIPHTTPRequestsCount;
- (void)incrementHAPIPHTTPResponsesCount;
- (void)incrementHAPIPInvalidationCount;
- (void)invalidateWithCompletionHandler:(id)handler;
- (void)invokePairVerifyCompletionBlock:(id)block;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)pairSetupStartSoftAuthWAC;
- (void)pollAccessory;
- (void)processPendingBonjourRemoveEvents;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)reconfirm;
- (void)removeActiveSession:(int64_t)session;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)requestResource:(id)resource queue:(id)queue completionHandler:(id)handler;
- (void)resetPairVerifyFailureCount;
- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler;
- (void)sendPOSTRequestToURL:(id)l request:(id)request serializationType:(unint64_t)type completionHandler:(id)handler;
- (void)sendPUTRequestToURL:(id)l request:(id)request serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler;
- (void)setAbruptDisconnectionCounter:(unint64_t)counter;
- (void)setBonjourDeviceInfo:(id)info;
- (void)setBonjourDiscoveryPending:(BOOL)pending;
- (void)setCachedSocketInfo:(id)info;
- (void)setEstablishingSecureConnection:(BOOL)connection;
- (void)setModel:(id)model;
- (void)setPairVerifyCompletionBlock:(id)block;
- (void)setPostSoftAuthWacStarted:(BOOL)started;
- (void)setPreSoftAuthWacStarted:(BOOL)started;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)setSourceVersion:(id)version;
- (void)setStatusFlags:(unint64_t)flags;
- (void)setWacAccessory:(BOOL)accessory;
- (void)setWacComplete:(BOOL)complete;
- (void)setWacLegacy:(BOOL)legacy;
- (void)startPairingWithRequest:(id)request;
- (void)startPing;
- (void)startReprovisioningWithPairingRequest:(id)request;
- (void)stopPing;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)fire;
- (void)updateActiveDisconnectOnIdleTimeout:(double)timeout;
- (void)updateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)updateWithHAPWACAccessory:(id)accessory;
- (void)validatePairingAuthMethod:(id)method;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessoryServerIP

- (HAPAccessoryServerBrowserIP)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)resetPairVerifyFailureCount
{
  os_unfair_lock_lock_with_options();
  self->_consecutivePairVerifyFailures = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)consecutivePairVerifyFailureCount
{
  os_unfair_lock_lock_with_options();
  consecutivePairVerifyFailures = self->_consecutivePairVerifyFailures;
  os_unfair_lock_unlock(&self->_lock);
  return consecutivePairVerifyFailures;
}

- (void)_incrementPairVerifyFailureCount
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  os_unfair_lock_lock_with_options();
  ++self->_consecutivePairVerifyFailures;
  os_unfair_lock_unlock(&self->_lock);
  [(HAPAccessoryServer *)self setReachable:0];

  [(HAPAccessoryServerIP *)self setCachedSocketInfo:0];
}

- (void)disconnectOnIdleUpdated
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HAPAccessoryServerIP_disconnectOnIdleUpdated__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __47__HAPAccessoryServerIP_disconnectOnIdleUpdated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDisconnectOnIdle];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _startConnectionIdleTimer];
  }

  else
  {

    return [v3 _suspendConnectionIdleTimer];
  }
}

- (void)_suspendConnectionIdleTimer
{
  v17 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectionIdleTimer = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (connectionIdleTimer)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      connectionIdleTimer2 = [(HAPAccessoryServerIP *)selfCopy connectionIdleTimer];
      [connectionIdleTimer2 timeInterval];
      v13 = 138543618;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Canceling connection idle timer of: %0.3fs", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    connectionIdleTimer3 = [(HAPAccessoryServerIP *)selfCopy connectionIdleTimer];
    [connectionIdleTimer3 cancel];

    [(HAPAccessoryServerIP *)selfCopy setConnectionIdleTimer:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startConnectionIdleTimer
{
  v30 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (!httpClient)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v8;
      v9 = "%{public}@Not starting connection idle timer --- no active connection";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v5);
    goto LABEL_17;
  }

  if ([(HAPAccessoryServer *)self isSessionRestoreActive])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v8;
      v9 = "%{public}@*** Session Restore is active, ignoring start connection idle timer request";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_22AADC000, v10, v11, v9, &v26, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle])
  {
    connectionIdleTimer = [(HAPAccessoryServerIP *)self connectionIdleTimer];
    if (connectionIdleTimer)
    {
LABEL_11:

      goto LABEL_13;
    }

    if (!self->_idleTimerActiveSessions)
    {
      v22 = objc_alloc(MEMORY[0x277D0F920]);
      [(HAPAccessoryServerIP *)self disconnectOnIdleTimeout];
      v23 = [v22 initWithTimeInterval:0 options:?];
      [(HAPAccessoryServerIP *)self setConnectionIdleTimer:v23];

      connectionIdleTimer2 = [(HAPAccessoryServerIP *)self connectionIdleTimer];
      [connectionIdleTimer2 setDelegate:self];

      connectionIdleTimer = [(HAPAccessoryServer *)self clientQueue];
      connectionIdleTimer3 = [(HAPAccessoryServerIP *)self connectionIdleTimer];
      [connectionIdleTimer3 setDelegateQueue:connectionIdleTimer];

      goto LABEL_11;
    }
  }

LABEL_13:
  connectionIdleTimer4 = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (connectionIdleTimer4)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      connectionIdleTimer5 = [(HAPAccessoryServerIP *)selfCopy3 connectionIdleTimer];
      [connectionIdleTimer5 timeInterval];
      v26 = 138543618;
      v27 = v17;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting connection idle timer of: %03fs", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    connectionIdleTimer6 = [(HAPAccessoryServerIP *)selfCopy3 connectionIdleTimer];
    [connectionIdleTimer6 resume];
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_kickConnectionIdleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectionIdleTimer = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (connectionIdleTimer)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Kicking connection idle timer", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    connectionIdleTimer2 = [(HAPAccessoryServerIP *)selfCopy connectionIdleTimer];
    [connectionIdleTimer2 kick];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionIdleTimeout
{
  v12 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, disconnecting...", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:29 userInfo:0];
    [(HAPAccessoryServerIP *)selfCopy disconnectWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveDisconnectOnIdleTimeout:(double)timeout
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HAPAccessoryServerIP_updateActiveDisconnectOnIdleTimeout___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  *&v6[5] = timeout;
  dispatch_async(clientQueue, v6);
}

void __60__HAPAccessoryServerIP_updateActiveDisconnectOnIdleTimeout___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldDisconnectOnIdle])
  {
    [*(a1 + 32) setDisconnectOnIdleTimeout:*(a1 + 40)];
    v2 = [*(a1 + 32) connectionIdleTimer];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 32) connectionIdleTimer];
      [v4 timeInterval];
      v6 = v5;
      [*(a1 + 32) disconnectOnIdleTimeout];
      v8 = v7;

      if (v6 != v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          [*(a1 + 32) disconnectOnIdleTimeout];
          v23 = 138543618;
          v24 = v12;
          v25 = 2048;
          v26 = v13;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating active connection idle timer timeout to: %0.3fs", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [*(a1 + 32) connectionIdleTimer];
        [v14 cancel];

        v15 = objc_alloc(MEMORY[0x277D0F920]);
        [*(a1 + 32) disconnectOnIdleTimeout];
        v16 = [v15 initWithTimeInterval:0 options:?];
        [*(a1 + 32) setConnectionIdleTimer:v16];

        v17 = *(a1 + 32);
        v18 = [v17 connectionIdleTimer];
        [v18 setDelegate:v17];

        v19 = [*(a1 + 32) clientQueue];
        v20 = [*(a1 + 32) connectionIdleTimer];
        [v20 setDelegateQueue:v19];

        v21 = [*(a1 + 32) connectionIdleTimer];
        [v21 resume];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServer *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_accessoryDidBecomeUnreachable:(id)unreachable
{
  v24 = *MEMORY[0x277D85DE8];
  unreachableCopy = unreachable;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    isReachable = [unreachableCopy isReachable];
    shortDescription = [unreachableCopy shortDescription];
    v18 = 138543874;
    v19 = v9;
    v20 = 1024;
    v21 = isReachable;
    v22 = 2112;
    v23 = shortDescription;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Accessory became unreachable after ping - reachable flag %d accessory: %@", &v18, 0x1Cu);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServer *)selfCopy setReachabilityChangedReason:@"Ping"];
  if ([unreachableCopy isReachable])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Marking accessory unreachable", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HAPAccessoryServer *)v13 buildReachabilityNotificationDictionary:unreachableCopy reachable:0 linkType:1 withError:0];
    [(HAPAccessoryServer *)v13 notifyClients:2 withDictionary:v16];
  }

  if ([unreachableCopy isPrimary])
  {
    [(HAPAccessoryServerIP *)selfCopy _startReachability];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pollAccessory
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HAPAccessoryServerIP_pollAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_pollAccessory
{
  v18 = *MEMORY[0x277D85DE8];
  reachabilityPingEnabled = [(HAPAccessoryServer *)self reachabilityPingEnabled];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (reachabilityPingEnabled)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      primaryAccessory = [(HAPAccessoryServerIP *)selfCopy primaryAccessory];
      shortDescription = [primaryAccessory shortDescription];
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = shortDescription;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Reachability poll for accessory: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    primaryAccessory2 = [(HAPAccessoryServerIP *)selfCopy primaryAccessory];
    [(HAPAccessoryServerIP *)selfCopy _doPollForAccessory:primaryAccessory2];
  }

  else
  {
    if (v7)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Reachability ping disabled", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPAccessoryServerIP *)selfCopy stopPing];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_doPollForAccessory:(id)accessory
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (!self->_reachabilityEventTimer)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      objc_autoreleasePoolPop(v9);
      goto LABEL_9;
    }

    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v12;
    v13 = "%{public}@Reachability poll called while reachability event timer is nil";
LABEL_7:
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);

    goto LABEL_8;
  }

  v6 = [accessoryCopy characteristicOfType:@"0000023C-0000-1000-8000-0026BB765291" serviceType:@"00000239-0000-1000-8000-0026BB765291"];
  if (!v6)
  {
    v6 = [accessoryCopy characteristicOfType:@"00000052-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291"];
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      v13 = "%{public}@Reachability poll failed - no suitable characteristic";
      goto LABEL_7;
    }
  }

  v7 = v6;
  clientQueue2 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HAPAccessoryServerIP__doPollForAccessory___block_invoke;
  v15[3] = &unk_2786D6538;
  v15[4] = self;
  v16 = accessoryCopy;
  [v16 readValueForCharacteristic:v7 timeout:0 expiry:clientQueue2 completionQueue:v15 completionHandler:0.0];

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

void __44__HAPAccessoryServerIP__doPollForAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) reachabilityPingEnabled];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Reachability poll complete error=%@ reachabilityPingEnabled %d", &v18, 0x1Cu);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [*(a1 + 32) reachabilityEventTimer];
  [v13 resume];

  [*(a1 + 32) _doReachabilityWithError:v6 forAccessory:*(a1 + 40)];
  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = *(a1 + 32);
  v16 = *(v15 + 448);
  *(v15 + 448) = v14;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_doReachabilityWithError:(id)error forAccessory:(id)accessory
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  accessoryCopy = accessory;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (errorCopy)
  {
    v9 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:accessoryCopy reachable:0 linkType:1 withError:0];
    [(HAPAccessoryServer *)self incrementFailedPing];
    [(HAPAccessoryServer *)self notifyClients:1 withDictionary:v9];
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v11 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityFailedPingLimit"];
    numberValue = [v11 numberValue];

    [accessoryCopy setConsecutiveFailedPingCount:{objc_msgSend(accessoryCopy, "consecutiveFailedPingCount") + 1}];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      consecutiveFailedPingCount = [accessoryCopy consecutiveFailedPingCount];
      shortDescription = [accessoryCopy shortDescription];
      v26 = 138543874;
      v27 = v16;
      v28 = 1024;
      v29 = consecutiveFailedPingCount;
      v30 = 2112;
      v31 = shortDescription;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Reachability poll failure count: %d for accessory: %@", &v26, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
    consecutiveFailedPingCount2 = [accessoryCopy consecutiveFailedPingCount];
    if (consecutiveFailedPingCount2 == [numberValue intValue])
    {
      [(HAPAccessoryServerIP *)selfCopy _accessoryDidBecomeUnreachable:accessoryCopy];
    }
  }

  else
  {
    [(HAPAccessoryServer *)self incrementSuccessfulPing];
    if ([accessoryCopy consecutiveFailedPingCount])
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Reachability poll -- resetting consecutive ping failure", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [accessoryCopy setConsecutiveFailedPingCount:0];
    }

    if (([accessoryCopy isReachable] & 1) == 0)
    {
      if (([accessoryCopy isPrimary] & 1) == 0)
      {
        [(HAPAccessoryServer *)self setReachabilityChangedReason:@"Ping"];
        [accessoryCopy setReachable:1];
      }

      v24 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:accessoryCopy reachable:1 linkType:1 withError:0];
      [(HAPAccessoryServer *)self notifyClients:2 withDictionary:v24];
    }

    v9 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:accessoryCopy reachable:1 linkType:1 withError:0];
    [(HAPAccessoryServer *)self notifyClients:1 withDictionary:v9];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_indicateSessionActivityWithReason:(id)reason
{
  [(HAPAccessoryServer *)self setReachabilityChangedReason:reason];
  [(HAPAccessoryServer *)self setReachable:1];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HAPAccessoryServerIP__indicateSessionActivityWithReason___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_startReachability
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  _startReachabilityEventTimer = [(HAPAccessoryServerIP *)self _startReachabilityEventTimer];
  if (_startReachabilityEventTimer)
  {
    v5 = _startReachabilityEventTimer;
    [(HAPAccessoryServerIP *)self _pollAccessory];
    _startReachabilityEventTimer = v5;
  }
}

- (id)_startReachabilityEventTimer
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@shouldDisconnectOnIdle is enabled -- ignoring request to start reachability timer", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_6;
  }

  reachabilityEventTimer = [(HAPAccessoryServerIP *)self reachabilityEventTimer];

  if (reachabilityEventTimer)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValue];
  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    primaryAccessory = [(HAPAccessoryServerIP *)selfCopy2 primaryAccessory];
    shortDescription = [primaryAccessory shortDescription];
    v21 = 138543874;
    v22 = v16;
    v23 = 2112;
    v24 = shortDescription;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting reachability poll timer for accessory: %@ to %0.3fs", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:3 options:v12];
  [v8 setDelegate:selfCopy2];
  clientQueue = [(HAPAccessoryServer *)selfCopy2 clientQueue];
  [v8 setDelegateQueue:clientQueue];

  [(HAPAccessoryServerIP *)selfCopy2 setReachabilityEventTimer:v8];
  [(HAPAccessoryServer *)selfCopy2 setReachabilityPingEnabled:1];
  date = [MEMORY[0x277CBEAA8] date];
  [(HAPAccessoryServerIP *)selfCopy2 setReachabilityStartTime:date];

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)_getReachabilityTimeoutValue
{
  minimumReachabilityPingInterval = self->_minimumReachabilityPingInterval;
  primaryAccessory = [(HAPAccessoryServerIP *)self primaryAccessory];
  v5 = [primaryAccessory characteristicOfType:@"0000023A-0000-1000-8000-0026BB765291" serviceType:@"00000239-0000-1000-8000-0026BB765291"];

  if (v5)
  {
    value = [v5 value];
    [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValueWithSleepInterval:value];
    minimumReachabilityPingInterval = v7;
  }

  return minimumReachabilityPingInterval;
}

- (double)_getReachabilityTimeoutValueWithSleepInterval:(id)interval
{
  minimumReachabilityPingInterval = self->_minimumReachabilityPingInterval;
  if (interval)
  {
    [interval doubleValue];
    v5 = v4 / 1000.0;
    if (v5 > minimumReachabilityPingInterval)
    {
      return v5;
    }
  }

  return minimumReachabilityPingInterval;
}

- (void)_stopReachability
{
  v14 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  accessories = [(HAPAccessoryServer *)self accessories];
  if ([accessories count] < 2)
  {

LABEL_7:
    v11 = *MEMORY[0x277D85DE8];

    [(HAPAccessoryServerIP *)self _stopReachabilityTimer];
    return;
  }

  reachabilityPingEnabled = [(HAPAccessoryServer *)self reachabilityPingEnabled];

  if (!reachabilityPingEnabled)
  {
    goto LABEL_7;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Server still has accessories to support ping for -- ignoring stop ping request for server", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopReachabilityTimer
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_reachabilityEventTimer)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping reachability timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFTimer *)self->_reachabilityEventTimer cancel];
    reachabilityEventTimer = self->_reachabilityEventTimer;
    self->_reachabilityEventTimer = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopPing
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HAPAccessoryServerIP_stopPing__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __32__HAPAccessoryServerIP_stopPing__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping IP reachability", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setReachabilityPingEnabled:0];
  result = [*(a1 + 32) _stopReachability];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startPing
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HAPAccessoryServerIP_startPing__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __33__HAPAccessoryServerIP_startPing__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reachabilityPingEnabled];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting IP reachability", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _startReachability];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Attempting to start ping on server that is not enabled", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HAPAccessoryServerIP_identifyWithCompletion___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(clientQueue, v7);
}

void __47__HAPAccessoryServerIP_identifyWithCompletion___block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) isWacAccessory] || (objc_msgSend(*(a1 + 32), "isWacComplete") & 1) != 0)
  {
    v2 = MEMORY[0x277CCACA8];
    v17[0] = @"/";
    v17[1] = @"identify";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v4 = [v2 pathWithComponents:v3];

    v5 = [*(a1 + 32) _ensureHTTPClientSetUp];
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = HMErrorFromOSStatus(v5);
        (*(v6 + 16))(v6, v7);
      }
    }

    else
    {
      objc_initWeak(location, *(a1 + 32));
      v8 = *(a1 + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__HAPAccessoryServerIP_identifyWithCompletion___block_invoke_653;
      v14[3] = &unk_2786D2918;
      objc_copyWeak(&v16, location);
      v15 = *(a1 + 40);
      [v8 sendPOSTRequestToURL:v4 request:0 serializationType:1 completionHandler:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    goto LABEL_11;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v12;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Identify is not supported for WAC device", location, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:48];
    (*(*(a1 + 40) + 16))();
LABEL_11:
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HAPAccessoryServerIP_identifyWithCompletion___block_invoke_653(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Identify returned HTTP client error: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, v9);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = WeakRetained;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (a4 == 204)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v20;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Identify succeeded", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v21 = 0;
    }

    else
    {
      if (v19)
      {
        v22 = HMFGetLogIdentifier();
        v23 = [MEMORY[0x277CCABB0] numberWithInt:a4];
        v26 = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Identify returned unexpected status code: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      (*(v24 + 16))(v24, v21);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body
{
  headersCopy = headers;
  bodyCopy = body;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED3848])
  {
    v10 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_willSendHTTPHeaders_httpBody_];

    if (v10)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HAPAccessoryServerIP_httpClient_willSendHTTPMessageWithHeaders_body___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = headersCopy;
      v14 = bodyCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

void __71__HAPAccessoryServerIP_httpClient_willSendHTTPMessageWithHeaders_body___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerIP:*(a1 + 32) willSendHTTPHeaders:*(a1 + 40) httpBody:*(a1 + 48)];
}

- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body
{
  headersCopy = headers;
  bodyCopy = body;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED3848])
  {
    v10 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_didReceiveHTTPHeaders_httpBody_];

    if (v10)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HAPAccessoryServerIP_httpClient_didReceiveHTTPMessageWithHeaders_body___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = headersCopy;
      v14 = bodyCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

void __73__HAPAccessoryServerIP_httpClient_didReceiveHTTPMessageWithHeaders_body___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerIP:*(a1 + 32) didReceiveHTTPHeaders:*(a1 + 40) httpBody:*(a1 + 48)];
}

- (void)_handleListPairingsResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status httpError:(id)error completionQueue:(id)queue completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  errorCopy = error;
  queueCopy = queue;
  handlerCopy = handler;
  if (errorCopy)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v21;
      v49 = 2112;
      *v50 = errorCopy;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to list-pairings with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = errorCopy;
LABEL_21:
    v28 = v22;
LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  if (!objectCopy || type != 2 || status != 200 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v41 = v33;
      v36 = HMFGetLogIdentifier();
      v37 = HTTPGetReasonPhrase();
      if (type - 1 > 3)
      {
        v38 = @"Invalid";
      }

      else
      {
        v38 = off_2786D4CF8[type - 1];
      }

      v39 = v38;
      *buf = 138544386;
      v48 = v36;
      v49 = 1024;
      *v50 = status;
      *&v50[4] = 2080;
      *&v50[6] = v37;
      *&v50[14] = 2112;
      *&v50[16] = v39;
      v51 = 2112;
      v52 = objectCopy;
      _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Received invalid response to list-pairings with HTTP status '%d %s', serializationType %@ responseObject %@", buf, 0x30u);

      v33 = v41;
    }

    objc_autoreleasePoolPop(v33);
    v22 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
    goto LABEL_21;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v26;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received valid response to list-pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v46 = 0;
  v27 = [HAPPairingUtilities parseListPairingsResponse:objectCopy error:&v46];
  v28 = v46;
  if (!v27)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy3;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v48 = v32;
      v49 = 2112;
      *v50 = objectCopy;
      *&v50[8] = 2112;
      *&v50[10] = v28;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse list-pairings response: %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_22;
  }

LABEL_23:
  if (queueCopy && handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__HAPAccessoryServerIP__handleListPairingsResponseObject_type_httpStatus_httpError_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v45 = handlerCopy;
    v43 = v27;
    v44 = v28;
    dispatch_async(queueCopy, block);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
  {
    v26 = 0;
    v8 = [HAPPairingUtilities createListPairingsRequest:&v26];
    v9 = v26;
    if (v8)
    {
      v10 = [@"/" stringByAppendingPathComponent:@"pairings"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__HAPAccessoryServerIP__listPairingsWithCompletionQueue_completionHandler___block_invoke_2;
      v20[3] = &unk_2786D2A30;
      v20[4] = self;
      v21 = queueCopy;
      v22 = handlerCopy;
      [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:v10 request:v8 serializationType:2 completionHandler:v20];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to create list pairings request payload with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      if (!queueCopy || !handlerCopy)
      {
        goto LABEL_13;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__HAPAccessoryServerIP__listPairingsWithCompletionQueue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v25 = handlerCopy;
      v24 = v9;
      dispatch_async(queueCopy, block);

      v10 = v25;
    }

LABEL_13:
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing list-pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HAPAccessoryServerIP *)selfCopy2 _queueListPairingWithCompletionQueue:queueCopy completionHandler:handlerCopy];
  [(HAPAccessoryServerIP *)selfCopy2 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.listPairings"];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HAPAccessoryServerIP_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  dispatch_async(clientQueue, block);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  v47[2] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v41 = 0;
  v8 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v41];
  v9 = v41;
  identifier = [v8 identifier];
  publicKey = [v8 publicKey];
  data = [publicKey data];

  if (!v9)
  {
    if (data && identifier)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v18;
        v44 = 2112;
        v45 = identifier;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending request to accessory to remove the pairing for the current controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
      identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
      clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_609;
      v28[3] = &unk_2786D2A80;
      v28[4] = selfCopy;
      v29 = identifier;
      v30 = data;
      v31 = keyStore;
      v32 = identifier2;
      v33 = queueCopy;
      v34 = completionCopy;
      v22 = identifier2;
      v14 = keyStore;
      dispatch_async(clientQueue, v28);

      v9 = 0;
      v13 = 1;
    }

    else
    {
      v46[0] = *MEMORY[0x277CCA450];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove the pairing for the current controller"];
      v47[0] = v23;
      v46[1] = *MEMORY[0x277CCA470];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [mainBundle localizedStringForKey:@"There was no controller public key or controller username" value:&stru_283E79C60 table:0];
      v47[1] = v25;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

      v9 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:27 userInfo:v14];
      v13 = 0;
      if (queueCopy && completionCopy)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_2;
        v35[3] = &unk_2786D65D8;
        v37 = completionCopy;
        v9 = v9;
        v36 = v9;
        dispatch_async(queueCopy, v35);

        v13 = 0;
      }
    }

    goto LABEL_13;
  }

  v13 = 0;
  if (queueCopy && completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v40 = completionCopy;
    v9 = v9;
    v39 = v9;
    dispatch_async(queueCopy, block);

    v13 = 0;
    v14 = v40;
LABEL_13:
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

void __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_609(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_610;
  v12[3] = &unk_2786D2A58;
  objc_copyWeak(&v15, &location);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  [v2 _removePairingWithIdentifier:v3 publicKey:v4 queue:v5 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_610(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to remove current controller pairing from accessory completed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    [v6 _reset];
  }

  [v6 setAuthenticated:0];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v26 = 0;
  [v9 removeAccessoryKeyForName:v10 error:&v26];
  v11 = v26;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@After removing the accessory with 'Remove Pairing', we failed to remove accessory from the keychain with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = *(a1 + 56);
      if (v17)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_611;
        v24[3] = &unk_2786D6490;
        v18 = &v25;
        v25 = v17;
        v19 = v24;
LABEL_14:
        dispatch_async(v16, v19);
      }
    }
  }

  else
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      v20 = *(a1 + 56);
      if (v20)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_612;
        block[3] = &unk_2786D6490;
        v18 = &v23;
        v23 = v20;
        v19 = block;
        goto LABEL_14;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingsResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status httpError:(id)error removeRequest:(BOOL)request completionQueue:(id)queue completionBlock:(id)block
{
  requestCopy = request;
  v70 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  errorCopy = error;
  queueCopy = queue;
  blockCopy = block;
  if (errorCopy)
  {
    v19 = requestCopy;
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = @"add";
      *buf = 138543874;
      v63 = v23;
      v64 = 2112;
      if (v19)
      {
        v24 = @"remove";
      }

      v65 = v24;
      v66 = 2112;
      *v67 = errorCopy;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to %@ pairing with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = errorCopy;
  }

  else if (objectCopy && type == 2 && status == 200 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = requestCopy;
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      v30 = v29;
      v31 = "add";
      if (v55)
      {
        v31 = "remove";
      }

      *buf = 138543618;
      v63 = v29;
      v64 = 2080;
      v65 = v31;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Received valid response to %s pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    if (v55)
    {
      v61 = 0;
      v32 = [HAPPairingUtilities parseRemovePairingResponse:objectCopy error:&v61];
      v33 = v61;
    }

    else
    {
      v60 = 0;
      v32 = [HAPPairingUtilities parseAddPairingResponse:objectCopy error:&v60];
      v33 = v60;
    }

    v25 = v33;
    if (!v32)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy2;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v46 = v45 = objectCopy;
        v47 = "add";
        *buf = 138544130;
        v64 = 2080;
        v63 = v46;
        if (v55)
        {
          v47 = "remove";
        }

        v65 = v47;
        v66 = 2112;
        *v67 = v45;
        *&v67[8] = 2112;
        *&v67[10] = v25;
        _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse %s pairing response: %@ with error %@", buf, 0x2Au);

        objectCopy = v45;
      }

      objc_autoreleasePoolPop(v42);
    }

    if (v25)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy2;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = HMFGetLogIdentifier();
        v52 = "add";
        *buf = 138544130;
        v64 = 2080;
        v63 = v51;
        if (v55)
        {
          v52 = "remove";
        }

        v65 = v52;
        v66 = 2112;
        *v67 = objectCopy;
        *&v67[8] = 2112;
        *&v67[10] = v25;
        _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse %s pairing response: %@ with error %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v48);
    }
  }

  else
  {
    v56 = objectCopy;
    v34 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v54 = v34;
      v53 = HMFGetLogIdentifier();
      if (requestCopy)
      {
        v37 = "remove";
      }

      else
      {
        v37 = "add";
      }

      v38 = HTTPGetReasonPhrase();
      if (type - 1 > 3)
      {
        v39 = @"Invalid";
      }

      else
      {
        v39 = off_2786D4CF8[type - 1];
      }

      v40 = v39;
      *buf = 138544642;
      v63 = v53;
      v64 = 2080;
      v65 = v37;
      v66 = 1024;
      *v67 = status;
      *&v67[4] = 2080;
      *&v67[6] = v38;
      *&v67[14] = 2112;
      *&v67[16] = v40;
      v68 = 2112;
      v69 = v56;
      _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%{public}@Received invalid response to %s /pairings with HTTP status '%d %s', serializationType %@ responseObject %@", buf, 0x3Au);

      v34 = v54;
    }

    objc_autoreleasePoolPop(v34);
    v25 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
    objectCopy = v56;
  }

  if (queueCopy && blockCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__HAPAccessoryServerIP__handlePairingsResponseObject_type_httpStatus_httpError_removeRequest_completionQueue_completionBlock___block_invoke;
    block[3] = &unk_2786D65D8;
    v59 = blockCopy;
    v58 = v25;
    dispatch_async(queueCopy, block);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_sendRemovePairingWithData:(id)data queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dataCopy = data;
  v11 = [@"/" stringByAppendingPathComponent:@"pairings"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HAPAccessoryServerIP__sendRemovePairingWithData_queue_completion___block_invoke;
  v14[3] = &unk_2786D2A30;
  v14[4] = self;
  v15 = queueCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:v11 request:dataCopy serializationType:2 completionHandler:v14];
}

- (void)_establishSecureSessionAndRemovePairing:(id)pairing queue:(id)queue completion:(id)completion
{
  pairingCopy = pairing;
  queueCopy = queue;
  completionCopy = completion;
  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v23 = 0;
  v13 = [keyStore readPublicKeyForAccessoryName:identifier registeredWithHomeKit:0 error:&v23];
  v14 = v23;

  if (v13)
  {
    if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
    {
      [(HAPAccessoryServerIP *)self _kickConnectionIdleTimer];
      [(HAPAccessoryServerIP *)self _sendRemovePairingWithData:pairingCopy queue:queueCopy completion:completionCopy];
    }

    else
    {
      [(HAPAccessoryServerIP *)self _suspendConnectionIdleTimer];
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__HAPAccessoryServerIP__establishSecureSessionAndRemovePairing_queue_completion___block_invoke;
      v17[3] = &unk_2786D2AA8;
      objc_copyWeak(&v21, &location);
      v18 = pairingCopy;
      v19 = queueCopy;
      v20 = completionCopy;
      [(HAPAccessoryServerIP *)self setPairVerifyCompletionBlock:v17];
      [(HAPAccessoryServer *)self setMetric_pairVerifyReason:@"pairingRemove"];
      [(HAPAccessoryServerIP *)self _establishSecureSession];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else if (queueCopy && completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HAPAccessoryServerIP__establishSecureSessionAndRemovePairing_queue_completion___block_invoke_3;
    block[3] = &unk_2786D6490;
    v16 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

void __81__HAPAccessoryServerIP__establishSecureSessionAndRemovePairing_queue_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained clientQueue];
  dispatch_assert_queue_V2(v5);

  LODWORD(v5) = [WeakRetained shouldRetryPVDueToAuthenticationError:v3];
  if (v5)
  {
    v6 = [WeakRetained clientQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__HAPAccessoryServerIP__establishSecureSessionAndRemovePairing_queue_completion___block_invoke_2;
    v7[3] = &unk_2786D66C8;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    dispatch_async(v6, v7);
  }

  else
  {
    [WeakRetained _sendRemovePairingWithData:a1[4] queue:a1[5] completion:a1[6]];
  }
}

- (void)_removePairingWithIdentifier:(id)identifier publicKey:(id)key queue:(id)queue completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:keyCopy];
  v15 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v14 privateKey:0 permissions:0];
  v26 = 0;
  v16 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v15 error:&v26];
  v17 = v26;
  if (v16)
  {
    [(HAPAccessoryServerIP *)self _establishSecureSessionAndRemovePairing:v16 queue:queueCopy completion:completionCopy];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing request payload with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    if (queueCopy && completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__HAPAccessoryServerIP__removePairingWithIdentifier_publicKey_queue_completion___block_invoke;
      block[3] = &unk_2786D65D8;
      v24 = v17;
      v25 = completionCopy;
      dispatch_async(queueCopy, block);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__HAPAccessoryServerIP__removePairingWithIdentifier_publicKey_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HAPAccessoryServerIP_removePairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = pairingCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

void __72__HAPAccessoryServerIP_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v3 = [*(a1 + 40) publicKey];
  v4 = [v3 data];
  [v2 _removePairingWithIdentifier:v5 publicKey:v4 queue:*(a1 + 48) completion:*(a1 + 56)];
}

void __88__HAPAccessoryServerIP__startAddPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Failed to create add pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HAPAccessoryServerIP_addPairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v16 = pairingCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

void __69__HAPAccessoryServerIP_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) permissions];
  v3 = *(a1 + 40);
  v6 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) publicKey];
  v5 = [v4 data];
  [v3 _startAddPairingWithIdentifier:v6 publicKey:v5 admin:v2 & 1 queue:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)authSession:(id)session authComplete:(id)complete
{
  completeCopy = complete;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(clientQueue, v8);
}

void __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) code];
    *buf = 138543618;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Auth Complete with status: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v8)
  {
    v8 = *(a1 + 40);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke_570;
  v21[3] = &unk_2786D7050;
  v21[4] = *(a1 + 32);
  v9 = v8;
  v22 = v9;
  __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke_570(v21);
  v10 = [*(a1 + 32) delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 32) delegateQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke_2;
    v19[3] = &unk_2786D7050;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    dispatch_async(v12, v19);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Does not implement accessoryServer:didFinishAuth:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke_570(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

- (void)authSession:(id)session confirmUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HAPAccessoryServerIP_authSession_confirmUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

void __54__HAPAccessoryServerIP_authSession_confirmUUID_token___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HAPAccessoryServerIP_authSession_confirmUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:confirmUUID:token:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HAPAccessoryServerIP_authSession_confirmUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) confirmUUID:*(a1 + 40) token:*(a1 + 48)];
}

- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HAPAccessoryServerIP_authSession_authenticateUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

void __59__HAPAccessoryServerIP_authSession_authenticateUUID_token___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HAPAccessoryServerIP_authSession_authenticateUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement authenticateUUID:token1:token2:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __59__HAPAccessoryServerIP_authSession_authenticateUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) authenticateUUID:*(a1 + 40) token:*(a1 + 48)];
}

- (void)authSession:(id)session validateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke(id *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  if ([a1[4] isPreSoftAuthWacStarted])
  {
    objc_initWeak(location, a1[4]);
    [a1[4] _notifyDelegateOfPairingProgress:3];
    v2 = [a1[4] hapWACAccessoryClient];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_2;
    v18[3] = &unk_2786D3230;
    objc_copyWeak(&v22, location);
    v19 = a1[5];
    v20 = a1[6];
    v21 = a1[7];
    v3 = [v2 restoreNetworkWithCompletion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = [a1[4] delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [a1[4] _notifyDelegateOfPairingProgress:5];
      v6 = [a1[4] delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_565;
      block[3] = &unk_2786D7078;
      block[4] = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      dispatch_async(v6, block);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1[4];
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v10;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", location, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = a1[4];
      v12 = a1[7];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
      [v11 authSession:v12 authComplete:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_3;
  block[3] = &unk_2786D49A0;
  v8 = v3;
  v9 = WeakRetained;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v6 = v3;
  dispatch_async(v5, block);
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_565(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_3(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to restore back to infrastructure network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *(a1 + 32);
    v35 = *MEMORY[0x277CCA7E8];
    v36 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v9 = [v6 errorWithDomain:@"HAPErrorDomain" code:1 userInfo:v8];

    [*(a1 + 40) authSession:*(a1 + 64) authComplete:v9];
    goto LABEL_15;
  }

  [*(a1 + 40) ensureNetworkMonitor];
  [*(a1 + 40) _notifyDelegateOfPairingProgress:4];
  v10 = [*(a1 + 40) networkMonitor];
  v11 = [v10 isReachable];

  if (!v11)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_560;
    v30[3] = &unk_2786D7050;
    v17 = *(a1 + 48);
    v30[4] = *(a1 + 40);
    v31 = v17;
    __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_560(v30);
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Network is not reachable: Waiting...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 40) setTokenValidationPending:1];
    v16 = v31;
    goto LABEL_11;
  }

  v12 = [*(a1 + 40) delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    [*(a1 + 40) _notifyDelegateOfPairingProgress:5];
    v14 = [*(a1 + 40) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_4;
    block[3] = &unk_2786D7078;
    v15 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v33 = v15;
    v34 = *(a1 + 56);
    dispatch_async(v14, block);

    v16 = v33;
LABEL_11:

    goto LABEL_15;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 40);
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v25;
    _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = *(a1 + 40);
  v27 = *(a1 + 64);
  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
  [v26 authSession:v27 authComplete:v28];

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_4(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

void __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke_560(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
}

- (void)ensureNetworkMonitor
{
  networkMonitor = [(HAPAccessoryServerIP *)self networkMonitor];

  if (!networkMonitor)
  {
    v4 = objc_alloc_init(MEMORY[0x277D0F868]);
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v4;

    v6 = self->_networkMonitor;

    [(HMFNetMonitor *)v6 setDelegate:self];
  }
}

- (void)authSession:(id)session sendAuthExchangeData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Sending Auth Exchange with data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke;
  v15[3] = &unk_2786D7050;
  v15[4] = selfCopy;
  v16 = dataCopy;
  v13 = dataCopy;
  dispatch_async(clientQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_2;
  v6 = &unk_2786D2940;
  objc_copyWeak(&v7, &location);
  v2 = MEMORY[0x231885210](&v3);
  [*(a1 + 32) sendPOSTRequestToURL:@"/secure-message" request:*(a1 + 40) serializationType:3 completionHandler:{v2, v3, v4, v5, v6}];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (!v8 || v9)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v11;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v17 = @"Invalid";
      }

      else
      {
        v17 = off_2786D4CF8[a3 - 1];
      }

      v18 = v17;
      *buf = 138544130;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed Auth request, received response object: %@, MIME type: %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2111];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_554;
    v24[3] = &unk_2786D7050;
    v24[4] = v14;
    v20 = v19;
    v25 = v20;
    __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_554(v24);
    if ([v14 _delegateRespondsToSelector:sel_accessoryServer_didFinishAuth_])
    {
      v21 = [v14 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_2_558;
      block[3] = &unk_2786D6CA0;
      block[4] = v14;
      dispatch_async(v21, block);
    }
  }

  else
  {
    v12 = [WeakRetained authSession];
    [v12 handleAuthExchangeData:v8 withHeader:1];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_554(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke_2_558(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2112];
  [v4 accessoryServer:v2 didFinishAuth:v3];
}

- (void)tearDownSessionOnAuthCompletion
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAPAccessoryServerIP_tearDownSessionOnAuthCompletion__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __55__HAPAccessoryServerIP_tearDownSessionOnAuthCompletion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAuthenticated:1];
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  v3 = *(a1 + 32);

  return [v3 _tearDownSession];
}

- (void)provisionToken:(id)token
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = tokenCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__HAPAccessoryServerIP_provisionToken___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = selfCopy;
  v13 = tokenCopy;
  v10 = tokenCopy;
  dispatch_async(clientQueue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __39__HAPAccessoryServerIP_provisionToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2048;
    pairSetupType = [(HAPAccessoryServer *)selfCopy pairSetupType];
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Current Pair Setup Type %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke;
  v11[3] = &unk_2786D6768;
  v11[4] = selfCopy;
  validationCopy = validation;
  dispatch_async(clientQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) authMethod] == 2)
  {
    v6 = [*(a1 + 32) authSession];
    [v6 continueAuthAfterValidation:*(a1 + 40)];

    return;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_15;
  }

  if ([*(a1 + 32) authMethod] == 4 || objc_msgSend(*(a1 + 32), "authMethod") == 6)
  {
    v2 = *(a1 + 32);

    [v2 _continuePairingAfterMFiCertValidation];
    return;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_15:
    v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"HAPErrorDomain" code:16 userInfo:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke_2;
    v7[3] = &unk_2786D7050;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke_2(v7);
    [*(a1 + 32) _notifyDelegatesOfAddAccessoryFailureWithError:v5];
    [*(a1 + 32) _tearDownSessionAndStartReachabilityWithError:v5];
    [*(a1 + 32) _processQueuedOperationsWithError:v5];

    return;
  }

  v3 = *(a1 + 32);

  [v3 _continuePairingAfterAuthPromptWithRetry:1];
}

void __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

- (void)authenticateAccessory
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPAccessoryServerIP_authenticateAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __45__HAPAccessoryServerIP_authenticateAccessory__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:1];
}

- (void)_validatePairingAuthMethod:(id)method activity:(id)activity
{
  v61 = *MEMORY[0x277D85DE8];
  methodCopy = method;
  activityCopy = activity;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
  {
    featureFlags = self->_featureFlags;
    if ((featureFlags & 0x20) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v13;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Not sending auth challenge request because the accessory doesn't claim to support it", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Not sending auth challenge request because the accessory doesn't claim to support it" reason:0 suggestion:0 underlyingError:0 marker:210];
      methodCopy[2](methodCopy, v14, 5);

      goto LABEL_27;
    }

    if (featureFlags)
    {
      LOBYTE(location) = 0;
      v32 = [HAPProtocolMessages constructAuthChallengeRequest:&unk_283EA9578 nonce:0 outTID:&location];
      v33 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v36;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Sending auth challenge request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      objc_initWeak(buf, selfCopy2);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke_538;
      v47[3] = &unk_2786D2A08;
      objc_copyWeak(v50, buf);
      v49 = methodCopy;
      v37 = activityCopy;
      v51 = location;
      v48 = v37;
      v50[1] = 1;
      v38 = MEMORY[0x231885210](v47);
      [v37 markWithReason:@"Sending auth challenge request"];
      [(HAPAccessoryServerIP *)selfCopy2 sendPOSTRequestToURL:@"/secure-message" request:v32 serializationType:3 completionHandler:v38];

      objc_destroyWeak(v50);
      objc_destroyWeak(buf);
    }

    else
    {
      if ((featureFlags & 2) != 0)
      {
        v39 = 2;
      }

      else if ((featureFlags & 8) != 0)
      {
        v39 = 4;
      }

      else
      {
        if ((featureFlags & 0x10) == 0)
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = HMFGetLogIdentifier();
            v31 = @"HAPAuthMethodUnknown";
            *buf = 138543618;
            v58 = v30;
            v59 = 2112;
            v60 = @"HAPAuthMethodUnknown";
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Not sending auth challenge because the auth method doesn't support auth challenges or is unknown: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          methodCopy[2](methodCopy, 0, 5);
          goto LABEL_27;
        }

        v39 = 6;
      }

      v40 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = HMFGetLogIdentifier();
        v44 = off_2786D2590[v39];
        *buf = 138543618;
        v58 = v43;
        v59 = 2112;
        v60 = v44;
        _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Not sending auth challenge due to unsupported auth type: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v45 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
      methodCopy[2](methodCopy, v45, 5);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and then doing auth challenge request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    objc_initWeak(&location, selfCopy5);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke;
    v52[3] = &unk_2786D3A30;
    v54 = methodCopy;
    objc_copyWeak(&v55, &location);
    v19 = activityCopy;
    v53 = v19;
    v20 = MEMORY[0x231885210](v52);
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy5;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing auth challenge request until pair-verify completes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [v19 markWithReason:@"Queuing"];
    queuedOperations = [(HAPAccessoryServerIP *)v22 queuedOperations];
    v26 = MEMORY[0x231885210](v20);
    [queuedOperations addObject:v26];

    [(HAPAccessoryServerIP *)v22 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.validatePairingAuthMethod"];
    objc_destroyWeak(&v55);

    objc_destroyWeak(&location);
  }

LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

void __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [*(a1 + 32) begin];
    v5 = *(a1 + 32);
    [WeakRetained _validatePairingAuthMethod:*(a1 + 40) activity:*(a1 + 32)];
    __HMFActivityScopeLeave();
  }
}

void __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke_538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9 || !v8 || !WeakRetained)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v11;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v29 = @"Invalid";
      }

      else
      {
        v29 = off_2786D4CF8[a3 - 1];
      }

      v30 = v29;
      *buf = 138544130;
      v37 = v28;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed sending auth Request, received response object: %@, MIME type: %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 description:@"Unknown error retrieving auth status" reason:0 suggestion:0 underlyingError:v9 marker:2303];
    goto LABEL_16;
  }

  [*(a1 + 32) markWithReason:@"Handling auth response"];
  v12 = objc_autoreleasePoolPush();
  v13 = v11;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v15;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Received auth response: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *(a1 + 64);
  v35 = 0;
  v17 = [v13 _validateAuthChallengeResponse:v8 expectedTID:v16 error:&v35];
  v18 = v35;
  if ((v17 & 1) == 0)
  {
LABEL_16:
    v31 = *(*(a1 + 40) + 16);
    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v13;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = *(a1 + 56);
    if (v23 > 6)
    {
      v24 = @"HAPAuthMethodUnknown";
    }

    else
    {
      v24 = off_2786D2590[v23];
    }

    v32 = v24;
    *buf = 138543618;
    v37 = v22;
    v38 = 2112;
    v39 = v32;
    _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Auth challenge completed successfully with auth method: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v33 = *(a1 + 56);
  v31 = *(*(a1 + 40) + 16);
LABEL_20:
  v31();

  v34 = *MEMORY[0x277D85DE8];
}

- (void)validatePairingAuthMethod:(id)method
{
  methodCopy = method;
  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"validatePairingAuthMethod"];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HAPAccessoryServerIP_validatePairingAuthMethod___block_invoke;
  v7[3] = &unk_2786D69E0;
  v7[4] = self;
  v9 = methodCopy;
  v8 = v10;
  v6 = methodCopy;
  dispatch_async(clientQueue, v7);

  __HMFActivityScopeLeave();
}

- (BOOL)_validateProtocolInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  deviceIdentifier = [infoCopy deviceIdentifier];
  identifier = [(HAPAccessoryServer *)self identifier];
  if (![deviceIdentifier isEqualToString:identifier])
  {
    goto LABEL_7;
  }

  categoryIdentifier = [infoCopy categoryIdentifier];
  category = [(HAPAccessoryServer *)self category];
  if (categoryIdentifier != [category unsignedShortValue] || self->_featureFlags != objc_msgSend(infoCopy, "featureFlags"))
  {

LABEL_7:
    goto LABEL_8;
  }

  protocolVersion = [infoCopy protocolVersion];
  version = [(HAPAccessoryServer *)self version];
  v11 = [protocolVersion isEqual:version];

  if (v11)
  {
    v12 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    category2 = [(HAPAccessoryServer *)selfCopy category];
    authMethod = [(HAPAccessoryServer *)selfCopy authMethod];
    version2 = [(HAPAccessoryServer *)selfCopy version];
    v22 = 138544386;
    v23 = v16;
    v24 = 2112;
    v25 = infoCopy;
    v26 = 2112;
    v27 = category2;
    v28 = 2048;
    v29 = authMethod;
    v30 = 2112;
    v31 = version2;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match category: %@, authMethods: %tu version: %@", &v22, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)getAccessoryInfo:(id)info
{
  infoCopy = info;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__742;
  v13[4] = __Block_byref_object_dispose__743;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HAPAccessoryServerIP_getAccessoryInfo___block_invoke;
  v7[3] = &unk_2786D29E0;
  v9 = v13;
  v10 = v11;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(clientQueue, v7);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __41__HAPAccessoryServerIP_getAccessoryInfo___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Getting Acc Info", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  objc_initWeak(&location, *(a1 + 32));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__HAPAccessoryServerIP_getAccessoryInfo___block_invoke_524;
  v15[3] = &unk_2786D29B8;
  objc_copyWeak(&v18, &location);
  v17 = *(a1 + 56);
  v14 = *(a1 + 40);
  v6 = v14;
  v16 = v14;
  v7 = MEMORY[0x231885210](v15);
  v8 = [HAPProtocolMessages constructInfoRequest:&unk_283EA9578 outTID:*(*(a1 + 56) + 8) + 24];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending Acc Info Request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [*(a1 + 32) sendPOSTRequestToURL:@"/secure-message" request:v8 serializationType:3 completionHandler:v7];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __41__HAPAccessoryServerIP_getAccessoryInfo___block_invoke_524(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v8 || v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v15 = @"Invalid";
      }

      else
      {
        v15 = off_2786D4CF8[a3 - 1];
      }

      v16 = v15;
      v30 = 138544130;
      v31 = v14;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed sending Acc Info Request, received response object: %@, MIME type: %@, error: %@", &v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2110];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = WeakRetained;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Received Acc Info response: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [HAPProtocolMessages parseInfoResponse:v8 expectedTID:*(*(*(a1 + 48) + 8) + 24) withHeader:1];
  [v21 setAuthenticatedProtocolInfo:v24];

  v25 = [v21 authenticatedProtocolInfo];
  v26 = [v21 _validateProtocolInfo:v25];

  v27 = *(a1 + 32);
  if (v26)
  {
    (*(v27 + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:7 userInfo:0];
    (*(v27 + 16))(v27, v28);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HAPAccessoryServerIP_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __52__HAPAccessoryServerIP_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Network is unavailable", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Network is available", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) isTokenValidationPending])
  {
    [*(a1 + 32) setTokenValidationPending:0];
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) authSession];
      v34 = 0;
      v35 = 0;
      v9 = [v8 getToken:&v35 uuid:&v34];
      v10 = v35;
      v11 = v34;

      if (v9)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke_519;
        v32[3] = &unk_2786D7050;
        v32[4] = *(a1 + 32);
        v12 = v11;
        v33 = v12;
        __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke_519(v32);
        v13 = [*(a1 + 32) delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke_2;
        block[3] = &unk_2786D7078;
        block[4] = *(a1 + 32);
        v11 = v12;
        v30 = v11;
        v10 = v10;
        v31 = v10;
        dispatch_async(v13, block);
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v22;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get validation info", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v36 = *MEMORY[0x277CCA7E8];
        v23 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
        v37 = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        v25 = *(a1 + 32);
        v26 = [v25 authSession];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:v24];
        [v25 authSession:v26 authComplete:v27];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v17;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = *(a1 + 32);
      v10 = [v18 authSession];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
      [v18 authSession:v10 authComplete:v11];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke_519(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
}

void __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

- (void)timerDidFire:(id)fire
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  bonjourEventTimer = [(HAPAccessoryServerIP *)self bonjourEventTimer];

  if (bonjourEventTimer == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Timed out waiting for Bonjour event after legacy WAC completion - aborting...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:8];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __37__HAPAccessoryServerIP_timerDidFire___block_invoke;
    v20 = &unk_2786D7050;
    v21 = selfCopy;
    v22 = v13;
    v14 = v13;
    __37__HAPAccessoryServerIP_timerDidFire___block_invoke(&v17);
    [(HAPAccessoryServerIP *)selfCopy _notifyDelegatesOfAddAccessoryFailureWithError:v14, v17, v18, v19, v20, v21];
    [(HAPAccessoryServerIP *)selfCopy setBonjourEventTimer:0];
  }

  else
  {
    reachabilityEventTimer = [(HAPAccessoryServerIP *)self reachabilityEventTimer];

    if (reachabilityEventTimer == fireCopy)
    {
      [(HAPAccessoryServerIP *)self _validateReachabilityTimer];
      reachabilityEventTimer2 = [(HAPAccessoryServerIP *)self reachabilityEventTimer];
      [reachabilityEventTimer2 suspend];

      [(HAPAccessoryServerIP *)self pollAccessory];
    }

    else
    {
      connectionIdleTimer = [(HAPAccessoryServerIP *)self connectionIdleTimer];

      if (connectionIdleTimer == fireCopy)
      {
        [(HAPAccessoryServerIP *)self _handleConnectionIdleTimeout];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __37__HAPAccessoryServerIP_timerDidFire___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

- (void)_validateReachabilityTimer
{
  v30 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_reachabilityStartTime];
  v6 = [v4 numberWithDouble:?];

  [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValue];
  v8 = v7;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v10 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPReachabilityTimerDelayToleranceInSeconds"];
  numberValue = [v10 numberValue];

  [v6 doubleValue];
  v13 = v12;
  [numberValue doubleValue];
  if (v13 > v8 + v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Reachability timer late actual duration %@  expected %0.3f", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:{v8, @"HAPAccessoryDuration", @"HAPAccessoryExpectedDuration", v6}];
    v23[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:2];

    [(HAPAccessoryServer *)selfCopy notifyClients:4 withDictionary:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (int)_handlePairVerifyCompletionWithData:(id)data
{
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__742;
  v50 = __Block_byref_object_dispose__743;
  v51 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke;
  v43[3] = &unk_2786D6A98;
  v5 = dataCopy;
  v44 = v5;
  selfCopy = self;
  v6 = MEMORY[0x231885210](v43);
  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke_3;
  v38[3] = &unk_2786D2990;
  objc_copyWeak(&v41, &location);
  v40 = &v46;
  v7 = v6;
  v39 = v7;
  v8 = MEMORY[0x231885210](v38);
  pairingSession = self->_pairingSession;
  v10 = v5;
  [v5 bytes];
  [v5 length];
  code = PairingSessionExchange();
  if (code)
  {
    goto LABEL_5;
  }

  if (!v52)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:v53];
    v16 = v47[5];
    v47[5] = v15;

    [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:@"/pair-verify" request:v47[5] serializationType:2 completionHandler:v8];
    v14 = 0;
LABEL_7:
    code = 0;
    goto LABEL_8;
  }

  v12 = self->_pairingSession;
  code = PairingSessionDeriveKey();
  if (code || (v13 = self->_pairingSession, code = PairingSessionDeriveKey(), code))
  {
LABEL_5:
    v14 = 0;
    goto LABEL_8;
  }

  httpClient = [(HAPAccessoryServerIP *)self httpClient];
  v37 = 0;
  v28 = [httpClient enableUAPSessionSecurityWithReadKey:v60 writeKey:v59 error:&v37];
  v14 = v37;

  if (v28)
  {
    goto LABEL_24;
  }

  context = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v56 = v31;
    v57 = 2112;
    *v58 = v14;
    _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable HAP session security with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(context);
  code = [v14 code];
  if (!code)
  {
LABEL_24:
    [(HAPAccessoryServerIP *)self invokePairVerifyCompletionBlock:v14, context];
    [(HAPAccessoryServerIP *)self setSecuritySessionOpen:1];
    [(HAPAccessoryServer *)self setReachable:1];
    [(HAPAccessoryServerIP *)self _notifyDelegatesOfConnectionState:1 withError:0];
    context = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v34;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Pair-verify succeeded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    [(HAPAccessoryServerIP *)selfCopy3 setCurrentPairVerifyError:0];
    goto LABEL_7;
  }

LABEL_8:
  if (v54)
  {
    free(v54);
  }

  if (code)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v56 = v20;
      v57 = 1024;
      *v58 = code;
      *&v58[4] = 2112;
      *&v58[6] = v5;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify message failed: %d with data: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = HMErrorFromOSStatus(code);
    useHH2 = [(HAPAccessoryServer *)selfCopy4 useHH2];
    if (code == -6727 && useHH2)
    {
      v36 = v21;
      [(HAPAccessoryServerIP *)selfCopy4 _handleSecureSessionClosingWithError:&v36 status:4294960569 data:v5];
      v24 = v36;

      v21 = v24;
    }

    [(HAPAccessoryServerIP *)selfCopy4 _tearDownSessionAndStartReachabilityWithError:v21, context];
    (*(v7 + 2))(v7, v21);
    [(HAPAccessoryServerIP *)selfCopy4 _processQueuedOperationsWithError:v21];
    [(HAPAccessoryServerIP *)selfCopy4 invokePairVerifyCompletionBlock:v21];
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v46, 8);
  v25 = *MEMORY[0x277D85DE8];
  return code;
}

void __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HAPPairingStateFromData(*(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke_2;
  v7[3] = &unk_2786D7078;
  v7[4] = *(a1 + 40);
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke_2(v7);
}

void __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v8 && a3 == 2 && !v9)
  {
    [WeakRetained _handlePairVerifyCompletionWithData:v8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v11;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v16 = @"Invalid";
      }

      else
      {
        v16 = off_2786D4CF8[a3 - 1];
      }

      v17 = v16;
      *buf = 138544130;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to send Pair Verify request, received response object: %@, MIME type: %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:39 description:@"Unable to send Pair Verify request" reason:0 suggestion:0 underlyingError:v9];
    [v13 setCurrentPairVerifyError:v18];

    [v13 _tearDownSessionAndStartReachabilityWithError:v9];
    v19 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
    if ([v13 useHH2])
    {
      v22 = v19;
      [v13 _handleSecureSessionClosingWithError:&v22 status:4294960596 data:*(*(*(a1 + 40) + 8) + 40)];
      v20 = v22;

      v19 = v20;
    }

    [v13 _processQueuedOperationsWithError:v19];
    (*(*(a1 + 32) + 16))();
    [v13 invokePairVerifyCompletionBlock:v19];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__HAPAccessoryServerIP__handlePairVerifyCompletionWithData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
    v2 = v3;
  }
}

- (int)_pairVerifyStartWithRetry:(BOOL)retry
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v27 = 0;
  objc_initWeak(&location, self);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __50__HAPAccessoryServerIP__pairVerifyStartWithRetry___block_invoke;
  v23 = &unk_2786D2968;
  objc_copyWeak(&v24, &location);
  retryCopy = retry;
  v5 = MEMORY[0x231885210](&v20);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Pair-verify starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  _ensureHTTPClientSetUp = [(HAPAccessoryServerIP *)selfCopy _ensurePairingSessionIsInitializedWithType:3, v20, v21, v22, v23];
  if (!_ensureHTTPClientSetUp)
  {
    pairingSession = selfCopy->_pairingSession;
    _ensureHTTPClientSetUp = PairingSessionExchange();
    if (!_ensureHTTPClientSetUp)
    {
      _ensureHTTPClientSetUp = [(HAPAccessoryServerIP *)selfCopy _ensureHTTPClientSetUp];
      if (!_ensureHTTPClientSetUp)
      {
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:v28];
        [(HAPAccessoryServerIP *)selfCopy sendPOSTRequestToURL:@"/pair-verify" request:v12 serializationType:2 completionHandler:v5];

        _ensureHTTPClientSetUp = 0;
      }
    }
  }

  if (v29)
  {
    free(v29);
  }

  if (_ensureHTTPClientSetUp)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 1024;
      v33 = _ensureHTTPClientSetUp;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Pair-verify start failed: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = HMErrorFromOSStatus(_ensureHTTPClientSetUp);
    [(HAPAccessoryServerIP *)v14 _tearDownSessionAndStartReachabilityWithError:v17];
    [(HAPAccessoryServerIP *)v14 invokePairVerifyCompletionBlock:v17];
    [(HAPAccessoryServerIP *)v14 _processQueuedOperationsWithError:v17];
    [(HAPAccessoryServerIP *)v14 _notifyDelegatesPairingStopped:v17];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
  return _ensureHTTPClientSetUp;
}

void __50__HAPAccessoryServerIP__pairVerifyStartWithRetry___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_autoreleasePoolPush();
  v12 = WeakRetained;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Pair-verify complete", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  if (v8 && a3 == 2 && !v9)
  {
    [v12 _handlePairVerifyCompletionWithData:v8];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v12;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v19 = @"Invalid";
      }

      else
      {
        v19 = off_2786D4CF8[a3 - 1];
      }

      v20 = v19;
      v32 = 138544130;
      v33 = v18;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v20;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to send initial Pair Verify request, received response object: %@, MIME type: %@, error: %{public}@", &v32, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if ([v9 code] == -6722)
    {
      v21 = [v16 isSeenOnBonjour];
      v22 = MEMORY[0x277CCA9B8];
      if (v21)
      {
        v23 = 38;
      }

      else
      {
        v23 = 37;
      }
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = 39;
    }

    v24 = [v22 hapErrorWithCode:v23 description:@"Unable to send initial Pair Verify request" reason:0 suggestion:0 underlyingError:v9];
    [v16 setCurrentPairVerifyError:v24];

    [v16 _tearDownSessionAndStartReachabilityWithError:v9];
    if (*(a1 + 40) == 1 && ([v16 invalidated] & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v16;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v30;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "%{public}@Retrying PV on first failure", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [v28 _pairVerifyStartWithRetry:0];
    }

    else
    {
      if (v9)
      {
        v25 = v9;
      }

      else
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:53];
      }

      v26 = v25;
      [v16 _processQueuedOperationsWithError:v25];
      [v16 _notifyDelegatesPairingStopped:v26];
      [v16 invokePairVerifyCompletionBlock:v26];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldNotifyClientsOfPVFailure:(id)failure
{
  failureCopy = failure;
  v5 = failureCopy;
  if (failureCopy && ([failureCopy underlyingErrors], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    underlyingErrors = [v5 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    v9 = !firstObject || !-[HAPAccessoryServerIP consecutivePairVerifyFailures](self, "consecutivePairVerifyFailures") || [firstObject code] != -6722;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int)_pairSetupTryPassword:(id)password
{
  v28 = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__HAPAccessoryServerIP__pairSetupTryPassword___block_invoke;
  v18[3] = &unk_2786D2940;
  objc_copyWeak(&v19, &location);
  v5 = MEMORY[0x231885210](v18);
  if (self->_pairingSession)
  {
    v6 = passwordCopy;
    [passwordCopy UTF8String];
    v7 = PairingSessionSetSetupCode();
    if (!v7)
    {
      pairingSession = self->_pairingSession;
      v9 = PairingSessionExchange();
      if (v9)
      {
        if (v9 == -6771)
        {
          v7 = 0;
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:v22];
        [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:@"/pair-setup" request:v10 serializationType:2 completionHandler:v5];

        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 4294960578;
  }

  if (v23)
  {
    free(v23);
  }

  if (v7)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 1024;
      v27 = v7;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed initializing message for try-password during Pair Setup: error: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = HMErrorFromOSStatus(v7);
    [(HAPAccessoryServerIP *)selfCopy _tearDownSessionAndStartReachabilityWithError:v15];
    [(HAPAccessoryServerIP *)selfCopy _processQueuedOperationsWithError:v15];
    [(HAPAccessoryServerIP *)selfCopy _notifyDelegatesPairingStopped:v15];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void __46__HAPAccessoryServerIP__pairSetupTryPassword___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v8 && a3 == 2 && !v9)
  {
    [WeakRetained _handlePairSetupCompletionWithData:v8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v11;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v16 = @"Invalid";
      }

      else
      {
        v16 = off_2786D4CF8[a3 - 1];
      }

      v17 = v16;
      v21 = 138544130;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to send request to try password during Pair Setup, received response object: %@, MIME type: %@, error: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];
    }

    v19 = v18;
    [v13 _tearDownSessionAndStartReachabilityWithError:v18];
    [v13 _processQueuedOperationsWithError:v19];
    [v13 _notifyDelegatesPairingStopped:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int)_promptForSetupCodeWithFlags:(unsigned int)flags delaySeconds:(int)seconds pairingFlags:(unsigned int)pairingFlags isWAC:(BOOL)c
{
  cCopy = c;
  v40 = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    *buf = 138544386;
    v31 = v14;
    v32 = 1024;
    flagsCopy = flags;
    v34 = 1024;
    secondsCopy = seconds;
    v36 = 1024;
    pairingFlagsCopy = pairingFlags;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Pair-setup received request to prompt for password, flags: %0x, delay: %d pairing flags: %0x isWAC: %@\n", buf, 0x28u);
  }

  objc_autoreleasePoolPop(v11);
  if ((flags & 0x10000) != 0 && ![(HAPAccessoryServerIP *)selfCopy isHandlingInvalidSetupCode])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Pair-setup restarting pairing before asking for the setup code.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HAPAccessoryServerIP *)v20 setHandlingInvalidSetupCode:1];
    if (cCopy)
    {
      hapWACAccessoryClient = [(HAPAccessoryServerIP *)v20 hapWACAccessoryClient];
      [hapWACAccessoryClient restart];
LABEL_21:

      result = 0;
      goto LABEL_22;
    }

    clientQueue = [(HAPAccessoryServer *)v20 clientQueue];
    hapWACAccessoryClient = clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = v20;
    v18 = block;
LABEL_20:
    dispatch_async(clientQueue, v18);
    goto LABEL_21;
  }

  if ((flags & 0x30000) != 0 || [(HAPAccessoryServerIP *)selfCopy isHandlingInvalidSetupCode])
  {
    [(HAPAccessoryServerIP *)selfCopy setHandlingInvalidSetupCode:0];
    if ([(HAPAccessoryServerIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServer_didReceiveBadPasswordThrottleAttemptsWithDelay_])
    {
      clientQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
      hapWACAccessoryClient = clientQueue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_2;
      v27[3] = &unk_2786D6740;
      v27[4] = selfCopy;
      secondsCopy2 = seconds;
      v18 = v27;
      goto LABEL_20;
    }
  }

  else if ([(HAPAccessoryServerIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
  {
    if ((pairingFlags & 0x40000000) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    clientQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
    hapWACAccessoryClient = clientQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_3;
    v26[3] = &unk_2786D63C8;
    v26[4] = selfCopy;
    v26[5] = v23;
    v18 = v26;
    goto LABEL_20;
  }

  result = -6702;
LABEL_22:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didReceiveBadPasswordThrottleAttemptsWithDelay:*(a1 + 40)];
}

void __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:*(a1 + 40)];
}

- (void)_handlePairSetupAfterM4Callback
{
  v48 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  pairingSession = self->_pairingSession;
  PeerFlags = PairingSessionGetPeerFlags();
  v6 = self->_pairingSession;
  v7 = PairingSessionCopyProperty();
  v8 = CFGetTypeID(v7);
  if (v8 != CFDataGetTypeID())
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v9 = v7;
  v10 = [HAPAccessory productDataStringFromData:v9];
  [(HAPAccessoryServer *)self setProductData:v10];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    shortDescription = [v9 shortDescription];
    *buf = 138543874;
    v43 = v14;
    v44 = 1024;
    v45 = PeerFlags;
    v46 = 2112;
    v47 = shortDescription;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Pair-setup after M4, flags %08X  productData %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v11);
  category = [(HAPAccessoryServer *)selfCopy category];
  if ([category isEqual:&unk_283EA9590])
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v18 = [mEMORY[0x277D0F8D0] preferenceForKey:@"shouldRequireOwnershipProof"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v23;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Overriding to require ownership proof flags", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      if (!v9)
      {
        v41 = 0x1A862D3F6955180CLL;
        v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v41 length:8];
        v24 = [HAPAccessory productDataStringFromData:v9];
        [(HAPAccessoryServer *)v21 setProductData:v24];

        v25 = objc_autoreleasePoolPush();
        v26 = v21;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v28;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Overriding product data to that of BBN/IMP", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ((PeerFlags & 0x40000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];
  ownershipToken = [pairingRequest ownershipToken];

  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy;
  v33 = HMFGetOSLogHandle();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
  if (!ownershipToken)
  {
    if (v34)
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v39;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Accessory requires ownership token, but we don't have one, bailing out", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    [(HAPAccessoryServerIP *)v32 _notifyDelegateNeedsOwnershipToken];
    [(HAPAccessoryServerIP *)v32 setCancelPairingErr:4294896152];
LABEL_22:
    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    CFRelease(v7);
    goto LABEL_24;
  }

  if (v34)
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v35;
    _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Adding an ownership token to the pairing session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v36 = self->_pairingSession;
  pairingRequest2 = [(HAPAccessoryServer *)v32 pairingRequest];
  ownershipToken2 = [pairingRequest2 ownershipToken];
  PairingSessionSetProperty();

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:

  v40 = *MEMORY[0x277D85DE8];
}

- (int)_handlePairSetupCompletionWithData:(id)data
{
  v76 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke;
  v59[3] = &unk_2786D6A98;
  v5 = dataCopy;
  v60 = v5;
  selfCopy = self;
  v6 = MEMORY[0x231885210](v59);
  objc_initWeak(&location, self);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_3;
  v55[3] = &unk_2786D2918;
  objc_copyWeak(&v57, &location);
  v7 = v6;
  v56 = v7;
  v50 = MEMORY[0x231885210](v55);
  pairingSession = self->_pairingSession;
  v9 = v5;
  [v5 bytes];
  [v5 length];
  v10 = PairingSessionExchange();
  cancelPairingErr = v10;
  if (v10)
  {
    if (v10 != -6771)
    {
      goto LABEL_28;
    }

LABEL_27:
    cancelPairingErr = 0;
    goto LABEL_28;
  }

  if (!v62)
  {
    if ([(HAPAccessoryServerIP *)self cancelPairingErr])
    {
      cancelPairingErr = [(HAPAccessoryServerIP *)self cancelPairingErr];
      goto LABEL_28;
    }

    v38 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:v63];
    [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:@"/pair-setup" request:v38 serializationType:2 completionHandler:v50];

    goto LABEL_27;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v15;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Pairing completed - Done", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  if ([(HAPAccessoryServer *)selfCopy2 pairSetupType]!= 3)
  {
    if ([(HAPAccessoryServer *)selfCopy2 pairSetupType]== 5 || [(HAPAccessoryServer *)selfCopy2 pairSetupType]== 6)
    {
      [(HAPAccessoryServerIP *)selfCopy2 _handleMFiCertValidation];
    }

    else
    {
      [(HAPAccessoryServerIP *)selfCopy2 _tearDownSession];
      v39 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
      [(HAPAccessoryServerIP *)selfCopy2 _processQueuedOperationsWithError:v39];
      [(HAPAccessoryServerIP *)selfCopy2 _notifyDelegatesPairingStopped:0];
    }

    goto LABEL_27;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy2;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *v65 = 138543362;
    v66 = v19;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Split pair setup done.", v65, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = self->_pairingSession;
  cancelPairingErr = PairingSessionDeriveKey();
  if (!cancelPairingErr)
  {
    v21 = self->_pairingSession;
    cancelPairingErr = PairingSessionDeriveKey();
    if (!cancelPairingErr)
    {
      v47 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
      v48 = [MEMORY[0x277CBEA90] dataWithBytes:v71 length:32];
      v22 = objc_autoreleasePoolPush();
      v23 = v17;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *v65 = 138543874;
        v66 = v25;
        v67 = 2112;
        v68 = v47;
        v69 = 2112;
        v70 = v48;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Generated read key: %@, write key: %@", v65, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      httpClient = [(HAPAccessoryServerIP *)v23 httpClient];
      v54 = 0;
      v27 = [httpClient enableUAPSessionSecurityWithReadKey:buf writeKey:v71 error:&v54];
      v49 = v54;

      if (v27)
      {
        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = v23;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *v65 = 138543618;
        v66 = v31;
        v67 = 2112;
        v68 = v49;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable HAP session security with error %@", v65, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      cancelPairingErr = [v49 code];
      if (!cancelPairingErr)
      {
LABEL_16:
        v32 = objc_autoreleasePoolPush();
        v33 = v23;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = HMFGetLogIdentifier();
          *v65 = 138543362;
          v66 = v35;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Secure session enabled - starting Auth", v65, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        [(HAPAccessoryServerIP *)v33 _notifyDelegateOfPairingProgress:2];
        date = [MEMORY[0x277CBEAA8] date];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_482;
        v51[3] = &unk_2786D6A98;
        v37 = date;
        v52 = v37;
        v53 = v33;
        [(HAPAccessoryServerIP *)v33 getAccessoryInfo:v51];

        cancelPairingErr = 0;
      }
    }
  }

LABEL_28:
  if (v64)
  {
    free(v64);
  }

  if (cancelPairingErr)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v43;
      v74 = 1024;
      v75 = cancelPairingErr;
      _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_ERROR, "%{public}@Pair-setup message failed with %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = HMErrorFromOSStatus(cancelPairingErr);
    [(HAPAccessoryServerIP *)selfCopy3 _tearDownSessionAndStartReachabilityWithError:v44];
    (*(v7 + 2))(v7, v44);
    [(HAPAccessoryServerIP *)selfCopy3 _processQueuedOperationsWithError:v44];
    [(HAPAccessoryServerIP *)selfCopy3 _notifyDelegatesPairingStopped:v44];
  }

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  v45 = *MEMORY[0x277D85DE8];
  return cancelPairingErr;
}

void __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HAPPairingStateFromData(*(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2;
  v7[3] = &unk_2786D7078;
  v7[4] = *(a1 + 40);
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2(v7);
}

void __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (v8 && a3 == 2 && !v9)
  {
    [WeakRetained _handlePairSetupCompletionWithData:v8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v11;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v16 = @"Invalid";
      }

      else
      {
        v16 = off_2786D4CF8[a3 - 1];
      }

      v17 = v16;
      v21 = 138544130;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to send Pair Setup request, received response object: %@, MIME type: %@, error: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];
    }

    v19 = v18;
    (*(*(a1 + 32) + 16))();
    [v13 _tearDownSessionAndStartReachabilityWithError:v19];
    [v13 _processQueuedOperationsWithError:v19];
    [v13 _notifyDelegatesPairingStopped:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_482(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2_483;
  v10[3] = &unk_2786D4978;
  v10[4] = *(a1 + 40);
  v12 = v6;
  v7 = v3;
  v11 = v7;
  __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2_483(v10);
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = [v8 authSession];
    [v8 authSession:v9 authComplete:v7];
  }

  else
  {
    [v8 authenticateAccessory];
  }
}

void __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2_483(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v4;
  }
}

void __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
    v2 = v3;
  }
}

- (int)_continuePairingAfterAuthPromptWithRetry:(BOOL)retry
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v32 = 0;
  self->_retryingPairSetup = retry;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke;
  v31[3] = &unk_2786D6CF0;
  v31[4] = self;
  v5 = MEMORY[0x231885210](v31, a2);
  objc_initWeak(&location, self);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke_474;
  v26 = &unk_2786D28F0;
  objc_copyWeak(&v28, &location);
  retryCopy = retry;
  v6 = v5;
  v27 = v6;
  v7 = MEMORY[0x231885210](&v23);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Pair-setup starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HAPAccessoryServerIP *)selfCopy setCachedSocketInfo:0, v23, v24, v25, v26];
  cancelPairingErr = [(HAPAccessoryServerIP *)selfCopy _ensurePairingSessionIsInitializedWithType:1];
  if (!cancelPairingErr)
  {
    pairingSession = selfCopy->_pairingSession;
    v14 = PairingSessionExchange();
    cancelPairingErr = v14;
    if (v14)
    {
      if (v14 == -6771)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ([(HAPAccessoryServerIP *)selfCopy cancelPairingErr])
      {
        cancelPairingErr = [(HAPAccessoryServerIP *)selfCopy cancelPairingErr];
        goto LABEL_10;
      }

      cancelPairingErr = [(HAPAccessoryServerIP *)selfCopy _ensureHTTPClientSetUp];
      if (!cancelPairingErr)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:v33];
        [(HAPAccessoryServerIP *)selfCopy sendPOSTRequestToURL:@"/pair-setup" request:v15 serializationType:2 completionHandler:v7];

LABEL_9:
        cancelPairingErr = 0;
      }
    }
  }

LABEL_10:
  if (v34)
  {
    free(v34);
  }

  if (cancelPairingErr)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v19;
      v37 = 1024;
      v38 = cancelPairingErr;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Pair-setup start failed: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = HMErrorFromOSStatus(cancelPairingErr);
    [(HAPAccessoryServerIP *)v17 _tearDownSessionAndStartReachabilityWithError:v20];
    (*(v6 + 2))(v6, v20);
    [(HAPAccessoryServerIP *)v17 _processQueuedOperationsWithError:v20];
    [(HAPAccessoryServerIP *)v17 _notifyDelegatesPairingStopped:v20];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
  return cancelPairingErr;
}

void __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke_2;
  v5[3] = &unk_2786D7050;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke_2(v5);
}

void __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke_474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (v8 && a3 == 2 && !v9)
  {
    [WeakRetained _handlePairSetupCompletionWithData:v8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v11;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      if ((a3 - 1) > 3)
      {
        v16 = @"Invalid";
      }

      else
      {
        v16 = off_2786D4CF8[a3 - 1];
      }

      v17 = v16;
      v25 = 138544130;
      v26 = v15;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to send initial Pair Setup request, received response object: %@, MIME type: %@, error: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:53];
    }

    v19 = v18;
    [v13 _tearDownSessionAndStartReachabilityWithError:v18];
    if (*(a1 + 48) == 1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v13;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v23;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Retrying PS on first failure", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [v21 _continuePairingAfterAuthPromptWithRetry:0];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      [v13 _notifyDelegatesPairingStopped:v19];
      [v13 _processQueuedOperationsWithError:v19];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __65__HAPAccessoryServerIP__continuePairingAfterAuthPromptWithRetry___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

- (int)_pairSetupStartWithConsentRequired:(BOOL)required
{
  requiredCopy = required;
  v63 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke;
  v56[3] = &unk_2786D6768;
  v56[4] = self;
  requiredCopy2 = required;
  __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke(v56);
  [(HAPAccessoryServerIP *)self _isAccessoryPublicKeyPresent:&v58 + 1 registeredWithHomeKit:&v58];
  if (HIBYTE(v58) == 1)
  {
    if (v58)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_460;
      v53[3] = &unk_2786D7050;
      v53[4] = self;
      v54 = 0;
      __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_460(v53);

      v5 = 0;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v60 = v28;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory public key was already present but it has not been configured with HomeKit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
      identifier = [(HAPAccessoryServer *)selfCopy identifier];
      v55 = 0;
      [keyStore registerAccessoryWithHomeKit:identifier error:&v55];
      v5 = v55;
    }

    [(HAPAccessoryServerIP *)self _notifyDelegatesPairingStopped:v5];

    goto LABEL_18;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    featureFlags = selfCopy2->_featureFlags;
    *buf = 138543618;
    v60 = v9;
    v61 = 2048;
    v62 = featureFlags;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting a reconfirm with Bonjour during pairing with flags: %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServerIP *)selfCopy2 reconfirm];
  v11 = selfCopy2->_featureFlags;
  v12 = v11 & 0xBF;
  if ((v11 & 0xBF) != 0)
  {
    if (v11)
    {
      if (requiredCopy)
      {
        v31 = [(HAPAccessoryServerIP *)selfCopy2 _ensurePairingSessionIsInitializedWithType:1];
        if (v31)
        {
LABEL_27:
          v41 = HMErrorFromOSStatus(v31);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_2;
          v46[3] = &unk_2786D7050;
          v46[4] = selfCopy2;
          v47 = v41;
          v42 = v41;
          __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_2(v46);
          [(HAPAccessoryServerIP *)selfCopy2 _notifyDelegatesOfAddAccessoryFailureWithError:v42];
          [(HAPAccessoryServerIP *)selfCopy2 _tearDownSessionAndStartReachabilityWithError:v42];
          v43 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:79 reason:0 underlyingError:v42];

          [(HAPAccessoryServerIP *)selfCopy2 _processQueuedOperationsWithError:v43];
          goto LABEL_28;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy2;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v60 = v35;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Requesting consent for MFi Auth pair-setup", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        if ([(HAPAccessoryServerIP *)v33 _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
        {
          v36 = [HAPAccessoryInfo alloc];
          name = [(HAPAccessoryServer *)v33 name];
          category = [(HAPAccessoryServer *)v33 category];
          v39 = [(HAPAccessoryInfo *)v36 initWithName:name manufacturer:0 modelName:0 category:category certificationStatus:0 denylisted:0 ppid:0];

          delegateQueue = [(HAPAccessoryServer *)v33 delegateQueue];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_466;
          v48[3] = &unk_2786D7050;
          v48[4] = v33;
          v49 = v39;
          v23 = v39;
          dispatch_async(delegateQueue, v48);

          v24 = v49;
          goto LABEL_13;
        }

LABEL_26:
        v31 = 4294960560;
        goto LABEL_27;
      }
    }

    else if ((v11 & 0x1A) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v31) = [(HAPAccessoryServerIP *)selfCopy2 _continuePairingAfterAuthPromptWithRetry:1];
    goto LABEL_28;
  }

LABEL_9:
  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy2;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = selfCopy2->_featureFlags;
    *buf = 138543618;
    v60 = v16;
    v61 = 2048;
    v62 = v17;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Accessory doesn't support known auth flags: %llu, prompting user...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (![(HAPAccessoryServerIP *)v14 _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
  {
    goto LABEL_26;
  }

  v18 = [HAPAccessoryInfo alloc];
  name2 = [(HAPAccessoryServer *)v14 name];
  category2 = [(HAPAccessoryServer *)v14 category];
  v21 = [(HAPAccessoryInfo *)v18 initWithName:name2 manufacturer:0 modelName:0 category:category2 certificationStatus:0 denylisted:0 ppid:0];

  delegateQueue2 = [(HAPAccessoryServer *)v14 delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_465;
  block[3] = &unk_2786D4978;
  v51 = v21;
  v52 = 4 * (v12 != 0);
  block[4] = v14;
  v23 = v21;
  dispatch_async(delegateQueue2, block);

  v24 = v51;
LABEL_13:

LABEL_18:
  LODWORD(v31) = 0;
LABEL_28:
  v44 = *MEMORY[0x277D85DE8];
  return v31;
}

void __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v8 = v2;
    [*(a1 + 32) isWacAccessory];
    v3 = HMFBooleanToString();
    [*(a1 + 32) isWacLegacy];
    v4 = HMFBooleanToString();
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "pairSetupType")}];
    [*(a1 + 32) authMethod];
    v6 = *(a1 + 40);
    v7 = HMFBooleanToString();
    v2 = v8;
  }
}

void __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_460(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:*(a1 + 48) accessoryInfo:*(a1 + 40) error:0];
}

void __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_466(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:3 accessoryInfo:*(a1 + 40) error:0];
}

void __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)type
{
  v44 = *MEMORY[0x277D85DE8];
  pairingRequest = [(HAPAccessoryServer *)self pairingRequest];
  pairingIdentity = [pairingRequest pairingIdentity];
  identifier = [pairingIdentity identifier];
  v8 = identifier;
  if (identifier)
  {
    controllerUsername = identifier;
  }

  else
  {
    controllerUsername = [(HAPAccessoryServerIP *)self controllerUsername];
  }

  v10 = controllerUsername;

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  v12 = PairingSessionCreate();
  if (v12)
  {
    v13 = v12;
LABEL_28:
    v28 = self->_pairingSession;
    if (v28)
    {
      CFRelease(v28);
      self->_pairingSession = 0;
    }

    goto LABEL_30;
  }

  [(HAPAccessoryServerIP *)self setCancelPairingErr:0];
  [(HAPAccessoryServer *)self setPairSetupType:1];
  if (type == 1)
  {
    featureFlags = self->_featureFlags;
    v15 = 1;
    v16 = 2;
    v17 = 4;
    v18 = 5;
    if ((featureFlags & 0x10) != 0)
    {
      v18 = 6;
    }

    if ((featureFlags & 8) == 0)
    {
      v17 = v18;
    }

    if ((featureFlags & 2) == 0)
    {
      v16 = v17;
    }

    if ((featureFlags & 1) == 0)
    {
      v15 = v16;
    }

    if ((featureFlags & 0xBF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    [(HAPAccessoryServer *)self setAuthMethod:v19];
    v20 = self->_featureFlags;
    if (v20)
    {
      goto LABEL_24;
    }

    if ((v20 & 2) != 0)
    {
      if (![(HAPAccessoryServerIP *)self authenticated])
      {
        [(HAPAccessoryServer *)self setPairSetupType:3];
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = HMFGetLogIdentifier();
          v35 = self->_featureFlags;
          *buf = 138543618;
          v39 = v34;
          v40 = 2048;
          v41 = v35;
          _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Feature flags: %llu, Performing Transient Split pair-setup", buf, 0x16u);
        }

        goto LABEL_36;
      }
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        [(HAPAccessoryServer *)self setPairSetupType:5];
        goto LABEL_24;
      }

      if ((v20 & 0x10) == 0)
      {
LABEL_24:
        v21 = self->_pairingSession;
        PairingSessionSetFlags();
        v22 = self->_pairingSession;
        PairingSessionSetEventHandler();
        goto LABEL_25;
      }

      if (![(HAPAccessoryServerIP *)self authenticated])
      {
        [(HAPAccessoryServer *)self setPairSetupType:6];
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v36 = HMFGetLogIdentifier();
          v37 = self->_featureFlags;
          *buf = 138543874;
          v39 = v36;
          v40 = 2048;
          v41 = v37;
          v42 = 1024;
          v43 = 16793617;
          _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Feature flags: %llu, Performing Transient Split pair-setup with Cert Auth flags: 0x%X", buf, 0x1Cu);
        }

LABEL_36:

        objc_autoreleasePoolPop(v31);
        goto LABEL_24;
      }
    }

    [(HAPAccessoryServer *)self setPairSetupType:4];
    goto LABEL_24;
  }

LABEL_25:
  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v26;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Setting Pairing session identifier to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v27 = self->_pairingSession;
  [v10 UTF8String];
  v13 = PairingSessionSetIdentifier();
  if (v13)
  {
    goto LABEL_28;
  }

LABEL_30:

  v29 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unsigned)_getNameResolutionGroupResolveTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPNameResolutionGroupResolveTimeout"];
  numberValue = [v3 numberValue];

  if (numberValue)
  {
    unsignedIntValue = [numberValue unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 12;
  }

  return unsignedIntValue;
}

- (int)_doEnsureHTTPClientSetUp
{
  if ([(HAPAccessoryServer *)self wakeNumber])
  {
    suspendedAccessory = [(HAPAccessoryServer *)self suspendedAccessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = suspendedAccessory;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    wakeTuples = [v5 wakeTuples];

    firstObject = [wakeTuples firstObject];
    wakeAddress = [firstObject wakeAddress];
  }

  else
  {
    wakeAddress = 0;
  }

  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (httpClient)
  {
    v11 = 0;
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v21 = 0;
  v10 = [(HAPAccessoryServerIP *)self getBonjourDeviceDNSName:&v21];
  v11 = v21;
  if (!v10)
  {
    [(HAPAccessoryServer *)self setMetric_pairVerifyConnectionEstablishedBy:@"dnsName"];
    v12 = [HAPHTTPClient alloc];
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v14 = [(HAPHTTPClient *)v12 initWithDNSName:v11 port:0 eventsEnabled:1 queue:clientQueue wakeAddress:wakeAddress];
    [(HAPAccessoryServerIP *)self setHttpClient:v14];

    httpClient2 = [(HAPAccessoryServerIP *)self httpClient];

    if (!httpClient2)
    {
      v10 = -6718;
      goto LABEL_14;
    }

    httpClient3 = [(HAPAccessoryServerIP *)self httpClient];
    clientQueue2 = [(HAPAccessoryServer *)self clientQueue];
    [httpClient3 setDelegate:self queue:clientQueue2];

    [(HAPAccessoryServerIP *)self setHasUpdatedBonjour:0];
    if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_didReceiveHTTPHeaders_httpBody_]|| [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_willSendHTTPHeaders_httpBody_])
    {
      httpClient4 = [(HAPAccessoryServerIP *)self httpClient];
      clientQueue3 = [(HAPAccessoryServer *)self clientQueue];
      [httpClient4 setDebugDelegate:self queue:clientQueue3];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (void)_populateSocketUpdateType
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  cachedSocketInfo = [(HAPAccessoryServerIP *)self cachedSocketInfo];
  httpClient = [(HAPAccessoryServerIP *)self httpClient];
  peerSocketInfo = [httpClient peerSocketInfo];
  [(HAPAccessoryServerIP *)self setCurrentSocketUpdateType:[(HAPAccessoryServerIP *)self _socketUpdateTypeForCachedSocketInfo:cachedSocketInfo newSocketInfo:peerSocketInfo]];
}

- (int64_t)_socketUpdateTypeForCachedSocketInfo:(id)info newSocketInfo:(id)socketInfo
{
  infoCopy = info;
  socketInfoCopy = socketInfo;
  v7 = socketInfoCopy;
  if (infoCopy)
  {
    if (socketInfoCopy)
    {
      ipAddressString = [infoCopy ipAddressString];
      ipAddressString2 = [v7 ipAddressString];
      v10 = [ipAddressString isEqual:ipAddressString2];

      if (v10)
      {
        port = [infoCopy port];
        port2 = [v7 port];
        v13 = [port isEqual:port2];

        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      else
      {
        ipAddressType = [infoCopy ipAddressType];
        if (ipAddressType == [v7 ipAddressType])
        {
          v14 = 5;
        }

        else
        {
          v14 = 6;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 2;
  }

  return v14;
}

- (id)getAddressTypeWithSocketInfo:(id)info
{
  ipAddressType = [info ipAddressType];
  if ((ipAddressType - 1) > 3)
  {
    return @"UnknownAddressType";
  }

  else
  {
    return off_2786D2B18[ipAddressType - 1];
  }
}

- (int)getBonjourDeviceDNSName:(id *)name
{
  v30 = *MEMORY[0x277D85DE8];
  if (!name || ![(HAPAccessoryServerIP *)self hasBonjourDeviceInfo])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *name;
      [(HAPAccessoryServerIP *)selfCopy hasBonjourDeviceInfo];
      v17 = HMFBooleanToString();
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Missing Bonjour Info with dnsName: %@, hasBonjourDeviceInfo: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  bonjourDeviceInfo = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v6 = BonjourDevice_CopyDNSNames();

  if (!v6)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 1024;
      LODWORD(v27) = 0;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@CopyDNSNames failed with error: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v19);
    free(0);
    *name = &stru_283E79C60;
    goto LABEL_15;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:strnlen(v6 encoding:0x800uLL) freeWhenDone:{4, 1}];
  *name = v7;
  if (v7)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize string with dns name: %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  free(v6);
  *name = &stru_283E79C60;
LABEL_11:
  result = -6705;
LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)httpClient:(id)client didStartConnectingToNetAddress:(id)address
{
  v20 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  addressCopy = address;
  addressFamily = [addressCopy addressFamily];
  if (addressFamily)
  {
    if (addressFamily == 2)
    {
      [(HAPAccessoryServerIP *)self setTriedConnectingToIPv6Address:1];
    }

    else if (addressFamily == 1)
    {
      [(HAPAccessoryServerIP *)self setTriedConnectingToIPv4Address:1];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = addressCopy;
      v18 = 2048;
      addressFamily2 = [addressCopy addressFamily];
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown address family in net address: %@, %lu", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)httpClient:(id)client didReceiveSocketEvent:(unint64_t)event
{
  eventCopy = event;
  v21 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    string = [MEMORY[0x277CCAB68] string];
    v12 = string;
    if (eventCopy)
    {
      [string appendString:{@", WakePacket"}];
    }

    if ((eventCopy & 2) != 0)
    {
      [v12 appendString:{@", KeepAlive"}];
    }

    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received a socket event %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  identifier = [(HAPAccessoryServer *)selfCopy identifier];
  category = [(HAPAccessoryServer *)selfCopy category];
  [mEMORY[0x277D0F8C0] reportWakeEvent:identifier linkType:1 accessoryCategory:category];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_httpClientDidCloseConnectionDueToServer:(id)server
{
  v34 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received a server-initiated disconnection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  identifier = [(HAPAccessoryServer *)selfCopy identifier];
  category = [(HAPAccessoryServer *)selfCopy category];
  [mEMORY[0x277D0F8C0] reportDisconnection:identifier linkType:1 accessoryCategory:category];

  primaryAccessory = [(HAPAccessoryServerIP *)selfCopy primaryAccessory];
  if (![primaryAccessory suspendCapable])
  {
    goto LABEL_14;
  }

  suspendedState = [primaryAccessory suspendedState];
  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (suspendedState != 2)
  {
    if (v17)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v22;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[LPM] Suspend Capable Accessory: Unexpected disconnect", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    delegate = [(HAPAccessoryServer *)v15 delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegateQueue = [(HAPAccessoryServer *)v15 delegateQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke_428;
      v30[3] = &unk_2786D6CA0;
      v30[4] = v15;
      dispatch_async(delegateQueue, v30);
    }

LABEL_14:
    invalidateReason = [serverCopy invalidateReason];
    [(HAPAccessoryServerIP *)selfCopy _tearDownSessionAndStartReachabilityWithError:invalidateReason];

    browser = [(HAPAccessoryServerIP *)selfCopy browser];
    identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
    [browser processPendingBonjourRemoveEvents:identifier2];

    goto LABEL_15;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v18;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[LPM] Suspend Capable Accessory: Disconnected -> Entering suspended mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  delegate2 = [(HAPAccessoryServer *)v15 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    delegateQueue2 = [(HAPAccessoryServer *)v15 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = v15;
    dispatch_async(delegateQueue2, block);
  }

  [(HAPAccessoryServerIP *)v15 _tearDownSession];
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];
}

void __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didDisconnectWithError:0];
}

void __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke_428(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didDisconnectWithError:0];
}

- (void)httpClientDidCloseConnectionDueToServer:(id)server
{
  serverCopy = server;
  v5 = _os_feature_enabled_impl();
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  if (v5)
  {
    v7 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v8 = __64__HAPAccessoryServerIP_httpClientDidCloseConnectionDueToServer___block_invoke;
  }

  else
  {
    v7 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v8 = __64__HAPAccessoryServerIP_httpClientDidCloseConnectionDueToServer___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v7[5] = serverCopy;
  v9 = serverCopy;
  dispatch_async(clientQueue, v7);
}

void __64__HAPAccessoryServerIP_httpClientDidCloseConnectionDueToServer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) httpClient];
  if (!v2 || (v3 = v2, v4 = *(a1 + 40), [*(a1 + 32) httpClient], v5 = objc_claimAutoreleasedReturnValue(), v5, v3, v4 == v5))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v6 _httpClientDidCloseConnectionDueToServer:v7];
  }
}

- (void)setPairVerifyCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x231885210](self->_pairVerifyCompletionBlock);
  v6 = v5;
  if (blockCopy && v5)
  {
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HAPAccessoryServerIP_setPairVerifyCompletionBlock___block_invoke;
    block[3] = &unk_2786D65D8;
    block[4] = self;
    v17 = v6;
    dispatch_async(clientQueue, block);
  }

  else if (!blockCopy)
  {
    pairVerifyCompletionBlock = self->_pairVerifyCompletionBlock;
    self->_pairVerifyCompletionBlock = 0;

    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  mach_absolute_time();
  v8 = UpTicksToMilliseconds();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HAPAccessoryServerIP_setPairVerifyCompletionBlock___block_invoke_423;
  v12[3] = &unk_2786D28C8;
  objc_copyWeak(v14, &location);
  v13 = blockCopy;
  v14[1] = v8;
  v9 = MEMORY[0x231885210](v12);
  v10 = self->_pairVerifyCompletionBlock;
  self->_pairVerifyCompletionBlock = v9;

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
LABEL_6:
}

void __53__HAPAccessoryServerIP_setPairVerifyCompletionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%{public}@pairVerifyCompletionBlock is already set!", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:23];
  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __53__HAPAccessoryServerIP_setPairVerifyCompletionBlock___block_invoke_423(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    v5 = [WeakRetained metric_pairVerifyReason];

    if (v5)
    {
      mach_absolute_time();
      [v4 setMetric_pairVerifyDurationInMS:UpTicksToMilliseconds() - *(a1 + 48)];
      v6 = [v4 currentPairVerifyError];

      if (v6)
      {
        v7 = [v4 currentPairVerifyError];
        [v4 submitPairVerifyMetricWithError:v7];
      }

      else
      {
        [v4 submitPairVerifyMetricWithError:v8];
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_establishSecureSession
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
  }

  [(HAPAccessoryServerIP *)self _pairVerifyStartWithRetry:1];
}

- (void)invokePairVerifyCompletionBlock:(id)block
{
  blockCopy = block;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPAccessoryServerIP_invokePairVerifyCompletionBlock___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_invokePairVerifyCompletionBlock:(id)block
{
  blockCopy = block;
  pairVerifyCompletionBlock = [(HAPAccessoryServerIP *)self pairVerifyCompletionBlock];
  [(HAPAccessoryServerIP *)self setPairVerifyCompletionBlock:0];
  if (pairVerifyCompletionBlock)
  {
    (pairVerifyCompletionBlock)[2](pairVerifyCompletionBlock, blockCopy);
  }

  [(HAPAccessoryServerIP *)self setEconnresetRetryInProgress:0];
}

- (void)setSecuritySessionOpen:(BOOL)open
{
  os_unfair_lock_lock_with_options();
  self->_securitySessionOpen = open;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSecuritySessionOpen
{
  os_unfair_lock_lock_with_options();
  securitySessionOpen = self->_securitySessionOpen;
  os_unfair_lock_unlock(&self->_lock);
  return securitySessionOpen;
}

- (BOOL)_isSessionEstablished
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  return self->_httpClient && self->_pairingSession && ![(HAPAccessoryServerIP *)self isEstablishingSecureConnection]|| self->_unitTest_establishedSession;
}

- (BOOL)isSessionEstablished
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HAPAccessoryServerIP_isSessionEstablished__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(clientQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __44__HAPAccessoryServerIP_isSessionEstablished__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isSessionEstablished];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_updateAccessories:(id)accessories
{
  v74 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  array = [MEMORY[0x277CBEB18] array];
  v46 = accessoriesCopy;
  v52 = [MEMORY[0x277CBEB18] arrayWithArray:accessoriesCopy];
  v5 = MEMORY[0x277CBEB18];
  accessories = [(HAPAccessoryServer *)self accessories];
  v49 = [v5 arrayWithArray:accessories];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  selfCopy = self;
  accessories2 = [(HAPAccessoryServer *)self accessories];
  v51 = [accessories2 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v51)
  {
    v50 = *v62;
    obj = accessories2;
    while (2)
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v10 = v52;
        v11 = [v10 countByEnumeratingWithState:&v57 objects:v72 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v58;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v58 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v57 + 1) + 8 * v14);
            instanceID = [v9 instanceID];
            instanceID2 = [v15 instanceID];
            v18 = [instanceID isEqualToNumber:instanceID2];

            if (v18)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v57 objects:v72 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          if ([v9 shouldMergeObject:v15])
          {
            [v9 mergeObject:v15];
            [array addObject:v9];
            [v10 removeObject:v15];
            [v49 removeObject:v9];
            goto LABEL_17;
          }

          v39 = objc_autoreleasePoolPush();
          v40 = selfCopy;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v67 = v42;
            v68 = 2112;
            v69 = v9;
            v70 = 2112;
            v71 = v15;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to merge existing accessory %@ with new accessory %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          v38 = 0;
          v31 = v46;
          v37 = obj;
          v19 = array;
          goto LABEL_40;
        }

LABEL_17:
      }

      accessories2 = obj;
      v51 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  v19 = array;
  if ([v49 count])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v23;
      v68 = 2114;
      v69 = v49;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@The following accessories are not present in the latest attribute database: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = v49;
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v53 + 1) + 8 * j);
          v30 = HMErrorFromHAPErrorCode(33);
          [v29 invalidateWithError:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v26);
    }
  }

  v31 = v46;
  if ([v52 count])
  {
    accessories3 = [(HAPAccessoryServer *)selfCopy accessories];

    if (accessories3)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v67 = v36;
        v68 = 2114;
        v69 = v52;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@The following accessories are new in the latest attribute database: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    [array addObjectsFromArray:v52];
  }

  v37 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  [(HAPAccessoryServer *)selfCopy setAccessories:v37];
  v38 = 1;
LABEL_40:

  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

- (void)_updateProtocolVersionFromPrimaryAccessory:(id)accessory
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  services = [accessory services];
  v5 = [services countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(services);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      type = [v9 type];
      v11 = [type isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [services countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_20;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    characteristics = [v12 characteristics];
    v14 = [characteristics countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
LABEL_13:
      v17 = 0;
      while (1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(characteristics);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        type2 = [v18 type];
        v20 = [type2 isEqualToString:@"00000037-0000-1000-8000-0026BB765291"];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [characteristics countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      value = [v18 value];

      if (!value)
      {
        goto LABEL_26;
      }

      v22 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:value];
      [(HAPAccessoryServer *)self setVersion:v22];
      v23 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];
      v24 = [v22 isAtLeastVersion:v23];

      if (v24)
      {
        [(HAPAccessoryServer *)self setSupportsTimedWrite:1];
      }
    }

    else
    {
LABEL_19:
      value = characteristics;
    }
  }

  else
  {
LABEL_9:

LABEL_20:
    v12 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:0 updateVersion:0];
    [(HAPAccessoryServer *)self setVersion:v12];
  }

LABEL_26:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)__registerForInternalCharacteristicNotifications
{
  v41 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  accessories = [(HAPAccessoryServer *)self accessories];
  v5 = [accessories countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = &selRef_initWithName_activity_block_;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 conformsToProtocol:v8[94]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v11 = accessories;
          v12 = [v10 accessoryServerDidRequestCharacteristicsToRegisterForNotifications:selfCopy];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                if (([v17 eventNotificationsEnabled] & 1) == 0)
                {
                  [array addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v14);
          }

          accessories = v11;
          v8 = &selRef_initWithName_activity_block_;
        }
      }

      v6 = [accessories countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__HAPAccessoryServerIP___registerForInternalCharacteristicNotifications__block_invoke;
    v26[3] = &unk_2786D5B30;
    v26[4] = selfCopy;
    v18 = MEMORY[0x231885210](v26);
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = array;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Registering events for characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    clientQueue = [(HAPAccessoryServer *)v20 clientQueue];
    [(HAPAccessoryServerIP *)v20 enableEvents:1 forCharacteristics:array withCompletionHandler:v18 queue:clientQueue];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __72__HAPAccessoryServerIP___registerForInternalCharacteristicNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      v12 = "%{public}@Failed to enable notifications for accessory with error: %@";
      v13 = v9;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, v12, &v16, v14);
    }
  }

  else if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    v12 = "%{public}@Successfully enabled notifications for accessory";
    v13 = v9;
    v14 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_parseAttributeDatabase:(id)database transaction:(id)transaction
{
  v84 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  transactionCopy = transaction;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:databaseCopy options:0 error:0];
  v70 = v8;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v79 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Parsing attribute database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v19 = v18;
    if (v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = databaseCopy;
    }

    *buf = 138543618;
    v79 = v18;
    v80 = 2112;
    v81 = v20;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Parsing attribute database: %@", buf, 0x16u);
  }

  v69 = v10;

  objc_autoreleasePoolPop(v15);
  v21 = [(__CFString *)databaseCopy objectForKeyedSubscript:@"accessories"];
  if (!v21)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = v16;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v46;
      _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, "%{public}@No accessory objects found in the attribute database", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    v28 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2];
    if (v28)
    {
      goto LABEL_32;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v16;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = objc_opt_class();
      *buf = 138543874;
      v79 = v25;
      v80 = 2114;
      v81 = @"accessories";
      v82 = 2114;
      v83 = v26;
      v27 = v26;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Expected the value of '%{public}@' to be an array in the attribute database, instead it is a %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v28 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2];
    if (v28)
    {
LABEL_32:
      v47 = v28;
      v48 = v70;
      goto LABEL_55;
    }
  }

  v66 = v9;
  v67 = transactionCopy;
  v68 = databaseCopy;
  v29 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v21, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v21;
  obj = v21;
  v31 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  v72 = array;
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v74;
LABEL_18:
    v35 = 0;
    v36 = v33;
    while (1)
    {
      if (*v74 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v33 = [HAPAccessoryServerIP _parseSerializedAccessoryDictionary:*(*(&v73 + 1) + 8 * v35) server:v16, v65];

      if (!v33)
      {
        break;
      }

      instanceID = [v33 instanceID];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v39 = [instanceID isEqualToNumber:v38];

      if (v39)
      {
        [v33 setPrimary:1];
        [(HAPAccessoryServerIP *)v16 setPrimaryAccessoryForServer:v33];
        [(HAPAccessoryServerIP *)v16 _updateProtocolVersionFromPrimaryAccessory:v33];
      }

      else
      {
        [v33 setPrimary:0];
      }

      instanceID2 = [v33 instanceID];
      v41 = [v29 containsObject:instanceID2];

      if (v41)
      {
        v49 = objc_autoreleasePoolPush();
        v53 = v16;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v79 = v54;
          _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_ERROR, "%{public}@Accessory Server has accessory with duplicate instance ID", buf, 0xCu);

          goto LABEL_39;
        }

        goto LABEL_41;
      }

      instanceID3 = [v33 instanceID];
      [v29 addObject:instanceID3];

      [v33 setServer:v16];
      array = v72;
      [v72 addObject:v33];
      ++v35;
      v36 = v33;
      if (v32 == v35)
      {
        v32 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      }
    }

    v49 = objc_autoreleasePoolPush();
    v50 = v16;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v52;
      _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse serialized accessory", buf, 0xCu);

      v33 = 0;
LABEL_39:
      transactionCopy = v67;
      databaseCopy = v68;
      goto LABEL_42;
    }

    v33 = 0;
LABEL_41:
    transactionCopy = v67;
    databaseCopy = v68;
LABEL_42:
    array = v72;

    objc_autoreleasePoolPop(v49);
    v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];

    if (v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v33 = 0;
LABEL_34:

    transactionCopy = v67;
    databaseCopy = v68;
  }

  if ([array count] < 0xC9)
  {
    if ([(HAPAccessoryServerIP *)v16 _updateAccessories:array])
    {
      v47 = 0;
      goto LABEL_53;
    }

    v55 = objc_autoreleasePoolPush();
    v61 = v16;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v63 = v62 = transactionCopy;
      *buf = 138543362;
      v79 = v63;
      _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessories, returning invalid response error", buf, 0xCu);

      transactionCopy = v62;
    }

    v60 = 50;
  }

  else
  {
    v55 = objc_autoreleasePoolPush();
    v56 = v16;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v59 = v58 = transactionCopy;
      *buf = 138543362;
      v79 = v59;
      _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Accessory Server exceeds maximum number of allowed accessories", buf, 0xCu);

      transactionCopy = v58;
    }

    v60 = 49;
  }

  objc_autoreleasePoolPop(v55);
  v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v60];
  array = v72;
LABEL_53:

  v48 = v70;
  v21 = v65;
  v9 = v66;
  if (!v47)
  {
    [(HAPAccessoryServerIP *)v16 setHasAttributeDatabase:1];
  }

LABEL_55:
  [(HAPAccessoryServerIP *)v16 __registerForInternalCharacteristicNotifications];
  [(HAPAccessoryServerIP *)v16 _notifyDelegateOfDiscoveryCompletionWithError:v47];
  [(HAPAccessoryServerIP *)v16 _processQueuedOperationsWithError:v47];

  objc_autoreleasePoolPop(v48);
  v64 = *MEMORY[0x277D85DE8];
}

- (void)_getAttributeDatabase
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__742;
  v8[4] = __Block_byref_object_dispose__743;
  v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.CoreHAP.get-att-db"];
  v3 = objc_autoreleasePoolPush();
  v4 = [@"/" stringByAppendingPathComponent:@"accessories"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HAPAccessoryServerIP__getAttributeDatabase__block_invoke;
  v5[3] = &unk_2786D28A0;
  objc_copyWeak(&v6, &location);
  v5[4] = v8;
  [(HAPAccessoryServerIP *)self sendGETRequestToURL:v4 timeout:v5 completionHandler:0.0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v3);
  _Block_object_dispose(v8, 8);
}

void __45__HAPAccessoryServerIP__getAttributeDatabase__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v8 && a3 == 1 && !v9)
    {
      [WeakRetained _parseAttributeDatabase:v8 transaction:*(*(*(a1 + 32) + 8) + 40)];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v11;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        if ((a3 - 1) > 3)
        {
          v16 = @"Invalid";
        }

        else
        {
          v16 = off_2786D4CF8[a3 - 1];
        }

        v17 = v16;
        v23 = 138544130;
        v24 = v15;
        v25 = 2114;
        v26 = v8;
        v27 = 2114;
        v28 = v17;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get attribute database, received response object: %{public}@, MIME type: %{public}@, error: %{public}@", &v23, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      if (v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];
      }

      v19 = v18;
      [v13 _tearDownSessionAndStartReachabilityWithError:v18];
      [v13 _notifyDelegateOfDiscoveryCompletionWithError:v19];
      [v13 _processQueuedOperationsWithError:v19];
      v20 = *(*(a1 + 32) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_parseTXTRecordDictionary:(id)dictionary
{
  v104 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_dataForKey:@"id"];
  if (!v5)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v17;
      v100 = 2112;
      v101 = @"id";
LABEL_11:
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@TXT record does not contain data for key '%@'", buf, 0x16u);
    }

LABEL_12:

LABEL_13:
    objc_autoreleasePoolPop(v14);
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = 0x277CCA000uLL;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  [(HAPAccessoryServer *)self setIdentifier:v8];

  self->_featureFlags = 0;
  v9 = [dictionaryCopy hmf_dataForKey:@"ff"];

  if (v9)
  {
    [v9 bytes];
    [v9 length];
    p_featureFlags = &self->_featureFlags;
    SNScanF();
  }

  v10 = [dictionaryCopy hmf_dataForKey:{@"md", p_featureFlags}];

  if (!v10)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v17;
      v100 = 2112;
      v101 = @"md";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  [(HAPAccessoryServerIP *)self setModel:v11];

  v12 = [dictionaryCopy hmf_dataForKey:@"sv"];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    [(HAPAccessoryServerIP *)self setSourceVersion:v13];
  }

  else
  {
    [(HAPAccessoryServerIP *)self setSourceVersion:0];
  }

  v21 = [dictionaryCopy hmf_dataForKey:@"pv"];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v22];
      [(HAPAccessoryServer *)self setVersion:v23];
      if ([v23 majorVersion] >= 2)
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          v99 = v44;
          v100 = 2112;
          v101 = v22;
          _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@TXT record contains incompatible protocol version %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        if ([(HAPAccessoryServerIP *)selfCopy3 isPaired])
        {
          [(HAPAccessoryServer *)selfCopy3 setReachabilityChangedReason:@"Internal"];
          [(HAPAccessoryServer *)selfCopy3 setReachable:0];
          [(HAPAccessoryServerIP *)selfCopy3 _tearDownSession];
        }

        goto LABEL_50;
      }
    }
  }

  v24 = [dictionaryCopy hmf_dataForKey:@"w#"];

  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
    longLongValue = [(__CFString *)v25 longLongValue];
    if ((longLongValue - 1) >= 0xFFFFFFFF)
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v99 = v33;
        v100 = 2112;
        v101 = v25;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@TXT record key 'w#' has invalid wake number: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      goto LABEL_14;
    }

    v27 = longLongValue;
  }

  else
  {
    v27 = 0;
  }

  if ([(HAPAccessoryServer *)self wakeNumber]!= v27 && [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateWakeNumber_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HAPAccessoryServerIP__parseTXTRecordDictionary___block_invoke;
    block[3] = &unk_2786D63C8;
    block[4] = self;
    block[5] = v27;
    dispatch_async(delegateQueue, block);
  }

  [(HAPAccessoryServer *)self setWakeNumber:v27];
  v21 = [dictionaryCopy hmf_dataForKey:@"c#"];

  if (!v21)
  {
    if (v27)
    {
      goto LABEL_36;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v93 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v94;
      v100 = 2112;
      v101 = @"c#";
      _os_log_impl(&dword_22AADC000, v93, OS_LOG_TYPE_ERROR, "%{public}@TXT record does not contain data for key '%@'", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
  longLongValue2 = [(__CFString *)v22 longLongValue];
  if ((longLongValue2 - 1) >= 0xFFFFFFFF)
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v99 = v48;
      _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_ERROR, "%{public}@TXT record key 'c#' has invalid configuration number", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
LABEL_50:

    goto LABEL_14;
  }

  [(HAPAccessoryServer *)self setConfigNumber:longLongValue2];

LABEL_36:
  v34 = [dictionaryCopy hmf_dataForKey:@"s#"];

  if (v34)
  {
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v34 encoding:4];
    longLongValue3 = [v35 longLongValue];
    if ((longLongValue3 - 0x100000000) <= 0xFFFFFFFF00000000)
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v99 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@TXT record key 's#' has invalid state number", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      longLongValue3 = 1;
    }

    [(HAPAccessoryServer *)self setStateNumber:longLongValue3];
  }

  else
  {
    v49 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v52;
      v100 = 2112;
      v101 = @"s#";
      _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_ERROR, "%{public}@TXT record does not contain data for key '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    [(HAPAccessoryServer *)selfCopy8 setStateNumber:1];
  }

  v53 = [dictionaryCopy hmf_dataForKey:@"sf"];

  if (v53)
  {
    v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v53 encoding:4];
    longLongValue4 = [v54 longLongValue];
  }

  else
  {
    longLongValue4 = 0;
  }

  v56 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v58 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = HMFGetLogIdentifier();
    isPaired = [(HAPAccessoryServerIP *)selfCopy9 isPaired];
    v61 = @"No";
    *buf = 138543874;
    v99 = v59;
    if (isPaired)
    {
      v61 = @"Yes";
    }

    v100 = 2112;
    v101 = v61;
    v102 = 2048;
    v103 = longLongValue4;
    _os_log_impl(&dword_22AADC000, v58, OS_LOG_TYPE_DEBUG, "%{public}@Paired: %@, Setting status flags to %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v56);
  [(HAPAccessoryServerIP *)selfCopy9 setStatusFlags:longLongValue4];
  if (![(HAPAccessoryServerIP *)selfCopy9 isWacAccessory]|| [(HAPAccessoryServerIP *)selfCopy9 isWacLegacy])
  {
    [(HAPAccessoryServer *)selfCopy9 setHasPairings:(longLongValue4 & 1) == 0];
  }

  v62 = [dictionaryCopy hmf_dataForKey:@"ci"];

  if (v62)
  {
    v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v62 encoding:4];
    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v63, "longLongValue")}];
    [(HAPAccessoryServer *)selfCopy9 setCategory:v64];
  }

  else
  {
    v65 = objc_autoreleasePoolPush();
    v66 = selfCopy9;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v68;
      v100 = 2112;
      v101 = @"ci";
      _os_log_impl(&dword_22AADC000, v67, OS_LOG_TYPE_ERROR, "%{public}@TXT record does not contain data for key '%@', set the category to @(1) - Other", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v65);
    [(HAPAccessoryServer *)v66 setCategory:&unk_283EA9560];
  }

  v69 = [dictionaryCopy hmf_dataForKey:@"sh"];

  if (v69)
  {
    v70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v69 encoding:4];
    v71 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
    v96 = 0;
    v72 = [v71 reverseTransformedValue:v70 format:12 error:&v96];
    v73 = v96;

    if (v72)
    {
      [(HAPAccessoryServer *)selfCopy9 setSetupHash:v72];
      v74 = objc_autoreleasePoolPush();
      v75 = selfCopy9;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        v77 = HMFGetLogIdentifier();
        *buf = 138543618;
        v99 = v77;
        v100 = 2112;
        v101 = v72;
        _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_DEBUG, "%{public}@Setup hash is %@ for accessory server", buf, 0x16u);

        v7 = 0x277CCA000;
      }

      objc_autoreleasePoolPop(v74);
    }
  }

  else
  {
    v78 = objc_autoreleasePoolPush();
    v79 = selfCopy9;
    v80 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      v81 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v81;
      v100 = 2112;
      v101 = @"sh";
      _os_log_impl(&dword_22AADC000, v80, OS_LOG_TYPE_DEBUG, "%{public}@TXT record does not contain data for key '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v78);
  }

  [(HAPAccessoryServer *)selfCopy9 setCompatibilityFeatures:0];
  v82 = [dictionaryCopy hmf_dataForKey:@"fe"];

  if (v82)
  {
    v83 = [objc_alloc(*(v7 + 3240)) initWithData:v82 encoding:4];
    longLongValue5 = [(__CFString *)v83 longLongValue];
    if ((longLongValue5 - 0x100000000) > 0xFFFFFFFF00000000)
    {
      [(HAPAccessoryServer *)selfCopy9 setCompatibilityFeatures:longLongValue5];
    }

    else
    {
      v85 = objc_autoreleasePoolPush();
      v86 = selfCopy9;
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = HMFGetLogIdentifier();
        *buf = 138543618;
        v99 = v88;
        v100 = 2112;
        v101 = v83;
        _os_log_impl(&dword_22AADC000, v87, OS_LOG_TYPE_ERROR, "%{public}@TXT record key 'fe' has invalid value %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v85);
    }
  }

  else
  {
    v89 = objc_autoreleasePoolPush();
    v90 = selfCopy9;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      v92 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v92;
      v100 = 2112;
      v101 = @"fe";
      _os_log_impl(&dword_22AADC000, v91, OS_LOG_TYPE_DEBUG, "%{public}@TXT record does not contain data for key '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v89);
  }

  v18 = 1;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __50__HAPAccessoryServerIP__parseTXTRecordDictionary___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v4 accessoryServer:v2 didUpdateWakeNumber:v3];
}

- (BOOL)_parseAndValidateTXTRecord
{
  v26 = *MEMORY[0x277D85DE8];
  bonjourDeviceInfo = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v4 = [bonjourDeviceInfo objectForKeyedSubscript:@"txt"];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB78] dictionaryFromTXTRecordData:v4];
    if (v5)
    {
      if ([(HAPAccessoryServerIP *)self _parseTXTRecordDictionary:v5])
      {
        identifier = [(HAPAccessoryServer *)self identifier];

        if (identifier)
        {
          v7 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v16;
          v24 = 2112;
          v25 = v5;
          v17 = "%{public}@Failed to instantiate accessory because a deviceID wasn't present in the TXT record dictionary: %@";
          goto LABEL_15;
        }

LABEL_16:

        objc_autoreleasePoolPop(v13);
        v7 = 0;
        goto LABEL_17;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      v17 = "%{public}@Failed to instantiate accessory because TXT record is malformed: %@";
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v4;
      v17 = "%{public}@Failed to instantiate accessory because the TXT record data could not be converted to a dictionary: %@";
    }

LABEL_15:
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, v17, &v22, 0x16u);

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    bonjourDeviceInfo2 = [(HAPAccessoryServerIP *)selfCopy4 bonjourDeviceInfo];
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = bonjourDeviceInfo2;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate accessory because no TXT record data was found in BonjourDeviceInfo: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_processEvent:(id)event matchedCharacteristic:(id *)characteristic
{
  v92 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![(HAPAccessoryServerIP *)self _isSessionEstablished])
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v29;
      v88 = 2112;
      v89 = eventCopy;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@No secure session dropping event %@", buf, 0x16u);
LABEL_21:
    }

LABEL_22:

    objc_autoreleasePoolPop(v26);
    v24 = 0;
    goto LABEL_60;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v29;
      v88 = 2112;
      v89 = objc_opt_class();
      v30 = v89;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle individual event update because it is not a dictionary, instead it is %@", buf, 0x16u);

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v7 = [(__CFString *)eventCopy hmf_numberForKey:@"aid"];
  if (v7)
  {
    v8 = [(__CFString *)eventCopy hmf_numberForKey:@"iid"];
    if (v8)
    {
      v9 = [(__CFString *)eventCopy objectForKeyedSubscript:@"value"];
      v10 = v9;
      if (v9)
      {
        v75 = v9;
        accessories = [(HAPAccessoryServer *)self accessories];
        v77 = v7;
        v12 = [accessories hmf_firstObjectWithInstanceID:v7];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v74 = v12;
        services = [v12 services];
        v14 = [services countByEnumeratingWithState:&v81 objects:v85 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v82;
LABEL_8:
          v17 = 0;
          while (1)
          {
            if (*v82 != v16)
            {
              objc_enumerationMutation(services);
            }

            characteristics = [*(*(&v81 + 1) + 8 * v17) characteristics];
            v19 = [characteristics hmf_firstObjectWithInstanceID:v8];

            if (v19)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [services countByEnumeratingWithState:&v81 objects:v85 count:16];
              if (v15)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          if ([v19 shouldValidateValueAfterReading])
          {
            metadata = [v19 metadata];
            format = [metadata format];
            v43 = HAPCharacteristicFormatFromString(format);

            v10 = v75;
            v7 = v77;
            if (!v43)
            {
              v44 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v47 = v73 = v44;
                *buf = 138543362;
                v87 = v47;
                _os_log_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%{public}@The characteristic has not specified a characteristic format type. This may cause the characteristic value to contain an object of an unexpected type. For now, the value will be passed through without transformation into an appropriate type. At some point in the future, support for this accessory may be dropped.", buf, 0xCu);

                v44 = v73;
              }

              objc_autoreleasePoolPop(v44);
              v48 = v75;
              goto LABEL_41;
            }
          }

          else
          {
            v43 = 12;
            v10 = v75;
            v7 = v77;
          }

          v53 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
          v80 = 0;
          v48 = [v53 reverseTransformedValue:v10 format:v43 error:&v80];
          v54 = v80;

          if (v54)
          {
            v78 = v48;
            v55 = objc_autoreleasePoolPush();
            selfCopy6 = self;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              *buf = 138543874;
              v87 = v58;
              v88 = 2112;
              v89 = v10;
              v90 = 2112;
              v91 = v54;
              v59 = "%{public}@Failed to transform the value '%@' with error %@";
              v60 = v57;
              v61 = 32;
LABEL_45:
              _os_log_impl(&dword_22AADC000, v60, OS_LOG_TYPE_ERROR, v59, buf, v61);
            }

LABEL_46:

            objc_autoreleasePoolPop(v55);
            v24 = 0;
            v25 = v74;
            v48 = v78;
            goto LABEL_54;
          }

LABEL_41:
          if (![v19 shouldValidateValueAfterReading] || (objc_msgSend(v19, "validateValue:outValue:", v48, 0), (v62 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            if (([v19 properties] & 0x100) != 0)
            {
              v63 = _parseNotificationContextFromCharacteristicResponse(eventCopy);
              [v19 setNotificationContext:v63];

              v64 = objc_autoreleasePoolPush();
              selfCopy5 = self;
              v66 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v67 = v76 = v64;
                [v19 notificationContext];
                v68 = v79 = v48;
                *buf = 138543874;
                v87 = v67;
                v88 = 2112;
                v89 = v68;
                v90 = 2112;
                v91 = v8;
                _os_log_impl(&dword_22AADC000, v66, OS_LOG_TYPE_INFO, "%{public}@Received notification context:%@ in event for characteristic instanceId: %@", buf, 0x20u);

                v48 = v79;
                v64 = v76;
              }

              objc_autoreleasePoolPop(v64);
            }

            else
            {
              [v19 setNotificationContext:0];
            }

            v25 = v74;
            if (!characteristic)
            {
              v24 = 1;
              goto LABEL_55;
            }

            v54 = [v19 copy];
            [(__CFString *)v54 setValue:v48];
            service = [v19 service];
            [(__CFString *)v54 setService:service];

            v70 = v54;
            *characteristic = v54;
            v24 = 1;
LABEL_54:

LABEL_55:
            goto LABEL_56;
          }

          v54 = v62;
          v78 = v48;
          v55 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = HMFGetLogIdentifier();
            *buf = 138543618;
            v87 = v58;
            v88 = 2112;
            v89 = v54;
            v59 = "%{public}@Failed to handle individual event update because the new value is invalid with error %@";
            v60 = v57;
            v61 = 22;
            goto LABEL_45;
          }

          goto LABEL_46;
        }

LABEL_14:

        v20 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v87 = v23;
          _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle individual event update because there was no matching characteristic", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v24 = 0;
        v10 = v75;
        v7 = v77;
        v25 = v74;
LABEL_56:
      }

      else
      {
        v49 = objc_autoreleasePoolPush();
        selfCopy8 = self;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = HMFGetLogIdentifier();
          *buf = 138543362;
          v87 = v52;
          _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle individual event update because there was no value", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v49);
        v24 = 0;
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543874;
        v87 = v39;
        v88 = 2112;
        v89 = @"iid";
        v90 = 2112;
        v91 = objc_opt_class();
        v40 = v91;
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle individual event update because '%@' is not a number, instead it is %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v24 = 0;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v87 = v34;
      v88 = 2112;
      v89 = @"aid";
      v90 = 2112;
      v91 = objc_opt_class();
      v35 = v91;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle individual event update because '%@' is not a number, instead it is %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v24 = 0;
  }

LABEL_60:
  v71 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)httpClient:(id)client didReceiveEvent:(id)event
{
  v51 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  eventCopy = event;
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  identifier = [(HAPAccessoryServer *)self identifier];
  category = [(HAPAccessoryServer *)self category];
  [mEMORY[0x277D0F8C0] reportIncomingIPEvent:identifier accessoryCategory:category];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [eventCopy objectForKeyedSubscript:@"characteristics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x277CBEB18] array];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v11;
      v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v41;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v39 = 0;
            v18 = [(HAPAccessoryServerIP *)self _processEvent:v17 matchedCharacteristic:&v39];
            v19 = v39;
            if (!v18)
            {
              v31 = objc_autoreleasePoolPush();
              selfCopy = self;
              v33 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543362;
                v46 = v34;
                _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to process individual event", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v31);
              goto LABEL_21;
            }

            [array addObject:v19];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __51__HAPAccessoryServerIP_httpClient_didReceiveEvent___block_invoke;
            v37[3] = &unk_2786D2878;
            v37[4] = self;
            v38 = v19;
            v20 = v19;
            [(HAPAccessoryServer *)self enumerateInternalDelegatesUsingBlock:v37];
          }

          v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      [(HAPAccessoryServerIP *)self _handleUpdatesForCharacteristics:array stateNumber:0];
LABEL_21:
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v46 = v29;
        v47 = 2112;
        v48 = @"characteristics";
        v49 = 2112;
        v50 = objc_opt_class();
        v30 = v50;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle event because the '%@' value was not an array, instead it was %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v24;
      v47 = 2112;
      v48 = objc_opt_class();
      v25 = v48;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle event because it was not an NSDictionary, instead it was %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __51__HAPAccessoryServerIP_httpClient_didReceiveEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryServer:*(a1 + 32) didUpdateValueForCharacteristic:*(a1 + 40)];
  }
}

- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v84 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  v11 = characteristicsCopy;
  v57 = v11;
  if (self)
  {
    v12 = v11;
    selfCopy = self;
    v55 = handlerCopy;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      instanceID = 0;
      v18 = *v71;
LABEL_4:
      v19 = 0;
      v20 = v16;
      v21 = instanceID;
      while (1)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v13;
        v23 = *(*(&v70 + 1) + 8 * v19);
        if (([v23 properties] & 1) == 0)
        {
          break;
        }

        service = [v23 service];
        accessory = [service accessory];
        instanceID = [accessory instanceID];

        if (!instanceID)
        {
          v30 = objc_autoreleasePoolPush();
          self = selfCopy;
          v35 = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v79 = v36;
            v80 = 2112;
            v81 = v23;
            _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize event request for characteristic %@ because the accessory instance ID was nil.", buf, 0x16u);
          }

          v21 = 0;
          v34 = 20;
LABEL_20:
          v13 = v22;

          objc_autoreleasePoolPop(v30);
          v29 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v34];
          v37 = v29;

          v28 = 0;
          goto LABEL_21;
        }

        v77[0] = instanceID;
        v76[0] = @"aid";
        v76[1] = @"iid";
        instanceID2 = [v23 instanceID];
        v77[1] = instanceID2;
        v76[2] = @"ev";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:eventsCopy];
        v77[2] = v27;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];

        v13 = v22;
        [v22 addObject:v16];
        ++v19;
        v20 = v16;
        v21 = instanceID;
        if (v15 == v19)
        {
          v15 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v30 = objc_autoreleasePoolPush();
      self = selfCopy;
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v79 = v33;
        v80 = 2112;
        v81 = v23;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Characteristic doesn't support notifications: %@", buf, 0x16u);
      }

      v34 = 3;
      goto LABEL_20;
    }

    v16 = 0;
    instanceID = 0;
LABEL_13:

    v28 = v13;
    v29 = 0;
    v21 = instanceID;
    v20 = v16;
    self = selfCopy;
LABEL_21:

    handlerCopy = v55;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v38 = v29;
  if (!v28)
  {
    v41 = queueCopy;
    if (!handlerCopy)
    {
      goto LABEL_36;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HAPAccessoryServerIP__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D65D8;
    v69 = handlerCopy;
    v68 = v38;
    dispatch_async(queueCopy, block);

    v42 = v69;
LABEL_32:

    goto LABEL_36;
  }

  if ([v28 count])
  {
    if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
    {
      v74 = @"characteristics";
      v75 = v28;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v40 = [@"/" stringByAppendingPathComponent:@"characteristics"];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __85__HAPAccessoryServerIP__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_344;
      v60[3] = &unk_2786D2850;
      v60[4] = self;
      v61 = v57;
      v64 = eventsCopy;
      v63 = handlerCopy;
      v41 = queueCopy;
      v62 = queueCopy;
      [(HAPAccessoryServerIP *)self sendPUTRequestToURL:v40 request:v39 serializationType:1 timeout:v60 completionHandler:10.0];
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = HMFGetLogIdentifier();
        *v82 = 138543362;
        v83 = v52;
        _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing enableEvents", v82, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v41 = queueCopy;
      [(HAPAccessoryServerIP *)selfCopy2 _queueEnableEvents:eventsCopy forCharacteristics:v57 withCompletionHandler:handlerCopy queue:queueCopy];
      [(HAPAccessoryServerIP *)selfCopy2 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.events"];
    }

    goto LABEL_36;
  }

  v43 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v45 = v43;
  v46 = selfCopy3;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = HMFGetLogIdentifier();
    *v82 = 138543362;
    v83 = v48;
    _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Modifying 0 characteristics, bailing", v82, 0xCu);
  }

  objc_autoreleasePoolPop(v45);
  v41 = queueCopy;
  if (handlerCopy)
  {
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __85__HAPAccessoryServerIP__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_340;
    v65[3] = &unk_2786D6490;
    v66 = handlerCopy;
    dispatch_async(queueCopy, v65);
    v42 = v66;
    goto LABEL_32;
  }

LABEL_36:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HAPAccessoryServerIP_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  block[3] = &unk_2786D6510;
  eventsCopy = events;
  block[4] = self;
  v18 = characteristicsCopy;
  v19 = queueCopy;
  v20 = handlerCopy;
  v14 = queueCopy;
  v15 = handlerCopy;
  v16 = characteristicsCopy;
  dispatch_async(clientQueue, block);
}

- (void)_handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  v41 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  numberCopy = number;
  if (![(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    goto LABEL_23;
  }

  selfCopy = self;
  v27 = numberCopy;
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = characteristicsCopy;
  obj = characteristicsCopy;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v35;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v35 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v34 + 1) + 8 * i);
      service = [v13 service];
      type = [service type];
      if ([type isEqualToString:@"00000125-0000-1000-8000-0026BB765291"])
      {
        type2 = [v13 type];
        v17 = [type2 isEqualToString:@"00000126-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          v18 = [HAPCharacteristicEvent eventWithCharacteristic:v13];
          [v29 addObject:v18];

          goto LABEL_16;
        }
      }

      else
      {
      }

      type3 = [service type];
      if (([type3 isEqualToString:@"00000125-0000-1000-8000-0026BB765291"] & 1) == 0)
      {
        goto LABEL_14;
      }

      type4 = [v13 type];
      v21 = [type4 isEqualToString:@"000000E7-0000-1000-8000-0026BB765291"];

      if (v21)
      {
        type3 = [HAPCharacteristicEvent eventWithCharacteristic:v13];
        [v29 addObject:type3];
LABEL_14:
      }

      [v8 addObject:v13];
LABEL_16:
    }

    v10 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v10);
LABEL_18:

  if ([v29 count])
  {
    v38 = @"HAPCharacteristicEvents";
    v39 = v29;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HAPCharacteristicEventNotification" object:0 userInfo:v22];
  }

  numberCopy = v27;
  if ([v8 count])
  {
    delegateQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HAPAccessoryServerIP__handleUpdatesForCharacteristics_stateNumber___block_invoke;
    block[3] = &unk_2786D7078;
    block[4] = selfCopy;
    v32 = v8;
    v33 = v27;
    dispatch_async(delegateQueue, block);
  }

  characteristicsCopy = v28;
LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

void __69__HAPAccessoryServerIP__handleUpdatesForCharacteristics_stateNumber___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v4 accessoryServer:v2 didUpdateValuesForCharacteristics:v3 stateNumber:*(a1 + 48) broadcast:0];
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPAccessoryServerIP_handleUpdatesForCharacteristics_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = characteristicsCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = characteristicsCopy;
  dispatch_async(clientQueue, block);
}

- (void)handleHTTPClientUnavailableErrorWithCompletion:(id)completion serializationType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to handle request because httpClient has been deallocated", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [MEMORY[0x277CCA9B8] hapHMErrorWithCode:4 description:@"Failed to handle request because httpClient has been deallocated" reason:0 suggestion:0 underlyingError:0 marker:1902];
  completionCopy[2](completionCopy, 0, type, 503, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (httpClient)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      httpClient2 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      peerSocketInfo = [httpClient2 peerSocketInfo];
      ipAddressStringWithScope = [peerSocketInfo ipAddressStringWithScope];
      httpClient3 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      peerSocketInfo2 = [httpClient3 peerSocketInfo];
      [peerSocketInfo2 port];
      v17 = v28 = v11;
      httpClient4 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      clientRequestIdentifier = [httpClient4 clientRequestIdentifier];
      *buf = 138544386;
      v30 = v14;
      v31 = 2114;
      v32 = lCopy;
      v33 = 2112;
      v34 = ipAddressStringWithScope;
      v35 = 2112;
      v36 = v17;
      v37 = 2112;
      v38 = clientRequestIdentifier;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending GET request to '%{public}@' (info: %@:%@ ... CID %@)", buf, 0x34u);

      v11 = v28;
    }

    objc_autoreleasePoolPop(v11);
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    if (currentActivity)
    {
      v21 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
      path = [v21 path];
    }

    [(HAPAccessoryServerIP *)selfCopy _kickConnectionIdleTimer];
    httpClient5 = [(HAPAccessoryServerIP *)selfCopy httpClient];
    [httpClient5 sendGETRequestToURL:lCopy timeout:handlerCopy completionHandler:timeout];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:handlerCopy serializationType:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendPOSTRequestToURL:(id)l request:(id)request serializationType:(unint64_t)type completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  requestCopy = request;
  handlerCopy = handler;
  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (httpClient)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      httpClient2 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      peerSocketInfo = [httpClient2 peerSocketInfo];
      ipAddressStringWithScope = [peerSocketInfo ipAddressStringWithScope];
      httpClient3 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      peerSocketInfo2 = [httpClient3 peerSocketInfo];
      port = [peerSocketInfo2 port];
      [(HAPAccessoryServerIP *)selfCopy httpClient];
      v20 = v29 = v14;
      [v20 clientRequestIdentifier];
      v21 = v28 = type;
      *buf = 138544386;
      v31 = v17;
      v32 = 2112;
      v33 = lCopy;
      v34 = 2112;
      v35 = ipAddressStringWithScope;
      v36 = 2112;
      v37 = port;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Sending POST request to '%@' (info: %@:%@ ... CID %@)", buf, 0x34u);

      type = v28;
      v14 = v29;
    }

    objc_autoreleasePoolPop(v14);
    [(HAPAccessoryServerIP *)selfCopy _kickConnectionIdleTimer];
    httpClient4 = [(HAPAccessoryServerIP *)selfCopy httpClient];
    [httpClient4 sendPOSTRequestToURL:lCopy withRequestObject:requestCopy serializationType:type completionHandler:handlerCopy];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:handlerCopy serializationType:type];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendPUTRequestToURL:(id)l request:(id)request serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  lCopy = l;
  requestCopy = request;
  handlerCopy = handler;
  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (httpClient)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = MEMORY[0x277CBEB98];
      v40 = v19;
      v41 = @"authData";
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v35 = [v20 setWithArray:v37];
      [requestCopy secureDescriptionWithBlacklistKeys:v35];
      v21 = v36 = requestCopy;
      httpClient2 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      peerSocketInfo = [httpClient2 peerSocketInfo];
      ipAddressStringWithScope = [peerSocketInfo ipAddressStringWithScope];
      httpClient3 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      [httpClient3 peerSocketInfo];
      v23 = v39 = type;
      [v23 port];
      v24 = v38 = v16;
      httpClient4 = [(HAPAccessoryServerIP *)selfCopy httpClient];
      clientRequestIdentifier = [httpClient4 clientRequestIdentifier];
      *buf = 138544642;
      v43 = v40;
      v44 = 2114;
      v45 = lCopy;
      v46 = 2114;
      v47 = v21;
      v48 = 2112;
      v49 = ipAddressStringWithScope;
      v50 = 2112;
      v51 = v24;
      v52 = 2112;
      v53 = clientRequestIdentifier;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Sending PUT request to '%{public}@' with body %{public}@ (info: %@:%@ ... CID %@)", buf, 0x3Eu);

      v16 = v38;
      type = v39;

      requestCopy = v36;
    }

    objc_autoreleasePoolPop(v16);
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    if (currentActivity)
    {
      v28 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
      path = [v28 path];
    }

    [(HAPAccessoryServerIP *)selfCopy _kickConnectionIdleTimer];
    httpClient5 = [(HAPAccessoryServerIP *)selfCopy httpClient];
    [httpClient5 sendPUTRequestToURL:lCopy withRequestObject:requestCopy serializationType:type timeout:handlerCopy completionHandler:timeout];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:handlerCopy serializationType:type];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleWriteResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status error:(id)error requestTuples:(id)tuples completion:(id)completion
{
  v212 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  errorCopy = error;
  tuplesCopy = tuples;
  completionCopy = completion;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v207 = v20;
    v208 = 2114;
    *v209 = tuplesCopy;
    *&v209[8] = 1026;
    *&v209[10] = status;
    *&v209[14] = 2082;
    *&v209[16] = HTTPGetReasonPhrase();
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received write response with %{public}@ and '%{public}d %{public}s' HTTP status code", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v17);
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if (errorCopy)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v207 = v24;
      v208 = 2114;
      *v209 = errorCopy;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic because the HTTP request returned the following error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [tuplesCopy count];
    [errorCopy domain];

    [errorCopy code];
    if ([errorCopy code] == -6723 || objc_msgSend(errorCopy, "code") == -6753)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v22;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v207 = v28;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@interpreting error as unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:errorCopy];
    }

    else
    {
      v29 = errorCopy;
    }

    v34 = v29;
    [(HAPAccessoryServerIP *)v22 _tearDownSessionAndStartReachabilityWithError:errorCopy];
    array = 0;
    if (!completionCopy)
    {
      goto LABEL_25;
    }

LABEL_24:
    completionCopy[2](completionCopy, array, v34);
    goto LABEL_25;
  }

  v171 = completionCopy;
  if (status == 207 || status == 200)
  {
    v30 = objectCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v17 = v31;

    v33 = type == 1 && v17 != 0;
  }

  else
  {
    v33 = 0;
  }

  if (status == 207 || status == 200)
  {
  }

  statusCopy = status;
  if (!v33)
  {
    v91 = objc_autoreleasePoolPush();
    v92 = selfCopy;
    v93 = HMFGetOSLogHandle();
    v94 = v93;
    if (type == 4 && !objectCopy && statusCopy == 204)
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v95 = HMFGetLogIdentifier();
        v96 = HTTPGetReasonPhrase();
        *buf = 138543874;
        v207 = v95;
        v208 = 1026;
        *v209 = 204;
        *&v209[4] = 2082;
        *&v209[6] = v96;
        _os_log_impl(&dword_22AADC000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@Received write response with no body and a '%{public}d %{public}s' HTTP status code.", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v91);
      array = [MEMORY[0x277CBEB18] array];
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v97 = tuplesCopy;
      v98 = [v97 countByEnumeratingWithState:&v176 objects:v193 count:16];
      if (v98)
      {
        v99 = v98;
        v169 = tuplesCopy;
        v100 = 0;
        v101 = *v177;
        do
        {
          v102 = 0;
          v103 = v100;
          do
          {
            if (*v177 != v101)
            {
              objc_enumerationMutation(v97);
            }

            v104 = *(*(&v176 + 1) + 8 * v102);
            characteristic = [v104 characteristic];
            value = [v104 value];
            [characteristic setValue:value];

            characteristic2 = [v104 characteristic];
            v100 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:characteristic2 error:0];

            [array addObject:v100];
            characteristic3 = [v104 characteristic];
            [characteristic3 instanceID];

            ++v102;
            v103 = v100;
          }

          while (v99 != v102);
          v99 = [v97 countByEnumeratingWithState:&v176 objects:v193 count:16];
        }

        while (v99);

        tuplesCopy = v169;
      }

      v34 = 0;
      errorCopy = 0;
    }

    else
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v115 = HMFGetLogIdentifier();
        v116 = HTTPGetReasonPhrase();
        if (type - 1 > 3)
        {
          v117 = @"Invalid";
        }

        else
        {
          v117 = off_2786D4CF8[type - 1];
        }

        v124 = v117;
        *buf = 138544386;
        v207 = v115;
        v208 = 1026;
        *v209 = statusCopy;
        *&v209[4] = 2082;
        *&v209[6] = v116;
        *&v209[14] = 2114;
        *&v209[16] = v124;
        v210 = 2114;
        v211 = objectCopy;
        _os_log_impl(&dword_22AADC000, v94, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v91);
      v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
      array = 0;
    }

    goto LABEL_132;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = selfCopy;
  v39 = HMFGetOSLogHandle();
  v166 = v38;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = HMFGetLogIdentifier();
    v41 = HTTPGetReasonPhrase();
    *buf = 138544130;
    v207 = v40;
    v208 = 1026;
    *v209 = status;
    *&v209[4] = 2082;
    *&v209[6] = v41;
    *&v209[14] = 2114;
    *&v209[16] = objectCopy;
    _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Characteristic write request responded with '%{public}d %{public}s' HTTP status code %{public}@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v37);
  v42 = objectCopy;
  v43 = tuplesCopy;
  v44 = [v42 objectForKeyedSubscript:@"characteristics"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v160 = v44;
    v109 = objectCopy;
    v110 = v43;
    v111 = objc_autoreleasePoolPush();
    v112 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v113 = HMFGetLogIdentifier();
      *buf = 138543618;
      v207 = v113;
      v208 = 2114;
      *v209 = @"characteristics";
      _os_log_impl(&dword_22AADC000, v112, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response, %{public}@ key doesn't contain an NSArray", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v111);
    array = 0;
    v114 = v110;
    objectCopy = v109;
    v44 = v160;
    goto LABEL_115;
  }

  v45 = [v44 count];
  if (v45 != [v43 count])
  {
    v118 = v43;
    v119 = objc_autoreleasePoolPush();
    v120 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v121 = v175 = v119;
      v122 = [v44 count];
      v123 = [v118 count];
      *buf = 138543874;
      v207 = v121;
      v208 = 2050;
      *v209 = v122;
      *&v209[8] = 2050;
      *&v209[10] = v123;
      _os_log_impl(&dword_22AADC000, v120, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response, '%{public}lu' response objects for '%{public}lu' request tuples", buf, 0x20u);

      v119 = v175;
    }

    objc_autoreleasePoolPop(v119);
    array = 0;
    v114 = v118;
    goto LABEL_115;
  }

  v152 = v43;
  v161 = [MEMORY[0x277CBEB18] arrayWithArray:v43];
  array2 = [MEMORY[0x277CBEB18] array];
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  obj = v44;
  v155 = [obj countByEnumeratingWithState:&v189 objects:buf count:16];
  if (!v155)
  {
LABEL_75:

    if ([v161 count])
    {
      v87 = objc_autoreleasePoolPush();
      v88 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = HMFGetLogIdentifier();
        v90 = [v161 count];
        *v196 = 138543618;
        v197 = v89;
        v198 = 2050;
        v199 = v90;
        _os_log_impl(&dword_22AADC000, v88, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response, '%{public}lu' request tuples remain unmatched with a response object", v196, 0x16u);
      }

      objc_autoreleasePoolPop(v87);
      array = 0;
    }

    else
    {
      array = array2;
    }

    v114 = v152;
    goto LABEL_114;
  }

  v156 = *v190;
  *&v46 = 138544386;
  v149 = v46;
  v153 = objectCopy;
  v168 = tuplesCopy;
  v162 = v42;
  v159 = v44;
  while (1)
  {
    v47 = 0;
LABEL_38:
    if (*v190 != v156)
    {
      objc_enumerationMutation(obj);
    }

    v164 = v47;
    v48 = *(*(&v189 + 1) + 8 * v47);
    v49 = [v48 hmf_numberForKey:{@"aid", v149}];
    v50 = [v48 hmf_numberForKey:@"iid"];
    v165 = [v48 objectForKeyedSubscript:@"value"];
    v51 = [v48 hmf_numberForKey:@"status"];
    v52 = v51;
    v174 = v50;
    if (v49)
    {
      v53 = v50 == 0;
    }

    else
    {
      v53 = 1;
    }

    if (v53 || v51 == 0)
    {
      v145 = objc_autoreleasePoolPush();
      v146 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        v147 = HMFGetLogIdentifier();
        *v196 = v149;
        v197 = v147;
        v198 = 2114;
        v199 = v50;
        v200 = 2114;
        v201 = v49;
        v202 = 2114;
        v203 = v165;
        v204 = 2114;
        v205 = v52;
        _os_log_impl(&dword_22AADC000, v146, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response for characteristic ID '%{public}@' against accessory '%{public}@' with value '%{public}@' and HAP status code '%{public}@'", v196, 0x34u);
      }

      objc_autoreleasePoolPop(v145);
      v114 = v152;
      goto LABEL_111;
    }

    v167 = v51;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v55 = v161;
    v56 = [v55 countByEnumeratingWithState:&v185 objects:v195 count:16];
    if (!v56)
    {
      break;
    }

    v57 = v56;
    v58 = *v186;
LABEL_49:
    v59 = 0;
    while (1)
    {
      if (*v186 != v58)
      {
        objc_enumerationMutation(v55);
      }

      v60 = *(*(&v185 + 1) + 8 * v59);
      characteristic4 = [v60 characteristic];
      service = [characteristic4 service];
      accessory = [service accessory];
      instanceID = [accessory instanceID];

      if (instanceID)
      {
        if ([v49 isEqualToNumber:instanceID])
        {
          instanceID2 = [characteristic4 instanceID];
          v66 = [v174 isEqualToNumber:instanceID2];

          if (v66)
          {
            break;
          }
        }
      }

      if (v57 == ++v59)
      {
        v57 = [v55 countByEnumeratingWithState:&v185 objects:v195 count:16];
        if (v57)
        {
          goto LABEL_49;
        }

        goto LABEL_106;
      }
    }

    v67 = v60;

    if (!v67)
    {
      goto LABEL_107;
    }

    errorCopy = 0;
    tuplesCopy = v168;
    v52 = v167;
    if (!characteristic4)
    {
      goto LABEL_108;
    }

    [v55 removeObject:v67];
    if ([v167 intValue])
    {
      v157 = v67;
      v68 = ConvertFromHAPIPStatusErrorCode([v167 integerValue]);
      service2 = [characteristic4 service];
      accessory2 = [service2 accessory];

      server = [accessory2 server];
      v72 = objc_autoreleasePoolPush();
      v73 = server;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v150 = HMFGetLogIdentifier();
        [accessory2 instanceID];
        v75 = v151 = accessory2;
        instanceID3 = [characteristic4 instanceID];
        type = [characteristic4 type];
        *v196 = v149;
        v197 = v150;
        v198 = 2114;
        v199 = v75;
        v200 = 2114;
        v201 = instanceID3;
        v78 = instanceID3;
        v202 = 2114;
        v203 = type;
        v79 = type;
        v204 = 2114;
        v205 = v68;
        _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@Response for characteristic write %{public}@/%{public}@/%{public}@ with error: %{public}@", v196, 0x34u);

        v52 = v167;
        accessory2 = v151;
      }

      objc_autoreleasePoolPop(v72);
      tuplesCopy = v168;
    }

    else
    {
      includeResponseValue = [v67 includeResponseValue];
      v80 = v165;
      if (!v165)
      {
        if (includeResponseValue)
        {
          v125 = v67;
          v126 = objc_autoreleasePoolPush();
          v127 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v148 = HMFGetLogIdentifier();
            *v196 = 138543874;
            v197 = v148;
            v198 = 2114;
            v199 = v174;
            v200 = 2114;
            v201 = v49;
            _os_log_impl(&dword_22AADC000, v127, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response for characteristic ID '%{public}@' against accessory '%{public}@': response value is not included in the response when one is requested", v196, 0x20u);
          }

          v165 = 0;
          goto LABEL_110;
        }

        [v67 includeResponseValue];
LABEL_72:
        accessory2 = [v67 value];
        [characteristic4 setValue:accessory2];
        v68 = 0;
        goto LABEL_73;
      }

      if (!includeResponseValue)
      {
        goto LABEL_72;
      }

      v157 = v67;
      metadata = [characteristic4 metadata];
      format = [metadata format];
      v84 = HAPCharacteristicFormatFromString(format);

      v85 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
      v184 = 0;
      accessory2 = [v85 reverseTransformedValue:v165 format:v84 error:&v184];
      v68 = v184;

      if (!v68)
      {
        [characteristic4 setValue:accessory2];
      }
    }

    v80 = v165;
    v67 = v157;
LABEL_73:

    v86 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:characteristic4 error:v68];
    [array2 addObject:v86];

    v42 = v162;
    v47 = v164 + 1;
    if (v164 + 1 != v155)
    {
      goto LABEL_38;
    }

    objectCopy = v153;
    v44 = v159;
    v155 = [obj countByEnumeratingWithState:&v189 objects:buf count:16];
    if (!v155)
    {
      goto LABEL_75;
    }
  }

LABEL_106:

  characteristic4 = 0;
  v67 = 0;
LABEL_107:
  errorCopy = 0;
  tuplesCopy = v168;
  v52 = v167;
LABEL_108:
  v125 = v67;
  v126 = objc_autoreleasePoolPush();
  v127 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
  {
    v128 = HMFGetLogIdentifier();
    *v196 = 138543874;
    v197 = v128;
    v198 = 2114;
    v199 = v174;
    v200 = 2114;
    v201 = v49;
    _os_log_impl(&dword_22AADC000, v127, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid write response for characteristic ID '%{public}@' against accessory '%{public}@': characteristic was not requested to be written", v196, 0x20u);
  }

LABEL_110:
  v114 = v152;

  objc_autoreleasePoolPop(v126);
  v42 = v162;
LABEL_111:

  array = 0;
  objectCopy = v153;
  v44 = v159;
LABEL_114:

LABEL_115:
  if ([array count])
  {
    v34 = 0;
  }

  else
  {
    v163 = v42;
    v129 = objc_autoreleasePoolPush();
    v130 = v166;
    v131 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132 = errorCopy;
      v133 = HMFGetLogIdentifier();
      v134 = HTTPGetReasonPhrase();
      if (type - 1 > 3)
      {
        v135 = @"Invalid";
      }

      else
      {
        v135 = off_2786D4CF8[type - 1];
      }

      v136 = v135;
      *buf = 138544386;
      v207 = v133;
      v208 = 1026;
      *v209 = statusCopy;
      *&v209[4] = 2082;
      *&v209[6] = v134;
      *&v209[14] = 2114;
      *&v209[16] = v136;
      v210 = 2114;
      v211 = v163;
      _os_log_impl(&dword_22AADC000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse response objects for a write request, the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

      errorCopy = v132;
    }

    objc_autoreleasePoolPop(v129);
    v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];

    array = 0;
  }

  if (currentActivity)
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    array = array;
    v137 = [array countByEnumeratingWithState:&v180 objects:v194 count:16];
    if (v137)
    {
      v138 = v137;
      v139 = *v181;
      do
      {
        for (i = 0; i != v138; ++i)
        {
          if (*v181 != v139)
          {
            objc_enumerationMutation(array);
          }

          v141 = *(*(&v180 + 1) + 8 * i);
          characteristic5 = [v141 characteristic];
          [characteristic5 instanceID];

          error = [v141 error];
          [error domain];

          error2 = [v141 error];
          [error2 code];
        }

        v138 = [array countByEnumeratingWithState:&v180 objects:v194 count:16];
      }

      while (v138);
    }
  }

LABEL_132:
  completionCopy = v171;
  if (v171)
  {
    goto LABEL_24;
  }

LABEL_25:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrepareWriteResponseObject:(id)object type:(unint64_t)type prepareIdentifier:(id)identifier httpStatus:(int)status error:(id)error requestTuples:(id)tuples timeout:(double)timeout expiry:(id)self0 queue:(id)self1 originalCompletion:(id)self2 completion:(id)self3
{
  v77 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  errorCopy = error;
  tuplesCopy = tuples;
  expiryCopy = expiry;
  queueCopy = queue;
  completionCopy = completion;
  v22 = a13;
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v72 = v26;
    v73 = 1026;
    *v74 = status;
    *&v74[4] = 2082;
    *&v74[6] = HTTPGetReasonPhrase();
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received prepare write response with '%{public}d %{public}s' HTTP status code", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v23);
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if (!errorCopy)
  {
    if (status != 200 || (v37 = objectCopy, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v37, type != 1) || (isKindOfClass & 1) == 0 || !v37)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = selfCopy;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v65 = currentActivity;
        v53 = completionCopy;
        v54 = HMFGetLogIdentifier();
        v55 = HTTPGetReasonPhrase();
        if (type - 1 > 3)
        {
          v56 = @"Invalid";
        }

        else
        {
          v56 = off_2786D4CF8[type - 1];
        }

        v57 = v56;
        *buf = 138544386;
        v72 = v54;
        v73 = 1026;
        *v74 = status;
        *&v74[4] = 2082;
        *&v74[6] = v55;
        *&v74[14] = 2114;
        *&v74[16] = v57;
        v75 = 2114;
        v76 = objectCopy;
        _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare write characteristic because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

        completionCopy = v53;
        currentActivity = v65;
      }

      objc_autoreleasePoolPop(v50);
      v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:0];
      if (v22)
      {
        v22[2](v22, 0, v47);
      }

      v49 = tuplesCopy;
      v48 = identifierCopy;
      goto LABEL_32;
    }

    v39 = [v37 objectForKeyedSubscript:@"status"];
    v40 = v39;
    if (v39)
    {
      intValue = [v39 intValue];
      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy;
      v44 = HMFGetOSLogHandle();
      v45 = v44;
      if (!intValue)
      {
        v49 = tuplesCopy;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v72 = v64;
          v73 = 2112;
          *v74 = tuplesCopy;
          _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_INFO, "%{public}@Performing execute write for inCharacteristicWriteRequestTuples %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        v48 = identifierCopy;
        v58 = expiryCopy;
        [(HAPAccessoryServerIP *)v43 _performExecuteWriteValues:tuplesCopy prepareIdentifier:identifierCopy timeout:expiryCopy expiry:queueCopy queue:completionCopy completionHandler:timeout];
        v47 = 0;
        goto LABEL_43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543874;
        v72 = v46;
        v73 = 2114;
        *v74 = v40;
        *&v74[8] = 2114;
        *&v74[10] = v37;
        _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Prepare write failed with HAP Status Code %{public}@ and a body: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
      v47 = ConvertFromHAPIPStatusErrorCode([v40 integerValue]);
      v49 = tuplesCopy;
      v48 = identifierCopy;
      if (v22)
      {
        v22[2](v22, 0, v47);
      }
    }

    else
    {
      v60 = objc_autoreleasePoolPush();
      v61 = selfCopy;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v63;
        _os_log_impl(&dword_22AADC000, v62, OS_LOG_TYPE_ERROR, "%{public}@Invalid prepare write response", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v60);
      v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:59];
      if (v22)
      {
        v22[2](v22, 0, v47);
      }

      v49 = tuplesCopy;
      v48 = identifierCopy;
    }

    v58 = expiryCopy;
LABEL_43:

    goto LABEL_33;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v31;
    v73 = 2114;
    *v74 = errorCopy;
    _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare write characteristic because the HTTP request returned the following error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  [errorCopy domain];

  [errorCopy code];
  if ([errorCopy code] == -6723 || objc_msgSend(errorCopy, "code") == -6753)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v29;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v35;
      _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@interpreting error as unreachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:errorCopy];
  }

  else
  {
    v36 = errorCopy;
  }

  v47 = v36;
  v48 = identifierCopy;
  [(HAPAccessoryServerIP *)v29 _tearDownSessionAndStartReachabilityWithError:errorCopy];
  v49 = tuplesCopy;
  if (v22)
  {
    v22[2](v22, 0, v47);
  }

LABEL_32:
  v58 = expiryCopy;
LABEL_33:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_performExecuteWriteValues:(id)values prepareIdentifier:(id)identifier timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v68[2] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  identifierCopy = identifier;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  v62 = 0;
  v45 = [(HAPAccessoryServerIP *)self _serializeCharacteristicWriteRequestTuples:valuesCopy error:&v62];
  v18 = v62;
  v19 = v18;
  if (handlerCopy && queueCopy && v18)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D65D8;
    v61 = handlerCopy;
    v19 = v19;
    v60 = v19;
    dispatch_async(queueCopy, block);

    v20 = v61;
LABEL_27:

    goto LABEL_28;
  }

  if (identifierCopy)
  {
    v67[0] = @"characteristics";
    v67[1] = @"pid";
    v68[0] = v45;
    v68[1] = identifierCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    objc_initWeak(&location, self);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_2;
    v49[3] = &unk_2786D2760;
    objc_copyWeak(v54, &location);
    v50 = valuesCopy;
    v54[1] = *&timeout;
    v21 = expiryCopy;
    v51 = v21;
    queue = queueCopy;
    queueCopy2 = queue;
    v39 = handlerCopy;
    v53 = v39;
    v43 = MEMORY[0x231885210](v49);
    v42 = [@"/" stringByAppendingPathComponent:@"characteristics"];
    if (timeout <= 0.0)
    {
      timeout = 10.0;
    }

    if (v21)
    {
      [(HAPAccessoryServerIP *)self remainingTTLForExpiry:v21];
      v23 = v22;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v64 = v26;
        v65 = 2048;
        v66 = v23;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write operation: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      if (v23 <= 0.0)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v64 = v36;
          _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Drop write operation due to TTL expiry", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v37 = [MEMORY[0x277CCA9B8] hapErrorWithCode:43 description:@"Request TTL expired at CoreHAP" reason:0 suggestion:0 underlyingError:0];

        if (queueCopy != 0 && handlerCopy != 0)
        {
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_284;
          v46[3] = &unk_2786D65D8;
          v48 = v39;
          v19 = v37;
          v47 = v19;
          dispatch_async(queue, v46);
        }

        else
        {
          v19 = v37;
        }

        v27 = v42;
        goto LABEL_26;
      }

      if (v23 < timeout)
      {
        timeout = v23;
      }
    }

    v27 = v42;
    [(HAPAccessoryServerIP *)self sendPUTRequestToURL:v42 request:v20 serializationType:1 timeout:v43 completionHandler:timeout];
LABEL_26:

    objc_destroyWeak(v54);
    objc_destroyWeak(&location);
    goto LABEL_27;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v64 = v31;
    _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Error during _performExecuteWriteValues: inPrepareIdentifier is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];

  if (queueCopy != 0 && handlerCopy != 0)
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_283;
    v56[3] = &unk_2786D65D8;
    v58 = handlerCopy;
    v19 = v32;
    v57 = v19;
    dispatch_async(queueCopy, v56);

    v20 = v58;
    goto LABEL_27;
  }

  v19 = v32;
LABEL_28:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_serializeCharacteristicWriteRequestTuples:(void *)tuples error:
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  selfCopy = self;
  if (!self)
  {
    v86 = 0;
    goto LABEL_56;
  }

  v98 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v6;
  v97 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
  dictionary = 0;
  instanceID = 0;
  characteristic = 0;
  v11 = 0;
  if (!v97)
  {
    value = 0;
    v35 = 0;
    goto LABEL_50;
  }

  value = 0;
  v96 = *v103;
  *&v7 = 138543362;
  v89 = v7;
  tuplesCopy = tuples;
  v91 = v6;
  do
  {
    v12 = 0;
    v13 = dictionary;
    v14 = instanceID;
    v15 = characteristic;
    v16 = value;
    do
    {
      if (*v103 != v96)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v102 + 1) + 8 * v12);
      value = [v17 value];

      characteristic = [v17 characteristic];

      service = [characteristic service];
      accessory = [service accessory];
      instanceID = [accessory instanceID];

      if (characteristic)
      {
        v20 = instanceID == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v68 = objc_autoreleasePoolPush();
        v69 = selfCopy;
        v70 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = HMFGetLogIdentifier();
          *buf = 138544130;
          v108 = v71;
          v109 = 2112;
          v110 = value;
          v111 = 2112;
          v112 = characteristic;
          v113 = 2112;
          v114 = instanceID;
          _os_log_impl(&dword_22AADC000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize characteristic write requests because the tuple contained a value of '%@' for characteristic '%@' with an accessory instance ID of '%@'", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v68);
        v35 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
LABEL_45:
        dictionary = v13;
LABEL_49:
        tuples = tuplesCopy;
        v6 = v91;
        goto LABEL_50;
      }

      if (![characteristic shouldValidateValueAfterReading])
      {
        v23 = 12;
LABEL_18:
        v33 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
        v101 = 0;
        v34 = [v33 transformedValue:value format:v23 error:&v101];
        v35 = v101;

        v11 = v34;
        if (v35)
        {
          goto LABEL_42;
        }

        goto LABEL_19;
      }

      metadata = [characteristic metadata];
      format = [metadata format];
      v23 = HAPCharacteristicFormatFromString(format);

      if (v23)
      {
        goto LABEL_18;
      }

      v24 = MEMORY[0x277CCAAA0];
      v106 = value;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
      v26 = [v24 isValidJSONObject:v25];

      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v30)
        {
          v31 = HMFGetLogIdentifier();
          *buf = v89;
          v108 = v31;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@The characteristic has not specified a characteristic format type. This may cause the characteristic value to contain an object of an unexpected type. For now, the value will be passed through without transformation into an appropriate type. At some point in the future, support for this accessory may be dropped.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v32 = value;

        v11 = v32;
      }

      else
      {
        if (v30)
        {
          v66 = HMFGetLogIdentifier();
          *buf = v89;
          v108 = v66;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@The characteristic has not specified a characteristic format type and the characteristic value is of a type that cannot be serialized.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v35 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:43];
        if (v35)
        {
LABEL_42:
          v72 = objc_autoreleasePoolPush();
          v73 = selfCopy;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v75 = instanceID;
            v76 = characteristic;
            v78 = v77 = v11;
            *buf = 138543874;
            v108 = v78;
            v109 = 2112;
            v110 = value;
            v111 = 2112;
            v112 = v35;
            _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform characteristic value '%@' with error: %@", buf, 0x20u);

            v11 = v77;
            characteristic = v76;
            instanceID = v75;
          }

          objc_autoreleasePoolPop(v72);
          goto LABEL_45;
        }
      }

LABEL_19:
      dictionary = [MEMORY[0x277CBEB38] dictionary];

      [dictionary setObject:instanceID forKeyedSubscript:@"aid"];
      instanceID2 = [characteristic instanceID];
      [dictionary setObject:instanceID2 forKeyedSubscript:@"iid"];

      [dictionary setObject:v11 forKeyedSubscript:@"value"];
      if ([v17 includeResponseValue])
      {
        characteristic2 = [v17 characteristic];
        properties = [characteristic2 properties];

        if ((properties & 0x80) == 0)
        {
          v79 = objc_autoreleasePoolPush();
          v80 = selfCopy;
          v81 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v83 = v82 = v11;
            *buf = 138543874;
            v108 = v83;
            v109 = 2112;
            v110 = characteristic;
            v111 = 2112;
            v112 = instanceID;
            _os_log_impl(&dword_22AADC000, v81, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize characteristic write requests because the tuple requires a write response value but the characteristic '%@' on accessory with instance ID '%@' does not support it", buf, 0x20u);

            v11 = v82;
          }

          objc_autoreleasePoolPop(v79);
          v35 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
          goto LABEL_49;
        }

        [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"r"];
      }

      authorizationData = [v17 authorizationData];
      v40 = [authorizationData length];

      if (v40)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = selfCopy;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v93 = instanceID;
          v44 = characteristic;
          v46 = v45 = v11;
          authorizationData2 = [v17 authorizationData];
          v48 = [authorizationData2 length];
          *buf = 138543618;
          v108 = v46;
          v109 = 2048;
          v110 = v48;
          _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@Appending authorization data to characteristic write requests with length: %tu", buf, 0x16u);

          v11 = v45;
          characteristic = v44;
          instanceID = v93;
        }

        objc_autoreleasePoolPop(v41);
        authorizationData3 = [v17 authorizationData];
        v50 = [authorizationData3 base64EncodedStringWithOptions:0];
        [dictionary setObject:v50 forKeyedSubscript:@"authData"];
      }

      contextData = [v17 contextData];
      v52 = [contextData length];

      if (v52)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          [v17 contextData];
          v57 = v94 = v11;
          [v17 contextData];
          v92 = v53;
          v58 = instanceID;
          v60 = v59 = characteristic;
          v61 = [v60 length];
          *buf = 138543874;
          v108 = v56;
          v109 = 2112;
          v110 = v57;
          v111 = 2048;
          v112 = v61;
          _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_INFO, "%{public}@Appending context data %@ to characteristic write requests with length: %tu", buf, 0x20u);

          characteristic = v59;
          instanceID = v58;
          v53 = v92;

          v11 = v94;
        }

        objc_autoreleasePoolPop(v53);
        contextData2 = [v17 contextData];
        v63 = [contextData2 base64EncodedStringWithOptions:0];
        [dictionary setObject:v63 forKeyedSubscript:@"ctxData"];
      }

      [v98 addObject:dictionary];
      ++v12;
      v13 = dictionary;
      v14 = instanceID;
      v15 = characteristic;
      v64 = instanceID;
      v65 = characteristic;
      v16 = value;
    }

    while (v97 != v12);
    v67 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
    v35 = 0;
    tuples = tuplesCopy;
    v6 = v91;
    characteristic = v65;
    instanceID = v64;
    v97 = v67;
  }

  while (v67);
LABEL_50:

  if (tuples)
  {
    v84 = v35;
    *tuples = v35;
  }

  if (v35)
  {
    v85 = 0;
  }

  else
  {
    v85 = v98;
  }

  v86 = v85;

LABEL_56:
  v87 = *MEMORY[0x277D85DE8];

  return v86;
}

void __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_2(id *a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v11 = a1[4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_3;
  v19[3] = &unk_2786D2738;
  objc_copyWeak(v22, a1 + 8);
  v12 = a1[4];
  v22[1] = a1[9];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v20 = v17;
  v21 = v16;
  [WeakRetained _handleWriteResponseObject:v8 type:a3 httpStatus:a4 error:v9 requestTuples:v11 completion:v19];

  objc_destroyWeak(v22);
}

void __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleWriteECONNResetError:v5 writeRequests:*(a1 + 32) responses:v6 timeout:*(a1 + 40) expiry:*(a1 + 48) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
}

- (void)_performTimedWriteValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queue = queue;
  handlerCopy = handler;
  v68 = 0;
  v37 = HMFRandomDataWithLength();
  [v37 getBytes:&v68 length:8];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v68];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_283EA9608 forKeyedSubscript:@"ttl"];
  [dictionary setObject:v38 forKeyedSubscript:@"pid"];
  if (!handlerCopy || dictionary)
  {
    v13 = objc_alloc_init(MEMORY[0x277D0F780]);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v13);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2;
    v56[3] = &unk_2786D27D8;
    objc_copyWeak(&v62, &location);
    objc_copyWeak(v63, &from);
    v57 = v38;
    v14 = valuesCopy;
    v58 = v14;
    v63[1] = *&timeout;
    v15 = expiryCopy;
    v59 = v15;
    queueCopy = queue;
    v60 = queueCopy;
    v17 = handlerCopy;
    v61 = v17;
    v18 = MEMORY[0x231885210](v56);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_4;
    v47[3] = &unk_2786D2828;
    objc_copyWeak(&v54, &from);
    objc_copyWeak(v55, &location);
    v19 = v14;
    v48 = v19;
    v55[1] = *&timeout;
    v49 = v15;
    v20 = queueCopy;
    v50 = v20;
    v21 = v17;
    v52 = v21;
    v51 = dictionary;
    v32 = v18;
    v53 = v32;
    [v13 addExecutionBlock:v47];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_277;
    v43[3] = &unk_2786D6BE0;
    objc_copyWeak(&v46, &from);
    v45 = v21;
    v44 = v20;
    [v13 setCompletionBlock:v43];
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    if (currentActivity)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = v19;
      v24 = [v23 countByEnumeratingWithState:&v39 objects:v69 count:16];
      if (v24)
      {
        v25 = *v40;
        do
        {
          v26 = 0;
          do
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v39 + 1) + 8 * v26);
            v28 = currentActivity;
            characteristic = [v27 characteristic];
            [characteristic instanceID];

            ++v26;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v39 objects:v69 count:16];
        }

        while (v24);
      }
    }

    clientOperationQueue = [(HAPAccessoryServerIP *)self clientOperationQueue];
    [clientOperationQueue addOperation:v13];

    objc_destroyWeak(&v46);
    objc_destroyWeak(v55);
    objc_destroyWeak(&v54);

    objc_destroyWeak(v63);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D6490;
    v67 = handlerCopy;
    dispatch_async(queue, block);
    v13 = v67;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
  (*(v1 + 16))(v1, 0, v2);
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  v21 = a2;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = objc_loadWeakRetained((a1 + 80));
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 88);
  v20 = *(a1 + 48);
  v13 = *(a1 + 64);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_3;
  v24[3] = &unk_2786D2738;
  objc_copyWeak(v27, (a1 + 72));
  v14 = *(a1 + 40);
  v27[1] = *(a1 + 88);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v25 = v19;
  v26 = v18;
  [WeakRetained _handlePrepareWriteResponseObject:v21 type:a3 prepareIdentifier:v11 httpStatus:a4 error:v7 requestTuples:v10 timeout:v12 expiry:v20 queue:v13 originalCompletion:v24 completion:?];
  [v9 finish];

  objc_destroyWeak(v27);
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    if (v3)
    {
      v4 = [v3 clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_276;
      block[3] = &unk_2786D2800;
      block[4] = v3;
      v11 = *(a1 + 32);
      v18 = *(a1 + 96);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v16 = *(a1 + 64);
      v14 = WeakRetained;
      v15 = *(a1 + 56);
      v17 = *(a1 + 72);
      dispatch_async(v4, block);
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v7;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to timed write values because IP Accessory Server has been deallocated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v8 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
      [WeakRetained cancelWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_277(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = v3;
  if (v3)
  {
    if (([v3 isHAPOperationDelayed] & 1) == 0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2_278;
        v7[3] = &unk_2786D65D8;
        v9 = v5;
        v8 = WeakRetained;
        dispatch_async(v6, v7);
      }
    }
  }
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2_278(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_276(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isSessionEstablished])
  {
    v2 = [@"/" stringByAppendingPathComponent:@"prepare"];
    if (!*(a1 + 48))
    {
      v9 = 5.0;
      goto LABEL_11;
    }

    [*(a1 + 32) remainingTTLForExpiry:?];
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v8;
      v23 = 2048;
      v24 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for timed write operation: %0.4f sec", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    if (v4 > 0.0)
    {
      v9 = fmin(v4, 5.0);
LABEL_11:
      [*(a1 + 32) sendPUTRequestToURL:v2 request:*(a1 + 72) serializationType:1 timeout:*(a1 + 88) completionHandler:v9];
      goto LABEL_15;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Drop timed write operation due to TTL expiry", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 64);
    v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:43 description:@"Request TTL expired at CoreHAP" reason:0 suggestion:0 underlyingError:0];
    [v18 cancelWithError:v19];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session has been lost since this operation was staged. Canceling operation and re-queueing timed write.", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _queueWriteCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) expiry:*(a1 + 56) queue:*(a1 + 80) withCompletionHandler:*(a1 + 96)];
    [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.write"];
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:40];
    [*(a1 + 64) cancelWithError:v2];
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

void __88__HAPAccessoryServerIP__performTimedWriteValues_timeout_expiry_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleWriteECONNResetError:v5 writeRequests:*(a1 + 32) responses:v6 timeout:*(a1 + 40) expiry:*(a1 + 48) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
}

- (void)_performWriteValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v63[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queue = queue;
  handlerCopy = handler;
  v61 = 0;
  v32 = valuesCopy;
  v34 = [(HAPAccessoryServerIP *)self _serializeCharacteristicWriteRequestTuples:valuesCopy error:&v61];
  v14 = v61;
  v31 = v14;
  if (handlerCopy && v14)
  {
    v15 = v14;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D65D8;
    v60 = handlerCopy;
    v59 = v15;
    dispatch_async(queue, block);

    v16 = v60;
  }

  else
  {
    v62 = @"characteristics";
    v63[0] = v34;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    objc_initWeak(&location, self);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2;
    v51[3] = &unk_2786D2760;
    objc_copyWeak(v56, &location);
    v18 = valuesCopy;
    v52 = v18;
    v56[1] = *&timeout;
    v19 = expiryCopy;
    v53 = v19;
    queueCopy = queue;
    v54 = queueCopy;
    v21 = handlerCopy;
    v55 = v21;
    v22 = MEMORY[0x231885210](v51);
    v23 = objc_alloc_init(MEMORY[0x277D0F780]);
    objc_initWeak(&from, v23);
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_4;
    v40[3] = &unk_2786D27B0;
    objc_copyWeak(&v48, &from);
    objc_copyWeak(v49, &location);
    v41 = v18;
    v49[1] = *&timeout;
    v42 = v19;
    v25 = queueCopy;
    v43 = v25;
    v26 = v21;
    v46 = v26;
    v27 = currentActivity;
    v44 = v27;
    v16 = v17;
    v45 = v16;
    v28 = v22;
    v47 = v28;
    [v23 addExecutionBlock:v40];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_274;
    v36[3] = &unk_2786D6BE0;
    objc_copyWeak(&v39, &from);
    v38 = v26;
    v37 = v25;
    [v23 setCompletionBlock:v36];
    clientOperationQueue = [(HAPAccessoryServerIP *)self clientOperationQueue];
    [clientOperationQueue addOperation:v23];

    objc_destroyWeak(&v39);
    objc_destroyWeak(v49);
    objc_destroyWeak(&v48);

    objc_destroyWeak(&from);
    objc_destroyWeak(v56);
    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2(id *a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v11 = a1[4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_3;
  v19[3] = &unk_2786D2738;
  objc_copyWeak(v22, a1 + 8);
  v12 = a1[4];
  v22[1] = a1[9];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v20 = v17;
  v21 = v16;
  [WeakRetained _handleWriteResponseObject:v8 type:a3 httpStatus:a4 error:v9 requestTuples:v11 completion:v19];

  objc_destroyWeak(v22);
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_4(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v3 = objc_loadWeakRetained(a1 + 12);
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    if (v3)
    {
      v4 = [v3 clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_266;
      v16[3] = &unk_2786D2788;
      objc_copyWeak(v22, a1 + 11);
      v16[4] = v3;
      v5 = a1[4];
      v22[1] = a1[13];
      v6 = a1[5];
      v7 = a1[6];
      v20 = a1[9];
      v8 = a1[7];
      *&v9 = v7;
      *(&v9 + 1) = v8;
      *&v10 = v5;
      *(&v10 + 1) = v6;
      v17 = v10;
      v18 = v9;
      v19 = a1[8];
      v21 = a1[10];
      dispatch_async(v4, v16);

      objc_destroyWeak(v22);
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v13;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to write values because IP Accessory Server has been deallocated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v14 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
      [WeakRetained cancelWithError:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = v3;
  if (v3)
  {
    if (([v3 isHAPOperationDelayed] & 1) == 0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2_275;
        v7[3] = &unk_2786D65D8;
        v9 = v5;
        v8 = WeakRetained;
        dispatch_async(v6, v7);
      }
    }
  }
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_2_275(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_266(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if ([*(a1 + 32) _isSessionEstablished])
  {
    v3 = [@"/" stringByAppendingPathComponent:@"characteristics"];
    if (*(a1 + 64))
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v28;
        do
        {
          v8 = 0;
          do
          {
            if (*v28 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v27 + 1) + 8 * v8) characteristic];
            [v9 instanceID];

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v6);
      }
    }

    if (*(a1 + 104) <= 0.0)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = *(a1 + 104);
    }

    if (!*(a1 + 48))
    {
      goto LABEL_20;
    }

    [*(a1 + 32) remainingTTLForExpiry:?];
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v16;
      v33 = 2048;
      v34 = v12;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write operation: %0.4f sec", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (v12 >= 1.0)
    {
      if (v12 < v10)
      {
        v10 = v12;
      }

LABEL_20:
      [*(a1 + 64) markWithReason:{@"Writing", v27}];
      [*(a1 + 32) sendPUTRequestToURL:v3 request:*(a1 + 72) serializationType:1 timeout:*(a1 + 88) completionHandler:v10];
      [WeakRetained finish];
      goto LABEL_27;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Drop write operation due to TTL expiry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hapErrorWithCode:43 description:@"Request TTL expired at CoreHAP" reason:0 suggestion:0 underlyingError:0];
    [WeakRetained cancelWithError:v25];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session has been lost since this operation was staged. Canceling operation and re-queueing write.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [*(a1 + 32) _queueWriteCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) expiry:*(a1 + 56) queue:*(a1 + 80) withCompletionHandler:*(a1 + 104)];
    [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.write"];
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:40];
    [WeakRetained cancelWithError:v3];
  }

LABEL_27:

  v26 = *MEMORY[0x277D85DE8];
}

void __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleWriteECONNResetError:v5 writeRequests:*(a1 + 32) responses:v6 timeout:*(a1 + 40) expiry:*(a1 + 48) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
}

- (void)_handleWriteECONNResetError:(id)error writeRequests:(id)requests responses:(id)responses timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  errorCopy = error;
  requestsCopy = requests;
  responsesCopy = responses;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  userInfo = [errorCopy userInfo];
  v22 = [userInfo hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  domain = [v22 domain];
  if ([domain isEqual:*MEMORY[0x277CCA590]] && objc_msgSend(v22, "code") == 54)
  {
    econnresetRetryInProgress = [(HAPAccessoryServerIP *)self econnresetRetryInProgress];

    if (!econnresetRetryInProgress)
    {
      clientQueue = [(HAPAccessoryServer *)self clientQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke;
      v38[3] = &unk_2786D4060;
      v38[4] = self;
      v26 = &v39;
      v31 = requestsCopy;
      v39 = requestsCopy;
      *&v42[1] = timeout;
      v27 = &v40;
      v40 = expiryCopy;
      v28 = &v41;
      v41 = queueCopy;
      v29 = v42;
      v42[0] = handlerCopy;
      v30 = v38;
LABEL_8:
      dispatch_async(clientQueue, v30);

      requestsCopy = v31;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (handlerCopy)
  {
    v31 = requestsCopy;
    [(HAPAccessoryServerIP *)self _indicateSessionActivityWithReason:@"Write"];
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke_265;
    block[3] = &unk_2786D5C48;
    block[4] = self;
    v26 = &v34;
    v34 = queueCopy;
    v27 = &v37;
    v37 = handlerCopy;
    v28 = &v35;
    v35 = responsesCopy;
    v29 = &v36;
    v36 = errorCopy;
    v30 = block;
    goto LABEL_8;
  }

LABEL_9:
}

void __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _populateSocketUpdateType];
  [*(a1 + 32) _insertWriteCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) expiry:*(a1 + 56) queue:*(a1 + 64) withCompletionHandler:*(a1 + 72)];
  if ([*(a1 + 32) isEstablishingSecureConnection])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Already establishing secure session - not attempting a re-establishment", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [*(a1 + 32) setEconnresetRetryInProgress:1];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to re-establish secure session for write on ECONNRESET", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) count];
    [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.write.retry"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke_265(uint64_t a1)
{
  [*(a1 + 32) _populateSocketUpdateType];
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke_2;
  block[3] = &unk_2786D69E0;
  v6 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  dispatch_async(v2, block);
}

- (void)_writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  if (valuesCopy)
  {
    if ([valuesCopy count])
    {
      if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
      {
        v16 = [(HAPAccessoryServer *)self requiresTimedWrite:valuesCopy];
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (v16)
        {
          if (v20)
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v21;
            v45 = 2114;
            v46 = valuesCopy;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristicWriteRequestTuples %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [(HAPAccessoryServerIP *)selfCopy _performTimedWriteValues:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
        }

        else
        {
          if (v20)
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v36;
            v45 = 2114;
            v46 = valuesCopy;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristicWriteRequestTuples %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [(HAPAccessoryServerIP *)selfCopy _performWriteValues:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v35;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing write", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        [(HAPAccessoryServerIP *)selfCopy2 _queueWriteCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy withCompletionHandler:timeout];
        [(HAPAccessoryServerIP *)selfCopy2 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.write"];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v31;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Writing 0 characteristics, bailing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      if (handlerCopy)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __90__HAPAccessoryServerIP__writeCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_254;
        v38[3] = &unk_2786D6490;
        v39 = handlerCopy;
        dispatch_async(queueCopy, v38);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = MEMORY[0x231885210](handlerCopy);
      *buf = 138543874;
      v44 = v25;
      v45 = 2114;
      v46 = 0;
      v47 = 2114;
      v48 = v26;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to write values because the characteristicWriteRequestTuples was %{public}@ and the completion handler was %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    if (handlerCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__HAPAccessoryServerIP__writeCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v42 = handlerCopy;
      v41 = v27;
      dispatch_async(queueCopy, block);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  v17 = objc_alloc(MEMORY[0x277D0F770]);
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x231884350](self, a2);
  3273 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 3273];
  v34 = [v17 initWithName:3273];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HAPAccessoryServerIP_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D2710;
  v27 = valuesCopy;
  selfCopy = self;
  timeoutCopy = timeout;
  v29 = expiryCopy;
  v30 = queueCopy;
  v31 = v34;
  v32 = handlerCopy;
  v22 = handlerCopy;
  v23 = queueCopy;
  v24 = expiryCopy;
  v25 = valuesCopy;
  dispatch_async(clientQueue, block);

  __HMFActivityScopeLeave();
}

void __99__HAPAccessoryServerIP_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = *(v1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v10 = v4;
          v12 = v11 = v1;
          v13 = [v6 value];
          v14 = [v6 characteristic];
          v15 = [v6 contextData];
          *buf = 138544130;
          v32 = v12;
          v33 = 2112;
          v34 = v13;
          v35 = 2114;
          v36 = v14;
          v37 = 2112;
          v38 = v15;
          _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Writing value '%@' to characteristic '%{public}@' with contextData '%@'", buf, 0x2Au);

          v1 = v11;
          v4 = v10;
          v3 = v22;
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v3);
  }

  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v18 = *(v1 + 80);
  v19 = *(v1 + 48);
  v20 = *(v1 + 56);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HAPAccessoryServerIP_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_253;
  v24[3] = &unk_2786D6060;
  v25 = *(v1 + 64);
  v26 = *(v1 + 72);
  [v16 _writeCharacteristicValues:v17 timeout:v19 expiry:v20 queue:v24 completionHandler:v18];

  v21 = *MEMORY[0x277D85DE8];
}

void __99__HAPAccessoryServerIP_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_253(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  [*(a1 + 32) begin];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }

  [*(a1 + 32) end];
  [*(a1 + 32) invalidate];
}

- (void)_handleReadResponseObject:(id)object type:(unint64_t)type httpStatus:(int)status error:(id)error characteristics:(id)characteristics completion:(id)completion
{
  v203 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  errorCopy = error;
  characteristicsCopy = characteristics;
  completionCopy = completion;
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v200 = v19;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Received response to a read characteristics request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if (errorCopy)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v168 = completionCopy;
      v24 = currentActivity;
      v25 = objectCopy;
      v26 = HMFGetLogIdentifier();
      if (type - 1 > 3)
      {
        v27 = @"Invalid";
      }

      else
      {
        v27 = off_2786D4CF8[type - 1];
      }

      v101 = v27;
      *buf = 138544386;
      v200 = v26;
      v201 = 2114;
      *v202 = characteristicsCopy;
      *&v202[8] = 2114;
      *&v202[10] = v25;
      *&v202[18] = 2114;
      *&v202[20] = v101;
      *&v202[28] = 2114;
      *&v202[30] = errorCopy;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristics %{public}@, received response object: %{public}@, MIME type: %{public}@, error: %{public}@", buf, 0x34u);

      objectCopy = v25;
      currentActivity = v24;
      completionCopy = v168;
    }

    objc_autoreleasePoolPop(v21);
    [characteristicsCopy count];
    [errorCopy domain];

    [errorCopy code];
    v102 = errorCopy;
    if ([v102 code] == -6723 || (v103 = v102, objc_msgSend(v102, "code") == -6753))
    {
      v104 = objc_autoreleasePoolPush();
      v105 = v22;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v107 = completionCopy;
        v108 = currentActivity;
        v109 = characteristicsCopy;
        v111 = v110 = objectCopy;
        *buf = 138543362;
        v200 = v111;
        _os_log_impl(&dword_22AADC000, v106, OS_LOG_TYPE_DEFAULT, "%{public}@interpreting error as unreachable", buf, 0xCu);

        objectCopy = v110;
        characteristicsCopy = v109;
        currentActivity = v108;
        completionCopy = v107;
      }

      objc_autoreleasePoolPop(v104);
      v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:v102];
    }

    [(HAPAccessoryServerIP *)v22 _tearDownSessionAndStartReachabilityWithError:v102];
    v91 = 0;
    if (!completionCopy)
    {
      goto LABEL_94;
    }

LABEL_93:
    completionCopy[2](completionCopy, v91, v103);
    goto LABEL_94;
  }

  v29 = status == 200 || status == 207;
  if (objectCopy)
  {
    if (v29)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (type == 1 && (isKindOfClass & 1) != 0)
      {
        v31 = objectCopy;
        v32 = characteristicsCopy;
        array = [MEMORY[0x277CBEB18] array];
        v161 = v31;
        v33 = [v31 objectForKeyedSubscript:@"characteristics"];
        objc_opt_class();
        v164 = v32;
        v160 = v33;
        v158 = objectCopy;
        if (objc_opt_isKindOfClass())
        {
          v34 = [v33 count];
          if (v34 == [v32 count])
          {
            v153 = [MEMORY[0x277CBEB18] arrayWithArray:v32];
            v183 = 0u;
            v184 = 0u;
            v185 = 0u;
            v186 = 0u;
            obj = v33;
            v154 = [obj countByEnumeratingWithState:&v183 objects:buf count:16];
            if (!v154)
            {
LABEL_73:

              if ([v153 count])
              {
                v87 = objc_autoreleasePoolPush();
                v88 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  v89 = HMFGetLogIdentifier();
                  v90 = [v153 count];
                  *v189 = 138543618;
                  v190 = v89;
                  v191 = 2050;
                  v192 = v90;
                  _os_log_impl(&dword_22AADC000, v88, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid read response, '%{public}lu' request tuples remain unmatched with a response object", v189, 0x16u);
                }

                objc_autoreleasePoolPop(v87);
                v91 = 0;
              }

              else
              {
                v91 = array;
              }

              goto LABEL_109;
            }

            v155 = *v184;
            *&v35 = 138543362;
            v144 = v35;
            v166 = characteristicsCopy;
            v169 = completionCopy;
            v151 = currentActivity;
LABEL_21:
            v36 = 0;
            while (1)
            {
              if (*v184 != v155)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v183 + 1) + 8 * v36);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              v55 = objc_autoreleasePoolPush();
              v56 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v57 = v163 = v36;
                v58 = objc_opt_class();
                *v189 = 138543618;
                v190 = v57;
                v191 = 2112;
                v192 = v58;
                v59 = v58;
                _os_log_impl(&dword_22AADC000, v56, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid response object - ignoring response object %@", v189, 0x16u);

                v32 = v164;
                v36 = v163;
              }

              objc_autoreleasePoolPop(v55);
LABEL_71:
              if (++v36 == v154)
              {
                v154 = [obj countByEnumeratingWithState:&v183 objects:buf count:16];
                if (!v154)
                {
                  goto LABEL_73;
                }

                goto LABEL_21;
              }
            }

            v162 = v36;
            v38 = [v37 hmf_numberForKey:@"aid"];
            v39 = [v37 hmf_numberForKey:@"iid"];
            v40 = [v37 objectForKeyedSubscript:@"value"];
            v147 = v37;
            v41 = [v37 hmf_numberForKey:@"status"];
            v42 = v41;
            v171 = v39;
            if (v38)
            {
              v43 = v39 == 0;
            }

            else
            {
              v43 = 1;
            }

            v157 = v41;
            v159 = v40;
            if (v43 || (status == 207) != (v41 != 0) || (v40 == 0) == ([v41 intValue] == 0))
            {
              v121 = objc_autoreleasePoolPush();
              v122 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                v124 = HMFGetLogIdentifier();
                *v189 = 138544386;
                v190 = v124;
                v191 = 2114;
                v192 = v171;
                v193 = 2114;
                v194 = v38;
                v195 = 2112;
                v196 = v159;
                v197 = 2114;
                v198 = v42;
                _os_log_impl(&dword_22AADC000, v122, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid response for characteristic ID '%{public}@' against accessory '%{public}@' with value '%@' and HAP status code '%{public}@'", v189, 0x34u);
              }
            }

            else
            {
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v44 = v153;
              v45 = [v44 countByEnumeratingWithState:&v179 objects:v188 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = *v180;
LABEL_33:
                v48 = 0;
                while (1)
                {
                  if (*v180 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v179 + 1) + 8 * v48);
                  service = [v49 service];
                  accessory = [service accessory];
                  instanceID = [accessory instanceID];

                  if (instanceID)
                  {
                    if ([v38 isEqualToNumber:instanceID])
                    {
                      instanceID2 = [v49 instanceID];
                      v54 = [v171 isEqualToNumber:instanceID2];

                      if (v54)
                      {
                        break;
                      }
                    }
                  }

                  if (v46 == ++v48)
                  {
                    v46 = [v44 countByEnumeratingWithState:&v179 objects:v188 count:16];
                    if (v46)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_102;
                  }
                }

                v60 = v49;

                if (!v60)
                {
                  goto LABEL_103;
                }

                [v44 removeObject:v60];
                currentActivity = v151;
                v156 = v60;
                if ([v60 shouldValidateValueAfterReading])
                {
                  metadata = [v60 metadata];
                  format = [metadata format];
                  v63 = HAPCharacteristicFormatFromString(format);

                  characteristicsCopy = v166;
                  completionCopy = v169;
                  if (!v63)
                  {
                    v64 = objc_autoreleasePoolPush();
                    v65 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      v66 = HMFGetLogIdentifier();
                      *v189 = v144;
                      v190 = v66;
                      _os_log_impl(&dword_22AADC000, v65, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] The characteristic has not specified a characteristic format type. This may cause the characteristic value to contain an object of an unexpected type. For now, the value will be passed through without transformation into an appropriate type. At some point in the future, support for this accessory may be dropped.", v189, 0xCu);
                    }

                    objc_autoreleasePoolPop(v64);
                    v67 = v159;
LABEL_54:
                    if ([v157 intValue])
                    {
                      v70 = ConvertFromHAPIPStatusErrorCode([v157 integerValue]);
                    }

                    else
                    {
                      if ([v60 shouldValidateValueAfterReading])
                      {
                        v70 = [v60 validateValue:v67 outValue:0];
                        v36 = v162;
                        if (!v70)
                        {
                          [v60 setValue:v67];
                        }

                        goto LABEL_61;
                      }

                      [v60 setValue:v67];
                      v70 = 0;
                    }

                    v36 = v162;
LABEL_61:
                    v149 = v67;
                    if (([v60 properties] & 0x100) != 0)
                    {
                      v71 = v70;
                      v72 = _parseNotificationContextFromCharacteristicResponse(v147);
                      [v60 setNotificationContext:v72];

                      v73 = objc_autoreleasePoolPush();
                      v74 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                      {
                        v75 = HMFGetLogIdentifier();
                        notificationContext = [v156 notificationContext];
                        *v189 = 138543874;
                        v190 = v75;
                        v191 = 2114;
                        v192 = notificationContext;
                        v193 = 2114;
                        v194 = v171;
                        _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_INFO, "%{public}@[HAPAccessoryServerIP] Received notification context:%{public}@ in read response for characteristic instanceId: %{public}@", v189, 0x20u);

                        v36 = v162;
                      }

                      objc_autoreleasePoolPop(v73);
                      v60 = v156;
                      v70 = v71;
                    }

                    else
                    {
                      [v60 setNotificationContext:0];
                    }

                    v77 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v60 error:v70];
                    if (v70)
                    {
                      v148 = v70;
                      service2 = [v60 service];
                      accessory2 = [service2 accessory];

                      v146 = accessory2;
                      server = [accessory2 server];
                      context = objc_autoreleasePoolPush();
                      v81 = server;
                      v82 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                      {
                        v83 = HMFGetLogIdentifier();
                        instanceID3 = [v146 instanceID];
                        instanceID4 = [v156 instanceID];
                        type = [v156 type];
                        *v189 = 138544386;
                        v190 = v83;
                        v191 = 2114;
                        v192 = instanceID3;
                        v193 = 2114;
                        v194 = instanceID4;
                        v195 = 2114;
                        v196 = type;
                        v197 = 2114;
                        v198 = v148;
                        _os_log_impl(&dword_22AADC000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@Read response for characteristic %{public}@/%{public}@/%{public}@ with error: %{public}@", v189, 0x34u);

                        characteristicsCopy = v166;
                        v36 = v162;
                      }

                      objc_autoreleasePoolPop(context);
                      completionCopy = v169;
                      v60 = v156;
                      v70 = v148;
                    }

                    [array addObject:v77];

                    v32 = v164;
                    goto LABEL_71;
                  }
                }

                else
                {
                  v63 = 12;
                  characteristicsCopy = v166;
                  completionCopy = v169;
                }

                v68 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
                v178 = 0;
                v67 = [v68 reverseTransformedValue:v159 format:v63 error:&v178];
                v69 = v178;

                if (!v69)
                {
                  v60 = v156;
                  goto LABEL_54;
                }

                v150 = v67;
                v141 = objc_autoreleasePoolPush();
                v142 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                {
                  v143 = HMFGetLogIdentifier();
                  *v189 = 138543874;
                  v190 = v143;
                  v191 = 2114;
                  v192 = v159;
                  v193 = 2112;
                  v194 = v69;
                  _os_log_impl(&dword_22AADC000, v142, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Failed to transform value '%{public}@' with error: %@", v189, 0x20u);
                }

                objc_autoreleasePoolPop(v141);
                goto LABEL_108;
              }

LABEL_102:

LABEL_103:
              v121 = objc_autoreleasePoolPush();
              v122 = HMFGetOSLogHandle();
              characteristicsCopy = v166;
              currentActivity = v151;
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                v123 = HMFGetLogIdentifier();
                *v189 = 138544130;
                v190 = v123;
                v191 = 2114;
                v192 = v171;
                v193 = 2114;
                v194 = v38;
                v195 = 2112;
                v196 = v159;
                _os_log_impl(&dword_22AADC000, v122, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid response for characteristic ID '%{public}@' against accessory '%{public}@' with value '%@': characteristic was not requested to be read", v189, 0x2Au);
              }
            }

            objc_autoreleasePoolPop(v121);
            completionCopy = v169;
LABEL_108:

            v91 = 0;
            v32 = v164;
LABEL_109:

LABEL_110:
            if ([v91 count])
            {
              v125 = characteristicsCopy;
              v103 = 0;
              if (currentActivity)
              {
LABEL_112:
                v126 = currentActivity;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v91 = v91;
                v127 = [v91 countByEnumeratingWithState:&v174 objects:v187 count:16];
                if (v127)
                {
                  v128 = v127;
                  v129 = *v175;
                  do
                  {
                    for (i = 0; i != v128; ++i)
                    {
                      if (*v175 != v129)
                      {
                        objc_enumerationMutation(v91);
                      }

                      v131 = *(*(&v174 + 1) + 8 * i);
                      characteristic = [v131 characteristic];
                      [characteristic instanceID];

                      error = [v131 error];
                      [error domain];

                      error2 = [v131 error];
                      [error2 code];
                    }

                    v128 = [v91 countByEnumeratingWithState:&v174 objects:v187 count:16];
                  }

                  while (v128);
                }

                characteristicsCopy = v125;
                currentActivity = v126;
LABEL_124:
                objectCopy = v158;
                if (!completionCopy)
                {
                  goto LABEL_94;
                }

                goto LABEL_93;
              }
            }

            else
            {
              v135 = objc_autoreleasePoolPush();
              v136 = selfCopy;
              v137 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v138 = v172 = v135;
                v139 = HTTPGetReasonPhrase();
                v140 = @"HAP JSON";
                *buf = 138544386;
                v200 = v138;
                v201 = 1026;
                *v202 = status;
                *&v202[4] = 2082;
                *&v202[6] = v139;
                *&v202[14] = 2114;
                *&v202[16] = @"HAP JSON";
                *&v202[24] = 2114;
                *&v202[26] = v161;
                _os_log_impl(&dword_22AADC000, v137, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse response objects for a read request, the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

                v135 = v172;
              }

              v125 = characteristicsCopy;

              objc_autoreleasePoolPop(v135);
              v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];

              v91 = 0;
              if (currentActivity)
              {
                goto LABEL_112;
              }
            }

            characteristicsCopy = v125;
            goto LABEL_124;
          }

          v114 = objc_autoreleasePoolPush();
          v117 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            v118 = HMFGetLogIdentifier();
            v119 = [v160 count];
            v120 = [v164 count];
            *buf = 138543874;
            v200 = v118;
            v201 = 2050;
            *v202 = v119;
            v32 = v164;
            *&v202[8] = 2050;
            *&v202[10] = v120;
            _os_log_impl(&dword_22AADC000, v117, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid read response, '%{public}lu' response objects for '%{public}lu' requested characteristics", buf, 0x20u);
          }
        }

        else
        {
          v114 = objc_autoreleasePoolPush();
          v115 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            v116 = HMFGetLogIdentifier();
            *buf = 138543618;
            v200 = v116;
            v201 = 2112;
            *v202 = @"characteristics";
            _os_log_impl(&dword_22AADC000, v115, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Invalid read response, %@ key doesn't contain an NSArray", buf, 0x16u);

            v32 = v164;
          }
        }

        objc_autoreleasePoolPop(v114);
        v91 = 0;
        goto LABEL_110;
      }
    }
  }

  v92 = completionCopy;
  v93 = objc_autoreleasePoolPush();
  v94 = selfCopy;
  v95 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    v96 = characteristicsCopy;
    v97 = objectCopy;
    v167 = v96;
    v98 = HMFGetLogIdentifier();
    v99 = HTTPGetReasonPhrase();
    if (type - 1 > 3)
    {
      v100 = @"Invalid";
    }

    else
    {
      v100 = off_2786D4CF8[type - 1];
    }

    v112 = v100;
    *buf = 138544386;
    v200 = v98;
    v201 = 1026;
    *v202 = status;
    *&v202[4] = 2082;
    *&v202[6] = v99;
    *&v202[14] = 2114;
    *&v202[16] = v112;
    *&v202[24] = 2114;
    *&v202[26] = v97;
    _os_log_impl(&dword_22AADC000, v95, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristics because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

    objectCopy = v97;
    characteristicsCopy = v167;
    v92 = completionCopy;
  }

  objc_autoreleasePoolPop(v93);
  v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
  v91 = 0;
  completionCopy = v92;
  if (v92)
  {
    goto LABEL_93;
  }

LABEL_94:

  v113 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v87 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queue = queue;
  handlerCopy = handler;
  if (valuesCopy)
  {
    if ([valuesCopy count])
    {
      if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v14 = valuesCopy;
        v15 = [v14 countByEnumeratingWithState:&v71 objects:v80 count:16];
        v16 = v14;
        if (v15)
        {
          v17 = *v72;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v72 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v71 + 1) + 8 * v18);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v15 == ++v18)
            {
              v15 = [v14 countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (v15)
              {
                goto LABEL_6;
              }

              v16 = v14;
              goto LABEL_27;
            }
          }

          if (!handlerCopy)
          {
            goto LABEL_28;
          }

          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_215;
          v69[3] = &unk_2786D6490;
          v70 = handlerCopy;
          dispatch_async(queue, v69);
          v16 = v70;
        }

LABEL_27:

LABEL_28:
        objc_initWeak(buf, self);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_2;
        v63[3] = &unk_2786D2760;
        objc_copyWeak(v68, buf);
        v34 = v14;
        v64 = v34;
        v68[1] = *&timeout;
        v35 = expiryCopy;
        v65 = v35;
        queueCopy = queue;
        v66 = queueCopy;
        v37 = handlerCopy;
        v67 = v37;
        v38 = MEMORY[0x231885210](v63);
        currentActivity = [MEMORY[0x277D0F770] currentActivity];
        v40 = objc_alloc_init(MEMORY[0x277D0F780]);
        objc_initWeak(&location, v40);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_4;
        v53[3] = &unk_2786D2828;
        objc_copyWeak(&v60, &location);
        objc_copyWeak(v61, buf);
        v54 = v34;
        v41 = currentActivity;
        v55 = v41;
        v61[1] = *&timeout;
        v56 = v35;
        v42 = queueCopy;
        v57 = v42;
        v43 = v37;
        v58 = v43;
        v44 = v38;
        v59 = v44;
        [v40 addExecutionBlock:v53];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_234;
        v49[3] = &unk_2786D6BE0;
        objc_copyWeak(&v52, &location);
        v51 = v43;
        v50 = v42;
        [v40 setCompletionBlock:v49];
        clientOperationQueue = [(HAPAccessoryServerIP *)self clientOperationQueue];
        [clientOperationQueue addOperation:v40];

        objc_destroyWeak(&v52);
        objc_destroyWeak(v61);
        objc_destroyWeak(&v60);
        objc_destroyWeak(&location);

        objc_destroyWeak(v68);
        objc_destroyWeak(buf);
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v82 = v33;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing read", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        [(HAPAccessoryServerIP *)selfCopy _queueReadCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queue queue:handlerCopy completionHandler:timeout];
        [(HAPAccessoryServerIP *)selfCopy _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.read"];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v29;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Reading 0 characteristics, bailing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      if (handlerCopy)
      {
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_210;
        v75[3] = &unk_2786D6490;
        v76 = handlerCopy;
        dispatch_async(queue, v75);
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = MEMORY[0x231885210](handlerCopy);
      *buf = 138543874;
      v82 = v23;
      v83 = 2112;
      v84 = 0;
      v85 = 2112;
      v86 = v24;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to read values because the characteristics were %@ and the completion handler was %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    if (handlerCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v79 = handlerCopy;
      v78 = v25;
      dispatch_async(queue, block);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_215(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
  (*(*(a1 + 32) + 16))();
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_2(id *a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v11 = a1[4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_3;
  v19[3] = &unk_2786D2738;
  objc_copyWeak(v22, a1 + 8);
  v12 = a1[4];
  v22[1] = a1[9];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v20 = v17;
  v21 = v16;
  [WeakRetained _handleReadResponseObject:v8 type:a3 httpStatus:a4 error:v9 characteristics:v11 completion:v19];

  objc_destroyWeak(v22);
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_4(id *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  v3 = objc_loadWeakRetained(a1 + 11);
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    if (v3)
    {
      v48 = v3;
      [@"/" stringByAppendingPathComponent:@"characteristics"];
      v47 = v46 = a1;
      v4 = a1[4];
      v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v4;
      v7 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v64;
        v45 = WeakRetained;
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v64 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * v10);
          v12 = [v11 service];
          v13 = [v12 accessory];
          v14 = [v13 instanceID];

          if (!v14)
          {
            break;
          }

          if ([v5 containsObject:v11])
          {
            v29 = objc_autoreleasePoolPush();
            v3 = v48;
            v34 = v48;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v35 = HMFGetLogIdentifier();
              *v68 = 138543618;
              v69 = v35;
              v70 = 2112;
              v71 = v11;
              _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@Refusing to create a query string because the same characteristic has been requested twice: %@", v68, 0x16u);
            }

            v33 = 58;
LABEL_23:
            WeakRetained = v45;

            objc_autoreleasePoolPop(v29);
            v24 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v33];
            v36 = v24;

            v23 = 0;
            v21 = obj;
            v22 = obj;
            goto LABEL_24;
          }

          [v5 addObject:v11];
          v15 = MEMORY[0x277CCACA8];
          v16 = [v14 stringValue];
          v17 = [v11 instanceID];
          [v17 stringValue];
          v19 = v18 = v6;
          v20 = [v15 stringWithFormat:@"%@%@%@", v16, @".", v19];

          v6 = v18;
          [v18 addObject:v20];

          if (v8 == ++v10)
          {
            v8 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
            WeakRetained = v45;
            if (v8)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        v29 = objc_autoreleasePoolPush();
        v3 = v48;
        v30 = v48;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *v68 = 138543618;
          v69 = v32;
          v70 = 2112;
          v71 = v11;
          _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to create a query string for characteristic %@ because the accessory instance ID was nil.", v68, 0x16u);
        }

        v14 = 0;
        v33 = 20;
        goto LABEL_23;
      }

LABEL_13:
      v21 = obj;

      v22 = [v6 componentsJoinedByString:{@", "}];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"id=", v22];
      v24 = 0;
      v3 = v48;
LABEL_24:

      v37 = v24;
      if (v23)
      {
        v28 = v47;
        if (v46[5])
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v38 = v46[4];
          v39 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v60;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v60 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                [*(*(&v59 + 1) + 8 * i) instanceID];
              }

              v40 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
            }

            while (v40);
          }

          v3 = v48;
        }

        v43 = [v3 clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_224;
        block[3] = &unk_2786D2788;
        objc_copyWeak(v58, v46 + 10);
        block[4] = v3;
        v51 = v46[4];
        v58[1] = v46[12];
        v52 = v46[6];
        v53 = v46[7];
        v56 = v46[8];
        v54 = v47;
        v55 = v23;
        v57 = v46[9];
        dispatch_async(v43, block);

        objc_destroyWeak(v58);
      }

      else
      {
        [WeakRetained cancelWithError:v37];
        v28 = v47;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v73 = v27;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to read values because IP Accessory Server has been deallocated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v28 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
      [WeakRetained cancelWithError:v28];
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_234(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = v3;
  if (v3)
  {
    if (([v3 isHAPOperationDelayed] & 1) == 0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_2_235;
        v7[3] = &unk_2786D65D8;
        v9 = v5;
        v8 = WeakRetained;
        dispatch_async(v6, v7);
      }
    }
  }
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_2_235(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_224(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if ([*(a1 + 32) _isSessionEstablished])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@?%@", *(a1 + 64), *(a1 + 72)];
    if (*(a1 + 104) <= 0.0)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = *(a1 + 104);
    }

    if (!*(a1 + 48))
    {
      goto LABEL_11;
    }

    [*(a1 + 32) remainingTTLForExpiry:?];
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v10;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for read operation: %0.4f sec", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (v6 >= 1.0)
    {
      if (v6 < v4)
      {
        v4 = v6;
      }

LABEL_11:
      v11 = [MEMORY[0x277D0F770] currentActivity];
      [v11 markWithReason:@"Reading"];

      [*(a1 + 32) sendGETRequestToURL:v3 timeout:*(a1 + 88) completionHandler:v4];
      [WeakRetained finish];
      goto LABEL_18;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Drop read operation due to TTL expiry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:43 description:@"Request TTL expired at CoreHAP" reason:0 suggestion:0 underlyingError:0];
    [WeakRetained cancelWithError:v20];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session has been lost since this operation was staged. Canceling operation and re-queueing read.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 32) _queueReadCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) expiry:*(a1 + 56) queue:*(a1 + 80) completionHandler:*(a1 + 104)];
    [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.read"];
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:40];
    [WeakRetained cancelWithError:v3];
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

void __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleReadECONNRESETError:v5 readCharacteristics:*(a1 + 32) responses:v6 timeout:*(a1 + 40) expiry:*(a1 + 48) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
}

- (void)_handleReadECONNRESETError:(id)error readCharacteristics:(id)characteristics responses:(id)responses timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  errorCopy = error;
  characteristicsCopy = characteristics;
  responsesCopy = responses;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  userInfo = [errorCopy userInfo];
  v22 = [userInfo hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  domain = [v22 domain];
  if ([domain isEqual:*MEMORY[0x277CCA590]] && objc_msgSend(v22, "code") == 54)
  {
    econnresetRetryInProgress = [(HAPAccessoryServerIP *)self econnresetRetryInProgress];

    if (!econnresetRetryInProgress)
    {
      clientQueue = [(HAPAccessoryServer *)self clientQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke;
      v38[3] = &unk_2786D4060;
      v38[4] = self;
      v26 = &v39;
      v31 = characteristicsCopy;
      v39 = characteristicsCopy;
      *&v42[1] = timeout;
      v27 = &v40;
      v40 = expiryCopy;
      v28 = &v41;
      v41 = queueCopy;
      v29 = v42;
      v42[0] = handlerCopy;
      v30 = v38;
LABEL_8:
      dispatch_async(clientQueue, v30);

      characteristicsCopy = v31;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (handlerCopy)
  {
    v31 = characteristicsCopy;
    [(HAPAccessoryServerIP *)self _indicateSessionActivityWithReason:@"Read"];
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke_209;
    block[3] = &unk_2786D5C48;
    block[4] = self;
    v26 = &v34;
    v34 = queueCopy;
    v27 = &v37;
    v37 = handlerCopy;
    v28 = &v35;
    v35 = responsesCopy;
    v29 = &v36;
    v36 = errorCopy;
    v30 = block;
    goto LABEL_8;
  }

LABEL_9:
}

void __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _populateSocketUpdateType];
  [*(a1 + 32) _insertReadCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) expiry:*(a1 + 56) queue:*(a1 + 64) completionHandler:*(a1 + 72)];
  if ([*(a1 + 32) isEstablishingSecureConnection])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Already establishing secure session - not attempting a re-establishment", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [*(a1 + 32) setEconnresetRetryInProgress:1];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to re-establish secure session for read on ECONNRESET", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) count];
    [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.read.retry"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke_209(uint64_t a1)
{
  [*(a1 + 32) _populateSocketUpdateType];
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke_2;
  block[3] = &unk_2786D69E0;
  v6 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  dispatch_async(v2, block);
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  v17 = objc_alloc(MEMORY[0x277D0F770]);
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x231884350](self, a2);
  2705 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 2705];
  v33 = [v17 initWithName:2705];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D2710;
  block[4] = self;
  v27 = valuesCopy;
  timeoutCopy = timeout;
  v28 = expiryCopy;
  v29 = queueCopy;
  v30 = v33;
  v31 = handlerCopy;
  v22 = handlerCopy;
  v23 = queueCopy;
  v24 = expiryCopy;
  v25 = valuesCopy;
  dispatch_async(clientQueue, block);

  __HMFActivityScopeLeave();
}

void __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
  v7[3] = &unk_2786D3FE8;
  objc_copyWeak(&v10, &location);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  [v2 _readCharacteristicValues:v3 timeout:v5 expiry:v6 queue:v7 completionHandler:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v5 hmf_objectsPassingTest:&__block_literal_global_194];
  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Read Response: '%{public}@'", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  [*(a1 + 32) begin];
  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v13 = MEMORY[0x231885210](*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 32) end];
  [*(a1 + 32) invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 == 0;

  return v3;
}

- (void)_processQueuedOperationsWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queuedOperations = [(HAPAccessoryServerIP *)self queuedOperations];
  v6 = [queuedOperations copy];

  [(HAPAccessoryServerIP *)self setEstablishingSecureConnection:0];
  if (errorCopy)
  {
    [(HAPAccessoryServerIP *)self setSecuritySessionOpen:0];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        queuedOperations2 = [(HAPAccessoryServerIP *)self queuedOperations];
        v13 = MEMORY[0x231885210](v11);
        [queuedOperations2 removeObject:v13];

        clientQueue = [(HAPAccessoryServer *)self clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__HAPAccessoryServerIP__processQueuedOperationsWithError___block_invoke;
        block[3] = &unk_2786D69E0;
        v18 = errorCopy;
        selfCopy = self;
        v20 = v11;
        dispatch_async(clientQueue, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HAPAccessoryServerIP__processQueuedOperationsWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) code];
      v13 = 138543618;
      v14 = v7;
      v15 = 1026;
      v16 = v8;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failing queued request with %{public}d", &v13, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Running queued request", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) _kickConnectionIdleTimer];
  }

  v10 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queueEnableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  v36 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  objc_initWeak(&location, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __90__HAPAccessoryServerIP__queueEnableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  v27 = &unk_2786D26E8;
  objc_copyWeak(&v31, &location);
  v13 = queueCopy;
  v28 = v13;
  v14 = handlerCopy;
  v30 = v14;
  eventsCopy = events;
  v15 = characteristicsCopy;
  v29 = v15;
  v16 = MEMORY[0x231885210](&v24);
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v20;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing enableEvents until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HAPAccessoryServerIP *)selfCopy queuedOperations:v24];
  v22 = MEMORY[0x231885210](v16);
  [v21 addObject:v22];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];
}

void __90__HAPAccessoryServerIP__queueEnableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Error in establishing secure session, failing enableEvents block with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__HAPAccessoryServerIP__queueEnableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_187;
    v12[3] = &unk_2786D65D8;
    v14 = *(a1 + 48);
    v13 = v3;
    dispatch_async(v10, v12);
  }

  else
  {
    [WeakRetained _enableEvents:*(a1 + 64) forCharacteristics:*(a1 + 40) withCompletionHandler:*(a1 + 48) queue:*(a1 + 32)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queueListPairingWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __79__HAPAccessoryServerIP__queueListPairingWithCompletionQueue_completionHandler___block_invoke;
  v21 = &unk_2786D3A30;
  objc_copyWeak(&v24, &location);
  v8 = queueCopy;
  v22 = v8;
  v9 = handlerCopy;
  v23 = v9;
  v10 = MEMORY[0x231885210](&v18);
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing list-pairing until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HAPAccessoryServerIP *)selfCopy queuedOperations:v18];
  v16 = MEMORY[0x231885210](v10);
  [v15 addObject:v16];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __79__HAPAccessoryServerIP__queueListPairingWithCompletionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Error in establishing secure session, failing add pairing block with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__HAPAccessoryServerIP__queueListPairingWithCompletionQueue_completionHandler___block_invoke_186;
    v12[3] = &unk_2786D65D8;
    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
    v13 = v3;
    dispatch_async(v10, v12);
  }

  else
  {
    [WeakRetained _listPairingsWithCompletionQueue:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queueAddPairingWithIdentifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__HAPAccessoryServerIP__queueAddPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke;
  v28[3] = &unk_2786D26C0;
  objc_copyWeak(&v33, &location);
  v16 = queueCopy;
  v29 = v16;
  v17 = completionCopy;
  v32 = v17;
  v18 = identifierCopy;
  v30 = v18;
  v19 = keyCopy;
  v31 = v19;
  adminCopy = admin;
  v20 = MEMORY[0x231885210](v28);
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v24;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing add-pairing until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  queuedOperations = [(HAPAccessoryServerIP *)selfCopy queuedOperations];
  v26 = MEMORY[0x231885210](v20);
  [queuedOperations addObject:v26];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v27 = *MEMORY[0x277D85DE8];
}

void __88__HAPAccessoryServerIP__queueAddPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Error in establishing secure session, failing add pairing block with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__HAPAccessoryServerIP__queueAddPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_185;
    v12[3] = &unk_2786D65D8;
    v14 = *(a1 + 56);
    v13 = v3;
    dispatch_async(v10, v12);
  }

  else
  {
    [WeakRetained _startAddPairingWithIdentifier:*(a1 + 40) publicKey:*(a1 + 48) admin:*(a1 + 72) queue:*(a1 + 32) completion:*(a1 + 56)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_insertWriteCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Queuing retry"];

  v17 = [(HAPAccessoryServerIP *)self _queuedWriteOperationBlock:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple characteristic write at the start until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  queuedOperations = [(HAPAccessoryServerIP *)selfCopy queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [queuedOperations insertObject:v23 atIndex:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queueWriteCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Queuing"];
  v17 = [(HAPAccessoryServerIP *)self _queuedWriteOperationBlock:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple characteristic write until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  [valuesCopy count];
  queuedOperations = [(HAPAccessoryServerIP *)selfCopy queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [queuedOperations addObject:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_queuedWriteOperationBlock:(id)block timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  blockCopy = block;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__HAPAccessoryServerIP__queuedWriteOperationBlock_timeout_expiry_queue_completionHandler___block_invoke;
  v23[3] = &unk_2786D2698;
  objc_copyWeak(v28, &location);
  v16 = blockCopy;
  v24 = v16;
  v17 = queueCopy;
  v25 = v17;
  v18 = handlerCopy;
  v27 = v18;
  v28[1] = *&timeout;
  v19 = expiryCopy;
  v26 = v19;
  v20 = MEMORY[0x231885210](v23);
  v21 = [v20 copy];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);

  return v21;
}

void __90__HAPAccessoryServerIP__queuedWriteOperationBlock_timeout_expiry_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v6)
  {
    [WeakRetained _error:v6 forWriteCharacteristicValues:v5 queue:*(a1 + 40) completionHandler:*(a1 + 56)];
  }

  else
  {
    [WeakRetained _writeCharacteristicValues:v5 timeout:*(a1 + 48) expiry:*(a1 + 40) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
  }
}

- (void)_insertReadCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Queuing retry"];

  v17 = [(HAPAccessoryServerIP *)self _queuedReadOperationBlock:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing multiple read at the start until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  queuedOperations = [(HAPAccessoryServerIP *)selfCopy queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [queuedOperations insertObject:v23 atIndex:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queueReadCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Queuing"];
  v17 = [(HAPAccessoryServerIP *)self _queuedReadOperationBlock:valuesCopy timeout:expiryCopy expiry:queueCopy queue:handlerCopy completionHandler:timeout];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple read until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  [valuesCopy count];
  queuedOperations = [(HAPAccessoryServerIP *)selfCopy queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [queuedOperations addObject:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_queuedReadOperationBlock:(id)block timeout:(double)timeout expiry:(id)expiry queue:(id)queue completionHandler:(id)handler
{
  blockCopy = block;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__HAPAccessoryServerIP__queuedReadOperationBlock_timeout_expiry_queue_completionHandler___block_invoke;
  v23[3] = &unk_2786D2698;
  objc_copyWeak(v28, &location);
  v16 = blockCopy;
  v24 = v16;
  v17 = queueCopy;
  v25 = v17;
  v18 = handlerCopy;
  v27 = v18;
  v28[1] = *&timeout;
  v19 = expiryCopy;
  v26 = v19;
  v20 = MEMORY[0x231885210](v23);
  v21 = [v20 copy];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);

  return v21;
}

void __89__HAPAccessoryServerIP__queuedReadOperationBlock_timeout_expiry_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v6)
  {
    [WeakRetained _error:v6 forReadCharacteristicValues:v5 queue:*(a1 + 40) completionHandler:*(a1 + 56)];
  }

  else
  {
    [WeakRetained _readCharacteristicValues:v5 timeout:*(a1 + 48) expiry:*(a1 + 40) queue:*(a1 + 56) completionHandler:*(a1 + 72)];
  }
}

- (void)_error:(id)_error forWriteCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  _errorCopy = _error;
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = valuesCopy;
  v37 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v37)
  {
    v36 = *v43;
    selfCopy = self;
    v32 = array;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        if (_errorCopy)
        {
          characteristic = [*(*(&v42 + 1) + 8 * i) characteristic];
          service = [characteristic service];
          accessory = [service accessory];

          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v21 = v35 = accessory;
            [v35 instanceID];
            v23 = v22 = _errorCopy;
            instanceID = [characteristic instanceID];
            [characteristic type];
            v25 = v34 = v18;
            *buf = 138544386;
            v47 = v21;
            v48 = 2114;
            v49 = v23;
            v50 = 2114;
            v51 = instanceID;
            v52 = 2114;
            v53 = v25;
            v54 = 2114;
            v55 = v22;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Write response for characteristic %{public}@/%{public}@/%{public}@ with error: %{public}@", buf, 0x34u);

            v18 = v34;
            self = selfCopy;

            _errorCopy = v22;
            array = v32;

            accessory = v35;
          }

          objc_autoreleasePoolPop(v18);
        }

        characteristic2 = [v14 characteristic];
        v27 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:characteristic2 error:_errorCopy];

        [array addObject:v27];
      }

      v37 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v37);
  }

  if (handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HAPAccessoryServerIP__error_forWriteCharacteristicValues_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v41 = handlerCopy;
    v39 = array;
    v40 = _errorCopy;
    dispatch_async(queueCopy, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_error:(id)_error forReadCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  _errorCopy = _error;
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = valuesCopy;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v35)
  {
    v13 = *v41;
    selfCopy = self;
    v32 = array;
    v30 = *v41;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if (_errorCopy)
        {
          service = [*(*(&v40 + 1) + 8 * i) service];
          accessory = [service accessory];

          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = HMFGetLogIdentifier();
            instanceID = [accessory instanceID];
            [v15 instanceID];
            v34 = v18;
            v24 = v23 = _errorCopy;
            type = [v15 type];
            *buf = 138544386;
            v45 = v21;
            v46 = 2114;
            v47 = instanceID;
            v48 = 2114;
            v49 = v24;
            v50 = 2114;
            v51 = type;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Read response failed for characteristic %{public}@/%{public}@/%{public}@: %{public}@", buf, 0x34u);

            self = selfCopy;
            _errorCopy = v23;
            v18 = v34;

            array = v32;
            v13 = v30;
          }

          objc_autoreleasePoolPop(v18);
        }

        v26 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v15 error:_errorCopy];
        [array addObject:v26];
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v35);
  }

  if (handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HAPAccessoryServerIP__error_forReadCharacteristicValues_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v39 = handlerCopy;
    v37 = array;
    v38 = _errorCopy;
    dispatch_async(queueCopy, block);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_continuePairingAfterMFiCertValidation
{
  v17 = *MEMORY[0x277D85DE8];
  [(HAPAccessoryServerIP *)self tearDownSessionOnAuthCompletion];
  if ([(HAPAccessoryServer *)self pairSetupType]== 6)
  {
    isPreSoftAuthWacStarted = [(HAPAccessoryServerIP *)self isPreSoftAuthWacStarted];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (isPreSoftAuthWacStarted)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        *v16 = 138543362;
        *&v16[4] = v8;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Transient Pair-Setup completed with Cert Auth - starting easyConfig", v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [(HAPAccessoryServerIP *)selfCopy pairSetupStartSoftAuthWAC];
    }

    else
    {
      if (v7)
      {
        v10 = HMFGetLogIdentifier();
        *v16 = 138543362;
        *&v16[4] = v10;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Transient Pair-Setup completed with Cert Auth - starting regular", v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      pairingActivity = [(HAPAccessoryServer *)selfCopy pairingActivity];
      [pairingActivity begin];
      *v16 = [(HAPAccessoryServer *)selfCopy pairingActivity];

      pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];
      v13 = [pairingRequest copy];

      [v13 setRequiresUserConsent:0];
      pairingRequest2 = [(HAPAccessoryServer *)selfCopy pairingRequest];
      [(HAPAccessoryServerIP *)selfCopy startPairingWithRequest:pairingRequest2];

      __HMFActivityScopeLeave();
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(HAPAccessoryServerIP *)self _notifyDelegatesPairingStopped:0];
  }
}

- (void)_handleMFiCertValidation
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0;
  if (([(HAPAccessoryServer *)self pairSetupType]== 5 || [(HAPAccessoryServer *)self pairSetupType]== 6) && self->_pairingSession)
  {
    v3 = PairingSessionCopyProperty();
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v7;
      v36 = 1024;
      *v37 = v33;
      *&v37[4] = 2112;
      *&v37[6] = v3;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Pair Setup completed with err: %d - MFi Cert %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v4);
    if (v3)
    {
      v8 = v3;
      CFRelease(v8);
      if ([(HAPAccessoryServerIP *)selfCopy isPreSoftAuthWacStarted])
      {
        objc_initWeak(&location, selfCopy);
        v9 = objc_autoreleasePoolPush();
        v10 = selfCopy;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v35 = v12;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Restoring network to validate Cert", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [(HAPAccessoryServerIP *)v10 _notifyDelegateOfPairingProgress:3];
        hapWACAccessoryClient = [(HAPAccessoryServerIP *)v10 hapWACAccessoryClient];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke;
        v29[3] = &unk_2786D2670;
        objc_copyWeak(&v31, &location);
        v30 = v8;
        v14 = [hapWACAccessoryClient restoreNetworkWithCompletion:v29];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else if ([(HAPAccessoryServerIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServer_validateCert_model_])
      {
        delegateQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke_3;
        v27[3] = &unk_2786D7050;
        v27[4] = selfCopy;
        v28 = v8;
        dispatch_async(delegateQueue, v27);
      }

      else
      {
        [(HAPAccessoryServerIP *)selfCopy _tearDownSession];
        v16 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
        [(HAPAccessoryServerIP *)selfCopy _processQueuedOperationsWithError:v16];
        v17 = HMErrorFromOSStatus(v33);
        [(HAPAccessoryServerIP *)selfCopy _notifyDelegatesPairingStopped:v17];
      }
    }
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    pairSetupType = [(HAPAccessoryServer *)selfCopy2 pairSetupType];
    authMethod = [(HAPAccessoryServer *)selfCopy2 authMethod];
    if (authMethod > 6)
    {
      v24 = @"HAPAuthMethodUnknown";
    }

    else
    {
      v24 = off_2786D2590[authMethod];
    }

    v25 = v24;
    *buf = 138543874;
    v35 = v21;
    v36 = 2048;
    *v37 = pairSetupType;
    *&v37[8] = 2112;
    *&v37[10] = v25;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Pair-Setup Completed with Type: %tu, Auth method: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v26 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!a2)
  {
    [WeakRetained _notifyDelegateOfPairingProgress:4];
  }

  if ([v5 _delegateRespondsToSelector:sel_accessoryServer_validateCert_model_])
  {
    [v5 _notifyDelegateOfPairingProgress:5];
    v6 = [v5 delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke_2;
    v7[3] = &unk_2786D7050;
    v7[4] = v5;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 model];
  [v5 accessoryServer:v3 validateCert:v2 model:v4];
}

void __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 model];
  [v5 accessoryServer:v3 validateCert:v2 model:v4];
}

- (BOOL)stopPairingWithError:(id *)error
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);

  return 1;
}

void __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isWacAccessory];
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 _tearDownWAC];
  }

  else
  {
    if ([v3 isEstablishingSecureConnection])
    {
      objc_initWeak(&location, *(a1 + 32));
      v4 = [*(a1 + 32) queuedOperations];
      v5 = v10;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_2;
      v10[3] = &unk_2786D6D90;
      objc_copyWeak(&v11, &location);
      v6 = MEMORY[0x231885210](v10);
      [v4 addObject:v6];
    }

    else
    {
      [*(a1 + 32) _tearDownSession];
      objc_initWeak(&location, *(a1 + 32));
      v7 = *(a1 + 32);
      v4 = [v7 clientQueue];
      v5 = v8;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_164;
      v8[3] = &unk_2786D6D90;
      objc_copyWeak(&v9, &location);
      [v7 removePairingForCurrentControllerOnQueue:v4 completion:v8];
    }

    objc_destroyWeak(v5 + 4);
    objc_destroyWeak(&location);
  }
}

void __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_3;
  v6[3] = &unk_2786D6D90;
  objc_copyWeak(&v7, (a1 + 32));
  [WeakRetained removePairingForCurrentControllerOnQueue:v5 completion:v6];

  objc_destroyWeak(&v7);
}

void __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_164(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Pairing stopped and accessory pairing removed with error: %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Deferred accessory pairing removed with error: %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)disconnectWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HAPAccessoryServerIP_disconnectWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __44__HAPAccessoryServerIP_disconnectWithError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Tearing down session as a result of disconnect call", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _tearDownSessionAndStartReachabilityWithError:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_tearDownSessionAndStartReachabilityWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@invalidating HTTP client and tearing down pairing session %{public}@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServerIP *)selfCopy _tearDownSessionWithError:errorCopy];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ensuring reachability poll is enabled", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  [(HAPAccessoryServerIP *)v11 _startReachability];
  browser = [(HAPAccessoryServerIP *)v11 browser];
  [browser startDiscoveringAccessoryServers];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_skipReconfirm
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Skipping reconfirm", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_matchesError:(id)error withHAPHMErrorCode:(int64_t)code
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqual:@"HMErrorDomain"])
    {
      v8 = [v6 code] == code;
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

- (BOOL)_matchesError:(id)error withHAPErrorCode:(int64_t)code
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqual:@"HAPErrorDomain"])
    {
      v8 = [v6 code] == code;
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

- (void)_doBonjourReconfirm
{
  v16 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  bonjourDeviceInfo = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  if (bonjourDeviceInfo)
  {
    v5 = BonjourDevice_Reconfirm();
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v10;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Bonjour reconfirm failed %d", &v12, 0x12u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownSessionWithError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  [(HAPAccessoryServerIP *)self setSecuritySessionOpen:0];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = errorCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Invalidating HTTP client with error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  httpClient = [(HAPAccessoryServerIP *)selfCopy httpClient];
  [httpClient invalidateWithError:errorCopy];

  [(HAPAccessoryServerIP *)selfCopy setHttpClient:0];
  [(HAPAccessoryServerIP *)selfCopy setHasAttributeDatabase:0];
  if (!selfCopy->_retryingPairSetup)
  {
    [(HAPAccessoryServerIP *)selfCopy setPreSoftAuthWacStarted:0];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  accessories = [(HAPAccessoryServer *)selfCopy accessories];
  v12 = [accessories countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v20 + 1) + 8 * v15++) invalidateWithError:errorCopy];
      }

      while (v13 != v15);
      v13 = [accessories countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(HAPAccessoryServerIP *)selfCopy _notifyDelegatesOfConnectionState:0 withError:errorCopy];
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v17 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPDefaultIPDisconnectOnIdleTimeoutSeconds"];
  numberValue = [v17 numberValue];
  [numberValue doubleValue];
  [(HAPAccessoryServerIP *)selfCopy setDisconnectOnIdleTimeout:?];

  [(HAPAccessoryServerIP *)selfCopy _suspendConnectionIdleTimer];
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error
{
  passwordCopy = password;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HAPAccessoryServerIP_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = passwordCopy;
  v8 = passwordCopy;
  dispatch_async(clientQueue, v10);

  return 1;
}

uint64_t __78__HAPAccessoryServerIP_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) isWacAccessory] || (objc_msgSend(*(a1 + 32), "isWacLegacy") & 1) != 0 || (objc_msgSend(*(a1 + 32), "isPreSoftAuthWacStarted") & 1) != 0)
  {
    goto LABEL_7;
  }

  v2 = [*(a1 + 32) hapWACAccessory];
  if ([v2 supportsTokenAuth])
  {

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) hapWACAccessory];
  v4 = [v3 supportsCertAuth];

  if (v4)
  {
LABEL_7:
    if ([*(a1 + 32) isPostSoftAuthWacStarted])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v8;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Post SW Auth password", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      result = [*(a1 + 32) _continuePairingWithSetupCode:*(a1 + 40)];
      v10 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *MEMORY[0x277D85DE8];

      return [v11 _pairSetupTryPassword:v12];
    }

    return result;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *MEMORY[0x277D85DE8];

  return [v14 _continuePairingWithSetupCode:v15];
}

- (void)continuePairingAfterAuthPrompt
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    hapWACAccessory = [(HAPAccessoryServerIP *)selfCopy hapWACAccessory];
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = hapWACAccessory;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Continuing pairing after auth prompt hapWACAccessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPAccessoryServerIP_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = selfCopy;
  dispatch_async(clientQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HAPAccessoryServerIP_continuePairingAfterAuthPrompt__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) hapWACAccessory];
  if (!v3)
  {
LABEL_11:
    v10 = *(a1 + 32);

    return [v10 _continuePairingAfterAuthPromptWithRetry:1];
  }

  v4 = v3;
  v5 = [*(a1 + 32) hapWACAccessory];
  v6 = [v5 supportsLegacyWAC];
  if ((v6 & 1) == 0)
  {
    v1 = [*(a1 + 32) hapWACAccessory];
    if (![v1 supportsWAC2])
    {
      goto LABEL_6;
    }
  }

  v7 = [*(a1 + 32) hapWACAccessory];
  if ([v7 supportsTokenAuth])
  {

    if (v6)
    {
LABEL_7:

      goto LABEL_11;
    }

LABEL_6:

    goto LABEL_7;
  }

  v8 = [*(a1 + 32) hapWACAccessory];
  v9 = [v8 supportsCertAuth];

  if ((v6 & 1) == 0)
  {
  }

  if (v9)
  {
    goto LABEL_11;
  }

  v12 = *(a1 + 32);

  return [v12 _continuePairingUsingWAC];
}

- (void)reconfirm
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HAPAccessoryServerIP_reconfirm__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __33__HAPAccessoryServerIP_reconfirm__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isWacAccessory] || (objc_msgSend(*(a1 + 32), "isWacComplete") & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasStartedPairing") & 1) != 0)
  {
    v2 = *(a1 + 32);

    [v2 _doBonjourReconfirm];
  }

  else
  {
    v3 = [*(a1 + 32) browser];
    [v3 startDiscoveringWACAccessoryServers];
  }
}

- (void)startPairingWithRequest:(id)request
{
  requestCopy = request;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v10 = currentActivity;
  v11 = requestCopy;
  v7 = requestCopy;
  v8 = currentActivity;
  dispatch_async(clientQueue, block);
}

id __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPairingActivity:*(a1 + 40)];
  [*(a1 + 32) setHasStartedPairing:1];
  [*(a1 + 32) setPairingRequest:*(a1 + 48)];
  if ([*(a1 + 32) isWacAccessory] && (objc_msgSend(*(a1 + 32), "isWacComplete") & 1) == 0)
  {
    [*(a1 + 32) _notifyDelegateOfPairingProgress:0];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_2;
    v6[3] = &unk_2786D6CF0;
    v6[4] = v5;
    return [v5 _joinAccessoryNetworkWithCompletion:v6];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 48) requiresUserConsent];

    return [v2 _pairSetupStartWithConsentRequired:v3];
  }
}

void __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _notifyDelegatesPairingStopped:v3];
    goto LABEL_13;
  }

  [v4 _notifyDelegateOfPairingProgress:1];
  v5 = [*(a1 + 32) hapWACAccessory];
  v6 = [v5 supportsLegacyWAC];

  if (v6)
  {
    v7 = [HAPAccessoryInfo alloc];
    v27 = [*(a1 + 32) hapWACAccessory];
    v8 = [v27 name];
    v9 = [*(a1 + 32) hapWACAccessory];
    v10 = [v9 manufacturer];
    v11 = [*(a1 + 32) hapWACAccessory];
    v12 = [v11 model];
    v13 = [*(a1 + 32) hapWACAccessory];
    v14 = [v13 wacCategory];
    v15 = [(HAPAccessoryInfo *)v7 initWithName:v8 manufacturer:v10 modelName:v12 category:v14 certificationStatus:0 denylisted:0 ppid:0];

    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v16 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_3;
      block[3] = &unk_2786D7050;
      block[4] = *(a1 + 32);
      v30 = v15;
      dispatch_async(v16, block);
    }

    goto LABEL_13;
  }

  v17 = [*(a1 + 32) hapWACAccessory];
  if ([v17 supportsTokenAuth])
  {

LABEL_10:
    [*(a1 + 32) setPairingRequestPending:1];
    [*(a1 + 32) setPreSoftAuthWacStarted:1];
    [*(a1 + 32) _notifyDelegateOfPairingProgress:8];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Waiting for Bonjour to start Cert / Token Auth", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_162;
    v28[3] = &unk_2786D6CA0;
    v28[4] = *(a1 + 32);
    __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_162(v28);
    goto LABEL_13;
  }

  v18 = [*(a1 + 32) hapWACAccessory];
  v19 = [v18 supportsCertAuth];

  if (v19)
  {
    goto LABEL_10;
  }

  v25 = [*(a1 + 32) hapWACAccessory];
  v26 = [v25 supportsWAC2];

  if (v26)
  {
    [*(a1 + 32) continuePairingAfterAuthPrompt];
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:1 accessoryInfo:*(a1 + 40) error:0];
}

void __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke_162(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) hapWACAccessory];
    v4 = HAPAuthFeaturesToString([v3 authFeatures]);

    v2 = v5;
  }
}

- (void)_isAccessoryPublicKeyPresent:(BOOL *)present registeredWithHomeKit:(BOOL *)kit
{
  if (present)
  {
    *present = 0;
  }

  if (kit)
  {
    *kit = 0;
  }

  keyStore = [(HAPAccessoryServer *)self keyStore];
  v16 = 0;
  identifier = [(HAPAccessoryServer *)self identifier];
  v15 = 0;
  [keyStore getControllerPublicKey:&v16 secretKey:0 username:0 allowCreation:0 forAccessory:identifier error:&v15];
  v9 = v16;
  v10 = v15;

  if (!v10 && v9)
  {
    keyStore2 = [(HAPAccessoryServer *)self keyStore];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    v14 = 0;
    v13 = [keyStore2 readPublicKeyForAccessoryName:identifier2 registeredWithHomeKit:kit error:&v14];
    v10 = v14;

    if (present && !v10 && v13)
    {
      *present = 1;
    }
  }
}

- (void)_establishSecureConnectionAndFetchAttributeDatabaseWithReason:(id)reason
{
  reasonCopy = reason;
  if (![(HAPAccessoryServerIP *)self isEstablishingSecureConnection])
  {
    mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    identifier = [(HAPAccessoryServer *)self identifier];
    category = [(HAPAccessoryServer *)self category];
    [mEMORY[0x277D0F8C0] reportConnection:identifier linkType:1 accessoryCategory:category];

    [(HAPAccessoryServerIP *)self setTriedConnectingToIPv4Address:0];
    [(HAPAccessoryServerIP *)self setTriedConnectingToIPv6Address:0];
    [(HAPAccessoryServerIP *)self setEstablishingSecureConnection:1];
    [(HAPAccessoryServerIP *)self setHasAttributeDatabase:0];
    [(HAPAccessoryServer *)self setMetric_pairVerifyReason:reasonCopy];
    [(HAPAccessoryServerIP *)self _suspendConnectionIdleTimer];
    date = [MEMORY[0x277CBEAA8] date];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke;
    v13 = &unk_2786D42B8;
    objc_copyWeak(&v16, &location);
    v9 = date;
    v14 = v9;
    v15 = reasonCopy;
    [(HAPAccessoryServerIP *)self setPairVerifyCompletionBlock:&v10];
    [(HAPAccessoryServerIP *)self _establishSecureSession:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = v7;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke_2;
  v28[3] = &unk_2786D6E88;
  v28[4] = WeakRetained;
  v31 = v8;
  v29 = *(a1 + 40);
  v9 = v3;
  v30 = v9;
  __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke_2(v28);
  if (!v9)
  {
    v15 = [WeakRetained httpClient];
    v16 = [v15 peerSocketInfo];

    v17 = objc_autoreleasePoolPush();
    v18 = WeakRetained;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v16 ipAddressStringWithScope];
      v22 = [v16 port];
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Completed pair-verify and caching socket info: %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [v18 setCachedSocketInfo:v16];
    [v18 _getAttributeDatabase];
    [v18 resetPairVerifyFailureCount];
    if ([v18 authMethod] == 2 && objc_msgSend(v18, "isPostSoftAuthWacStarted"))
    {
      v23 = [v18 token];
      [v18 provisionToken:v23];
    }

    v24 = [v18 identifier];
    [v18 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v24];

    goto LABEL_13;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = WeakRetained;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v13;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to complete pair-verify - error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [v11 _incrementPairVerifyFailureCount];
  [v11 _clearIPCacheOnError:v9];
  if (![v11 shouldRetryPVDueToAuthenticationError:v9])
  {
    [v11 _notifyDelegatesPairingStopped:v9];
LABEL_13:
    [WeakRetained setEstablishingSecureConnection:0];
    goto LABEL_14;
  }

  v14 = [v11 clientQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke_160;
  v26[3] = &unk_2786D7050;
  v26[4] = v11;
  v27 = *(a1 + 40);
  dispatch_async(v14, v26);

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

void __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
    v2 = v4;
  }
}

- (void)discoverAccessories
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServerIP *)self hasBonjourDeviceInfo])
  {
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__HAPAccessoryServerIP_discoverAccessories__block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(clientQueue, block);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Waiting for Bonjour to discoverAccessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPAccessoryServerIP *)selfCopy setBonjourDiscoveryPending:1];
    [(HAPAccessoryServerIP *)selfCopy _notifyDelegateOfPairingProgress:8];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __43__HAPAccessoryServerIP_discoverAccessories__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isSessionEstablished];
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [v3 hasAttributeDatabase];
    if (result)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to discover accessories because the session is already established, calling delegate immediately", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      result = [*(a1 + 32) _notifyDelegateOfDiscoveryCompletionWithError:0];
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return [v3 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.discoverAccessories"];
  }

  return result;
}

- (void)_clearIPCacheOnError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  userInfo = [errorCopy userInfo];
  v7 = [userInfo hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  if (v7)
  {
    domain = [v7 domain];
    v9 = [domain isEqual:*MEMORY[0x277CCA590]];

    if (v9)
    {
      code = [v7 code];
      if ((code - 54) <= 0xB && ((1 << (code - 54)) & 0x881) != 0)
      {
        v12 = code;
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v18 = 138543618;
          v19 = v16;
          v20 = 2048;
          v21 = v12;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Clearing IP cache due to error %ld", &v18, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        [(HAPAccessoryServerIP *)selfCopy setCachedSocketInfo:0];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateCacheForDevice:(id)device socketInfo:(id)info bonjour:(id)bonjour
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  infoCopy = info;
  bonjourCopy = bonjour;
  v11 = bonjourCopy;
  if (!deviceCopy)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v20;
      v21 = "%{public}@Cannot save cache for nil deviceID";
      v22 = v19;
      v23 = 12;
LABEL_12:
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, v21, &v26, v23);
    }

LABEL_13:

    objc_autoreleasePoolPop(v17);
    goto LABEL_14;
  }

  if (!infoCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browser);
    [WeakRetained updateCacheForDeviceID:deviceCopy ipData:0];

    goto LABEL_14;
  }

  if (!bonjourCopy)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = infoCopy;
      v21 = "%{public}@Request to save cache with nil bonjour info ignored %@";
      v22 = v19;
      v23 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [HAPAccessoryServerIPCacheData alloc];
  dictionaryRepresentation = [infoCopy dictionaryRepresentation];
  v14 = [v11 copy];
  v15 = [(HAPAccessoryServerIPCacheData *)v12 initWithCachedIp:dictionaryRepresentation bonjourRecord:v14];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_browser);
    [v16 updateCacheForDeviceID:deviceCopy ipData:v15];
  }

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)setCachedSocketInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  if (infoCopy)
  {
    if ([(HAPSocketInfo *)self->_cachedSocketInfo isEqual:infoCopy])
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_7;
    }

    v7 = self->_cachedSocketInfo;
  }

  else
  {
    v7 = 0;
  }

  v6 = 1;
LABEL_7:
  objc_storeStrong(&self->_cachedSocketInfo, info);
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [(HAPSocketInfo *)v7 shortDescription];
      shortDescription2 = [infoCopy shortDescription];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = shortDescription;
      v23 = 2112;
      v24 = shortDescription2;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@cached socket updated from %@ to %@", &v19, 0x20u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v8);
    goto LABEL_12;
  }

  if (!infoCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@cleared socket info", &v19, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_12:
  if (v6)
  {
    deviceID = [(HAPAccessoryServer *)self deviceID];
    deviceIDString = [deviceID deviceIDString];
    [(HAPAccessoryServerIP *)self _updateCacheForDevice:deviceIDString socketInfo:infoCopy bonjour:self->_bonjourDeviceInfo];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HAPSocketInfo)currentSocketInfo
{
  httpClient = [(HAPAccessoryServerIP *)self httpClient];
  peerSocketInfo = [httpClient peerSocketInfo];

  return peerSocketInfo;
}

- (NSString)peerEndpointDescription
{
  httpClient = [(HAPAccessoryServerIP *)self httpClient];
  peerEndpointDescription = [httpClient peerEndpointDescription];

  return peerEndpointDescription;
}

- (HMFNetAddress)peerAddressEx
{
  httpClient = [(HAPAccessoryServerIP *)self httpClient];
  peerAddressEx = [httpClient peerAddressEx];

  return peerAddressEx;
}

- (HMFNetAddress)peerAddress
{
  v14 = *MEMORY[0x277D85DE8];
  httpClient = [(HAPAccessoryServerIP *)self httpClient];

  if (httpClient)
  {
    httpClient2 = [(HAPAccessoryServerIP *)self httpClient];
    peerAddress = [httpClient2 peerAddress];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get peer address -- httpClient is nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    peerAddress = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return peerAddress;
}

- (id)primaryAccessory
{
  os_unfair_lock_lock_with_options();
  primaryAccessoryForServer = self->_primaryAccessoryForServer;
  if (!primaryAccessoryForServer)
  {
    v4 = [HAPAccessory alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v6 = [(HAPAccessory *)v4 initWithServer:self instanceID:v5];
    v7 = self->_primaryAccessoryForServer;
    self->_primaryAccessoryForServer = v6;

    [(HAPAccessory *)self->_primaryAccessoryForServer setName:self->super._name];
    [(HAPAccessory *)self->_primaryAccessoryForServer setIdentifier:self->super._identifier];
    [(HAPAccessory *)self->_primaryAccessoryForServer setPrimary:1];
    [(HAPAccessory *)self->_primaryAccessoryForServer setServerIdentifier:self->super._identifier];
    primaryAccessoryForServer = self->_primaryAccessoryForServer;
  }

  v8 = primaryAccessoryForServer;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)services
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_ipServices copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)createKeysForDataStreamWithKeySalt:(id)salt completionHandler:(id)handler
{
  saltCopy = salt;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HAPAccessoryServerIP_createKeysForDataStreamWithKeySalt_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  v12 = saltCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = saltCopy;
  v10 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __77__HAPAccessoryServerIP_createKeysForDataStreamWithKeySalt_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 344))
  {
    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    v2 = PairingSessionDeriveKey();
    if (v2 || (v3 = *(*(a1 + 32) + 344), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), v2 = PairingSessionDeriveKey(), v2))
    {
      v4 = 0;
    }

    else
    {
      v11 = [HAPSecuritySessionEncryption alloc];
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:32];
      v4 = [(HAPSecuritySessionEncryption *)v11 initWithInputKey:v12 outputKey:v13];

      v2 = 0;
    }

    v5 = HMErrorFromOSStatus(v2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Attempting to create HDS keys without an active session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Attempting to create HDS keys without an active session" reason:@"HAPAccessoryServerIP._pairingSession nil during createKeysForDataStream" suggestion:0 underlyingError:0 marker:108];
    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pairSetupStartSoftAuthWAC
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerIP_pairSetupStartSoftAuthWAC__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __49__HAPAccessoryServerIP_pairSetupStartSoftAuthWAC__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasStartedPairing:1];
  [*(a1 + 32) setPreSoftAuthWacStarted:0];
  [*(a1 + 32) setPostSoftAuthWacStarted:1];
  result = [*(a1 + 32) isWacAccessory];
  if (result)
  {
    result = [*(a1 + 32) isWacComplete];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) _tearDownSession];
      v3 = *(a1 + 32);

      return [v3 _pairSetupContinueWAC];
    }
  }

  return result;
}

- (void)_tearDownWAC
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v6;
    v15 = 1024;
    isWacComplete = [(HAPAccessoryServerIP *)selfCopy isWacComplete];
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@tearDownWAC - wacComplete: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HAPAccessoryServerIP *)selfCopy isWacStarted]&& ![(HAPAccessoryServerIP *)selfCopy isWacComplete]|| [(HAPAccessoryServerIP *)selfCopy isPreSoftAuthWacStarted]|| [(HAPAccessoryServerIP *)selfCopy isPostSoftAuthWacStarted])
  {
    hapWACAccessoryClient = [(HAPAccessoryServerIP *)selfCopy hapWACAccessoryClient];
    [hapWACAccessoryClient stopEasyConfig];

    [(HAPAccessoryServerIP *)selfCopy _notifyDelegateOfPairingProgress:3];
    hapWACAccessoryClient2 = [(HAPAccessoryServerIP *)selfCopy hapWACAccessoryClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__HAPAccessoryServerIP__tearDownWAC__block_invoke;
    v12[3] = &unk_2786D6CF0;
    v12[4] = selfCopy;
    v9 = [hapWACAccessoryClient2 restoreNetworkWithCompletion:v12];
  }

  else
  {
    pairOperation = [(HAPAccessoryServerIP *)selfCopy pairOperation];
    [pairOperation finish];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __36__HAPAccessoryServerIP__tearDownWAC__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _notifyDelegateOfPairingProgress:4];
  }

  return result;
}

- (void)_continuePairingAfterWAC:(id)c
{
  cCopy = c;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = cCopy;
  v6 = cCopy;
  dispatch_async(clientQueue, v7);
}

void __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v41 = v5;
    v42 = 2114;
    v43 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Continue pairing after WAC with error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_127;
  v39[3] = &unk_2786D6CF0;
  v39[4] = *(a1 + 32);
  v7 = MEMORY[0x231885210](v39);
  [*(a1 + 32) setWacComplete:1];
  v8 = [*(a1 + 32) pairOperation];
  [v8 finish];

  v9 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v9 setWacComplete:0];
    v7[2](v7, *(a1 + 40));
    [*(a1 + 32) _notifyDelegatesPairingStopped:*(a1 + 40)];
    goto LABEL_21;
  }

  v10 = [v9 hapWACAccessory];
  v11 = [v10 supportsWAC2];

  v12 = *(a1 + 32);
  if (v11)
  {
    v13 = [v12 keyStore];
    v14 = [*(a1 + 32) identifier];
    v38 = 0;
    [v13 registerAccessoryWithHomeKit:v14 error:&v38];
    v15 = v38;

    if (v15)
    {
      (v7)[2](v7, v15);
    }

    else
    {
      [*(a1 + 32) setHasPairings:1];
    }

    [*(a1 + 32) _notifyDelegatesPairingStopped:v15];
LABEL_20:

    goto LABEL_21;
  }

  v16 = [v12 hasBonjourDeviceInfo];
  v17 = *(a1 + 32);
  if (v16)
  {
    if ([v17 isContinuingLegacyWACpairing])
    {
      goto LABEL_21;
    }

    v18 = [*(a1 + 32) hasPairings];
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) bonjourDeviceInfo];
        *buf = 138543618;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@already has pairings after legacy WAC completion - aborting pairing operation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v15 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:11];
      (v7)[2](v7, v15);
      [*(a1 + 32) _notifyDelegatesOfAddAccessoryFailureWithError:v15];
      goto LABEL_20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v36;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@continuing Legacy WAC", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 32) setContinuingLegacyWACpairing:1];
    [*(a1 + 32) _pairSetupStartWithConsentRequired:1];
  }

  else
  {
    v25 = [v17 bonjourEventTimer];

    if (!v25)
    {
      [*(a1 + 32) _notifyDelegateOfPairingProgress:8];
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v29;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%{public}@Starting a timer to wait for Bonjour event after legacy WAC completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_132;
      v37[3] = &unk_2786D6CA0;
      v37[4] = *(a1 + 32);
      __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_132(v37);
      v30 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
      [*(a1 + 32) setBonjourEventTimer:v30];

      v31 = [*(a1 + 32) bonjourEventTimer];
      [v31 setDelegate:*(a1 + 32)];

      v32 = [*(a1 + 32) bonjourEventTimer];
      v33 = [*(a1 + 32) clientQueue];
      [v32 setDelegateQueue:v33];

      v34 = [*(a1 + 32) bonjourEventTimer];
      [v34 resume];
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
}

void __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_127(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_2;
    v5[3] = &unk_2786D7050;
    v5[4] = *(a1 + 32);
    v6 = v3;
    __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_2(v5);
  }
}

void __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) hapWACAccessory];
    v4 = HAPAuthFeaturesToString([v3 authFeatures]);

    v2 = v5;
  }
}

void __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

- (int)_continuePairingWithSetupCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2080;
    v16 = "[HAPAccessoryServerIP _continuePairingWithSetupCode:]";
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@%s", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  hapWACAccessoryClient = [(HAPAccessoryServerIP *)selfCopy hapWACAccessoryClient];
  v10 = [hapWACAccessoryClient continuePairingWithSetupCode:codeCopy];

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_continuePairingUsingWAC
{
  v23 = *MEMORY[0x277D85DE8];
  isWacStarted = [(HAPAccessoryServerIP *)self isWacStarted];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (!isWacStarted)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Continuing WAC Pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPAccessoryServerIP *)selfCopy setWacStarted:1];
    hapWACAccessory = [(HAPAccessoryServerIP *)selfCopy hapWACAccessory];
    supportsLegacyWAC = [hapWACAccessory supportsLegacyWAC];

    if (supportsLegacyWAC)
    {
      [(HAPAccessoryServerIP *)selfCopy _notifyDelegateOfPairingProgress:6];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke;
      v20[3] = &unk_2786D6CF0;
      v20[4] = selfCopy;
      v12 = v20;
      v13 = selfCopy;
      v14 = 0;
    }

    else
    {
      if ([(HAPAccessoryServerIP *)selfCopy isPostSoftAuthWacStarted])
      {
        [(HAPAccessoryServerIP *)selfCopy _notifyDelegateOfPairingProgress:0];
        hapWACAccessoryClient = [(HAPAccessoryServerIP *)selfCopy hapWACAccessoryClient];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_120;
        v19[3] = &unk_2786D6CF0;
        v19[4] = selfCopy;
        v16 = [hapWACAccessoryClient joinAccessoryNetworkWithCompletion:v19];

        goto LABEL_13;
      }

      [(HAPAccessoryServerIP *)selfCopy _notifyDelegateOfPairingProgress:6];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2_125;
      v18[3] = &unk_2786D6CF0;
      v18[4] = selfCopy;
      v14 = _WACPairSetupPromptForSetupCodeDelegateCallback_f;
      v12 = v18;
      v13 = selfCopy;
    }

    [(HAPAccessoryServerIP *)v13 _performEasyConfigWithPairingPrompt:v14 performPairSetup:1 isSplit:0 completion:v12];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@WAC already started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy Config completed error: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2;
  v7[3] = &unk_2786D7050;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2_125(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy Config & Pair-Setup completed error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_126;
  v11[3] = &unk_2786D7050;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v9 = v3;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying to join accessory network due to error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = [*(a1 + 40) hapWACAccessoryClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_121;
    v12[3] = &unk_2786D6CF0;
    v12[4] = *(a1 + 40);
    v8 = [v7 joinAccessoryNetworkWithCompletion:v12];
  }

  else
  {
    [*(a1 + 40) _notifyDelegateOfPairingProgress:1];
    [*(a1 + 40) _notifyDelegateOfPairingProgress:6];
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_123;
    v11[3] = &unk_2786D6CF0;
    v11[4] = v9;
    [v9 _performEasyConfigWithPairingPrompt:_WACPairSetupPromptForSetupCodeDelegateCallback_f performPairSetup:1 isSplit:1 completion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2_122;
  v7[3] = &unk_2786D7050;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_123(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy Config & Pair-Setup completed error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_124;
  v11[3] = &unk_2786D7050;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v9 = v3;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2_122(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    return [v2 _continuePairingAfterConfirmingSecureWAC:?];
  }

  else
  {
    [v2 _notifyDelegateOfPairingProgress:1];
    [*(a1 + 40) _notifyDelegateOfPairingProgress:6];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_3;
    v6[3] = &unk_2786D6CF0;
    v6[4] = v5;
    return [v5 _performEasyConfigWithPairingPrompt:_WACPairSetupPromptForSetupCodeDelegateCallback_f performPairSetup:1 isSplit:1 completion:v6];
  }
}

void __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy Config & Pair-Setup completed error: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _continuePairingAfterConfirmingSecureWAC:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __96__HAPAccessoryServerIP__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setBonjourDeviceInfo:0];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Bonjour reset after Easy Config completed with error: %{public}@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)continuePairingUsingWAC
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HAPAccessoryServerIP_continuePairingUsingWAC__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_continuePairingAfterConfirmingSecureWAC:(id)c
{
  v22 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = cCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Continue pairing after confirming secure WAC with error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (cCopy)
  {
    [(HAPAccessoryServerIP *)selfCopy _continuePairingAfterWAC:cCopy];
  }

  else if ([(HAPAccessoryServerIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
  {
    v9 = [HAPAccessoryInfo alloc];
    name = [(HAPAccessoryServer *)selfCopy name];
    category = [(HAPAccessoryServer *)selfCopy category];
    v12 = [(HAPAccessoryInfo *)v9 initWithName:name manufacturer:0 modelName:0 category:category certificationStatus:0 denylisted:0 ppid:0];

    delegateQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerIP__continuePairingAfterConfirmingSecureWAC___block_invoke;
    block[3] = &unk_2786D7050;
    block[4] = selfCopy;
    v17 = v12;
    v14 = v12;
    dispatch_async(delegateQueue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HAPAccessoryServerIP__continuePairingAfterConfirmingSecureWAC___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:5 accessoryInfo:*(a1 + 40) error:0];
}

- (void)_pairVerifyStartWAC:(id)c
{
  v19 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    hapWACAccessory = [(HAPAccessoryServerIP *)selfCopy hapWACAccessory];
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = hapWACAccessory;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to start reprovisioning: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerIP *)selfCopy setWacComplete:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HAPAccessoryServerIP__pairVerifyStartWAC___block_invoke;
  v13[3] = &unk_2786D6A98;
  v13[4] = selfCopy;
  v14 = cCopy;
  v10 = cCopy;
  v11 = [(HAPAccessoryServerIP *)selfCopy _joinAccessoryNetworkWithCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __44__HAPAccessoryServerIP__pairVerifyStartWAC___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Joined accessory network for re-WAC with join error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  if (v3)
  {
    [v8 setWacComplete:1];
    v9 = [*(a1 + 32) browser];
    v10 = [*(a1 + 32) identifier];
    [v9 notifyDelegatesOfWACCompletionWithIdentifier:v10 error:v3];
  }

  else
  {
    v9 = [v8 hapWACAccessoryClient];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__HAPAccessoryServerIP__pairVerifyStartWAC___block_invoke_119;
    v14[3] = &unk_2786D6CF0;
    v11 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v12 = [v9 performEasyConfigWithParingPrompt:0 performPairSetup:0 isSplit:0 pairingRequest:v11 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __44__HAPAccessoryServerIP__pairVerifyStartWAC___block_invoke_119(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setWacComplete:1];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy config with pair-verify finished with error: %{public}@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) browser];
  v9 = [*(a1 + 32) identifier];
  [v8 notifyDelegatesOfWACCompletionWithIdentifier:v9 error:v3];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_pairSetupContinueWAC
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D0F780];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke;
  v10 = &unk_2786D6FC8;
  objc_copyWeak(&v11, &location);
  v4 = [v3 blockOperationWithBlock:&v7];
  [(HAPAccessoryServerIP *)self setPairOperation:v4, v7, v8, v9, v10];

  v5 = +[HAPAccessoryServerIP sharedPairOperationQueue];
  pairOperation = [(HAPAccessoryServerIP *)self pairOperation];
  [v5 addOperation:pairOperation];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke_2;
    block[3] = &unk_2786D6CA0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pairOperation];
  v3 = [v2 isCancelled];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapWACAccessory];
      *buf = 138543618;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@cancel pairing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [*(a1 + 32) pairOperation];
    [(HAPAccessoryInfo *)v9 finish];
    goto LABEL_5;
  }

  if (![*(a1 + 32) isWacLegacy])
  {
    if ([*(a1 + 32) isWacAccessory])
    {
      v19 = [*(a1 + 32) hapWACAccessory];
      if ([v19 supportsTokenAuth])
      {

LABEL_16:
        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 32);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v25;
          _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Starting WAC Software Auth Split Pair-Setup", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        goto LABEL_19;
      }

      v20 = [*(a1 + 32) hapWACAccessory];
      v21 = [v20 supportsCertAuth];

      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    [*(a1 + 32) _continuePairingUsingWAC];
    goto LABEL_20;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v13;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Legacy WAC, prompting user to request permission to provide credentials...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if (![*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
  {
    [*(a1 + 32) _notifyDelegatesOfAddAccessoryFailureWithError:0];
    goto LABEL_20;
  }

  v14 = [HAPAccessoryInfo alloc];
  v15 = [*(a1 + 32) name];
  v16 = [*(a1 + 32) category];
  v17 = [(HAPAccessoryInfo *)v14 initWithName:v15 manufacturer:0 modelName:0 category:v16 certificationStatus:0 denylisted:0 ppid:0];

  v18 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke_117;
  block[3] = &unk_2786D7050;
  block[4] = *(a1 + 32);
  v28 = v17;
  v9 = v17;
  dispatch_async(v18, block);

LABEL_5:
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
}

void __45__HAPAccessoryServerIP__pairSetupContinueWAC__block_invoke_117(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:1 accessoryInfo:*(a1 + 40) error:0];
}

- (id)_joinAccessoryNetworkWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  browser = [(HAPAccessoryServerIP *)self browser];
  visible2Pt4Networks = [browser visible2Pt4Networks];

  browser2 = [(HAPAccessoryServerIP *)self browser];
  [browser2 stopDiscoveringWACAccessoryServersWithInvalidation:0];

  v8 = [HAPWACAccessoryClient alloc];
  hapWACAccessory = [(HAPAccessoryServerIP *)self hapWACAccessory];
  browser3 = [(HAPAccessoryServerIP *)self browser];
  wacBrowser = [browser3 wacBrowser];
  v12 = [(HAPWACAccessoryClient *)v8 initWithWACAccessory:hapWACAccessory server:self browser:wacBrowser compatible2Pt4Networks:visible2Pt4Networks];
  [(HAPAccessoryServerIP *)self setHapWACAccessoryClient:v12];

  hapWACAccessoryClient = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];

  if (hapWACAccessoryClient)
  {
    hapWACAccessoryClient2 = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];
    [hapWACAccessoryClient2 registerClientDelegate:self];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Join accessory network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    hapWACAccessoryClient3 = [(HAPAccessoryServerIP *)selfCopy hapWACAccessoryClient];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __60__HAPAccessoryServerIP__joinAccessoryNetworkWithCompletion___block_invoke;
    v28[3] = &unk_2786D6790;
    v28[4] = selfCopy;
    v29 = completionCopy;
    v20 = [hapWACAccessoryClient3 joinAccessoryNetworkWithCompletion:v28];

    v21 = 0;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Error Allocating HAPWACAccessoryClient", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Error Allocating HAPWACAccessoryClient" reason:@"HAPAccessoryServerIP.hapWACAccessoryClient is null after _joinAccessoryNetworkWithCompletion" suggestion:0 underlyingError:0 marker:106];
    (*(completionCopy + 2))(completionCopy, v21);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

void __60__HAPAccessoryServerIP__joinAccessoryNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setBonjourDeviceInfo:0];
  (*(*(a1 + 40) + 16))();
}

- (void)_invalidateWAC
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@invalidateWAC", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  pairOperation = [(HAPAccessoryServerIP *)selfCopy pairOperation];
  [pairOperation finish];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startReprovisioningWithPairingRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAPAccessoryServerIP_startReprovisioningWithPairingRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(clientQueue, v7);
}

- (void)setPostSoftAuthWacStarted:(BOOL)started
{
  os_unfair_lock_lock_with_options();
  self->_postSoftAuthWacStarted = started;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPostSoftAuthWacStarted
{
  os_unfair_lock_lock_with_options();
  postSoftAuthWacStarted = self->_postSoftAuthWacStarted;
  os_unfair_lock_unlock(&self->_lock);
  return postSoftAuthWacStarted;
}

- (void)setPreSoftAuthWacStarted:(BOOL)started
{
  os_unfair_lock_lock_with_options();
  self->_preSoftAuthWacStarted = started;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPreSoftAuthWacStarted
{
  os_unfair_lock_lock_with_options();
  preSoftAuthWacStarted = self->_preSoftAuthWacStarted;
  os_unfair_lock_unlock(&self->_lock);
  return preSoftAuthWacStarted;
}

- (void)setWacLegacy:(BOOL)legacy
{
  os_unfair_lock_lock_with_options();
  self->_wacLegacy = legacy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isWacLegacy
{
  os_unfair_lock_lock_with_options();
  wacLegacy = self->_wacLegacy;
  os_unfair_lock_unlock(&self->_lock);
  return wacLegacy;
}

- (BOOL)isWacNeeded
{
  os_unfair_lock_lock_with_options();
  v3 = 0;
  if (self->_wacAccessory)
  {
    v3 = !self->_wacComplete;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setWacComplete:(BOOL)complete
{
  os_unfair_lock_lock_with_options();
  self->_wacComplete = complete;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isWacComplete
{
  os_unfair_lock_lock_with_options();
  wacComplete = self->_wacComplete;
  os_unfair_lock_unlock(&self->_lock);
  return wacComplete;
}

- (void)setWacAccessory:(BOOL)accessory
{
  os_unfair_lock_lock_with_options();
  self->_wacAccessory = accessory;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isWacAccessory
{
  os_unfair_lock_lock_with_options();
  wacAccessory = self->_wacAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return wacAccessory;
}

- (BOOL)isPaired
{
  browser = [(HAPAccessoryServerIP *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v5 = [browser isPaired:identifier];

  return v5;
}

- (HAPWACAccessory)hapWACAccessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hapWACAccessory;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateWithHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  name = [accessoryCopy name];
  name = self->super._name;
  self->super._name = name;

  deviceId = [accessoryCopy deviceId];
  identifier = self->super._identifier;
  self->super._identifier = deviceId;

  self->_wacAccessory = 1;
  self->_wacComplete = 0;
  objc_storeStrong(&self->_hapWACAccessory, accessory);
  os_unfair_lock_unlock(&self->_lock);
  -[HAPAccessoryServerIP setWacLegacy:](self, "setWacLegacy:", [accessoryCopy pairSetupWAC] ^ 1);
  setupHash = [accessoryCopy setupHash];
  [(HAPAccessoryServer *)self setSetupHash:setupHash];

  wacCategory = [accessoryCopy wacCategory];
  [(HAPAccessoryServer *)self setCategory:wacCategory];

  [(HAPAccessoryServerIP *)self setBonjourDeviceInfo:0];
}

- (HAPAccessoryServerIP)initWithHAPWACAccessory:(id)accessory keystore:(id)keystore browser:(id)browser
{
  accessoryCopy = accessory;
  v9 = [(HAPAccessoryServerIP *)self initWithKeyStore:keystore browser:browser discoveryMethod:3];
  v10 = v9;
  if (v9)
  {
    [(HAPAccessoryServerIP *)v9 updateWithHAPWACAccessory:accessoryCopy];
  }

  return v10;
}

- (double)remainingTTLForExpiry:(id)expiry
{
  [expiry doubleValue];
  v4 = v3;
  HMFUptime();
  return v4 - v5;
}

- (void)_updateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  v79 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  socketInfoCopy = socketInfo;
  if (socketInfoCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  discoveryBookkeeping = [(HAPAccessoryServerIP *)self discoveryBookkeeping];
  [discoveryBookkeeping setLastDiscoveryMethod:v8];

  v52 = infoCopy;
  [(HAPAccessoryServerIP *)self setBonjourDeviceInfo:infoCopy];
  [(HAPAccessoryServerIP *)self setHasUpdatedBonjour:1];
  configNumber = [(HAPAccessoryServer *)self configNumber];
  wakeNumber = [(HAPAccessoryServer *)self wakeNumber];
  stateNumber = [(HAPAccessoryServer *)self stateNumber];
  isBonjourDiscoveryPending = [(HAPAccessoryServerIP *)self isBonjourDiscoveryPending];
  [(HAPAccessoryServerIP *)self setInvalidated:0];
  [(HAPAccessoryServerIP *)self setBonjourDiscoveryPending:0];
  _parseAndValidateTXTRecord = [(HAPAccessoryServerIP *)self _parseAndValidateTXTRecord];
  isPaired = [(HAPAccessoryServerIP *)self isPaired];
  v14 = isPaired;
  v55 = socketInfoCopy;
  if (socketInfoCopy && isPaired)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v18 = wakeNumber;
      v20 = v19 = _parseAndValidateTXTRecord;
      *buf = 138543362;
      v62 = v20;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Saving socket info", buf, 0xCu);

      _parseAndValidateTXTRecord = v19;
      wakeNumber = v18;
    }

    objc_autoreleasePoolPop(v15);
    [(HAPAccessoryServerIP *)selfCopy setCachedSocketInfo:socketInfoCopy];
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = HMFGetLogIdentifier();
    v25 = wakeNumber;
    v26 = _parseAndValidateTXTRecord;
    configNumber2 = [(HAPAccessoryServer *)selfCopy2 configNumber];
    wakeNumber2 = [(HAPAccessoryServer *)selfCopy2 wakeNumber];
    stateNumber2 = [(HAPAccessoryServer *)selfCopy2 stateNumber];
    *buf = 138545410;
    v30 = @"NO";
    v62 = v24;
    if (v14)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    if (isBonjourDiscoveryPending)
    {
      v30 = @"YES";
    }

    v63 = 2048;
    v64 = configNumber;
    v65 = 2048;
    v66 = configNumber2;
    _parseAndValidateTXTRecord = v26;
    wakeNumber = v25;
    v67 = 2048;
    v68 = v25;
    v69 = 2048;
    v70 = wakeNumber2;
    v71 = 2048;
    v72 = stateNumber;
    v73 = 2048;
    v74 = stateNumber2;
    v75 = 2114;
    v76 = v31;
    v77 = 2114;
    v78 = v30;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Parsing record: C# old/new %tu/%tu, W# old/new %tu/%tu, S# old/new %tu/%tu Paired: %{public}@, Discovery Pending: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v21);
  if (stateNumber != [(HAPAccessoryServer *)selfCopy2 stateNumber]&& [(HAPAccessoryServer *)selfCopy2 stateNumber]!= 1)
  {
    [(HAPAccessoryServerIP *)selfCopy2 _submitStateNumberChangeEvent:1];
  }

  v32 = configNumber != [(HAPAccessoryServer *)selfCopy2 configNumber];
  stateNumber3 = [(HAPAccessoryServer *)selfCopy2 stateNumber];
  v34 = stateNumber == stateNumber3;
  v35 = stateNumber != stateNumber3;
  v36 = !v34 || v32;
  v37 = _parseAndValidateTXTRecord && v14 && ((v36 | isBonjourDiscoveryPending) & 1) != 0 && [(HAPAccessoryServerIP *)selfCopy2 _shouldConnectBasedOnDisconnectOnIdle]|| [(HAPAccessoryServerIP *)selfCopy2 abruptDisconnectionCounter]== 1;
  [(HAPAccessoryServerIP *)selfCopy2 setIsSeenOnBonjour:1];
  v38 = wakeNumber != [(HAPAccessoryServer *)selfCopy2 wakeNumber];
  if ([(HAPAccessoryServer *)selfCopy2 wakeNumber])
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy2;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v42;
      v43 = "%{public}@skip connecting because accessory is suspended";
      v44 = v41;
      v45 = OS_LOG_TYPE_DEBUG;
LABEL_30:
      _os_log_impl(&dword_22AADC000, v44, v45, v43, buf, 0xCu);
    }
  }

  else
  {
    if (wakeNumber)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy2;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v49;
        _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%{public}@connecting because accessory is no longer suspended", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v46);
    }

    else if (!v37)
    {
      goto LABEL_40;
    }

    if (![(HAPAccessoryServerIP *)selfCopy2 isWacAccessory]|| [(HAPAccessoryServerIP *)selfCopy2 isWacComplete])
    {
      clientQueue = [(HAPAccessoryServer *)selfCopy2 clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HAPAccessoryServerIP__updateWithBonjourDeviceInfo_socketInfo___block_invoke;
      block[3] = &unk_2786D6740;
      block[4] = selfCopy2;
      v57 = v32;
      v58 = v35;
      v59 = v38;
      v60 = isBonjourDiscoveryPending;
      dispatch_async(clientQueue, block);

      goto LABEL_40;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy2;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v42;
      v43 = "%{public}@skip update because WAC is in progress";
      v44 = v41;
      v45 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }
  }

  objc_autoreleasePoolPop(v39);
LABEL_40:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HAPAccessoryServerIP__updateWithBonjourDeviceInfo_socketInfo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isSessionEstablished])
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    return [v2 _getAttributeDatabase];
  }

  else
  {
    if (*(a1 + 40))
    {
      v5 = @"bonjourUpdate.configNumberChanged";
    }

    else if (*(a1 + 41))
    {
      v5 = @"bonjourUpdate.stateNumberChanged";
    }

    else if (*(a1 + 42))
    {
      v5 = @"bonjourUpdate.wakeNumberChanged";
    }

    else if (*(a1 + 43))
    {
      v5 = @"bonjourUpdate.pendingBonjourDiscovery";
    }

    else
    {
      v5 = @"requested";
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@establishing secured session due: %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    result = [*(a1 + 32) _establishSecureConnectionAndFetchAttributeDatabaseWithReason:v5];
    v10 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (BOOL)_shouldConnectBasedOnDisconnectOnIdle
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle]&& ([(HAPAccessoryServerIP *)self httpClient], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Recommend deferring update to server until next connection", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  infoCopy = info;
  socketInfoCopy = socketInfo;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = infoCopy;
  v13 = socketInfoCopy;
  v9 = socketInfoCopy;
  v10 = infoCopy;
  dispatch_async(clientQueue, block);
}

void __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke(uint64_t a1)
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateWithBonjourDeviceInfo:*(a1 + 40) socketInfo:*(a1 + 48)];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke_2;
  v28[3] = &unk_2786D6CF0;
  v28[4] = *(a1 + 32);
  v2 = MEMORY[0x231885210](v28);
  if (![*(a1 + 32) isWacAccessory] || !objc_msgSend(*(a1 + 32), "isWacLegacy"))
  {
    if (![*(a1 + 32) isPairingRequestPending])
    {
      goto LABEL_20;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Pairing request pending", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [*(a1 + 32) setPairingRequestPending:0];
    v2[2](v2, 0);
    v25 = *(a1 + 32);
    v26 = 0;
    goto LABEL_19;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = ([*(a1 + 32) statusFlags] & 1) == 0;
    v8 = [*(a1 + 32) isContinuingLegacyWACpairing];
    *buf = 138543874;
    v30 = v6;
    v31 = 1024;
    *v32 = v7;
    v32[2] = 1024;
    *&v32[3] = v8;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Legacy WAC accessory Bonjour event - hasPairings %d  continuingLegacyPairing: %d", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) setWacComplete:1];
  if ([*(a1 + 32) hasStartedPairing] && (objc_msgSend(*(a1 + 32), "isContinuingLegacyWACpairing") & 1) == 0)
  {
    v9 = [*(a1 + 32) bonjourEventTimer];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v13;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Received Bonjour event - canceling timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v2[2](v2, 0);
      v14 = [*(a1 + 32) bonjourEventTimer];
      [v14 cancel];

      [*(a1 + 32) setBonjourEventTimer:0];
    }

    if (([*(a1 + 32) statusFlags] & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) bonjourDeviceInfo];
        *buf = 138543618;
        v30 = v18;
        v31 = 2112;
        *v32 = v19;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@has pairings after legacy WAC completion - aborting pairing operation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:11];
      (v2)[2](v2, v20);
      [*(a1 + 32) _notifyDelegatesOfAddAccessoryFailureWithError:v20];

      goto LABEL_20;
    }

    [*(a1 + 32) setContinuingLegacyWACpairing:1];
    v25 = *(a1 + 32);
    v26 = 1;
LABEL_19:
    [v25 _pairSetupStartWithConsentRequired:v26];
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
}

void __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke_3;
  v5[3] = &unk_2786D7050;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke_3(v5);
}

void __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v8 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    [*(a1 + 32) isWacAccessory];
    v3 = HMFBooleanToString();
    [*(a1 + 32) isWacComplete];
    v4 = HMFBooleanToString();
    [*(a1 + 32) isWacLegacy];
    v5 = HMFBooleanToString();
    v6 = [*(a1 + 32) hapWACAccessory];
    v7 = HAPAuthFeaturesToString([v6 authFeatures]);

    v2 = v8;
  }
}

- (void)setAbruptDisconnectionCounter:(unint64_t)counter
{
  os_unfair_lock_lock_with_options();
  self->_abruptDisconnectionCounter = counter;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)abruptDisconnectionCounter
{
  os_unfair_lock_lock_with_options();
  abruptDisconnectionCounter = self->_abruptDisconnectionCounter;
  os_unfair_lock_unlock(&self->_lock);
  return abruptDisconnectionCounter;
}

- (BOOL)isBonjourDiscoveryPending
{
  os_unfair_lock_lock_with_options();
  bonjourDiscoveryPending = self->_bonjourDiscoveryPending;
  os_unfair_lock_unlock(&self->_lock);
  return bonjourDiscoveryPending;
}

- (void)setBonjourDiscoveryPending:(BOOL)pending
{
  os_unfair_lock_lock_with_options();
  self->_bonjourDiscoveryPending = pending;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEstablishingSecureConnection:(BOOL)connection
{
  os_unfair_lock_lock_with_options();
  self->_establishingSecureConnection = connection;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEstablishingSecureConnection
{
  os_unfair_lock_lock_with_options();
  establishingSecureConnection = self->_establishingSecureConnection;
  os_unfair_lock_unlock(&self->_lock);
  return establishingSecureConnection;
}

- (BOOL)hasBonjourDeviceInfo
{
  bonjourDeviceInfo = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v3 = bonjourDeviceInfo != 0;

  return v3;
}

- (void)setBonjourDeviceInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  bonjourDeviceInfo = self->_bonjourDeviceInfo;
  self->_bonjourDeviceInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)bonjourDeviceInfo
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_bonjourDeviceInfo copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_notifyDelegateOfDiscoveryCompletionWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if ([(HAPAccessoryServerIP *)self abruptDisconnectionCounter]<= 1)
    {
      [(HAPAccessoryServerIP *)self setAbruptDisconnectionCounter:[(HAPAccessoryServerIP *)self abruptDisconnectionCounter]+ 1];
    }
  }

  else
  {
    [(HAPAccessoryServerIP *)self setAbruptDisconnectionCounter:0];
    [(HAPAccessoryServerIP *)self _startConnectionIdleTimer];
  }

  if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HAPAccessoryServerIP__notifyDelegateOfDiscoveryCompletionWithError___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_async(delegateQueue, v6);
  }
}

void __70__HAPAccessoryServerIP__notifyDelegateOfDiscoveryCompletionWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:*(a1 + 40)];
}

- (void)_notifyDelegateNeedsOwnershipToken
{
  if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerNeedsOwnershipToken_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HAPAccessoryServerIP__notifyDelegateNeedsOwnershipToken__block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __58__HAPAccessoryServerIP__notifyDelegateNeedsOwnershipToken__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerNeedsOwnershipToken:*(a1 + 32)];
}

- (void)_notifyDelegatesOfAddAccessoryFailureWithError:(id)error
{
  v4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:79 reason:0 underlyingError:error];
  [(HAPAccessoryServerIP *)self setWacComplete:0];
  [(HAPAccessoryServerIP *)self setWacStarted:0];
  [(HAPAccessoryServerIP *)self _notifyDelegatesPairingStopped:v4];
}

- (void)_notifyDelegatesOfConnectionState:(BOOL)state withError:(id)error
{
  errorCopy = error;
  if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateConnectionState_linkLayerType_bookkeeping_withError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HAPAccessoryServerIP__notifyDelegatesOfConnectionState_withError___block_invoke;
    block[3] = &unk_2786D5268;
    block[4] = self;
    stateCopy = state;
    v9 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

void __68__HAPAccessoryServerIP__notifyDelegatesOfConnectionState_withError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [v2 discoveryBookkeeping];
  [v5 accessoryServer:v2 didUpdateConnectionState:v3 linkLayerType:1 bookkeeping:v4 withError:*(a1 + 40)];
}

- (void)_notifyDelegatesPairingStopped:(id)stopped
{
  stoppedCopy = stopped;
  [(HAPAccessoryServerIP *)self setWacStarted:0];
  [(HAPAccessoryServerIP *)self setHasStartedPairing:0];
  [(HAPAccessoryServerIP *)self setHandlingInvalidSetupCode:0];
  [(HAPAccessoryServerIP *)self setPreSoftAuthWacStarted:0];
  [(HAPAccessoryServer *)self setPairingRequest:0];
  if ([(HAPAccessoryServerIP *)self isWacAccessory])
  {
    hapWACAccessoryClient = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];
    [hapWACAccessoryClient dumpStatsWithError:stoppedCopy];

    if (!stoppedCopy)
    {
      [(HAPAccessoryServerIP *)self setWacAccessory:0];
    }
  }

  if ([(HAPAccessoryServerIP *)self _shouldNotifyClientsOfPVFailure:stoppedCopy]&& [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__HAPAccessoryServerIP__notifyDelegatesPairingStopped___block_invoke;
    v7[3] = &unk_2786D7050;
    v7[4] = self;
    v8 = stoppedCopy;
    dispatch_async(delegateQueue, v7);
  }
}

void __55__HAPAccessoryServerIP__notifyDelegatesPairingStopped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

- (void)removeActiveSession:(int64_t)session
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HAPAccessoryServerIP_removeActiveSession___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  v6[5] = session;
  dispatch_async(clientQueue, v6);
}

void __44__HAPAccessoryServerIP_removeActiveSession___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 368) &= ~*(a1 + 40);
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HAPStringFromAccessoryServerSession(*(a1 + 40));
    v7 = HAPStringFromAccessoryServerSession(*(*(a1 + 32) + 368));
    v15 = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Removed active session for %@. Current active sessions: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  if (v8[46])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HAPStringFromAccessoryServerSession(*(*(a1 + 32) + 368));
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Not enabling connection idle timer due to active sessions: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    [v8 _startConnectionIdleTimer];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addActiveSession:(int64_t)session
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HAPAccessoryServerIP_addActiveSession___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  v6[5] = session;
  dispatch_async(clientQueue, v6);
}

void *__41__HAPAccessoryServerIP_addActiveSession___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 368) |= *(a1 + 40);
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HAPStringFromAccessoryServerSession(*(a1 + 40));
    v7 = HAPStringFromAccessoryServerSession(*(*(a1 + 32) + 368));
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Added active session for %@. Current active sessions: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = *(a1 + 32);
  if (result[46])
  {
    result = [result _suspendConnectionIdleTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)hapWACAccessoryClient:(id)client wacProgress:(unint64_t)progress
{
  if (progress - 1 > 2)
  {
    v4 = 8;
  }

  else
  {
    v4 = qword_22AC9DB20[progress - 1];
  }

  [(HAPAccessoryServerIP *)self _notifyDelegateOfPairingProgress:v4];
}

- (void)_notifyDelegateOfPairingProgress:(int64_t)progress
{
  delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
  if (delegateQueue)
  {
    v6 = delegateQueue;
    v7 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_updatePairingProgress_];

    if (v7)
    {
      delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__HAPAccessoryServerIP__notifyDelegateOfPairingProgress___block_invoke;
      v9[3] = &unk_2786D63C8;
      v9[4] = self;
      v9[5] = progress;
      dispatch_async(delegateQueue2, v9);
    }
  }
}

void __57__HAPAccessoryServerIP__notifyDelegateOfPairingProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) updatePairingProgress:*(a1 + 40)];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = HAPAccessoryServerIP;
  v4 = [(HMFObject *)&v14 description];
  v5 = [v3 initWithString:v4];

  identifier = [(HAPAccessoryServer *)self identifier];
  [v5 appendFormat:@"    Device ID: %@", identifier];

  model = [(HAPAccessoryServerIP *)self model];
  [v5 appendFormat:@"    Model: %@", model];

  version = [(HAPAccessoryServer *)self version];
  versionString = [version versionString];
  [v5 appendFormat:@"    Protocol Version: %@", versionString];

  sourceVersion = [(HAPAccessoryServerIP *)self sourceVersion];
  [v5 appendFormat:@"    Source Version: %@", sourceVersion];

  [v5 appendFormat:@"    Config Number: %lu", -[HAPAccessoryServer configNumber](self, "configNumber")];
  [v5 appendFormat:@"    Wake Number: %lu", -[HAPAccessoryServer wakeNumber](self, "wakeNumber")];
  [v5 appendFormat:@"    State Number: %lu", -[HAPAccessoryServer stateNumber](self, "stateNumber")];
  category = [(HAPAccessoryServer *)self category];
  [v5 appendFormat:@"    Category: %@", category];

  [v5 appendFormat:@"    Status Flags: 0x%x", -[HAPAccessoryServerIP statusFlags](self, "statusFlags")];
  [v5 appendFormat:@"    Compatibility Features: 0x%x", -[HAPAccessoryServer compatibilityFeatures](self, "compatibilityFeatures")];
  v12 = [v5 copy];

  return v12;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  [(HAPAccessoryServerIP *)self _stopReachabilityTimer];
  [(HAPAccessoryServerIP *)self setConnectionIdleTimer:0];
  clientOperationQueue = self->_clientOperationQueue;
  self->_clientOperationQueue = 0;

  if (self->_httpClient)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@HTTP client not invalidated - invalidating....", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPHTTPClient *)self->_httpClient invalidate];
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  v10.receiver = self;
  v10.super_class = HAPAccessoryServerIP;
  [(HAPAccessoryServerIP *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPAccessoryServerIP_invalidateWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __56__HAPAccessoryServerIP_invalidateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isWacAccessory] && (objc_msgSend(*(a1 + 32), "isWacComplete") & 1) == 0)
  {
    [*(a1 + 32) _invalidateWAC];
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 32) httpClient];
      *buf = 138543618;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Invalidating non WAC server with httpClient: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) _cancelNameResolution];
    v7 = [*(a1 + 32) httpClient];
    [v7 invalidate];

    [*(a1 + 32) setHttpClient:0];
    [*(a1 + 32) setInvalidated:1];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [*(a1 + 32) accessories];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = HMErrorFromHAPErrorCode(32);
          [v13 invalidateWithError:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  [*(a1 + 32) setDelegate:0 queue:0];
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

  result = [*(a1 + 32) incrementHAPIPInvalidationCount];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_reset
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@*** RESET Called", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPAccessoryServerIP *)selfCopy _tearDownSession];
  [(HAPAccessoryServer *)selfCopy setAccessories:0];
  selfCopy->_wacAccessory = 0;
  primaryAccessoryForServer = selfCopy->_primaryAccessoryForServer;
  selfCopy->_primaryAccessoryForServer = 0;

  cachedSocketInfo = selfCopy->_cachedSocketInfo;
  selfCopy->_cachedSocketInfo = 0;

  bonjourDeviceInfo = selfCopy->_bonjourDeviceInfo;
  selfCopy->_bonjourDeviceInfo = 0;

  selfCopy->_statusFlags = 0;
  [(HAPAccessoryServerIP *)selfCopy setCurrentPairVerifyError:0];
  [(HAPAccessoryServerIP *)selfCopy setTriedConnectingToIPv4Address:0];
  [(HAPAccessoryServerIP *)selfCopy setTriedConnectingToIPv6Address:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (HAPAccessoryServerIP)initWithBonjourDeviceInfo:(id)info keyStore:(id)store browser:(id)browser discoveryMethod:(unint64_t)method
{
  infoCopy = info;
  v12 = [(HAPAccessoryServerIP *)self initWithKeyStore:store browser:browser discoveryMethod:method];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bonjourDeviceInfo, info);
    v13->_hasUpdatedBonjour = 1;
    v13->_invalidated = 0;
    v13->_isSeenOnBonjour = 1;
    v14 = [infoCopy objectForKeyedSubscript:@"name"];
    name = v13->super._name;
    v13->super._name = v14;

    if (![(HAPAccessoryServerIP *)v13 _parseAndValidateTXTRecord])
    {

      v13 = 0;
    }
  }

  return v13;
}

- (NSString)sourceVersion
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_sourceVersion copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSourceVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  sourceVersion = self->_sourceVersion;
  self->_sourceVersion = versionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)statusFlags
{
  os_unfair_lock_lock_with_options();
  statusFlags = self->_statusFlags;
  os_unfair_lock_unlock(&self->_lock);
  return statusFlags;
}

- (void)setStatusFlags:(unint64_t)flags
{
  os_unfair_lock_lock_with_options();
  self->_statusFlags = flags;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)model
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_model copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock_with_options();
  model = self->_model;
  self->_model = modelCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPAccessoryServerIP)initWithKeyStore:(id)store browser:(id)browser discoveryMethod:(unint64_t)method
{
  browserCopy = browser;
  v34.receiver = self;
  v34.super_class = HAPAccessoryServerIP;
  v9 = [(HAPAccessoryServer *)&v34 initWithKeystore:store];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_browser, browserCopy);
    v10->_retryingPairSetup = 0;
    array = [MEMORY[0x277CBEB18] array];
    queuedOperations = v10->_queuedOperations;
    v10->_queuedOperations = array;

    v10->_establishingSecureConnection = 0;
    v10->_hasAttributeDatabase = 0;
    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HAPDispatchQueueName(v10, @"clientOperationQueue"];
    [(NSOperationQueue *)v13 setName:v14];

    [(NSOperationQueue *)v13 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13 setQualityOfService:25];
    clientOperationQueue = v10->_clientOperationQueue;
    v10->_clientOperationQueue = v13;
    v16 = v13;

    v17 = [[HAPAuthSession alloc] initWithRole:0 instanceId:0 delegate:v10];
    authSession = v10->_authSession;
    v10->_authSession = v17;

    v10->_authenticated = 0;
    v10->_hasUpdatedBonjour = 0;
    reachabilityEventTimer = v10->_reachabilityEventTimer;
    v10->_reachabilityEventTimer = 0;

    v10->_idleTimerActiveSessions = 0;
    reachabilityStartTime = v10->_reachabilityStartTime;
    v10->_reachabilityStartTime = 0;

    cachedSocketInfo = v10->_cachedSocketInfo;
    v10->_cachedSocketInfo = 0;

    v22 = [[HAPAccessoryServerBookkeeping alloc] initWithDiscoveryMethod:method];
    discoveryBookkeeping = v10->_discoveryBookkeeping;
    v10->_discoveryBookkeeping = v22;

    v10->_currentSocketUpdateType = 2;
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v25 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityMinimumPollTimeout"];
    numberValue = [v25 numberValue];

    [numberValue doubleValue];
    v10->_minimumReachabilityPingInterval = v27;
    mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v29 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"HAPDefaultIPDisconnectOnIdleTimeoutSeconds"];
    numberValue2 = [v29 numberValue];
    [numberValue2 doubleValue];
    v10->_disconnectOnIdleTimeout = v31;

    currentPairVerifyError = v10->_currentPairVerifyError;
    v10->_currentPairVerifyError = 0;

    v10->_triedConnectingToIPv4Address = 0;
    v10->_triedConnectingToIPv6Address = 0;
  }

  return v10;
}

+ (id)_parseSerializedAccessoryDictionary:(id)dictionary server:(id)server
{
  v61 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  serverCopy = server;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"services"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v9 = v7;
        v10 = [(__CFString *)v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v51;
LABEL_6:
          v14 = 0;
          v15 = v12;
          while (1)
          {
            if (*v51 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 = _parseSerializedService(*(*(&v50 + 1) + 8 * v14));

            if (!v12)
            {
              break;
            }

            [v8 addObject:v12];
            ++v14;
            v15 = v12;
            if (v11 == v14)
            {
              v11 = [(__CFString *)v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
              if (v11)
              {
                goto LABEL_6;
              }

              goto LABEL_13;
            }
          }

          v39 = objc_autoreleasePoolPush();
          v40 = serverCopy;
          v41 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v56 = v42;
          _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse serialized service", buf, 0xCu);
        }

        else
        {
LABEL_13:

          v9 = [dictionaryCopy hmf_numberForKey:@"aid"];
          if (v9)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
            v17 = [(__CFString *)v9 isEqualToNumber:v16];

            v18 = objc_autoreleasePoolPush();
            v19 = serverCopy;
            v20 = HMFGetOSLogHandle();
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v17)
            {
              if (v21)
              {
                v22 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v22;
                v57 = 2114;
                v58 = v9;
                _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Creating HAP Accessory with instanceID %{public}@", buf, 0x16u);
              }

              v23 = off_2786D1B98;
            }

            else
            {
              if (v21)
              {
                v44 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v44;
                v57 = 2114;
                v58 = v9;
                _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Creating HAP Bridged Accessory with instanceID %{public}@", buf, 0x16u);
              }

              v23 = off_2786D1C58;
            }

            objc_autoreleasePoolPop(v18);
            v30 = [objc_alloc(*v23) initWithServer:v19 instanceID:v9 parsedServices:v8];
            identifier = [v19 identifier];
            [v30 setIdentifier:identifier];

            identifier2 = [v19 identifier];
            [v30 setServerIdentifier:identifier2];

            goto LABEL_38;
          }

          v39 = objc_autoreleasePoolPush();
          v40 = serverCopy;
          v41 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
LABEL_31:

            objc_autoreleasePoolPop(v39);
            v30 = 0;
LABEL_38:

            goto LABEL_39;
          }

          v42 = HMFGetLogIdentifier();
          [dictionaryCopy objectForKeyedSubscript:@"aid"];
          v43 = v49 = v39;
          *buf = 138543618;
          v56 = v42;
          v57 = 2112;
          v58 = v43;
          _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse accessory's instanceID: %@", buf, 0x16u);

          v39 = v49;
        }

        goto LABEL_31;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = serverCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = objc_opt_class();
        *buf = 138543874;
        v56 = v36;
        v57 = 2114;
        v58 = @"services";
        v59 = 2114;
        v60 = v37;
        v38 = v37;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Expected '%{public}@' to be an array in the accessory object of the attribute database, instead it is a %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = serverCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v34;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@No services found when parsing accessory object in attribute database", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v31);
    v30 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = serverCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = objc_opt_class();
    *buf = 138543618;
    v56 = v27;
    v57 = 2114;
    v58 = v28;
    v29 = v28;
    _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Expected accessory object to be a dictionary in the attribute database, instead it is a %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v30 = 0;
LABEL_40:

  v47 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)sharedPairOperationQueue
{
  if (sharedPairOperationQueue_onceToken != -1)
  {
    dispatch_once(&sharedPairOperationQueue_onceToken, &__block_literal_global_800);
  }

  v3 = sharedPairOperationQueue__sharedQueue;

  return v3;
}

void __48__HAPAccessoryServerIP_sharedPairOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v0 setName:@"com.apple.CoreHAP.pairWACOperationQueue"];
  [v0 setMaxConcurrentOperationCount:1];
  [v0 setQualityOfService:25];
  v1 = sharedPairOperationQueue__sharedQueue;
  sharedPairOperationQueue__sharedQueue = v0;
}

- (void)processPendingBonjourRemoveEvents
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HAPAccessoryServerIP_SessionRestore__processPendingBonjourRemoveEvents__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __73__HAPAccessoryServerIP_SessionRestore__processPendingBonjourRemoveEvents__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) browser];
  v2 = [*(a1 + 32) identifier];
  [v3 processPendingBonjourRemoveEventsForDeviceID:v2];
}

- (id)readAndResetHAPMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v13[4] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v12[0] = &unk_283EA95A8;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPIPInvalidationCount];
  v13[0] = v4;
  v12[1] = &unk_283EA95C0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPIPHTTPRequestsCount];
  v13[1] = v5;
  v12[2] = &unk_283EA95D8;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPIPHTTPResponsesCount];
  v13[2] = v6;
  v12[3] = &unk_283EA95F0;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPIPHTTPEventsCount];
  v13[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  if (metricsCopy)
  {
    self->_metricHAPIPHTTPRequestsCount = 0;
    self->_metricHAPIPHTTPResponsesCount = 0;
    self->_metricHAPIPHTTPEventsCount = 0;
    self->_metricHAPIPInvalidationCount = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)incrementHAPIPHTTPEventsCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPIPHTTPEventsCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementHAPIPHTTPResponsesCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPIPHTTPResponsesCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementHAPIPHTTPRequestsCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPIPHTTPRequestsCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementHAPIPInvalidationCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPIPInvalidationCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_requestResource:(id)resource queue:(id)queue completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  queueCopy = queue;
  handlerCopy = handler;
  _isSessionEstablished = [(HAPAccessoryServerIP *)self _isSessionEstablished];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (_isSessionEstablished)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v16;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Requesting resource", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v17 = MEMORY[0x277CCACA8];
    v43[0] = @"/";
    v43[1] = @"resource";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v19 = [v17 pathWithComponents:v18];

    _ensureHTTPClientSetUp = [(HAPAccessoryServerIP *)selfCopy _ensureHTTPClientSetUp];
    if (_ensureHTTPClientSetUp)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_2_1288;
      v30[3] = &unk_2786D2AF8;
      v31 = handlerCopy;
      v32 = _ensureHTTPClientSetUp;
      dispatch_async(queueCopy, v30);
    }

    else
    {
      objc_initWeak(buf, selfCopy);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1284;
      v33[3] = &unk_2786D2AD0;
      objc_copyWeak(&v36, buf);
      v34 = queueCopy;
      v35 = handlerCopy;
      [(HAPAccessoryServerIP *)selfCopy sendPOSTRequestToURL:v19 request:resourceCopy serializationType:1 completionHandler:v33];

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v21;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing resource request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    objc_initWeak(&location, selfCopy);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke;
    v37[3] = &unk_2786D2AA8;
    objc_copyWeak(&v41, &location);
    v38 = queueCopy;
    v40 = handlerCopy;
    v39 = resourceCopy;
    v22 = MEMORY[0x231885210](v37);
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing resource request until pair-verify completes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    queuedOperations = [(HAPAccessoryServerIP *)v24 queuedOperations];
    v28 = MEMORY[0x231885210](v22);
    [queuedOperations addObject:v28];

    [(HAPAccessoryServerIP *)v24 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.hapurl"];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_2;
    v7[3] = &unk_2786D65D8;
    v9 = *(a1 + 48);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    [WeakRetained _requestResource:*(a1 + 40) queue:*(a1 + 32) completionHandler:*(a1 + 48)];
  }
}

void __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1284(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v15;
      v43 = 2112;
      *v44 = v10;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Resource request returned HTTP client error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1285;
    block[3] = &unk_2786D65D8;
    v16 = &v40;
    v17 = *(a1 + 32);
    v40 = *(a1 + 40);
    v39 = v10;
    dispatch_async(v17, block);
    v18 = v39;
    goto LABEL_5;
  }

  if (v9)
  {
    if (a4 == 200)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (a3 == 2 && (isKindOfClass & 1) != 0)
      {
        v20 = v9;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_2_1286;
        v35[3] = &unk_2786D65D8;
        v16 = &v37;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v36 = v20;
        v37 = v22;
        dispatch_async(v21, v35);
        v18 = v36;
LABEL_5:

        goto LABEL_17;
      }
    }
  }

  v23 = objc_autoreleasePoolPush();
  v24 = WeakRetained;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v32 = v23;
    v26 = HMFGetLogIdentifier();
    v31 = HTTPGetReasonPhrase();
    if ((a3 - 1) > 3)
    {
      v27 = @"Invalid";
    }

    else
    {
      v27 = off_2786D4CF8[a3 - 1];
    }

    v28 = v27;
    *buf = 138544386;
    v42 = v26;
    v43 = 1026;
    *v44 = a4;
    *&v44[4] = 2082;
    *&v44[6] = v31;
    v45 = 2114;
    v46 = v28;
    v47 = 2114;
    v48 = v9;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to request resource because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

    v23 = v32;
  }

  objc_autoreleasePoolPop(v23);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1287;
  v33[3] = &unk_2786D6490;
  v16 = &v34;
  v29 = *(a1 + 32);
  v34 = *(a1 + 40);
  dispatch_async(v29, v33);
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

void __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_2_1288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HMErrorFromOSStatus(*(a1 + 40));
  (*(v1 + 16))(v1, 0, v2);
}

void __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1287(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)requestResource:(id)resource queue:(id)queue completionHandler:(id)handler
{
  resourceCopy = resource;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x231884350](self, a2);
  8898 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 8898];
  v16 = [v12 initWithName:8898];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HAPAccessoryServerIP_HTTPActivity__requestResource_queue_completionHandler___block_invoke;
  block[3] = &unk_2786D5C48;
  block[4] = self;
  v23 = resourceCopy;
  v24 = queueCopy;
  v25 = v16;
  v26 = handlerCopy;
  v18 = handlerCopy;
  v19 = v16;
  v20 = queueCopy;
  v21 = resourceCopy;
  dispatch_async(clientQueue, block);
}

void __78__HAPAccessoryServerIP_HTTPActivity__requestResource_queue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__HAPAccessoryServerIP_HTTPActivity__requestResource_queue_completionHandler___block_invoke_2;
  v5[3] = &unk_2786D4DD8;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _requestResource:v3 queue:v4 completionHandler:v5];
}

void __78__HAPAccessoryServerIP_HTTPActivity__requestResource_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) begin];
  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }

  [*(a1 + 32) end];
  [*(a1 + 32) invalidate];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t431 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t431, &__block_literal_global_1304);
  }

  v3 = logCategory__hmf_once_v432;

  return v3;
}

uint64_t __44__HAPAccessoryServerIP_Metrics__logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v432 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (void)_cancelNameResolution
{
  v13 = *MEMORY[0x277D85DE8];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  nameResolver = [(HAPAccessoryServerIP *)self nameResolver];

  if (nameResolver)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling active name resolution", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    nameResolver2 = [(HAPAccessoryServerIP *)selfCopy nameResolver];
    [nameResolver2 invalidate];

    [(HAPAccessoryServerIP *)selfCopy setNameResolver:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_doResolveWithGroup:(id)group
{
  v28 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  nameResolver = [(HAPAccessoryServerIP *)self nameResolver];

  if (nameResolver)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Name resolution already in progress!  Are there multiple outstanding connection requests?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    dispatch_group_leave(groupCopy);
  }

  else
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v12 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPServerIPServerNameResolutionTimeoutSeconds"];
    numberValue = [v12 numberValue];

    if (numberValue)
    {
      v14 = numberValue;
    }

    else
    {
      v14 = &unk_283EA9848;
    }

    [v14 doubleValue];
    v16 = v15;
    bonjourDeviceInfo = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
    v18 = [bonjourDeviceInfo objectForKey:@"name"];

    bonjourDeviceInfo2 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
    v20 = [bonjourDeviceInfo2 objectForKey:@"serviceType"];

    v21 = [[HAPNameResolver alloc] initWithDeviceName:v18 serviceType:v20 domain:@"local"];
    [(HAPAccessoryServerIP *)self setNameResolver:v21];

    nameResolver2 = [(HAPAccessoryServerIP *)self nameResolver];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HAPAccessoryServerIP_NameResolution___doResolveWithGroup___block_invoke;
    v24[3] = &unk_2786D5840;
    v24[4] = self;
    v25 = groupCopy;
    [nameResolver2 resolveWithTimeout:v24 completion:v16];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __60__HAPAccessoryServerIP_NameResolution___doResolveWithGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setNameResolver:0];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Saving updated socket info %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setCachedSocketInfo:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Name resolution failed: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  dispatch_group_leave(*(a1 + 40));

  v13 = *MEMORY[0x277D85DE8];
}

@end
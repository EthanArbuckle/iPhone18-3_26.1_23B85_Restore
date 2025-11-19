@interface HAPAccessoryServerIP
+ (id)_parseSerializedAccessoryDictionary:(id)a3 server:(id)a4;
+ (id)logCategory;
+ (id)sharedPairOperationQueue;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_isSessionEstablished;
- (BOOL)_matchesError:(id)a3 withHAPErrorCode:(int64_t)a4;
- (BOOL)_matchesError:(id)a3 withHAPHMErrorCode:(int64_t)a4;
- (BOOL)_parseAndValidateTXTRecord;
- (BOOL)_parseTXTRecordDictionary:(id)a3;
- (BOOL)_processEvent:(id)a3 matchedCharacteristic:(id *)a4;
- (BOOL)_shouldConnectBasedOnDisconnectOnIdle;
- (BOOL)_shouldNotifyClientsOfPVFailure:(id)a3;
- (BOOL)_updateAccessories:(id)a3;
- (BOOL)_validateProtocolInfo:(id)a3;
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
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5;
- (HAPAccessoryServerBrowserIP)browser;
- (HAPAccessoryServerIP)initWithBonjourDeviceInfo:(id)a3 keyStore:(id)a4 browser:(id)a5 discoveryMethod:(unint64_t)a6;
- (HAPAccessoryServerIP)initWithHAPWACAccessory:(id)a3 keystore:(id)a4 browser:(id)a5;
- (HAPAccessoryServerIP)initWithKeyStore:(id)a3 browser:(id)a4 discoveryMethod:(unint64_t)a5;
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
- (double)_getReachabilityTimeoutValueWithSleepInterval:(id)a3;
- (double)remainingTTLForExpiry:(id)a3;
- (id)_joinAccessoryNetworkWithCompletion:(id)a3;
- (id)_queuedReadOperationBlock:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (id)_queuedWriteOperationBlock:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (id)_serializeCharacteristicWriteRequestTuples:(void *)a3 error:;
- (id)_startReachabilityEventTimer;
- (id)getAddressTypeWithSocketInfo:(id)a3;
- (id)primaryAccessory;
- (id)readAndResetHAPMetrics:(BOOL)a3;
- (id)services;
- (int)_continuePairingAfterAuthPromptWithRetry:(BOOL)a3;
- (int)_continuePairingWithSetupCode:(id)a3;
- (int)_doEnsureHTTPClientSetUp;
- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)a3;
- (int)_handlePairSetupCompletionWithData:(id)a3;
- (int)_handlePairVerifyCompletionWithData:(id)a3;
- (int)_pairSetupStartWithConsentRequired:(BOOL)a3;
- (int)_pairSetupTryPassword:(id)a3;
- (int)_pairVerifyStartWithRetry:(BOOL)a3;
- (int)_promptForSetupCodeWithFlags:(unsigned int)a3 delaySeconds:(int)a4 pairingFlags:(unsigned int)a5 isWAC:(BOOL)a6;
- (int)getBonjourDeviceDNSName:(id *)a3;
- (int64_t)_socketUpdateTypeForCachedSocketInfo:(id)a3 newSocketInfo:(id)a4;
- (unint64_t)abruptDisconnectionCounter;
- (unint64_t)consecutivePairVerifyFailureCount;
- (unint64_t)statusFlags;
- (unsigned)_getNameResolutionGroupResolveTimeout;
- (void)__registerForInternalCharacteristicNotifications;
- (void)_accessoryDidBecomeUnreachable:(id)a3;
- (void)_cancelNameResolution;
- (void)_clearIPCacheOnError:(id)a3;
- (void)_continuePairingAfterConfirmingSecureWAC:(id)a3;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_continuePairingAfterWAC:(id)a3;
- (void)_continuePairingUsingWAC;
- (void)_doBonjourReconfirm;
- (void)_doPollForAccessory:(id)a3;
- (void)_doReachabilityWithError:(id)a3 forAccessory:(id)a4;
- (void)_doResolveWithGroup:(id)a3;
- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)_error:(id)a3 forReadCharacteristicValues:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)_error:(id)a3 forWriteCharacteristicValues:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)_establishSecureConnectionAndFetchAttributeDatabaseWithReason:(id)a3;
- (void)_establishSecureSession;
- (void)_establishSecureSessionAndRemovePairing:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_getAttributeDatabase;
- (void)_handleConnectionIdleTimeout;
- (void)_handleListPairingsResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 httpError:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8;
- (void)_handleMFiCertValidation;
- (void)_handlePairSetupAfterM4Callback;
- (void)_handlePairingsResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 httpError:(id)a6 removeRequest:(BOOL)a7 completionQueue:(id)a8 completionBlock:(id)a9;
- (void)_handlePrepareWriteResponseObject:(id)a3 type:(unint64_t)a4 prepareIdentifier:(id)a5 httpStatus:(int)a6 error:(id)a7 requestTuples:(id)a8 timeout:(double)a9 expiry:(id)a10 queue:(id)a11 originalCompletion:(id)a12 completion:(id)a13;
- (void)_handleReadECONNRESETError:(id)a3 readCharacteristics:(id)a4 responses:(id)a5 timeout:(double)a6 expiry:(id)a7 queue:(id)a8 completionHandler:(id)a9;
- (void)_handleReadResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 error:(id)a6 characteristics:(id)a7 completion:(id)a8;
- (void)_handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)_handleWriteECONNResetError:(id)a3 writeRequests:(id)a4 responses:(id)a5 timeout:(double)a6 expiry:(id)a7 queue:(id)a8 completionHandler:(id)a9;
- (void)_handleWriteResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 error:(id)a6 requestTuples:(id)a7 completion:(id)a8;
- (void)_httpClientDidCloseConnectionDueToServer:(id)a3;
- (void)_incrementPairVerifyFailureCount;
- (void)_indicateSessionActivityWithReason:(id)a3;
- (void)_insertReadCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)_insertWriteCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 withCompletionHandler:(id)a7;
- (void)_invalidateWAC;
- (void)_invokePairVerifyCompletionBlock:(id)a3;
- (void)_isAccessoryPublicKeyPresent:(BOOL *)a3 registeredWithHomeKit:(BOOL *)a4;
- (void)_kickConnectionIdleTimer;
- (void)_listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)_notifyDelegateNeedsOwnershipToken;
- (void)_notifyDelegateOfDiscoveryCompletionWithError:(id)a3;
- (void)_notifyDelegateOfPairingProgress:(int64_t)a3;
- (void)_notifyDelegatesOfAddAccessoryFailureWithError:(id)a3;
- (void)_notifyDelegatesOfConnectionState:(BOOL)a3 withError:(id)a4;
- (void)_notifyDelegatesPairingStopped:(id)a3;
- (void)_pairSetupContinueWAC;
- (void)_pairVerifyStartWAC:(id)a3;
- (void)_parseAttributeDatabase:(id)a3 transaction:(id)a4;
- (void)_performExecuteWriteValues:(id)a3 prepareIdentifier:(id)a4 timeout:(double)a5 expiry:(id)a6 queue:(id)a7 completionHandler:(id)a8;
- (void)_performTimedWriteValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)_performWriteValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)_pollAccessory;
- (void)_populateSocketUpdateType;
- (void)_processQueuedOperationsWithError:(id)a3;
- (void)_queueAddPairingWithIdentifier:(id)a3 publicKey:(id)a4 admin:(BOOL)a5 queue:(id)a6 completion:(id)a7;
- (void)_queueEnableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)_queueListPairingWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)_queueReadCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)_queueWriteCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 withCompletionHandler:(id)a7;
- (void)_readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)_removePairingWithIdentifier:(id)a3 publicKey:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestResource:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_reset;
- (void)_sendRemovePairingWithData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_skipReconfirm;
- (void)_startConnectionIdleTimer;
- (void)_startReachability;
- (void)_stopReachability;
- (void)_stopReachabilityTimer;
- (void)_suspendConnectionIdleTimer;
- (void)_tearDownSessionAndStartReachabilityWithError:(id)a3;
- (void)_tearDownSessionWithError:(id)a3;
- (void)_tearDownWAC;
- (void)_updateCacheForDevice:(id)a3 socketInfo:(id)a4 bonjour:(id)a5;
- (void)_updateProtocolVersionFromPrimaryAccessory:(id)a3;
- (void)_updateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4;
- (void)_validatePairingAuthMethod:(id)a3 activity:(id)a4;
- (void)_validateReachabilityTimer;
- (void)_writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)addActiveSession:(int64_t)a3;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)authSession:(id)a3 authComplete:(id)a4;
- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4;
- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)createKeysForDataStreamWithKeySalt:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)disconnectOnIdleUpdated;
- (void)disconnectWithError:(id)a3;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)ensureNetworkMonitor;
- (void)getAccessoryInfo:(id)a3;
- (void)handleHTTPClientUnavailableErrorWithCompletion:(id)a3 serializationType:(unint64_t)a4;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)hapWACAccessoryClient:(id)a3 wacProgress:(unint64_t)a4;
- (void)httpClient:(id)a3 didReceiveEvent:(id)a4;
- (void)httpClient:(id)a3 didReceiveHTTPMessageWithHeaders:(id)a4 body:(id)a5;
- (void)httpClient:(id)a3 didReceiveSocketEvent:(unint64_t)a4;
- (void)httpClient:(id)a3 didStartConnectingToNetAddress:(id)a4;
- (void)httpClient:(id)a3 willSendHTTPMessageWithHeaders:(id)a4 body:(id)a5;
- (void)httpClientDidCloseConnectionDueToServer:(id)a3;
- (void)identifyWithCompletion:(id)a3;
- (void)incrementHAPIPHTTPEventsCount;
- (void)incrementHAPIPHTTPRequestsCount;
- (void)incrementHAPIPHTTPResponsesCount;
- (void)incrementHAPIPInvalidationCount;
- (void)invalidateWithCompletionHandler:(id)a3;
- (void)invokePairVerifyCompletionBlock:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)networkMonitorIsReachable:(id)a3;
- (void)networkMonitorIsUnreachable:(id)a3;
- (void)pairSetupStartSoftAuthWAC;
- (void)pollAccessory;
- (void)processPendingBonjourRemoveEvents;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)reconfirm;
- (void)removeActiveSession:(int64_t)a3;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)requestResource:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)resetPairVerifyFailureCount;
- (void)sendGETRequestToURL:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)sendPOSTRequestToURL:(id)a3 request:(id)a4 serializationType:(unint64_t)a5 completionHandler:(id)a6;
- (void)sendPUTRequestToURL:(id)a3 request:(id)a4 serializationType:(unint64_t)a5 timeout:(double)a6 completionHandler:(id)a7;
- (void)setAbruptDisconnectionCounter:(unint64_t)a3;
- (void)setBonjourDeviceInfo:(id)a3;
- (void)setBonjourDiscoveryPending:(BOOL)a3;
- (void)setCachedSocketInfo:(id)a3;
- (void)setEstablishingSecureConnection:(BOOL)a3;
- (void)setModel:(id)a3;
- (void)setPairVerifyCompletionBlock:(id)a3;
- (void)setPostSoftAuthWacStarted:(BOOL)a3;
- (void)setPreSoftAuthWacStarted:(BOOL)a3;
- (void)setSecuritySessionOpen:(BOOL)a3;
- (void)setSourceVersion:(id)a3;
- (void)setStatusFlags:(unint64_t)a3;
- (void)setWacAccessory:(BOOL)a3;
- (void)setWacComplete:(BOOL)a3;
- (void)setWacLegacy:(BOOL)a3;
- (void)startPairingWithRequest:(id)a3;
- (void)startPing;
- (void)startReprovisioningWithPairingRequest:(id)a3;
- (void)stopPing;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)a3;
- (void)updateActiveDisconnectOnIdleTimeout:(double)a3;
- (void)updateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4;
- (void)updateWithHAPWACAccessory:(id)a3;
- (void)validatePairingAuthMethod:(id)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  os_unfair_lock_lock_with_options();
  ++self->_consecutivePairVerifyFailures;
  os_unfair_lock_unlock(&self->_lock);
  [(HAPAccessoryServer *)self setReachable:0];

  [(HAPAccessoryServerIP *)self setCachedSocketInfo:0];
}

- (void)disconnectOnIdleUpdated
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HAPAccessoryServerIP_disconnectOnIdleUpdated__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HAPAccessoryServerIP *)v6 connectionIdleTimer];
      [v9 timeInterval];
      v13 = 138543618;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Canceling connection idle timer of: %0.3fs", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [(HAPAccessoryServerIP *)v6 connectionIdleTimer];
    [v11 cancel];

    [(HAPAccessoryServerIP *)v6 setConnectionIdleTimer:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startConnectionIdleTimer
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self httpClient];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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
    v6 = self;
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
    v12 = [(HAPAccessoryServerIP *)self connectionIdleTimer];
    if (v12)
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

      v24 = [(HAPAccessoryServerIP *)self connectionIdleTimer];
      [v24 setDelegate:self];

      v12 = [(HAPAccessoryServer *)self clientQueue];
      v25 = [(HAPAccessoryServerIP *)self connectionIdleTimer];
      [v25 setDelegateQueue:v12];

      goto LABEL_11;
    }
  }

LABEL_13:
  v13 = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HAPAccessoryServerIP *)v15 connectionIdleTimer];
      [v18 timeInterval];
      v26 = 138543618;
      v27 = v17;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting connection idle timer of: %03fs", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [(HAPAccessoryServerIP *)v15 connectionIdleTimer];
    [v20 resume];
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_kickConnectionIdleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self connectionIdleTimer];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Kicking connection idle timer", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HAPAccessoryServerIP *)v6 connectionIdleTimer];
    [v9 kick];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionIdleTimeout
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
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
    [(HAPAccessoryServerIP *)v5 disconnectWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveDisconnectOnIdleTimeout:(double)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HAPAccessoryServerIP_updateActiveDisconnectOnIdleTimeout___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
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

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HAPAccessoryServer *)self delegate];
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    if (v5)
    {
      v6 = [(HAPAccessoryServer *)self delegate];
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

- (void)_accessoryDidBecomeUnreachable:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 isReachable];
    v11 = [v4 shortDescription];
    v18 = 138543874;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Accessory became unreachable after ping - reachable flag %d accessory: %@", &v18, 0x1Cu);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServer *)v7 setReachabilityChangedReason:@"Ping"];
  if ([v4 isReachable])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Marking accessory unreachable", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HAPAccessoryServer *)v13 buildReachabilityNotificationDictionary:v4 reachable:0 linkType:1 withError:0];
    [(HAPAccessoryServer *)v13 notifyClients:2 withDictionary:v16];
  }

  if ([v4 isPrimary])
  {
    [(HAPAccessoryServerIP *)v7 _startReachability];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pollAccessory
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HAPAccessoryServerIP_pollAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_pollAccessory
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServer *)self reachabilityPingEnabled];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HAPAccessoryServerIP *)v5 primaryAccessory];
      v10 = [v9 shortDescription];
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Reachability poll for accessory: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [(HAPAccessoryServerIP *)v5 primaryAccessory];
    [(HAPAccessoryServerIP *)v5 _doPollForAccessory:v11];
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
    [(HAPAccessoryServerIP *)v5 stopPing];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_doPollForAccessory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_reachabilityEventTimer)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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

  v6 = [v4 characteristicOfType:@"0000023C-0000-1000-8000-0026BB765291" serviceType:@"00000239-0000-1000-8000-0026BB765291"];
  if (!v6)
  {
    v6 = [v4 characteristicOfType:@"00000052-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291"];
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
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
  v8 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HAPAccessoryServerIP__doPollForAccessory___block_invoke;
  v15[3] = &unk_2786D6538;
  v15[4] = self;
  v16 = v4;
  [v16 readValueForCharacteristic:v7 timeout:0 expiry:v8 completionQueue:v15 completionHandler:0.0];

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

- (void)_doReachabilityWithError:(id)a3 forAccessory:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:v7 reachable:0 linkType:1 withError:0];
    [(HAPAccessoryServer *)self incrementFailedPing];
    [(HAPAccessoryServer *)self notifyClients:1 withDictionary:v9];
    v10 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v11 = [v10 preferenceForKey:@"reachabilityFailedPingLimit"];
    v12 = [v11 numberValue];

    [v7 setConsecutiveFailedPingCount:{objc_msgSend(v7, "consecutiveFailedPingCount") + 1}];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v7 consecutiveFailedPingCount];
      v18 = [v7 shortDescription];
      v26 = 138543874;
      v27 = v16;
      v28 = 1024;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Reachability poll failure count: %d for accessory: %@", &v26, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [v7 consecutiveFailedPingCount];
    if (v19 == [v12 intValue])
    {
      [(HAPAccessoryServerIP *)v14 _accessoryDidBecomeUnreachable:v7];
    }
  }

  else
  {
    [(HAPAccessoryServer *)self incrementSuccessfulPing];
    if ([v7 consecutiveFailedPingCount])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Reachability poll -- resetting consecutive ping failure", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [v7 setConsecutiveFailedPingCount:0];
    }

    if (([v7 isReachable] & 1) == 0)
    {
      if (([v7 isPrimary] & 1) == 0)
      {
        [(HAPAccessoryServer *)self setReachabilityChangedReason:@"Ping"];
        [v7 setReachable:1];
      }

      v24 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:v7 reachable:1 linkType:1 withError:0];
      [(HAPAccessoryServer *)self notifyClients:2 withDictionary:v24];
    }

    v9 = [(HAPAccessoryServer *)self buildReachabilityNotificationDictionary:v7 reachable:1 linkType:1 withError:0];
    [(HAPAccessoryServer *)self notifyClients:1 withDictionary:v9];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_indicateSessionActivityWithReason:(id)a3
{
  [(HAPAccessoryServer *)self setReachabilityChangedReason:a3];
  [(HAPAccessoryServer *)self setReachable:1];
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HAPAccessoryServerIP__indicateSessionActivityWithReason___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_startReachability
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self _startReachabilityEventTimer];
  if (v4)
  {
    v5 = v4;
    [(HAPAccessoryServerIP *)self _pollAccessory];
    v4 = v5;
  }
}

- (id)_startReachabilityEventTimer
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServer *)self shouldDisconnectOnIdle])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
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

  v7 = [(HAPAccessoryServerIP *)self reachabilityEventTimer];

  if (v7)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValue];
  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HAPAccessoryServerIP *)v14 primaryAccessory];
    v18 = [v17 shortDescription];
    v21 = 138543874;
    v22 = v16;
    v23 = 2112;
    v24 = v18;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting reachability poll timer for accessory: %@ to %0.3fs", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:3 options:v12];
  [v8 setDelegate:v14];
  v19 = [(HAPAccessoryServer *)v14 clientQueue];
  [v8 setDelegateQueue:v19];

  [(HAPAccessoryServerIP *)v14 setReachabilityEventTimer:v8];
  [(HAPAccessoryServer *)v14 setReachabilityPingEnabled:1];
  v20 = [MEMORY[0x277CBEAA8] date];
  [(HAPAccessoryServerIP *)v14 setReachabilityStartTime:v20];

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)_getReachabilityTimeoutValue
{
  minimumReachabilityPingInterval = self->_minimumReachabilityPingInterval;
  v4 = [(HAPAccessoryServerIP *)self primaryAccessory];
  v5 = [v4 characteristicOfType:@"0000023A-0000-1000-8000-0026BB765291" serviceType:@"00000239-0000-1000-8000-0026BB765291"];

  if (v5)
  {
    v6 = [v5 value];
    [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValueWithSleepInterval:v6];
    minimumReachabilityPingInterval = v7;
  }

  return minimumReachabilityPingInterval;
}

- (double)_getReachabilityTimeoutValueWithSleepInterval:(id)a3
{
  minimumReachabilityPingInterval = self->_minimumReachabilityPingInterval;
  if (a3)
  {
    [a3 doubleValue];
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServer *)self accessories];
  if ([v4 count] < 2)
  {

LABEL_7:
    v11 = *MEMORY[0x277D85DE8];

    [(HAPAccessoryServerIP *)self _stopReachabilityTimer];
    return;
  }

  v5 = [(HAPAccessoryServer *)self reachabilityPingEnabled];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
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
    v4 = self;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HAPAccessoryServerIP_stopPing__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HAPAccessoryServerIP_startPing__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HAPAccessoryServerIP_identifyWithCompletion___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)httpClient:(id)a3 willSendHTTPMessageWithHeaders:(id)a4 body:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self delegate];
  if ([v9 conformsToProtocol:&unk_283ED3848])
  {
    v10 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_willSendHTTPHeaders_httpBody_];

    if (v10)
    {
      v11 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HAPAccessoryServerIP_httpClient_willSendHTTPMessageWithHeaders_body___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = v7;
      v14 = v8;
      dispatch_async(v11, block);
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

- (void)httpClient:(id)a3 didReceiveHTTPMessageWithHeaders:(id)a4 body:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self delegate];
  if ([v9 conformsToProtocol:&unk_283ED3848])
  {
    v10 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_didReceiveHTTPHeaders_httpBody_];

    if (v10)
    {
      v11 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HAPAccessoryServerIP_httpClient_didReceiveHTTPMessageWithHeaders_body___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = v7;
      v14 = v8;
      dispatch_async(v11, block);
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

- (void)_handleListPairingsResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 httpError:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v21;
      v49 = 2112;
      *v50 = v15;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to list-pairings with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = v15;
LABEL_21:
    v28 = v22;
LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  if (!v14 || a4 != 2 || a5 != 200 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v41 = v33;
      v36 = HMFGetLogIdentifier();
      v37 = HTTPGetReasonPhrase();
      if (a4 - 1 > 3)
      {
        v38 = @"Invalid";
      }

      else
      {
        v38 = off_2786D4CF8[a4 - 1];
      }

      v39 = v38;
      *buf = 138544386;
      v48 = v36;
      v49 = 1024;
      *v50 = a5;
      *&v50[4] = 2080;
      *&v50[6] = v37;
      *&v50[14] = 2112;
      *&v50[16] = v39;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Received invalid response to list-pairings with HTTP status '%d %s', serializationType %@ responseObject %@", buf, 0x30u);

      v33 = v41;
    }

    objc_autoreleasePoolPop(v33);
    v22 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
    goto LABEL_21;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
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
  v27 = [HAPPairingUtilities parseListPairingsResponse:v14 error:&v46];
  v28 = v46;
  if (!v27)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v24;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v48 = v32;
      v49 = 2112;
      *v50 = v14;
      *&v50[8] = 2112;
      *&v50[10] = v28;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse list-pairings response: %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_22;
  }

LABEL_23:
  if (v16 && v17)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__HAPAccessoryServerIP__handleListPairingsResponseObject_type_httpStatus_httpError_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v45 = v17;
    v43 = v27;
    v44 = v28;
    dispatch_async(v16, block);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v21 = v6;
      v22 = v7;
      [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:v10 request:v8 serializationType:2 completionHandler:v20];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
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
      if (!v6 || !v7)
      {
        goto LABEL_13;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__HAPAccessoryServerIP__listPairingsWithCompletionQueue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v25 = v7;
      v24 = v9;
      dispatch_async(v6, block);

      v10 = v25;
    }

LABEL_13:
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing list-pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HAPAccessoryServerIP *)v12 _queueListPairingWithCompletionQueue:v6 completionHandler:v7];
  [(HAPAccessoryServerIP *)v12 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.listPairings"];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HAPAccessoryServerIP_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = 0;
  v8 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v41];
  v9 = v41;
  v10 = [v8 identifier];
  v11 = [v8 publicKey];
  v12 = [v11 data];

  if (!v9)
  {
    if (v12 && v10)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v18;
        v44 = 2112;
        v45 = v10;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending request to accessory to remove the pairing for the current controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [(HAPAccessoryServer *)v16 keyStore];
      v20 = [(HAPAccessoryServer *)v16 identifier];
      v21 = [(HAPAccessoryServer *)v16 clientQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_609;
      v28[3] = &unk_2786D2A80;
      v28[4] = v16;
      v29 = v10;
      v30 = v12;
      v31 = v19;
      v32 = v20;
      v33 = v6;
      v34 = v7;
      v22 = v20;
      v14 = v19;
      dispatch_async(v21, v28);

      v9 = 0;
      v13 = 1;
    }

    else
    {
      v46[0] = *MEMORY[0x277CCA450];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove the pairing for the current controller"];
      v47[0] = v23;
      v46[1] = *MEMORY[0x277CCA470];
      v24 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [v24 localizedStringForKey:@"There was no controller public key or controller username" value:&stru_283E79C60 table:0];
      v47[1] = v25;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

      v9 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:27 userInfo:v14];
      v13 = 0;
      if (v6 && v7)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke_2;
        v35[3] = &unk_2786D65D8;
        v37 = v7;
        v9 = v9;
        v36 = v9;
        dispatch_async(v6, v35);

        v13 = 0;
      }
    }

    goto LABEL_13;
  }

  v13 = 0;
  if (v6 && v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HAPAccessoryServerIP_removePairingForCurrentControllerOnQueue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v40 = v7;
    v9 = v9;
    v39 = v9;
    dispatch_async(v6, block);

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

- (void)_handlePairingsResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 httpError:(id)a6 removeRequest:(BOOL)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v10 = a7;
  v70 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  if (v16)
  {
    v19 = v10;
    v20 = objc_autoreleasePoolPush();
    v21 = self;
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
      *v67 = v16;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to %@ pairing with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = v16;
  }

  else if (v15 && a4 == 2 && a5 == 200 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = v10;
    v26 = objc_autoreleasePoolPush();
    v27 = self;
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
      v32 = [HAPPairingUtilities parseRemovePairingResponse:v15 error:&v61];
      v33 = v61;
    }

    else
    {
      v60 = 0;
      v32 = [HAPPairingUtilities parseAddPairingResponse:v15 error:&v60];
      v33 = v60;
    }

    v25 = v33;
    if (!v32)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = v27;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v46 = v45 = v15;
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

        v15 = v45;
      }

      objc_autoreleasePoolPop(v42);
    }

    if (v25)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = v27;
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
        *v67 = v15;
        *&v67[8] = 2112;
        *&v67[10] = v25;
        _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse %s pairing response: %@ with error %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v48);
    }
  }

  else
  {
    v56 = v15;
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v54 = v34;
      v53 = HMFGetLogIdentifier();
      if (v10)
      {
        v37 = "remove";
      }

      else
      {
        v37 = "add";
      }

      v38 = HTTPGetReasonPhrase();
      if (a4 - 1 > 3)
      {
        v39 = @"Invalid";
      }

      else
      {
        v39 = off_2786D4CF8[a4 - 1];
      }

      v40 = v39;
      *buf = 138544642;
      v63 = v53;
      v64 = 2080;
      v65 = v37;
      v66 = 1024;
      *v67 = a5;
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
    v15 = v56;
  }

  if (v17 && v18)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__HAPAccessoryServerIP__handlePairingsResponseObject_type_httpStatus_httpError_removeRequest_completionQueue_completionBlock___block_invoke;
    block[3] = &unk_2786D65D8;
    v59 = v18;
    v58 = v25;
    dispatch_async(v17, block);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_sendRemovePairingWithData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [@"/" stringByAppendingPathComponent:@"pairings"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HAPAccessoryServerIP__sendRemovePairingWithData_queue_completion___block_invoke;
  v14[3] = &unk_2786D2A30;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:v11 request:v10 serializationType:2 completionHandler:v14];
}

- (void)_establishSecureSessionAndRemovePairing:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self keyStore];
  v12 = [(HAPAccessoryServer *)self identifier];
  v23 = 0;
  v13 = [v11 readPublicKeyForAccessoryName:v12 registeredWithHomeKit:0 error:&v23];
  v14 = v23;

  if (v13)
  {
    if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
    {
      [(HAPAccessoryServerIP *)self _kickConnectionIdleTimer];
      [(HAPAccessoryServerIP *)self _sendRemovePairingWithData:v8 queue:v9 completion:v10];
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
      v18 = v8;
      v19 = v9;
      v20 = v10;
      [(HAPAccessoryServerIP *)self setPairVerifyCompletionBlock:v17];
      [(HAPAccessoryServer *)self setMetric_pairVerifyReason:@"pairingRemove"];
      [(HAPAccessoryServerIP *)self _establishSecureSession];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else if (v9 && v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HAPAccessoryServerIP__establishSecureSessionAndRemovePairing_queue_completion___block_invoke_3;
    block[3] = &unk_2786D6490;
    v16 = v10;
    dispatch_async(v9, block);
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

- (void)_removePairingWithIdentifier:(id)a3 publicKey:(id)a4 queue:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v11];
  v15 = [[HAPPairingIdentity alloc] initWithIdentifier:v10 publicKey:v14 privateKey:0 permissions:0];
  v26 = 0;
  v16 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v15 error:&v26];
  v17 = v26;
  if (v16)
  {
    [(HAPAccessoryServerIP *)self _establishSecureSessionAndRemovePairing:v16 queue:v12 completion:v13];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v18 = self;
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
    if (v12 && v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__HAPAccessoryServerIP__removePairingWithIdentifier_publicKey_queue_completion___block_invoke;
      block[3] = &unk_2786D65D8;
      v24 = v17;
      v25 = v13;
      dispatch_async(v12, block);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__HAPAccessoryServerIP__removePairingWithIdentifier_publicKey_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HAPAccessoryServerIP_removePairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HAPAccessoryServerIP_addPairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)authSession:(id)a3 authComplete:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HAPAccessoryServerIP_authSession_authComplete___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HAPAccessoryServerIP_authSession_confirmUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
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

- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HAPAccessoryServerIP_authSession_authenticateUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
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

- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HAPAccessoryServerIP_authSession_validateUUID_token___block_invoke;
  v15[3] = &unk_2786D6A08;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
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
  v3 = [(HAPAccessoryServerIP *)self networkMonitor];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D0F868]);
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v4;

    v6 = self->_networkMonitor;

    [(HMFNetMonitor *)v6 setDelegate:self];
  }
}

- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Sending Auth Exchange with data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HAPAccessoryServer *)v9 clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HAPAccessoryServerIP_authSession_sendAuthExchangeData___block_invoke;
  v15[3] = &unk_2786D7050;
  v15[4] = v9;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAPAccessoryServerIP_tearDownSessionOnAuthCompletion__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __55__HAPAccessoryServerIP_tearDownSessionOnAuthCompletion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAuthenticated:1];
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  v3 = *(a1 + 32);

  return [v3 _tearDownSession];
}

- (void)provisionToken:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__HAPAccessoryServerIP_provisionToken___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __39__HAPAccessoryServerIP_provisionToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = [(HAPAccessoryServer *)v6 pairSetupType];
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Current Pair Setup Type %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HAPAccessoryServerIP_continueAuthAfterValidation___block_invoke;
  v11[3] = &unk_2786D6768;
  v11[4] = v6;
  v12 = a3;
  dispatch_async(v9, v11);

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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPAccessoryServerIP_authenticateAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__HAPAccessoryServerIP_authenticateAccessory__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:1];
}

- (void)_validatePairingAuthMethod:(id)a3 activity:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
  {
    featureFlags = self->_featureFlags;
    if ((featureFlags & 0x20) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
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
      v6[2](v6, v14, 5);

      goto LABEL_27;
    }

    if (featureFlags)
    {
      LOBYTE(location) = 0;
      v32 = [HAPProtocolMessages constructAuthChallengeRequest:&unk_283EA9578 nonce:0 outTID:&location];
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v36;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Sending auth challenge request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      objc_initWeak(buf, v34);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke_538;
      v47[3] = &unk_2786D2A08;
      objc_copyWeak(v50, buf);
      v49 = v6;
      v37 = v7;
      v51 = location;
      v48 = v37;
      v50[1] = 1;
      v38 = MEMORY[0x231885210](v47);
      [v37 markWithReason:@"Sending auth challenge request"];
      [(HAPAccessoryServerIP *)v34 sendPOSTRequestToURL:@"/secure-message" request:v32 serializationType:3 completionHandler:v38];

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
          v28 = self;
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
          v6[2](v6, 0, 5);
          goto LABEL_27;
        }

        v39 = 6;
      }

      v40 = objc_autoreleasePoolPush();
      v41 = self;
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
      v6[2](v6, v45, 5);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and then doing auth challenge request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    objc_initWeak(&location, v16);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__HAPAccessoryServerIP__validatePairingAuthMethod_activity___block_invoke;
    v52[3] = &unk_2786D3A30;
    v54 = v6;
    objc_copyWeak(&v55, &location);
    v19 = v7;
    v53 = v19;
    v20 = MEMORY[0x231885210](v52);
    v21 = objc_autoreleasePoolPush();
    v22 = v16;
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
    v25 = [(HAPAccessoryServerIP *)v22 queuedOperations];
    v26 = MEMORY[0x231885210](v20);
    [v25 addObject:v26];

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

- (void)validatePairingAuthMethod:(id)a3
{
  v4 = a3;
  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"validatePairingAuthMethod"];
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HAPAccessoryServerIP_validatePairingAuthMethod___block_invoke;
  v7[3] = &unk_2786D69E0;
  v7[4] = self;
  v9 = v4;
  v8 = v10;
  v6 = v4;
  dispatch_async(v5, v7);

  __HMFActivityScopeLeave();
}

- (BOOL)_validateProtocolInfo:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceIdentifier];
  v6 = [(HAPAccessoryServer *)self identifier];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_7;
  }

  v7 = [v4 categoryIdentifier];
  v8 = [(HAPAccessoryServer *)self category];
  if (v7 != [v8 unsignedShortValue] || self->_featureFlags != objc_msgSend(v4, "featureFlags"))
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [v4 protocolVersion];
  v10 = [(HAPAccessoryServer *)self version];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HAPAccessoryServer *)v14 category];
    v18 = [(HAPAccessoryServer *)v14 authMethod];
    v19 = [(HAPAccessoryServer *)v14 version];
    v22 = 138544386;
    v23 = v16;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v17;
    v28 = 2048;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match category: %@, authMethods: %tu version: %@", &v22, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)getAccessoryInfo:(id)a3
{
  v4 = a3;
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
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HAPAccessoryServerIP_getAccessoryInfo___block_invoke;
  v7[3] = &unk_2786D29E0;
  v9 = v13;
  v10 = v11;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

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

- (void)networkMonitorIsUnreachable:(id)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HAPAccessoryServerIP_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)networkMonitorIsReachable:(id)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HAPAccessoryServerIP_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)timerDidFire:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPAccessoryServerIP *)self bonjourEventTimer];

  if (v6 == v4)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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
    v21 = v10;
    v22 = v13;
    v14 = v13;
    __37__HAPAccessoryServerIP_timerDidFire___block_invoke(&v17);
    [(HAPAccessoryServerIP *)v10 _notifyDelegatesOfAddAccessoryFailureWithError:v14, v17, v18, v19, v20, v21];
    [(HAPAccessoryServerIP *)v10 setBonjourEventTimer:0];
  }

  else
  {
    v7 = [(HAPAccessoryServerIP *)self reachabilityEventTimer];

    if (v7 == v4)
    {
      [(HAPAccessoryServerIP *)self _validateReachabilityTimer];
      v15 = [(HAPAccessoryServerIP *)self reachabilityEventTimer];
      [v15 suspend];

      [(HAPAccessoryServerIP *)self pollAccessory];
    }

    else
    {
      v8 = [(HAPAccessoryServerIP *)self connectionIdleTimer];

      if (v8 == v4)
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CCABB0];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:self->_reachabilityStartTime];
  v6 = [v4 numberWithDouble:?];

  [(HAPAccessoryServerIP *)self _getReachabilityTimeoutValue];
  v8 = v7;
  v9 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v10 = [v9 preferenceForKey:@"HAPReachabilityTimerDelayToleranceInSeconds"];
  v11 = [v10 numberValue];

  [v6 doubleValue];
  v13 = v12;
  [v11 doubleValue];
  if (v13 > v8 + v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

    [(HAPAccessoryServer *)v16 notifyClients:4 withDictionary:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (int)_handlePairVerifyCompletionWithData:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v5 = v4;
  v44 = v5;
  v45 = self;
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
  v11 = PairingSessionExchange();
  if (v11)
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
    v11 = 0;
    goto LABEL_8;
  }

  v12 = self->_pairingSession;
  v11 = PairingSessionDeriveKey();
  if (v11 || (v13 = self->_pairingSession, v11 = PairingSessionDeriveKey(), v11))
  {
LABEL_5:
    v14 = 0;
    goto LABEL_8;
  }

  v27 = [(HAPAccessoryServerIP *)self httpClient];
  v37 = 0;
  v28 = [v27 enableUAPSessionSecurityWithReadKey:v60 writeKey:v59 error:&v37];
  v14 = v37;

  if (v28)
  {
    goto LABEL_24;
  }

  context = objc_autoreleasePoolPush();
  v29 = self;
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
  v11 = [v14 code];
  if (!v11)
  {
LABEL_24:
    [(HAPAccessoryServerIP *)self invokePairVerifyCompletionBlock:v14, context];
    [(HAPAccessoryServerIP *)self setSecuritySessionOpen:1];
    [(HAPAccessoryServer *)self setReachable:1];
    [(HAPAccessoryServerIP *)self _notifyDelegatesOfConnectionState:1 withError:0];
    context = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v34;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Pair-verify succeeded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    [(HAPAccessoryServerIP *)v32 setCurrentPairVerifyError:0];
    goto LABEL_7;
  }

LABEL_8:
  if (v54)
  {
    free(v54);
  }

  if (v11)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v56 = v20;
      v57 = 1024;
      *v58 = v11;
      *&v58[4] = 2112;
      *&v58[6] = v5;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify message failed: %d with data: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = HMErrorFromOSStatus(v11);
    v22 = [(HAPAccessoryServer *)v18 useHH2];
    if (v11 == -6727 && v22)
    {
      v36 = v21;
      [(HAPAccessoryServerIP *)v18 _handleSecureSessionClosingWithError:&v36 status:4294960569 data:v5];
      v24 = v36;

      v21 = v24;
    }

    [(HAPAccessoryServerIP *)v18 _tearDownSessionAndStartReachabilityWithError:v21, context];
    (*(v7 + 2))(v7, v21);
    [(HAPAccessoryServerIP *)v18 _processQueuedOperationsWithError:v21];
    [(HAPAccessoryServerIP *)v18 invokePairVerifyCompletionBlock:v21];
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v46, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v11;
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

- (int)_pairVerifyStartWithRetry:(BOOL)a3
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
  v25 = a3;
  v5 = MEMORY[0x231885210](&v20);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Pair-verify starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HAPAccessoryServerIP *)v7 _ensurePairingSessionIsInitializedWithType:3, v20, v21, v22, v23];
  if (!v10)
  {
    pairingSession = v7->_pairingSession;
    v10 = PairingSessionExchange();
    if (!v10)
    {
      v10 = [(HAPAccessoryServerIP *)v7 _ensureHTTPClientSetUp];
      if (!v10)
      {
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:v28];
        [(HAPAccessoryServerIP *)v7 sendPOSTRequestToURL:@"/pair-verify" request:v12 serializationType:2 completionHandler:v5];

        v10 = 0;
      }
    }
  }

  if (v29)
  {
    free(v29);
  }

  if (v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 1024;
      v33 = v10;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Pair-verify start failed: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = HMErrorFromOSStatus(v10);
    [(HAPAccessoryServerIP *)v14 _tearDownSessionAndStartReachabilityWithError:v17];
    [(HAPAccessoryServerIP *)v14 invokePairVerifyCompletionBlock:v17];
    [(HAPAccessoryServerIP *)v14 _processQueuedOperationsWithError:v17];
    [(HAPAccessoryServerIP *)v14 _notifyDelegatesPairingStopped:v17];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
  return v10;
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

- (BOOL)_shouldNotifyClientsOfPVFailure:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 underlyingErrors], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 underlyingErrors];
    v8 = [v7 firstObject];

    v9 = !v8 || !-[HAPAccessoryServerIP consecutivePairVerifyFailures](self, "consecutivePairVerifyFailures") || [v8 code] != -6722;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int)_pairSetupTryPassword:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v6 = v4;
    [v4 UTF8String];
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
    v12 = self;
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
    [(HAPAccessoryServerIP *)v12 _tearDownSessionAndStartReachabilityWithError:v15];
    [(HAPAccessoryServerIP *)v12 _processQueuedOperationsWithError:v15];
    [(HAPAccessoryServerIP *)v12 _notifyDelegatesPairingStopped:v15];
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

- (int)_promptForSetupCodeWithFlags:(unsigned int)a3 delaySeconds:(int)a4 pairingFlags:(unsigned int)a5 isWAC:(BOOL)a6
{
  v6 = a6;
  v40 = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    *buf = 138544386;
    v31 = v14;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = a4;
    v36 = 1024;
    v37 = a5;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Pair-setup received request to prompt for password, flags: %0x, delay: %d pairing flags: %0x isWAC: %@\n", buf, 0x28u);
  }

  objc_autoreleasePoolPop(v11);
  if ((a3 & 0x10000) != 0 && ![(HAPAccessoryServerIP *)v12 isHandlingInvalidSetupCode])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
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
    if (v6)
    {
      v17 = [(HAPAccessoryServerIP *)v20 hapWACAccessoryClient];
      [v17 restart];
LABEL_21:

      result = 0;
      goto LABEL_22;
    }

    v16 = [(HAPAccessoryServer *)v20 clientQueue];
    v17 = v16;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = v20;
    v18 = block;
LABEL_20:
    dispatch_async(v16, v18);
    goto LABEL_21;
  }

  if ((a3 & 0x30000) != 0 || [(HAPAccessoryServerIP *)v12 isHandlingInvalidSetupCode])
  {
    [(HAPAccessoryServerIP *)v12 setHandlingInvalidSetupCode:0];
    if ([(HAPAccessoryServerIP *)v12 _delegateRespondsToSelector:sel_accessoryServer_didReceiveBadPasswordThrottleAttemptsWithDelay_])
    {
      v16 = [(HAPAccessoryServer *)v12 delegateQueue];
      v17 = v16;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_2;
      v27[3] = &unk_2786D6740;
      v27[4] = v12;
      v28 = a4;
      v18 = v27;
      goto LABEL_20;
    }
  }

  else if ([(HAPAccessoryServerIP *)v12 _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
  {
    if ((a5 & 0x40000000) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v16 = [(HAPAccessoryServer *)v12 delegateQueue];
    v17 = v16;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__HAPAccessoryServerIP__promptForSetupCodeWithFlags_delaySeconds_pairingFlags_isWAC___block_invoke_3;
    v26[3] = &unk_2786D63C8;
    v26[4] = v12;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

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
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v9 shortDescription];
    *buf = 138543874;
    v43 = v14;
    v44 = 1024;
    v45 = PeerFlags;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Pair-setup after M4, flags %08X  productData %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HAPAccessoryServer *)v12 category];
  if ([v16 isEqual:&unk_283EA9590])
  {
    v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v18 = [v17 preferenceForKey:@"shouldRequireOwnershipProof"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v12;
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
  v29 = [(HAPAccessoryServer *)v12 pairingRequest];
  v30 = [v29 ownershipToken];

  v31 = objc_autoreleasePoolPush();
  v32 = v12;
  v33 = HMFGetOSLogHandle();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
  if (!v30)
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
  v37 = [(HAPAccessoryServer *)v32 pairingRequest];
  v38 = [v37 ownershipToken];
  PairingSessionSetProperty();

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:

  v40 = *MEMORY[0x277D85DE8];
}

- (int)_handlePairSetupCompletionWithData:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke;
  v59[3] = &unk_2786D6A98;
  v5 = v4;
  v60 = v5;
  v61 = self;
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
  v11 = v10;
  if (v10)
  {
    if (v10 != -6771)
    {
      goto LABEL_28;
    }

LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  if (!v62)
  {
    if ([(HAPAccessoryServerIP *)self cancelPairingErr])
    {
      v11 = [(HAPAccessoryServerIP *)self cancelPairingErr];
      goto LABEL_28;
    }

    v38 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:v63];
    [(HAPAccessoryServerIP *)self sendPOSTRequestToURL:@"/pair-setup" request:v38 serializationType:2 completionHandler:v50];

    goto LABEL_27;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v15;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Pairing completed - Done", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  if ([(HAPAccessoryServer *)v13 pairSetupType]!= 3)
  {
    if ([(HAPAccessoryServer *)v13 pairSetupType]== 5 || [(HAPAccessoryServer *)v13 pairSetupType]== 6)
    {
      [(HAPAccessoryServerIP *)v13 _handleMFiCertValidation];
    }

    else
    {
      [(HAPAccessoryServerIP *)v13 _tearDownSession];
      v39 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
      [(HAPAccessoryServerIP *)v13 _processQueuedOperationsWithError:v39];
      [(HAPAccessoryServerIP *)v13 _notifyDelegatesPairingStopped:0];
    }

    goto LABEL_27;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = v13;
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
  v11 = PairingSessionDeriveKey();
  if (!v11)
  {
    v21 = self->_pairingSession;
    v11 = PairingSessionDeriveKey();
    if (!v11)
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
      v26 = [(HAPAccessoryServerIP *)v23 httpClient];
      v54 = 0;
      v27 = [v26 enableUAPSessionSecurityWithReadKey:buf writeKey:v71 error:&v54];
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
      v11 = [v49 code];
      if (!v11)
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
        v36 = [MEMORY[0x277CBEAA8] date];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __59__HAPAccessoryServerIP__handlePairSetupCompletionWithData___block_invoke_482;
        v51[3] = &unk_2786D6A98;
        v37 = v36;
        v52 = v37;
        v53 = v33;
        [(HAPAccessoryServerIP *)v33 getAccessoryInfo:v51];

        v11 = 0;
      }
    }
  }

LABEL_28:
  if (v64)
  {
    free(v64);
  }

  if (v11)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v43;
      v74 = 1024;
      v75 = v11;
      _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_ERROR, "%{public}@Pair-setup message failed with %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = HMErrorFromOSStatus(v11);
    [(HAPAccessoryServerIP *)v41 _tearDownSessionAndStartReachabilityWithError:v44];
    (*(v7 + 2))(v7, v44);
    [(HAPAccessoryServerIP *)v41 _processQueuedOperationsWithError:v44];
    [(HAPAccessoryServerIP *)v41 _notifyDelegatesPairingStopped:v44];
  }

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  v45 = *MEMORY[0x277D85DE8];
  return v11;
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

- (int)_continuePairingAfterAuthPromptWithRetry:(BOOL)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v32 = 0;
  self->_retryingPairSetup = a3;
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
  v29 = a3;
  v6 = v5;
  v27 = v6;
  v7 = MEMORY[0x231885210](&v23);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Pair-setup starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HAPAccessoryServerIP *)v9 setCachedSocketInfo:0, v23, v24, v25, v26];
  v12 = [(HAPAccessoryServerIP *)v9 _ensurePairingSessionIsInitializedWithType:1];
  if (!v12)
  {
    pairingSession = v9->_pairingSession;
    v14 = PairingSessionExchange();
    v12 = v14;
    if (v14)
    {
      if (v14 == -6771)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ([(HAPAccessoryServerIP *)v9 cancelPairingErr])
      {
        v12 = [(HAPAccessoryServerIP *)v9 cancelPairingErr];
        goto LABEL_10;
      }

      v12 = [(HAPAccessoryServerIP *)v9 _ensureHTTPClientSetUp];
      if (!v12)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:v33];
        [(HAPAccessoryServerIP *)v9 sendPOSTRequestToURL:@"/pair-setup" request:v15 serializationType:2 completionHandler:v7];

LABEL_9:
        v12 = 0;
      }
    }
  }

LABEL_10:
  if (v34)
  {
    free(v34);
  }

  if (v12)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v19;
      v37 = 1024;
      v38 = v12;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Pair-setup start failed: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = HMErrorFromOSStatus(v12);
    [(HAPAccessoryServerIP *)v17 _tearDownSessionAndStartReachabilityWithError:v20];
    (*(v6 + 2))(v6, v20);
    [(HAPAccessoryServerIP *)v17 _processQueuedOperationsWithError:v20];
    [(HAPAccessoryServerIP *)v17 _notifyDelegatesPairingStopped:v20];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
  return v12;
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

- (int)_pairSetupStartWithConsentRequired:(BOOL)a3
{
  v3 = a3;
  v63 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke;
  v56[3] = &unk_2786D6768;
  v56[4] = self;
  v57 = a3;
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
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v60 = v28;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory public key was already present but it has not been configured with HomeKit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [(HAPAccessoryServer *)v26 keyStore];
      v30 = [(HAPAccessoryServer *)v26 identifier];
      v55 = 0;
      [v29 registerAccessoryWithHomeKit:v30 error:&v55];
      v5 = v55;
    }

    [(HAPAccessoryServerIP *)self _notifyDelegatesPairingStopped:v5];

    goto LABEL_18;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    featureFlags = v7->_featureFlags;
    *buf = 138543618;
    v60 = v9;
    v61 = 2048;
    v62 = featureFlags;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting a reconfirm with Bonjour during pairing with flags: %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServerIP *)v7 reconfirm];
  v11 = v7->_featureFlags;
  v12 = v11 & 0xBF;
  if ((v11 & 0xBF) != 0)
  {
    if (v11)
    {
      if (v3)
      {
        v31 = [(HAPAccessoryServerIP *)v7 _ensurePairingSessionIsInitializedWithType:1];
        if (v31)
        {
LABEL_27:
          v41 = HMErrorFromOSStatus(v31);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_2;
          v46[3] = &unk_2786D7050;
          v46[4] = v7;
          v47 = v41;
          v42 = v41;
          __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_2(v46);
          [(HAPAccessoryServerIP *)v7 _notifyDelegatesOfAddAccessoryFailureWithError:v42];
          [(HAPAccessoryServerIP *)v7 _tearDownSessionAndStartReachabilityWithError:v42];
          v43 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:79 reason:0 underlyingError:v42];

          [(HAPAccessoryServerIP *)v7 _processQueuedOperationsWithError:v43];
          goto LABEL_28;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = v7;
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
          v37 = [(HAPAccessoryServer *)v33 name];
          v38 = [(HAPAccessoryServer *)v33 category];
          v39 = [(HAPAccessoryInfo *)v36 initWithName:v37 manufacturer:0 modelName:0 category:v38 certificationStatus:0 denylisted:0 ppid:0];

          v40 = [(HAPAccessoryServer *)v33 delegateQueue];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_466;
          v48[3] = &unk_2786D7050;
          v48[4] = v33;
          v49 = v39;
          v23 = v39;
          dispatch_async(v40, v48);

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

    LODWORD(v31) = [(HAPAccessoryServerIP *)v7 _continuePairingAfterAuthPromptWithRetry:1];
    goto LABEL_28;
  }

LABEL_9:
  v13 = objc_autoreleasePoolPush();
  v14 = v7;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = v7->_featureFlags;
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
  v19 = [(HAPAccessoryServer *)v14 name];
  v20 = [(HAPAccessoryServer *)v14 category];
  v21 = [(HAPAccessoryInfo *)v18 initWithName:v19 manufacturer:0 modelName:0 category:v20 certificationStatus:0 denylisted:0 ppid:0];

  v22 = [(HAPAccessoryServer *)v14 delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HAPAccessoryServerIP__pairSetupStartWithConsentRequired___block_invoke_465;
  block[3] = &unk_2786D4978;
  v51 = v21;
  v52 = 4 * (v12 != 0);
  block[4] = v14;
  v23 = v21;
  dispatch_async(v22, block);

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

- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [(HAPAccessoryServer *)self pairingRequest];
  v6 = [v5 pairingIdentity];
  v7 = [v6 identifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(HAPAccessoryServerIP *)self controllerUsername];
  }

  v10 = v9;

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
  if (a3 == 1)
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
        v32 = self;
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
        v32 = self;
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
  v24 = self;
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
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HAPNameResolutionGroupResolveTimeout"];
  v4 = [v3 numberValue];

  if (v4)
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 12;
  }

  return v5;
}

- (int)_doEnsureHTTPClientSetUp
{
  if ([(HAPAccessoryServer *)self wakeNumber])
  {
    v3 = [(HAPAccessoryServer *)self suspendedAccessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 wakeTuples];

    v7 = [v6 firstObject];
    v8 = [v7 wakeAddress];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HAPAccessoryServerIP *)self httpClient];

  if (v9)
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
    v13 = [(HAPAccessoryServer *)self clientQueue];
    v14 = [(HAPHTTPClient *)v12 initWithDNSName:v11 port:0 eventsEnabled:1 queue:v13 wakeAddress:v8];
    [(HAPAccessoryServerIP *)self setHttpClient:v14];

    v15 = [(HAPAccessoryServerIP *)self httpClient];

    if (!v15)
    {
      v10 = -6718;
      goto LABEL_14;
    }

    v16 = [(HAPAccessoryServerIP *)self httpClient];
    v17 = [(HAPAccessoryServer *)self clientQueue];
    [v16 setDelegate:self queue:v17];

    [(HAPAccessoryServerIP *)self setHasUpdatedBonjour:0];
    if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_didReceiveHTTPHeaders_httpBody_]|| [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServerIP_willSendHTTPHeaders_httpBody_])
    {
      v18 = [(HAPAccessoryServerIP *)self httpClient];
      v19 = [(HAPAccessoryServer *)self clientQueue];
      [v18 setDebugDelegate:self queue:v19];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (void)_populateSocketUpdateType
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v6 = [(HAPAccessoryServerIP *)self cachedSocketInfo];
  v4 = [(HAPAccessoryServerIP *)self httpClient];
  v5 = [v4 peerSocketInfo];
  [(HAPAccessoryServerIP *)self setCurrentSocketUpdateType:[(HAPAccessoryServerIP *)self _socketUpdateTypeForCachedSocketInfo:v6 newSocketInfo:v5]];
}

- (int64_t)_socketUpdateTypeForCachedSocketInfo:(id)a3 newSocketInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 ipAddressString];
      v9 = [v7 ipAddressString];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = [v5 port];
        v12 = [v7 port];
        v13 = [v11 isEqual:v12];

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
        v15 = [v5 ipAddressType];
        if (v15 == [v7 ipAddressType])
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

- (id)getAddressTypeWithSocketInfo:(id)a3
{
  v3 = [a3 ipAddressType];
  if ((v3 - 1) > 3)
  {
    return @"UnknownAddressType";
  }

  else
  {
    return off_2786D2B18[v3 - 1];
  }
}

- (int)getBonjourDeviceDNSName:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3 || ![(HAPAccessoryServerIP *)self hasBonjourDeviceInfo])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *a3;
      [(HAPAccessoryServerIP *)v13 hasBonjourDeviceInfo];
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

  v5 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v6 = BonjourDevice_CopyDNSNames();

  if (!v6)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
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
    *a3 = &stru_283E79C60;
    goto LABEL_15;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:strnlen(v6 encoding:0x800uLL) freeWhenDone:{4, 1}];
  *a3 = v7;
  if (v7)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
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
  *a3 = &stru_283E79C60;
LABEL_11:
  result = -6705;
LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)httpClient:(id)a3 didStartConnectingToNetAddress:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 addressFamily];
  if (v8)
  {
    if (v8 == 2)
    {
      [(HAPAccessoryServerIP *)self setTriedConnectingToIPv6Address:1];
    }

    else if (v8 == 1)
    {
      [(HAPAccessoryServerIP *)self setTriedConnectingToIPv4Address:1];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 2048;
      v19 = [v7 addressFamily];
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown address family in net address: %@, %lu", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)httpClient:(id)a3 didReceiveSocketEvent:(unint64_t)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCAB68] string];
    v12 = v11;
    if (v4)
    {
      [v11 appendString:{@", WakePacket"}];
    }

    if ((v4 & 2) != 0)
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
  v13 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v14 = [(HAPAccessoryServer *)v8 identifier];
  v15 = [(HAPAccessoryServer *)v8 category];
  [v13 reportWakeEvent:v14 linkType:1 accessoryCategory:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_httpClientDidCloseConnectionDueToServer:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received a server-initiated disconnection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v10 = [(HAPAccessoryServer *)v6 identifier];
  v11 = [(HAPAccessoryServer *)v6 category];
  [v9 reportDisconnection:v10 linkType:1 accessoryCategory:v11];

  v12 = [(HAPAccessoryServerIP *)v6 primaryAccessory];
  if (![v12 suspendCapable])
  {
    goto LABEL_14;
  }

  v13 = [v12 suspendedState];
  v14 = objc_autoreleasePoolPush();
  v15 = v6;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v13 != 2)
  {
    if (v17)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v22;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[LPM] Suspend Capable Accessory: Unexpected disconnect", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v23 = [(HAPAccessoryServer *)v15 delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(HAPAccessoryServer *)v15 delegateQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke_428;
      v30[3] = &unk_2786D6CA0;
      v30[4] = v15;
      dispatch_async(v25, v30);
    }

LABEL_14:
    v26 = [v4 invalidateReason];
    [(HAPAccessoryServerIP *)v6 _tearDownSessionAndStartReachabilityWithError:v26];

    v27 = [(HAPAccessoryServerIP *)v6 browser];
    v28 = [(HAPAccessoryServer *)v6 identifier];
    [v27 processPendingBonjourRemoveEvents:v28];

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
  v19 = [(HAPAccessoryServer *)v15 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(HAPAccessoryServer *)v15 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerIP__httpClientDidCloseConnectionDueToServer___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = v15;
    dispatch_async(v21, block);
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

- (void)httpClientDidCloseConnectionDueToServer:(id)a3
{
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  v6 = [(HAPAccessoryServer *)self clientQueue];
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
  v7[5] = v4;
  v9 = v4;
  dispatch_async(v6, v7);
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

- (void)setPairVerifyCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x231885210](self->_pairVerifyCompletionBlock);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HAPAccessoryServerIP_setPairVerifyCompletionBlock___block_invoke;
    block[3] = &unk_2786D65D8;
    block[4] = self;
    v17 = v6;
    dispatch_async(v7, block);
  }

  else if (!v4)
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
  v13 = v4;
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

- (void)invokePairVerifyCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPAccessoryServerIP_invokePairVerifyCompletionBlock___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_invokePairVerifyCompletionBlock:(id)a3
{
  v5 = a3;
  v4 = [(HAPAccessoryServerIP *)self pairVerifyCompletionBlock];
  [(HAPAccessoryServerIP *)self setPairVerifyCompletionBlock:0];
  if (v4)
  {
    (v4)[2](v4, v5);
  }

  [(HAPAccessoryServerIP *)self setEconnresetRetryInProgress:0];
}

- (void)setSecuritySessionOpen:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_securitySessionOpen = a3;

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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  return self->_httpClient && self->_pairingSession && ![(HAPAccessoryServerIP *)self isEstablishingSecureConnection]|| self->_unitTest_establishedSession;
}

- (BOOL)isSessionEstablished
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HAPAccessoryServer *)self clientQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HAPAccessoryServerIP_isSessionEstablished__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __44__HAPAccessoryServerIP_isSessionEstablished__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isSessionEstablished];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_updateAccessories:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48 = [MEMORY[0x277CBEB18] array];
  v46 = v4;
  v52 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  v5 = MEMORY[0x277CBEB18];
  v6 = [(HAPAccessoryServer *)self accessories];
  v49 = [v5 arrayWithArray:v6];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = self;
  v7 = [(HAPAccessoryServer *)self accessories];
  v51 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v51)
  {
    v50 = *v62;
    obj = v7;
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
            v16 = [v9 instanceID];
            v17 = [v15 instanceID];
            v18 = [v16 isEqualToNumber:v17];

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
            [v48 addObject:v9];
            [v10 removeObject:v15];
            [v49 removeObject:v9];
            goto LABEL_17;
          }

          v39 = objc_autoreleasePoolPush();
          v40 = v45;
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
          v19 = v48;
          goto LABEL_40;
        }

LABEL_17:
      }

      v7 = obj;
      v51 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  v19 = v48;
  if ([v49 count])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v45;
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
    v32 = [(HAPAccessoryServer *)v45 accessories];

    if (v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v45;
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

    [v48 addObjectsFromArray:v52];
  }

  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v48];
  [(HAPAccessoryServer *)v45 setAccessories:v37];
  v38 = 1;
LABEL_40:

  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

- (void)_updateProtocolVersionFromPrimaryAccessory:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [a3 services];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      v10 = [v9 type];
      v11 = [v10 isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
    v13 = [v12 characteristics];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        v19 = [v18 type];
        v20 = [v19 isEqualToString:@"00000037-0000-1000-8000-0026BB765291"];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      v21 = [v18 value];

      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v21];
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
      v21 = v13;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self;
  v4 = [(HAPAccessoryServer *)self accessories];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 conformsToProtocol:v8[94]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v11 = v4;
          v12 = [v10 accessoryServerDidRequestCharacteristicsToRegisterForNotifications:v25];
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
                  [v3 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v14);
          }

          v4 = v11;
          v8 = &selRef_initWithName_activity_block_;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__HAPAccessoryServerIP___registerForInternalCharacteristicNotifications__block_invoke;
    v26[3] = &unk_2786D5B30;
    v26[4] = v25;
    v18 = MEMORY[0x231885210](v26);
    v19 = objc_autoreleasePoolPush();
    v20 = v25;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Registering events for characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [(HAPAccessoryServer *)v20 clientQueue];
    [(HAPAccessoryServerIP *)v20 enableEvents:1 forCharacteristics:v3 withCompletionHandler:v18 queue:v23];
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

- (void)_parseAttributeDatabase:(id)a3 transaction:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:0];
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
  v12 = self;
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
  v16 = v12;
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
      v20 = v6;
    }

    *buf = 138543618;
    v79 = v18;
    v80 = 2112;
    v81 = v20;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Parsing attribute database: %@", buf, 0x16u);
  }

  v69 = v10;

  objc_autoreleasePoolPop(v15);
  v21 = [(__CFString *)v6 objectForKeyedSubscript:@"accessories"];
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
  v67 = v7;
  v68 = v6;
  v29 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v21, "count")}];
  v30 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v21;
  obj = v21;
  v31 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  v72 = v30;
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

      v37 = [v33 instanceID];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v39 = [v37 isEqualToNumber:v38];

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

      v40 = [v33 instanceID];
      v41 = [v29 containsObject:v40];

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

      v42 = [v33 instanceID];
      [v29 addObject:v42];

      [v33 setServer:v16];
      v30 = v72;
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
      v7 = v67;
      v6 = v68;
      goto LABEL_42;
    }

    v33 = 0;
LABEL_41:
    v7 = v67;
    v6 = v68;
LABEL_42:
    v30 = v72;

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

    v7 = v67;
    v6 = v68;
  }

  if ([v30 count] < 0xC9)
  {
    if ([(HAPAccessoryServerIP *)v16 _updateAccessories:v30])
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
      v63 = v62 = v7;
      *buf = 138543362;
      v79 = v63;
      _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessories, returning invalid response error", buf, 0xCu);

      v7 = v62;
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
      v59 = v58 = v7;
      *buf = 138543362;
      v79 = v59;
      _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Accessory Server exceeds maximum number of allowed accessories", buf, 0xCu);

      v7 = v58;
    }

    v60 = 49;
  }

  objc_autoreleasePoolPop(v55);
  v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v60];
  v30 = v72;
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

- (BOOL)_parseTXTRecordDictionary:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_dataForKey:@"id"];
  if (!v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
  v9 = [v4 hmf_dataForKey:@"ff"];

  if (v9)
  {
    [v9 bytes];
    [v9 length];
    p_featureFlags = &self->_featureFlags;
    SNScanF();
  }

  v10 = [v4 hmf_dataForKey:{@"md", p_featureFlags}];

  if (!v10)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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

  v12 = [v4 hmf_dataForKey:@"sv"];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    [(HAPAccessoryServerIP *)self setSourceVersion:v13];
  }

  else
  {
    [(HAPAccessoryServerIP *)self setSourceVersion:0];
  }

  v21 = [v4 hmf_dataForKey:@"pv"];

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
        v42 = self;
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
        if ([(HAPAccessoryServerIP *)v42 isPaired])
        {
          [(HAPAccessoryServer *)v42 setReachabilityChangedReason:@"Internal"];
          [(HAPAccessoryServer *)v42 setReachable:0];
          [(HAPAccessoryServerIP *)v42 _tearDownSession];
        }

        goto LABEL_50;
      }
    }
  }

  v24 = [v4 hmf_dataForKey:@"w#"];

  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
    v26 = [(__CFString *)v25 longLongValue];
    if ((v26 - 1) >= 0xFFFFFFFF)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
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

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if ([(HAPAccessoryServer *)self wakeNumber]!= v27 && [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateWakeNumber_])
  {
    v28 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HAPAccessoryServerIP__parseTXTRecordDictionary___block_invoke;
    block[3] = &unk_2786D63C8;
    block[4] = self;
    block[5] = v27;
    dispatch_async(v28, block);
  }

  [(HAPAccessoryServer *)self setWakeNumber:v27];
  v21 = [v4 hmf_dataForKey:@"c#"];

  if (!v21)
  {
    if (v27)
    {
      goto LABEL_36;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
  v29 = [(__CFString *)v22 longLongValue];
  if ((v29 - 1) >= 0xFFFFFFFF)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = self;
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

  [(HAPAccessoryServer *)self setConfigNumber:v29];

LABEL_36:
  v34 = [v4 hmf_dataForKey:@"s#"];

  if (v34)
  {
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v34 encoding:4];
    v36 = [v35 longLongValue];
    if ((v36 - 0x100000000) <= 0xFFFFFFFF00000000)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v99 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@TXT record key 's#' has invalid state number", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v36 = 1;
    }

    [(HAPAccessoryServer *)self setStateNumber:v36];
  }

  else
  {
    v49 = objc_autoreleasePoolPush();
    v50 = self;
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
    [(HAPAccessoryServer *)v50 setStateNumber:1];
  }

  v53 = [v4 hmf_dataForKey:@"sf"];

  if (v53)
  {
    v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v53 encoding:4];
    v55 = [v54 longLongValue];
  }

  else
  {
    v55 = 0;
  }

  v56 = objc_autoreleasePoolPush();
  v57 = self;
  v58 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = HMFGetLogIdentifier();
    v60 = [(HAPAccessoryServerIP *)v57 isPaired];
    v61 = @"No";
    *buf = 138543874;
    v99 = v59;
    if (v60)
    {
      v61 = @"Yes";
    }

    v100 = 2112;
    v101 = v61;
    v102 = 2048;
    v103 = v55;
    _os_log_impl(&dword_22AADC000, v58, OS_LOG_TYPE_DEBUG, "%{public}@Paired: %@, Setting status flags to %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v56);
  [(HAPAccessoryServerIP *)v57 setStatusFlags:v55];
  if (![(HAPAccessoryServerIP *)v57 isWacAccessory]|| [(HAPAccessoryServerIP *)v57 isWacLegacy])
  {
    [(HAPAccessoryServer *)v57 setHasPairings:(v55 & 1) == 0];
  }

  v62 = [v4 hmf_dataForKey:@"ci"];

  if (v62)
  {
    v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v62 encoding:4];
    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v63, "longLongValue")}];
    [(HAPAccessoryServer *)v57 setCategory:v64];
  }

  else
  {
    v65 = objc_autoreleasePoolPush();
    v66 = v57;
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

  v69 = [v4 hmf_dataForKey:@"sh"];

  if (v69)
  {
    v70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v69 encoding:4];
    v71 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
    v96 = 0;
    v72 = [v71 reverseTransformedValue:v70 format:12 error:&v96];
    v73 = v96;

    if (v72)
    {
      [(HAPAccessoryServer *)v57 setSetupHash:v72];
      v74 = objc_autoreleasePoolPush();
      v75 = v57;
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
    v79 = v57;
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

  [(HAPAccessoryServer *)v57 setCompatibilityFeatures:0];
  v82 = [v4 hmf_dataForKey:@"fe"];

  if (v82)
  {
    v83 = [objc_alloc(*(v7 + 3240)) initWithData:v82 encoding:4];
    v84 = [(__CFString *)v83 longLongValue];
    if ((v84 - 0x100000000) > 0xFFFFFFFF00000000)
    {
      [(HAPAccessoryServer *)v57 setCompatibilityFeatures:v84];
    }

    else
    {
      v85 = objc_autoreleasePoolPush();
      v86 = v57;
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
    v90 = v57;
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
  v3 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v4 = [v3 objectForKeyedSubscript:@"txt"];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB78] dictionaryFromTXTRecordData:v4];
    if (v5)
    {
      if ([(HAPAccessoryServerIP *)self _parseTXTRecordDictionary:v5])
      {
        v6 = [(HAPAccessoryServer *)self identifier];

        if (v6)
        {
          v7 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v13 = objc_autoreleasePoolPush();
        v19 = self;
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
      v18 = self;
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
      v14 = self;
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
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HAPAccessoryServerIP *)v9 bonjourDeviceInfo];
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate accessory because no TXT record data was found in BonjourDeviceInfo: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_processEvent:(id)a3 matchedCharacteristic:(id *)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(HAPAccessoryServerIP *)self _isSessionEstablished])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v29;
      v88 = 2112;
      v89 = v6;
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
    v27 = self;
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

  v7 = [(__CFString *)v6 hmf_numberForKey:@"aid"];
  if (v7)
  {
    v8 = [(__CFString *)v6 hmf_numberForKey:@"iid"];
    if (v8)
    {
      v9 = [(__CFString *)v6 objectForKeyedSubscript:@"value"];
      v10 = v9;
      if (v9)
      {
        v75 = v9;
        v11 = [(HAPAccessoryServer *)self accessories];
        v77 = v7;
        v12 = [v11 hmf_firstObjectWithInstanceID:v7];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v74 = v12;
        v13 = [v12 services];
        v14 = [v13 countByEnumeratingWithState:&v81 objects:v85 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v81 + 1) + 8 * v17) characteristics];
            v19 = [v18 hmf_firstObjectWithInstanceID:v8];

            if (v19)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v81 objects:v85 count:16];
              if (v15)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          if ([v19 shouldValidateValueAfterReading])
          {
            v41 = [v19 metadata];
            v42 = [v41 format];
            v43 = HAPCharacteristicFormatFromString(v42);

            v10 = v75;
            v7 = v77;
            if (!v43)
            {
              v44 = objc_autoreleasePoolPush();
              v45 = self;
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
            v56 = self;
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
              v63 = _parseNotificationContextFromCharacteristicResponse(v6);
              [v19 setNotificationContext:v63];

              v64 = objc_autoreleasePoolPush();
              v65 = self;
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
            if (!a4)
            {
              v24 = 1;
              goto LABEL_55;
            }

            v54 = [v19 copy];
            [(__CFString *)v54 setValue:v48];
            v69 = [v19 service];
            [(__CFString *)v54 setService:v69];

            v70 = v54;
            *a4 = v54;
            v24 = 1;
LABEL_54:

LABEL_55:
            goto LABEL_56;
          }

          v54 = v62;
          v78 = v48;
          v55 = objc_autoreleasePoolPush();
          v56 = self;
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
        v21 = self;
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
        v50 = self;
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
      v37 = self;
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
    v32 = self;
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

- (void)httpClient:(id)a3 didReceiveEvent:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v9 = [(HAPAccessoryServer *)self identifier];
  v10 = [(HAPAccessoryServer *)self category];
  [v8 reportIncomingIPEvent:v9 accessoryCategory:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 objectForKeyedSubscript:@"characteristics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x277CBEB18] array];
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
              v32 = self;
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

            [v12 addObject:v19];
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

      [(HAPAccessoryServerIP *)self _handleUpdatesForCharacteristics:v12 stateNumber:0];
LABEL_21:
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
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
    v22 = self;
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

- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v59 = a3;
  v84 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v56 = a6;
  v11 = v9;
  v57 = v11;
  if (self)
  {
    v12 = v11;
    v54 = self;
    v55 = v10;
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
      v17 = 0;
      v18 = *v71;
LABEL_4:
      v19 = 0;
      v20 = v16;
      v21 = v17;
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

        v24 = [v23 service];
        v25 = [v24 accessory];
        v17 = [v25 instanceID];

        if (!v17)
        {
          v30 = objc_autoreleasePoolPush();
          self = v54;
          v35 = v54;
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

        v77[0] = v17;
        v76[0] = @"aid";
        v76[1] = @"iid";
        v26 = [v23 instanceID];
        v77[1] = v26;
        v76[2] = @"ev";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:v59];
        v77[2] = v27;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];

        v13 = v22;
        [v22 addObject:v16];
        ++v19;
        v20 = v16;
        v21 = v17;
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
      self = v54;
      v31 = v54;
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
    v17 = 0;
LABEL_13:

    v28 = v13;
    v29 = 0;
    v21 = v17;
    v20 = v16;
    self = v54;
LABEL_21:

    v10 = v55;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v38 = v29;
  if (!v28)
  {
    v41 = v56;
    if (!v10)
    {
      goto LABEL_36;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HAPAccessoryServerIP__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D65D8;
    v69 = v10;
    v68 = v38;
    dispatch_async(v56, block);

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
      v64 = v59;
      v63 = v10;
      v41 = v56;
      v62 = v56;
      [(HAPAccessoryServerIP *)self sendPUTRequestToURL:v40 request:v39 serializationType:1 timeout:v60 completionHandler:10.0];
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = HMFGetLogIdentifier();
        *v82 = 138543362;
        v83 = v52;
        _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing enableEvents", v82, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v41 = v56;
      [(HAPAccessoryServerIP *)v50 _queueEnableEvents:v59 forCharacteristics:v57 withCompletionHandler:v10 queue:v56];
      [(HAPAccessoryServerIP *)v50 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.events"];
    }

    goto LABEL_36;
  }

  v43 = objc_autoreleasePoolPush();
  v44 = self;
  v45 = v43;
  v46 = v44;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = HMFGetLogIdentifier();
    *v82 = 138543362;
    v83 = v48;
    _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Modifying 0 characteristics, bailing", v82, 0xCu);
  }

  objc_autoreleasePoolPop(v45);
  v41 = v56;
  if (v10)
  {
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __85__HAPAccessoryServerIP__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_340;
    v65[3] = &unk_2786D6490;
    v66 = v10;
    dispatch_async(v56, v65);
    v42 = v66;
    goto LABEL_32;
  }

LABEL_36:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HAPAccessoryServerIP_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  block[3] = &unk_2786D6510;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    goto LABEL_23;
  }

  v26 = self;
  v27 = v7;
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = v6;
  obj = v6;
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
      v14 = [v13 service];
      v15 = [v14 type];
      if ([v15 isEqualToString:@"00000125-0000-1000-8000-0026BB765291"])
      {
        v16 = [v13 type];
        v17 = [v16 isEqualToString:@"00000126-0000-1000-8000-0026BB765291"];

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

      v19 = [v14 type];
      if (([v19 isEqualToString:@"00000125-0000-1000-8000-0026BB765291"] & 1) == 0)
      {
        goto LABEL_14;
      }

      v20 = [v13 type];
      v21 = [v20 isEqualToString:@"000000E7-0000-1000-8000-0026BB765291"];

      if (v21)
      {
        v19 = [HAPCharacteristicEvent eventWithCharacteristic:v13];
        [v29 addObject:v19];
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
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 postNotificationName:@"HAPCharacteristicEventNotification" object:0 userInfo:v22];
  }

  v7 = v27;
  if ([v8 count])
  {
    v24 = [(HAPAccessoryServer *)v26 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HAPAccessoryServerIP__handleUpdatesForCharacteristics_stateNumber___block_invoke;
    block[3] = &unk_2786D7078;
    block[4] = v26;
    v32 = v8;
    v33 = v27;
    dispatch_async(v24, block);
  }

  v6 = v28;
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

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPAccessoryServerIP_handleUpdatesForCharacteristics_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleHTTPClientUnavailableErrorWithCompletion:(id)a3 serializationType:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
  v6[2](v6, 0, a4, 503, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendGETRequestToURL:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HAPAccessoryServerIP *)self httpClient];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v27 = [(HAPAccessoryServerIP *)v12 httpClient];
      v26 = [v27 peerSocketInfo];
      v15 = [v26 ipAddressStringWithScope];
      v25 = [(HAPAccessoryServerIP *)v12 httpClient];
      v16 = [v25 peerSocketInfo];
      [v16 port];
      v17 = v28 = v11;
      v18 = [(HAPAccessoryServerIP *)v12 httpClient];
      v19 = [v18 clientRequestIdentifier];
      *buf = 138544386;
      v30 = v14;
      v31 = 2114;
      v32 = v8;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v17;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending GET request to '%{public}@' (info: %@:%@ ... CID %@)", buf, 0x34u);

      v11 = v28;
    }

    objc_autoreleasePoolPop(v11);
    v20 = [MEMORY[0x277D0F770] currentActivity];
    if (v20)
    {
      v21 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v22 = [v21 path];
    }

    [(HAPAccessoryServerIP *)v12 _kickConnectionIdleTimer];
    v23 = [(HAPAccessoryServerIP *)v12 httpClient];
    [v23 sendGETRequestToURL:v8 timeout:v9 completionHandler:a4];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:v9 serializationType:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendPOSTRequestToURL:(id)a3 request:(id)a4 serializationType:(unint64_t)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HAPAccessoryServerIP *)self httpClient];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v27 = [(HAPAccessoryServerIP *)v15 httpClient];
      v26 = [v27 peerSocketInfo];
      v18 = [v26 ipAddressStringWithScope];
      v25 = [(HAPAccessoryServerIP *)v15 httpClient];
      v24 = [v25 peerSocketInfo];
      v19 = [v24 port];
      [(HAPAccessoryServerIP *)v15 httpClient];
      v20 = v29 = v14;
      [v20 clientRequestIdentifier];
      v21 = v28 = a5;
      *buf = 138544386;
      v31 = v17;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Sending POST request to '%@' (info: %@:%@ ... CID %@)", buf, 0x34u);

      a5 = v28;
      v14 = v29;
    }

    objc_autoreleasePoolPop(v14);
    [(HAPAccessoryServerIP *)v15 _kickConnectionIdleTimer];
    v22 = [(HAPAccessoryServerIP *)v15 httpClient];
    [v22 sendPOSTRequestToURL:v10 withRequestObject:v11 serializationType:a5 completionHandler:v12];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:v12 serializationType:a5];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendPUTRequestToURL:(id)a3 request:(id)a4 serializationType:(unint64_t)a5 timeout:(double)a6 completionHandler:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(HAPAccessoryServerIP *)self httpClient];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = MEMORY[0x277CBEB98];
      v40 = v19;
      v41 = @"authData";
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v35 = [v20 setWithArray:v37];
      [v13 secureDescriptionWithBlacklistKeys:v35];
      v21 = v36 = v13;
      v34 = [(HAPAccessoryServerIP *)v17 httpClient];
      v33 = [v34 peerSocketInfo];
      v22 = [v33 ipAddressStringWithScope];
      v32 = [(HAPAccessoryServerIP *)v17 httpClient];
      [v32 peerSocketInfo];
      v23 = v39 = a5;
      [v23 port];
      v24 = v38 = v16;
      v25 = [(HAPAccessoryServerIP *)v17 httpClient];
      v26 = [v25 clientRequestIdentifier];
      *buf = 138544642;
      v43 = v40;
      v44 = 2114;
      v45 = v12;
      v46 = 2114;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      v50 = 2112;
      v51 = v24;
      v52 = 2112;
      v53 = v26;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Sending PUT request to '%{public}@' with body %{public}@ (info: %@:%@ ... CID %@)", buf, 0x3Eu);

      v16 = v38;
      a5 = v39;

      v13 = v36;
    }

    objc_autoreleasePoolPop(v16);
    v27 = [MEMORY[0x277D0F770] currentActivity];
    if (v27)
    {
      v28 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      v29 = [v28 path];
    }

    [(HAPAccessoryServerIP *)v17 _kickConnectionIdleTimer];
    v30 = [(HAPAccessoryServerIP *)v17 httpClient];
    [v30 sendPUTRequestToURL:v12 withRequestObject:v13 serializationType:a5 timeout:v14 completionHandler:a6];
  }

  else
  {
    [(HAPAccessoryServerIP *)self handleHTTPClientUnavailableErrorWithCompletion:v14 serializationType:a5];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleWriteResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 error:(id)a6 requestTuples:(id)a7 completion:(id)a8
{
  v212 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v207 = v20;
    v208 = 2114;
    *v209 = v15;
    *&v209[8] = 1026;
    *&v209[10] = a5;
    *&v209[14] = 2082;
    *&v209[16] = HTTPGetReasonPhrase();
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received write response with %{public}@ and '%{public}d %{public}s' HTTP status code", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v17);
  v173 = [MEMORY[0x277D0F770] currentActivity];
  if (v14)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v18;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v207 = v24;
      v208 = 2114;
      *v209 = v14;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic because the HTTP request returned the following error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [v15 count];
    [v14 domain];

    [v14 code];
    if ([v14 code] == -6723 || objc_msgSend(v14, "code") == -6753)
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
      v29 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:v14];
    }

    else
    {
      v29 = v14;
    }

    v34 = v29;
    [(HAPAccessoryServerIP *)v22 _tearDownSessionAndStartReachabilityWithError:v14];
    v35 = 0;
    if (!v16)
    {
      goto LABEL_25;
    }

LABEL_24:
    v16[2](v16, v35, v34);
    goto LABEL_25;
  }

  v171 = v16;
  if (a5 == 207 || a5 == 200)
  {
    v30 = v13;
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

    v33 = a4 == 1 && v17 != 0;
  }

  else
  {
    v33 = 0;
  }

  if (a5 == 207 || a5 == 200)
  {
  }

  v170 = a5;
  if (!v33)
  {
    v91 = objc_autoreleasePoolPush();
    v92 = v18;
    v93 = HMFGetOSLogHandle();
    v94 = v93;
    if (a4 == 4 && !v13 && v170 == 204)
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
      v35 = [MEMORY[0x277CBEB18] array];
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v97 = v15;
      v98 = [v97 countByEnumeratingWithState:&v176 objects:v193 count:16];
      if (v98)
      {
        v99 = v98;
        v169 = v15;
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
            v105 = [v104 characteristic];
            v106 = [v104 value];
            [v105 setValue:v106];

            v107 = [v104 characteristic];
            v100 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v107 error:0];

            [v35 addObject:v100];
            v108 = [v104 characteristic];
            [v108 instanceID];

            ++v102;
            v103 = v100;
          }

          while (v99 != v102);
          v99 = [v97 countByEnumeratingWithState:&v176 objects:v193 count:16];
        }

        while (v99);

        v15 = v169;
      }

      v34 = 0;
      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v115 = HMFGetLogIdentifier();
        v116 = HTTPGetReasonPhrase();
        if (a4 - 1 > 3)
        {
          v117 = @"Invalid";
        }

        else
        {
          v117 = off_2786D4CF8[a4 - 1];
        }

        v124 = v117;
        *buf = 138544386;
        v207 = v115;
        v208 = 1026;
        *v209 = v170;
        *&v209[4] = 2082;
        *&v209[6] = v116;
        *&v209[14] = 2114;
        *&v209[16] = v124;
        v210 = 2114;
        v211 = v13;
        _os_log_impl(&dword_22AADC000, v94, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v91);
      v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
      v35 = 0;
    }

    goto LABEL_132;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = v18;
  v39 = HMFGetOSLogHandle();
  v166 = v38;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = HMFGetLogIdentifier();
    v41 = HTTPGetReasonPhrase();
    *buf = 138544130;
    v207 = v40;
    v208 = 1026;
    *v209 = a5;
    *&v209[4] = 2082;
    *&v209[6] = v41;
    *&v209[14] = 2114;
    *&v209[16] = v13;
    _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Characteristic write request responded with '%{public}d %{public}s' HTTP status code %{public}@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v37);
  v42 = v13;
  v43 = v15;
  v44 = [v42 objectForKeyedSubscript:@"characteristics"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v160 = v44;
    v109 = v13;
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
    v35 = 0;
    v114 = v110;
    v13 = v109;
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
    v35 = 0;
    v114 = v118;
    goto LABEL_115;
  }

  v152 = v43;
  v161 = [MEMORY[0x277CBEB18] arrayWithArray:v43];
  v158 = [MEMORY[0x277CBEB18] array];
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
      v35 = 0;
    }

    else
    {
      v35 = v158;
    }

    v114 = v152;
    goto LABEL_114;
  }

  v156 = *v190;
  *&v46 = 138544386;
  v149 = v46;
  v153 = v13;
  v168 = v15;
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
      v61 = [v60 characteristic];
      v62 = [v61 service];
      v63 = [v62 accessory];
      v64 = [v63 instanceID];

      if (v64)
      {
        if ([v49 isEqualToNumber:v64])
        {
          v65 = [v61 instanceID];
          v66 = [v174 isEqualToNumber:v65];

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

    v14 = 0;
    v15 = v168;
    v52 = v167;
    if (!v61)
    {
      goto LABEL_108;
    }

    [v55 removeObject:v67];
    if ([v167 intValue])
    {
      v157 = v67;
      v68 = ConvertFromHAPIPStatusErrorCode([v167 integerValue]);
      v69 = [v61 service];
      v70 = [v69 accessory];

      v71 = [v70 server];
      v72 = objc_autoreleasePoolPush();
      v73 = v71;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v150 = HMFGetLogIdentifier();
        [v70 instanceID];
        v75 = v151 = v70;
        v76 = [v61 instanceID];
        v77 = [v61 type];
        *v196 = v149;
        v197 = v150;
        v198 = 2114;
        v199 = v75;
        v200 = 2114;
        v201 = v76;
        v78 = v76;
        v202 = 2114;
        v203 = v77;
        v79 = v77;
        v204 = 2114;
        v205 = v68;
        _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@Response for characteristic write %{public}@/%{public}@/%{public}@ with error: %{public}@", v196, 0x34u);

        v52 = v167;
        v70 = v151;
      }

      objc_autoreleasePoolPop(v72);
      v15 = v168;
    }

    else
    {
      v81 = [v67 includeResponseValue];
      v80 = v165;
      if (!v165)
      {
        if (v81)
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
        v70 = [v67 value];
        [v61 setValue:v70];
        v68 = 0;
        goto LABEL_73;
      }

      if (!v81)
      {
        goto LABEL_72;
      }

      v157 = v67;
      v82 = [v61 metadata];
      v83 = [v82 format];
      v84 = HAPCharacteristicFormatFromString(v83);

      v85 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
      v184 = 0;
      v70 = [v85 reverseTransformedValue:v165 format:v84 error:&v184];
      v68 = v184;

      if (!v68)
      {
        [v61 setValue:v70];
      }
    }

    v80 = v165;
    v67 = v157;
LABEL_73:

    v86 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v61 error:v68];
    [v158 addObject:v86];

    v42 = v162;
    v47 = v164 + 1;
    if (v164 + 1 != v155)
    {
      goto LABEL_38;
    }

    v13 = v153;
    v44 = v159;
    v155 = [obj countByEnumeratingWithState:&v189 objects:buf count:16];
    if (!v155)
    {
      goto LABEL_75;
    }
  }

LABEL_106:

  v61 = 0;
  v67 = 0;
LABEL_107:
  v14 = 0;
  v15 = v168;
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

  v35 = 0;
  v13 = v153;
  v44 = v159;
LABEL_114:

LABEL_115:
  if ([v35 count])
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
      v132 = v14;
      v133 = HMFGetLogIdentifier();
      v134 = HTTPGetReasonPhrase();
      if (a4 - 1 > 3)
      {
        v135 = @"Invalid";
      }

      else
      {
        v135 = off_2786D4CF8[a4 - 1];
      }

      v136 = v135;
      *buf = 138544386;
      v207 = v133;
      v208 = 1026;
      *v209 = v170;
      *&v209[4] = 2082;
      *&v209[6] = v134;
      *&v209[14] = 2114;
      *&v209[16] = v136;
      v210 = 2114;
      v211 = v163;
      _os_log_impl(&dword_22AADC000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse response objects for a write request, the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

      v14 = v132;
    }

    objc_autoreleasePoolPop(v129);
    v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];

    v35 = 0;
  }

  if (v173)
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v35 = v35;
    v137 = [v35 countByEnumeratingWithState:&v180 objects:v194 count:16];
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
            objc_enumerationMutation(v35);
          }

          v141 = *(*(&v180 + 1) + 8 * i);
          v142 = [v141 characteristic];
          [v142 instanceID];

          v143 = [v141 error];
          [v143 domain];

          v144 = [v141 error];
          [v144 code];
        }

        v138 = [v35 countByEnumeratingWithState:&v180 objects:v194 count:16];
      }

      while (v138);
    }
  }

LABEL_132:
  v16 = v171;
  if (v171)
  {
    goto LABEL_24;
  }

LABEL_25:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrepareWriteResponseObject:(id)a3 type:(unint64_t)a4 prepareIdentifier:(id)a5 httpStatus:(int)a6 error:(id)a7 requestTuples:(id)a8 timeout:(double)a9 expiry:(id)a10 queue:(id)a11 originalCompletion:(id)a12 completion:(id)a13
{
  v77 = *MEMORY[0x277D85DE8];
  v70 = a3;
  v68 = a5;
  v20 = a7;
  v67 = a8;
  v66 = a10;
  v69 = a11;
  v21 = a12;
  v22 = a13;
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v72 = v26;
    v73 = 1026;
    *v74 = a6;
    *&v74[4] = 2082;
    *&v74[6] = HTTPGetReasonPhrase();
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received prepare write response with '%{public}d %{public}s' HTTP status code", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = [MEMORY[0x277D0F770] currentActivity];
  if (!v20)
  {
    if (a6 != 200 || (v37 = v70, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v37, a4 != 1) || (isKindOfClass & 1) == 0 || !v37)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v24;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v65 = v27;
        v53 = v21;
        v54 = HMFGetLogIdentifier();
        v55 = HTTPGetReasonPhrase();
        if (a4 - 1 > 3)
        {
          v56 = @"Invalid";
        }

        else
        {
          v56 = off_2786D4CF8[a4 - 1];
        }

        v57 = v56;
        *buf = 138544386;
        v72 = v54;
        v73 = 1026;
        *v74 = a6;
        *&v74[4] = 2082;
        *&v74[6] = v55;
        *&v74[14] = 2114;
        *&v74[16] = v57;
        v75 = 2114;
        v76 = v70;
        _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare write characteristic because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

        v21 = v53;
        v27 = v65;
      }

      objc_autoreleasePoolPop(v50);
      v47 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:0];
      if (v22)
      {
        v22[2](v22, 0, v47);
      }

      v49 = v67;
      v48 = v68;
      goto LABEL_32;
    }

    v39 = [v37 objectForKeyedSubscript:@"status"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 intValue];
      v42 = objc_autoreleasePoolPush();
      v43 = v24;
      v44 = HMFGetOSLogHandle();
      v45 = v44;
      if (!v41)
      {
        v49 = v67;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v72 = v64;
          v73 = 2112;
          *v74 = v67;
          _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_INFO, "%{public}@Performing execute write for inCharacteristicWriteRequestTuples %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        v48 = v68;
        v58 = v66;
        [(HAPAccessoryServerIP *)v43 _performExecuteWriteValues:v67 prepareIdentifier:v68 timeout:v66 expiry:v69 queue:v21 completionHandler:a9];
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
      v49 = v67;
      v48 = v68;
      if (v22)
      {
        v22[2](v22, 0, v47);
      }
    }

    else
    {
      v60 = objc_autoreleasePoolPush();
      v61 = v24;
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

      v49 = v67;
      v48 = v68;
    }

    v58 = v66;
LABEL_43:

    goto LABEL_33;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = v24;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v31;
    v73 = 2114;
    *v74 = v20;
    _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare write characteristic because the HTTP request returned the following error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  [v20 domain];

  [v20 code];
  if ([v20 code] == -6723 || objc_msgSend(v20, "code") == -6753)
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
    v36 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:v20];
  }

  else
  {
    v36 = v20;
  }

  v47 = v36;
  v48 = v68;
  [(HAPAccessoryServerIP *)v29 _tearDownSessionAndStartReachabilityWithError:v20];
  v49 = v67;
  if (v22)
  {
    v22[2](v22, 0, v47);
  }

LABEL_32:
  v58 = v66;
LABEL_33:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_performExecuteWriteValues:(id)a3 prepareIdentifier:(id)a4 timeout:(double)a5 expiry:(id)a6 queue:(id)a7 completionHandler:(id)a8
{
  v68[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v44 = a6;
  v16 = a7;
  v17 = a8;
  v62 = 0;
  v45 = [(HAPAccessoryServerIP *)self _serializeCharacteristicWriteRequestTuples:v14 error:&v62];
  v18 = v62;
  v19 = v18;
  if (v17 && v16 && v18)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D65D8;
    v61 = v17;
    v19 = v19;
    v60 = v19;
    dispatch_async(v16, block);

    v20 = v61;
LABEL_27:

    goto LABEL_28;
  }

  if (v15)
  {
    v67[0] = @"characteristics";
    v67[1] = @"pid";
    v68[0] = v45;
    v68[1] = v15;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    objc_initWeak(&location, self);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_2;
    v49[3] = &unk_2786D2760;
    objc_copyWeak(v54, &location);
    v50 = v14;
    v54[1] = *&a5;
    v21 = v44;
    v51 = v21;
    queue = v16;
    v52 = queue;
    v39 = v17;
    v53 = v39;
    v43 = MEMORY[0x231885210](v49);
    v42 = [@"/" stringByAppendingPathComponent:@"characteristics"];
    if (a5 <= 0.0)
    {
      a5 = 10.0;
    }

    if (v21)
    {
      [(HAPAccessoryServerIP *)self remainingTTLForExpiry:v21];
      v23 = v22;
      context = objc_autoreleasePoolPush();
      v24 = self;
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
        v34 = v24;
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

        if (v16 != 0 && v17 != 0)
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

      if (v23 < a5)
      {
        a5 = v23;
      }
    }

    v27 = v42;
    [(HAPAccessoryServerIP *)self sendPUTRequestToURL:v42 request:v20 serializationType:1 timeout:v43 completionHandler:a5];
LABEL_26:

    objc_destroyWeak(v54);
    objc_destroyWeak(&location);
    goto LABEL_27;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
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

  if (v16 != 0 && v17 != 0)
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __108__HAPAccessoryServerIP__performExecuteWriteValues_prepareIdentifier_timeout_expiry_queue_completionHandler___block_invoke_283;
    v56[3] = &unk_2786D65D8;
    v58 = v17;
    v19 = v32;
    v57 = v19;
    dispatch_async(v16, v56);

    v20 = v58;
    goto LABEL_27;
  }

  v19 = v32;
LABEL_28:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_serializeCharacteristicWriteRequestTuples:(void *)a3 error:
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v99 = a1;
  if (!a1)
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
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (!v97)
  {
    v100 = 0;
    v35 = 0;
    goto LABEL_50;
  }

  v100 = 0;
  v96 = *v103;
  *&v7 = 138543362;
  v89 = v7;
  v90 = a3;
  v91 = v6;
  do
  {
    v12 = 0;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v100;
    do
    {
      if (*v103 != v96)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v102 + 1) + 8 * v12);
      v100 = [v17 value];

      v10 = [v17 characteristic];

      v18 = [v10 service];
      v19 = [v18 accessory];
      v9 = [v19 instanceID];

      if (v10)
      {
        v20 = v9 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v68 = objc_autoreleasePoolPush();
        v69 = v99;
        v70 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = HMFGetLogIdentifier();
          *buf = 138544130;
          v108 = v71;
          v109 = 2112;
          v110 = v100;
          v111 = 2112;
          v112 = v10;
          v113 = 2112;
          v114 = v9;
          _os_log_impl(&dword_22AADC000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize characteristic write requests because the tuple contained a value of '%@' for characteristic '%@' with an accessory instance ID of '%@'", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v68);
        v35 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
LABEL_45:
        v8 = v13;
LABEL_49:
        a3 = v90;
        v6 = v91;
        goto LABEL_50;
      }

      if (![v10 shouldValidateValueAfterReading])
      {
        v23 = 12;
LABEL_18:
        v33 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
        v101 = 0;
        v34 = [v33 transformedValue:v100 format:v23 error:&v101];
        v35 = v101;

        v11 = v34;
        if (v35)
        {
          goto LABEL_42;
        }

        goto LABEL_19;
      }

      v21 = [v10 metadata];
      v22 = [v21 format];
      v23 = HAPCharacteristicFormatFromString(v22);

      if (v23)
      {
        goto LABEL_18;
      }

      v24 = MEMORY[0x277CCAAA0];
      v106 = v100;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
      v26 = [v24 isValidJSONObject:v25];

      v27 = objc_autoreleasePoolPush();
      v28 = v99;
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
        v32 = v100;

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
          v73 = v99;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v75 = v9;
            v76 = v10;
            v78 = v77 = v11;
            *buf = 138543874;
            v108 = v78;
            v109 = 2112;
            v110 = v100;
            v111 = 2112;
            v112 = v35;
            _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform characteristic value '%@' with error: %@", buf, 0x20u);

            v11 = v77;
            v10 = v76;
            v9 = v75;
          }

          objc_autoreleasePoolPop(v72);
          goto LABEL_45;
        }
      }

LABEL_19:
      v8 = [MEMORY[0x277CBEB38] dictionary];

      [v8 setObject:v9 forKeyedSubscript:@"aid"];
      v36 = [v10 instanceID];
      [v8 setObject:v36 forKeyedSubscript:@"iid"];

      [v8 setObject:v11 forKeyedSubscript:@"value"];
      if ([v17 includeResponseValue])
      {
        v37 = [v17 characteristic];
        v38 = [v37 properties];

        if ((v38 & 0x80) == 0)
        {
          v79 = objc_autoreleasePoolPush();
          v80 = v99;
          v81 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v83 = v82 = v11;
            *buf = 138543874;
            v108 = v83;
            v109 = 2112;
            v110 = v10;
            v111 = 2112;
            v112 = v9;
            _os_log_impl(&dword_22AADC000, v81, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize characteristic write requests because the tuple requires a write response value but the characteristic '%@' on accessory with instance ID '%@' does not support it", buf, 0x20u);

            v11 = v82;
          }

          objc_autoreleasePoolPop(v79);
          v35 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
          goto LABEL_49;
        }

        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"r"];
      }

      v39 = [v17 authorizationData];
      v40 = [v39 length];

      if (v40)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v99;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v93 = v9;
          v44 = v10;
          v46 = v45 = v11;
          v47 = [v17 authorizationData];
          v48 = [v47 length];
          *buf = 138543618;
          v108 = v46;
          v109 = 2048;
          v110 = v48;
          _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@Appending authorization data to characteristic write requests with length: %tu", buf, 0x16u);

          v11 = v45;
          v10 = v44;
          v9 = v93;
        }

        objc_autoreleasePoolPop(v41);
        v49 = [v17 authorizationData];
        v50 = [v49 base64EncodedStringWithOptions:0];
        [v8 setObject:v50 forKeyedSubscript:@"authData"];
      }

      v51 = [v17 contextData];
      v52 = [v51 length];

      if (v52)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = v99;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          [v17 contextData];
          v57 = v94 = v11;
          [v17 contextData];
          v92 = v53;
          v58 = v9;
          v60 = v59 = v10;
          v61 = [v60 length];
          *buf = 138543874;
          v108 = v56;
          v109 = 2112;
          v110 = v57;
          v111 = 2048;
          v112 = v61;
          _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_INFO, "%{public}@Appending context data %@ to characteristic write requests with length: %tu", buf, 0x20u);

          v10 = v59;
          v9 = v58;
          v53 = v92;

          v11 = v94;
        }

        objc_autoreleasePoolPop(v53);
        v62 = [v17 contextData];
        v63 = [v62 base64EncodedStringWithOptions:0];
        [v8 setObject:v63 forKeyedSubscript:@"ctxData"];
      }

      [v98 addObject:v8];
      ++v12;
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v64 = v9;
      v65 = v10;
      v16 = v100;
    }

    while (v97 != v12);
    v67 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
    v35 = 0;
    a3 = v90;
    v6 = v91;
    v10 = v65;
    v9 = v64;
    v97 = v67;
  }

  while (v67);
LABEL_50:

  if (a3)
  {
    v84 = v35;
    *a3 = v35;
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

- (void)_performTimedWriteValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v70 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v35 = a5;
  queue = a6;
  v11 = a7;
  v68 = 0;
  v37 = HMFRandomDataWithLength();
  [v37 getBytes:&v68 length:8];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v68];
  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:&unk_283EA9608 forKeyedSubscript:@"ttl"];
  [v12 setObject:v38 forKeyedSubscript:@"pid"];
  if (!v11 || v12)
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
    v14 = v34;
    v58 = v14;
    v63[1] = *&a4;
    v15 = v35;
    v59 = v15;
    v16 = queue;
    v60 = v16;
    v17 = v11;
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
    v55[1] = *&a4;
    v49 = v15;
    v20 = v16;
    v50 = v20;
    v21 = v17;
    v52 = v21;
    v51 = v12;
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
    v22 = [MEMORY[0x277D0F770] currentActivity];
    if (v22)
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
            v28 = v22;
            v29 = [v27 characteristic];
            [v29 instanceID];

            ++v26;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v39 objects:v69 count:16];
        }

        while (v24);
      }
    }

    v30 = [(HAPAccessoryServerIP *)self clientOperationQueue];
    [v30 addOperation:v13];

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
    v67 = v11;
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

- (void)_performWriteValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v63[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v33 = a5;
  queue = a6;
  v13 = a7;
  v61 = 0;
  v32 = v12;
  v34 = [(HAPAccessoryServerIP *)self _serializeCharacteristicWriteRequestTuples:v12 error:&v61];
  v14 = v61;
  v31 = v14;
  if (v13 && v14)
  {
    v15 = v14;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D65D8;
    v60 = v13;
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
    v18 = v12;
    v52 = v18;
    v56[1] = *&a4;
    v19 = v33;
    v53 = v19;
    v20 = queue;
    v54 = v20;
    v21 = v13;
    v55 = v21;
    v22 = MEMORY[0x231885210](v51);
    v23 = objc_alloc_init(MEMORY[0x277D0F780]);
    objc_initWeak(&from, v23);
    v24 = [MEMORY[0x277D0F770] currentActivity];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __83__HAPAccessoryServerIP__performWriteValues_timeout_expiry_queue_completionHandler___block_invoke_4;
    v40[3] = &unk_2786D27B0;
    objc_copyWeak(&v48, &from);
    objc_copyWeak(v49, &location);
    v41 = v18;
    v49[1] = *&a4;
    v42 = v19;
    v25 = v20;
    v43 = v25;
    v26 = v21;
    v46 = v26;
    v27 = v24;
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
    v29 = [(HAPAccessoryServerIP *)self clientOperationQueue];
    [v29 addOperation:v23];

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

- (void)_handleWriteECONNResetError:(id)a3 writeRequests:(id)a4 responses:(id)a5 timeout:(double)a6 expiry:(id)a7 queue:(id)a8 completionHandler:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v32 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [v16 userInfo];
  v22 = [v21 hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  v23 = [v22 domain];
  if ([v23 isEqual:*MEMORY[0x277CCA590]] && objc_msgSend(v22, "code") == 54)
  {
    v24 = [(HAPAccessoryServerIP *)self econnresetRetryInProgress];

    if (!v24)
    {
      v25 = [(HAPAccessoryServer *)self clientQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke;
      v38[3] = &unk_2786D4060;
      v38[4] = self;
      v26 = &v39;
      v31 = v17;
      v39 = v17;
      *&v42[1] = a6;
      v27 = &v40;
      v40 = v32;
      v28 = &v41;
      v41 = v19;
      v29 = v42;
      v42[0] = v20;
      v30 = v38;
LABEL_8:
      dispatch_async(v25, v30);

      v17 = v31;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v20)
  {
    v31 = v17;
    [(HAPAccessoryServerIP *)self _indicateSessionActivityWithReason:@"Write"];
    v25 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HAPAccessoryServerIP__handleWriteECONNResetError_writeRequests_responses_timeout_expiry_queue_completionHandler___block_invoke_265;
    block[3] = &unk_2786D5C48;
    block[4] = self;
    v26 = &v34;
    v34 = v19;
    v27 = &v37;
    v37 = v20;
    v28 = &v35;
    v35 = v18;
    v29 = &v36;
    v36 = v16;
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

- (void)_writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    if ([v12 count])
    {
      if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
      {
        v16 = [(HAPAccessoryServer *)self requiresTimedWrite:v12];
        v17 = objc_autoreleasePoolPush();
        v18 = self;
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
            v46 = v12;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristicWriteRequestTuples %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [(HAPAccessoryServerIP *)v18 _performTimedWriteValues:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
        }

        else
        {
          if (v20)
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v36;
            v45 = 2114;
            v46 = v12;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristicWriteRequestTuples %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [(HAPAccessoryServerIP *)v18 _performWriteValues:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v35;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing write", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        [(HAPAccessoryServerIP *)v33 _queueWriteCharacteristicValues:v12 timeout:v13 expiry:v14 queue:v15 withCompletionHandler:a4];
        [(HAPAccessoryServerIP *)v33 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.write"];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v31;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Writing 0 characteristics, bailing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      if (v15)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __90__HAPAccessoryServerIP__writeCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_254;
        v38[3] = &unk_2786D6490;
        v39 = v15;
        dispatch_async(v14, v38);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = MEMORY[0x231885210](v15);
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
    if (v15)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__HAPAccessoryServerIP__writeCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v42 = v15;
      v41 = v27;
      dispatch_async(v14, block);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc(MEMORY[0x277D0F770]);
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x231884350](self, a2);
  v20 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 3273];
  v34 = [v17 initWithName:v20];

  v21 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HAPAccessoryServerIP_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D2710;
  v27 = v13;
  v28 = self;
  v33 = a4;
  v29 = v14;
  v30 = v15;
  v31 = v34;
  v32 = v16;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v13;
  dispatch_async(v21, block);

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

- (void)_handleReadResponseObject:(id)a3 type:(unint64_t)a4 httpStatus:(int)a5 error:(id)a6 characteristics:(id)a7 completion:(id)a8
{
  v203 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v173 = a6;
  v14 = a7;
  v15 = a8;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v200 = v19;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Received response to a read characteristics request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [MEMORY[0x277D0F770] currentActivity];
  if (v173)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v17;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v168 = v15;
      v24 = v20;
      v25 = v13;
      v26 = HMFGetLogIdentifier();
      if (a4 - 1 > 3)
      {
        v27 = @"Invalid";
      }

      else
      {
        v27 = off_2786D4CF8[a4 - 1];
      }

      v101 = v27;
      *buf = 138544386;
      v200 = v26;
      v201 = 2114;
      *v202 = v14;
      *&v202[8] = 2114;
      *&v202[10] = v25;
      *&v202[18] = 2114;
      *&v202[20] = v101;
      *&v202[28] = 2114;
      *&v202[30] = v173;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristics %{public}@, received response object: %{public}@, MIME type: %{public}@, error: %{public}@", buf, 0x34u);

      v13 = v25;
      v20 = v24;
      v15 = v168;
    }

    objc_autoreleasePoolPop(v21);
    [v14 count];
    [v173 domain];

    [v173 code];
    v102 = v173;
    if ([v102 code] == -6723 || (v103 = v102, objc_msgSend(v102, "code") == -6753))
    {
      v104 = objc_autoreleasePoolPush();
      v105 = v22;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v107 = v15;
        v108 = v20;
        v109 = v14;
        v111 = v110 = v13;
        *buf = 138543362;
        v200 = v111;
        _os_log_impl(&dword_22AADC000, v106, OS_LOG_TYPE_DEFAULT, "%{public}@interpreting error as unreachable", buf, 0xCu);

        v13 = v110;
        v14 = v109;
        v20 = v108;
        v15 = v107;
      }

      objc_autoreleasePoolPop(v104);
      v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4 reason:0 underlyingError:v102];
    }

    [(HAPAccessoryServerIP *)v22 _tearDownSessionAndStartReachabilityWithError:v102];
    v91 = 0;
    if (!v15)
    {
      goto LABEL_94;
    }

LABEL_93:
    v15[2](v15, v91, v103);
    goto LABEL_94;
  }

  v29 = a5 == 200 || a5 == 207;
  if (v13)
  {
    if (v29)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (a4 == 1 && (isKindOfClass & 1) != 0)
      {
        v31 = v13;
        v32 = v14;
        v165 = [MEMORY[0x277CBEB18] array];
        v161 = v31;
        v33 = [v31 objectForKeyedSubscript:@"characteristics"];
        objc_opt_class();
        v164 = v32;
        v160 = v33;
        v158 = v13;
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
                v91 = v165;
              }

              goto LABEL_109;
            }

            v155 = *v184;
            *&v35 = 138543362;
            v144 = v35;
            v166 = v14;
            v169 = v15;
            v151 = v20;
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
            if (v43 || (a5 == 207) != (v41 != 0) || (v40 == 0) == ([v41 intValue] == 0))
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
                  v50 = [v49 service];
                  v51 = [v50 accessory];
                  v52 = [v51 instanceID];

                  if (v52)
                  {
                    if ([v38 isEqualToNumber:v52])
                    {
                      v53 = [v49 instanceID];
                      v54 = [v171 isEqualToNumber:v53];

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
                v20 = v151;
                v156 = v60;
                if ([v60 shouldValidateValueAfterReading])
                {
                  v61 = [v60 metadata];
                  v62 = [v61 format];
                  v63 = HAPCharacteristicFormatFromString(v62);

                  v14 = v166;
                  v15 = v169;
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
                        v76 = [v156 notificationContext];
                        *v189 = 138543874;
                        v190 = v75;
                        v191 = 2114;
                        v192 = v76;
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
                      v78 = [v60 service];
                      v79 = [v78 accessory];

                      v146 = v79;
                      v80 = [v79 server];
                      context = objc_autoreleasePoolPush();
                      v81 = v80;
                      v82 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                      {
                        v83 = HMFGetLogIdentifier();
                        v84 = [v146 instanceID];
                        v85 = [v156 instanceID];
                        v86 = [v156 type];
                        *v189 = 138544386;
                        v190 = v83;
                        v191 = 2114;
                        v192 = v84;
                        v193 = 2114;
                        v194 = v85;
                        v195 = 2114;
                        v196 = v86;
                        v197 = 2114;
                        v198 = v148;
                        _os_log_impl(&dword_22AADC000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@Read response for characteristic %{public}@/%{public}@/%{public}@ with error: %{public}@", v189, 0x34u);

                        v14 = v166;
                        v36 = v162;
                      }

                      objc_autoreleasePoolPop(context);
                      v15 = v169;
                      v60 = v156;
                      v70 = v148;
                    }

                    [v165 addObject:v77];

                    v32 = v164;
                    goto LABEL_71;
                  }
                }

                else
                {
                  v63 = 12;
                  v14 = v166;
                  v15 = v169;
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
              v14 = v166;
              v20 = v151;
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
            v15 = v169;
LABEL_108:

            v91 = 0;
            v32 = v164;
LABEL_109:

LABEL_110:
            if ([v91 count])
            {
              v125 = v14;
              v103 = 0;
              if (v20)
              {
LABEL_112:
                v126 = v20;
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
                      v132 = [v131 characteristic];
                      [v132 instanceID];

                      v133 = [v131 error];
                      [v133 domain];

                      v134 = [v131 error];
                      [v134 code];
                    }

                    v128 = [v91 countByEnumeratingWithState:&v174 objects:v187 count:16];
                  }

                  while (v128);
                }

                v14 = v125;
                v20 = v126;
LABEL_124:
                v13 = v158;
                if (!v15)
                {
                  goto LABEL_94;
                }

                goto LABEL_93;
              }
            }

            else
            {
              v135 = objc_autoreleasePoolPush();
              v136 = v17;
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
                *v202 = a5;
                *&v202[4] = 2082;
                *&v202[6] = v139;
                *&v202[14] = 2114;
                *&v202[16] = @"HAP JSON";
                *&v202[24] = 2114;
                *&v202[26] = v161;
                _os_log_impl(&dword_22AADC000, v137, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse response objects for a read request, the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

                v135 = v172;
              }

              v125 = v14;

              objc_autoreleasePoolPop(v135);
              v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];

              v91 = 0;
              if (v20)
              {
                goto LABEL_112;
              }
            }

            v14 = v125;
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

  v92 = v15;
  v93 = objc_autoreleasePoolPush();
  v94 = v17;
  v95 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    v96 = v14;
    v97 = v13;
    v167 = v96;
    v98 = HMFGetLogIdentifier();
    v99 = HTTPGetReasonPhrase();
    if (a4 - 1 > 3)
    {
      v100 = @"Invalid";
    }

    else
    {
      v100 = off_2786D4CF8[a4 - 1];
    }

    v112 = v100;
    *buf = 138544386;
    v200 = v98;
    v201 = 1026;
    *v202 = a5;
    *&v202[4] = 2082;
    *&v202[6] = v99;
    *&v202[14] = 2114;
    *&v202[16] = v112;
    *&v202[24] = 2114;
    *&v202[26] = v97;
    _os_log_impl(&dword_22AADC000, v95, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristics because the accessory sent an invalid response with HTTP Status Code '%{public}d %{public}s' and a %{public}@ body: %{public}@", buf, 0x30u);

    v13 = v97;
    v14 = v167;
    v92 = v15;
  }

  objc_autoreleasePoolPop(v93);
  v103 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:50];
  v91 = 0;
  v15 = v92;
  if (v92)
  {
    goto LABEL_93;
  }

LABEL_94:

  v113 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v87 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v47 = a5;
  queue = a6;
  v13 = a7;
  if (v12)
  {
    if ([v12 count])
    {
      if ([(HAPAccessoryServerIP *)self _isSessionEstablished])
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v14 = v12;
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

          if (!v13)
          {
            goto LABEL_28;
          }

          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_215;
          v69[3] = &unk_2786D6490;
          v70 = v13;
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
        v68[1] = *&a4;
        v35 = v47;
        v65 = v35;
        v36 = queue;
        v66 = v36;
        v37 = v13;
        v67 = v37;
        v38 = MEMORY[0x231885210](v63);
        v39 = [MEMORY[0x277D0F770] currentActivity];
        v40 = objc_alloc_init(MEMORY[0x277D0F780]);
        objc_initWeak(&location, v40);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_4;
        v53[3] = &unk_2786D2828;
        objc_copyWeak(&v60, &location);
        objc_copyWeak(v61, buf);
        v54 = v34;
        v41 = v39;
        v55 = v41;
        v61[1] = *&a4;
        v56 = v35;
        v42 = v36;
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
        v45 = [(HAPAccessoryServerIP *)self clientOperationQueue];
        [v45 addOperation:v40];

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
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v82 = v33;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Secure session not established, establishing lazily and queuing read", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        [(HAPAccessoryServerIP *)v31 _queueReadCharacteristicValues:v12 timeout:v47 expiry:queue queue:v13 completionHandler:a4];
        [(HAPAccessoryServerIP *)v31 _establishSecureConnectionAndFetchAttributeDatabaseWithReason:@"noSession.read"];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v29;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Reading 0 characteristics, bailing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      if (v13)
      {
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke_210;
        v75[3] = &unk_2786D6490;
        v76 = v13;
        dispatch_async(queue, v75);
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = MEMORY[0x231885210](v13);
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
    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__HAPAccessoryServerIP__readCharacteristicValues_timeout_expiry_queue_completionHandler___block_invoke;
      block[3] = &unk_2786D65D8;
      v79 = v13;
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

- (void)_handleReadECONNRESETError:(id)a3 readCharacteristics:(id)a4 responses:(id)a5 timeout:(double)a6 expiry:(id)a7 queue:(id)a8 completionHandler:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v32 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [v16 userInfo];
  v22 = [v21 hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  v23 = [v22 domain];
  if ([v23 isEqual:*MEMORY[0x277CCA590]] && objc_msgSend(v22, "code") == 54)
  {
    v24 = [(HAPAccessoryServerIP *)self econnresetRetryInProgress];

    if (!v24)
    {
      v25 = [(HAPAccessoryServer *)self clientQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke;
      v38[3] = &unk_2786D4060;
      v38[4] = self;
      v26 = &v39;
      v31 = v17;
      v39 = v17;
      *&v42[1] = a6;
      v27 = &v40;
      v40 = v32;
      v28 = &v41;
      v41 = v19;
      v29 = v42;
      v42[0] = v20;
      v30 = v38;
LABEL_8:
      dispatch_async(v25, v30);

      v17 = v31;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v20)
  {
    v31 = v17;
    [(HAPAccessoryServerIP *)self _indicateSessionActivityWithReason:@"Read"];
    v25 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__HAPAccessoryServerIP__handleReadECONNRESETError_readCharacteristics_responses_timeout_expiry_queue_completionHandler___block_invoke_209;
    block[3] = &unk_2786D5C48;
    block[4] = self;
    v26 = &v34;
    v34 = v19;
    v27 = &v37;
    v37 = v20;
    v28 = &v35;
    v35 = v18;
    v29 = &v36;
    v36 = v16;
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

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc(MEMORY[0x277D0F770]);
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x231884350](self, a2);
  v20 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 2705];
  v33 = [v17 initWithName:v20];

  v21 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__HAPAccessoryServerIP_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D2710;
  block[4] = self;
  v27 = v13;
  v32 = a4;
  v28 = v14;
  v29 = v15;
  v30 = v33;
  v31 = v16;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v13;
  dispatch_async(v21, block);

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

- (void)_processQueuedOperationsWithError:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerIP *)self queuedOperations];
  v6 = [v5 copy];

  [(HAPAccessoryServerIP *)self setEstablishingSecureConnection:0];
  if (v4)
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
        v12 = [(HAPAccessoryServerIP *)self queuedOperations];
        v13 = MEMORY[0x231885210](v11);
        [v12 removeObject:v13];

        v14 = [(HAPAccessoryServer *)self clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__HAPAccessoryServerIP__processQueuedOperationsWithError___block_invoke;
        block[3] = &unk_2786D69E0;
        v18 = v4;
        v19 = self;
        v20 = v11;
        dispatch_async(v14, block);

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

- (void)_queueEnableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __90__HAPAccessoryServerIP__queueEnableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  v27 = &unk_2786D26E8;
  objc_copyWeak(&v31, &location);
  v13 = v12;
  v28 = v13;
  v14 = v11;
  v30 = v14;
  v32 = a3;
  v15 = v10;
  v29 = v15;
  v16 = MEMORY[0x231885210](&v24);
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v20;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing enableEvents until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HAPAccessoryServerIP *)v18 queuedOperations:v24];
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

- (void)_queueListPairingWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __79__HAPAccessoryServerIP__queueListPairingWithCompletionQueue_completionHandler___block_invoke;
  v21 = &unk_2786D3A30;
  objc_copyWeak(&v24, &location);
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  v10 = MEMORY[0x231885210](&v18);
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing list-pairing until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HAPAccessoryServerIP *)v12 queuedOperations:v18];
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

- (void)_queueAddPairingWithIdentifier:(id)a3 publicKey:(id)a4 admin:(BOOL)a5 queue:(id)a6 completion:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__HAPAccessoryServerIP__queueAddPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke;
  v28[3] = &unk_2786D26C0;
  objc_copyWeak(&v33, &location);
  v16 = v14;
  v29 = v16;
  v17 = v15;
  v32 = v17;
  v18 = v12;
  v30 = v18;
  v19 = v13;
  v31 = v19;
  v34 = a5;
  v20 = MEMORY[0x231885210](v28);
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v24;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing add-pairing until pair-verify completes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = [(HAPAccessoryServerIP *)v22 queuedOperations];
  v26 = MEMORY[0x231885210](v20);
  [v25 addObject:v26];

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

- (void)_insertWriteCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 withCompletionHandler:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277D0F770] currentActivity];
  [v16 markWithReason:@"Queuing retry"];

  v17 = [(HAPAccessoryServerIP *)self _queuedWriteOperationBlock:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple characteristic write at the start until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [(HAPAccessoryServerIP *)v19 queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [v22 insertObject:v23 atIndex:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queueWriteCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 withCompletionHandler:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277D0F770] currentActivity];
  [v16 markWithReason:@"Queuing"];
  v17 = [(HAPAccessoryServerIP *)self _queuedWriteOperationBlock:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple characteristic write until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  [v12 count];
  v22 = [(HAPAccessoryServerIP *)v19 queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [v22 addObject:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_queuedWriteOperationBlock:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__HAPAccessoryServerIP__queuedWriteOperationBlock_timeout_expiry_queue_completionHandler___block_invoke;
  v23[3] = &unk_2786D2698;
  objc_copyWeak(v28, &location);
  v16 = v12;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v18 = v15;
  v27 = v18;
  v28[1] = *&a4;
  v19 = v13;
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

- (void)_insertReadCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277D0F770] currentActivity];
  [v16 markWithReason:@"Queuing retry"];

  v17 = [(HAPAccessoryServerIP *)self _queuedReadOperationBlock:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing multiple read at the start until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [(HAPAccessoryServerIP *)v19 queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [v22 insertObject:v23 atIndex:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queueReadCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277D0F770] currentActivity];
  [v16 markWithReason:@"Queuing"];
  v17 = [(HAPAccessoryServerIP *)self _queuedReadOperationBlock:v12 timeout:v13 expiry:v14 queue:v15 completionHandler:a4];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing multiple read until pair-verify completes", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  [v12 count];
  v22 = [(HAPAccessoryServerIP *)v19 queuedOperations];
  v23 = MEMORY[0x231885210](v17);
  [v22 addObject:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_queuedReadOperationBlock:(id)a3 timeout:(double)a4 expiry:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__HAPAccessoryServerIP__queuedReadOperationBlock_timeout_expiry_queue_completionHandler___block_invoke;
  v23[3] = &unk_2786D2698;
  objc_copyWeak(v28, &location);
  v16 = v12;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v18 = v15;
  v27 = v18;
  v28[1] = *&a4;
  v19 = v13;
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

- (void)_error:(id)a3 forWriteCharacteristicValues:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v30 = a5;
  v29 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v37 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v37)
  {
    v36 = *v43;
    v31 = self;
    v32 = v12;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        if (v10)
        {
          v15 = [*(*(&v42 + 1) + 8 * i) characteristic];
          v16 = [v15 service];
          v17 = [v16 accessory];

          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v21 = v35 = v17;
            [v35 instanceID];
            v23 = v22 = v10;
            v24 = [v15 instanceID];
            [v15 type];
            v25 = v34 = v18;
            *buf = 138544386;
            v47 = v21;
            v48 = 2114;
            v49 = v23;
            v50 = 2114;
            v51 = v24;
            v52 = 2114;
            v53 = v25;
            v54 = 2114;
            v55 = v22;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Write response for characteristic %{public}@/%{public}@/%{public}@ with error: %{public}@", buf, 0x34u);

            v18 = v34;
            self = v31;

            v10 = v22;
            v12 = v32;

            v17 = v35;
          }

          objc_autoreleasePoolPop(v18);
        }

        v26 = [v14 characteristic];
        v27 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v26 error:v10];

        [v12 addObject:v27];
      }

      v37 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v37);
  }

  if (v29)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HAPAccessoryServerIP__error_forWriteCharacteristicValues_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v41 = v29;
    v39 = v12;
    v40 = v10;
    dispatch_async(v30, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_error:(id)a3 forReadCharacteristicValues:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v29 = a5;
  v28 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v11;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v35)
  {
    v13 = *v41;
    v31 = self;
    v32 = v12;
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
        if (v10)
        {
          v16 = [*(*(&v40 + 1) + 8 * i) service];
          v17 = [v16 accessory];

          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v17 instanceID];
            [v15 instanceID];
            v34 = v18;
            v24 = v23 = v10;
            v25 = [v15 type];
            *buf = 138544386;
            v45 = v21;
            v46 = 2114;
            v47 = v22;
            v48 = 2114;
            v49 = v24;
            v50 = 2114;
            v51 = v25;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Read response failed for characteristic %{public}@/%{public}@/%{public}@: %{public}@", buf, 0x34u);

            self = v31;
            v10 = v23;
            v18 = v34;

            v12 = v32;
            v13 = v30;
          }

          objc_autoreleasePoolPop(v18);
        }

        v26 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v15 error:v10];
        [v12 addObject:v26];
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v35);
  }

  if (v28)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HAPAccessoryServerIP__error_forReadCharacteristicValues_queue_completionHandler___block_invoke;
    block[3] = &unk_2786D69E0;
    v39 = v28;
    v37 = v12;
    v38 = v10;
    dispatch_async(v29, block);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_continuePairingAfterMFiCertValidation
{
  v17 = *MEMORY[0x277D85DE8];
  [(HAPAccessoryServerIP *)self tearDownSessionOnAuthCompletion];
  if ([(HAPAccessoryServer *)self pairSetupType]== 6)
  {
    v3 = [(HAPAccessoryServerIP *)self isPreSoftAuthWacStarted];
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        *v16 = 138543362;
        *&v16[4] = v8;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Transient Pair-Setup completed with Cert Auth - starting easyConfig", v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [(HAPAccessoryServerIP *)v5 pairSetupStartSoftAuthWAC];
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
      v11 = [(HAPAccessoryServer *)v5 pairingActivity];
      [v11 begin];
      *v16 = [(HAPAccessoryServer *)v5 pairingActivity];

      v12 = [(HAPAccessoryServer *)v5 pairingRequest];
      v13 = [v12 copy];

      [v13 setRequiresUserConsent:0];
      v14 = [(HAPAccessoryServer *)v5 pairingRequest];
      [(HAPAccessoryServerIP *)v5 startPairingWithRequest:v14];

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
    v5 = self;
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
      if ([(HAPAccessoryServerIP *)v5 isPreSoftAuthWacStarted])
      {
        objc_initWeak(&location, v5);
        v9 = objc_autoreleasePoolPush();
        v10 = v5;
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
        v13 = [(HAPAccessoryServerIP *)v10 hapWACAccessoryClient];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke;
        v29[3] = &unk_2786D2670;
        objc_copyWeak(&v31, &location);
        v30 = v8;
        v14 = [v13 restoreNetworkWithCompletion:v29];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else if ([(HAPAccessoryServerIP *)v5 _delegateRespondsToSelector:sel_accessoryServer_validateCert_model_])
      {
        v15 = [(HAPAccessoryServer *)v5 delegateQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __48__HAPAccessoryServerIP__handleMFiCertValidation__block_invoke_3;
        v27[3] = &unk_2786D7050;
        v27[4] = v5;
        v28 = v8;
        dispatch_async(v15, v27);
      }

      else
      {
        [(HAPAccessoryServerIP *)v5 _tearDownSession];
        v16 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
        [(HAPAccessoryServerIP *)v5 _processQueuedOperationsWithError:v16];
        v17 = HMErrorFromOSStatus(v33);
        [(HAPAccessoryServerIP *)v5 _notifyDelegatesPairingStopped:v17];
      }
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [(HAPAccessoryServer *)v19 pairSetupType];
    v23 = [(HAPAccessoryServer *)v19 authMethod];
    if (v23 > 6)
    {
      v24 = @"HAPAuthMethodUnknown";
    }

    else
    {
      v24 = off_2786D2590[v23];
    }

    v25 = v24;
    *buf = 138543874;
    v35 = v21;
    v36 = 2048;
    *v37 = v22;
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

- (BOOL)stopPairingWithError:(id *)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPAccessoryServerIP_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);

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

- (void)disconnectWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HAPAccessoryServerIP_disconnectWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)_tearDownSessionAndStartReachabilityWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@invalidating HTTP client and tearing down pairing session %{public}@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HAPAccessoryServerIP *)v7 _tearDownSessionWithError:v4];
  v10 = objc_autoreleasePoolPush();
  v11 = v7;
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
  v14 = [(HAPAccessoryServerIP *)v11 browser];
  [v14 startDiscoveringAccessoryServers];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_skipReconfirm
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
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

- (BOOL)_matchesError:(id)a3 withHAPHMErrorCode:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqual:@"HMErrorDomain"])
    {
      v8 = [v6 code] == a4;
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

- (BOOL)_matchesError:(id)a3 withHAPErrorCode:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqual:@"HAPErrorDomain"])
    {
      v8 = [v6 code] == a4;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  if (v4)
  {
    v5 = BonjourDevice_Reconfirm();
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      v8 = self;
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

- (void)_tearDownSessionWithError:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  [(HAPAccessoryServerIP *)self setSecuritySessionOpen:0];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = v4;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Invalidating HTTP client with error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HAPAccessoryServerIP *)v7 httpClient];
  [v10 invalidateWithError:v4];

  [(HAPAccessoryServerIP *)v7 setHttpClient:0];
  [(HAPAccessoryServerIP *)v7 setHasAttributeDatabase:0];
  if (!v7->_retryingPairSetup)
  {
    [(HAPAccessoryServerIP *)v7 setPreSoftAuthWacStarted:0];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(HAPAccessoryServer *)v7 accessories];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v15++) invalidateWithError:v4];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(HAPAccessoryServerIP *)v7 _notifyDelegatesOfConnectionState:0 withError:v4];
  v16 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v17 = [v16 preferenceForKey:@"HAPDefaultIPDisconnectOnIdleTimeoutSeconds"];
  v18 = [v17 numberValue];
  [v18 doubleValue];
  [(HAPAccessoryServerIP *)v7 setDisconnectOnIdleTimeout:?];

  [(HAPAccessoryServerIP *)v7 _suspendConnectionIdleTimer];
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HAPAccessoryServerIP_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, v10);

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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HAPAccessoryServerIP *)v4 hapWACAccessory];
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Continuing pairing after auth prompt hapWACAccessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HAPAccessoryServer *)v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPAccessoryServerIP_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = v4;
  dispatch_async(v8, block);

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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HAPAccessoryServerIP_reconfirm__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)startPairingWithRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0F770] currentActivity];
  v6 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HAPAccessoryServerIP_startPairingWithRequest___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
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

- (void)_isAccessoryPublicKeyPresent:(BOOL *)a3 registeredWithHomeKit:(BOOL *)a4
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(HAPAccessoryServer *)self keyStore];
  v16 = 0;
  v8 = [(HAPAccessoryServer *)self identifier];
  v15 = 0;
  [v7 getControllerPublicKey:&v16 secretKey:0 username:0 allowCreation:0 forAccessory:v8 error:&v15];
  v9 = v16;
  v10 = v15;

  if (!v10 && v9)
  {
    v11 = [(HAPAccessoryServer *)self keyStore];
    v12 = [(HAPAccessoryServer *)self identifier];
    v14 = 0;
    v13 = [v11 readPublicKeyForAccessoryName:v12 registeredWithHomeKit:a4 error:&v14];
    v10 = v14;

    if (a3 && !v10 && v13)
    {
      *a3 = 1;
    }
  }
}

- (void)_establishSecureConnectionAndFetchAttributeDatabaseWithReason:(id)a3
{
  v4 = a3;
  if (![(HAPAccessoryServerIP *)self isEstablishingSecureConnection])
  {
    v5 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v6 = [(HAPAccessoryServer *)self identifier];
    v7 = [(HAPAccessoryServer *)self category];
    [v5 reportConnection:v6 linkType:1 accessoryCategory:v7];

    [(HAPAccessoryServerIP *)self setTriedConnectingToIPv4Address:0];
    [(HAPAccessoryServerIP *)self setTriedConnectingToIPv6Address:0];
    [(HAPAccessoryServerIP *)self setEstablishingSecureConnection:1];
    [(HAPAccessoryServerIP *)self setHasAttributeDatabase:0];
    [(HAPAccessoryServer *)self setMetric_pairVerifyReason:v4];
    [(HAPAccessoryServerIP *)self _suspendConnectionIdleTimer];
    v8 = [MEMORY[0x277CBEAA8] date];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __86__HAPAccessoryServerIP__establishSecureConnectionAndFetchAttributeDatabaseWithReason___block_invoke;
    v13 = &unk_2786D42B8;
    objc_copyWeak(&v16, &location);
    v9 = v8;
    v14 = v9;
    v15 = v4;
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
    v3 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__HAPAccessoryServerIP_discoverAccessories__block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Waiting for Bonjour to discoverAccessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPAccessoryServerIP *)v5 setBonjourDiscoveryPending:1];
    [(HAPAccessoryServerIP *)v5 _notifyDelegateOfPairingProgress:8];
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

- (void)_clearIPCacheOnError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  if (v7)
  {
    v8 = [v7 domain];
    v9 = [v8 isEqual:*MEMORY[0x277CCA590]];

    if (v9)
    {
      v10 = [v7 code];
      if ((v10 - 54) <= 0xB && ((1 << (v10 - 54)) & 0x881) != 0)
      {
        v12 = v10;
        v13 = objc_autoreleasePoolPush();
        v14 = self;
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
        [(HAPAccessoryServerIP *)v14 setCachedSocketInfo:0];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateCacheForDevice:(id)a3 socketInfo:(id)a4 bonjour:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
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

  if (!v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browser);
    [WeakRetained updateCacheForDeviceID:v8 ipData:0];

    goto LABEL_14;
  }

  if (!v10)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v9;
      v21 = "%{public}@Request to save cache with nil bonjour info ignored %@";
      v22 = v19;
      v23 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [HAPAccessoryServerIPCacheData alloc];
  v13 = [v9 dictionaryRepresentation];
  v14 = [v11 copy];
  v15 = [(HAPAccessoryServerIPCacheData *)v12 initWithCachedIp:v13 bonjourRecord:v14];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_browser);
    [v16 updateCacheForDeviceID:v8 ipData:v15];
  }

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)setCachedSocketInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (v5)
  {
    if ([(HAPSocketInfo *)self->_cachedSocketInfo isEqual:v5])
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
  objc_storeStrong(&self->_cachedSocketInfo, a3);
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HAPSocketInfo *)v7 shortDescription];
      v13 = [v5 shortDescription];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@cached socket updated from %@ to %@", &v19, 0x20u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v8);
    goto LABEL_12;
  }

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v17 = self;
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
    v14 = [(HAPAccessoryServer *)self deviceID];
    v15 = [v14 deviceIDString];
    [(HAPAccessoryServerIP *)self _updateCacheForDevice:v15 socketInfo:v5 bonjour:self->_bonjourDeviceInfo];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HAPSocketInfo)currentSocketInfo
{
  v2 = [(HAPAccessoryServerIP *)self httpClient];
  v3 = [v2 peerSocketInfo];

  return v3;
}

- (NSString)peerEndpointDescription
{
  v2 = [(HAPAccessoryServerIP *)self httpClient];
  v3 = [v2 peerEndpointDescription];

  return v3;
}

- (HMFNetAddress)peerAddressEx
{
  v2 = [(HAPAccessoryServerIP *)self httpClient];
  v3 = [v2 peerAddressEx];

  return v3;
}

- (HMFNetAddress)peerAddress
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerIP *)self httpClient];

  if (v3)
  {
    v4 = [(HAPAccessoryServerIP *)self httpClient];
    v5 = [v4 peerAddress];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get peer address -- httpClient is nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
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

- (void)createKeysForDataStreamWithKeySalt:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HAPAccessoryServerIP_createKeysForDataStreamWithKeySalt_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerIP_pairSetupStartSoftAuthWAC__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v6;
    v15 = 1024;
    v16 = [(HAPAccessoryServerIP *)v4 isWacComplete];
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@tearDownWAC - wacComplete: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HAPAccessoryServerIP *)v4 isWacStarted]&& ![(HAPAccessoryServerIP *)v4 isWacComplete]|| [(HAPAccessoryServerIP *)v4 isPreSoftAuthWacStarted]|| [(HAPAccessoryServerIP *)v4 isPostSoftAuthWacStarted])
  {
    v7 = [(HAPAccessoryServerIP *)v4 hapWACAccessoryClient];
    [v7 stopEasyConfig];

    [(HAPAccessoryServerIP *)v4 _notifyDelegateOfPairingProgress:3];
    v8 = [(HAPAccessoryServerIP *)v4 hapWACAccessoryClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__HAPAccessoryServerIP__tearDownWAC__block_invoke;
    v12[3] = &unk_2786D6CF0;
    v12[4] = v4;
    v9 = [v8 restoreNetworkWithCompletion:v12];
  }

  else
  {
    v11 = [(HAPAccessoryServerIP *)v4 pairOperation];
    [v11 finish];
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

- (void)_continuePairingAfterWAC:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HAPAccessoryServerIP__continuePairingAfterWAC___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (int)_continuePairingWithSetupCode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v9 = [(HAPAccessoryServerIP *)v6 hapWACAccessoryClient];
  v10 = [v9 continuePairingWithSetupCode:v4];

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_continuePairingUsingWAC
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerIP *)self isWacStarted];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (!v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Continuing WAC Pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HAPAccessoryServerIP *)v5 setWacStarted:1];
    v10 = [(HAPAccessoryServerIP *)v5 hapWACAccessory];
    v11 = [v10 supportsLegacyWAC];

    if (v11)
    {
      [(HAPAccessoryServerIP *)v5 _notifyDelegateOfPairingProgress:6];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke;
      v20[3] = &unk_2786D6CF0;
      v20[4] = v5;
      v12 = v20;
      v13 = v5;
      v14 = 0;
    }

    else
    {
      if ([(HAPAccessoryServerIP *)v5 isPostSoftAuthWacStarted])
      {
        [(HAPAccessoryServerIP *)v5 _notifyDelegateOfPairingProgress:0];
        v15 = [(HAPAccessoryServerIP *)v5 hapWACAccessoryClient];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_120;
        v19[3] = &unk_2786D6CF0;
        v19[4] = v5;
        v16 = [v15 joinAccessoryNetworkWithCompletion:v19];

        goto LABEL_13;
      }

      [(HAPAccessoryServerIP *)v5 _notifyDelegateOfPairingProgress:6];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __48__HAPAccessoryServerIP__continuePairingUsingWAC__block_invoke_2_125;
      v18[3] = &unk_2786D6CF0;
      v18[4] = v5;
      v14 = _WACPairSetupPromptForSetupCodeDelegateCallback_f;
      v12 = v18;
      v13 = v5;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HAPAccessoryServerIP_continuePairingUsingWAC__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_continuePairingAfterConfirmingSecureWAC:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Continue pairing after confirming secure WAC with error: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    [(HAPAccessoryServerIP *)v6 _continuePairingAfterWAC:v4];
  }

  else if ([(HAPAccessoryServerIP *)v6 _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
  {
    v9 = [HAPAccessoryInfo alloc];
    v10 = [(HAPAccessoryServer *)v6 name];
    v11 = [(HAPAccessoryServer *)v6 category];
    v12 = [(HAPAccessoryInfo *)v9 initWithName:v10 manufacturer:0 modelName:0 category:v11 certificationStatus:0 denylisted:0 ppid:0];

    v13 = [(HAPAccessoryServer *)v6 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerIP__continuePairingAfterConfirmingSecureWAC___block_invoke;
    block[3] = &unk_2786D7050;
    block[4] = v6;
    v17 = v12;
    v14 = v12;
    dispatch_async(v13, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HAPAccessoryServerIP__continuePairingAfterConfirmingSecureWAC___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:5 accessoryInfo:*(a1 + 40) error:0];
}

- (void)_pairVerifyStartWAC:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HAPAccessoryServerIP *)v6 hapWACAccessory];
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to start reprovisioning: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerIP *)v6 setWacComplete:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HAPAccessoryServerIP__pairVerifyStartWAC___block_invoke;
  v13[3] = &unk_2786D6A98;
  v13[4] = v6;
  v14 = v4;
  v10 = v4;
  v11 = [(HAPAccessoryServerIP *)v6 _joinAccessoryNetworkWithCompletion:v13];

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
  v6 = [(HAPAccessoryServerIP *)self pairOperation];
  [v5 addOperation:v6];

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

- (id)_joinAccessoryNetworkWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerIP *)self browser];
  v6 = [v5 visible2Pt4Networks];

  v7 = [(HAPAccessoryServerIP *)self browser];
  [v7 stopDiscoveringWACAccessoryServersWithInvalidation:0];

  v8 = [HAPWACAccessoryClient alloc];
  v9 = [(HAPAccessoryServerIP *)self hapWACAccessory];
  v10 = [(HAPAccessoryServerIP *)self browser];
  v11 = [v10 wacBrowser];
  v12 = [(HAPWACAccessoryClient *)v8 initWithWACAccessory:v9 server:self browser:v11 compatible2Pt4Networks:v6];
  [(HAPAccessoryServerIP *)self setHapWACAccessoryClient:v12];

  v13 = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];

  if (v13)
  {
    v14 = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];
    [v14 registerClientDelegate:self];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Join accessory network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HAPAccessoryServerIP *)v16 hapWACAccessoryClient];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __60__HAPAccessoryServerIP__joinAccessoryNetworkWithCompletion___block_invoke;
    v28[3] = &unk_2786D6790;
    v28[4] = v16;
    v29 = v4;
    v20 = [v19 joinAccessoryNetworkWithCompletion:v28];

    v21 = 0;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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
    (*(v4 + 2))(v4, v21);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@invalidateWAC", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServerIP *)v4 pairOperation];
  [v7 finish];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startReprovisioningWithPairingRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAPAccessoryServerIP_startReprovisioningWithPairingRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setPostSoftAuthWacStarted:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_postSoftAuthWacStarted = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPostSoftAuthWacStarted
{
  os_unfair_lock_lock_with_options();
  postSoftAuthWacStarted = self->_postSoftAuthWacStarted;
  os_unfair_lock_unlock(&self->_lock);
  return postSoftAuthWacStarted;
}

- (void)setPreSoftAuthWacStarted:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_preSoftAuthWacStarted = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPreSoftAuthWacStarted
{
  os_unfair_lock_lock_with_options();
  preSoftAuthWacStarted = self->_preSoftAuthWacStarted;
  os_unfair_lock_unlock(&self->_lock);
  return preSoftAuthWacStarted;
}

- (void)setWacLegacy:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_wacLegacy = a3;

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

- (void)setWacComplete:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_wacComplete = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isWacComplete
{
  os_unfair_lock_lock_with_options();
  wacComplete = self->_wacComplete;
  os_unfair_lock_unlock(&self->_lock);
  return wacComplete;
}

- (void)setWacAccessory:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_wacAccessory = a3;

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
  v3 = [(HAPAccessoryServerIP *)self browser];
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [v3 isPaired:v4];

  return v5;
}

- (HAPWACAccessory)hapWACAccessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hapWACAccessory;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateWithHAPWACAccessory:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v11 name];
  name = self->super._name;
  self->super._name = v5;

  v7 = [v11 deviceId];
  identifier = self->super._identifier;
  self->super._identifier = v7;

  self->_wacAccessory = 1;
  self->_wacComplete = 0;
  objc_storeStrong(&self->_hapWACAccessory, a3);
  os_unfair_lock_unlock(&self->_lock);
  -[HAPAccessoryServerIP setWacLegacy:](self, "setWacLegacy:", [v11 pairSetupWAC] ^ 1);
  v9 = [v11 setupHash];
  [(HAPAccessoryServer *)self setSetupHash:v9];

  v10 = [v11 wacCategory];
  [(HAPAccessoryServer *)self setCategory:v10];

  [(HAPAccessoryServerIP *)self setBonjourDeviceInfo:0];
}

- (HAPAccessoryServerIP)initWithHAPWACAccessory:(id)a3 keystore:(id)a4 browser:(id)a5
{
  v8 = a3;
  v9 = [(HAPAccessoryServerIP *)self initWithKeyStore:a4 browser:a5 discoveryMethod:3];
  v10 = v9;
  if (v9)
  {
    [(HAPAccessoryServerIP *)v9 updateWithHAPWACAccessory:v8];
  }

  return v10;
}

- (double)remainingTTLForExpiry:(id)a3
{
  [a3 doubleValue];
  v4 = v3;
  HMFUptime();
  return v4 - v5;
}

- (void)_updateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(HAPAccessoryServerIP *)self discoveryBookkeeping];
  [v9 setLastDiscoveryMethod:v8];

  v52 = v6;
  [(HAPAccessoryServerIP *)self setBonjourDeviceInfo:v6];
  [(HAPAccessoryServerIP *)self setHasUpdatedBonjour:1];
  v54 = [(HAPAccessoryServer *)self configNumber];
  v10 = [(HAPAccessoryServer *)self wakeNumber];
  v11 = [(HAPAccessoryServer *)self stateNumber];
  v53 = [(HAPAccessoryServerIP *)self isBonjourDiscoveryPending];
  [(HAPAccessoryServerIP *)self setInvalidated:0];
  [(HAPAccessoryServerIP *)self setBonjourDiscoveryPending:0];
  v12 = [(HAPAccessoryServerIP *)self _parseAndValidateTXTRecord];
  v13 = [(HAPAccessoryServerIP *)self isPaired];
  v14 = v13;
  v55 = v7;
  if (v7 && v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v18 = v10;
      v20 = v19 = v12;
      *buf = 138543362;
      v62 = v20;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Saving socket info", buf, 0xCu);

      v12 = v19;
      v10 = v18;
    }

    objc_autoreleasePoolPop(v15);
    [(HAPAccessoryServerIP *)v16 setCachedSocketInfo:v7];
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = HMFGetLogIdentifier();
    v25 = v10;
    v26 = v12;
    v27 = [(HAPAccessoryServer *)v22 configNumber];
    v28 = [(HAPAccessoryServer *)v22 wakeNumber];
    v29 = [(HAPAccessoryServer *)v22 stateNumber];
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

    if (v53)
    {
      v30 = @"YES";
    }

    v63 = 2048;
    v64 = v54;
    v65 = 2048;
    v66 = v27;
    v12 = v26;
    v10 = v25;
    v67 = 2048;
    v68 = v25;
    v69 = 2048;
    v70 = v28;
    v71 = 2048;
    v72 = v11;
    v73 = 2048;
    v74 = v29;
    v75 = 2114;
    v76 = v31;
    v77 = 2114;
    v78 = v30;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Parsing record: C# old/new %tu/%tu, W# old/new %tu/%tu, S# old/new %tu/%tu Paired: %{public}@, Discovery Pending: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v21);
  if (v11 != [(HAPAccessoryServer *)v22 stateNumber]&& [(HAPAccessoryServer *)v22 stateNumber]!= 1)
  {
    [(HAPAccessoryServerIP *)v22 _submitStateNumberChangeEvent:1];
  }

  v32 = v54 != [(HAPAccessoryServer *)v22 configNumber];
  v33 = [(HAPAccessoryServer *)v22 stateNumber];
  v34 = v11 == v33;
  v35 = v11 != v33;
  v36 = !v34 || v32;
  v37 = v12 && v14 && ((v36 | v53) & 1) != 0 && [(HAPAccessoryServerIP *)v22 _shouldConnectBasedOnDisconnectOnIdle]|| [(HAPAccessoryServerIP *)v22 abruptDisconnectionCounter]== 1;
  [(HAPAccessoryServerIP *)v22 setIsSeenOnBonjour:1];
  v38 = v10 != [(HAPAccessoryServer *)v22 wakeNumber];
  if ([(HAPAccessoryServer *)v22 wakeNumber])
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v22;
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
    if (v10)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = v22;
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

    if (![(HAPAccessoryServerIP *)v22 isWacAccessory]|| [(HAPAccessoryServerIP *)v22 isWacComplete])
    {
      v50 = [(HAPAccessoryServer *)v22 clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HAPAccessoryServerIP__updateWithBonjourDeviceInfo_socketInfo___block_invoke;
      block[3] = &unk_2786D6740;
      block[4] = v22;
      v57 = v32;
      v58 = v35;
      v59 = v38;
      v60 = v53;
      dispatch_async(v50, block);

      goto LABEL_40;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = v22;
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
    v7 = self;
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

- (void)updateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerIP_updateWithBonjourDeviceInfo_socketInfo___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)setAbruptDisconnectionCounter:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_abruptDisconnectionCounter = a3;

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

- (void)setBonjourDiscoveryPending:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_bonjourDiscoveryPending = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEstablishingSecureConnection:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_establishingSecureConnection = a3;

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
  v2 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
  v3 = v2 != 0;

  return v3;
}

- (void)setBonjourDeviceInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  bonjourDeviceInfo = self->_bonjourDeviceInfo;
  self->_bonjourDeviceInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)bonjourDeviceInfo
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_bonjourDeviceInfo copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_notifyDelegateOfDiscoveryCompletionWithError:(id)a3
{
  v4 = a3;
  if (v4)
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
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HAPAccessoryServerIP__notifyDelegateOfDiscoveryCompletionWithError___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
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
    v3 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HAPAccessoryServerIP__notifyDelegateNeedsOwnershipToken__block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __58__HAPAccessoryServerIP__notifyDelegateNeedsOwnershipToken__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerNeedsOwnershipToken:*(a1 + 32)];
}

- (void)_notifyDelegatesOfAddAccessoryFailureWithError:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:79 reason:0 underlyingError:a3];
  [(HAPAccessoryServerIP *)self setWacComplete:0];
  [(HAPAccessoryServerIP *)self setWacStarted:0];
  [(HAPAccessoryServerIP *)self _notifyDelegatesPairingStopped:v4];
}

- (void)_notifyDelegatesOfConnectionState:(BOOL)a3 withError:(id)a4
{
  v6 = a4;
  if ([(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateConnectionState_linkLayerType_bookkeeping_withError_])
  {
    v7 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HAPAccessoryServerIP__notifyDelegatesOfConnectionState_withError___block_invoke;
    block[3] = &unk_2786D5268;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(v7, block);
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

- (void)_notifyDelegatesPairingStopped:(id)a3
{
  v4 = a3;
  [(HAPAccessoryServerIP *)self setWacStarted:0];
  [(HAPAccessoryServerIP *)self setHasStartedPairing:0];
  [(HAPAccessoryServerIP *)self setHandlingInvalidSetupCode:0];
  [(HAPAccessoryServerIP *)self setPreSoftAuthWacStarted:0];
  [(HAPAccessoryServer *)self setPairingRequest:0];
  if ([(HAPAccessoryServerIP *)self isWacAccessory])
  {
    v5 = [(HAPAccessoryServerIP *)self hapWACAccessoryClient];
    [v5 dumpStatsWithError:v4];

    if (!v4)
    {
      [(HAPAccessoryServerIP *)self setWacAccessory:0];
    }
  }

  if ([(HAPAccessoryServerIP *)self _shouldNotifyClientsOfPVFailure:v4]&& [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    v6 = [(HAPAccessoryServer *)self delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__HAPAccessoryServerIP__notifyDelegatesPairingStopped___block_invoke;
    v7[3] = &unk_2786D7050;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __55__HAPAccessoryServerIP__notifyDelegatesPairingStopped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

- (void)removeActiveSession:(int64_t)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HAPAccessoryServerIP_removeActiveSession___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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

- (void)addActiveSession:(int64_t)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HAPAccessoryServerIP_addActiveSession___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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

- (void)hapWACAccessoryClient:(id)a3 wacProgress:(unint64_t)a4
{
  if (a4 - 1 > 2)
  {
    v4 = 8;
  }

  else
  {
    v4 = qword_22AC9DB20[a4 - 1];
  }

  [(HAPAccessoryServerIP *)self _notifyDelegateOfPairingProgress:v4];
}

- (void)_notifyDelegateOfPairingProgress:(int64_t)a3
{
  v5 = [(HAPAccessoryServer *)self delegateQueue];
  if (v5)
  {
    v6 = v5;
    v7 = [(HAPAccessoryServerIP *)self _delegateRespondsToSelector:sel_accessoryServer_updatePairingProgress_];

    if (v7)
    {
      v8 = [(HAPAccessoryServer *)self delegateQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__HAPAccessoryServerIP__notifyDelegateOfPairingProgress___block_invoke;
      v9[3] = &unk_2786D63C8;
      v9[4] = self;
      v9[5] = a3;
      dispatch_async(v8, v9);
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

  v6 = [(HAPAccessoryServer *)self identifier];
  [v5 appendFormat:@"    Device ID: %@", v6];

  v7 = [(HAPAccessoryServerIP *)self model];
  [v5 appendFormat:@"    Model: %@", v7];

  v8 = [(HAPAccessoryServer *)self version];
  v9 = [v8 versionString];
  [v5 appendFormat:@"    Protocol Version: %@", v9];

  v10 = [(HAPAccessoryServerIP *)self sourceVersion];
  [v5 appendFormat:@"    Source Version: %@", v10];

  [v5 appendFormat:@"    Config Number: %lu", -[HAPAccessoryServer configNumber](self, "configNumber")];
  [v5 appendFormat:@"    Wake Number: %lu", -[HAPAccessoryServer wakeNumber](self, "wakeNumber")];
  [v5 appendFormat:@"    State Number: %lu", -[HAPAccessoryServer stateNumber](self, "stateNumber")];
  v11 = [(HAPAccessoryServer *)self category];
  [v5 appendFormat:@"    Category: %@", v11];

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
    v5 = self;
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

- (void)invalidateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HAPAccessoryServerIP_invalidateWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@*** RESET Called", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPAccessoryServerIP *)v4 _tearDownSession];
  [(HAPAccessoryServer *)v4 setAccessories:0];
  v4->_wacAccessory = 0;
  primaryAccessoryForServer = v4->_primaryAccessoryForServer;
  v4->_primaryAccessoryForServer = 0;

  cachedSocketInfo = v4->_cachedSocketInfo;
  v4->_cachedSocketInfo = 0;

  bonjourDeviceInfo = v4->_bonjourDeviceInfo;
  v4->_bonjourDeviceInfo = 0;

  v4->_statusFlags = 0;
  [(HAPAccessoryServerIP *)v4 setCurrentPairVerifyError:0];
  [(HAPAccessoryServerIP *)v4 setTriedConnectingToIPv4Address:0];
  [(HAPAccessoryServerIP *)v4 setTriedConnectingToIPv6Address:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (HAPAccessoryServerIP)initWithBonjourDeviceInfo:(id)a3 keyStore:(id)a4 browser:(id)a5 discoveryMethod:(unint64_t)a6
{
  v11 = a3;
  v12 = [(HAPAccessoryServerIP *)self initWithKeyStore:a4 browser:a5 discoveryMethod:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bonjourDeviceInfo, a3);
    v13->_hasUpdatedBonjour = 1;
    v13->_invalidated = 0;
    v13->_isSeenOnBonjour = 1;
    v14 = [v11 objectForKeyedSubscript:@"name"];
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

- (void)setSourceVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  sourceVersion = self->_sourceVersion;
  self->_sourceVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)statusFlags
{
  os_unfair_lock_lock_with_options();
  statusFlags = self->_statusFlags;
  os_unfair_lock_unlock(&self->_lock);
  return statusFlags;
}

- (void)setStatusFlags:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_statusFlags = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)model
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_model copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setModel:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  model = self->_model;
  self->_model = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPAccessoryServerIP)initWithKeyStore:(id)a3 browser:(id)a4 discoveryMethod:(unint64_t)a5
{
  v8 = a4;
  v34.receiver = self;
  v34.super_class = HAPAccessoryServerIP;
  v9 = [(HAPAccessoryServer *)&v34 initWithKeystore:a3];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_browser, v8);
    v10->_retryingPairSetup = 0;
    v11 = [MEMORY[0x277CBEB18] array];
    queuedOperations = v10->_queuedOperations;
    v10->_queuedOperations = v11;

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

    v22 = [[HAPAccessoryServerBookkeeping alloc] initWithDiscoveryMethod:a5];
    discoveryBookkeeping = v10->_discoveryBookkeeping;
    v10->_discoveryBookkeeping = v22;

    v10->_currentSocketUpdateType = 2;
    v24 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v25 = [v24 preferenceForKey:@"reachabilityMinimumPollTimeout"];
    v26 = [v25 numberValue];

    [v26 doubleValue];
    v10->_minimumReachabilityPingInterval = v27;
    v28 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v29 = [v28 preferenceForKey:@"HAPDefaultIPDisconnectOnIdleTimeoutSeconds"];
    v30 = [v29 numberValue];
    [v30 doubleValue];
    v10->_disconnectOnIdleTimeout = v31;

    currentPairVerifyError = v10->_currentPairVerifyError;
    v10->_currentPairVerifyError = 0;

    v10->_triedConnectingToIPv4Address = 0;
    v10->_triedConnectingToIPv6Address = 0;
  }

  return v10;
}

+ (id)_parseSerializedAccessoryDictionary:(id)a3 server:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:@"services"];
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
          v40 = v6;
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

          v9 = [v5 hmf_numberForKey:@"aid"];
          if (v9)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
            v17 = [(__CFString *)v9 isEqualToNumber:v16];

            v18 = objc_autoreleasePoolPush();
            v19 = v6;
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
            v45 = [v19 identifier];
            [v30 setIdentifier:v45];

            v46 = [v19 identifier];
            [v30 setServerIdentifier:v46];

            goto LABEL_38;
          }

          v39 = objc_autoreleasePoolPush();
          v40 = v6;
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
          [v5 objectForKeyedSubscript:@"aid"];
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
      v32 = v6;
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
      v32 = v6;
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
  v25 = v6;
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HAPAccessoryServerIP_SessionRestore__processPendingBonjourRemoveEvents__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __73__HAPAccessoryServerIP_SessionRestore__processPendingBonjourRemoveEvents__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) browser];
  v2 = [*(a1 + 32) identifier];
  [v3 processPendingBonjourRemoveEventsForDeviceID:v2];
}

- (id)readAndResetHAPMetrics:(BOOL)a3
{
  v11 = a3;
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

  if (v11)
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

- (void)_requestResource:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServerIP *)self _isSessionEstablished];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
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

    v20 = [(HAPAccessoryServerIP *)v13 _ensureHTTPClientSetUp];
    if (v20)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_2_1288;
      v30[3] = &unk_2786D2AF8;
      v31 = v10;
      v32 = v20;
      dispatch_async(v9, v30);
    }

    else
    {
      objc_initWeak(buf, v13);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke_1284;
      v33[3] = &unk_2786D2AD0;
      objc_copyWeak(&v36, buf);
      v34 = v9;
      v35 = v10;
      [(HAPAccessoryServerIP *)v13 sendPOSTRequestToURL:v19 request:v8 serializationType:1 completionHandler:v33];

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
    objc_initWeak(&location, v13);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__HAPAccessoryServerIP_HTTPActivity___requestResource_queue_completionHandler___block_invoke;
    v37[3] = &unk_2786D2AA8;
    objc_copyWeak(&v41, &location);
    v38 = v9;
    v40 = v10;
    v39 = v8;
    v22 = MEMORY[0x231885210](v37);
    v23 = objc_autoreleasePoolPush();
    v24 = v13;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing resource request until pair-verify completes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [(HAPAccessoryServerIP *)v24 queuedOperations];
    v28 = MEMORY[0x231885210](v22);
    [v27 addObject:v28];

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

- (void)requestResource:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x231884350](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/HAPAccessoryServerIP.m", 8898];
  v16 = [v12 initWithName:v15];

  v17 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HAPAccessoryServerIP_HTTPActivity__requestResource_queue_completionHandler___block_invoke;
  block[3] = &unk_2786D5C48;
  block[4] = self;
  v23 = v9;
  v24 = v10;
  v25 = v16;
  v26 = v11;
  v18 = v11;
  v19 = v16;
  v20 = v10;
  v21 = v9;
  dispatch_async(v17, block);
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAPAccessoryServerIP *)self nameResolver];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling active name resolution", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HAPAccessoryServerIP *)v6 nameResolver];
    [v9 invalidate];

    [(HAPAccessoryServerIP *)v6 setNameResolver:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_doResolveWithGroup:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPAccessoryServerIP *)self nameResolver];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Name resolution already in progress!  Are there multiple outstanding connection requests?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    dispatch_group_leave(v4);
  }

  else
  {
    v11 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v12 = [v11 preferenceForKey:@"HAPServerIPServerNameResolutionTimeoutSeconds"];
    v13 = [v12 numberValue];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &unk_283EA9848;
    }

    [v14 doubleValue];
    v16 = v15;
    v17 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
    v18 = [v17 objectForKey:@"name"];

    v19 = [(HAPAccessoryServerIP *)self bonjourDeviceInfo];
    v20 = [v19 objectForKey:@"serviceType"];

    v21 = [[HAPNameResolver alloc] initWithDeviceName:v18 serviceType:v20 domain:@"local"];
    [(HAPAccessoryServerIP *)self setNameResolver:v21];

    v22 = [(HAPAccessoryServerIP *)self nameResolver];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HAPAccessoryServerIP_NameResolution___doResolveWithGroup___block_invoke;
    v24[3] = &unk_2786D5840;
    v24[4] = self;
    v25 = v4;
    [v22 resolveWithTimeout:v24 completion:v16];
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
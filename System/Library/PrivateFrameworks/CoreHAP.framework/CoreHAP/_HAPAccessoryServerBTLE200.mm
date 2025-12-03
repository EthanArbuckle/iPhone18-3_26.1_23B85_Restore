@interface _HAPAccessoryServerBTLE200
+ (BOOL)isHAPDescriptor:(id)descriptor;
+ (BOOL)isHAPService:(id)service;
+ (BOOL)parseCharacteristicConfigurationResponse:(id)response error:(id *)error;
+ (BOOL)parseProtocolConfigurationResponse:(id)response key:(id *)key stateNumber:(id *)number error:(id *)error;
+ (BOOL)parseReadResponse:(id)response value:(id *)value notificationContext:(id *)context error:(id *)error;
+ (BOOL)parseWriteResponse:(id)response value:(id *)value error:(id *)error;
+ (id)configurationRequestForCharacteristic:(id)characteristic isBroadcasted:(BOOL)broadcasted interval:(unint64_t)interval error:(id *)error;
+ (id)configurationRequestForService:(id)service configRequestType:(unsigned __int8)type error:(id *)error;
+ (id)executeWriteRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error;
+ (id)extractNotificationContextFromBodyData:(id)data error:(id *)error;
+ (id)extractSerializedRequestValueFromBodyData:(id)data error:(id *)error;
+ (id)logCategory;
+ (id)parseServiceSignatureResponse:(id)response serviceInstanceID:(id)d serviceType:(id)type error:(id *)error;
+ (id)parseSignatureResponse:(id)response error:(id *)error;
+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
+ (id)readRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error;
+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
- (BOOL)_cancelDiscoveryWithError:(id)error;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_parsePairingFeaturesCharacteristic:(id)characteristic authMethod:(unint64_t *)method error:(id *)error;
- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)error;
- (BOOL)_validateGeneratedBroadcastKey:(id)key;
- (BOOL)_validateProtocolInfo:(id)info;
- (BOOL)hasBeenDiscovered;
- (BOOL)hasValidCache;
- (BOOL)isHAPCharacteristic:(id)characteristic;
- (BOOL)isReadyForOperation:(int64_t)operation;
- (BOOL)isSecuritySessionOpen;
- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error;
- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion serverPairingCompletion:(id)pairingCompletion;
- (BOOL)shouldVerifyHAPCharacteristic:(id)characteristic;
- (BOOL)shouldVerifyHAPService:(id)service;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error;
- (HAPCharacteristic)identifyCharacteristic;
- (HAPCharacteristic)pairSetupCharacteristic;
- (HAPCharacteristic)pairVerifyCharacteristic;
- (HAPCharacteristic)pairingFeaturesCharacteristic;
- (HAPCharacteristic)pairingsCharacteristic;
- (HAPSecuritySession)securitySession;
- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6;
- (id)_characteristicForCBCharacteristic:(id)characteristic;
- (id)_decryptData:(id)data error:(id *)error;
- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error;
- (id)_getCBCharacteristic:(id)characteristic instanceId:(id)id service:(id)service;
- (id)_getCBService:(id)service instanceOrder:(unint64_t)order;
- (id)_getCachedService:(id)service;
- (id)_getCharacteristicInstanceID:(id)d error:(id *)error;
- (id)_getProtocolInfoService;
- (id)_getServiceInstanceID:(id)d;
- (id)_hapServicesFromCache;
- (id)_parseCharacteristic:(id)characteristic error:(id *)error;
- (id)_parseService:(id)service error:(id *)error;
- (id)_pendingRequestForCharacteristic:(id)characteristic;
- (id)_pendingResponseForRequest:(id)request;
- (id)_serviceCacheFromHAPService:(id)service serviceOrder:(unint64_t)order;
- (id)_serviceForCBService:(id)service;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)protocolInfoServiceSignatureCharacteristics;
- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error;
- (int64_t)connectionState;
- (unint64_t)_getPairSetupType;
- (unint64_t)_maximumControlWriteLengthForRequest:(id)request;
- (unint64_t)_outstandingRequests;
- (void)_cacheServices:(id)services;
- (void)_cancelAllQueuedOperationsWithError:(id)error;
- (void)_cancelConnectionWithError:(id)error;
- (void)_checkForAuthPrompt:(BOOL)prompt;
- (void)_configureBroadcastKeyGeneration:(unsigned __int8)generation service:(id)service withCompletion:(id)completion;
- (void)_configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_disconnectWithDisconnectionError:(id)error completionHandler:(id)handler;
- (void)_discoverCharacteristic:(id)characteristic;
- (void)_discoverCharacteristicsForService:(id)service;
- (void)_discoverServices;
- (void)_discoverWithType:(int64_t)type completionHandler:(id)handler;
- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)_enqueueRequest:(id)request shouldPrioritize:(BOOL)prioritize;
- (void)_establishSecureSession;
- (void)_getPairingFeaturesWithCompletionHandler:(id)handler;
- (void)_handleCompletedDiscovery;
- (void)_handleConnectionIdleTimeout;
- (void)_handleConnectionWithError:(id)error;
- (void)_handleDiscoveredCharacteristic:(id)characteristic error:(id)error;
- (void)_handleDiscoveredCharacteristicsForService:(id)service error:(id)error;
- (void)_handleDiscoveredDescriptors:(id)descriptors;
- (void)_handleDiscoveredServices:(id)services error:(id)error;
- (void)_handleEventIndicationForCharacteristic:(id)characteristic;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error;
- (void)_handlePairSetupSessionExchangeData:(id)data;
- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)handler;
- (void)_handleReadCharacteristicSignature:(id)signature error:(id)error;
- (void)_handleReadCharacteristicValue:(id)value error:(id)error;
- (void)_handleReadDescriptorValue:(id)value error:(id)error;
- (void)_handleReadServiceInstanceId:(id)id;
- (void)_handleReadServiceSignature:(id)signature error:(id)error;
- (void)_handleResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error;
- (void)_handleSecuritySessionSetupExchangeData:(id)data;
- (void)_handleUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)_handleWriteCompletionForCharacteristic:(id)characteristic error:(id)error;
- (void)_invokeOperationsReceivedDuringConnectionStateChangeWithError:(id)error;
- (void)_kickConnectionIdleTimer;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegatesOfConnectionState:(BOOL)state withError:(id)error;
- (void)_notifyDelegatesPairingStopped:(id)stopped;
- (void)_pairingCompletedWithError:(id)error;
- (void)_performTimedWriteExecuteForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options completionHandler:(id)handler;
- (void)_performTimedWritePrepareWithValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_performTimedWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_performWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_readCharacteristicSignature:(id)signature;
- (void)_readCharacteristicSignatures;
- (void)_readCharacteristicValue:(id)value;
- (void)_readCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler;
- (void)_readDescriptorValue:(id)value;
- (void)_readPendingDiscoveredCharacteristicTypesWithCompletion:(id)completion;
- (void)_readServiceSignature:(id)signature;
- (void)_readValueForCharacteristic:(id)characteristic options:(int64_t)options completionHandler:(id)handler;
- (void)_reallySendRequest:(id)request completionHandler:(id)handler;
- (void)_removePairingOfAccessoryServerCancelledMidPairing;
- (void)_requestResponseForRequest:(id)request;
- (void)_resetWithError:(id)error;
- (void)_restartConnectionIdleTimer:(double)timer;
- (void)_resumeAllOperations;
- (void)_resumeConnectionIdleTimer;
- (void)_retryDiscovery;
- (void)_sendControlPacket:(id)packet forRequest:(id)request completionHandler:(id)handler;
- (void)_sendData:(id)data toCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)_sendPairingRequestData:(id)data completionHandler:(id)handler;
- (void)_sendProtocolInfoServiceExchangeData:(id)data completion:(id)completion;
- (void)_suspendAllOperations;
- (void)_suspendConnectionIdleTimer;
- (void)_updateConnectionIdleTime:(unsigned __int8)time;
- (void)_updateLastKeyBagIdentityIndexFailingPVWithError:(id)error;
- (void)_updatePropertiesFromCharacteristic:(id)characteristic;
- (void)_writeValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)authSession:(id)session authComplete:(id)complete;
- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token;
- (void)authSession:(id)session confirmUUID:(id)d token:(id)token;
- (void)authSession:(id)session sendAuthExchangeData:(id)data;
- (void)authSession:(id)session validateUUID:(id)d token:(id)token;
- (void)authenticateAccessory;
- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)connectWithCompletionHandler:(id)handler;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)controlOutputStream:(id)stream didCloseWithError:(id)error;
- (void)controlOutputStream:(id)stream didReceiveRequestToSendControlPacket:(id)packet completionHandler:(id)handler;
- (void)controlOutputStreamDidComplete:(id)complete;
- (void)dealloc;
- (void)disconnect;
- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)types;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)evaluateConnectionStateForOperation:(int64_t)operation block:(id)block;
- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler;
- (void)getAccessoryInfo:(id)info;
- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error;
- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)characteristic;
- (void)pairSetupSession:(id)session didReceiveProductData:(id)data;
- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler;
- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)pairSetupSession:(id)session didStopWithError:(id)error;
- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)securitySession:(id)session didCloseWithError:(id)error;
- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)securitySessionDidOpen:(id)open;
- (void)securitySessionIsOpening:(id)opening;
- (void)setConnectionState:(int64_t)state;
- (void)setHasBeenDiscovered:(BOOL)discovered;
- (void)setHasValidCache:(BOOL)cache;
- (void)setSecuritySession:(id)session;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)startPairingWithRequest:(id)request;
- (void)submitPairVerifyMetricWithError:(id)error;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)fire;
- (void)updateConnectionIdleTime:(unsigned __int8)time;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation _HAPAccessoryServerBTLE200

- (void)disconnect
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Disconnecting as a result of direct disconnect call", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___HAPAccessoryServerBTLE200_disconnect__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = selfCopy;
  dispatch_async(clientQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v34 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];

  if (connectionIdleTimer == fireCopy)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __43___HAPAccessoryServerBTLE200_timerDidFire___block_invoke;
    v27 = &unk_2786D6CA0;
    selfCopy = self;
    [(HAPAccessoryServer *)self pairingActivity];

    [(_HAPAccessoryServerBTLE200 *)self _handleConnectionIdleTimeout];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
    v8 = [pendingRequests countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(pendingRequests);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          responseTimer = [v12 responseTimer];

          if (responseTimer == fireCopy)
          {
            v14 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              *buf = 138543618;
              v30 = v17;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Cancelling the timed out request: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24 description:@"Request failed." reason:@"Request timed out waiting for response." suggestion:0 underlyingError:0];
            [v12 cancelWithError:v18];

            goto LABEL_14;
          }
        }

        v9 = [pendingRequests countByEnumeratingWithState:&v20 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)securitySession:(id)session didCloseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)_updateLastKeyBagIdentityIndexFailingPVWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  userInfo = [errorCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;

  domain = [v16 domain];
  v10 = *MEMORY[0x277CCA590];
  v11 = HMFEqualObjects();

  if (v11 && [v16 code] == -6754)
  {
    accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    v13 = MEMORY[0x277CCABB0];
    keyBag = [(HAPAccessoryServer *)self keyBag];
    v15 = [v13 numberWithInteger:{objc_msgSend(keyBag, "getCurrentIndexInBag")}];
    [accessoryCache setLastKeyBagIdentityIndexFailingPV:v15];
  }
}

- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)error
{
  errorCopy = error;
  underlyingErrors = [errorCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  v6 = (([errorCopy isHAPError] & 1) != 0 || objc_msgSend(firstObject, "isHAPError")) && (objc_msgSend(errorCopy, "code") == 27 || objc_msgSend(firstObject, "code") == 27);
  return v6;
}

- (void)securitySessionDidOpen:(id)open
{
  openCopy = open;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE200_securitySessionDidOpen___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = openCopy;
  selfCopy = self;
  v6 = openCopy;
  dispatch_async(clientQueue, v7);
}

- (void)securitySessionIsOpening:(id)opening
{
  openingCopy = opening;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___HAPAccessoryServerBTLE200_securitySessionIsOpening___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = openingCopy;
  selfCopy = self;
  v6 = openingCopy;
  dispatch_async(clientQueue, v7);
}

- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___HAPAccessoryServerBTLE200_securitySession_didReceiveSetupExchangeData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifierCopy = identifier;
  identifier = [(HAPAccessoryServer *)self identifier];
  v11 = [identifier isEqualToString:identifierCopy];

  if (v11)
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v32 = 0;
    v13 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v32];
    v14 = v32;

    if (v13)
    {
      v15 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v13];
      v16 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v15 privateKey:0 permissions:0];
      if (!v16)
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v31 = v17;
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = identifierCopy;
          v37 = 2112;
          v38 = v13;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Failed to create pairing identity with identifier, %@, public key, %@", buf, 0x20u);

          v17 = v31;
        }

        objc_autoreleasePoolPop(v17);
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to retrieve peer pairing identity." reason:@"Failed to create pairing identity" suggestion:0 underlyingError:0];
        }
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v28;
        v35 = 2112;
        v36 = identifierCopy;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve public key for accessory with identifier '%@' with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Unexpected pairing peer identifier, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:16 description:@"Insufficient Authorization." reason:@"Unexpected pairing peer identifier." suggestion:0 underlyingError:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Request for local pairing identity", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPAccessoryServer *)selfCopy getControllerPairingIdentityWithError:error];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)submitPairVerifyMetricWithError:(id)error
{
  errorCopy = error;
  metric_pairVerifyReason = [(HAPAccessoryServer *)self metric_pairVerifyReason];
  if (metric_pairVerifyReason)
  {
    v6 = metric_pairVerifyReason;
    securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    sessionStartTime = [securitySession sessionStartTime];

    if (sessionStartTime)
    {
      mach_absolute_time();
      v9 = UpTicksToMilliseconds();
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      -[HAPAccessoryServer setMetric_pairVerifyDurationInMS:](self, "setMetric_pairVerifyDurationInMS:", v9 - [securitySession2 sessionStartTime]);

      v11.receiver = self;
      v11.super_class = _HAPAccessoryServerBTLE200;
      [(HAPAccessoryServer *)&v11 submitPairVerifyMetricWithError:errorCopy];
    }
  }
}

- (void)authSession:(id)session authComplete:(id)complete
{
  completeCopy = complete;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(clientQueue, v8);
}

- (void)authSession:(id)session confirmUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke;
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

- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke;
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

- (void)authSession:(id)session validateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke;
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

- (void)authSession:(id)session sendAuthExchangeData:(id)data
{
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(clientQueue, v8);
}

- (void)_notifyDelegatesOfConnectionState:(BOOL)state withError:(id)error
{
  errorCopy = error;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateConnectionState_linkLayerType_withError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___HAPAccessoryServerBTLE200__notifyDelegatesOfConnectionState_withError___block_invoke;
    block[3] = &unk_2786D5268;
    block[4] = self;
    stateCopy = state;
    v9 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyDelegatesPairingStopped:(id)stopped
{
  stoppedCopy = stopped;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61___HAPAccessoryServerBTLE200__notifyDelegatesPairingStopped___block_invoke;
    v6[3] = &unk_2786D7050;
    v7 = stoppedCopy;
    selfCopy = self;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_continuePairingAfterMFiCertValidation
{
  [(_HAPAccessoryServerBTLE200 *)self tearDownSessionOnAuthCompletion];
  [(_HAPAccessoryServerBTLE200 *)self setPairing:0];
  [(_HAPAccessoryServerBTLE200 *)self setBadPairSetupCode:0];
  [(_HAPAccessoryServerBTLE200 *)self setPairSetupBackoffTimeInterval:0.0];
  [(_HAPAccessoryServerBTLE200 *)self setPairSetupSession:0];

  [(_HAPAccessoryServerBTLE200 *)self _notifyDelegatesPairingStopped:0];
}

- (void)tearDownSessionOnAuthCompletion
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___HAPAccessoryServerBTLE200_tearDownSessionOnAuthCompletion__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)provisionToken:(id)token
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = tokenCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45___HAPAccessoryServerBTLE200_provisionToken___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = selfCopy;
  v13 = tokenCopy;
  v10 = tokenCopy;
  dispatch_async(clientQueue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    authMethod = [(HAPAccessoryServer *)selfCopy authMethod];
    if (authMethod > 6)
    {
      v10 = @"HAPAuthMethodUnknown";
    }

    else
    {
      v10 = off_2786D2590[authMethod];
    }

    v11 = v10;
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Current Auth Method %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke;
  v14[3] = &unk_2786D6768;
  v14[4] = selfCopy;
  validationCopy = validation;
  dispatch_async(clientQueue, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAccessory
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE200_authenticateAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (BOOL)_validateProtocolInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  deviceIdentifier = [infoCopy deviceIdentifier];
  identifier = [(HAPAccessoryServer *)self identifier];
  if (![deviceIdentifier isEqualToString:identifier])
  {
    goto LABEL_7;
  }

  categoryIdentifier = [infoCopy categoryIdentifier];
  category = [(HAPAccessoryServer *)self category];
  if (categoryIdentifier != [category unsignedShortValue] || (v9 = objc_msgSend(infoCopy, "featureFlags"), v9 != -[_HAPAccessoryServerBTLE200 featureFlags](self, "featureFlags")))
  {

LABEL_7:
    goto LABEL_8;
  }

  protocolVersion = [infoCopy protocolVersion];
  majorVersion = [protocolVersion majorVersion];
  version = [(HAPAccessoryServer *)self version];
  majorVersion2 = [version majorVersion];

  if (majorVersion == majorVersion2)
  {
    v14 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
    category2 = [(HAPAccessoryServer *)selfCopy category];
    authMethod = [(HAPAccessoryServer *)selfCopy authMethod];
    version2 = [(HAPAccessoryServer *)selfCopy version];
    v25 = 138544642;
    v26 = v18;
    v27 = 2112;
    v28 = infoCopy;
    v29 = 2112;
    v30 = identifier2;
    v31 = 2112;
    v32 = category2;
    v33 = 2048;
    v34 = authMethod;
    v35 = 2112;
    v36 = version2;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match: identifier: %@, category: %@, authMethods: %tu version: %@", &v25, 0x3Eu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)getAccessoryInfo:(id)info
{
  infoCopy = info;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke;
  block[3] = &unk_2786D61A0;
  v8 = infoCopy;
  v9 = v10;
  block[4] = self;
  v6 = infoCopy;
  dispatch_async(clientQueue, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval
{
  sessionCopy = session;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke;
  block[3] = &unk_2786D4978;
  v11 = sessionCopy;
  selfCopy = self;
  intervalCopy = interval;
  v8 = sessionCopy;
  dispatch_async(clientQueue, block);

  return 0;
}

- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code
{
  codeCopy = code;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___HAPAccessoryServerBTLE200_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = codeCopy;
  selfCopy = self;
  v6 = codeCopy;
  dispatch_async(clientQueue, v7);
}

- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSession:(id)session didReceiveProductData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveProductData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSession:(id)session didStopWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE200_pairSetupSession_didStopWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  peerCopy = peer;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v13;
    v48 = 2112;
    v49 = peerCopy;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Request to save pairing peer: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  identifier = [peerCopy identifier];
  identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
  v16 = [identifier isEqualToString:identifier2];

  if (v16)
  {
    publicKey = [peerCopy publicKey];
    data = [publicKey data];

    keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
    identifier3 = [peerCopy identifier];
    v45 = 0;
    v21 = [keyStore savePublicKey:data forAccessoryName:identifier3 error:&v45];
    v22 = v45;

    if (v21)
    {
      [(HAPAccessoryServer *)selfCopy associateAccessoryWithControllerKeyUsingAccessoryPublicKey:data];
      v44 = 0;
      v23 = [(HAPAccessoryServerBTLE *)selfCopy updatePeripheralIdentifier:&v44 isPairing:1];
      v24 = v44;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v28 = v43 = v25;
          *buf = 138543618;
          v47 = v28;
          v48 = 2112;
          v49 = v24;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the accessory's peripheral identifier with error: %@", buf, 0x16u);

          v25 = v43;
        }

        objc_autoreleasePoolPop(v25);
        if (error)
        {
          v29 = v24;
          *error = v24;
        }
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v39;
        v48 = 2112;
        v49 = v22;
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to save accessory's identifier and public key to the keystore with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      if (error)
      {
        v40 = v22;
        v23 = 0;
        *error = v22;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      identifier4 = [peerCopy identifier];
      identifier5 = [(HAPAccessoryServer *)v31 identifier];
      *buf = 138543874;
      v47 = v33;
      v48 = 2112;
      v49 = identifier4;
      v50 = 2112;
      v51 = identifier5;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@The peer's identifier exchanged during Pair Setup, %@, does not match the identifier from the accessory's advertisement, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7 description:@"Pairing failed." reason:@"The peer's identifier does not match it's advertised identifier" suggestion:0 underlyingError:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Request for local pairing identity", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];
  pairingIdentity = [pairingRequest pairingIdentity];
  if (pairingIdentity)
  {
    currentIdentity = pairingIdentity;
LABEL_5:

    goto LABEL_7;
  }

  keyBag = [(HAPAccessoryServer *)selfCopy keyBag];
  currentIdentity = [keyBag currentIdentity];

  if (!currentIdentity)
  {
    pairingRequest = [(HAPAccessoryServer *)selfCopy keyStore];
    identifier = [(HAPAccessoryServer *)selfCopy identifier];
    currentIdentity = [pairingRequest readControllerPairingKeyForAccessory:identifier error:error];

    goto LABEL_5;
  }

LABEL_7:

  v15 = *MEMORY[0x277D85DE8];

  return currentIdentity;
}

- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupExchangeData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)controlOutputStreamDidComplete:(id)complete
{
  completeCopy = complete;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___HAPAccessoryServerBTLE200_controlOutputStreamDidComplete___block_invoke;
  block[3] = &unk_2786D6CA0;
  v8 = completeCopy;
  v6 = completeCopy;
  dispatch_async(clientQueue, block);
}

- (void)controlOutputStream:(id)stream didCloseWithError:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68___HAPAccessoryServerBTLE200_controlOutputStream_didCloseWithError___block_invoke;
  v11[3] = &unk_2786D7050;
  v12 = streamCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = streamCopy;
  dispatch_async(clientQueue, v11);
}

- (void)controlOutputStream:(id)stream didReceiveRequestToSendControlPacket:(id)packet completionHandler:(id)handler
{
  streamCopy = stream;
  packetCopy = packet;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105___HAPAccessoryServerBTLE200_controlOutputStream_didReceiveRequestToSendControlPacket_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = streamCopy;
  v17 = packetCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = packetCopy;
  v14 = streamCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91___HAPAccessoryServerBTLE200_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE200_peripheral_didWriteValueForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  peripheralCopy = peripheral;
  descriptorCopy = descriptor;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForDescriptor_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = descriptorCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = descriptorCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87___HAPAccessoryServerBTLE200_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84___HAPAccessoryServerBTLE200_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = serviceCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = serviceCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = peripheralCopy;
  v13 = servicesCopy;
  selfCopy = self;
  v9 = servicesCopy;
  v10 = peripheralCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v28 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  services = [peripheralCopy services];
  v9 = [services copy];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Discovered CB services: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61___HAPAccessoryServerBTLE200_peripheral_didDiscoverServices___block_invoke;
  v19[3] = &unk_2786D6A08;
  v20 = peripheralCopy;
  v21 = selfCopy;
  v22 = v9;
  v23 = servicesCopy;
  v15 = servicesCopy;
  v16 = v9;
  v17 = peripheralCopy;
  dispatch_async(clientQueue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendPlaintextPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83___HAPAccessoryServerBTLE200__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendEncryptedAndAuthenticatedPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96___HAPAccessoryServerBTLE200__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_didReceivePlaintextPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    delegate2 = [(HAPAccessoryServer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = dataCopy;
      v14 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (BOOL)_validateGeneratedBroadcastKey:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    identifier = [(HAPAccessoryServer *)self identifier];
    v29 = 0;
    v7 = [keyStore getControllerPublicKey:&v32 secretKey:&v31 username:&v30 allowCreation:0 forAccessory:identifier error:&v29];
    v8 = v32;
    v9 = v31;
    v10 = v30;
    v11 = v29;

    if (v7)
    {
      securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      broadcastKey = [securitySession broadcastKey];
      v14 = [broadcastKey isEqualToData:keyCopy];

      if (v14)
      {
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Generated Broadcast key does not match", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }

    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 securitySession];
      [securitySession2 broadcastKey];
      v25 = v28 = v9;
      *buf = 138544642;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v10;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = keyCopy;
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Controller Public Key: %@, Controller Identifier: %@, \n\tGenerated Broadcast Key: %@, \n\tAccessory Broadcast Key: %@. Error: %@", buf, 0x3Eu);

      v9 = v28;
    }

    objc_autoreleasePoolPop(v20);
    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke;
  v13[3] = &unk_2786D5F70;
  v13[4] = self;
  v14 = queueCopy;
  v15 = handlerCopy;
  keyCopy = key;
  v11 = handlerCopy;
  v12 = queueCopy;
  dispatch_async(clientQueue, v13);
}

- (void)_handleConnectionIdleTimeout
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:29];
  if ([(_HAPAccessoryServerBTLE200 *)self isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)self setPairingDisconnectionError:v3];
  }

  connectionState = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (connectionState == 1)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = peripheral;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, cancelling connection to the peripheral: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"Connection Failed" reason:@"Connection request timed out" suggestion:0 underlyingError:v3 marker:2109];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelConnectionWithError:v11];
  }

  else
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v13 = MEMORY[0x277CCABB0];
      requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(requestOperationQueue, "operationCount")}];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, pending requests: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(_HAPAccessoryServerBTLE200 *)selfCopy _disconnectWithDisconnectionError:v3 completionHandler:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_suspendConnectionIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Suspending the connection idle timer...", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer suspend];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeConnectionIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Resuming the connection idle timer...", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_kickConnectionIdleTimer
{
  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];
  [connectionIdleTimer kick];
}

- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  connectionStartTime = [(HAPAccessoryServer *)self connectionStartTime];
  if (connectionStartTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    connectionStartTime2 = [(HAPAccessoryServer *)self connectionStartTime];
    [date timeIntervalSinceDate:connectionStartTime2];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(HAPAccessoryServer *)self setConnectionStartTime:0];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke;
  v16[3] = &unk_2786D4400;
  v17 = errorCopy;
  selfCopy = self;
  v20 = v12;
  v19 = handlerCopy;
  v14 = handlerCopy;
  v15 = errorCopy;
  dispatch_async(clientQueue, v16);
}

- (BOOL)isReadyForOperation:(int64_t)operation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___HAPAccessoryServerBTLE200_isReadyForOperation___block_invoke;
  block[3] = &unk_2786D5778;
  block[4] = self;
  block[5] = &v8;
  block[6] = operation;
  dispatch_sync(clientQueue, block);

  LOBYTE(operation) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return operation;
}

- (void)_handleConnectionWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Connection completed with error: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionState:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _suspendConnectionIdleTimer];
  }

  else
  {
    browser = [(HAPAccessoryServerBTLE *)selfCopy browser];
    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [browser setConnectionLatency:1 forPeripheral:peripheral];

    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionState:2];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _updateConnectionIdleTime:[(HAPAccessoryServerBTLE *)selfCopy connectionIdleTime]];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    [(HAPAccessoryServerBTLE *)selfCopy incrementHAPBTLEMetricsConnectionCount];
  }

  connectionCompletionHandler = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionCompletionHandler];
  v12 = MEMORY[0x231885210]();
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, errorCopy);
  }

  [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionCompletionHandler:0];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___HAPAccessoryServerBTLE200_handleConnectionWithPeripheral_withError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = errorCopy;
  selfCopy = self;
  v14 = peripheralCopy;
  v9 = peripheralCopy;
  v10 = errorCopy;
  dispatch_async(clientQueue, block);
}

- (void)_restartConnectionIdleTimer:(double)timer
{
  v19 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    timerCopy = timer;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating connectionIdle time to: %f", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:timer];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionIdleTimer:v9];

  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer setDelegate:selfCopy];

  connectionIdleTimer2 = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  [connectionIdleTimer2 setDelegateQueue:clientQueue];

  connectionIdleTimer3 = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer3 resume];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateConnectionIdleTime:(unsigned __int8)time
{
  timeCopy = time;
  [(HAPAccessoryServerBTLE *)self setConnectionIdleTime:?];
  v5 = 5.0;
  if (timeCopy == 1)
  {
    v5 = 2.0;
  }

  if (timeCopy == 2)
  {
    v5 = 15.0;
  }

  [(_HAPAccessoryServerBTLE200 *)self _restartConnectionIdleTimer:v5];
}

- (void)updateConnectionIdleTime:(unsigned __int8)time
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___HAPAccessoryServerBTLE200_updateConnectionIdleTime___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  timeCopy = time;
  dispatch_async(clientQueue, v6);
}

- (void)_disconnectWithDisconnectionError:(id)error completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectionState = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  if (connectionState == 2)
  {
    requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    operationCount = [requestOperationQueue operationCount];

    if (operationCount && [errorCopy isHAPError] && objc_msgSend(errorCopy, "code") == 29)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        blePeripheral = [(HAPAccessoryServerBTLE *)selfCopy blePeripheral];
        shortDescription = [blePeripheral shortDescription];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:operationCount];
        *buf = 138543874;
        v44 = v15;
        v45 = 2112;
        v46 = shortDescription;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Deferring disconnecting from the peripheral: %@. Pending requests: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    }

    else
    {
      [(_HAPAccessoryServerBTLE200 *)self setConnectionCompletionHandler:handlerCopy];
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        blePeripheral2 = [(HAPAccessoryServerBTLE *)selfCopy2 blePeripheral];
        shortDescription2 = [blePeripheral2 shortDescription];
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:operationCount];
        *buf = 138543874;
        v44 = v29;
        v45 = 2112;
        v46 = shortDescription2;
        v47 = 2112;
        v48 = v32;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from the peripheral: %@. Pending requests: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke;
      v40 = &unk_2786D7050;
      v41 = selfCopy2;
      v42 = errorCopy;
      __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke(&v37);
      [(_HAPAccessoryServerBTLE200 *)selfCopy2 _suspendConnectionIdleTimer:v37];
      browser = [(HAPAccessoryServerBTLE *)selfCopy2 browser];
      [browser disconnectFromBTLEAccessoryServer:selfCopy2];

      [(_HAPAccessoryServerBTLE200 *)selfCopy2 setConnectionState:3];
    }
  }

  else
  {
    v19 = connectionState;
    if ((connectionState & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
        *buf = 138543618;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Trying to disconnect but a connection is already in progress (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4];
    }

    else
    {
      v25 = 0;
    }

    v34 = MEMORY[0x231885210](handlerCopy);
    v35 = v34;
    if (v34)
    {
      (*(v34 + 16))(v34, v25);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_cancelConnectionWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if ([(_HAPAccessoryServerBTLE200 *)self connectionState]== 1)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = errorCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = errorCopy;
    if (!errorCopy)
    {
      v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    }

    connectionCompletionHandler = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionCompletionHandler];
    v11 = MEMORY[0x231885210]();
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v5);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionCompletionHandler:0];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];

    if (discoveryContext)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:v5];
    }

    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing])
    {
      userInfo = [v5 userInfo];
      v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v5;
      }

      v18 = v17;

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __57___HAPAccessoryServerBTLE200__cancelConnectionWithError___block_invoke;
      v25 = &unk_2786D7050;
      v26 = selfCopy;
      v27 = v18;
      v19 = v18;
      __57___HAPAccessoryServerBTLE200__cancelConnectionWithError___block_invoke(&v22);
    }

    v20 = [(HAPAccessoryServerBTLE *)selfCopy browser:v22];
    [v20 disconnectFromBTLEAccessoryServer:selfCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D6BE0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_decryptData:(id)data error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2048;
    v22 = [dataCopy length];
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Decrypting data with length %lu", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
LABEL_7:
    v15 = securitySession2;
    v16 = [securitySession2 decryptData:dataCopy additionalAuthenticatedData:0 error:error];

    goto LABEL_8;
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  isSecureSession = [pairSetupSession isSecureSession];

  if (isSecureSession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    goto LABEL_7;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0 marker:235];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = tagCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Encrypting plaintext data: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
LABEL_7:
    v15 = securitySession2;
    v16 = [securitySession2 encryptData:tagCopy additionalAuthenticatedData:0 error:error];

    goto LABEL_8;
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  isSecureSession = [pairSetupSession isSecureSession];

  if (isSecureSession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    goto LABEL_7;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0 marker:234];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)protocolInfoServiceSignatureCharacteristics
{
  primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
  v3 = [primaryAccessory servicesOfType:@"000000A2-0000-1000-8000-0026BB765291"];
  firstObject = [v3 firstObject];

  v5 = [firstObject characteristicsOfType:@"000000A5-0000-1000-8000-0026BB765291"];
  firstObject2 = [v5 firstObject];

  return firstObject2;
}

- (HAPCharacteristic)pairVerifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairVerifyCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"0000004E-0000-1000-8000-0026BB765291"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairVerifyCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairVerifyCharacteristic);

  return v9;
}

- (void)_handleSecuritySessionSetupExchangeData:(id)data
{
  location[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pairVerifyCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairVerifyCharacteristic];
  if (pairVerifyCharacteristic)
  {
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70___HAPAccessoryServerBTLE200__handleSecuritySessionSetupExchangeData___block_invoke;
    v13[3] = &unk_2786D43D0;
    objc_copyWeak(&v15, location);
    v14 = pairVerifyCharacteristic;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:dataCopy toCharacteristic:v14 authorizationData:0 contextData:0 options:18 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Security session setup exchange failed, missing the Pair Verify characteristic", location, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Security session setup exchange failed." reason:@"Missing Pair Verify characteristic." suggestion:0 underlyingError:0];
    securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
    [securitySession receivedSetupExchangeData:0 error:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_establishSecureSession
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HAPAccessoryServerBTLE *)self isPaired])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = @"Unable to establish a secure session because the accessory isn't paired.";
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Unable to establish a secure session because the accessory isn't paired." reason:0 suggestion:0 underlyingError:0 marker:233];
    if (v8)
    {
      v9 = v8;
      [(_HAPAccessoryServerBTLE200 *)selfCopy _disconnectWithDisconnectionError:v8 completionHandler:0];
    }

    goto LABEL_12;
  }

  securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([securitySession isOpen])
  {

LABEL_9:
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@A security session is already established.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
LABEL_12:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  securitySession2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  isOpening = [securitySession2 isOpening];

  if (isOpening)
  {
    goto LABEL_9;
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    keyBag = [(HAPAccessoryServer *)self keyBag];
    [accessoryCache updateCurrentPairingIdentityIndexIfNeededForKeyBag:keyBag];
  }

  v20 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:[(HAPAccessoryServerBTLE *)self resumeSessionID] delegate:self];
  [(_HAPAccessoryServerBTLE200 *)self setSecuritySession:v20];
  [(HAPSecuritySession *)v20 open];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setSecuritySessionOpen:(BOOL)open
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)isSecuritySessionOpen
{
  securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  isOpen = [securitySession isOpen];

  return isOpen;
}

- (void)setSecuritySession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  securitySession = self->_securitySession;
  self->_securitySession = sessionCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (HAPSecuritySession)securitySession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_securitySession;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)_invokeOperationsReceivedDuringConnectionStateChangeWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  operationsReceivedDuringConnectionStateChange = [(_HAPAccessoryServerBTLE200 *)self operationsReceivedDuringConnectionStateChange];
  v7 = [operationsReceivedDuringConnectionStateChange count];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = MEMORY[0x277CCABB0];
      operationsReceivedDuringConnectionStateChange2 = [(_HAPAccessoryServerBTLE200 *)selfCopy operationsReceivedDuringConnectionStateChange];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(operationsReceivedDuringConnectionStateChange2, "count")}];
      *buf = 138543874;
      v28 = v11;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Invoking %@ operation blocks pended during connection state change with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    operationsReceivedDuringConnectionStateChange3 = [(_HAPAccessoryServerBTLE200 *)selfCopy operationsReceivedDuringConnectionStateChange];
    v16 = [operationsReceivedDuringConnectionStateChange3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(operationsReceivedDuringConnectionStateChange3);
          }

          (*(*(*(&v22 + 1) + 8 * v19++) + 16))();
        }

        while (v17 != v19);
        v17 = [operationsReceivedDuringConnectionStateChange3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    operationsReceivedDuringConnectionStateChange4 = [(_HAPAccessoryServerBTLE200 *)selfCopy operationsReceivedDuringConnectionStateChange];
    [operationsReceivedDuringConnectionStateChange4 removeAllObjects];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)evaluateConnectionStateForOperation:(int64_t)operation block:(id)block
{
  blockCopy = block;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___HAPAccessoryServerBTLE200_evaluateConnectionStateForOperation_block___block_invoke;
  block[3] = &unk_2786D43A8;
  block[4] = self;
  v10 = blockCopy;
  operationCopy = operation;
  v8 = blockCopy;
  dispatch_async(clientQueue, block);
}

- (void)_cancelAllQueuedOperationsWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    operations = [requestOperationQueue operations];
    v7 = [operations count];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
        operations2 = [requestOperationQueue2 operations];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = operations2;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling all queued operations: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    requestOperationQueue3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    [requestOperationQueue3 cancelAllOperationsWithError:errorCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resumeAllOperations
{
  v13 = *MEMORY[0x277D85DE8];
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  isSuspended = [requestOperationQueue isSuspended];

  if (isSuspended)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Resuming all request operations", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
    [requestOperationQueue2 setSuspended:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_suspendAllOperations
{
  v13 = *MEMORY[0x277D85DE8];
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  isSuspended = [requestOperationQueue isSuspended];

  if ((isSuspended & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Suspending all request operations", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
    [requestOperationQueue2 setSuspended:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_outstandingRequests
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  operations = [requestOperationQueue operations];

  v4 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(operations);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) isFinished] ^ 1;
      }

      v5 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_enqueueRequest:(id)request shouldPrioritize:(BOOL)prioritize
{
  prioritizeCopy = prioritize;
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = requestCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Queueing request: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  characteristic = [requestCopy characteristic];
  pairVerifyCharacteristic = [(_HAPAccessoryServerBTLE200 *)selfCopy pairVerifyCharacteristic];
  if ([characteristic isEqual:pairVerifyCharacteristic])
  {
    type = [requestCopy type];

    if (type != 1)
    {
      pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)selfCopy pairVerifyOperationQueue];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([requestCopy isEncrypted])
  {
    securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
    if (![securitySession isOpen])
    {
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
      if (![securitySession2 isOpening])
      {
        pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
        isSecureSession = [pairSetupSession isSecureSession];

        if ((isSecureSession & 1) == 0)
        {
          [(_HAPAccessoryServerBTLE200 *)selfCopy _suspendAllOperations];
          [(HAPAccessoryServer *)selfCopy setMetric_pairVerifyReason:@"noSession.request"];
          [(_HAPAccessoryServerBTLE200 *)selfCopy _establishSecureSession];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
LABEL_13:
  v17 = pairVerifyOperationQueue;
  if (prioritizeCopy)
  {
    operation = [requestCopy operation];
    [operation setQueuePriority:4];
  }

  operation2 = [requestCopy operation];
  [v17 addOperation:operation2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sendProtocolInfoServiceExchangeData:(id)data completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy length] >= 2)
  {
    v8 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];

    dataCopy = v8;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v12;
    v34 = 2112;
    v35 = dataCopy;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending Protocol Exchange for data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  protocolInfoServiceSignatureCharacteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy protocolInfoServiceSignatureCharacteristics];
  if (protocolInfoServiceSignatureCharacteristics)
  {
    objc_initWeak(&location, selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78___HAPAccessoryServerBTLE200__sendProtocolInfoServiceExchangeData_completion___block_invoke;
    v28[3] = &unk_2786D4380;
    objc_copyWeak(&v30, &location);
    v14 = completionCopy;
    v29 = v14;
    v15 = MEMORY[0x231885210](v28);
    v16 = [[HAPBTLERequest alloc] initWithCharacteristic:protocolInfoServiceSignatureCharacteristics requestType:255 bodyData:dataCopy shouldEncrypt:1 timeoutInterval:10.0];
    if (v16)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _sendRequest:v16 shouldPrioritize:0 responseHandler:v15];
      [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v24;
        v34 = 2112;
        v35 = protocolInfoServiceSignatureCharacteristics;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create exchange request for characteristic, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v25 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
      (*(v14 + 2))(v14, v25, 0);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed, missing the Service Signature Characteristic for Protocol Info Service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:232];
    (*(completionCopy + 2))(completionCopy, v21, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error
{
  v112 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _pendingRequestForCharacteristic:characteristicCopy];
  v12 = v11;
  if (v11)
  {
    if (errorCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v107 = v16;
        v108 = 2112;
        v109 = v12;
        v110 = 2112;
        v111 = errorCopy;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response for request, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v12 cancelWithError:errorCopy];
      goto LABEL_64;
    }

    responseTimer = [v11 responseTimer];
    [responseTimer suspend];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v22 = dataCopy;
    if ([v12 isEncrypted])
    {
      v105 = 0;
      v23 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:v22 error:&v105];
      v24 = v105;

      if (!v23)
      {
        v54 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543874;
          v107 = v57;
          v108 = 2112;
          v109 = v12;
          v110 = 2112;
          v111 = v24;
          _os_log_impl(&dword_22AADC000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt response to request %@ with error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v54);
        [v12 cancelWithError:v24];
        goto LABEL_63;
      }

      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v107 = v28;
      v108 = 2112;
      v109 = v24;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Decrypted Response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v104 = 0;
    v29 = [HAPBTLEControlPacket packetWithSerializedData:v24 error:&v104];
    v30 = v104;
    if (!v29)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy3;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v44 = v24;
        v46 = v45 = v30;
        *buf = 138543618;
        v107 = v46;
        v108 = 2112;
        v109 = v45;
        _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse control field with error: %@", buf, 0x16u);

        v30 = v45;
        v24 = v44;
        v29 = 0;
      }

      objc_autoreleasePoolPop(v41);
      [v12 cancelWithError:v30];
      goto LABEL_62;
    }

    v102 = v24;
    if ([v29 type] == 1)
    {
      if (![v29 isContinuationPacket])
      {
        goto LABEL_19;
      }

      [v12 identifier];
      v32 = v31 = v30;
      transactionIdentifier = [v29 transactionIdentifier];
      v34 = [v32 isEqual:transactionIdentifier];

      v30 = v31;
      if (v34)
      {
LABEL_19:
        v101 = v30;
        if ([v29 isContinuationPacket])
        {
          v35 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 _pendingResponseForRequest:v12];
          context = objc_autoreleasePoolPush();
          v36 = selfCopy3;
          v37 = HMFGetOSLogHandle();
          v38 = v37;
          if (!v35)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v87 = v86 = v30;
              *buf = 138543618;
              v107 = v87;
              v108 = 2112;
              v109 = v12;
              _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve the response for the continued request: %@", buf, 0x16u);

              v30 = v86;
            }

            objc_autoreleasePoolPop(context);
            v40 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Request failed." reason:@"Failed to handle continued response." suggestion:0 underlyingError:0 marker:231];
            [v12 cancelWithError:v40];
            v24 = v102;
            goto LABEL_61;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v39;
            v108 = 2112;
            v109 = v35;
            _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Received data for continued response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v40 = v35;
        }

        else
        {
          v40 = [[HAPBTLEResponse alloc] initWithRequest:v12];
          pendingResponses = [(_HAPAccessoryServerBTLE200 *)selfCopy3 pendingResponses];
          [pendingResponses addObject:v40];

          v59 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:4.0];
          [v59 setDelegate:selfCopy3];
          clientQueue = [(HAPAccessoryServer *)selfCopy3 clientQueue];
          [v59 setDelegateQueue:clientQueue];

          [v12 setResponseTimer:v59];
        }

        payload = [v29 payload];
        v103 = 0;
        v62 = [(HAPBTLEResponse *)v40 appendData:payload error:&v103];
        contexta = v103;

        if (!v62)
        {
          v99 = v40;
          v76 = objc_autoreleasePoolPush();
          v77 = selfCopy3;
          v78 = HMFGetOSLogHandle();
          v24 = v102;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v79;
            v108 = 2112;
            v109 = v99;
            _os_log_impl(&dword_22AADC000, v78, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize the response data for response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v76);
          v63 = contexta;
          v80 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15 description:@"Failed to deserialize response." reason:0 suggestion:0 underlyingError:contexta];
          [v12 cancelWithError:v80];

          v40 = v99;
          v30 = v101;
          goto LABEL_60;
        }

        v24 = v102;
        if ([(HAPBTLEResponse *)v40 isComplete])
        {
          v30 = v101;
          if ([(HAPBTLEResponse *)v40 isValid])
          {
            v63 = contexta;
            if ([v12 isFinished])
            {
LABEL_60:

LABEL_61:
              goto LABEL_62;
            }

            v97 = v40;
            v64 = objc_autoreleasePoolPush();
            v65 = selfCopy3;
            v66 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v68 = v67 = v64;
              *buf = 138543618;
              v107 = v68;
              v108 = 2112;
              v109 = v97;
              _os_log_impl(&dword_22AADC000, v66, OS_LOG_TYPE_INFO, "%{public}@Handling completed response: %@", buf, 0x16u);

              v64 = v67;
            }

            objc_autoreleasePoolPop(v64);
            if ([v12 type] == 4)
            {
              [(_HAPAccessoryServerBTLE200 *)v65 _suspendAllOperations];
            }

            operation = [v12 operation];
            [operation finish];

            v30 = v101;
            v24 = v102;
            v40 = v97;
          }

          else
          {
            v88 = objc_autoreleasePoolPush();
            v89 = selfCopy3;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v91 = HMFGetLogIdentifier();
              *buf = 138543874;
              v107 = v91;
              v108 = 2112;
              v109 = v40;
              v110 = 2112;
              v111 = v12;
              _os_log_impl(&dword_22AADC000, v90, OS_LOG_TYPE_ERROR, "%{public}@Received invalid response, %@, to request: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v88);
            v92 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15 description:@"Invalid response." reason:@"The response could not be validated against the request." suggestion:0 underlyingError:0];
            [v12 cancelWithError:v92];

            v30 = v101;
            v24 = v102;
          }
        }

        else
        {
          v81 = v40;
          v82 = objc_autoreleasePoolPush();
          v83 = selfCopy3;
          v84 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v85 = v100 = v82;
            *buf = 138543618;
            v107 = v85;
            v108 = 2112;
            v109 = v81;
            _os_log_impl(&dword_22AADC000, v84, OS_LOG_TYPE_DEBUG, "%{public}@Requesting additional data for response: %@", buf, 0x16u);

            v82 = v100;
          }

          objc_autoreleasePoolPop(v82);
          [(_HAPAccessoryServerBTLE200 *)v83 _requestResponseForRequest:v12];
          v30 = v101;
          v40 = v81;
        }

        v63 = contexta;
        goto LABEL_60;
      }

      v70 = objc_autoreleasePoolPush();
      v71 = selfCopy3;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        contextb = HMFGetLogIdentifier();
        [v29 transactionIdentifier];
        v73 = v98 = v70;
        identifier = [v12 identifier];
        *buf = 138543874;
        v107 = contextb;
        v108 = 2112;
        v109 = v73;
        v110 = 2112;
        v111 = identifier;
        v75 = identifier;
        _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_ERROR, "%{public}@The continuation response payload transaction identifier, %@, does not match the request's transaction identifier, %@.", buf, 0x20u);

        v30 = v31;
        v70 = v98;
      }

      objc_autoreleasePoolPop(v70);
      [v12 cancelWithError:0];
    }

    else
    {
      v47 = v30;
      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy3;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        type = [v29 type];
        *buf = 138543618;
        v107 = v51;
        v108 = 1024;
        LODWORD(v109) = type;
        _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_ERROR, "%{public}@Invalid response type control type: %u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v48);
      v53 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Request failed." reason:@"Invalid response control type." suggestion:0 underlyingError:0 marker:230];
      [v12 cancelWithError:v53];

      v30 = v47;
    }

    v24 = v102;
LABEL_62:

LABEL_63:
    goto LABEL_64;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v107 = v20;
    v108 = 2112;
    v109 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected response from characteristic, %@, dropping", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_64:

  v93 = *MEMORY[0x277D85DE8];
}

- (void)_requestResponseForRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  cbCharacteristic = [characteristic cbCharacteristic];

  if (cbCharacteristic)
  {
    responseTimer = [requestCopy responseTimer];
    [responseTimer resume];

    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    [peripheral readValueForCharacteristic:cbCharacteristic];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = requestCopy;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for request: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    peripheral = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
    [requestCopy cancelWithError:peripheral];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleWriteCompletionForCharacteristic:(id)characteristic error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v9 = [characteristicWriteCompletionHandlers objectForKey:characteristicCopy];

  if (v9)
  {
    characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
    [characteristicWriteCompletionHandlers2 removeObjectForKey:characteristicCopy];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, errorCopy);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected write completion from characteristic, %@, dropping", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendData:(id)data toCharacteristic:(id)characteristic completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  handlerCopy = handler;
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v12 = [characteristicWriteCompletionHandlers objectForKey:characteristicCopy];

  if (!v12)
  {
    cbCharacteristic = [characteristicCopy cbCharacteristic];
    if (cbCharacteristic)
    {
      v17 = cbCharacteristic;
      characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
      v20 = [handlerCopy copy];
      v21 = MEMORY[0x231885210]();
      [characteristicWriteCompletionHandlers2 setObject:v21 forKey:characteristicCopy];

      peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
      [peripheral writeValue:dataCopy forCharacteristic:v17 type:0];

      [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for characteristic: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      if (handlerCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
        (*(handlerCopy + 2))(handlerCopy, v27);
      }

      v17 = 0;
    }

    goto LABEL_13;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v16;
    v31 = 2112;
    v32 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@A write operation for '%@' is already is progress.", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (handlerCopy)
  {
    v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4 description:@"Operation in progress." reason:@"A write operation is already in progress." suggestion:0 underlyingError:0];
    (*(handlerCopy + 2))(handlerCopy, v17);
LABEL_13:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendControlPacket:(id)packet forRequest:(id)request completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  requestCopy = request;
  handlerCopy = handler;
  serialize = [packetCopy serialize];
  if (![requestCopy isEncrypted])
  {
    v13 = 0;
    goto LABEL_5;
  }

  v29 = 0;
  v12 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:serialize error:&v29];
  v13 = v29;

  if (v12)
  {
    serialize = v12;
LABEL_5:
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [serialize length];
      *buf = 138543874;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2112;
      v35 = requestCopy;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Sending %tu bytes of control payload for request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v22;
      v32 = 2112;
      v33 = requestCopy;
      v34 = 2112;
      v35 = serialize;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Sending control payload for request, %@, to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    characteristic = [requestCopy characteristic];
    [(_HAPAccessoryServerBTLE200 *)v20 _sendData:serialize toCharacteristic:characteristic completionHandler:handlerCopy];

    goto LABEL_10;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v28;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt control payload with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v13);
  }

LABEL_10:

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_maximumControlWriteLengthForRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  v6 = [peripheral maximumWriteValueLengthForType:0];

  peripheral2 = [(HAPAccessoryServerBTLE *)self peripheral];
  v8 = [peripheral2 maximumWriteValueLengthForType:1];

  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the maximum write length to 512", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v6 = 512;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v8 != -3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v16;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the peripheral's mtu length to 23", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v8 = 23;
LABEL_11:
  isEncrypted = [requestCopy isEncrypted];
  v18 = 17;
  if (!isEncrypted)
  {
    v18 = 1;
  }

  if (v8 / v18 >= 4)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v22;
      v31 = 2048;
      v32 = v8;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Electing to write as reduced size payload of length %tu", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v6 = v8;
  }

  if ([requestCopy isEncrypted])
  {
    if (v6 > 0xF)
    {
      v6 -= 16;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543874;
        v30 = v26;
        v31 = 2048;
        v32 = v6;
        v33 = 1024;
        v34 = 16;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@The maximum write length, %tu, is less than the auth tag length, %d", &v29, 0x1Cu);
      }

      objc_autoreleasePoolPop(v23);
      v6 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_reallySendRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(clientQueue, block);
}

- (id)_pendingResponseForRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pendingResponses = [(_HAPAccessoryServerBTLE200 *)self pendingResponses];
  v6 = [pendingResponses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(pendingResponses);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        request = [v9 request];
        v11 = [request isEqual:requestCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pendingResponses countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_pendingRequestForCharacteristic:(id)characteristic
{
  v19 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
  v6 = [pendingRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(pendingRequests);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        characteristic = [v9 characteristic];
        v11 = [characteristic isEqual:characteristicCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pendingRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (HAPCharacteristic)identifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_identifyCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"0000003E-0000-1000-8000-0026BB765291"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000014-0000-1000-8000-0026BB765291"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_identifyCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_identifyCharacteristic);

  return v9;
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke;
  v6[3] = &unk_2786D3EB8;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:1 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (unint64_t)_getPairSetupType
{
  result = [(HAPAccessoryServer *)self authMethod];
  if (result != 1)
  {
    if ([(HAPAccessoryServer *)self authMethod]== 2)
    {
      if ([(_HAPAccessoryServerBTLE200 *)self authenticated])
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if ([(HAPAccessoryServer *)self authMethod]== 4)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_sendPairingRequestData:(id)data completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  pairingsCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairingsCharacteristic];
  if (pairingsCharacteristic)
  {
    objc_initWeak(location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __72___HAPAccessoryServerBTLE200__sendPairingRequestData_completionHandler___block_invoke;
    v19 = &unk_2786D6678;
    objc_copyWeak(&v21, location);
    v20 = handlerCopy;
    v9 = MEMORY[0x231885210](&v16);
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:dataCopy toCharacteristic:pairingsCharacteristic authorizationData:0 contextData:0 options:7 completionHandler:v9, v16, v17, v18, v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, missing the Pairings characteristic", location, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (handlerCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Missing Pairings characteristic." suggestion:0 underlyingError:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  dispatch_async(clientQueue, block);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion serverPairingCompletion:(id)pairingCompletion
{
  v35 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  pairingCompletionCopy = pairingCompletion;
  v30 = 0;
  v11 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v30];
  v12 = v30;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v11)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Received request to remove pairing for the current controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    objc_initWeak(buf, selfCopy);
    clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_735;
    v22[3] = &unk_2786D4240;
    objc_copyWeak(&v26, buf);
    v23 = queueCopy;
    v24 = completionCopy;
    v25 = pairingCompletionCopy;
    [(_HAPAccessoryServerBTLE200 *)selfCopy removePairing:v11 completionQueue:clientQueue completionHandler:v22];

    [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v19;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Remove current pairing failed, failed to get the current controller with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (queueCopy && completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke;
      block[3] = &unk_2786D65D8;
      v29 = completionCopy;
      v28 = v12;
      dispatch_async(queueCopy, block);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke;
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

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke;
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

- (HAPCharacteristic)pairingsCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingsCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000050-0000-1000-8000-0026BB765291"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairingsCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairingsCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairSetupCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"0000004C-0000-1000-8000-0026BB765291"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairSetupCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairingFeaturesCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"0000004F-0000-1000-8000-0026BB765291"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairingFeaturesCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  return v9;
}

- (void)_pairingCompletedWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Pair Setup completed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairingDisconnectionError:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _disconnectWithDisconnectionError:errorCopy completionHandler:0];
  }

  _getPairSetupType = [(_HAPAccessoryServerBTLE200 *)selfCopy _getPairSetupType];
  if (_getPairSetupType == 5)
  {
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy _delegateRespondsToSelector:sel_accessoryServer_validateCert_model_])
    {
      pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
      getCertificate = [pairSetupSession getCertificate];

      delegateQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_3;
      v22[3] = &unk_2786D7050;
      v22[4] = selfCopy;
      v23 = getCertificate;
      v20 = getCertificate;
      dispatch_async(delegateQueue, v22);
    }
  }

  else if (_getPairSetupType == 3)
  {
    pairSetupSession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    [pairSetupSession2 generateSessionKeys];

    v11 = [HAPAuthSession alloc];
    protocolInfoServiceSignatureCharacteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy protocolInfoServiceSignatureCharacteristics];
    instanceID = [protocolInfoServiceSignatureCharacteristics instanceID];
    v14 = [(HAPAuthSession *)v11 initWithRole:0 instanceId:instanceID delegate:selfCopy];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setAuthSession:v14];

    date = [MEMORY[0x277CBEAA8] date];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke;
    v24[3] = &unk_2786D6A98;
    v25 = date;
    v26 = selfCopy;
    v16 = date;
    [(_HAPAccessoryServerBTLE200 *)selfCopy getAccessoryInfo:v24];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
    [(HAPAccessoryServer *)selfCopy setPairingRequest:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _notifyDelegatesPairingStopped:errorCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error
{
  passwordCopy = password;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___HAPAccessoryServerBTLE200_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = passwordCopy;
  v8 = passwordCopy;
  dispatch_async(clientQueue, v10);

  return 0;
}

- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(_HAPAccessoryServerBTLE200 *)self isBadSetupCode]&& [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didReceiveBadPasswordThrottleAttemptsWithDelay_])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:handlerCopy];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6 = delegateQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke;
    v14[3] = &unk_2786D6CA0;
    v14[4] = self;
    v7 = v14;
LABEL_6:
    dispatch_async(delegateQueue, v7);
    goto LABEL_10;
  }

  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:handlerCopy];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6 = delegateQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_2786D6CA0;
    v13[4] = self;
    v7 = v13;
    goto LABEL_6;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v11;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@The delegate does not support prompting the user for a passcode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Pairing Failed." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
  handlerCopy[2](handlerCopy, 0, v6);
  [(_HAPAccessoryServerBTLE200 *)selfCopy setSetupCodeCompletionHandler:0];
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairSetupSessionExchangeData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke;
  v18[3] = &unk_2786D6A98;
  v5 = dataCopy;
  v19 = v5;
  selfCopy = self;
  v6 = MEMORY[0x231885210](v18);
  pairSetupCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairSetupCharacteristic];
  if (pairSetupCharacteristic)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_680;
    v15[3] = &unk_2786D67B8;
    v15[4] = self;
    v17 = v6;
    v16 = pairSetupCharacteristic;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v5 toCharacteristic:v16 authorizationData:0 contextData:0 options:26 completionHandler:v15];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pair Setup characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7 description:@"Pairing Failed." reason:@"Missing Pair Setup characteristic." suggestion:0 underlyingError:0];
    (v6)[2](v6, v12);
    pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy2 pairSetupSession];
    [pairSetupSession receivedSetupExchangeData:0 error:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopPairingWithError:(id *)error
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE200_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);

  return 1;
}

- (void)continuePairingAfterAuthPrompt
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (BOOL)_parsePairingFeaturesCharacteristic:(id)characteristic authMethod:(unint64_t *)method error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  value = [characteristicCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    -[_HAPAccessoryServerBTLE200 setFeatureFlags:](self, "setFeatureFlags:", [value unsignedCharValue]);
    featureFlags = [(_HAPAccessoryServerBTLE200 *)self featureFlags];
    v12 = 2;
    v13 = 4;
    v14 = 5;
    if ((featureFlags & 0x10) != 0)
    {
      v14 = 6;
    }

    if ((featureFlags & 8) == 0)
    {
      v13 = v14;
    }

    if ((featureFlags & 2) == 0)
    {
      v12 = v13;
    }

    if (featureFlags)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if ((featureFlags & 0xFFFFFFBF) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(HAPAccessoryServer *)self setAuthMethod:v16];
    if ([(HAPAccessoryServer *)self authMethod]== 6)
    {
      [(HAPAccessoryServer *)self setAuthMethod:4];
    }

    if (method)
    {
      *method = [(HAPAccessoryServer *)self authMethod];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the Pairing Features characteristic value is invalid", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing Failed." reason:@"The Pairing Features characteristic value is missing" suggestion:0 underlyingError:0];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (void)_getPairingFeaturesWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke;
  v22[3] = &unk_2786D4218;
  v22[4] = self;
  v5 = handlerCopy;
  v23 = v5;
  v6 = MEMORY[0x231885210](v22);
  pairingFeaturesCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairingFeaturesCharacteristic];
  v8 = pairingFeaturesCharacteristic;
  if (pairingFeaturesCharacteristic)
  {
    value = [pairingFeaturesCharacteristic value];

    if (!value)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_655;
      v19[3] = &unk_2786D67B8;
      v19[4] = self;
      v21 = v6;
      v15 = v8;
      v20 = v15;
      v16 = MEMORY[0x231885210](v19);
      [(_HAPAccessoryServerBTLE200 *)self _readValueForCharacteristic:v15 options:2 completionHandler:v16];

      goto LABEL_9;
    }

    *buf = 0;
    v18 = 0;
    [(_HAPAccessoryServerBTLE200 *)self _parsePairingFeaturesCharacteristic:v8 authMethod:buf error:&v18];
    v10 = v18;
    (v6)[2](v6, *buf, v10);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pairing Features characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7 description:@"Pairing Failed." reason:@"Missing Pairing Features characteristic." suggestion:0 underlyingError:0];
    (v6)[2](v6, 0, v10);
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_checkForAuthPrompt:(BOOL)prompt
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke;
  v3[3] = &unk_2786D41F0;
  v3[4] = self;
  promptCopy = prompt;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:2 completionHandler:v3];
}

- (void)startPairingWithRequest:(id)request
{
  requestCopy = request;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v10 = currentActivity;
  v11 = requestCopy;
  v7 = requestCopy;
  v8 = currentActivity;
  dispatch_async(clientQueue, block);
}

- (void)_configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  group = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = characteristicsCopy;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v9)
  {
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        characteristic = [v12 characteristic];
        properties = [characteristic properties];

        if ((properties & 8) != 0)
        {
          dispatch_group_enter(group);
          broadcastEnable = [v12 broadcastEnable];
          broadcastInterval = [v12 broadcastInterval];
          characteristic2 = [v12 characteristic];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke;
          v38[3] = &unk_2786D66A0;
          v38[4] = self;
          v39 = v30;
          v40 = group;
          [(_HAPAccessoryServerBTLE200 *)self _enableBroadcastEvent:broadcastEnable interval:broadcastInterval forCharacteristic:characteristic2 completionHandler:v38];
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            characteristic3 = [v12 characteristic];
            *buf = 138543618;
            v46 = v18;
            v47 = 2112;
            v48 = characteristic3;
            _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic %@ does not support broadcast notification", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v9);
  }

  objc_initWeak(buf, self);
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_607;
  block[3] = &unk_2786D6C08;
  objc_copyWeak(&v37, buf);
  v34 = queueCopy;
  v35 = v30;
  v36 = handlerCopy;
  v24 = v30;
  v25 = handlerCopy;
  v26 = queueCopy;
  dispatch_group_notify(group, clientQueue, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = characteristicsCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = characteristicsCopy;
  dispatch_async(clientQueue, v15);
}

- (void)_configureBroadcastKeyGeneration:(unsigned __int8)generation service:(id)service withCompletion:(id)completion
{
  generationCopy = generation;
  v38 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86___HAPAccessoryServerBTLE200__configureBroadcastKeyGeneration_service_withCompletion___block_invoke;
  v26[3] = &unk_2786D4178;
  v26[4] = self;
  v30 = generationCopy;
  objc_copyWeak(&v29, &location);
  v10 = completionCopy;
  v28 = v10;
  v11 = serviceCopy;
  v27 = v11;
  v12 = MEMORY[0x231885210](v26);
  v13 = objc_opt_class();
  v25 = 0;
  if (generationCopy == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v13 configurationRequestForService:v11 configRequestType:v14 error:&v25];
  v16 = v25;
  if (v15)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v15 shouldPrioritize:0 responseHandler:v12];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create configuration request for service, %@, with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to configure service %@.", v11];
    v23 = [v21 hapErrorWithCode:1 description:v22 reason:@"Failed to create request." suggestion:0 underlyingError:v16];

    (*(v10 + 2))(v10, 0, 0, 0, v23, 0.0);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleEventIndicationForCharacteristic:(id)characteristic
{
  v17 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if ([characteristicCopy properties])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Reading value on Indication for characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(_HAPAccessoryServerBTLE200 *)selfCopy markNotifyingCharacteristicUpdatedforCharacteristic:characteristicCopy];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:characteristicCopy];
    clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke;
    v12[3] = &unk_2786D5B30;
    v12[4] = selfCopy;
    [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicValues:v9 queue:clientQueue completionHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  characteristicEnableEventCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
  v9 = [characteristicEnableEventCompletionHandlers objectForKey:characteristicCopy];

  if (v9)
  {
    characteristicEnableEventCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
    [characteristicEnableEventCompletionHandlers2 removeObjectForKey:characteristicCopy];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, errorCopy);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Received unexpected notification updated completion from characteristic, %@, dropping", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v123 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  v9 = [(_HAPAccessoryServerBTLE200 *)self connectionState]== 2;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      if (eventsCopy)
      {
        v14 = @"Enabling";
      }

      else
      {
        v14 = @"Disabling";
      }

      shortDescription = [characteristicsCopy shortDescription];
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      connectionState = shortDescription;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@%@ events for characteristics: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    array = [MEMORY[0x277CBEB18] array];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v16 = characteristicsCopy;
    v17 = [v16 countByEnumeratingWithState:&v98 objects:v122 count:16];
    if (v17)
    {
      obj = 0;
      v18 = *v99;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v99 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v98 + 1) + 8 * i);
          if ([v20 eventNotificationsEnabled] == eventsCopy)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = selfCopy;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v24;
              *&buf[12] = 2112;
              *&buf[14] = v20;
              _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Events already enabled for %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            ++obj;
          }

          else if ([v20 properties])
          {
            [array addObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v98 objects:v122 count:16];
      }

      while (v17);
    }

    else
    {
      obj = 0;
    }

    v28 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    connectionState = __Block_byref_object_copy__7552;
    v120 = __Block_byref_object_dispose__7553;
    v121 = 0;
    v29 = eventsCopy;
    group = v28;
    if ([array count])
    {
      dispatch_group_enter(v28);
      array2 = [MEMORY[0x277CBEB18] array];
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      obja = v16;
      v31 = [obja countByEnumeratingWithState:&v94 objects:v117 count:16];
      if (v31)
      {
        v32 = *v95;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v95 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v34 = *(*(&v94 + 1) + 8 * j);
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_549;
            v91[3] = &unk_2786D4100;
            v93 = v29;
            v91[4] = selfCopy;
            v92 = array2;
            v35 = MEMORY[0x231885210](v91);
            [(_HAPAccessoryServerBTLE200 *)selfCopy _enableEvent:eventsCopy forCharacteristic:v34 withCompletionHandler:v35 queue:queueCopy];
            [v34 setEventNotificationsEnabled:eventsCopy];

            v29 = eventsCopy;
          }

          v31 = [obja countByEnumeratingWithState:&v94 objects:v117 count:16];
        }

        while (v31);
      }

      dispatch_group_leave(group);
      clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_550;
      v84[3] = &unk_2786D4150;
      v84[4] = selfCopy;
      v85 = array;
      v86 = queueCopy;
      v89 = buf;
      v90 = eventsCopy;
      v87 = array2;
      v88 = handlerCopy;
      v37 = array2;
      dispatch_group_notify(group, clientQueue, v84);

      goto LABEL_63;
    }

    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v64 = v16;
    v38 = [v64 countByEnumeratingWithState:&v80 objects:v116 count:16];
    if (v38)
    {
      v66 = *v81;
      do
      {
        v67 = v38;
        for (k = 0; k != v67; ++k)
        {
          if (*v81 != v66)
          {
            objc_enumerationMutation(v64);
          }

          v40 = *(*(&v80 + 1) + 8 * k);
          if ([v40 eventNotificationsEnabled] == eventsCopy)
          {
            v41 = 0;
          }

          else
          {
            v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6711 userInfo:0];
            v42 = objc_autoreleasePoolPush();
            v43 = selfCopy;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = HMFGetLogIdentifier();
              instanceID = [v40 instanceID];
              type = [v40 type];
              *v108 = 138544130;
              v109 = v45;
              v110 = 2112;
              v111 = instanceID;
              v112 = 2112;
              v113 = type;
              v114 = 2112;
              v115 = v41;
              _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@ with error: %@", v108, 0x2Au);
            }

            objc_autoreleasePoolPop(v42);
          }

          v48 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v40 error:v41];
          if (v48)
          {
            [v37 addObject:v48];
          }
        }

        v38 = [v64 countByEnumeratingWithState:&v80 objects:v116 count:16];
      }

      while (v38);
    }

    if (obj == [v64 count])
    {
      if (!handlerCopy || !queueCopy)
      {
        goto LABEL_63;
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_555;
      v77[3] = &unk_2786D65D8;
      v79 = handlerCopy;
      v78 = v37;
      dispatch_async(queueCopy, v77);

      v49 = v79;
    }

    else
    {
      v106[0] = *MEMORY[0x277CCA450];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", v64];
      v107[0] = v50;
      v106[1] = *MEMORY[0x277CCA470];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v52 = [mainBundle localizedStringForKey:@"No Characteristics support notify property" value:&stru_283E79C60 table:0];
      v107[1] = v52;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];

      v53 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6735 userInfo:v49];
      v54 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v53;

      v55 = objc_autoreleasePoolPush();
      v56 = selfCopy;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        v59 = *(*&buf[8] + 40);
        *v108 = 138543618;
        v109 = v58;
        v110 = 2112;
        v111 = v59;
        _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable events for characteristic with error: %@", v108, 0x16u);
      }

      objc_autoreleasePoolPop(v55);
      if (handlerCopy && queueCopy)
      {
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_562;
        v73[3] = &unk_2786D61A0;
        v75 = handlerCopy;
        v74 = v37;
        v76 = buf;
        dispatch_async(queueCopy, v73);
      }
    }

LABEL_63:
    _Block_object_dispose(buf, 8);

    v27 = group;
    goto LABEL_64;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    if (eventsCopy)
    {
      v26 = @"enabling";
    }

    else
    {
      v26 = @"disabling";
    }

    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2048;
    connectionState = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionState];
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Rejecting %@ events on server that is not connected, current state: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  array = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:2 userInfo:0];
  if (handlerCopy && queueCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D69E0;
    v105 = handlerCopy;
    v103 = characteristicsCopy;
    array = array;
    v104 = array;
    dispatch_async(queueCopy, block);

    v27 = v105;
LABEL_64:
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v73 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  if ([(_HAPAccessoryServerBTLE200 *)self isBLELinkConnected])
  {
    v54 = handlerCopy;
    v53 = eventsCopy;
    if (eventsCopy)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v13 = characteristicsCopy;
      v14 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v14)
      {
        v15 = v14;
        v50 = queueCopy;
        v16 = *v61;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v61 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v60 + 1) + 8 * i);
            v19 = +[HAPMetadata getSharedInstance];
            characteristicTypesChangingTargetState = [v19 characteristicTypesChangingTargetState];
            type = [v18 type];
            v22 = [characteristicTypesChangingTargetState containsObject:type];

            if (v22)
            {
              v23 = 1;
              goto LABEL_20;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = 0;
LABEL_20:
        queueCopy = v50;
      }

      else
      {
        v23 = 0;
      }

      LOBYTE(eventsCopy) = v53;
    }

    else
    {
      v23 = 0;
    }

    stateChanged = [(HAPAccessoryServerBTLE *)self stateChanged];
    v35 = 0;
    if (v23)
    {
      handlerCopy = v54;
    }

    else
    {
      handlerCopy = v54;
      if (!stateChanged)
      {
        mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
        v37 = [mEMORY[0x277D0F8D0] preferenceForKey:@"BTLEAccessoryEnableEventBackoffTime"];
        numberValue = [v37 numberValue];
        [numberValue doubleValue];
        v35 = (v39 * 1000000000.0);

        v40 = objc_autoreleasePoolPush();
        selfCopy = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          if (v53)
          {
            v44 = @"enable";
          }

          else
          {
            v44 = @"disable";
          }

          v52 = v40;
          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(characteristicsCopy, "count")}];
          v46 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_HAPAccessoryServerBTLE200 connectionState](selfCopy, "connectionState")}];
          *buf = 138544130;
          v66 = v43;
          v67 = 2112;
          v68 = v44;
          handlerCopy = v54;
          v69 = 2112;
          v70 = v45;
          v71 = 2112;
          v72 = v46;
          _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@Deferring %@ events on %@ characteristics to prioritize local operations. Connection state: %@", buf, 0x2Au);

          v40 = v52;
        }

        objc_autoreleasePoolPop(v40);
        LOBYTE(eventsCopy) = v53;
      }
    }

    v47 = dispatch_time(0, v35);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90___HAPAccessoryServerBTLE200_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D6510;
    block[4] = self;
    v59 = eventsCopy;
    v56 = characteristicsCopy;
    v58 = handlerCopy;
    v57 = queueCopy;
    dispatch_after(v47, clientQueue, block);
  }

  else
  {
    v24 = eventsCopy;
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = handlerCopy;
      if (v24)
      {
        v30 = @"enabling";
      }

      else
      {
        v30 = @"disabling";
      }

      v51 = queueCopy;
      v31 = characteristicsCopy;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(characteristicsCopy, "count")}];
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_HAPAccessoryServerBTLE200 connectionState](selfCopy2, "connectionState")}];
      *buf = 138544130;
      v66 = v28;
      v67 = 2112;
      v68 = v30;
      handlerCopy = v29;
      v69 = 2112;
      v70 = v32;
      v71 = 2112;
      v72 = v33;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping %@ events for %@ characteristics in connection state: %@", buf, 0x2Au);

      characteristicsCopy = v31;
      queueCopy = v51;
    }

    objc_autoreleasePoolPop(v25);
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)characteristic
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if ([characteristicCopy properties])
  {
    browser = [(HAPAccessoryServerBTLE *)self browser];
    identifier = [(HAPAccessoryServer *)self identifier];
    [browser markNotifyingCharacteristicUpdatedForIdentifier:identifier];

    if (![(HAPAccessoryServerBTLE *)self notifyingCharacteristicUpdated])
    {
      [(HAPAccessoryServerBTLE *)self setNotifyingCharacteristicUpdated:1];
      stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
      v8 = [stateNumber unsignedShortValue] + 1;

      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        stateNumber2 = [(HAPAccessoryServerBTLE *)selfCopy stateNumber];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v18 = 138544130;
        v19 = v12;
        v20 = 2114;
        v21 = stateNumber2;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating state number %{public}@ -> %{public}@ due to characteristic update: %{public}@", &v18, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
      [(HAPAccessoryServerBTLE *)selfCopy setStateNumber:v15];
    }

    stateNumber3 = [(HAPAccessoryServerBTLE *)self stateNumber];
    [characteristicCopy setStateNumber:stateNumber3];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWriteExecuteForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  handlerCopy = handler;
  v34 = 0;
  v14 = [objc_opt_class() executeWriteRequestForCharacteristic:characteristicCopy options:options error:&v34];
  v26 = v34;
  if (v14)
  {
    objc_initWeak(location, self);
    v15 = objc_alloc(MEMORY[0x277D0F770]);
    v16 = MEMORY[0x277CCACA8];
    v17 = MEMORY[0x231884350](self, a2);
    4940 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4940];
    v19 = [v15 initWithName:4940];
    v33 = v19;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105___HAPAccessoryServerBTLE200__performTimedWriteExecuteForCharacteristic_value_options_completionHandler___block_invoke;
    v27[3] = &unk_2786D4088;
    objc_copyWeak(v32, location);
    v28 = v19;
    v29 = characteristicCopy;
    v31 = handlerCopy;
    v30 = valueCopy;
    v32[1] = options;
    v20 = MEMORY[0x231885210](v27);
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v14 shouldPrioritize:1 responseHandler:v20];

    objc_destroyWeak(v32);
    __HMFActivityScopeLeave();

    objc_destroyWeak(location);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v24;
      v36 = 2114;
      v37 = characteristicCopy;
      v38 = 2114;
      v39 = v26;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Timed write execute failed, failed to create request for characteristic, %{public}@, with error: %{public}@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    _callCharacteristicOperationCompletion(characteristicCopy, handlerCopy, 2, v26, @"Failed to create execute-write request.");
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWritePrepareWithValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  v42 = 0;
  v36 = valueCopy;
  v20 = [objc_opt_class() prepareWriteRequestForCharacteristic:characteristicCopy value:valueCopy authorizationData:dataCopy contextData:contextDataCopy options:options error:&v42];
  v37 = v42;
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F770]);
    v22 = MEMORY[0x277CCACA8];
    v23 = MEMORY[0x231884350](self, a2);
    4874 = [v22 stringWithFormat:@"%@, %s:%ld", v23, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4874];
    v25 = [v21 initWithName:4874];
    *buf = v25;

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __138___HAPAccessoryServerBTLE200__performTimedWritePrepareWithValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
    v38[3] = &unk_2786D40D8;
    v38[4] = self;
    v26 = v25;
    v39 = v26;
    v27 = characteristicCopy;
    v40 = v27;
    v41 = handlerCopy;
    v28 = MEMORY[0x231885210](v38);
    v29 = v26;
    [v27 instanceID];

    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v20 shouldPrioritize:(options >> 4) & 1 responseHandler:v28];
    __HMFActivityScopeLeave();
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v33;
      v44 = 2114;
      v45 = characteristicCopy;
      v46 = 2114;
      v47 = v37;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Timed write prepare failed, failed to create request for characteristic, %{public}@, with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
    _callCharacteristicOperationCompletion(characteristicCopy, handlerCopy, 2, v34, @"Failed to create prepare-write request.");
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  valueCopy = value;
  characteristicCopy = characteristic;
  handlerCopy = handler;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __127___HAPAccessoryServerBTLE200__performTimedWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
  v23[3] = &unk_2786D40B0;
  v23[4] = self;
  v24 = characteristicCopy;
  v25 = valueCopy;
  v26 = handlerCopy;
  optionsCopy = options;
  v17 = valueCopy;
  v18 = characteristicCopy;
  v19 = handlerCopy;
  contextDataCopy = contextData;
  dataCopy = data;
  v22 = MEMORY[0x231885210](v23);
  [(_HAPAccessoryServerBTLE200 *)self _performTimedWritePrepareWithValue:v17 toCharacteristic:v18 authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:v22];
}

- (void)_performWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  v18 = objc_alloc(MEMORY[0x277D0F770]);
  v19 = MEMORY[0x277CCACA8];
  v20 = MEMORY[0x231884350](self, a2);
  4728 = [v19 stringWithFormat:@"%@, %s:%ld", v20, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4728];
  v22 = [v18 initWithName:4728];
  v44 = v22;

  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __122___HAPAccessoryServerBTLE200__performWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
  v37[3] = &unk_2786D4088;
  objc_copyWeak(v42, &location);
  v23 = characteristicCopy;
  v38 = v23;
  v39 = v22;
  v24 = handlerCopy;
  v41 = v24;
  v25 = valueCopy;
  v40 = v25;
  v42[1] = options;
  v26 = MEMORY[0x231885210](v37);
  v36 = 0;
  v27 = [objc_opt_class() writeRequestForCharacteristic:v23 value:v25 authorizationData:dataCopy contextData:contextDataCopy options:options error:&v36];
  v28 = v36;
  if (v27)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v27 shouldPrioritize:(options >> 4) & 1 responseHandler:v26];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v31;
      v47 = 2114;
      v48 = v23;
      v49 = 2114;
      v50 = v28;
      _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Write failed, failed to create request for characteristic, %{public}@, with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    _callCharacteristicOperationCompletion(v23, v24, 2, v28, @"Failed to create request.");
  }

  objc_destroyWeak(v42);
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_writeValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  service = [characteristicCopy service];
  accessory = [service accessory];
  server = [accessory server];

  if (server == self)
  {
    if ((options & 4) != 0 || ([characteristicCopy properties] & 0x20) != 0)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v35;
        v39 = 2114;
        v40 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristic %{public}@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [(_HAPAccessoryServerBTLE200 *)selfCopy _performTimedWriteValue:valueCopy toCharacteristic:characteristicCopy authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:handlerCopy];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v31;
        v39 = 2114;
        v40 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristic %{public}@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(_HAPAccessoryServerBTLE200 *)selfCopy2 _performWriteValue:valueCopy toCharacteristic:characteristicCopy authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:handlerCopy];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      shortDescription = [characteristicCopy shortDescription];
      v37 = 138543618;
      v38 = v25;
      v39 = 2114;
      v40 = shortDescription;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Write failed, characteristic is not part of server: %{public}@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if (handlerCopy)
    {
      v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      handlerCopy[2](handlerCopy, characteristicCopy, v27);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x231884350](self, a2);
  4597 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4597];
  v19 = [v15 initWithName:4597];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786D4060;
  timeoutCopy = timeout;
  v24[4] = self;
  v25 = valuesCopy;
  v26 = v19;
  v27 = queueCopy;
  v28 = handlerCopy;
  v20 = handlerCopy;
  v21 = queueCopy;
  v22 = v19;
  v23 = valuesCopy;
  [(_HAPAccessoryServerBTLE200 *)self evaluateConnectionStateForOperation:3 block:v24];
}

- (void)_readValueForCharacteristic:(id)characteristic options:(int64_t)options completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  handlerCopy = handler;
  service = [characteristicCopy service];
  accessory = [service accessory];
  server = [accessory server];

  if (server == self)
  {
    v37 = 0;
    v19 = [objc_opt_class() readRequestForCharacteristic:characteristicCopy options:options error:&v37];
    v18 = v37;
    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x277D0F770]);
      v21 = MEMORY[0x277CCACA8];
      v22 = MEMORY[0x231884350](self, a2);
      4374 = [v21 stringWithFormat:@"%@, %s:%ld", v22, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4374];
      v24 = [v20 initWithName:4374];
      *buf = v24;

      objc_initWeak(&location, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84___HAPAccessoryServerBTLE200__readValueForCharacteristic_options_completionHandler___block_invoke;
      v31[3] = &unk_2786D4010;
      objc_copyWeak(&v35, &location);
      v32 = characteristicCopy;
      v33 = v24;
      v34 = handlerCopy;
      v25 = MEMORY[0x231885210](v31);
      [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v19 shouldPrioritize:(options >> 1) & 1 responseHandler:v25];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
      __HMFActivityScopeLeave();
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v29;
        v39 = 2114;
        v40 = characteristicCopy;
        v41 = 2114;
        v42 = v18;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Read failed, failed to create request for characteristic, %{public}@, with error: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      _callCharacteristicOperationCompletion(characteristicCopy, handlerCopy, 1, v18, @"Failed to create request.");
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v17;
      v39 = 2114;
      v40 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Read failed, characteristic is not part of server: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
    _callCharacteristicOperationCompletion(characteristicCopy, handlerCopy, 1, v18, @"Characteristic is not part of server.");
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updatePropertiesFromCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
  if ([type isEqualToString:@"00000220-0000-1000-8000-0026BB765291"])
  {
    value = [characteristicCopy value];
    v7 = [HAPAccessory productDataStringFromData:value];
    [(HAPAccessoryServer *)self setProductData:v7];

    productData = [(HAPAccessoryServer *)self productData];
    [primaryAccessory setProductData:productData];
  }
}

- (void)_readCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v10 = dispatch_group_create();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = valuesCopy;
  v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        [v15 instanceID];

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke;
        v28[3] = &unk_2786D66A0;
        v28[4] = self;
        v29 = v9;
        v30 = v10;
        [(_HAPAccessoryServerBTLE200 *)self _readValueForCharacteristic:v15 options:1 completionHandler:v28];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_393;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v25 = queueCopy;
  v26 = v9;
  v27 = handlerCopy;
  v17 = v9;
  v18 = handlerCopy;
  v19 = queueCopy;
  dispatch_group_notify(v10, clientQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x231884350](self, a2);
  4236 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4236];
  v19 = [v15 initWithName:4236];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786D4060;
  v25 = valuesCopy;
  selfCopy = self;
  v28 = queueCopy;
  v29 = handlerCopy;
  timeoutCopy = timeout;
  v27 = v19;
  v20 = queueCopy;
  v21 = handlerCopy;
  v22 = v19;
  v23 = valuesCopy;
  [(_HAPAccessoryServerBTLE200 *)self evaluateConnectionStateForOperation:2 block:v24];
}

- (id)_parseCharacteristic:(id)characteristic error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:characteristicCopy])
  {
    uUID = [characteristicCopy UUID];
    v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:uUID];

    v85 = v8;
    errorCopy = error;
    if (v8)
    {
      selfCopy = self;
      [characteristicCopy descriptors];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v9 = v91 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v88 objects:v92 count:16];
      obj = v9;
      if (v10)
      {
        v11 = v10;
        v83 = characteristicCopy;
        v12 = 0;
        v13 = *v89;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v89 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v88 + 1) + 8 * i);
            uUID2 = [v15 UUID];
            v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v18 = [uUID2 isEqual:v17];

            if (v18)
            {
              v19 = v15;

              v12 = v19;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
        }

        while (v11);

        characteristicCopy = v83;
        if (v12)
        {
          v20 = _parseCharacteristicInstanceID(v12, error);
          if (!v20)
          {
            v59 = objc_autoreleasePoolPush();
            v60 = selfCopy;
            v61 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = HMFGetLogIdentifier();
              *buf = 138543362;
              v94 = v62;
              _os_log_impl(&dword_22AADC000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Characteristic Instance ID", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v59);
            v46 = 0;
            v58 = v85;
            goto LABEL_58;
          }

          discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
          characteristicSignatures = [discoveryContext characteristicSignatures];
          v23 = [characteristicSignatures objectForKey:v83];

          v82 = v20;
          if (v23)
          {
            characteristicType = [v23 characteristicType];
            v25 = [characteristicType isEqual:v85];

            if (v25)
            {
              v26 = [HAPCharacteristic alloc];
              uUIDString = [v85 UUIDString];
              stateNumber = [(HAPAccessoryServerBTLE *)selfCopy stateNumber];
              characteristicProperties = [v23 characteristicProperties];
              characteristicMetadata = [v23 characteristicMetadata];
              LOBYTE(v81) = 1;
              v31 = [(HAPCharacteristic *)v26 initWithType:uUIDString instanceID:v82 value:0 stateNumber:stateNumber properties:characteristicProperties eventNotificationsEnabled:0 implicitWriteWithResponse:v81 metadata:characteristicMetadata];

              if (v31)
              {
                distantPast = [MEMORY[0x277CBEAA8] distantPast];
                [(HAPCharacteristic *)v31 setValueUpdatedTime:distantPast];

                [(HAPCharacteristic *)v31 setCBCharacteristic:v83];
                v33 = [(_HAPAccessoryServerBTLE200 *)selfCopy _characteristicForCBCharacteristic:v83];
                if (-[__CFString isEqualToCharacteristic:](v33, "isEqualToCharacteristic:", v31) && (-[__CFString metadata](v33, "metadata"), v34 = objc_claimAutoreleasedReturnValue(), -[HAPCharacteristic metadata](v31, "metadata"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v34 isEqualToCharacteristicMetadata:v35], v35, v34, v36))
                {
                  v37 = objc_autoreleasePoolPush();
                  v38 = selfCopy;
                  v39 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                  {
                    v40 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v94 = v40;
                    v95 = 2112;
                    v96 = v33;
                    _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Using existing characteristic: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v37);
                  v41 = v33;
                  v33 = v41;
                }

                else
                {
                  v41 = v31;
                }

                v46 = v41;
              }

              else
              {
                v71 = MEMORY[0x277CCACA8];
                uUIDString2 = [v85 UUIDString];
                characteristicProperties2 = [v23 characteristicProperties];
                characteristicMetadata2 = [v23 characteristicMetadata];
                v33 = [v71 stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %hu, metadata, %@", uUIDString2, v82, characteristicProperties2, characteristicMetadata2];

                v75 = objc_autoreleasePoolPush();
                v76 = selfCopy;
                v77 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  v78 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v94 = v78;
                  v95 = 2112;
                  v96 = v33;
                  _os_log_impl(&dword_22AADC000, v77, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v75);
                if (errorCopy)
                {
                  [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v33 reason:0 suggestion:0 underlyingError:0 marker:228];
                  *errorCopy = v46 = 0;
                }

                else
                {
                  v46 = 0;
                }
              }

              v58 = v85;

              goto LABEL_57;
            }

            v66 = MEMORY[0x277CCACA8];
            characteristicType2 = [v23 characteristicType];
            uUIDString3 = [characteristicType2 UUIDString];
            uUIDString4 = [v85 UUIDString];
            v31 = [v66 stringWithFormat:@"The authenticated characteristic type, %@, does not match the characteristic type, %@", uUIDString3, uUIDString4];

            v63 = objc_autoreleasePoolPush();
            v64 = selfCopy;
            v65 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }
          }

          else
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing characteristic signature for characteristic: %@", v83];
            v63 = objc_autoreleasePoolPush();
            v64 = selfCopy;
            v65 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
LABEL_44:
              v70 = HMFGetLogIdentifier();
              *buf = 138543618;
              v94 = v70;
              v95 = 2112;
              v96 = v31;
              _os_log_impl(&dword_22AADC000, v65, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v63);
          if (errorCopy)
          {
            [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v31 reason:0 suggestion:0 underlyingError:0];
            *errorCopy = v46 = 0;
          }

          else
          {
            v46 = 0;
          }

          v58 = v85;
LABEL_57:

          v20 = v82;
LABEL_58:

          goto LABEL_59;
        }
      }

      else
      {
      }

      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v94 = v57;
        v95 = 2112;
        v96 = @"Characteristic missing characteristic instance ID descriptor";
        _os_log_impl(&dword_22AADC000, v56, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
      if (errorCopy)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Characteristic missing characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
        *errorCopy = v46 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v47 = MEMORY[0x277CCACA8];
      uUID3 = [characteristicCopy UUID];
      v49 = [v47 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID3];

      v50 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v94 = v53;
        v95 = 2112;
        v96 = v49;
        _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      obj = v49;
      if (errorCopy)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v49 reason:0 suggestion:0 underlyingError:0 marker:227];
        *errorCopy = v46 = 0;
LABEL_37:
        v58 = v85;
LABEL_59:

        goto LABEL_60;
      }
    }

    v46 = 0;
    goto LABEL_37;
  }

  v42 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543618;
    v94 = v45;
    v95 = 2112;
    v96 = @"Characteristic does not support HAP";
    _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:226];
    *error = v46 = 0;
  }

  else
  {
    v46 = 0;
  }

LABEL_60:

  v79 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)_parseService:(id)service error:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if (([objc_opt_class() isHAPService:serviceCopy] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v127 = v27;
      v128 = 2112;
      v129 = @"Service does not support HAP";
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Service does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:223];
      *error = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_78;
  }

  uUID = [serviceCopy UUID];
  v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:uUID];

  if (!v8)
  {
    v29 = MEMORY[0x277CCACA8];
    uUID2 = [serviceCopy UUID];
    v14 = [v29 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID2];

    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v35 = v34 = v14;
      *buf = 138543618;
      v127 = v35;
      v128 = 2112;
      v129 = v34;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      v14 = v34;
    }

    objc_autoreleasePoolPop(v31);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v14 reason:0 suggestion:0 underlyingError:0 marker:224];
      *error = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_77;
  }

  v109 = v8;
  v9 = MEMORY[0x277CBEB18];
  characteristics = [serviceCopy characteristics];
  v113 = [v9 arrayWithCapacity:{objc_msgSend(characteristics, "count")}];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v105 = serviceCopy;
  characteristics2 = [serviceCopy characteristics];
  v12 = [characteristics2 countByEnumeratingWithState:&v121 objects:v132 count:16];
  selfCopy3 = self;
  errorCopy = error;
  if (!v12)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v122;
  v110 = characteristics2;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v122 != v15)
      {
        objc_enumerationMutation(characteristics2);
      }

      v17 = *(*(&v121 + 1) + 8 * i);
      if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v17])
      {
        v120 = 0;
        v18 = [(_HAPAccessoryServerBTLE200 *)self _parseCharacteristic:v17 error:&v120];
        v19 = v120;
        if (v18)
        {
          [v113 addObject:v18];
        }

        else
        {
          v114 = v14;
          v20 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v127 = v23;
            v128 = 2112;
            v129 = v17;
            v130 = 2112;
            v131 = v19;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse characteristic, %@, with error: %@", buf, 0x20u);

            error = errorCopy;
          }

          objc_autoreleasePoolPop(v20);
          v14 = v114;
          characteristics2 = v110;
          self = selfCopy3;
        }
      }

      else
      {
        if (!_isServiceInstanceIDCharacteristic(v17))
        {
          continue;
        }

        if (v14)
        {
          v64 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v66 = HMFGetOSLogHandle();
          serviceCopy = v105;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v68 = v67 = v14;
            *buf = 138543618;
            v127 = v68;
            v128 = 2112;
            v129 = @"Invalid service, multiple Service Instance ID characteristics.";
            _os_log_impl(&dword_22AADC000, v66, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

            v14 = v67;
          }

          objc_autoreleasePoolPop(v64);
          if (error)
          {
            [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid service reason:multiple Service Instance ID characteristics." suggestion:0 underlyingError:{0, 0}];
            *error = v28 = 0;
          }

          else
          {
            v28 = 0;
          }

          goto LABEL_55;
        }

        v14 = _parseServiceInstanceID(v17, error);
        if (!v14)
        {
          v69 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v71 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v73 = HMFGetLogIdentifier();
            *buf = 138543362;
            v127 = v73;
            _os_log_impl(&dword_22AADC000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Service Instance ID", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v69);
          v14 = 0;
          v28 = 0;
          serviceCopy = v105;
LABEL_55:
          v8 = v109;
          goto LABEL_76;
        }
      }
    }

    v13 = [characteristics2 countByEnumeratingWithState:&v121 objects:v132 count:16];
  }

  while (v13);
LABEL_32:
  v115 = v14;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  characteristics2 = v113;
  v36 = [characteristics2 countByEnumeratingWithState:&v116 objects:v125 count:16];
  v111 = characteristics2;
  if (!v36)
  {
    goto LABEL_44;
  }

  v37 = v36;
  v38 = *v117;
  while (2)
  {
    v39 = 0;
    while (2)
    {
      if (*v117 != v38)
      {
        objc_enumerationMutation(characteristics2);
      }

      v40 = *(*(&v116 + 1) + 8 * v39);
      discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      characteristicSignatures = [discoveryContext characteristicSignatures];
      cbCharacteristic = [v40 cbCharacteristic];
      v44 = [characteristicSignatures objectForKey:cbCharacteristic];

      if (!v44)
      {
        v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing characteristic signature for characteristic: %@", v40];
        v75 = objc_autoreleasePoolPush();
        v76 = selfCopy3;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v78;
          v128 = 2112;
          v129 = v74;
          _os_log_impl(&dword_22AADC000, v77, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v75);
        v8 = v109;
        if (errorCopy)
        {
          *errorCopy = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v74 reason:0 suggestion:0 underlyingError:0];
        }

        v28 = 0;
        serviceCopy = v105;
        v14 = v115;
        goto LABEL_76;
      }

      v45 = MEMORY[0x277CBE0A0];
      serviceType = [v44 serviceType];
      uUIDString = [serviceType UUIDString];
      v48 = [v45 UUIDWithString:uUIDString];

      v49 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v48];
      serviceType2 = [v44 serviceType];
      if ([serviceType2 isEqual:v109])
      {

        goto LABEL_41;
      }

      v51 = [v49 isEqual:v109];

      if ((v51 & 1) == 0)
      {
        v94 = MEMORY[0x277CCACA8];
        serviceType3 = [v44 serviceType];
        uUIDString2 = [serviceType3 UUIDString];
        v8 = v109;
        uUIDString3 = [v109 UUIDString];
        uUIDString4 = [v48 UUIDString];
        v107 = [v94 stringWithFormat:@"The authenticated service type, %@, does not match the service type, %@ or %@, for characteristic: %@", uUIDString2, uUIDString3, uUIDString4, v40];

        v99 = objc_autoreleasePoolPush();
        v100 = selfCopy3;
        v101 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v102;
          v128 = 2112;
          v129 = v107;
          _os_log_impl(&dword_22AADC000, v101, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v99);
        serviceCopy = v105;
        v81 = v107;
        v85 = errorCopy;
        goto LABEL_73;
      }

LABEL_41:
      serviceInstanceID = [v44 serviceInstanceID];
      v53 = [serviceInstanceID isEqualToNumber:v115];

      if ((v53 & 1) == 0)
      {
        v79 = MEMORY[0x277CCACA8];
        serviceInstanceID2 = [v44 serviceInstanceID];
        v81 = [v79 stringWithFormat:@"The authenticated service instance ID, %@, does not match the service instance ID, %@, for characteristic: %@", serviceInstanceID2, v115, v40];

        v82 = objc_autoreleasePoolPush();
        v83 = selfCopy3;
        v84 = HMFGetOSLogHandle();
        v85 = errorCopy;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v86 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v86;
          v128 = 2112;
          v129 = v81;
          _os_log_impl(&dword_22AADC000, v84, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v82);
        serviceCopy = v105;
        v8 = v109;
LABEL_73:
        v14 = v115;
        if (v85)
        {
          *v85 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v81 reason:0 suggestion:0 underlyingError:0];
        }

        v28 = 0;
        characteristics2 = v111;
        goto LABEL_76;
      }

      ++v39;
      characteristics2 = v111;
      self = selfCopy3;
      if (v37 != v39)
      {
        continue;
      }

      break;
    }

    v37 = [v111 countByEnumeratingWithState:&v116 objects:v125 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_44:

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  serviceSignatures = [discoveryContext2 serviceSignatures];
  serviceCopy = v105;
  v56 = [serviceSignatures objectForKey:v105];

  v57 = [HAPService alloc];
  v8 = v109;
  uUIDString5 = [v109 UUIDString];
  v59 = [characteristics2 copy];
  serviceProperties = [v56 serviceProperties];
  v106 = v56;
  linkedServices = [v56 linkedServices];
  v62 = [linkedServices copy];
  v28 = [(HAPService *)v57 initWithType:uUIDString5 instanceID:v115 parsedCharacteristics:v59 serviceProperties:serviceProperties linkedServices:v62];

  if (v28)
  {
    [(HAPService *)v28 setCBService:v105];
    v63 = v28;
    v14 = v115;
  }

  else
  {
    v87 = MEMORY[0x277CCACA8];
    uUIDString6 = [v109 UUIDString];
    v111 = [v87 stringWithFormat:@"Failed to create service with type, %@, service instance ID, %@, characteristics, %@", uUIDString6, v115, v111];

    v90 = objc_autoreleasePoolPush();
    v91 = selfCopy3;
    v92 = HMFGetOSLogHandle();
    v14 = v115;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = HMFGetLogIdentifier();
      *buf = 138543618;
      v127 = v93;
      v128 = 2112;
      v129 = v111;
      _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      v14 = v115;
    }

    objc_autoreleasePoolPop(v90);
    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v111 reason:0 suggestion:0 underlyingError:0 marker:225];
    }
  }

  characteristics2 = v106;
LABEL_76:

LABEL_77:
LABEL_78:

  v103 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)shouldVerifyHAPService:(id)service
{
  serviceCopy = service;
  uUID = [serviceCopy UUID];
  v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  if ([uUID isEqual:v6])
  {
    isPaired = 0;
  }

  else
  {
    uUID2 = [serviceCopy UUID];
    v9 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
    v10 = [uUID2 isEqual:v9];

    if (v10)
    {
      isPaired = 0;
      goto LABEL_6;
    }

    uUID = [serviceCopy UUID];
    v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
    if ([uUID isEqual:v6])
    {
      isPaired = [(HAPAccessoryServerBTLE *)self isPaired];
    }

    else
    {
      uUID3 = [serviceCopy UUID];
      v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
      if ([uUID3 isEqual:v13])
      {
        isPaired = [(HAPAccessoryServerBTLE *)self isPaired];
      }

      else
      {
        isPaired = 1;
      }
    }
  }

LABEL_6:
  return isPaired;
}

- (BOOL)shouldVerifyHAPCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  uUID = [service UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  if ([uUID isEqual:v7])
  {
  }

  else
  {
    service2 = [characteristicCopy service];
    uUID2 = [service2 UUID];
    v10 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
    v11 = [uUID2 isEqual:v10];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  uUID3 = [characteristicCopy UUID];
  v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004C-0000-1000-8000-0026BB765291"];
  if (![uUID3 isEqual:v13])
  {
    uUID4 = [characteristicCopy UUID];
    uUID2 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004E-0000-1000-8000-0026BB765291"];
    if ([uUID4 isEqual:uUID2])
    {

      goto LABEL_7;
    }

    uUID5 = [characteristicCopy UUID];
    v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004F-0000-1000-8000-0026BB765291"];
    v18 = [uUID5 isEqual:v17];

    if (v18)
    {
      goto LABEL_8;
    }

LABEL_10:
    service3 = [characteristicCopy service];
    uUID6 = [service3 UUID];
    v21 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
    v22 = [uUID6 isEqual:v21];
    if ((v22 & 1) == 0)
    {
      service4 = [characteristicCopy service];
      uUID7 = [service4 UUID];
      uUID2 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
      if (![uUID7 isEqual:uUID2])
      {
        LOBYTE(v28) = 0;
LABEL_19:

LABEL_20:
        v15 = v28 ^ 1;
        goto LABEL_21;
      }

      v30 = uUID7;
      v32 = service4;
    }

    selfCopy = self;
    uUID8 = [characteristicCopy UUID];
    v27 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000014-0000-1000-8000-0026BB765291"];
    if ([uUID8 isEqual:v27])
    {
      v28 = ![(HAPAccessoryServerBTLE *)selfCopy isPaired];
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    uUID7 = v31;

    service4 = v32;
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_7:

LABEL_8:
  v15 = 0;
LABEL_21:

  return v15;
}

- (BOOL)isHAPCharacteristic:(id)characteristic
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if (_isServiceInstanceIDCharacteristic(characteristicCopy))
  {
    v4 = 0;
  }

  else
  {
    descriptors = [characteristicCopy descriptors];
    if ([descriptors count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = descriptors;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v16 = descriptors;
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            uUID = [*(*(&v17 + 1) + 8 * i) UUID];
            v12 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v13 = [uUID isEqual:v12];

            if (v13)
            {
              v4 = 1;
              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v4 = 0;
LABEL_14:
        descriptors = v16;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_handleReadServiceSignature:(id)signature error:(id)error
{
  signatureCopy = signature;
  errorCopy = error;
  if (errorCopy)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke;
      v12[3] = &unk_2786D7078;
      v12[4] = self;
      v13 = signatureCopy;
      v8 = errorCopy;
      v14 = v8;
      __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingSignatureServices = [discoveryContext readingSignatureServices];
    [readingSignatureServices removeObject:signatureCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingSignatureServices) = [discoveryContext2 isComplete];

    if (readingSignatureServices)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_handleReadCharacteristicSignature:(id)signature error:(id)error
{
  signatureCopy = signature;
  errorCopy = error;
  if (errorCopy)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke;
      v12[3] = &unk_2786D7078;
      v12[4] = self;
      v13 = signatureCopy;
      v8 = errorCopy;
      v14 = v8;
      __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingSignatureCharacteristics = [discoveryContext readingSignatureCharacteristics];
    [readingSignatureCharacteristics removeObject:signatureCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingSignatureCharacteristics) = [discoveryContext2 isComplete];

    if (readingSignatureCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_readServiceSignature:(id)signature
{
  v126 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:signatureCopy])
  {
    v5 = objc_opt_class();
    service = [signatureCopy service];
    uUID = [service UUID];
    v8 = [v5 hapUUIDFromBTLEUUID:uUID];

    if (v8)
    {
      service2 = [signatureCopy service];
      v10 = [(_HAPAccessoryServerBTLE200 *)self _getServiceInstanceID:service2];

      v117 = 0;
      service14 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:signatureCopy error:&v117];
      service15 = v117;
      if (v10 | service14)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v13 = 0;
        }

        else
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([discoveryContext discoveryType])
          {
            v13 = 0;
          }

          else
          {
            service3 = [signatureCopy service];
            v13 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPService:service3];
          }
        }

        service4 = [signatureCopy service];
        service12 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:service4];

        v110 = v10;
        if (v13 || !service12)
        {
          if (v13 && [0 isAuthenticated])
          {
            v51 = objc_autoreleasePoolPush();
            selfCopy = self;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v54 = HMFGetLogIdentifier();
              [signatureCopy service];
              v56 = v55 = service14;
              *buf = 138543618;
              v119 = v54;
              v120 = 2112;
              v121 = v56;
              _os_log_impl(&dword_22AADC000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading service signature for service: %@", buf, 0x16u);

              service14 = v55;
              v10 = v110;
            }

            objc_autoreleasePoolPop(v51);
            discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
            serviceSignatures = [(HAPBTLEServiceSignature *)discoveryContext2 serviceSignatures];
            service5 = [signatureCopy service];
            [serviceSignatures setObject:0 forKey:service5];
          }

          else
          {
            v107 = service12;
            v57 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v60 = HMFGetLogIdentifier();
              [signatureCopy service];
              v62 = v61 = service14;
              *buf = 138543618;
              v119 = v60;
              v120 = 2112;
              v121 = v62;
              _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for service: %@", buf, 0x16u);

              service14 = v61;
            }

            objc_autoreleasePoolPop(v57);
            v63 = +[HAPMetadata getSharedInstance];
            uUIDString = [v8 UUIDString];
            unsignedLongLongValue = [(HAPBTLEServiceSignature *)v63 getDefaultServiceProperties:uUIDString];

            v109 = service14;
            v104 = unsignedLongLongValue;
            v105 = v63;
            if (unsignedLongLongValue)
            {
              unsignedLongLongValue = [unsignedLongLongValue unsignedLongLongValue];
            }

            v66 = [HAPService alloc];
            uUIDString2 = [v8 UUIDString];
            service5 = [(HAPService *)v66 initWithType:uUIDString2 instanceID:v110 parsedCharacteristics:0 serviceProperties:unsignedLongLongValue linkedServices:0];

            if (service5)
            {
              service6 = [signatureCopy service];
              [(HAPService *)service5 setCBService:service6];

              v69 = [HAPCharacteristic alloc];
              uUID2 = [signatureCopy UUID];
              uUIDString3 = [uUID2 UUIDString];
              stateNumber = [(HAPAccessoryServerBTLE *)selfCopy2 stateNumber];
              LOBYTE(v101) = 1;
              v73 = [(HAPCharacteristic *)v69 initWithType:uUIDString3 instanceID:v109 value:0 stateNumber:stateNumber properties:2 eventNotificationsEnabled:0 implicitWriteWithResponse:v101 metadata:0];

              v74 = v73;
              [(HAPCharacteristic *)v73 setCBCharacteristic:signatureCopy];
              [(HAPCharacteristic *)v73 setService:service5];
              discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
              v76 = [discoveryContext3 discoveryType] == 0;

              v116 = 0;
              v77 = [objc_opt_class() signatureRequestForService:service5 characteristic:v74 requiresAuthentication:v76 error:&v116];
              v78 = v116;
              v102 = v78;
              v103 = v74;
              if (v77)
              {
                [signatureCopy service];
                v80 = v79 = v77;
                v111[0] = MEMORY[0x277D85DD0];
                v111[1] = 3221225472;
                v111[2] = __52___HAPAccessoryServerBTLE200__readServiceSignature___block_invoke;
                v111[3] = &unk_2786D3F80;
                v112 = v80;
                v113 = selfCopy2;
                v114 = v110;
                v115 = v8;
                service8 = v80;
                v82 = MEMORY[0x231885210](v111);
                [(_HAPAccessoryServerBTLE200 *)selfCopy2 _sendRequest:v79 shouldPrioritize:0 responseHandler:v82];
                discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
                readingSignatureServices = [discoveryContext4 readingSignatureServices];
                service7 = [signatureCopy service];
                [readingSignatureServices addObject:service7];

                v77 = v79;
              }

              else
              {
                v95 = v78;
                v96 = objc_autoreleasePoolPush();
                v97 = selfCopy2;
                v98 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  v99 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v119 = v99;
                  v120 = 2112;
                  v121 = v107;
                  v122 = 2112;
                  v123 = v95;
                  _os_log_impl(&dword_22AADC000, v98, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for service, %@, with error: %@", buf, 0x20u);

                  v77 = 0;
                }

                objc_autoreleasePoolPop(v96);
                service8 = [signatureCopy service];
                [(_HAPAccessoryServerBTLE200 *)v97 _handleReadServiceSignature:service8 error:v95];
              }

              service14 = v109;
              discoveryContext2 = v105;

              v10 = v110;
              service12 = v107;
              v93 = v102;
              v94 = v103;
            }

            else
            {
              v86 = MEMORY[0x277CCACA8];
              uUIDString4 = [v8 UUIDString];
              v88 = [v86 stringWithFormat:@"Failed to create service with type, %@, instance ID, %@, properties, %tu", uUIDString4, v110, unsignedLongLongValue];

              v89 = objc_autoreleasePoolPush();
              v90 = selfCopy2;
              v91 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                v92 = HMFGetLogIdentifier();
                *buf = 138543618;
                v119 = v92;
                v120 = 2112;
                v121 = v88;
                _os_log_impl(&dword_22AADC000, v91, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v89);
              v93 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v88 reason:0 suggestion:0 underlyingError:0 marker:222];
              [(_HAPAccessoryServerBTLE200 *)v90 _handleReadCharacteristicSignature:signatureCopy error:v93];
              service14 = v109;
              v10 = v110;
              v94 = v88;
              discoveryContext2 = v105;
              service12 = v107;
            }

            serviceSignatures = v104;
          }
        }

        else
        {
          v106 = v8;
          v108 = service14;
          v34 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v38 = v37 = service12;
            service9 = [signatureCopy service];
            *buf = 138543618;
            v119 = v38;
            v120 = 2112;
            v121 = service9;
            _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Found cached service signature, skipping reading service signature for service: %@", buf, 0x16u);

            service12 = v37;
          }

          objc_autoreleasePoolPop(v34);
          v40 = [HAPBTLEServiceSignature alloc];
          v41 = objc_alloc(MEMORY[0x277CCAD78]);
          type = [(__CFString *)service12 type];
          v43 = [v41 initWithUUIDString:type];
          instanceID = [(__CFString *)service12 instanceID];
          serviceProperties = [(__CFString *)service12 serviceProperties];
          linkedServices = [(__CFString *)service12 linkedServices];
          discoveryContext2 = [(HAPBTLEServiceSignature *)v40 initWithServiceType:v43 serviceInstanceID:instanceID serviceProperties:serviceProperties linkedServices:linkedServices authenticated:0];

          serviceSignatures = [(_HAPAccessoryServerBTLE200 *)selfCopy3 discoveryContext];
          service5 = [serviceSignatures serviceSignatures];
          service10 = [signatureCopy service];
          [(HAPService *)service5 setObject:discoveryContext2 forKey:service10];

          service14 = v108;
          v10 = v110;
          v8 = v106;
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          service11 = [signatureCopy service];
          *buf = 138544130;
          v119 = v28;
          v120 = 2112;
          v121 = service11;
          v122 = 2112;
          v123 = signatureCopy;
          v124 = 2112;
          v125 = service15;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to get service/characteristic, %@/%@, instance ID with error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v25);
        service12 = [signatureCopy service];
        [(_HAPAccessoryServerBTLE200 *)selfCopy4 _handleReadServiceSignature:service12 error:service15];
      }
    }

    else
    {
      v18 = MEMORY[0x277CCACA8];
      service13 = [signatureCopy service];
      uUID3 = [service13 UUID];
      service15 = [v18 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID3];

      v21 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v119 = v24;
        v120 = 2112;
        v121 = service15;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:service15 reason:0 suggestion:0 underlyingError:0 marker:221];
      service14 = [signatureCopy service];
      [(_HAPAccessoryServerBTLE200 *)selfCopy5 _handleReadServiceSignature:service14 error:v10];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v119 = v17;
      v120 = 2112;
      v121 = @"Service Properties Characteristic does not support HAP";
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Service Properties Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:220];
    service15 = [signatureCopy service];
    [(_HAPAccessoryServerBTLE200 *)selfCopy6 _handleReadServiceSignature:service15 error:v8];
  }

  v100 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicSignature:(id)signature
{
  v101 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:signatureCopy])
  {
    v5 = objc_opt_class();
    uUID = [(__CFString *)signatureCopy UUID];
    v7 = [v5 hapUUIDFromBTLEUUID:uUID];

    if (v7)
    {
      v94 = 0;
      v8 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:signatureCopy error:&v94];
      v9 = v94;
      if (v8)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v10 = 0;
        }

        else
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([discoveryContext discoveryType])
          {
            v10 = 0;
          }

          else
          {
            v10 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPCharacteristic:signatureCopy];
          }
        }

        v26 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:signatureCopy];
        v27 = v26;
        if (v10 || !v26)
        {
          if (v10 && [0 isAuthenticated])
          {
            v45 = objc_autoreleasePoolPush();
            selfCopy = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              v48 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v48;
              v97 = 2112;
              v98 = signatureCopy;
              _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v45);
            discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
            characteristicSignatures = [(HAPBTLECharacteristicSignature *)discoveryContext2 characteristicSignatures];
            [characteristicSignatures setObject:0 forKey:signatureCopy];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v52;
              v97 = 2112;
              v98 = signatureCopy;
              _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for characteristic: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
            v53 = +[HAPMetadata getSharedInstance];
            v90 = v7;
            uUIDString = [v7 UUIDString];
            characteristicSignatures = [(HAPBTLECharacteristicSignature *)v53 getDefaultCharacteristicProperties:uUIDString];

            v88 = v9;
            v80 = v27;
            v84 = v53;
            if (characteristicSignatures)
            {
              unsignedLongLongValue = [characteristicSignatures unsignedLongLongValue];
            }

            else
            {
              unsignedLongLongValue = 2;
            }

            v56 = [HAPCharacteristic alloc];
            uUIDString2 = [v7 UUIDString];
            stateNumber = [(HAPAccessoryServerBTLE *)selfCopy2 stateNumber];
            LOBYTE(v79) = 1;
            v59 = [(HAPCharacteristic *)v56 initWithType:uUIDString2 instanceID:v8 value:0 stateNumber:stateNumber properties:unsignedLongLongValue eventNotificationsEnabled:0 implicitWriteWithResponse:v79 metadata:0];

            v86 = v8;
            if (v59)
            {
              [(HAPCharacteristic *)v59 setCBCharacteristic:signatureCopy];
              discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
              v61 = [discoveryContext3 discoveryType] == 0;

              v93 = 0;
              v62 = [objc_opt_class() signatureRequestForCharacteristic:v59 requiresAuthentication:v61 error:&v93];
              v63 = v93;
              if (v62)
              {
                v91[0] = MEMORY[0x277D85DD0];
                v91[1] = 3221225472;
                v91[2] = __59___HAPAccessoryServerBTLE200__readCharacteristicSignature___block_invoke;
                v91[3] = &unk_2786D3F58;
                v91[4] = selfCopy2;
                v64 = signatureCopy;
                v92 = v64;
                v65 = MEMORY[0x231885210](v91);
                [(_HAPAccessoryServerBTLE200 *)selfCopy2 _sendRequest:v62 shouldPrioritize:0 responseHandler:v65];
                discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
                readingSignatureCharacteristics = [discoveryContext4 readingSignatureCharacteristics];
                [readingSignatureCharacteristics addObject:v64];
              }

              else
              {
                v74 = objc_autoreleasePoolPush();
                v75 = selfCopy2;
                v76 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v77 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v96 = v77;
                  v97 = 2112;
                  v98 = signatureCopy;
                  v99 = 2112;
                  v100 = v63;
                  _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for characteristic, %@, with error: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v74);
                [(_HAPAccessoryServerBTLE200 *)v75 _handleReadCharacteristicSignature:signatureCopy error:v63];
                v62 = 0;
              }
            }

            else
            {
              v68 = MEMORY[0x277CCACA8];
              uUIDString3 = [v7 UUIDString];
              v63 = [v68 stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %hu", uUIDString3, v8, unsignedLongLongValue];

              v70 = objc_autoreleasePoolPush();
              v71 = selfCopy2;
              v72 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                v73 = HMFGetLogIdentifier();
                *buf = 138543618;
                v96 = v73;
                v97 = 2112;
                v98 = v63;
                _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v70);
              v62 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v63 reason:0 suggestion:0 underlyingError:0 marker:219];
              [(_HAPAccessoryServerBTLE200 *)v71 _handleReadCharacteristicSignature:signatureCopy error:v62];
            }

            v27 = v80;

            v8 = v86;
            v9 = v88;
            v7 = v90;
            discoveryContext2 = v84;
          }
        }

        else
        {
          v87 = v9;
          v89 = v7;
          v85 = v8;
          v28 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v96 = v31;
            v97 = 2112;
            v98 = signatureCopy;
            _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Found cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v81 = [HAPBTLECharacteristicSignature alloc];
          v32 = objc_alloc(MEMORY[0x277CCAD78]);
          type = [v27 type];
          v33 = [v32 initWithUUIDString:type];
          service = [v27 service];
          instanceID = [service instanceID];
          v36 = objc_alloc(MEMORY[0x277CCAD78]);
          [v27 service];
          v37 = v82 = selfCopy3;
          type2 = [v37 type];
          v39 = [v36 initWithUUIDString:type2];
          properties = [v27 properties];
          metadata = [v27 metadata];
          discoveryContext2 = [(HAPBTLECharacteristicSignature *)v81 initWithCharacteristicType:v33 serviceInstanceID:instanceID serviceType:v39 characteristicProperties:properties characteristicMetadata:metadata authenticated:0];

          characteristicSignatures = [(_HAPAccessoryServerBTLE200 *)v82 discoveryContext];
          v43CharacteristicSignatures = [characteristicSignatures characteristicSignatures];
          [v43CharacteristicSignatures setObject:discoveryContext2 forKey:signatureCopy];

          v8 = v85;
          v9 = v87;
          v7 = v89;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v96 = v24;
          v97 = 2112;
          v98 = signatureCopy;
          v99 = 2112;
          v100 = v9;
          _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get characteristic, %@, instance ID with error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        [(_HAPAccessoryServerBTLE200 *)selfCopy4 _handleReadCharacteristicSignature:signatureCopy error:v9];
        v8 = 0;
      }
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      uUID2 = [(__CFString *)signatureCopy UUID];
      v9 = [v15 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID2];

      v17 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v96 = v20;
        v97 = 2112;
        v98 = v9;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v9 reason:0 suggestion:0 underlyingError:0 marker:218];
      [(_HAPAccessoryServerBTLE200 *)selfCopy5 _handleReadCharacteristicSignature:signatureCopy error:v8];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v96 = v14;
      v97 = 2112;
      v98 = @"Characteristic does not support HAP";
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:217];
    [(_HAPAccessoryServerBTLE200 *)selfCopy6 _handleReadCharacteristicSignature:signatureCopy error:v7];
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (id)_getProtocolInfoService
{
  v18 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE200 *)self _hapServicesFromCache];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        type = [v7 type];
        v9 = [type isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_getServiceInstanceID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  characteristics = [dCopy characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (_isServiceInstanceIDCharacteristic(v9))
        {
          v6 = _parseServiceInstanceID(v9, 0);
          if (!v6)
          {
            v10 = objc_autoreleasePoolPush();
            selfCopy = self;
            v12 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = HMFGetLogIdentifier();
              *buf = 138543874;
              v21 = v13;
              v22 = 2114;
              v23 = dCopy;
              v24 = 2114;
              v25 = v9;
              _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get Service Instance ID for Service: %{public}@, Characteristic: %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v10);
            v6 = 0;
          }

          goto LABEL_14;
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_getCharacteristicInstanceID:(id)d error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  [d descriptors];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
        v12 = [uUID isEqual:v11];

        if (v12)
        {
          v13 = _parseCharacteristicInstanceID(v9, error);

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Characteristic missing the characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_readCharacteristicSignatures
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  services = [peripheral services];

  v5 = [services countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([objc_opt_class() isHAPService:v9])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          characteristics = [v9 characteristics];
          v11 = [characteristics countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(characteristics);
                }

                v15 = *(*(&v19 + 1) + 8 * j);
                if (_isServiceSignatureCharacteristic(v15))
                {
                  [(_HAPAccessoryServerBTLE200 *)self _readServiceSignature:v15];
                }

                if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v15])
                {
                  [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignature:v15];
                }
              }

              v12 = [characteristics countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [services countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  readingCharacteristics = [discoveryContext readingCharacteristics];
  v10 = [readingCharacteristics containsObject:characteristicCopy];

  if (v10)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:characteristicCopy error:errorCopy];
  }

  else
  {
    value = [characteristicCopy value];
    if ([value length])
    {
      v33 = value;
      v34 = errorCopy;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
      v13 = [pendingRequests countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(pendingRequests);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            characteristic = [v17 characteristic];
            cbCharacteristic = [characteristic cbCharacteristic];
            v20 = [cbCharacteristic isEqual:characteristicCopy];

            if (v20)
            {
              characteristic2 = [v17 characteristic];
              value = v33;
              errorCopy = v34;
              [(_HAPAccessoryServerBTLE200 *)self _handleResponseData:v33 fromCharacteristic:characteristic2 error:v34];

              goto LABEL_23;
            }
          }

          v14 = [pendingRequests countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v24;
        v42 = 2114;
        v43 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Received unexpected response from characteristic: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      value = v33;
      errorCopy = v34;
    }

    else
    {
      pendingRequests = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:characteristicCopy];
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      v29 = v28;
      if (pendingRequests)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v30;
          v42 = 2114;
          v43 = characteristicCopy;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Received zero-length value for characteristic: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [(_HAPAccessoryServerBTLE200 *)selfCopy2 _handleEventIndicationForCharacteristic:pendingRequests];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v31;
          v42 = 2114;
          v43 = characteristicCopy;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Received characteristic indication from unmapped characteristic: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

LABEL_23:
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadDescriptorValue:(id)value error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    characteristic = [valueCopy characteristic];
    value = [valueCopy value];
    v18 = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = valueCopy;
    v22 = 2114;
    v23 = characteristic;
    v24 = 2114;
    v25 = value;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Read value of descriptor: %{public}@ for characteristic: %{public}@ value: %{public}@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:errorCopy];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    readingDescriptors = [discoveryContext readingDescriptors];
    [readingDescriptors removeObject:valueCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    LODWORD(readingDescriptors) = [discoveryContext2 isComplete];

    if (readingDescriptors)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicSignatures];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_readDescriptorValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  value = [valueCopy value];

  if (!value)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = valueCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of descriptor: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    readingDescriptors = [discoveryContext readingDescriptors];
    [readingDescriptors addObject:valueCopy];

    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [peripheral readValueForDescriptor:valueCopy];
  }

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext2 isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadCharacteristicValue:(id)value error:(id)error
{
  valueCopy = value;
  if (error)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:error];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingCharacteristics = [discoveryContext readingCharacteristics];
    [readingCharacteristics removeObject:valueCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingCharacteristics) = [discoveryContext2 isComplete];

    if (readingCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
    }

    if (_isServiceInstanceIDCharacteristic(valueCopy))
    {
      service = [valueCopy service];
      [(_HAPAccessoryServerBTLE200 *)self _handleReadServiceInstanceId:service];
    }
  }
}

- (void)_readCharacteristicValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  readingCharacteristics = [discoveryContext readingCharacteristics];
  [readingCharacteristics addObject:valueCopy];

  value = [valueCopy value];

  if (value)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:valueCopy error:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = valueCopy;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of characteristic: %{public}@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [peripheral readValueForCharacteristic:valueCopy];
  }

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext2 isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredDescriptors:(id)descriptors
{
  v16 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [descriptorsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_opt_class() isHAPDescriptor:v9])
        {
          [(_HAPAccessoryServerBTLE200 *)self _readDescriptorValue:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [descriptorsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredCharacteristic:(id)characteristic error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    descriptors = [characteristicCopy descriptors];
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = descriptors;
    v22 = 2112;
    v23 = characteristicCopy;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Discovered descriptors: %@ for characteristic: %@ with error: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:errorCopy];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isHAPCharacteristic:characteristicCopy])
    {
      descriptors2 = [characteristicCopy descriptors];
      [(_HAPAccessoryServerBTLE200 *)selfCopy _handleDiscoveredDescriptors:descriptors2];
    }

    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    discoveringCharacteristics = [discoveryContext discoveringCharacteristics];
    [discoveringCharacteristics removeObject:characteristicCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    LODWORD(discoveringCharacteristics) = [discoveryContext2 isComplete];

    if (discoveringCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicSignatures];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_discoverCharacteristic:(id)characteristic
{
  v17 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveringCharacteristics = [discoveryContext discoveringCharacteristics];
  [discoveringCharacteristics addObject:characteristicCopy];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Discovering characteristic: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
  [peripheral discoverDescriptorsForCharacteristic:characteristicCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadServiceInstanceId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([objc_opt_class() isHAPService:idCopy])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    characteristics = [idCopy characteristics];
    v6 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(characteristics);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ((_isServiceInstanceIDCharacteristic(v10) & 1) == 0 && [(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v10])
          {
            [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristic:v10];
          }
        }

        v7 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveringServices = [discoveryContext discoveringServices];
  [discoveringServices removeObject:idCopy];

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  LODWORD(discoveringServices) = [discoveryContext2 isComplete];

  if (discoveringServices)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredCharacteristicsForService:(id)service error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  errorCopy = error;
  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:errorCopy];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    if ([objc_opt_class() isHAPService:serviceCopy] && !-[_HAPAccessoryServerBTLE200 hasValidCache](self, "hasValidCache"))
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      characteristics = [serviceCopy characteristics];
      v19 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(characteristics);
            }

            v23 = *(*(&v24 + 1) + 8 * i);
            if (_isServiceInstanceIDCharacteristic(v23))
            {
              [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicValue:v23];
              goto LABEL_8;
            }
          }

          v20 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v11;
        v30 = 2112;
        v31 = serviceCopy;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Removing Service: %@ from discovery context", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      characteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
      discoveringServices = [characteristics discoveringServices];
      [discoveringServices removeObject:serviceCopy];
    }

LABEL_8:

    if (![(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      isComplete = [discoveryContext isComplete];

      if (isComplete)
      {
        [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
      }
    }

    if ([(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      isComplete2 = [discoveryContext2 isComplete];

      if (isComplete2)
      {
        [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_discoverCharacteristicsForService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = serviceCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Discovering service: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
  discoveringServices = [discoveryContext discoveringServices];
  [discoveringServices addObject:serviceCopy];

  peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
  [peripheral discoverCharacteristics:0 forService:serviceCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredServices:(id)services error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  if (!error)
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = servicesCopy;
    obj = servicesCopy;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v7)
    {
      goto LABEL_27;
    }

    v8 = v7;
    v9 = *v34;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        if ([objc_opt_class() isHAPService:v11])
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          discoveryType = [discoveryContext discoveryType];

          if (discoveryType == 1)
          {
            uUID = [v11 UUID];
            v15 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
            if ([uUID isEqual:v15])
            {

LABEL_26:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11, v29];
              goto LABEL_27;
            }

            uUID2 = [v11 UUID];
            v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
            v18 = [uUID2 isEqual:v17];

            if (v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            discoveryType2 = [discoveryContext2 discoveryType];

            if (discoveryType2 != 2)
            {
              goto LABEL_18;
            }

            uUID3 = [v11 UUID];
            v22 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
            if ([uUID3 isEqual:v22])
            {
              goto LABEL_17;
            }

            uUID4 = [v11 UUID];
            v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
            if ([uUID4 isEqual:v24])
            {

LABEL_17:
LABEL_18:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11, v29];
              goto LABEL_19;
            }

            [v11 UUID];
            v25 = v30 = uUID4;
            v26 = [MEMORY[0x277CBE0A0] UUIDWithString:@"000000A2-0000-1000-8000-0026BB765291"];
            v31 = [v25 isEqual:v26];

            if (v31)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_19:
        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v8 = v27;
      if (!v27)
      {
LABEL_27:

        servicesCopy = v29;
        goto LABEL_28;
      }
    }
  }

  [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:error];
LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_discoverServices
{
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  [peripheral discoverServices:0];
}

- (void)_cacheServices:(id)services
{
  v36 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessoryCache = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
    *buf = 138543618;
    v33 = v8;
    v34 = 2112;
    v35 = accessoryCache;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: current Cache : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = servicesCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    v14 = 1;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(_HAPAccessoryServerBTLE200 *)selfCopy _serviceCacheFromHAPService:*(*(&v27 + 1) + 8 * v15) serviceOrder:v14, v27];
        ++v14;
        accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
        [accessoryCache2 updateWithService:v16];

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v18 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
  accessoryCache3 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
  [accessoryCache3 setDiscoveryVersion:v18];

  accessoryCache4 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
  [accessoryCache4 save];

  [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:1];
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    accessoryCache5 = [(_HAPAccessoryServerBTLE200 *)v22 accessoryCache];
    *buf = 138543618;
    v33 = v24;
    v34 = 2112;
    v35 = accessoryCache5;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Saved Valid Cache : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)_serviceCacheFromHAPService:(id)service serviceOrder:(unint64_t)order
{
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v6 = [HAPBLEServiceCache alloc];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  type = [serviceCopy type];
  v9 = [v7 initWithUUIDString:type];
  instanceID = [serviceCopy instanceID];
  serviceProperties = [serviceCopy serviceProperties];
  linkedServices = [serviceCopy linkedServices];
  v13 = [(HAPBLEServiceCache *)v6 initWithServiceUUID:v9 instanceId:instanceID instanceOrder:order serviceProperties:serviceProperties linkedServices:linkedServices];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = serviceCopy;
  obj = [serviceCopy characteristics];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [HAPBLECharacteristicCache alloc];
        v20 = objc_alloc(MEMORY[0x277CCAD78]);
        type2 = [v18 type];
        v22 = [v20 initWithUUIDString:type2];
        instanceID2 = [v18 instanceID];
        properties = [v18 properties];
        accessoryMetadata = [v18 accessoryMetadata];
        v26 = [(HAPBLECharacteristicCache *)v19 initWithCharacteristicUUID:v22 instanceId:instanceID2 characteristicProperties:properties characteristicMetadata:accessoryMetadata];

        [(HAPBLEServiceCache *)v13 updateWithCharacteristic:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_hapServicesFromCache
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveryType = [discoveryContext discoveryType];

  if (discoveryType == 2)
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = @"00000055-0000-1000-8000-0026BB765291";
  }

  else
  {
    if (discoveryType != 1)
    {
      if (discoveryType)
      {
        goto LABEL_10;
      }

      accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
      cachedServices = [accessoryCache cachedServices];
      [array addObjectsFromArray:cachedServices];

      goto LABEL_9;
    }

    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = @"0000003E-0000-1000-8000-0026BB765291";
  }

  v12 = [v10 initWithUUIDString:v11];
  accessoryCache = [(_HAPAccessoryServerBTLE200 *)self _getCachedService:v12];

  if (!accessoryCache)
  {
    goto LABEL_10;
  }

  [array addObject:accessoryCache];
LABEL_9:

LABEL_10:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v13 = array;
  v62 = [v13 countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v62)
  {
    v14 = *v79;
    v15 = 0x277CBE000uLL;
    v65 = v13;
    v66 = array2;
    v61 = *v79;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v79 != v14)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v78 + 1) + 8 * v16);
      serviceUUID = [v17 serviceUUID];
      v19 = -[_HAPAccessoryServerBTLE200 _getCBService:instanceOrder:](self, "_getCBService:instanceOrder:", serviceUUID, [v17 serviceInstanceOrder]);

      if (!v19)
      {
        v56 = objc_autoreleasePoolPush();
        selfCopy = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v84 = v59;
          v85 = 2114;
          v86 = v17;
          _os_log_impl(&dword_22AADC000, v58, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: No matching cb service for %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
LABEL_36:

        v49 = 0;
        goto LABEL_37;
      }

      v64 = v16;
      array3 = [*(v3 + 2840) array];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v63 = v17;
      obj = [v17 cachedCharacteristics];
      v73 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v73)
      {
        v72 = *v75;
        v67 = array3;
        v68 = v19;
        while (2)
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v75 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v74 + 1) + 8 * i);
            characteristicUUID = [v22 characteristicUUID];
            characteristicInstanceId = [v22 characteristicInstanceId];
            v25 = [(_HAPAccessoryServerBTLE200 *)self _getCBCharacteristic:characteristicUUID instanceId:characteristicInstanceId service:v19];

            primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
            characteristicInstanceId2 = [v22 characteristicInstanceId];
            v28 = [primaryAccessory characteristicWithInstanceID:characteristicInstanceId2];

            if (!v28)
            {
              v71 = v25;
              v29 = v15;
              v30 = [HAPCharacteristic alloc];
              characteristicUUID2 = [v22 characteristicUUID];
              uUIDString = [characteristicUUID2 UUIDString];
              characteristicInstanceId3 = [v22 characteristicInstanceId];
              selfCopy2 = self;
              stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
              characteristicProperties = [v22 characteristicProperties];
              characteristicMetadata = [v22 characteristicMetadata];
              LOBYTE(v60) = 1;
              v28 = [(HAPCharacteristic *)v30 initWithType:uUIDString instanceID:characteristicInstanceId3 value:0 stateNumber:stateNumber properties:characteristicProperties eventNotificationsEnabled:0 implicitWriteWithResponse:v60 metadata:characteristicMetadata];

              if (!v28)
              {
                v50 = objc_autoreleasePoolPush();
                v51 = selfCopy2;
                v52 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v53 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v84 = v53;
                  v85 = 2114;
                  v86 = v22;
                  _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: No matching cb characteristic for %{public}@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v50);
                v13 = v65;
                array2 = v66;
                goto LABEL_36;
              }

              self = selfCopy2;
              array3 = v67;
              v19 = v68;
              v15 = v29;
              v25 = v71;
            }

            distantPast = [*(v15 + 2728) distantPast];
            [(HAPCharacteristic *)v28 setValueUpdatedTime:distantPast];

            stateNumber2 = [(HAPAccessoryServerBTLE *)self stateNumber];
            [(HAPCharacteristic *)v28 setStateNumber:stateNumber2];

            [(HAPCharacteristic *)v28 setCBCharacteristic:v25];
            [array3 addObject:v28];
          }

          v73 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }
      }

      primaryAccessory2 = [(HAPAccessoryServer *)self primaryAccessory];
      serviceInstanceId = [v63 serviceInstanceId];
      v41 = [primaryAccessory2 serviceWithInstanceID:serviceInstanceId];

      if (v41)
      {
        break;
      }

      v42 = [HAPService alloc];
      serviceUUID2 = [v63 serviceUUID];
      uUIDString2 = [serviceUUID2 UUIDString];
      serviceInstanceId2 = [v63 serviceInstanceId];
      serviceProperties = [v63 serviceProperties];
      linkedServices = [v63 linkedServices];
      v41 = [(HAPService *)v42 initWithType:uUIDString2 instanceID:serviceInstanceId2 parsedCharacteristics:array3 serviceProperties:serviceProperties linkedServices:linkedServices];

      v13 = v65;
      array2 = v66;
      v3 = 0x277CBE000;
      v15 = 0x277CBE000;
      if (v41)
      {
        goto LABEL_29;
      }

LABEL_30:

      v16 = v64 + 1;
      v14 = v61;
      if (v64 + 1 == v62)
      {
        v62 = [v13 countByEnumeratingWithState:&v78 objects:v87 count:16];
        if (v62)
        {
          goto LABEL_12;
        }

        goto LABEL_32;
      }
    }

    v13 = v65;
    array2 = v66;
    v3 = 0x277CBE000;
    v15 = 0x277CBE000;
LABEL_29:
    primaryAccessory3 = [(HAPAccessoryServer *)self primaryAccessory];
    [(HAPService *)v41 setAccessory:primaryAccessory3];

    [(HAPService *)v41 setCBService:v19];
    [array2 addObject:v41];

    goto LABEL_30;
  }

LABEL_32:

  v49 = array2;
LABEL_37:

  v54 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)_getCachedService:(id)service
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  cachedServices = [accessoryCache cachedServices];

  v7 = [cachedServices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(cachedServices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        serviceUUID = [v10 serviceUUID];
        v12 = [serviceUUID isEqual:serviceCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [cachedServices countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_getCBService:(id)service instanceOrder:(unint64_t)order
{
  v48 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:?];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  services = [peripheral services];
  v8 = [services copy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v36;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [objc_opt_class() isHAPService:v15];
        uUID = [v15 UUID];
        v18 = [uUID isEqual:v5];

        if (v18)
        {
          v19 = v15;

          v11 = v19;
        }

        v12 += v16;
        uUID2 = [v15 UUID];
        v21 = [uUID2 isEqual:v5];

        if (v21)
        {
          v22 = v12 == order;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v15;

          v24 = serviceCopy;
          goto LABEL_20;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = selfCopy;
  v27 = HMFGetOSLogHandle();
  v24 = serviceCopy;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544130;
    v40 = v28;
    v41 = 2114;
    v42 = v11;
    v43 = 2114;
    v44 = serviceCopy;
    v45 = 2050;
    orderCopy = order;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: Returning first instance %{public}@ Service for : %{public}@/%{public}tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v11 = v11;
  v23 = v11;
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_getCBCharacteristic:(id)characteristic instanceId:(id)id service:(id)service
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  idCopy = id;
  serviceCopy = service;
  v9 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:characteristicCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  characteristics = [serviceCopy characteristics];
  v11 = [characteristics countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(characteristics);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        uUID = [v15 UUID];
        v17 = [uUID isEqual:v9];

        if (v17)
        {
          v23 = v15;

          v21 = idCopy;
          goto LABEL_13;
        }
      }

      v12 = [characteristics countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  v21 = idCopy;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v22;
    v34 = 2114;
    v35 = characteristicCopy;
    v36 = 2114;
    v37 = idCopy;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: NO CB Characteristic for : %{public}@/%{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v23 = 0;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_handleCompletedDiscovery
{
  v118 = *MEMORY[0x277D85DE8];
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!discoveryContext)
  {
    goto LABEL_58;
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    *buf = 138543618;
    v112 = v7;
    v113 = 2050;
    discoveryType = [discoveryContext2 discoveryType];
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %{public}tu completed.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  hasValidCache = [(_HAPAccessoryServerBTLE200 *)selfCopy hasValidCache];
  v10 = objc_autoreleasePoolPush();
  v97 = selfCopy;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (hasValidCache)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      accessoryCache = [(_HAPAccessoryServerBTLE200 *)v97 accessoryCache];
      peripheralInfo = [accessoryCache peripheralInfo];
      *buf = 138543618;
      v112 = v13;
      v113 = 2114;
      discoveryType = peripheralInfo;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Constructing attribute database from cache %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    _hapServicesFromCache = [(_HAPAccessoryServerBTLE200 *)v97 _hapServicesFromCache];
    v17 = objc_autoreleasePoolPush();
    v18 = v97;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v112 = v20;
      v113 = 2114;
      discoveryType = _hapServicesFromCache;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database with cached services: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (_hapServicesFromCache && [_hapServicesFromCache count])
    {
      v21 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
      accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)v18 accessoryCache];
      [accessoryCache2 setDiscoveryVersion:v21];
    }

    else
    {
      v109[0] = *MEMORY[0x277CCA450];
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed att-db construction from cache"];
      v110[0] = v77;
      v109[1] = *MEMORY[0x277CCA470];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v79 = [mainBundle localizedStringForKey:@"Unable to find matching CB service / characteristic" value:&stru_283E79C60 table:0];
      v110[1] = v79;
      accessoryCache2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];

      v80 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:accessoryCache2];
      [(_HAPAccessoryServerBTLE200 *)v18 _cancelDiscoveryWithError:v80];
      browser = [(HAPAccessoryServerBTLE *)v18 browser];
      accessoryCache3 = [(_HAPAccessoryServerBTLE200 *)v18 accessoryCache];
      pairingIdentifier = [accessoryCache3 pairingIdentifier];
      [browser removeCachedAccessoryWithIdentifier:pairingIdentifier];

      [(_HAPAccessoryServerBTLE200 *)v18 setHasValidCache:0];
      v84 = objc_autoreleasePoolPush();
      v85 = v18;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = HMFGetLogIdentifier();
        accessoryCache4 = [(_HAPAccessoryServerBTLE200 *)v85 accessoryCache];
        *buf = 138543618;
        v112 = v87;
        v113 = 2114;
        discoveryType = accessoryCache4;
        _os_log_impl(&dword_22AADC000, v86, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Att-db mismatch removing the cached accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v84);
    }

    primaryAccessory = [(HAPAccessoryServer *)v18 primaryAccessory];
    v89 = [_hapServicesFromCache copy];
    [primaryAccessory setServices:v89];

    goto LABEL_54;
  }

  if (v12)
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v112 = v23;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database parsing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  peripheral = [(HAPAccessoryServerBTLE *)v97 peripheral];
  services = [peripheral services];
  v26 = [services copy];

  v27 = v97;
  v98 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  _hapServicesFromCache = v26;
  v28 = [_hapServicesFromCache countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0x277CBE000uLL;
    v31 = *v106;
    v99 = _hapServicesFromCache;
    v100 = *v106;
    do
    {
      v32 = 0;
      do
      {
        if (*v106 != v31)
        {
          objc_enumerationMutation(_hapServicesFromCache);
        }

        v33 = *(*(&v105 + 1) + 8 * v32);
        if ([objc_opt_class() isHAPService:v33])
        {
          discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)v27 discoveryContext];
          discoveryType2 = [discoveryContext3 discoveryType];

          if (discoveryType2 != 1)
          {
            discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)v27 discoveryContext];
            discoveryType3 = [discoveryContext4 discoveryType];

            if (discoveryType3 != 2)
            {
              goto LABEL_31;
            }

            uUID = [v33 UUID];
            v37 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
            if ([uUID isEqual:v37])
            {
              goto LABEL_30;
            }

            uUID2 = [v33 UUID];
            v48 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
            if ([uUID2 isEqual:v48])
            {

              _hapServicesFromCache = v99;
LABEL_30:

LABEL_31:
              v104 = 0;
              v49 = [(_HAPAccessoryServerBTLE200 *)v27 _parseService:v33 error:&v104];
              v50 = v104;
              if (v49)
              {
                primaryAccessory2 = [(HAPAccessoryServer *)v27 primaryAccessory];
                [v49 setAccessory:primaryAccessory2];

                [v98 addObject:v49];
                v31 = v100;
              }

              else
              {
                v52 = objc_autoreleasePoolPush();
                v53 = v27;
                v54 = HMFGetOSLogHandle();
                v31 = v100;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v112 = v55;
                  v113 = 2114;
                  discoveryType = v50;
                  _os_log_impl(&dword_22AADC000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse service with error: %{public}@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v52);
                _hapServicesFromCache = v99;
              }
            }

            else
            {
              uUID3 = [v33 UUID];
              v57 = [MEMORY[0x277CBE0A0] UUIDWithString:@"000000A2-0000-1000-8000-0026BB765291"];
              v58 = [uUID3 isEqual:v57];

              v27 = v97;
              _hapServicesFromCache = v99;
              if (v58)
              {
                goto LABEL_31;
              }

              v59 = objc_autoreleasePoolPush();
              v60 = v97;
              v61 = HMFGetOSLogHandle();
              v31 = v100;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v62 = HMFGetLogIdentifier();
                *buf = 138543618;
                v112 = v62;
                v113 = 2112;
                discoveryType = v33;
                _os_log_impl(&dword_22AADC000, v61, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Pairing discovery: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v59);
            }

            v30 = 0x277CBE000;
            goto LABEL_38;
          }

          uUID = [v33 UUID];
          v37 = [*(v30 + 160) UUIDWithString:@"FED3"];
          if ([uUID isEqual:v37])
          {
            goto LABEL_30;
          }

          uUID4 = [v33 UUID];
          v39 = [*(v30 + 160) UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
          v40 = [uUID4 isEqual:v39];

          _hapServicesFromCache = v99;
          if (v40)
          {
            goto LABEL_31;
          }

          v41 = objc_autoreleasePoolPush();
          v42 = v27;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v112 = v44;
            v113 = 2112;
            discoveryType = v33;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Identify discovery: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v30 = 0x277CBE000;
          v31 = v100;
        }

LABEL_38:
        ++v32;
      }

      while (v29 != v32);
      v63 = [_hapServicesFromCache countByEnumeratingWithState:&v105 objects:v117 count:16];
      v29 = v63;
    }

    while (v63);
  }

  primaryAccessory = v98;
  v65 = [v98 count];
  v66 = objc_autoreleasePoolPush();
  v67 = v27;
  v68 = HMFGetOSLogHandle();
  v69 = v68;
  if (!v65)
  {
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v96 = HMFGetLogIdentifier();
      *buf = 138543362;
      v112 = v96;
      _os_log_impl(&dword_22AADC000, v69, OS_LOG_TYPE_ERROR, "%{public}@Attribute database parsing failed due to missing compatible services", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v66);
    v90 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Peripheral missing services" reason:0 suggestion:0 underlyingError:0 marker:216];
    goto LABEL_55;
  }

  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v70 = HMFGetLogIdentifier();
    discoveryContext5 = [(_HAPAccessoryServerBTLE200 *)v67 discoveryContext];
    discoveryType4 = [discoveryContext5 discoveryType];
    *buf = 138543874;
    v112 = v70;
    v113 = 2114;
    discoveryType = v98;
    v115 = 2050;
    v116 = discoveryType4;
    _os_log_impl(&dword_22AADC000, v69, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database parsing with parsed services: %{public}@, type: %{public}tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v66);
  primaryAccessory3 = [(HAPAccessoryServer *)v67 primaryAccessory];
  v74 = [v98 copy];
  [primaryAccessory3 setServices:v74];

  discoveryContext6 = [(_HAPAccessoryServerBTLE200 *)v67 discoveryContext];
  discoveryType5 = [discoveryContext6 discoveryType];

  if (!discoveryType5)
  {
    [(_HAPAccessoryServerBTLE200 *)v67 setVerified:1];
    [(_HAPAccessoryServerBTLE200 *)v67 _cacheServices:v98];
  }

LABEL_54:
  v90 = 0;
  v27 = v97;
LABEL_55:

  [(_HAPAccessoryServerBTLE200 *)v27 discoveryContext];
  v92 = v91 = v27;
  completionHandler = [v92 completionHandler];

  if (completionHandler)
  {
    clientQueue = [(HAPAccessoryServer *)v91 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55___HAPAccessoryServerBTLE200__handleCompletedDiscovery__block_invoke;
    block[3] = &unk_2786D65D8;
    v103 = completionHandler;
    v102 = v90;
    dispatch_async(clientQueue, block);
  }

  [(_HAPAccessoryServerBTLE200 *)v91 setDiscoveryContext:0];

LABEL_58:
  v95 = *MEMORY[0x277D85DE8];
}

- (void)_retryDiscovery
{
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (discoveryContext)
  {
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    [discoveryContext2 reset];

    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryRetries:[(_HAPAccessoryServerBTLE200 *)self discoveryRetries]+ 1];
    pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)self pairVerifyOperationQueue];
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:27];
    [pairVerifyOperationQueue cancelAllOperationsWithError:v6];

    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:27];
    [(_HAPAccessoryServerBTLE200 *)self _cancelAllQueuedOperationsWithError:v7];

    [(_HAPAccessoryServerBTLE200 *)self _resumeAllOperations];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45___HAPAccessoryServerBTLE200__retryDiscovery__block_invoke;
    v8[3] = &unk_2786D6CA0;
    v8[4] = self;
    __45___HAPAccessoryServerBTLE200__retryDiscovery__block_invoke(v8);
    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryContext:0];
    [(_HAPAccessoryServerBTLE200 *)self discoverAccessoriesAndReadCharacteristicTypes:0];
  }
}

- (BOOL)_cancelDiscoveryWithError:(id)error
{
  v52 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!discoveryContext)
  {
LABEL_22:
    v30 = 0;
    goto LABEL_23;
  }

  accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  lastKeyBagIdentityIndexFailingPV = [accessoryCache lastKeyBagIdentityIndexFailingPV];
  if (lastKeyBagIdentityIndexFailingPV)
  {
    keyBag = [(HAPAccessoryServer *)self keyBag];
    accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    lastKeyBagIdentityIndexFailingPV2 = [accessoryCache2 lastKeyBagIdentityIndexFailingPV];
    v11 = [keyBag isValidIndex:{objc_msgSend(lastKeyBagIdentityIndexFailingPV2, "integerValue") + 1}];
  }

  else
  {
    v11 = 0;
  }

  v12 = ([(_HAPAccessoryServerBTLE200 *)self discoveryRetries]< 2) | v11;
  v13 = [(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v13 && (v12 & 1) != 0)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v18;
      v46 = 2112;
      discoveryType = errorCopy;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring cancel discovery request due to BTLE sudden disconnection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_22;
  }

  if (v17)
  {
    v19 = HMFGetLogIdentifier();
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    *buf = 138543874;
    v45 = v19;
    v46 = 2050;
    discoveryType = [discoveryContext2 discoveryType];
    v48 = 2114;
    v49 = errorCopy;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %{public}tu cancelled with error: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (!errorCopy)
  {
    v31 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Discovery failed." reason:@"Cancelled." suggestion:0 underlyingError:0];
LABEL_19:
    v32 = v31;
    discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    completionHandler = [discoveryContext3 completionHandler];

    if (completionHandler)
    {
      clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __56___HAPAccessoryServerBTLE200__cancelDiscoveryWithError___block_invoke;
      v41 = &unk_2786D65D8;
      v43 = completionHandler;
      v42 = v32;
      dispatch_async(clientQueue, &v38);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy setDiscoveryContext:0, v38, v39, v40, v41];

    goto LABEL_22;
  }

  domain = [errorCopy domain];
  v22 = [domain isEqualToString:*MEMORY[0x277CBDEE8]] & v12;

  if (v22 != 1)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:0];
    v31 = errorCopy;
    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)v24 discoveryContext];
    discoveryType2 = [discoveryContext4 discoveryType];
    discoveryRetries = [(_HAPAccessoryServerBTLE200 *)v24 discoveryRetries];
    *buf = 138544130;
    v45 = v26;
    v46 = 2048;
    discoveryType = discoveryType2;
    v48 = 2048;
    v49 = discoveryRetries;
    v50 = 1024;
    v51 = 2;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Reconnecting and restarting attribute database discovery type: %tu due to a connection error. Current retries, %tu, max retries, %d.", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v23);
  [(_HAPAccessoryServerBTLE200 *)v24 _retryDiscovery];
  v30 = 1;
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)_discoverWithType:(int64_t)type completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  date = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke;
  v26[3] = &unk_2786D3F08;
  objc_copyWeak(v29, &location);
  v8 = date;
  v27 = v8;
  v29[1] = type;
  v9 = handlerCopy;
  v28 = v9;
  v10 = MEMORY[0x231885210](v26);
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isDiscovering = [discoveryContext isDiscovering];

  if (isDiscovering)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = MEMORY[0x277CCABB0];
      discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
      v19 = [v17 numberWithInteger:{objc_msgSend(discoveryContext2, "discoveryType")}];
      *buf = 138543618;
      v32 = v16;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@The server already has a discovery in progress for type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4];
    (v10)[2](v10, v20);
  }

  else
  {
    v21 = [[_HAPBTLEDiscoveryContext alloc] initWithDiscoveryType:type];
    [(_HAPBTLEDiscoveryContext *)v21 setCompletionHandler:v10];
    [(_HAPBTLEDiscoveryContext *)v21 setDiscovering:1];
    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryContext:v21];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_213;
    v23[3] = &unk_2786D3F30;
    objc_copyWeak(v25, &location);
    v25[1] = type;
    v20 = v21;
    v24 = v20;
    [(_HAPAccessoryServerBTLE200 *)self connectWithCompletionHandler:v23];

    objc_destroyWeak(v25);
  }

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_readPendingDiscoveredCharacteristicTypesWithCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  discoveredAccessoryCharacteristicsPendingRead = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteristicsPendingRead];
  v6 = [discoveredAccessoryCharacteristicsPendingRead countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(discoveredAccessoryCharacteristicsPendingRead);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];
        primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
        primaryAccessory2 = primaryAccessory;
        if (!v11)
        {
          v15 = [primaryAccessory characteristicsOfType:v10];
          firstObject = [v15 firstObject];

LABEL_10:
          if (!firstObject)
          {
            continue;
          }

          goto LABEL_11;
        }

        firstObject = [primaryAccessory characteristicOfType:v10 serviceType:@"0000003E-0000-1000-8000-0026BB765291"];

        if (!firstObject)
        {
          primaryAccessory2 = [(HAPAccessoryServer *)self primaryAccessory];
          firstObject = [primaryAccessory2 characteristicOfType:v10 serviceType:@"FED3"];
          goto LABEL_10;
        }

LABEL_11:
        [array addObject:firstObject];
      }

      v7 = [discoveredAccessoryCharacteristicsPendingRead countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v7);
  }

  discoveredAccessoryCharacteristicsPendingRead2 = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteristicsPendingRead];
  [discoveredAccessoryCharacteristicsPendingRead2 removeAllObjects];

  if ([array count])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v20;
      v45 = 2112;
      v46 = array;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Reading pending discovered characteristics with types: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [array copy];
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __86___HAPAccessoryServerBTLE200__readPendingDiscoveredCharacteristicTypesWithCompletion___block_invoke;
          v30[3] = &unk_2786D67B8;
          v31 = array;
          v32 = v26;
          v33 = completionCopy;
          [(_HAPAccessoryServerBTLE200 *)selfCopy _readValueForCharacteristic:v26 options:1 completionHandler:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v23);
    }

    v27 = completionCopy;
  }

  else
  {
    v27 = completionCopy;
    completionCopy[2](completionCopy);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)types
{
  typesCopy = types;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_removePairingOfAccessoryServerCancelledMidPairing
{
  if ([(HAPAccessoryServer *)self pendingRemovePairing]== 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke;
    v8[3] = &unk_2786D6CF0;
    v8[4] = self;
    v3 = MEMORY[0x231885210](v8);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke_193;
    v6[3] = &unk_2786D3E68;
    v7 = v3;
    v5 = v3;
    [(_HAPAccessoryServerBTLE200 *)self removePairingForCurrentControllerOnQueue:clientQueue completion:v6 serverPairingCompletion:v5];
  }
}

- (id)_characteristicForCBCharacteristic:(id)characteristic
{
  v21 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  v6 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:service];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [v6 characteristics];
  v8 = [characteristics countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        cbCharacteristic = [v11 cbCharacteristic];
        v13 = [cbCharacteristic isEqual:characteristicCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [characteristics countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_serviceForCBService:(id)service
{
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  accessories = [(HAPAccessoryServer *)self accessories];
  v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v6 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        services = [v8 services];
        v10 = [services countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(services);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              cbService = [v14 cbService];
              v16 = [cbService isEqual:serviceCopy];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [services countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v17 = 0;
      v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
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

- (void)_createPrimaryAccessoryFromAdvertisementData
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [HAPAccessory alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5 = [(HAPAccessory *)v3 initWithServer:self instanceID:v4];

  name = [(HAPAccessoryServer *)self name];
  [(HAPAccessory *)v5 setName:name];

  identifier = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setIdentifier:identifier];

  identifier2 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setServerIdentifier:identifier2];

  [(HAPAccessoryServer *)self setPrimaryAccessory:v5];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(HAPAccessoryServer *)self setAccessories:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_connectionState = state;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (int64_t)connectionState
{
  os_unfair_lock_lock_with_options();
  connectionState = self->_connectionState;
  os_unfair_lock_unlock(&self->super.super._lock);
  return connectionState;
}

- (void)setHasBeenDiscovered:(BOOL)discovered
{
  os_unfair_lock_lock_with_options();
  self->_hasBeenDiscovered = discovered;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasBeenDiscovered
{
  os_unfair_lock_lock_with_options();
  hasBeenDiscovered = self->_hasBeenDiscovered;
  os_unfair_lock_unlock(&self->super.super._lock);
  return hasBeenDiscovered;
}

- (void)setHasValidCache:(BOOL)cache
{
  os_unfair_lock_lock_with_options();
  self->_hasValidCache = cache;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasValidCache
{
  os_unfair_lock_lock_with_options();
  hasValidCache = self->_hasValidCache;
  os_unfair_lock_unlock(&self->super.super._lock);
  return hasValidCache;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPAccessoryServerBTLE *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  [(HAPAccessoryServer *)self hasPairings];
  v8 = HMFBooleanToString();
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  v10 = [v5 stringWithFormat:@"<%@%@, hasPairings = %@, Peripheral = %@>", shortDescription, v7, v8, peripheral];

  if (pointerCopy)
  {
  }

  return v10;
}

- (void)dealloc
{
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  [peripheral setDelegate:0];

  v4.receiver = self;
  v4.super_class = _HAPAccessoryServerBTLE200;
  [(_HAPAccessoryServerBTLE200 *)&v4 dealloc];
}

- (void)_resetWithError:(id)error
{
  v64 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v8;
    v59 = 2112;
    v60 = errorCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting server with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBTLE *)selfCopy setNotifyingCharacteristicUpdated:0];
  v9 = errorCopy;
  v10 = v9;
  if (!v9)
  {
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing]&& ([(_HAPAccessoryServerBTLE200 *)selfCopy pairingDisconnectionError], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      pairingDisconnectionError = [(_HAPAccessoryServerBTLE200 *)selfCopy pairingDisconnectionError];
    }

    else
    {
      pairingDisconnectionError = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Cancelled." reason:@"Resetting the server." suggestion:0 underlyingError:0];
    }

    v10 = pairingDisconnectionError;
  }

  v44 = v9;
  [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelAllQueuedOperationsWithError:v10];
  [(_HAPAccessoryServerBTLE200 *)selfCopy _resumeAllOperations];
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
  keyEnumerator = [characteristicWriteCompletionHandlers keyEnumerator];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = keyEnumerator;
  v15 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  v47 = selfCopy;
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
        v21 = [characteristicWriteCompletionHandlers2 objectForKey:v19];

        if (v10)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543874;
            v58 = v25;
            v59 = 2114;
            v60 = v19;
            v61 = 2114;
            v62 = v10;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Calling write completion handler for %{public}@ with error: %{public}@", buf, 0x20u);

            selfCopy = v47;
          }

          objc_autoreleasePoolPop(v22);
        }

        (v21)[2](v21, v10);
      }

      v16 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v16);
  }

  characteristicWriteCompletionHandlers3 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
  [characteristicWriteCompletionHandlers3 removeAllObjects];

  characteristicEnableEventCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
  keyEnumerator2 = [characteristicEnableEventCompletionHandlers keyEnumerator];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = keyEnumerator2;
  v29 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(obja);
        }

        v33 = *(*(&v48 + 1) + 8 * j);
        characteristicEnableEventCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
        v35 = [characteristicEnableEventCompletionHandlers2 objectForKey:v33];

        if (v10)
        {
          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543874;
            v58 = v39;
            v59 = 2114;
            v60 = v33;
            v61 = 2114;
            v62 = v10;
            _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Calling enable event completion handler for %{public}@ with error: %{public}@", buf, 0x20u);

            selfCopy = v47;
          }

          objc_autoreleasePoolPop(v36);
        }

        (v35)[2](v35, v10);
      }

      v30 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  characteristicEnableEventCompletionHandlers3 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
  [characteristicEnableEventCompletionHandlers3 removeAllObjects];

  [(_HAPAccessoryServerBTLE200 *)selfCopy _invokeOperationsReceivedDuringConnectionStateChangeWithError:v10];
  [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:v44];
  if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _pairingCompletedWithError:v10];
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
  [pairSetupSession stop];
  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setSecuritySession:0];
  [securitySession close];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setDiscoveryRetries:0];

  v43 = *MEMORY[0x277D85DE8];
}

- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6
{
  changedCopy = changed;
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  numberCopy = number;
  configNumberCopy = configNumber;
  v25 = usernameCopy;
  categoryCopy = category;
  hashCopy = hash;
  browserCopy = browser;
  storeCopy = store;
  v102.receiver = self;
  v102.super_class = _HAPAccessoryServerBTLE200;
  identifierCopy = identifier;
  v97 = peripheralCopy;
  v30 = peripheralCopy;
  v31 = v25;
  v32 = numberCopy;
  v33 = nameCopy;
  v34 = [(HAPAccessoryServerBTLE *)&v102 initWithPeripheral:v30 name:nameCopy pairingUsername:v31 statusFlags:flagsCopy stateNumber:v32 stateChanged:changedCopy connectReason:reason configNumber:configNumberCopy category:categoryCopy setupHash:hashCopy connectionIdleTime:time browser:browserCopy keyStore:storeCopy whbStableIdentifier:identifierCopy];
  if (!v34)
  {
    goto LABEL_13;
  }

  v88 = storeCopy;
  v86 = hashCopy;
  array = [MEMORY[0x277CBEB18] array];
  pendingRequests = v34->_pendingRequests;
  v34->_pendingRequests = array;

  array2 = [MEMORY[0x277CBEB18] array];
  pendingResponses = v34->_pendingResponses;
  v34->_pendingResponses = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  operationsReceivedDuringConnectionStateChange = v34->_operationsReceivedDuringConnectionStateChange;
  v34->_operationsReceivedDuringConnectionStateChange = array3;

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  characteristicWriteCompletionHandlers = v34->_characteristicWriteCompletionHandlers;
  v34->_characteristicWriteCompletionHandlers = weakToStrongObjectsMapTable;

  weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  characteristicEnableEventCompletionHandlers = v34->_characteristicEnableEventCompletionHandlers;
  v34->_characteristicEnableEventCompletionHandlers = weakToStrongObjectsMapTable2;

  v45 = [MEMORY[0x277CBEB58] set];
  discoveredAccessoryCharacteristicsPendingRead = v34->_discoveredAccessoryCharacteristicsPendingRead;
  v34->_discoveredAccessoryCharacteristicsPendingRead = v45;

  v34->_authenticated = 0;
  v94 = browserCopy;
  v96 = flagsCopy;
  v47 = v32;
  v48 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v49 = configNumberCopy;
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HAPDispatchQueueName(v34, @"requestOperationQueue"];
  [v48 setName:v50];

  [v48 setMaxConcurrentOperationCount:1];
  [v48 setQualityOfService:25];
  v85 = v48;
  objc_storeStrong(&v34->_requestOperationQueue, v48);
  v51 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v89 = v31;
  v52 = v47;
  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HAPDispatchQueueName(v34, @"securitySessionOperationQueue"];
  [v51 setName:v53];

  [v51 setMaxConcurrentOperationCount:1];
  [v51 setQualityOfService:25];
  objc_storeStrong(&v34->_pairVerifyOperationQueue, v51);
  v54 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
  connectionIdleTimer = v34->_connectionIdleTimer;
  v34->_connectionIdleTimer = v54;

  [(HMFTimer *)v34->_connectionIdleTimer setDelegate:v34];
  v56 = v34->_connectionIdleTimer;
  clientQueue = [(HAPAccessoryServer *)v34 clientQueue];
  [(HMFTimer *)v56 setDelegateQueue:clientQueue];

  cbPeripheral = [v97 cbPeripheral];
  [cbPeripheral setDelegate:v34];

  v59 = [HAPBLEPeripheralInfo alloc];
  uniqueBTIdentifier = [v97 uniqueBTIdentifier];
  Current = CFAbsoluteTimeGetCurrent();
  name = [v97 name];
  v90 = categoryCopy;
  v91 = v49;
  v87 = v52;
  v63 = v52;
  v31 = v89;
  v64 = [(HAPBLEPeripheralInfo *)v59 initWithPeripheralInfo:uniqueBTIdentifier advertisedProtocolVersion:2 previousProtocolVersion:2 resumeSessionId:0 lastSeen:v96 statusFlags:v63 stateNumber:Current configNumber:v49 categoryIdentifier:categoryCopy accessoryName:name];

  v65 = [v94 cachedAccessoryForIdentifier:v89];
  metadataVersion = [(HAPBLEAccessoryCache *)v65 metadataVersion];
  if (!metadataVersion)
  {
    goto LABEL_8;
  }

  v67 = metadataVersion;
  cachedServices = [(HAPBLEAccessoryCache *)v65 cachedServices];
  v69 = [cachedServices count];
  if (!v91 || !v69)
  {

    goto LABEL_8;
  }

  peripheralInfo = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  configNumber = [peripheralInfo configNumber];
  v72 = [configNumber isEqual:v91];

  v31 = v89;
  if ((v72 & 1) == 0)
  {
LABEL_8:
    v78 = 0;
    peripheralInfo2 = v65;
    v65 = [[HAPBLEAccessoryCache alloc] initWithPairingIdentifier:v31];
    goto LABEL_9;
  }

  peripheralInfo2 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  broadcastKey = [peripheralInfo2 broadcastKey];
  peripheralInfo3 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  keyUpdatedStateNumber = [peripheralInfo3 keyUpdatedStateNumber];
  peripheralInfo4 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  [peripheralInfo4 keyUpdatedTime];
  [(HAPBLEPeripheralInfo *)v64 saveBroadcastKey:broadcastKey keyUpdatedStateNumber:keyUpdatedStateNumber updatedTime:?];

  v31 = v89;
  v78 = 1;
LABEL_9:

  [(HAPBLEAccessoryCache *)v65 updateWithPeripheralInfo:v64];
  v34->_hasValidCache = v78;
  objc_storeStrong(&v34->_accessoryCache, v65);
  peripheralInfo5 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  accessoryName = [peripheralInfo5 accessoryName];
  v81 = accessoryName;
  v33 = nameCopy;
  if (accessoryName)
  {
    v82 = accessoryName;
  }

  else
  {
    v82 = nameCopy;
  }

  objc_storeStrong(&v34->super.super._name, v82);

  v83 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:2 minorVersion:0 updateVersion:0];
  [(HAPAccessoryServer *)v34 setVersion:v83];

  objc_initWeak(&location, v34);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __209___HAPAccessoryServerBTLE200_initWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_setupHash_connectionIdleTime_browser_keyStore_whbStableIdentifier___block_invoke;
  v99[3] = &unk_2786D6FC8;
  objc_copyWeak(&v100, &location);
  [(HAPBLEAccessoryCache *)v65 updateWithSaveBlock:v99];
  categoryCopy = v90;
  [(_HAPAccessoryServerBTLE200 *)v34 _createPrimaryAccessoryFromAdvertisementData];
  configNumberCopy = v91;
  storeCopy = v88;
  objc_destroyWeak(&v100);
  objc_destroyWeak(&location);

  browserCopy = v94;
  flagsCopy = v96;
  hashCopy = v86;
  v32 = v87;
LABEL_13:

  return v34;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t333 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t333, &__block_literal_global_1021);
  }

  v3 = logCategory__hmf_once_v334;

  return v3;
}

+ (BOOL)parseCharacteristicConfigurationResponse:(id)response error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v27 = 0;
  v28 = 0;
  v26 = 0;
  request = [responseCopy request];
  type = [request type];

  if (type != 7)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v11 = 1;
  if (TLV8GetOrCopyCoalesced() || ([MEMORY[0x277CBEA90] dataWithBytes:v28 length:v27], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  v25 = 0;
  if (TLV8GetOrCopyCoalesced())
  {
    v12 = v14;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:v27];

    if (v12)
    {
      v24 = 0;
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v18;
        v31 = 1024;
        v32 = v25;
        v33 = 1024;
        v34 = v24;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Parsed configuration response properties: %0xX, Interval: %d", buf, 0x18u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = MEMORY[0x277CCA9B8];
  v20 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960591];
  v13 = [v19 hapErrorWithCode:12 description:@"Configuration response failed." reason:@"Failed to parse configuration response body." suggestion:0 underlyingError:v20];

  if (!v13)
  {
LABEL_16:
    v11 = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v21 = v13;
    v11 = 0;
    *error = v13;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)configurationRequestForCharacteristic:(id)characteristic isBroadcasted:(BOOL)broadcasted interval:(unint64_t)interval error:(id *)error
{
  broadcastedCopy = broadcasted;
  v18 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  TLV8BufferInit();
  v9 = TLV8BufferAppend();
  if (v9 || broadcastedCopy && (v9 = TLV8BufferAppend(), v9))
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4294960568;
    }
  }

  TLV8BufferFree();
  if (error && v10)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v10];
    *error = [v13 hapErrorWithCode:1 description:@"Characteristic configuration failed." reason:@"Failed to create characteristic configuration request body." suggestion:0 underlyingError:v14];
  }

  v15 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:7 bodyData:v11 shouldEncrypt:1 timeoutInterval:10.0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)parseProtocolConfigurationResponse:(id)response key:(id *)key stateNumber:(id *)number error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  __s = 0;
  request = [responseCopy request];
  type = [request type];

  if (type == 8)
  {
    v14 = 0;
    if (!TLV8GetOrCopyCoalesced())
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:v45];
    }

    if (TLV8GetOrCopyCoalesced())
    {
      v15 = v14;
    }

    else
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:v45];

      if (v44)
      {
        free(v44);
        v44 = 0;
      }

      if (v45 == 1)
      {
        [v15 getBytes:&v42 range:{0, 1}];
      }
    }

    if (TLV8GetOrCopyCoalesced())
    {
      v16 = v15;
    }

    else
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:v45];

      if (v44)
      {
        free(v44);
        v44 = 0;
      }

      memset_s(&__s, 6uLL, 0, 6uLL);
      if (v45 == 6)
      {
        [v16 getBytes:&__s range:{0, 6}];
      }
    }

    if (TLV8GetOrCopyCoalesced())
    {
      goto LABEL_17;
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:v45];

    if (v44)
    {
      free(v44);
      v44 = 0;
    }

    if (v19)
    {
      memset_s(v63, 0x20uLL, 0, 0x20uLL);
      v20 = v45;
      if (v45 == 32)
      {
        [v19 getBytes:v63 range:{0, 32}];
        [MEMORY[0x277CBEA90] dataWithBytes:v63 length:32];
        *key = v21 = 0;
      }

      else
      {
        v21 = 4294960591;
      }

      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138545410;
        v48 = v25;
        v49 = 1024;
        *v50 = v43;
        *&v50[4] = 1024;
        *&v50[6] = v42;
        v51 = 1024;
        v52 = __s;
        v53 = 1024;
        v54 = BYTE1(__s);
        v55 = 1024;
        v56 = BYTE2(__s);
        v57 = 1024;
        v58 = HIBYTE(__s);
        v59 = 1024;
        v60 = v41;
        v61 = 1024;
        v62 = HIBYTE(v41);
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Parsed protocol configuration response GSN: %d, C#: %d, advId: %02X:%02X:%02X:%02X:%02X:%02X", buf, 0x3Cu);
      }

      objc_autoreleasePoolPop(v22);
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:v63 length:32];
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        *v50 = v30;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Broadcast Key: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      if (v20 == 32)
      {
        v17 = 0;
      }

      else
      {
        v31 = MEMORY[0x277CCA9B8];
        v32 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v21];
        v17 = [v31 hapErrorWithCode:12 description:@"Configuration response failed." reason:@"Failed to parse configuration response body." suggestion:0 underlyingError:v32];

        if (v17)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = v27;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v36;
            v49 = 2112;
            *v50 = v17;
            _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Failed parsing protocol configuration response with error: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          if (error)
          {
            v37 = v17;
            v18 = 0;
            *error = v17;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_36;
        }
      }

      v18 = 1;
LABEL_36:
      v16 = v19;
      goto LABEL_37;
    }
  }

  v16 = 0;
LABEL_17:
  v17 = 0;
  v18 = 1;
LABEL_37:

  v38 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)configurationRequestForService:(id)service configRequestType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  v51 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  TLV8BufferInit();
  if (typeCopy != 2 && (v8 = TLV8BufferAppend(), v8) || (v8 = TLV8BufferAppend(), v8))
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:?];
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294960568;
    }
  }

  TLV8BufferFree();
  if (error && v9)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v9];
    *error = [v11 hapErrorWithCode:12 description:@"Protocol configuration failed" reason:@"Failed to create protocol configuration body" suggestion:0 underlyingError:v12];
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  characteristics = [serviceCopy characteristics];
  v14 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v14)
  {
LABEL_21:

    goto LABEL_24;
  }

  v15 = v14;
  v16 = *v26;
LABEL_12:
  v17 = 0;
  while (1)
  {
    if (*v26 != v16)
    {
      objc_enumerationMutation(characteristics);
    }

    v18 = *(*(&v25 + 1) + 8 * v17);
    cbCharacteristic = [v18 cbCharacteristic];
    if (!_isServiceSignatureCharacteristic(cbCharacteristic))
    {

      goto LABEL_19;
    }

    serviceProperties = [serviceCopy serviceProperties];

    if ((serviceProperties & 4) != 0)
    {
      break;
    }

LABEL_19:
    if (v15 == ++v17)
    {
      v15 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  v21 = v18;

  if (v21)
  {
    v22 = [[HAPBTLERequest alloc] initWithCharacteristic:v21 requestType:8 bodyData:v10 shouldEncrypt:1 timeoutInterval:10.0];

    goto LABEL_27;
  }

LABEL_24:
  if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Protocol configuration request create failed" reason:@"Service is missing service signature characteristic or support for configuration" suggestion:0 underlyingError:0 marker:229];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_27:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (BOOL)parseWriteResponse:(id)response value:(id *)value error:(id *)error
{
  responseCopy = response;
  request = [responseCopy request];
  type = [request type];

  if (type == 5 || type == 2)
  {
    body = [responseCopy body];
    v30 = 0;
    v13 = [self extractSerializedRequestValueFromBodyData:body error:&v30];
    v14 = v30;

    if (v13)
    {
      request2 = [responseCopy request];
      characteristic = [request2 characteristic];
      metadata = [characteristic metadata];
      format = [metadata format];
      v19 = HAPCharacteristicFormatFromString(format);

      v20 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v29 = v14;
      v21 = [v20 reverseTransformedValue:v13 format:v19 error:&v29];
      v22 = v29;

      v14 = v22;
      goto LABEL_9;
    }

    if (v14)
    {
      v13 = 0;
      v21 = 0;
      if (error)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    v23 = 4294960559;
  }

  else
  {
    v23 = 4294960591;
  }

  v24 = MEMORY[0x277CCA9B8];
  v20 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v23];
  v14 = [v24 hapErrorWithCode:12 description:@"Write failed." reason:@"Failed to parse write request body." suggestion:0 underlyingError:v20];
  v21 = 0;
  v13 = 0;
LABEL_9:

  if (v14)
  {
    if (error)
    {
LABEL_11:
      v25 = v14;
      v26 = 0;
      *error = v14;
      goto LABEL_19;
    }

LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  if (value)
  {
    v27 = v21;
    v14 = 0;
    *value = v21;
  }

  else
  {
    v14 = 0;
  }

  v26 = 1;
LABEL_19:

  return v26;
}

+ (id)executeWriteRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  v21 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if (([characteristicCopy properties] & 4) != 0)
  {
    v14 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:5 bodyData:0 shouldEncrypt:optionsCopy & 1 timeoutInterval:10.0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [characteristicCopy shortDescription];
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = shortDescription;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  contextDataCopy = contextData;
  if (([characteristicCopy properties] & 4) != 0)
  {
    metadata = [characteristicCopy metadata];
    format = [metadata format];
    v26 = HAPCharacteristicFormatFromString(format);

    v27 = _createCharacteristicWriteBody(valueCopy, v26, dataCopy, (options >> 1) & 1, contextDataCopy, error, 2.5);
    if (v27)
    {
      v23 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:4 bodyData:v27 shouldEncrypt:options & 1 timeoutInterval:2.5];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [characteristicCopy shortDescription];
      v30 = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = shortDescription;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  contextDataCopy = contextData;
  if (([characteristicCopy properties] & 4) != 0)
  {
    metadata = [characteristicCopy metadata];
    format = [metadata format];
    v26 = HAPCharacteristicFormatFromString(format);

    v27 = _createCharacteristicWriteBody(valueCopy, v26, dataCopy, (options >> 1) & 1, contextDataCopy, error, 0.0);
    if (v27)
    {
      if ((options & 8) != 0)
      {
        v28 = 60.0;
      }

      else
      {
        v28 = 10.0;
      }

      v23 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:2 bodyData:v27 shouldEncrypt:options & 1 timeoutInterval:v28];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [characteristicCopy shortDescription];
      v31 = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = shortDescription;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)extractNotificationContextFromBodyData:(id)data error:(id *)error
{
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    v7 = 0;
    if (error && v6 != -6727)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v6];
      *error = [v8 hapErrorWithCode:12 description:@"Parse failed." reason:@"Failed to parse notification context." suggestion:0 underlyingError:v9];

      v7 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  return v7;
}

+ (id)extractSerializedRequestValueFromBodyData:(id)data error:(id *)error
{
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v6];
      *error = [v7 hapErrorWithCode:12 description:@"Parse failed." reason:@"Failed to parse request body." suggestion:0 underlyingError:v8];

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  return error;
}

+ (BOOL)parseReadResponse:(id)response value:(id *)value notificationContext:(id *)context error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  request = [responseCopy request];
  type = [request type];

  contextCopy = context;
  if (type != 3)
  {
    v36 = 4294960591;
    goto LABEL_20;
  }

  statusCode = [responseCopy statusCode];
  if (statusCode)
  {
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:HAPErrorCodeFromHAPBLEStatusErrorCode(statusCode)];
    if (v13)
    {
      v16 = v13;
LABEL_17:
      v23 = 0;
      v28 = 0;
      v15 = 0;
      goto LABEL_11;
    }
  }

  body = [responseCopy body];
  v47 = 0;
  v15 = [self extractSerializedRequestValueFromBodyData:body error:&v47];
  v16 = v47;

  if (!v15)
  {
    if (v16)
    {
      goto LABEL_17;
    }

    v36 = 4294960559;
LABEL_20:
    v37 = MEMORY[0x277CCA9B8];
    v38 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v36];
    v16 = [v37 hapErrorWithCode:1 description:@"Read failed." reason:@"Failed to parse read request body." suggestion:0 underlyingError:v38];

    v15 = 0;
    v28 = 0;
    v23 = 0;
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (error)
    {
      v34 = v16;
      v35 = 0;
      *error = v16;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_27;
  }

  request2 = [responseCopy request];
  characteristic = [request2 characteristic];
  metadata = [characteristic metadata];
  format = [metadata format];
  v21 = HAPCharacteristicFormatFromString(format);

  v22 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v46 = v16;
  v23 = [v22 reverseTransformedValue:v15 format:v21 error:&v46];
  v24 = v46;

  if (v24)
  {
    v28 = 0;
    v16 = v24;
    goto LABEL_11;
  }

  request3 = [responseCopy request];
  characteristic2 = [request3 characteristic];
  properties = [characteristic2 properties];

  if ((properties & 0x100) != 0)
  {
    body2 = [responseCopy body];
    v45 = 0;
    v28 = [self extractNotificationContextFromBodyData:body2 error:&v45];
    v16 = v45;

    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v33;
      v50 = 2114;
      v51 = v28;
      v52 = 2114;
      v53 = v16;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Parsed read response notification context: %{public}@ with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v28 = 0;
LABEL_21:
  if (value)
  {
    v39 = v23;
    *value = v23;
  }

  if (v28)
  {
    v40 = v28;
    v16 = 0;
    *contextCopy = v28;
  }

  else
  {
    v16 = 0;
  }

  v35 = 1;
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (id)readRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  v19 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if (([characteristicCopy properties] & 2) != 0)
  {
    v12 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:3 bodyData:0 shouldEncrypt:optionsCopy & 1 timeoutInterval:10.0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [characteristicCopy shortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = shortDescription;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Read failed, characteristic does not support secured reads: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isHAPDescriptor:(id)descriptor
{
  uUID = [descriptor UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  v5 = [uUID isEqual:v4];

  return v5;
}

+ (BOOL)isHAPService:(id)service
{
  v41 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  uUID = [serviceCopy UUID];
  v5 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFB8]];
  if ([uUID isEqual:v5])
  {
    goto LABEL_10;
  }

  uUID2 = [serviceCopy UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFC0]];
  if ([uUID2 isEqual:v7])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  uUID3 = [serviceCopy UUID];
  v9 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFA0]];
  if ([uUID3 isEqual:v9])
  {
LABEL_8:

    goto LABEL_9;
  }

  uUID4 = [serviceCopy UUID];
  v11 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF70]];
  if ([uUID4 isEqual:v11])
  {

    goto LABEL_8;
  }

  v34 = v11;
  v35 = uUID4;
  uUID5 = [serviceCopy UUID];
  v13 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF68]];
  if ([uUID5 isEqual:v13])
  {

    goto LABEL_8;
  }

  v33 = v13;
  uUID6 = [serviceCopy UUID];
  v31 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF58]];
  v32 = uUID6;
  if ([uUID6 isEqual:?])
  {
    v18 = 1;
    v19 = v33;
  }

  else
  {
    uUID7 = [serviceCopy UUID];
    v29 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFB0]];
    v30 = uUID7;
    if ([uUID7 isEqual:?])
    {
      v18 = 1;
    }

    else
    {
      uUID8 = [serviceCopy UUID];
      v21 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF78]];
      v18 = [uUID8 isEqual:?];
    }

    v19 = v33;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  characteristics = [serviceCopy characteristics];
  v23 = [characteristics count];

  if (!v23)
  {
LABEL_32:
    v14 = 1;
    goto LABEL_13;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  uUID = [serviceCopy characteristics];
  v24 = [uUID countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(uUID);
        }

        if (_isServiceInstanceIDCharacteristic(*(*(&v36 + 1) + 8 * i)))
        {

          goto LABEL_32;
        }
      }

      v25 = [uUID countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

LABEL_12:
  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)parseServiceSignatureResponse:(id)response serviceInstanceID:(id)d serviceType:(id)type error:(id *)error
{
  responseCopy = response;
  dCopy = d;
  typeCopy = type;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v29 = 0;
  v30 = 0;
  v28[1] = 0;
  array = [MEMORY[0x277CBEB18] array];
  request = [responseCopy request];
  type = [request type];

  if (type == 6)
  {
    v17 = 0;
    if (!TLV8GetOrCopyCoalesced())
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:v29];
      if (!v17)
      {
        v18 = 0;
LABEL_29:
        v20 = 0;
        v21 = 4294960559;
        goto LABEL_13;
      }

      v18 = v17;
      if ([v18 length] <= 1)
      {
        v22 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"The service properties value is missing." reason:0 suggestion:0 underlyingError:0];
        v23 = v22;

        v20 = v22;
        v17 = 0;
        v21 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v31 = 0;
      [v18 getBytes:&v31 length:2];
      v17 = v31 & 7;
    }

    v19 = TLV8GetOrCopyCoalesced();
    v20 = 0;
    if (v19 == -6727)
    {
LABEL_22:
      v26 = -[HAPBTLEServiceSignature initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:]([HAPBTLEServiceSignature alloc], "initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:", typeCopy, dCopy, v17, array, [responseCopy isEncrypted]);
      goto LABEL_24;
    }

    v21 = v19;
    if (v19)
    {
LABEL_14:
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v18 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:v29];
    if (v18)
    {
      if (![v18 length])
      {
        v20 = 0;
        goto LABEL_18;
      }

      v28[0] = 0;
      v21 = _parseLinkedServices(v18, array, v28);
      v20 = v28[0];
      if (v21)
      {
        [array removeObject:dCopy];
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    goto LABEL_29;
  }

  v17 = 0;
  v20 = 0;
  v21 = 4294960591;
LABEL_15:
  if (!v21)
  {
    goto LABEL_19;
  }

  v24 = MEMORY[0x277CCA9B8];
  v18 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v21];
  v20 = [v24 hapErrorWithCode:12 description:@"Service Signature response failed." reason:@"Failed to parse service signature response body." suggestion:0 underlyingError:v18];
LABEL_18:

LABEL_19:
  if (!v20)
  {
    goto LABEL_22;
  }

  if (error)
  {
    v25 = v20;
    v26 = 0;
    *error = v20;
  }

  else
  {
    v26 = 0;
  }

LABEL_24:

  return v26;
}

+ (id)parseSignatureResponse:(id)response error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  request = [responseCopy request];
  type = [request type];

  if (type == 1)
  {
    TLV8GetOrCopyCoalesced();
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCA9B8] errorWithOSStatus:?];
  v12 = [v10 hapErrorWithCode:12 description:@"Signature request failed." reason:@"Failed to parse signature response body." suggestion:0 underlyingError:v11];

  if (v12)
  {
    if (error)
    {
      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = -[HAPBTLECharacteristicSignature initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:]([HAPBTLECharacteristicSignature alloc], "initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:", 0, 0, 0, 0, 0, [responseCopy isEncrypted]);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end
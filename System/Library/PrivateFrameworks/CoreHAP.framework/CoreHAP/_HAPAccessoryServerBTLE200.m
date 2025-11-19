@interface _HAPAccessoryServerBTLE200
+ (BOOL)isHAPDescriptor:(id)a3;
+ (BOOL)isHAPService:(id)a3;
+ (BOOL)parseCharacteristicConfigurationResponse:(id)a3 error:(id *)a4;
+ (BOOL)parseProtocolConfigurationResponse:(id)a3 key:(id *)a4 stateNumber:(id *)a5 error:(id *)a6;
+ (BOOL)parseReadResponse:(id)a3 value:(id *)a4 notificationContext:(id *)a5 error:(id *)a6;
+ (BOOL)parseWriteResponse:(id)a3 value:(id *)a4 error:(id *)a5;
+ (id)configurationRequestForCharacteristic:(id)a3 isBroadcasted:(BOOL)a4 interval:(unint64_t)a5 error:(id *)a6;
+ (id)configurationRequestForService:(id)a3 configRequestType:(unsigned __int8)a4 error:(id *)a5;
+ (id)executeWriteRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5;
+ (id)extractNotificationContextFromBodyData:(id)a3 error:(id *)a4;
+ (id)extractSerializedRequestValueFromBodyData:(id)a3 error:(id *)a4;
+ (id)logCategory;
+ (id)parseServiceSignatureResponse:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 error:(id *)a6;
+ (id)parseSignatureResponse:(id)a3 error:(id *)a4;
+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
+ (id)readRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5;
+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
- (BOOL)_cancelDiscoveryWithError:(id)a3;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_parsePairingFeaturesCharacteristic:(id)a3 authMethod:(unint64_t *)a4 error:(id *)a5;
- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)a3;
- (BOOL)_validateGeneratedBroadcastKey:(id)a3;
- (BOOL)_validateProtocolInfo:(id)a3;
- (BOOL)hasBeenDiscovered;
- (BOOL)hasValidCache;
- (BOOL)isHAPCharacteristic:(id)a3;
- (BOOL)isReadyForOperation:(int64_t)a3;
- (BOOL)isSecuritySessionOpen;
- (BOOL)pairSetupSession:(id)a3 didPairWithPeer:(id)a4 error:(id *)a5;
- (BOOL)pairSetupSession:(id)a3 didReceiveBackoffRequestWithTimeInterval:(double)a4;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4 serverPairingCompletion:(id)a5;
- (BOOL)shouldVerifyHAPCharacteristic:(id)a3;
- (BOOL)shouldVerifyHAPService:(id)a3;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5;
- (HAPCharacteristic)identifyCharacteristic;
- (HAPCharacteristic)pairSetupCharacteristic;
- (HAPCharacteristic)pairVerifyCharacteristic;
- (HAPCharacteristic)pairingFeaturesCharacteristic;
- (HAPCharacteristic)pairingsCharacteristic;
- (HAPSecuritySession)securitySession;
- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16;
- (id)_characteristicForCBCharacteristic:(id)a3;
- (id)_decryptData:(id)a3 error:(id *)a4;
- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4;
- (id)_getCBCharacteristic:(id)a3 instanceId:(id)a4 service:(id)a5;
- (id)_getCBService:(id)a3 instanceOrder:(unint64_t)a4;
- (id)_getCachedService:(id)a3;
- (id)_getCharacteristicInstanceID:(id)a3 error:(id *)a4;
- (id)_getProtocolInfoService;
- (id)_getServiceInstanceID:(id)a3;
- (id)_hapServicesFromCache;
- (id)_parseCharacteristic:(id)a3 error:(id *)a4;
- (id)_parseService:(id)a3 error:(id *)a4;
- (id)_pendingRequestForCharacteristic:(id)a3;
- (id)_pendingResponseForRequest:(id)a3;
- (id)_serviceCacheFromHAPService:(id)a3 serviceOrder:(unint64_t)a4;
- (id)_serviceForCBService:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)pairSetupSession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4;
- (id)protocolInfoServiceSignatureCharacteristics;
- (id)securitySession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4;
- (id)securitySession:(id)a3 didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)a4 error:(id *)a5;
- (int64_t)connectionState;
- (unint64_t)_getPairSetupType;
- (unint64_t)_maximumControlWriteLengthForRequest:(id)a3;
- (unint64_t)_outstandingRequests;
- (void)_cacheServices:(id)a3;
- (void)_cancelAllQueuedOperationsWithError:(id)a3;
- (void)_cancelConnectionWithError:(id)a3;
- (void)_checkForAuthPrompt:(BOOL)a3;
- (void)_configureBroadcastKeyGeneration:(unsigned __int8)a3 service:(id)a4 withCompletion:(id)a5;
- (void)_configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_disconnectWithDisconnectionError:(id)a3 completionHandler:(id)a4;
- (void)_discoverCharacteristic:(id)a3;
- (void)_discoverCharacteristicsForService:(id)a3;
- (void)_discoverServices;
- (void)_discoverWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)_enqueueRequest:(id)a3 shouldPrioritize:(BOOL)a4;
- (void)_establishSecureSession;
- (void)_getPairingFeaturesWithCompletionHandler:(id)a3;
- (void)_handleCompletedDiscovery;
- (void)_handleConnectionIdleTimeout;
- (void)_handleConnectionWithError:(id)a3;
- (void)_handleDiscoveredCharacteristic:(id)a3 error:(id)a4;
- (void)_handleDiscoveredCharacteristicsForService:(id)a3 error:(id)a4;
- (void)_handleDiscoveredDescriptors:(id)a3;
- (void)_handleDiscoveredServices:(id)a3 error:(id)a4;
- (void)_handleEventIndicationForCharacteristic:(id)a3;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4;
- (void)_handlePairSetupSessionExchangeData:(id)a3;
- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)a3;
- (void)_handleReadCharacteristicSignature:(id)a3 error:(id)a4;
- (void)_handleReadCharacteristicValue:(id)a3 error:(id)a4;
- (void)_handleReadDescriptorValue:(id)a3 error:(id)a4;
- (void)_handleReadServiceInstanceId:(id)a3;
- (void)_handleReadServiceSignature:(id)a3 error:(id)a4;
- (void)_handleResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5;
- (void)_handleSecuritySessionSetupExchangeData:(id)a3;
- (void)_handleUpdateValueForCharacteristic:(id)a3 error:(id)a4;
- (void)_handleWriteCompletionForCharacteristic:(id)a3 error:(id)a4;
- (void)_invokeOperationsReceivedDuringConnectionStateChangeWithError:(id)a3;
- (void)_kickConnectionIdleTimer;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegatesOfConnectionState:(BOOL)a3 withError:(id)a4;
- (void)_notifyDelegatesPairingStopped:(id)a3;
- (void)_pairingCompletedWithError:(id)a3;
- (void)_performTimedWriteExecuteForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)_performTimedWritePrepareWithValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_performTimedWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_performWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_readCharacteristicSignature:(id)a3;
- (void)_readCharacteristicSignatures;
- (void)_readCharacteristicValue:(id)a3;
- (void)_readCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_readDescriptorValue:(id)a3;
- (void)_readPendingDiscoveredCharacteristicTypesWithCompletion:(id)a3;
- (void)_readServiceSignature:(id)a3;
- (void)_readValueForCharacteristic:(id)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)_reallySendRequest:(id)a3 completionHandler:(id)a4;
- (void)_removePairingOfAccessoryServerCancelledMidPairing;
- (void)_requestResponseForRequest:(id)a3;
- (void)_resetWithError:(id)a3;
- (void)_restartConnectionIdleTimer:(double)a3;
- (void)_resumeAllOperations;
- (void)_resumeConnectionIdleTimer;
- (void)_retryDiscovery;
- (void)_sendControlPacket:(id)a3 forRequest:(id)a4 completionHandler:(id)a5;
- (void)_sendData:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5;
- (void)_sendPairingRequestData:(id)a3 completionHandler:(id)a4;
- (void)_sendProtocolInfoServiceExchangeData:(id)a3 completion:(id)a4;
- (void)_suspendAllOperations;
- (void)_suspendConnectionIdleTimer;
- (void)_updateConnectionIdleTime:(unsigned __int8)a3;
- (void)_updateLastKeyBagIdentityIndexFailingPVWithError:(id)a3;
- (void)_updatePropertiesFromCharacteristic:(id)a3;
- (void)_writeValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)authSession:(id)a3 authComplete:(id)a4;
- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4;
- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5;
- (void)authenticateAccessory;
- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)connectWithCompletionHandler:(id)a3;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)controlOutputStream:(id)a3 didCloseWithError:(id)a4;
- (void)controlOutputStream:(id)a3 didReceiveRequestToSendControlPacket:(id)a4 completionHandler:(id)a5;
- (void)controlOutputStreamDidComplete:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)a3;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)evaluateConnectionStateForOperation:(int64_t)a3 block:(id)a4;
- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)getAccessoryInfo:(id)a3;
- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4;
- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)a3;
- (void)pairSetupSession:(id)a3 didReceiveProductData:(id)a4;
- (void)pairSetupSession:(id)a3 didReceiveSetupCodeRequestWithCompletionHandler:(id)a4;
- (void)pairSetupSession:(id)a3 didReceiveSetupExchangeData:(id)a4;
- (void)pairSetupSession:(id)a3 didStopWithError:(id)a4;
- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)securitySession:(id)a3 didCloseWithError:(id)a4;
- (void)securitySession:(id)a3 didReceiveSetupExchangeData:(id)a4;
- (void)securitySessionDidOpen:(id)a3;
- (void)securitySessionIsOpening:(id)a3;
- (void)setConnectionState:(int64_t)a3;
- (void)setHasBeenDiscovered:(BOOL)a3;
- (void)setHasValidCache:(BOOL)a3;
- (void)setSecuritySession:(id)a3;
- (void)setSecuritySessionOpen:(BOOL)a3;
- (void)startPairingWithRequest:(id)a3;
- (void)submitPairVerifyMetricWithError:(id)a3;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)a3;
- (void)updateConnectionIdleTime:(unsigned __int8)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation _HAPAccessoryServerBTLE200

- (void)disconnect
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Disconnecting as a result of direct disconnect call", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___HAPAccessoryServerBTLE200_disconnect__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];

  if (v6 == v4)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __43___HAPAccessoryServerBTLE200_timerDidFire___block_invoke;
    v27 = &unk_2786D6CA0;
    v28 = self;
    [(HAPAccessoryServer *)self pairingActivity];

    [(_HAPAccessoryServerBTLE200 *)self _handleConnectionIdleTimeout];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 responseTimer];

          if (v13 == v4)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = self;
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

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
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

- (void)securitySession:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_updateLastKeyBagIdentityIndexFailingPVWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

  v9 = [v16 domain];
  v10 = *MEMORY[0x277CCA590];
  v11 = HMFEqualObjects();

  if (v11 && [v16 code] == -6754)
  {
    v12 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    v13 = MEMORY[0x277CCABB0];
    v14 = [(HAPAccessoryServer *)self keyBag];
    v15 = [v13 numberWithInteger:{objc_msgSend(v14, "getCurrentIndexInBag")}];
    [v12 setLastKeyBagIdentityIndexFailingPV:v15];
  }
}

- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)a3
{
  v3 = a3;
  v4 = [v3 underlyingErrors];
  v5 = [v4 firstObject];

  v6 = (([v3 isHAPError] & 1) != 0 || objc_msgSend(v5, "isHAPError")) && (objc_msgSend(v3, "code") == 27 || objc_msgSend(v5, "code") == 27);
  return v6;
}

- (void)securitySessionDidOpen:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE200_securitySessionDidOpen___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)securitySessionIsOpening:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___HAPAccessoryServerBTLE200_securitySessionIsOpening___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)securitySession:(id)a3 didReceiveSetupExchangeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___HAPAccessoryServerBTLE200_securitySession_didReceiveSetupExchangeData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)securitySession:(id)a3 didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HAPAccessoryServer *)self identifier];
  v11 = [v10 isEqualToString:v9];

  if (v11)
  {
    v12 = [(HAPAccessoryServer *)self keyStore];
    v32 = 0;
    v13 = [v12 readPublicKeyForAccessoryName:v9 registeredWithHomeKit:0 error:&v32];
    v14 = v32;

    if (v13)
    {
      v15 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v13];
      v16 = [[HAPPairingIdentity alloc] initWithIdentifier:v9 publicKey:v15 privateKey:0 permissions:0];
      if (!v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v31 = v17;
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = v13;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Failed to create pairing identity with identifier, %@, public key, %@", buf, 0x20u);

          v17 = v31;
        }

        objc_autoreleasePoolPop(v17);
        if (a5)
        {
          *a5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to retrieve peer pairing identity." reason:@"Failed to create pairing identity" suggestion:0 underlyingError:0];
        }
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v28;
        v35 = 2112;
        v36 = v9;
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
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Unexpected pairing peer identifier, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:16 description:@"Insufficient Authorization." reason:@"Unexpected pairing peer identifier." suggestion:0 underlyingError:0];
      *a5 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)securitySession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Request for local pairing identity", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPAccessoryServer *)v8 getControllerPairingIdentityWithError:a4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)submitPairVerifyMetricWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
  if (v5)
  {
    v6 = v5;
    v7 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    v8 = [v7 sessionStartTime];

    if (v8)
    {
      mach_absolute_time();
      v9 = UpTicksToMilliseconds();
      v10 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      -[HAPAccessoryServer setMetric_pairVerifyDurationInMS:](self, "setMetric_pairVerifyDurationInMS:", v9 - [v10 sessionStartTime]);

      v11.receiver = self;
      v11.super_class = _HAPAccessoryServerBTLE200;
      [(HAPAccessoryServer *)&v11 submitPairVerifyMetricWithError:v4];
    }
  }
}

- (void)authSession:(id)a3 authComplete:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke;
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

- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke;
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

- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke;
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

- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_notifyDelegatesOfConnectionState:(BOOL)a3 withError:(id)a4
{
  v6 = a4;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateConnectionState_linkLayerType_withError_])
  {
    v7 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___HAPAccessoryServerBTLE200__notifyDelegatesOfConnectionState_withError___block_invoke;
    block[3] = &unk_2786D5268;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

- (void)_notifyDelegatesPairingStopped:(id)a3
{
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61___HAPAccessoryServerBTLE200__notifyDelegatesPairingStopped___block_invoke;
    v6[3] = &unk_2786D7050;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
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
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___HAPAccessoryServerBTLE200_tearDownSessionOnAuthCompletion__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)provisionToken:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45___HAPAccessoryServerBTLE200_provisionToken___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HAPAccessoryServer *)v6 authMethod];
    if (v9 > 6)
    {
      v10 = @"HAPAuthMethodUnknown";
    }

    else
    {
      v10 = off_2786D2590[v9];
    }

    v11 = v10;
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Current Auth Method %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [(HAPAccessoryServer *)v6 clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke;
  v14[3] = &unk_2786D6768;
  v14[4] = v6;
  v15 = a3;
  dispatch_async(v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAccessory
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE200_authenticateAccessory__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)_validateProtocolInfo:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceIdentifier];
  v6 = [(HAPAccessoryServer *)self identifier];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_7;
  }

  v7 = [v4 categoryIdentifier];
  v8 = [(HAPAccessoryServer *)self category];
  if (v7 != [v8 unsignedShortValue] || (v9 = objc_msgSend(v4, "featureFlags"), v9 != -[_HAPAccessoryServerBTLE200 featureFlags](self, "featureFlags")))
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v4 protocolVersion];
  v11 = [v10 majorVersion];
  v12 = [(HAPAccessoryServer *)self version];
  v13 = [v12 majorVersion];

  if (v11 == v13)
  {
    v14 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HAPAccessoryServer *)v16 identifier];
    v20 = [(HAPAccessoryServer *)v16 category];
    v21 = [(HAPAccessoryServer *)v16 authMethod];
    v22 = [(HAPAccessoryServer *)v16 version];
    v25 = 138544642;
    v26 = v18;
    v27 = 2112;
    v28 = v4;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    v33 = 2048;
    v34 = v21;
    v35 = 2112;
    v36 = v22;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match: identifier: %@, category: %@, authMethods: %tu version: %@", &v25, 0x3Eu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)getAccessoryInfo:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke;
  block[3] = &unk_2786D61A0;
  v8 = v4;
  v9 = v10;
  block[4] = self;
  v6 = v4;
  dispatch_async(v5, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)pairSetupSession:(id)a3 didReceiveBackoffRequestWithTimeInterval:(double)a4
{
  v6 = a3;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke;
  block[3] = &unk_2786D4978;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v8 = v6;
  dispatch_async(v7, block);

  return 0;
}

- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___HAPAccessoryServerBTLE200_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)pairSetupSession:(id)a3 didReceiveSetupCodeRequestWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)pairSetupSession:(id)a3 didReceiveProductData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveProductData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)pairSetupSession:(id)a3 didStopWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE200_pairSetupSession_didStopWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)pairSetupSession:(id)a3 didPairWithPeer:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v13;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Request to save pairing peer: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [v9 identifier];
  v15 = [(HAPAccessoryServer *)v11 identifier];
  v16 = [v14 isEqualToString:v15];

  if (v16)
  {
    v17 = [v9 publicKey];
    v18 = [v17 data];

    v19 = [(HAPAccessoryServer *)v11 keyStore];
    v20 = [v9 identifier];
    v45 = 0;
    v21 = [v19 savePublicKey:v18 forAccessoryName:v20 error:&v45];
    v22 = v45;

    if (v21)
    {
      [(HAPAccessoryServer *)v11 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v18];
      v44 = 0;
      v23 = [(HAPAccessoryServerBTLE *)v11 updatePeripheralIdentifier:&v44 isPairing:1];
      v24 = v44;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v11;
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
        if (a5)
        {
          v29 = v24;
          *a5 = v24;
        }
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v11;
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
      if (a5)
      {
        v40 = v22;
        v23 = 0;
        *a5 = v22;
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
    v31 = v11;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v9 identifier];
      v35 = [(HAPAccessoryServer *)v31 identifier];
      *buf = 138543874;
      v47 = v33;
      v48 = 2112;
      v49 = v34;
      v50 = 2112;
      v51 = v35;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@The peer's identifier exchanged during Pair Setup, %@, does not match the identifier from the accessory's advertisement, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7 description:@"Pairing failed." reason:@"The peer's identifier does not match it's advertised identifier" suggestion:0 underlyingError:0];
      *a5 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)pairSetupSession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Request for local pairing identity", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPAccessoryServer *)v8 pairingRequest];
  v12 = [v11 pairingIdentity];
  if (v12)
  {
    v13 = v12;
LABEL_5:

    goto LABEL_7;
  }

  v14 = [(HAPAccessoryServer *)v8 keyBag];
  v13 = [v14 currentIdentity];

  if (!v13)
  {
    v11 = [(HAPAccessoryServer *)v8 keyStore];
    v17 = [(HAPAccessoryServer *)v8 identifier];
    v13 = [v11 readControllerPairingKeyForAccessory:v17 error:a4];

    goto LABEL_5;
  }

LABEL_7:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)pairSetupSession:(id)a3 didReceiveSetupExchangeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupExchangeData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)controlOutputStreamDidComplete:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___HAPAccessoryServerBTLE200_controlOutputStreamDidComplete___block_invoke;
  block[3] = &unk_2786D6CA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)controlOutputStream:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68___HAPAccessoryServerBTLE200_controlOutputStream_didCloseWithError___block_invoke;
  v11[3] = &unk_2786D7050;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)controlOutputStream:(id)a3 didReceiveRequestToSendControlPacket:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105___HAPAccessoryServerBTLE200_controlOutputStream_didReceiveRequestToSendControlPacket_completionHandler___block_invoke;
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

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91___HAPAccessoryServerBTLE200_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE200_peripheral_didWriteValueForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForDescriptor_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87___HAPAccessoryServerBTLE200_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84___HAPAccessoryServerBTLE200_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v15[3] = &unk_2786D6A08;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 services];
  v9 = [v8 copy];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
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
  v14 = [(HAPAccessoryServer *)v11 clientQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61___HAPAccessoryServerBTLE200_peripheral_didDiscoverServices___block_invoke;
  v19[3] = &unk_2786D6A08;
  v20 = v6;
  v21 = v11;
  v22 = v9;
  v23 = v7;
  v15 = v7;
  v16 = v9;
  v17 = v6;
  dispatch_async(v14, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendPlaintextPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83___HAPAccessoryServerBTLE200__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendEncryptedAndAuthenticatedPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96___HAPAccessoryServerBTLE200__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedPlaintextData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_didReceivePlaintextPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(HAPAccessoryServer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = v6;
      v14 = v7;
      dispatch_async(v11, block);
    }
  }

  else
  {
  }
}

- (BOOL)_validateGeneratedBroadcastKey:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self keyStore];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v6 = [(HAPAccessoryServer *)self identifier];
    v29 = 0;
    v7 = [v5 getControllerPublicKey:&v32 secretKey:&v31 username:&v30 allowCreation:0 forAccessory:v6 error:&v29];
    v8 = v32;
    v9 = v31;
    v10 = v30;
    v11 = v29;

    if (v7)
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      v13 = [v12 broadcastKey];
      v14 = [v13 isEqualToData:v4];

      if (v14)
      {
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = self;
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
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(_HAPAccessoryServerBTLE200 *)v21 securitySession];
      [v24 broadcastKey];
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
      v42 = v4;
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

- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HAPAccessoryServer *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke;
  v13[3] = &unk_2786D5F70;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_handleConnectionIdleTimeout
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:29];
  if ([(_HAPAccessoryServerBTLE200 *)self isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)self setPairingDisconnectionError:v3];
  }

  v4 = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPAccessoryServerBTLE *)v6 peripheral];
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, cancelling connection to the peripheral: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"Connection Failed" reason:@"Connection request timed out" suggestion:0 underlyingError:v3 marker:2109];
    [(_HAPAccessoryServerBTLE200 *)v6 _cancelConnectionWithError:v11];
  }

  else
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v13 = MEMORY[0x277CCABB0];
      v14 = [(_HAPAccessoryServerBTLE200 *)v6 requestOperationQueue];
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "operationCount")}];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, pending requests: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(_HAPAccessoryServerBTLE200 *)v6 _disconnectWithDisconnectionError:v3 completionHandler:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_suspendConnectionIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Suspending the connection idle timer...", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(_HAPAccessoryServerBTLE200 *)v4 connectionIdleTimer];
  [v7 suspend];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeConnectionIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Resuming the connection idle timer...", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(_HAPAccessoryServerBTLE200 *)v4 connectionIdleTimer];
  [v7 resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_kickConnectionIdleTimer
{
  v2 = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];
  [v2 kick];
}

- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self connectionStartTime];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [(HAPAccessoryServer *)self connectionStartTime];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(HAPAccessoryServer *)self setConnectionStartTime:0];
  v13 = [(HAPAccessoryServer *)self clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke;
  v16[3] = &unk_2786D4400;
  v17 = v6;
  v18 = self;
  v20 = v12;
  v19 = v7;
  v14 = v7;
  v15 = v6;
  dispatch_async(v13, v16);
}

- (BOOL)isReadyForOperation:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___HAPAccessoryServerBTLE200_isReadyForOperation___block_invoke;
  block[3] = &unk_2786D5778;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(v5, block);

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

- (void)_handleConnectionWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Connection completed with error: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    [(_HAPAccessoryServerBTLE200 *)v6 setConnectionState:0];
    [(_HAPAccessoryServerBTLE200 *)v6 _suspendConnectionIdleTimer];
  }

  else
  {
    v9 = [(HAPAccessoryServerBTLE *)v6 browser];
    v10 = [(HAPAccessoryServerBTLE *)v6 peripheral];
    [v9 setConnectionLatency:1 forPeripheral:v10];

    [(_HAPAccessoryServerBTLE200 *)v6 setConnectionState:2];
    [(_HAPAccessoryServerBTLE200 *)v6 _updateConnectionIdleTime:[(HAPAccessoryServerBTLE *)v6 connectionIdleTime]];
    [(_HAPAccessoryServerBTLE200 *)v6 _kickConnectionIdleTimer];
    [(HAPAccessoryServerBTLE *)v6 incrementHAPBTLEMetricsConnectionCount];
  }

  v11 = [(_HAPAccessoryServerBTLE200 *)v6 connectionCompletionHandler];
  v12 = MEMORY[0x231885210]();
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }

  [(_HAPAccessoryServerBTLE200 *)v6 setConnectionCompletionHandler:0];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___HAPAccessoryServerBTLE200_handleConnectionWithPeripheral_withError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_restartConnectionIdleTimer:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating connectionIdle time to: %f", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
  [(_HAPAccessoryServerBTLE200 *)v6 setConnectionIdleTimer:v9];

  v10 = [(_HAPAccessoryServerBTLE200 *)v6 connectionIdleTimer];
  [v10 setDelegate:v6];

  v11 = [(_HAPAccessoryServerBTLE200 *)v6 connectionIdleTimer];
  v12 = [(HAPAccessoryServer *)v6 clientQueue];
  [v11 setDelegateQueue:v12];

  v13 = [(_HAPAccessoryServerBTLE200 *)v6 connectionIdleTimer];
  [v13 resume];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateConnectionIdleTime:(unsigned __int8)a3
{
  v3 = a3;
  [(HAPAccessoryServerBTLE *)self setConnectionIdleTime:?];
  v5 = 5.0;
  if (v3 == 1)
  {
    v5 = 2.0;
  }

  if (v3 == 2)
  {
    v5 = 15.0;
  }

  [(_HAPAccessoryServerBTLE200 *)self _restartConnectionIdleTimer:v5];
}

- (void)updateConnectionIdleTime:(unsigned __int8)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___HAPAccessoryServerBTLE200_updateConnectionIdleTime___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_disconnectWithDisconnectionError:(id)a3 completionHandler:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  if (v9 == 2)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    v11 = [v10 operationCount];

    if (v11 && [v6 isHAPError] && objc_msgSend(v6, "code") == 29)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [(HAPAccessoryServerBTLE *)v13 blePeripheral];
        v17 = [v16 shortDescription];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        *buf = 138543874;
        v44 = v15;
        v45 = 2112;
        v46 = v17;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Deferring disconnecting from the peripheral: %@. Pending requests: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [(_HAPAccessoryServerBTLE200 *)v13 _kickConnectionIdleTimer];
    }

    else
    {
      [(_HAPAccessoryServerBTLE200 *)self setConnectionCompletionHandler:v7];
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [(HAPAccessoryServerBTLE *)v27 blePeripheral];
        v31 = [v30 shortDescription];
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        *buf = 138543874;
        v44 = v29;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = v32;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from the peripheral: %@. Pending requests: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke;
      v40 = &unk_2786D7050;
      v41 = v27;
      v42 = v6;
      __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke(&v37);
      [(_HAPAccessoryServerBTLE200 *)v27 _suspendConnectionIdleTimer:v37];
      v33 = [(HAPAccessoryServerBTLE *)v27 browser];
      [v33 disconnectFromBTLEAccessoryServer:v27];

      [(_HAPAccessoryServerBTLE200 *)v27 setConnectionState:3];
    }
  }

  else
  {
    v19 = v9;
    if ((v9 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
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

    v34 = MEMORY[0x231885210](v7);
    v35 = v34;
    if (v34)
    {
      (*(v34 + 16))(v34, v25);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_cancelConnectionWithError:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ([(_HAPAccessoryServerBTLE200 *)self connectionState]== 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    }

    v10 = [(_HAPAccessoryServerBTLE200 *)v7 connectionCompletionHandler];
    v11 = MEMORY[0x231885210]();
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v5);
    }

    [(_HAPAccessoryServerBTLE200 *)v7 setConnectionCompletionHandler:0];
    v13 = [(_HAPAccessoryServerBTLE200 *)v7 discoveryContext];

    if (v13)
    {
      [(_HAPAccessoryServerBTLE200 *)v7 _cancelDiscoveryWithError:v5];
    }

    if ([(_HAPAccessoryServerBTLE200 *)v7 isPairing])
    {
      v14 = [v5 userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
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
      v26 = v7;
      v27 = v18;
      v19 = v18;
      __57___HAPAccessoryServerBTLE200__cancelConnectionWithError___block_invoke(&v22);
    }

    v20 = [(HAPAccessoryServerBTLE *)v7 browser:v22];
    [v20 disconnectFromBTLEAccessoryServer:v7];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)connectWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D6BE0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_decryptData:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2048;
    v22 = [v6 length];
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Decrypting data with length %lu", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];

  if (v11)
  {
    v12 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];
LABEL_7:
    v15 = v12;
    v16 = [v12 decryptData:v6 additionalAuthenticatedData:0 error:a4];

    goto LABEL_8;
  }

  v13 = [(_HAPAccessoryServerBTLE200 *)v8 pairSetupSession];
  v14 = [v13 isSecureSession];

  if (v14)
  {
    v12 = [(_HAPAccessoryServerBTLE200 *)v8 pairSetupSession];
    goto LABEL_7;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0 marker:235];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Encrypting plaintext data: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];

  if (v11)
  {
    v12 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];
LABEL_7:
    v15 = v12;
    v16 = [v12 encryptData:v6 additionalAuthenticatedData:0 error:a4];

    goto LABEL_8;
  }

  v13 = [(_HAPAccessoryServerBTLE200 *)v8 pairSetupSession];
  v14 = [v13 isSecureSession];

  if (v14)
  {
    v12 = [(_HAPAccessoryServerBTLE200 *)v8 pairSetupSession];
    goto LABEL_7;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0 marker:234];
    *a4 = v16 = 0;
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
  v2 = [(HAPAccessoryServer *)self primaryAccessory];
  v3 = [v2 servicesOfType:@"000000A2-0000-1000-8000-0026BB765291"];
  v4 = [v3 firstObject];

  v5 = [v4 characteristicsOfType:@"000000A5-0000-1000-8000-0026BB765291"];
  v6 = [v5 firstObject];

  return v6;
}

- (HAPCharacteristic)pairVerifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairVerifyCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"0000004E-0000-1000-8000-0026BB765291"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairVerifyCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairVerifyCharacteristic);

  return v9;
}

- (void)_handleSecuritySessionSetupExchangeData:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pairVerifyCharacteristic];
  if (v5)
  {
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70___HAPAccessoryServerBTLE200__handleSecuritySessionSetupExchangeData___block_invoke;
    v13[3] = &unk_2786D43D0;
    objc_copyWeak(&v15, location);
    v14 = v5;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v4 toCharacteristic:v14 authorizationData:0 contextData:0 options:18 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];
    [v11 receivedSetupExchangeData:0 error:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_establishSecureSession
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HAPAccessoryServerBTLE *)self isPaired])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
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
      [(_HAPAccessoryServerBTLE200 *)v5 _disconnectWithDisconnectionError:v8 completionHandler:0];
    }

    goto LABEL_12;
  }

  v3 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([v3 isOpen])
  {

LABEL_9:
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

  v10 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  v11 = [v10 isOpening];

  if (v11)
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
    v17 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    v18 = [(HAPAccessoryServer *)self keyBag];
    [v17 updateCurrentPairingIdentityIndexIfNeededForKeyBag:v18];
  }

  v20 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:[(HAPAccessoryServerBTLE *)self resumeSessionID] delegate:self];
  [(_HAPAccessoryServerBTLE200 *)self setSecuritySession:v20];
  [(HAPSecuritySession *)v20 open];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setSecuritySessionOpen:(BOOL)a3
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
  v2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  v3 = [v2 isOpen];

  return v3;
}

- (void)setSecuritySession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  securitySession = self->_securitySession;
  self->_securitySession = v4;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (HAPSecuritySession)securitySession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_securitySession;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)_invokeOperationsReceivedDuringConnectionStateChangeWithError:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(_HAPAccessoryServerBTLE200 *)self operationsReceivedDuringConnectionStateChange];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = MEMORY[0x277CCABB0];
      v13 = [(_HAPAccessoryServerBTLE200 *)v9 operationsReceivedDuringConnectionStateChange];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      *buf = 138543874;
      v28 = v11;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Invoking %@ operation blocks pended during connection state change with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [(_HAPAccessoryServerBTLE200 *)v9 operationsReceivedDuringConnectionStateChange];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v22 + 1) + 8 * v19++) + 16))();
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    v20 = [(_HAPAccessoryServerBTLE200 *)v9 operationsReceivedDuringConnectionStateChange];
    [v20 removeAllObjects];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)evaluateConnectionStateForOperation:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___HAPAccessoryServerBTLE200_evaluateConnectionStateForOperation_block___block_invoke;
  block[3] = &unk_2786D43A8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_cancelAllQueuedOperationsWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    v6 = [v5 operations];
    v7 = [v6 count];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(_HAPAccessoryServerBTLE200 *)v9 requestOperationQueue];
        v13 = [v12 operations];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling all queued operations: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v14 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    [v14 cancelAllOperationsWithError:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resumeAllOperations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v4 = [v3 isSuspended];

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
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Resuming all request operations", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(_HAPAccessoryServerBTLE200 *)v6 requestOperationQueue];
    [v9 setSuspended:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_suspendAllOperations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v4 = [v3 isSuspended];

  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Suspending all request operations", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(_HAPAccessoryServerBTLE200 *)v6 requestOperationQueue];
    [v9 setSuspended:1];
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
  v2 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v3 = [v2 operations];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) isFinished] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_enqueueRequest:(id)a3 shouldPrioritize:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Queueing request: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [v6 characteristic];
  v12 = [(_HAPAccessoryServerBTLE200 *)v8 pairVerifyCharacteristic];
  if ([v11 isEqual:v12])
  {
    v13 = [v6 type];

    if (v13 != 1)
    {
      v14 = [(_HAPAccessoryServerBTLE200 *)v8 pairVerifyOperationQueue];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v6 isEncrypted])
  {
    v15 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];
    if (![v15 isOpen])
    {
      v16 = [(_HAPAccessoryServerBTLE200 *)v8 securitySession];
      if (![v16 isOpening])
      {
        v21 = [(_HAPAccessoryServerBTLE200 *)v8 pairSetupSession];
        v22 = [v21 isSecureSession];

        if ((v22 & 1) == 0)
        {
          [(_HAPAccessoryServerBTLE200 *)v8 _suspendAllOperations];
          [(HAPAccessoryServer *)v8 setMetric_pairVerifyReason:@"noSession.request"];
          [(_HAPAccessoryServerBTLE200 *)v8 _establishSecureSession];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v14 = [(_HAPAccessoryServerBTLE200 *)v8 requestOperationQueue];
LABEL_13:
  v17 = v14;
  if (v4)
  {
    v18 = [v6 operation];
    [v18 setQueuePriority:4];
  }

  v19 = [v6 operation];
  [v17 addOperation:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sendProtocolInfoServiceExchangeData:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length] >= 2)
  {
    v8 = [v6 subdataWithRange:{1, objc_msgSend(v6, "length") - 1}];

    v6 = v8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v12;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending Protocol Exchange for data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(_HAPAccessoryServerBTLE200 *)v10 protocolInfoServiceSignatureCharacteristics];
  if (v13)
  {
    objc_initWeak(&location, v10);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78___HAPAccessoryServerBTLE200__sendProtocolInfoServiceExchangeData_completion___block_invoke;
    v28[3] = &unk_2786D4380;
    objc_copyWeak(&v30, &location);
    v14 = v7;
    v29 = v14;
    v15 = MEMORY[0x231885210](v28);
    v16 = [[HAPBTLERequest alloc] initWithCharacteristic:v13 requestType:255 bodyData:v6 shouldEncrypt:1 timeoutInterval:10.0];
    if (v16)
    {
      [(_HAPAccessoryServerBTLE200 *)v10 _sendRequest:v16 shouldPrioritize:0 responseHandler:v15];
      [(_HAPAccessoryServerBTLE200 *)v10 _kickConnectionIdleTimer];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v22 = v10;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v24;
        v34 = 2112;
        v35 = v13;
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
    v18 = v10;
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
    (*(v7 + 2))(v7, v21, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5
{
  v112 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _pendingRequestForCharacteristic:v9];
  v12 = v11;
  if (v11)
  {
    if (v10)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v107 = v16;
        v108 = 2112;
        v109 = v12;
        v110 = 2112;
        v111 = v10;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response for request, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v12 cancelWithError:v10];
      goto LABEL_64;
    }

    v21 = [v11 responseTimer];
    [v21 suspend];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v22 = v8;
    if ([v12 isEncrypted])
    {
      v105 = 0;
      v23 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:v22 error:&v105];
      v24 = v105;

      if (!v23)
      {
        v54 = objc_autoreleasePoolPush();
        v55 = self;
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
    v26 = self;
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
      v42 = v26;
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
      v33 = [v29 transactionIdentifier];
      v34 = [v32 isEqual:v33];

      v30 = v31;
      if (v34)
      {
LABEL_19:
        v101 = v30;
        if ([v29 isContinuationPacket])
        {
          v35 = [(_HAPAccessoryServerBTLE200 *)v26 _pendingResponseForRequest:v12];
          context = objc_autoreleasePoolPush();
          v36 = v26;
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
          v58 = [(_HAPAccessoryServerBTLE200 *)v26 pendingResponses];
          [v58 addObject:v40];

          v59 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:4.0];
          [v59 setDelegate:v26];
          v60 = [(HAPAccessoryServer *)v26 clientQueue];
          [v59 setDelegateQueue:v60];

          [v12 setResponseTimer:v59];
        }

        v61 = [v29 payload];
        v103 = 0;
        v62 = [(HAPBTLEResponse *)v40 appendData:v61 error:&v103];
        contexta = v103;

        if (!v62)
        {
          v99 = v40;
          v76 = objc_autoreleasePoolPush();
          v77 = v26;
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
            v65 = v26;
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

            v69 = [v12 operation];
            [v69 finish];

            v30 = v101;
            v24 = v102;
            v40 = v97;
          }

          else
          {
            v88 = objc_autoreleasePoolPush();
            v89 = v26;
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
          v83 = v26;
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
      v71 = v26;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        contextb = HMFGetLogIdentifier();
        [v29 transactionIdentifier];
        v73 = v98 = v70;
        v74 = [v12 identifier];
        *buf = 138543874;
        v107 = contextb;
        v108 = 2112;
        v109 = v73;
        v110 = 2112;
        v111 = v74;
        v75 = v74;
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
      v49 = v26;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [v29 type];
        *buf = 138543618;
        v107 = v51;
        v108 = 1024;
        LODWORD(v109) = v52;
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
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v107 = v20;
    v108 = 2112;
    v109 = v9;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected response from characteristic, %@, dropping", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_64:

  v93 = *MEMORY[0x277D85DE8];
}

- (void)_requestResponseForRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 characteristic];
  v6 = [v5 cbCharacteristic];

  if (v6)
  {
    v7 = [v4 responseTimer];
    [v7 resume];

    v8 = [(HAPAccessoryServerBTLE *)self peripheral];
    [v8 readValueForCharacteristic:v6];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for request: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
    [v4 cancelWithError:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleWriteCompletionForCharacteristic:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
    [v10 removeObjectForKey:v6];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, v7);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected write completion from characteristic, %@, dropping", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendData:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v18 = [v9 cbCharacteristic];
    if (v18)
    {
      v17 = v18;
      v19 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
      v20 = [v10 copy];
      v21 = MEMORY[0x231885210]();
      [v19 setObject:v21 forKey:v9];

      v22 = [(HAPAccessoryServerBTLE *)self peripheral];
      [v22 writeValue:v8 forCharacteristic:v17 type:0];

      [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for characteristic: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      if (v10)
      {
        v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
        (*(v10 + 2))(v10, v27);
      }

      v17 = 0;
    }

    goto LABEL_13;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v16;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@A write operation for '%@' is already is progress.", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (v10)
  {
    v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4 description:@"Operation in progress." reason:@"A write operation is already in progress." suggestion:0 underlyingError:0];
    (*(v10 + 2))(v10, v17);
LABEL_13:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendControlPacket:(id)a3 forRequest:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 serialize];
  if (![v9 isEncrypted])
  {
    v13 = 0;
    goto LABEL_5;
  }

  v29 = 0;
  v12 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:v11 error:&v29];
  v13 = v29;

  if (v12)
  {
    v11 = v12;
LABEL_5:
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v11 length];
      *buf = 138543874;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Sending %tu bytes of control payload for request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = objc_autoreleasePoolPush();
    v20 = v15;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v22;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Sending control payload for request, %@, to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [v9 characteristic];
    [(_HAPAccessoryServerBTLE200 *)v20 _sendData:v11 toCharacteristic:v23 completionHandler:v10];

    goto LABEL_10;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
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
  if (v10)
  {
    v10[2](v10, v13);
  }

LABEL_10:

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_maximumControlWriteLengthForRequest:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBTLE *)self peripheral];
  v6 = [v5 maximumWriteValueLengthForType:0];

  v7 = [(HAPAccessoryServerBTLE *)self peripheral];
  v8 = [v7 maximumWriteValueLengthForType:1];

  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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
  v14 = self;
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
  v17 = [v4 isEncrypted];
  v18 = 17;
  if (!v17)
  {
    v18 = 1;
  }

  if (v8 / v18 >= 4)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
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

  if ([v4 isEncrypted])
  {
    if (v6 > 0xF)
    {
      v6 -= 16;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
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

- (void)_reallySendRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)_pendingResponseForRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pendingResponses];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_pendingRequestForCharacteristic:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 characteristic];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"0000003E-0000-1000-8000-0026BB765291"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000014-0000-1000-8000-0026BB765291"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_identifyCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_identifyCharacteristic);

  return v9;
}

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke;
  v6[3] = &unk_2786D3EB8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (void)_sendPairingRequestData:(id)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self pairingsCharacteristic];
  if (v8)
  {
    objc_initWeak(location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __72___HAPAccessoryServerBTLE200__sendPairingRequestData_completionHandler___block_invoke;
    v19 = &unk_2786D6678;
    objc_copyWeak(&v21, location);
    v20 = v7;
    v9 = MEMORY[0x231885210](&v16);
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v6 toCharacteristic:v8 authorizationData:0 contextData:0 options:7 completionHandler:v9, v16, v17, v18, v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, missing the Pairings characteristic", location, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (v7)
    {
      v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Missing Pairings characteristic." suggestion:0 underlyingError:0];
      (*(v7 + 2))(v7, 0, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4 serverPairingCompletion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v30];
  v12 = v30;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
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
    objc_initWeak(buf, v14);
    v18 = [(HAPAccessoryServer *)v14 clientQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_735;
    v22[3] = &unk_2786D4240;
    objc_copyWeak(&v26, buf);
    v23 = v8;
    v24 = v9;
    v25 = v10;
    [(_HAPAccessoryServerBTLE200 *)v14 removePairing:v11 completionQueue:v18 completionHandler:v22];

    [(_HAPAccessoryServerBTLE200 *)v14 setHasValidCache:0];
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
    if (v8 && v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke;
      block[3] = &unk_2786D65D8;
      v29 = v9;
      v28 = v12;
      dispatch_async(v8, block);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke;
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

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke;
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

- (HAPCharacteristic)pairingsCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingsCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000050-0000-1000-8000-0026BB765291"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairingsCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairingsCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairSetupCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"0000004C-0000-1000-8000-0026BB765291"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairSetupCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairingFeaturesCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000055-0000-1000-8000-0026BB765291"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"0000004F-0000-1000-8000-0026BB765291"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairingFeaturesCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  return v9;
}

- (void)_pairingCompletedWithError:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Pair Setup completed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    [(_HAPAccessoryServerBTLE200 *)v6 setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)v6 setPairingDisconnectionError:0];
    [(_HAPAccessoryServerBTLE200 *)v6 setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)v6 setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)v6 setPairSetupSession:0];
    [(_HAPAccessoryServerBTLE200 *)v6 _disconnectWithDisconnectionError:v4 completionHandler:0];
  }

  v9 = [(_HAPAccessoryServerBTLE200 *)v6 _getPairSetupType];
  if (v9 == 5)
  {
    if ([(_HAPAccessoryServerBTLE200 *)v6 _delegateRespondsToSelector:sel_accessoryServer_validateCert_model_])
    {
      v17 = [(_HAPAccessoryServerBTLE200 *)v6 pairSetupSession];
      v18 = [v17 getCertificate];

      v19 = [(HAPAccessoryServer *)v6 delegateQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_3;
      v22[3] = &unk_2786D7050;
      v22[4] = v6;
      v23 = v18;
      v20 = v18;
      dispatch_async(v19, v22);
    }
  }

  else if (v9 == 3)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)v6 pairSetupSession];
    [v10 generateSessionKeys];

    v11 = [HAPAuthSession alloc];
    v12 = [(_HAPAccessoryServerBTLE200 *)v6 protocolInfoServiceSignatureCharacteristics];
    v13 = [v12 instanceID];
    v14 = [(HAPAuthSession *)v11 initWithRole:0 instanceId:v13 delegate:v6];
    [(_HAPAccessoryServerBTLE200 *)v6 setAuthSession:v14];

    v15 = [MEMORY[0x277CBEAA8] date];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke;
    v24[3] = &unk_2786D6A98;
    v25 = v15;
    v26 = v6;
    v16 = v15;
    [(_HAPAccessoryServerBTLE200 *)v6 getAccessoryInfo:v24];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v6 setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)v6 setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)v6 setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)v6 setPairSetupSession:0];
    [(HAPAccessoryServer *)v6 setPairingRequest:0];
    [(_HAPAccessoryServerBTLE200 *)v6 _notifyDelegatesPairingStopped:v4];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___HAPAccessoryServerBTLE200_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, v10);

  return 0;
}

- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isBadSetupCode]&& [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_didReceiveBadPasswordThrottleAttemptsWithDelay_])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:v4];
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6 = v5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke;
    v14[3] = &unk_2786D6CA0;
    v14[4] = self;
    v7 = v14;
LABEL_6:
    dispatch_async(v5, v7);
    goto LABEL_10;
  }

  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:v4];
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6 = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_2786D6CA0;
    v13[4] = self;
    v7 = v13;
    goto LABEL_6;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
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
  v4[2](v4, 0, v6);
  [(_HAPAccessoryServerBTLE200 *)v9 setSetupCodeCompletionHandler:0];
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairSetupSessionExchangeData:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke;
  v18[3] = &unk_2786D6A98;
  v5 = v4;
  v19 = v5;
  v20 = self;
  v6 = MEMORY[0x231885210](v18);
  v7 = [(_HAPAccessoryServerBTLE200 *)self pairSetupCharacteristic];
  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_680;
    v15[3] = &unk_2786D67B8;
    v15[4] = self;
    v17 = v6;
    v16 = v7;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v5 toCharacteristic:v16 authorizationData:0 contextData:0 options:26 completionHandler:v15];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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
    v13 = [(_HAPAccessoryServerBTLE200 *)v9 pairSetupSession];
    [v13 receivedSetupExchangeData:0 error:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopPairingWithError:(id *)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE200_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);

  return 1;
}

- (void)continuePairingAfterAuthPrompt
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)_parsePairingFeaturesCharacteristic:(id)a3 authMethod:(unint64_t *)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    -[_HAPAccessoryServerBTLE200 setFeatureFlags:](self, "setFeatureFlags:", [v9 unsignedCharValue]);
    v11 = [(_HAPAccessoryServerBTLE200 *)self featureFlags];
    v12 = 2;
    v13 = 4;
    v14 = 5;
    if ((v11 & 0x10) != 0)
    {
      v14 = 6;
    }

    if ((v11 & 8) == 0)
    {
      v13 = v14;
    }

    if ((v11 & 2) == 0)
    {
      v12 = v13;
    }

    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if ((v11 & 0xFFFFFFBF) != 0)
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

    if (a4)
    {
      *a4 = [(HAPAccessoryServer *)self authMethod];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the Pairing Features characteristic value is invalid", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing Failed." reason:@"The Pairing Features characteristic value is missing" suggestion:0 underlyingError:0];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (void)_getPairingFeaturesWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke;
  v22[3] = &unk_2786D4218;
  v22[4] = self;
  v5 = v4;
  v23 = v5;
  v6 = MEMORY[0x231885210](v22);
  v7 = [(_HAPAccessoryServerBTLE200 *)self pairingFeaturesCharacteristic];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 value];

    if (!v9)
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
    v12 = self;
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

- (void)_checkForAuthPrompt:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke;
  v3[3] = &unk_2786D41F0;
  v3[4] = self;
  v4 = a3;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:2 completionHandler:v3];
}

- (void)startPairingWithRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0F770] currentActivity];
  v6 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v29 = a4;
  v28 = a5;
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  group = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
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
        v13 = [v12 characteristic];
        v14 = [v13 properties];

        if ((v14 & 8) != 0)
        {
          dispatch_group_enter(group);
          v20 = [v12 broadcastEnable];
          v21 = [v12 broadcastInterval];
          v22 = [v12 characteristic];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke;
          v38[3] = &unk_2786D66A0;
          v38[4] = self;
          v39 = v30;
          v40 = group;
          [(_HAPAccessoryServerBTLE200 *)self _enableBroadcastEvent:v20 interval:v21 forCharacteristic:v22 completionHandler:v38];
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            v19 = [v12 characteristic];
            *buf = 138543618;
            v46 = v18;
            v47 = 2112;
            v48 = v19;
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
  v23 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_607;
  block[3] = &unk_2786D6C08;
  objc_copyWeak(&v37, buf);
  v34 = v29;
  v35 = v30;
  v36 = v28;
  v24 = v30;
  v25 = v28;
  v26 = v29;
  dispatch_group_notify(group, v23, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke;
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

- (void)_configureBroadcastKeyGeneration:(unsigned __int8)a3 service:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86___HAPAccessoryServerBTLE200__configureBroadcastKeyGeneration_service_withCompletion___block_invoke;
  v26[3] = &unk_2786D4178;
  v26[4] = self;
  v30 = v6;
  objc_copyWeak(&v29, &location);
  v10 = v9;
  v28 = v10;
  v11 = v8;
  v27 = v11;
  v12 = MEMORY[0x231885210](v26);
  v13 = objc_opt_class();
  v25 = 0;
  if (v6 == 2)
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
    v18 = self;
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

- (void)_handleEventIndicationForCharacteristic:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 properties])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Reading value on Indication for characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(_HAPAccessoryServerBTLE200 *)v6 markNotifyingCharacteristicUpdatedforCharacteristic:v4];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
    v10 = [(HAPAccessoryServer *)v6 clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke;
    v12[3] = &unk_2786D5B30;
    v12[4] = v6;
    [(_HAPAccessoryServerBTLE200 *)v6 _readCharacteristicValues:v9 queue:v10 completionHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
    [v10 removeObjectForKey:v6];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, v7);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Received unexpected notification updated completion from characteristic, %@, dropping", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v72 = a3;
  v123 = *MEMORY[0x277D85DE8];
  v62 = a4;
  v63 = a5;
  v68 = a6;
  v9 = [(_HAPAccessoryServerBTLE200 *)self connectionState]== 2;
  v10 = objc_autoreleasePoolPush();
  v71 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      if (v72)
      {
        v14 = @"Enabling";
      }

      else
      {
        v14 = @"Disabling";
      }

      v15 = [v62 shortDescription];
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v119 = v15;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@%@ events for characteristics: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v65 = [MEMORY[0x277CBEB18] array];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v16 = v62;
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
          if ([v20 eventNotificationsEnabled] == v72)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v71;
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
            [v65 addObject:v20];
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
    v119 = __Block_byref_object_copy__7552;
    v120 = __Block_byref_object_dispose__7553;
    v121 = 0;
    v29 = v72;
    group = v28;
    if ([v65 count])
    {
      dispatch_group_enter(v28);
      v30 = [MEMORY[0x277CBEB18] array];
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
            v91[4] = v71;
            v92 = v30;
            v35 = MEMORY[0x231885210](v91);
            [(_HAPAccessoryServerBTLE200 *)v71 _enableEvent:v72 forCharacteristic:v34 withCompletionHandler:v35 queue:v68];
            [v34 setEventNotificationsEnabled:v72];

            v29 = v72;
          }

          v31 = [obja countByEnumeratingWithState:&v94 objects:v117 count:16];
        }

        while (v31);
      }

      dispatch_group_leave(group);
      v36 = [(HAPAccessoryServer *)v71 clientQueue];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_550;
      v84[3] = &unk_2786D4150;
      v84[4] = v71;
      v85 = v65;
      v86 = v68;
      v89 = buf;
      v90 = v72;
      v87 = v30;
      v88 = v63;
      v37 = v30;
      dispatch_group_notify(group, v36, v84);

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
          if ([v40 eventNotificationsEnabled] == v72)
          {
            v41 = 0;
          }

          else
          {
            v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6711 userInfo:0];
            v42 = objc_autoreleasePoolPush();
            v43 = v71;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = HMFGetLogIdentifier();
              v46 = [v40 instanceID];
              v47 = [v40 type];
              *v108 = 138544130;
              v109 = v45;
              v110 = 2112;
              v111 = v46;
              v112 = 2112;
              v113 = v47;
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
      if (!v63 || !v68)
      {
        goto LABEL_63;
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_555;
      v77[3] = &unk_2786D65D8;
      v79 = v63;
      v78 = v37;
      dispatch_async(v68, v77);

      v49 = v79;
    }

    else
    {
      v106[0] = *MEMORY[0x277CCA450];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", v64];
      v107[0] = v50;
      v106[1] = *MEMORY[0x277CCA470];
      v51 = [MEMORY[0x277CCA8D8] mainBundle];
      v52 = [v51 localizedStringForKey:@"No Characteristics support notify property" value:&stru_283E79C60 table:0];
      v107[1] = v52;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];

      v53 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6735 userInfo:v49];
      v54 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v53;

      v55 = objc_autoreleasePoolPush();
      v56 = v71;
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
      if (v63 && v68)
      {
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_562;
        v73[3] = &unk_2786D61A0;
        v75 = v63;
        v74 = v37;
        v76 = buf;
        dispatch_async(v68, v73);
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
    if (v72)
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
    v119 = [(_HAPAccessoryServerBTLE200 *)v71 connectionState];
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Rejecting %@ events on server that is not connected, current state: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v65 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:2 userInfo:0];
  if (v63 && v68)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D69E0;
    v105 = v63;
    v103 = v62;
    v65 = v65;
    v104 = v65;
    dispatch_async(v68, block);

    v27 = v105;
LABEL_64:
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v8 = a3;
  v73 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(_HAPAccessoryServerBTLE200 *)self isBLELinkConnected])
  {
    v54 = v11;
    v53 = v8;
    if (v8)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v14)
      {
        v15 = v14;
        v50 = v12;
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
            v20 = [v19 characteristicTypesChangingTargetState];
            v21 = [v18 type];
            v22 = [v20 containsObject:v21];

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
        v12 = v50;
      }

      else
      {
        v23 = 0;
      }

      LOBYTE(v8) = v53;
    }

    else
    {
      v23 = 0;
    }

    v34 = [(HAPAccessoryServerBTLE *)self stateChanged];
    v35 = 0;
    if (v23)
    {
      v11 = v54;
    }

    else
    {
      v11 = v54;
      if (!v34)
      {
        v36 = [MEMORY[0x277D0F8D0] sharedPreferences];
        v37 = [v36 preferenceForKey:@"BTLEAccessoryEnableEventBackoffTime"];
        v38 = [v37 numberValue];
        [v38 doubleValue];
        v35 = (v39 * 1000000000.0);

        v40 = objc_autoreleasePoolPush();
        v41 = self;
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
          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
          v46 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_HAPAccessoryServerBTLE200 connectionState](v41, "connectionState")}];
          *buf = 138544130;
          v66 = v43;
          v67 = 2112;
          v68 = v44;
          v11 = v54;
          v69 = 2112;
          v70 = v45;
          v71 = 2112;
          v72 = v46;
          _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@Deferring %@ events on %@ characteristics to prioritize local operations. Connection state: %@", buf, 0x2Au);

          v40 = v52;
        }

        objc_autoreleasePoolPop(v40);
        LOBYTE(v8) = v53;
      }
    }

    v47 = dispatch_time(0, v35);
    v48 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90___HAPAccessoryServerBTLE200_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    block[3] = &unk_2786D6510;
    block[4] = self;
    v59 = v8;
    v56 = v10;
    v58 = v11;
    v57 = v12;
    dispatch_after(v47, v48, block);
  }

  else
  {
    v24 = v8;
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = v11;
      if (v24)
      {
        v30 = @"enabling";
      }

      else
      {
        v30 = @"disabling";
      }

      v51 = v12;
      v31 = v10;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_HAPAccessoryServerBTLE200 connectionState](v26, "connectionState")}];
      *buf = 138544130;
      v66 = v28;
      v67 = 2112;
      v68 = v30;
      v11 = v29;
      v69 = 2112;
      v70 = v32;
      v71 = 2112;
      v72 = v33;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping %@ events for %@ characteristics in connection state: %@", buf, 0x2Au);

      v10 = v31;
      v12 = v51;
    }

    objc_autoreleasePoolPop(v25);
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 properties])
  {
    v5 = [(HAPAccessoryServerBTLE *)self browser];
    v6 = [(HAPAccessoryServer *)self identifier];
    [v5 markNotifyingCharacteristicUpdatedForIdentifier:v6];

    if (![(HAPAccessoryServerBTLE *)self notifyingCharacteristicUpdated])
    {
      [(HAPAccessoryServerBTLE *)self setNotifyingCharacteristicUpdated:1];
      v7 = [(HAPAccessoryServerBTLE *)self stateNumber];
      v8 = [v7 unsignedShortValue] + 1;

      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [(HAPAccessoryServerBTLE *)v10 stateNumber];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v18 = 138544130;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = v4;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating state number %{public}@ -> %{public}@ due to characteristic update: %{public}@", &v18, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
      [(HAPAccessoryServerBTLE *)v10 setStateNumber:v15];
    }

    v16 = [(HAPAccessoryServerBTLE *)self stateNumber];
    [v4 setStateNumber:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWriteExecuteForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v34 = 0;
  v14 = [objc_opt_class() executeWriteRequestForCharacteristic:v11 options:a5 error:&v34];
  v26 = v34;
  if (v14)
  {
    objc_initWeak(location, self);
    v15 = objc_alloc(MEMORY[0x277D0F770]);
    v16 = MEMORY[0x277CCACA8];
    v17 = MEMORY[0x231884350](self, a2);
    v18 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4940];
    v19 = [v15 initWithName:v18];
    v33 = v19;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105___HAPAccessoryServerBTLE200__performTimedWriteExecuteForCharacteristic_value_options_completionHandler___block_invoke;
    v27[3] = &unk_2786D4088;
    objc_copyWeak(v32, location);
    v28 = v19;
    v29 = v11;
    v31 = v13;
    v30 = v12;
    v32[1] = a5;
    v20 = MEMORY[0x231885210](v27);
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v14 shouldPrioritize:1 responseHandler:v20];

    objc_destroyWeak(v32);
    __HMFActivityScopeLeave();

    objc_destroyWeak(location);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v24;
      v36 = 2114;
      v37 = v11;
      v38 = 2114;
      v39 = v26;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Timed write execute failed, failed to create request for characteristic, %{public}@, with error: %{public}@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    _callCharacteristicOperationCompletion(v11, v13, 2, v26, @"Failed to create execute-write request.");
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWritePrepareWithValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v48 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v42 = 0;
  v36 = v15;
  v20 = [objc_opt_class() prepareWriteRequestForCharacteristic:v16 value:v15 authorizationData:v17 contextData:v18 options:a7 error:&v42];
  v37 = v42;
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F770]);
    v22 = MEMORY[0x277CCACA8];
    v23 = MEMORY[0x231884350](self, a2);
    v24 = [v22 stringWithFormat:@"%@, %s:%ld", v23, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4874];
    v25 = [v21 initWithName:v24];
    *buf = v25;

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __138___HAPAccessoryServerBTLE200__performTimedWritePrepareWithValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
    v38[3] = &unk_2786D40D8;
    v38[4] = self;
    v26 = v25;
    v39 = v26;
    v27 = v16;
    v40 = v27;
    v41 = v19;
    v28 = MEMORY[0x231885210](v38);
    v29 = v26;
    [v27 instanceID];

    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v20 shouldPrioritize:(a7 >> 4) & 1 responseHandler:v28];
    __HMFActivityScopeLeave();
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v33;
      v44 = 2114;
      v45 = v16;
      v46 = 2114;
      v47 = v37;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Timed write prepare failed, failed to create request for characteristic, %{public}@, with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
    _callCharacteristicOperationCompletion(v16, v19, 2, v34, @"Failed to create prepare-write request.");
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_performTimedWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __127___HAPAccessoryServerBTLE200__performTimedWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
  v23[3] = &unk_2786D40B0;
  v23[4] = self;
  v24 = v15;
  v25 = v14;
  v26 = v16;
  v27 = a7;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = a6;
  v21 = a5;
  v22 = MEMORY[0x231885210](v23);
  [(_HAPAccessoryServerBTLE200 *)self _performTimedWritePrepareWithValue:v17 toCharacteristic:v18 authorizationData:v21 contextData:v20 options:a7 completionHandler:v22];
}

- (void)_performWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v34 = a5;
  v35 = a6;
  v17 = a8;
  v18 = objc_alloc(MEMORY[0x277D0F770]);
  v19 = MEMORY[0x277CCACA8];
  v20 = MEMORY[0x231884350](self, a2);
  v21 = [v19 stringWithFormat:@"%@, %s:%ld", v20, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4728];
  v22 = [v18 initWithName:v21];
  v44 = v22;

  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __122___HAPAccessoryServerBTLE200__performWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke;
  v37[3] = &unk_2786D4088;
  objc_copyWeak(v42, &location);
  v23 = v16;
  v38 = v23;
  v39 = v22;
  v24 = v17;
  v41 = v24;
  v25 = v15;
  v40 = v25;
  v42[1] = a7;
  v26 = MEMORY[0x231885210](v37);
  v36 = 0;
  v27 = [objc_opt_class() writeRequestForCharacteristic:v23 value:v25 authorizationData:v34 contextData:v35 options:a7 error:&v36];
  v28 = v36;
  if (v27)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v27 shouldPrioritize:(a7 >> 4) & 1 responseHandler:v26];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v29 = self;
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

- (void)_writeValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [v15 service];
  v20 = [v19 accessory];
  v21 = [v20 server];

  if (v21 == self)
  {
    if ((a7 & 4) != 0 || ([v15 properties] & 0x20) != 0)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v35;
        v39 = 2114;
        v40 = v15;
        _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristic %{public}@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [(_HAPAccessoryServerBTLE200 *)v33 _performTimedWriteValue:v14 toCharacteristic:v15 authorizationData:v16 contextData:v17 options:a7 completionHandler:v18];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v31;
        v39 = 2114;
        v40 = v15;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristic %{public}@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(_HAPAccessoryServerBTLE200 *)v29 _performWriteValue:v14 toCharacteristic:v15 authorizationData:v16 contextData:v17 options:a7 completionHandler:v18];
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
      v26 = [v15 shortDescription];
      v37 = 138543618;
      v38 = v25;
      v39 = 2114;
      v40 = v26;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Write failed, characteristic is not part of server: %{public}@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if (v18)
    {
      v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      v18[2](v18, v15, v27);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x231884350](self, a2);
  v18 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4597];
  v19 = [v15 initWithName:v18];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786D4060;
  v29 = a4;
  v24[4] = self;
  v25 = v12;
  v26 = v19;
  v27 = v13;
  v28 = v14;
  v20 = v14;
  v21 = v13;
  v22 = v19;
  v23 = v12;
  [(_HAPAccessoryServerBTLE200 *)self evaluateConnectionStateForOperation:3 block:v24];
}

- (void)_readValueForCharacteristic:(id)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v9 service];
  v12 = [v11 accessory];
  v13 = [v12 server];

  if (v13 == self)
  {
    v37 = 0;
    v19 = [objc_opt_class() readRequestForCharacteristic:v9 options:a4 error:&v37];
    v18 = v37;
    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x277D0F770]);
      v21 = MEMORY[0x277CCACA8];
      v22 = MEMORY[0x231884350](self, a2);
      v23 = [v21 stringWithFormat:@"%@, %s:%ld", v22, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4374];
      v24 = [v20 initWithName:v23];
      *buf = v24;

      objc_initWeak(&location, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84___HAPAccessoryServerBTLE200__readValueForCharacteristic_options_completionHandler___block_invoke;
      v31[3] = &unk_2786D4010;
      objc_copyWeak(&v35, &location);
      v32 = v9;
      v33 = v24;
      v34 = v10;
      v25 = MEMORY[0x231885210](v31);
      [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v19 shouldPrioritize:(a4 >> 1) & 1 responseHandler:v25];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
      __HMFActivityScopeLeave();
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
        *&buf[4] = v29;
        v39 = 2114;
        v40 = v9;
        v41 = 2114;
        v42 = v18;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Read failed, failed to create request for characteristic, %{public}@, with error: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      _callCharacteristicOperationCompletion(v9, v10, 1, v18, @"Failed to create request.");
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v17;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Read failed, characteristic is not part of server: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
    _callCharacteristicOperationCompletion(v9, v10, 1, v18, @"Characteristic is not part of server.");
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updatePropertiesFromCharacteristic:(id)a3
{
  v9 = a3;
  v4 = [v9 type];
  v5 = [(HAPAccessoryServer *)self primaryAccessory];
  if ([v4 isEqualToString:@"00000220-0000-1000-8000-0026BB765291"])
  {
    v6 = [v9 value];
    v7 = [HAPAccessory productDataStringFromData:v6];
    [(HAPAccessoryServer *)self setProductData:v7];

    v8 = [(HAPAccessoryServer *)self productData];
    [v5 setProductData:v8];
  }
}

- (void)_readCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v22 = a4;
  v21 = a5;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = dispatch_group_create();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v8;
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

  v16 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_393;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v25 = v22;
  v26 = v9;
  v27 = v21;
  v17 = v9;
  v18 = v21;
  v19 = v22;
  dispatch_group_notify(v10, v16, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x231884350](self, a2);
  v18 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4236];
  v19 = [v15 initWithName:v18];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786D4060;
  v25 = v12;
  v26 = self;
  v28 = v13;
  v29 = v14;
  v30 = a4;
  v27 = v19;
  v20 = v13;
  v21 = v14;
  v22 = v19;
  v23 = v12;
  [(_HAPAccessoryServerBTLE200 *)self evaluateConnectionStateForOperation:2 block:v24];
}

- (id)_parseCharacteristic:(id)a3 error:(id *)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v6])
  {
    v7 = [v6 UUID];
    v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v7];

    v85 = v8;
    v86 = a4;
    if (v8)
    {
      v84 = self;
      [v6 descriptors];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v9 = v91 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v88 objects:v92 count:16];
      obj = v9;
      if (v10)
      {
        v11 = v10;
        v83 = v6;
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
            v16 = [v15 UUID];
            v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              v19 = v15;

              v12 = v19;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
        }

        while (v11);

        v6 = v83;
        if (v12)
        {
          v20 = _parseCharacteristicInstanceID(v12, a4);
          if (!v20)
          {
            v59 = objc_autoreleasePoolPush();
            v60 = v84;
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

          v21 = [(_HAPAccessoryServerBTLE200 *)v84 discoveryContext];
          v22 = [v21 characteristicSignatures];
          v23 = [v22 objectForKey:v83];

          v82 = v20;
          if (v23)
          {
            v24 = [v23 characteristicType];
            v25 = [v24 isEqual:v85];

            if (v25)
            {
              v26 = [HAPCharacteristic alloc];
              v27 = [v85 UUIDString];
              v28 = [(HAPAccessoryServerBTLE *)v84 stateNumber];
              v29 = [v23 characteristicProperties];
              v30 = [v23 characteristicMetadata];
              LOBYTE(v81) = 1;
              v31 = [(HAPCharacteristic *)v26 initWithType:v27 instanceID:v82 value:0 stateNumber:v28 properties:v29 eventNotificationsEnabled:0 implicitWriteWithResponse:v81 metadata:v30];

              if (v31)
              {
                v32 = [MEMORY[0x277CBEAA8] distantPast];
                [(HAPCharacteristic *)v31 setValueUpdatedTime:v32];

                [(HAPCharacteristic *)v31 setCBCharacteristic:v83];
                v33 = [(_HAPAccessoryServerBTLE200 *)v84 _characteristicForCBCharacteristic:v83];
                if (-[__CFString isEqualToCharacteristic:](v33, "isEqualToCharacteristic:", v31) && (-[__CFString metadata](v33, "metadata"), v34 = objc_claimAutoreleasedReturnValue(), -[HAPCharacteristic metadata](v31, "metadata"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v34 isEqualToCharacteristicMetadata:v35], v35, v34, v36))
                {
                  v37 = objc_autoreleasePoolPush();
                  v38 = v84;
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
                v72 = [v85 UUIDString];
                v73 = [v23 characteristicProperties];
                v74 = [v23 characteristicMetadata];
                v33 = [v71 stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %hu, metadata, %@", v72, v82, v73, v74];

                v75 = objc_autoreleasePoolPush();
                v76 = v84;
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
                if (v86)
                {
                  [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v33 reason:0 suggestion:0 underlyingError:0 marker:228];
                  *v86 = v46 = 0;
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
            v67 = [v23 characteristicType];
            v68 = [v67 UUIDString];
            v69 = [v85 UUIDString];
            v31 = [v66 stringWithFormat:@"The authenticated characteristic type, %@, does not match the characteristic type, %@", v68, v69];

            v63 = objc_autoreleasePoolPush();
            v64 = v84;
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
            v64 = v84;
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
          if (v86)
          {
            [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v31 reason:0 suggestion:0 underlyingError:0];
            *v86 = v46 = 0;
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
      v55 = v84;
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
      if (v86)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Characteristic missing characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
        *v86 = v46 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v47 = MEMORY[0x277CCACA8];
      v48 = [v6 UUID];
      v49 = [v47 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v48];

      v50 = objc_autoreleasePoolPush();
      v51 = self;
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
      if (v86)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v49 reason:0 suggestion:0 underlyingError:0 marker:227];
        *v86 = v46 = 0;
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
  v43 = self;
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
  if (a4)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:226];
    *a4 = v46 = 0;
  }

  else
  {
    v46 = 0;
  }

LABEL_60:

  v79 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)_parseService:(id)a3 error:(id *)a4
{
  v133 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([objc_opt_class() isHAPService:v6] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Service does not support HAP" reason:0 suggestion:0 underlyingError:0 marker:223];
      *a4 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_78;
  }

  v7 = [v6 UUID];
  v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v7];

  if (!v8)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [v6 UUID];
    v14 = [v29 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v30];

    v31 = objc_autoreleasePoolPush();
    v32 = self;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v14 reason:0 suggestion:0 underlyingError:0 marker:224];
      *a4 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_77;
  }

  v109 = v8;
  v9 = MEMORY[0x277CBEB18];
  v10 = [v6 characteristics];
  v113 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v105 = v6;
  v11 = [v6 characteristics];
  v12 = [v11 countByEnumeratingWithState:&v121 objects:v132 count:16];
  v112 = self;
  v108 = a4;
  if (!v12)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v122;
  v110 = v11;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v122 != v15)
      {
        objc_enumerationMutation(v11);
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
          v21 = self;
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

            a4 = v108;
          }

          objc_autoreleasePoolPop(v20);
          v14 = v114;
          v11 = v110;
          self = v112;
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
          v65 = self;
          v66 = HMFGetOSLogHandle();
          v6 = v105;
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
          if (a4)
          {
            [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid service reason:multiple Service Instance ID characteristics." suggestion:0 underlyingError:{0, 0}];
            *a4 = v28 = 0;
          }

          else
          {
            v28 = 0;
          }

          goto LABEL_55;
        }

        v14 = _parseServiceInstanceID(v17, a4);
        if (!v14)
        {
          v69 = objc_autoreleasePoolPush();
          v70 = self;
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
          v6 = v105;
LABEL_55:
          v8 = v109;
          goto LABEL_76;
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v121 objects:v132 count:16];
  }

  while (v13);
LABEL_32:
  v115 = v14;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v11 = v113;
  v36 = [v11 countByEnumeratingWithState:&v116 objects:v125 count:16];
  v111 = v11;
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
        objc_enumerationMutation(v11);
      }

      v40 = *(*(&v116 + 1) + 8 * v39);
      v41 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v42 = [v41 characteristicSignatures];
      v43 = [v40 cbCharacteristic];
      v44 = [v42 objectForKey:v43];

      if (!v44)
      {
        v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing characteristic signature for characteristic: %@", v40];
        v75 = objc_autoreleasePoolPush();
        v76 = v112;
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
        if (v108)
        {
          *v108 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v74 reason:0 suggestion:0 underlyingError:0];
        }

        v28 = 0;
        v6 = v105;
        v14 = v115;
        goto LABEL_76;
      }

      v45 = MEMORY[0x277CBE0A0];
      v46 = [v44 serviceType];
      v47 = [v46 UUIDString];
      v48 = [v45 UUIDWithString:v47];

      v49 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v48];
      v50 = [v44 serviceType];
      if ([v50 isEqual:v109])
      {

        goto LABEL_41;
      }

      v51 = [v49 isEqual:v109];

      if ((v51 & 1) == 0)
      {
        v94 = MEMORY[0x277CCACA8];
        v95 = [v44 serviceType];
        v96 = [v95 UUIDString];
        v8 = v109;
        v97 = [v109 UUIDString];
        v98 = [v48 UUIDString];
        v107 = [v94 stringWithFormat:@"The authenticated service type, %@, does not match the service type, %@ or %@, for characteristic: %@", v96, v97, v98, v40];

        v99 = objc_autoreleasePoolPush();
        v100 = v112;
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
        v6 = v105;
        v81 = v107;
        v85 = v108;
        goto LABEL_73;
      }

LABEL_41:
      v52 = [v44 serviceInstanceID];
      v53 = [v52 isEqualToNumber:v115];

      if ((v53 & 1) == 0)
      {
        v79 = MEMORY[0x277CCACA8];
        v80 = [v44 serviceInstanceID];
        v81 = [v79 stringWithFormat:@"The authenticated service instance ID, %@, does not match the service instance ID, %@, for characteristic: %@", v80, v115, v40];

        v82 = objc_autoreleasePoolPush();
        v83 = v112;
        v84 = HMFGetOSLogHandle();
        v85 = v108;
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
        v6 = v105;
        v8 = v109;
LABEL_73:
        v14 = v115;
        if (v85)
        {
          *v85 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:v81 reason:0 suggestion:0 underlyingError:0];
        }

        v28 = 0;
        v11 = v111;
        goto LABEL_76;
      }

      ++v39;
      v11 = v111;
      self = v112;
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

  v54 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v55 = [v54 serviceSignatures];
  v6 = v105;
  v56 = [v55 objectForKey:v105];

  v57 = [HAPService alloc];
  v8 = v109;
  v58 = [v109 UUIDString];
  v59 = [v11 copy];
  v60 = [v56 serviceProperties];
  v106 = v56;
  v61 = [v56 linkedServices];
  v62 = [v61 copy];
  v28 = [(HAPService *)v57 initWithType:v58 instanceID:v115 parsedCharacteristics:v59 serviceProperties:v60 linkedServices:v62];

  if (v28)
  {
    [(HAPService *)v28 setCBService:v105];
    v63 = v28;
    v14 = v115;
  }

  else
  {
    v87 = MEMORY[0x277CCACA8];
    v88 = [v109 UUIDString];
    v89 = [v87 stringWithFormat:@"Failed to create service with type, %@, service instance ID, %@, characteristics, %@", v88, v115, v111];

    v90 = objc_autoreleasePoolPush();
    v91 = v112;
    v92 = HMFGetOSLogHandle();
    v14 = v115;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = HMFGetLogIdentifier();
      *buf = 138543618;
      v127 = v93;
      v128 = 2112;
      v129 = v89;
      _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      v14 = v115;
    }

    objc_autoreleasePoolPop(v90);
    if (v108)
    {
      *v108 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v89 reason:0 suggestion:0 underlyingError:0 marker:225];
    }
  }

  v11 = v106;
LABEL_76:

LABEL_77:
LABEL_78:

  v103 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)shouldVerifyHAPService:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 UUID];
    v9 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = [v4 UUID];
    v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
    if ([v5 isEqual:v6])
    {
      v7 = [(HAPAccessoryServerBTLE *)self isPaired];
    }

    else
    {
      v12 = [v4 UUID];
      v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
      if ([v12 isEqual:v13])
      {
        v7 = [(HAPAccessoryServerBTLE *)self isPaired];
      }

      else
      {
        v7 = 1;
      }
    }
  }

LABEL_6:
  return v7;
}

- (BOOL)shouldVerifyHAPCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [v5 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  if ([v6 isEqual:v7])
  {
  }

  else
  {
    v8 = [v4 service];
    v9 = [v8 UUID];
    v10 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v4 UUID];
  v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004C-0000-1000-8000-0026BB765291"];
  if (![v12 isEqual:v13])
  {
    v14 = [v4 UUID];
    v9 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004E-0000-1000-8000-0026BB765291"];
    if ([v14 isEqual:v9])
    {

      goto LABEL_7;
    }

    v16 = [v4 UUID];
    v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004F-0000-1000-8000-0026BB765291"];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_8;
    }

LABEL_10:
    v19 = [v4 service];
    v20 = [v19 UUID];
    v21 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
    v22 = [v20 isEqual:v21];
    if ((v22 & 1) == 0)
    {
      v23 = [v4 service];
      v24 = [v23 UUID];
      v9 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
      if (![v24 isEqual:v9])
      {
        LOBYTE(v28) = 0;
LABEL_19:

LABEL_20:
        v15 = v28 ^ 1;
        goto LABEL_21;
      }

      v30 = v24;
      v32 = v23;
    }

    v25 = self;
    v26 = [v4 UUID];
    v27 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000014-0000-1000-8000-0026BB765291"];
    if ([v26 isEqual:v27])
    {
      v28 = ![(HAPAccessoryServerBTLE *)v25 isPaired];
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    v24 = v31;

    v23 = v32;
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

- (BOOL)isHAPCharacteristic:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_isServiceInstanceIDCharacteristic(v3))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 descriptors];
    if ([v5 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v16 = v5;
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v17 + 1) + 8 * i) UUID];
            v12 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v13 = [v11 isEqual:v12];

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
        v5 = v16;
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

- (void)_handleReadServiceSignature:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v7])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke;
      v12[3] = &unk_2786D7078;
      v12[4] = self;
      v13 = v6;
      v8 = v7;
      v14 = v8;
      __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v10 = [v9 readingSignatureServices];
    [v10 removeObject:v6];

    v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v10) = [v11 isComplete];

    if (v10)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_handleReadCharacteristicSignature:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v7])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke;
      v12[3] = &unk_2786D7078;
      v12[4] = self;
      v13 = v6;
      v8 = v7;
      v14 = v8;
      __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v10 = [v9 readingSignatureCharacteristics];
    [v10 removeObject:v6];

    v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v10) = [v11 isComplete];

    if (v10)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_readServiceSignature:(id)a3
{
  v126 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v4])
  {
    v5 = objc_opt_class();
    v6 = [v4 service];
    v7 = [v6 UUID];
    v8 = [v5 hapUUIDFromBTLEUUID:v7];

    if (v8)
    {
      v9 = [v4 service];
      v10 = [(_HAPAccessoryServerBTLE200 *)self _getServiceInstanceID:v9];

      v117 = 0;
      v11 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:v4 error:&v117];
      v12 = v117;
      if (v10 | v11)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v13 = 0;
        }

        else
        {
          v31 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([v31 discoveryType])
          {
            v13 = 0;
          }

          else
          {
            v32 = [v4 service];
            v13 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPService:v32];
          }
        }

        v33 = [v4 service];
        v30 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:v33];

        v110 = v10;
        if (v13 || !v30)
        {
          if (v13 && [0 isAuthenticated])
          {
            v51 = objc_autoreleasePoolPush();
            v52 = self;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v54 = HMFGetLogIdentifier();
              [v4 service];
              v56 = v55 = v11;
              *buf = 138543618;
              v119 = v54;
              v120 = 2112;
              v121 = v56;
              _os_log_impl(&dword_22AADC000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading service signature for service: %@", buf, 0x16u);

              v11 = v55;
              v10 = v110;
            }

            objc_autoreleasePoolPop(v51);
            v47 = [(_HAPAccessoryServerBTLE200 *)v52 discoveryContext];
            v48 = [(HAPBTLEServiceSignature *)v47 serviceSignatures];
            v49 = [v4 service];
            [v48 setObject:0 forKey:v49];
          }

          else
          {
            v107 = v30;
            v57 = objc_autoreleasePoolPush();
            v58 = self;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v60 = HMFGetLogIdentifier();
              [v4 service];
              v62 = v61 = v11;
              *buf = 138543618;
              v119 = v60;
              v120 = 2112;
              v121 = v62;
              _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for service: %@", buf, 0x16u);

              v11 = v61;
            }

            objc_autoreleasePoolPop(v57);
            v63 = +[HAPMetadata getSharedInstance];
            v64 = [v8 UUIDString];
            v65 = [(HAPBTLEServiceSignature *)v63 getDefaultServiceProperties:v64];

            v109 = v11;
            v104 = v65;
            v105 = v63;
            if (v65)
            {
              v65 = [v65 unsignedLongLongValue];
            }

            v66 = [HAPService alloc];
            v67 = [v8 UUIDString];
            v49 = [(HAPService *)v66 initWithType:v67 instanceID:v110 parsedCharacteristics:0 serviceProperties:v65 linkedServices:0];

            if (v49)
            {
              v68 = [v4 service];
              [(HAPService *)v49 setCBService:v68];

              v69 = [HAPCharacteristic alloc];
              v70 = [v4 UUID];
              v71 = [v70 UUIDString];
              v72 = [(HAPAccessoryServerBTLE *)v58 stateNumber];
              LOBYTE(v101) = 1;
              v73 = [(HAPCharacteristic *)v69 initWithType:v71 instanceID:v109 value:0 stateNumber:v72 properties:2 eventNotificationsEnabled:0 implicitWriteWithResponse:v101 metadata:0];

              v74 = v73;
              [(HAPCharacteristic *)v73 setCBCharacteristic:v4];
              [(HAPCharacteristic *)v73 setService:v49];
              v75 = [(_HAPAccessoryServerBTLE200 *)v58 discoveryContext];
              v76 = [v75 discoveryType] == 0;

              v116 = 0;
              v77 = [objc_opt_class() signatureRequestForService:v49 characteristic:v74 requiresAuthentication:v76 error:&v116];
              v78 = v116;
              v102 = v78;
              v103 = v74;
              if (v77)
              {
                [v4 service];
                v80 = v79 = v77;
                v111[0] = MEMORY[0x277D85DD0];
                v111[1] = 3221225472;
                v111[2] = __52___HAPAccessoryServerBTLE200__readServiceSignature___block_invoke;
                v111[3] = &unk_2786D3F80;
                v112 = v80;
                v113 = v58;
                v114 = v110;
                v115 = v8;
                v81 = v80;
                v82 = MEMORY[0x231885210](v111);
                [(_HAPAccessoryServerBTLE200 *)v58 _sendRequest:v79 shouldPrioritize:0 responseHandler:v82];
                v83 = [(_HAPAccessoryServerBTLE200 *)v58 discoveryContext];
                v84 = [v83 readingSignatureServices];
                v85 = [v4 service];
                [v84 addObject:v85];

                v77 = v79;
              }

              else
              {
                v95 = v78;
                v96 = objc_autoreleasePoolPush();
                v97 = v58;
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
                v81 = [v4 service];
                [(_HAPAccessoryServerBTLE200 *)v97 _handleReadServiceSignature:v81 error:v95];
              }

              v11 = v109;
              v47 = v105;

              v10 = v110;
              v30 = v107;
              v93 = v102;
              v94 = v103;
            }

            else
            {
              v86 = MEMORY[0x277CCACA8];
              v87 = [v8 UUIDString];
              v88 = [v86 stringWithFormat:@"Failed to create service with type, %@, instance ID, %@, properties, %tu", v87, v110, v65];

              v89 = objc_autoreleasePoolPush();
              v90 = v58;
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
              [(_HAPAccessoryServerBTLE200 *)v90 _handleReadCharacteristicSignature:v4 error:v93];
              v11 = v109;
              v10 = v110;
              v94 = v88;
              v47 = v105;
              v30 = v107;
            }

            v48 = v104;
          }
        }

        else
        {
          v106 = v8;
          v108 = v11;
          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v38 = v37 = v30;
            v39 = [v4 service];
            *buf = 138543618;
            v119 = v38;
            v120 = 2112;
            v121 = v39;
            _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Found cached service signature, skipping reading service signature for service: %@", buf, 0x16u);

            v30 = v37;
          }

          objc_autoreleasePoolPop(v34);
          v40 = [HAPBTLEServiceSignature alloc];
          v41 = objc_alloc(MEMORY[0x277CCAD78]);
          v42 = [(__CFString *)v30 type];
          v43 = [v41 initWithUUIDString:v42];
          v44 = [(__CFString *)v30 instanceID];
          v45 = [(__CFString *)v30 serviceProperties];
          v46 = [(__CFString *)v30 linkedServices];
          v47 = [(HAPBTLEServiceSignature *)v40 initWithServiceType:v43 serviceInstanceID:v44 serviceProperties:v45 linkedServices:v46 authenticated:0];

          v48 = [(_HAPAccessoryServerBTLE200 *)v35 discoveryContext];
          v49 = [v48 serviceSignatures];
          v50 = [v4 service];
          [(HAPService *)v49 setObject:v47 forKey:v50];

          v11 = v108;
          v10 = v110;
          v8 = v106;
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = [v4 service];
          *buf = 138544130;
          v119 = v28;
          v120 = 2112;
          v121 = v29;
          v122 = 2112;
          v123 = v4;
          v124 = 2112;
          v125 = v12;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to get service/characteristic, %@/%@, instance ID with error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v25);
        v30 = [v4 service];
        [(_HAPAccessoryServerBTLE200 *)v26 _handleReadServiceSignature:v30 error:v12];
      }
    }

    else
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [v4 service];
      v20 = [v19 UUID];
      v12 = [v18 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v20];

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v119 = v24;
        v120 = 2112;
        v121 = v12;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:v12 reason:0 suggestion:0 underlyingError:0 marker:221];
      v11 = [v4 service];
      [(_HAPAccessoryServerBTLE200 *)v22 _handleReadServiceSignature:v11 error:v10];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
    v12 = [v4 service];
    [(_HAPAccessoryServerBTLE200 *)v15 _handleReadServiceSignature:v12 error:v8];
  }

  v100 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicSignature:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v4])
  {
    v5 = objc_opt_class();
    v6 = [(__CFString *)v4 UUID];
    v7 = [v5 hapUUIDFromBTLEUUID:v6];

    if (v7)
    {
      v94 = 0;
      v8 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:v4 error:&v94];
      v9 = v94;
      if (v8)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v10 = 0;
        }

        else
        {
          v25 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([v25 discoveryType])
          {
            v10 = 0;
          }

          else
          {
            v10 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPCharacteristic:v4];
          }
        }

        v26 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:v4];
        v27 = v26;
        if (v10 || !v26)
        {
          if (v10 && [0 isAuthenticated])
          {
            v45 = objc_autoreleasePoolPush();
            v46 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              v48 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v48;
              v97 = 2112;
              v98 = v4;
              _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v45);
            v42 = [(_HAPAccessoryServerBTLE200 *)v46 discoveryContext];
            v43 = [(HAPBTLECharacteristicSignature *)v42 characteristicSignatures];
            [v43 setObject:0 forKey:v4];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v50 = self;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v52;
              v97 = 2112;
              v98 = v4;
              _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for characteristic: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
            v53 = +[HAPMetadata getSharedInstance];
            v90 = v7;
            v54 = [v7 UUIDString];
            v43 = [(HAPBTLECharacteristicSignature *)v53 getDefaultCharacteristicProperties:v54];

            v88 = v9;
            v80 = v27;
            v84 = v53;
            if (v43)
            {
              v55 = [v43 unsignedLongLongValue];
            }

            else
            {
              v55 = 2;
            }

            v56 = [HAPCharacteristic alloc];
            v57 = [v7 UUIDString];
            v58 = [(HAPAccessoryServerBTLE *)v50 stateNumber];
            LOBYTE(v79) = 1;
            v59 = [(HAPCharacteristic *)v56 initWithType:v57 instanceID:v8 value:0 stateNumber:v58 properties:v55 eventNotificationsEnabled:0 implicitWriteWithResponse:v79 metadata:0];

            v86 = v8;
            if (v59)
            {
              [(HAPCharacteristic *)v59 setCBCharacteristic:v4];
              v60 = [(_HAPAccessoryServerBTLE200 *)v50 discoveryContext];
              v61 = [v60 discoveryType] == 0;

              v93 = 0;
              v62 = [objc_opt_class() signatureRequestForCharacteristic:v59 requiresAuthentication:v61 error:&v93];
              v63 = v93;
              if (v62)
              {
                v91[0] = MEMORY[0x277D85DD0];
                v91[1] = 3221225472;
                v91[2] = __59___HAPAccessoryServerBTLE200__readCharacteristicSignature___block_invoke;
                v91[3] = &unk_2786D3F58;
                v91[4] = v50;
                v64 = v4;
                v92 = v64;
                v65 = MEMORY[0x231885210](v91);
                [(_HAPAccessoryServerBTLE200 *)v50 _sendRequest:v62 shouldPrioritize:0 responseHandler:v65];
                v66 = [(_HAPAccessoryServerBTLE200 *)v50 discoveryContext];
                v67 = [v66 readingSignatureCharacteristics];
                [v67 addObject:v64];
              }

              else
              {
                v74 = objc_autoreleasePoolPush();
                v75 = v50;
                v76 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v77 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v96 = v77;
                  v97 = 2112;
                  v98 = v4;
                  v99 = 2112;
                  v100 = v63;
                  _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for characteristic, %@, with error: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v74);
                [(_HAPAccessoryServerBTLE200 *)v75 _handleReadCharacteristicSignature:v4 error:v63];
                v62 = 0;
              }
            }

            else
            {
              v68 = MEMORY[0x277CCACA8];
              v69 = [v7 UUIDString];
              v63 = [v68 stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %hu", v69, v8, v55];

              v70 = objc_autoreleasePoolPush();
              v71 = v50;
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
              [(_HAPAccessoryServerBTLE200 *)v71 _handleReadCharacteristicSignature:v4 error:v62];
            }

            v27 = v80;

            v8 = v86;
            v9 = v88;
            v7 = v90;
            v42 = v84;
          }
        }

        else
        {
          v87 = v9;
          v89 = v7;
          v85 = v8;
          v28 = objc_autoreleasePoolPush();
          v29 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v96 = v31;
            v97 = 2112;
            v98 = v4;
            _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Found cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v81 = [HAPBTLECharacteristicSignature alloc];
          v32 = objc_alloc(MEMORY[0x277CCAD78]);
          v83 = [v27 type];
          v33 = [v32 initWithUUIDString:v83];
          v34 = [v27 service];
          v35 = [v34 instanceID];
          v36 = objc_alloc(MEMORY[0x277CCAD78]);
          [v27 service];
          v37 = v82 = v29;
          v38 = [v37 type];
          v39 = [v36 initWithUUIDString:v38];
          v40 = [v27 properties];
          v41 = [v27 metadata];
          v42 = [(HAPBTLECharacteristicSignature *)v81 initWithCharacteristicType:v33 serviceInstanceID:v35 serviceType:v39 characteristicProperties:v40 characteristicMetadata:v41 authenticated:0];

          v43 = [(_HAPAccessoryServerBTLE200 *)v82 discoveryContext];
          v44 = [v43 characteristicSignatures];
          [v44 setObject:v42 forKey:v4];

          v8 = v85;
          v9 = v87;
          v7 = v89;
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
          *buf = 138543874;
          v96 = v24;
          v97 = 2112;
          v98 = v4;
          v99 = 2112;
          v100 = v9;
          _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get characteristic, %@, instance ID with error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        [(_HAPAccessoryServerBTLE200 *)v22 _handleReadCharacteristicSignature:v4 error:v9];
        v8 = 0;
      }
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [(__CFString *)v4 UUID];
      v9 = [v15 stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v16];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
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
      [(_HAPAccessoryServerBTLE200 *)v18 _handleReadCharacteristicSignature:v4 error:v8];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    [(_HAPAccessoryServerBTLE200 *)v12 _handleReadCharacteristicSignature:v4 error:v7];
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
        v8 = [v7 type];
        v9 = [v8 isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

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

- (id)_getServiceInstanceID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 characteristics];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (_isServiceInstanceIDCharacteristic(v9))
        {
          v6 = _parseServiceInstanceID(v9, 0);
          if (!v6)
          {
            v10 = objc_autoreleasePoolPush();
            v11 = self;
            v12 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = HMFGetLogIdentifier();
              *buf = 138543874;
              v21 = v13;
              v22 = 2114;
              v23 = v4;
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

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
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

- (id)_getCharacteristicInstanceID:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  [a3 descriptors];
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
        v10 = [v9 UUID];
        v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v13 = _parseCharacteristicInstanceID(v9, a4);

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

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Characteristic missing the characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
    *a4 = v13 = 0;
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
  v3 = [(HAPAccessoryServerBTLE *)self peripheral];
  v4 = [v3 services];

  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([objc_opt_class() isHAPService:v9])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = [v9 characteristics];
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                  objc_enumerationMutation(v10);
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

              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v17 = [v16 isComplete];

  if (v17)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateValueForCharacteristic:(id)a3 error:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v9 = [v8 readingCharacteristics];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:v6 error:v7];
  }

  else
  {
    v11 = [v6 value];
    if ([v11 length])
    {
      v33 = v11;
      v34 = v7;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            v18 = [v17 characteristic];
            v19 = [v18 cbCharacteristic];
            v20 = [v19 isEqual:v6];

            if (v20)
            {
              v25 = [v17 characteristic];
              v11 = v33;
              v7 = v34;
              [(_HAPAccessoryServerBTLE200 *)self _handleResponseData:v33 fromCharacteristic:v25 error:v34];

              goto LABEL_23;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v24;
        v42 = 2114;
        v43 = v6;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Received unexpected response from characteristic: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v11 = v33;
      v7 = v34;
    }

    else
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:v6];
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      v29 = v28;
      if (v12)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v30;
          v42 = 2114;
          v43 = v6;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Received zero-length value for characteristic: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [(_HAPAccessoryServerBTLE200 *)v27 _handleEventIndicationForCharacteristic:v12];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v31;
          v42 = 2114;
          v43 = v6;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Received characteristic indication from unmapped characteristic: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

LABEL_23:
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadDescriptorValue:(id)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 characteristic];
    v13 = [v6 value];
    v18 = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Read value of descriptor: %{public}@ for characteristic: %{public}@ value: %{public}@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)v9 _cancelDiscoveryWithError:v7];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v9 _kickConnectionIdleTimer];
    v14 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
    v15 = [v14 readingDescriptors];
    [v15 removeObject:v6];

    v16 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
    LODWORD(v15) = [v16 isComplete];

    if (v15)
    {
      [(_HAPAccessoryServerBTLE200 *)v9 _readCharacteristicSignatures];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_readDescriptorValue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 value];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of descriptor: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(_HAPAccessoryServerBTLE200 *)v7 discoveryContext];
    v11 = [v10 readingDescriptors];
    [v11 addObject:v4];

    v12 = [(HAPAccessoryServerBTLE *)v7 peripheral];
    [v12 readValueForDescriptor:v4];
  }

  v13 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v14 = [v13 isComplete];

  if (v14)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadCharacteristicValue:(id)a3 error:(id)a4
{
  v10 = a3;
  if (a4)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:a4];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v6 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v7 = [v6 readingCharacteristics];
    [v7 removeObject:v10];

    v8 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v7) = [v8 isComplete];

    if (v7)
    {
      [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
    }

    if (_isServiceInstanceIDCharacteristic(v10))
    {
      v9 = [v10 service];
      [(_HAPAccessoryServerBTLE200 *)self _handleReadServiceInstanceId:v9];
    }
  }
}

- (void)_readCharacteristicValue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v6 = [v5 readingCharacteristics];
  [v6 addObject:v4];

  v7 = [v4 value];

  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:v4 error:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of characteristic: %{public}@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServerBTLE *)v9 peripheral];
    [v12 readValueForCharacteristic:v4];
  }

  v13 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v14 = [v13 isComplete];

  if (v14)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredDescriptors:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_opt_class() isHAPDescriptor:v9])
        {
          [(_HAPAccessoryServerBTLE200 *)self _readDescriptorValue:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredCharacteristic:(id)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 descriptors];
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Discovered descriptors: %@ for characteristic: %@ with error: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)v9 _cancelDiscoveryWithError:v7];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v9 _kickConnectionIdleTimer];
    if ([(_HAPAccessoryServerBTLE200 *)v9 isHAPCharacteristic:v6])
    {
      v13 = [v6 descriptors];
      [(_HAPAccessoryServerBTLE200 *)v9 _handleDiscoveredDescriptors:v13];
    }

    v14 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
    v15 = [v14 discoveringCharacteristics];
    [v15 removeObject:v6];

    v16 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
    LODWORD(v15) = [v16 isComplete];

    if (v15)
    {
      [(_HAPAccessoryServerBTLE200 *)v9 _readCharacteristicSignatures];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_discoverCharacteristic:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v6 = [v5 discoveringCharacteristics];
  [v6 addObject:v4];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Discovering characteristic: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPAccessoryServerBTLE *)v8 peripheral];
  [v11 discoverDescriptorsForCharacteristic:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadServiceInstanceId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() isHAPService:v4])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 characteristics];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ((_isServiceInstanceIDCharacteristic(v10) & 1) == 0 && [(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v10])
          {
            [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristic:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v12 = [v11 discoveringServices];
  [v12 removeObject:v4];

  v13 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  LODWORD(v12) = [v13 isComplete];

  if (v12)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredCharacteristicsForService:(id)a3 error:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v7];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    if ([objc_opt_class() isHAPService:v6] && !-[_HAPAccessoryServerBTLE200 hasValidCache](self, "hasValidCache"))
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [v6 characteristics];
      v19 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(v12);
            }

            v23 = *(*(&v24 + 1) + 8 * i);
            if (_isServiceInstanceIDCharacteristic(v23))
            {
              [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicValue:v23];
              goto LABEL_8;
            }
          }

          v20 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v11;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Removing Service: %@ from discovery context", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
      v13 = [v12 discoveringServices];
      [v13 removeObject:v6];
    }

LABEL_8:

    if (![(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      v14 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v15 = [v14 isComplete];

      if (v15)
      {
        [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
      }
    }

    if ([(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      v16 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v17 = [v16 isComplete];

      if (v17)
      {
        [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_discoverCharacteristicsForService:(id)a3
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
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Discovering service: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(_HAPAccessoryServerBTLE200 *)v6 discoveryContext];
  v10 = [v9 discoveringServices];
  [v10 addObject:v4];

  v11 = [(HAPAccessoryServerBTLE *)v6 peripheral];
  [v11 discoverCharacteristics:0 forService:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveredServices:(id)a3 error:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!a4)
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v6;
    obj = v6;
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
          v12 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          v13 = [v12 discoveryType];

          if (v13 == 1)
          {
            v14 = [v11 UUID];
            v15 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
            if ([v14 isEqual:v15])
            {

LABEL_26:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11, v29];
              goto LABEL_27;
            }

            v16 = [v11 UUID];
            v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v19 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            v20 = [v19 discoveryType];

            if (v20 != 2)
            {
              goto LABEL_18;
            }

            v21 = [v11 UUID];
            v22 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
            if ([v21 isEqual:v22])
            {
              goto LABEL_17;
            }

            v23 = [v11 UUID];
            v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
            if ([v23 isEqual:v24])
            {

LABEL_17:
LABEL_18:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11, v29];
              goto LABEL_19;
            }

            [v11 UUID];
            v25 = v30 = v23;
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

        v6 = v29;
        goto LABEL_28;
      }
    }
  }

  [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:a4];
LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_discoverServices
{
  v2 = [(HAPAccessoryServerBTLE *)self peripheral];
  [v2 discoverServices:0];
}

- (void)_cacheServices:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(_HAPAccessoryServerBTLE200 *)v6 accessoryCache];
    *buf = 138543618;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: current Cache : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v4;
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

        v16 = [(_HAPAccessoryServerBTLE200 *)v6 _serviceCacheFromHAPService:*(*(&v27 + 1) + 8 * v15) serviceOrder:v14, v27];
        ++v14;
        v17 = [(_HAPAccessoryServerBTLE200 *)v6 accessoryCache];
        [v17 updateWithService:v16];

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v18 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
  v19 = [(_HAPAccessoryServerBTLE200 *)v6 accessoryCache];
  [v19 setDiscoveryVersion:v18];

  v20 = [(_HAPAccessoryServerBTLE200 *)v6 accessoryCache];
  [v20 save];

  [(_HAPAccessoryServerBTLE200 *)v6 setHasValidCache:1];
  v21 = objc_autoreleasePoolPush();
  v22 = v6;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [(_HAPAccessoryServerBTLE200 *)v22 accessoryCache];
    *buf = 138543618;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Saved Valid Cache : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)_serviceCacheFromHAPService:(id)a3 serviceOrder:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HAPBLEServiceCache alloc];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v5 type];
  v9 = [v7 initWithUUIDString:v8];
  v10 = [v5 instanceID];
  v11 = [v5 serviceProperties];
  v12 = [v5 linkedServices];
  v13 = [(HAPBLEServiceCache *)v6 initWithServiceUUID:v9 instanceId:v10 instanceOrder:a4 serviceProperties:v11 linkedServices:v12];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v5;
  obj = [v5 characteristics];
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
        v21 = [v18 type];
        v22 = [v20 initWithUUIDString:v21];
        v23 = [v18 instanceID];
        v24 = [v18 properties];
        v25 = [v18 accessoryMetadata];
        v26 = [(HAPBLECharacteristicCache *)v19 initWithCharacteristicUUID:v22 instanceId:v23 characteristicProperties:v24 characteristicMetadata:v25];

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
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v7 = [v6 discoveryType];

  if (v7 == 2)
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = @"00000055-0000-1000-8000-0026BB765291";
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_10;
      }

      v8 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
      v9 = [v8 cachedServices];
      [v4 addObjectsFromArray:v9];

      goto LABEL_9;
    }

    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = @"0000003E-0000-1000-8000-0026BB765291";
  }

  v12 = [v10 initWithUUIDString:v11];
  v8 = [(_HAPAccessoryServerBTLE200 *)self _getCachedService:v12];

  if (!v8)
  {
    goto LABEL_10;
  }

  [v4 addObject:v8];
LABEL_9:

LABEL_10:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v13 = v4;
  v62 = [v13 countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v62)
  {
    v14 = *v79;
    v15 = 0x277CBE000uLL;
    v65 = v13;
    v66 = v5;
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
      v18 = [v17 serviceUUID];
      v19 = -[_HAPAccessoryServerBTLE200 _getCBService:instanceOrder:](self, "_getCBService:instanceOrder:", v18, [v17 serviceInstanceOrder]);

      if (!v19)
      {
        v56 = objc_autoreleasePoolPush();
        v57 = self;
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
      v20 = [*(v3 + 2840) array];
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
        v67 = v20;
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
            v23 = [v22 characteristicUUID];
            v24 = [v22 characteristicInstanceId];
            v25 = [(_HAPAccessoryServerBTLE200 *)self _getCBCharacteristic:v23 instanceId:v24 service:v19];

            v26 = [(HAPAccessoryServer *)self primaryAccessory];
            v27 = [v22 characteristicInstanceId];
            v28 = [v26 characteristicWithInstanceID:v27];

            if (!v28)
            {
              v71 = v25;
              v29 = v15;
              v30 = [HAPCharacteristic alloc];
              v70 = [v22 characteristicUUID];
              v31 = [v70 UUIDString];
              v32 = [v22 characteristicInstanceId];
              v33 = self;
              v34 = [(HAPAccessoryServerBTLE *)self stateNumber];
              v35 = [v22 characteristicProperties];
              v36 = [v22 characteristicMetadata];
              LOBYTE(v60) = 1;
              v28 = [(HAPCharacteristic *)v30 initWithType:v31 instanceID:v32 value:0 stateNumber:v34 properties:v35 eventNotificationsEnabled:0 implicitWriteWithResponse:v60 metadata:v36];

              if (!v28)
              {
                v50 = objc_autoreleasePoolPush();
                v51 = v33;
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
                v5 = v66;
                goto LABEL_36;
              }

              self = v33;
              v20 = v67;
              v19 = v68;
              v15 = v29;
              v25 = v71;
            }

            v37 = [*(v15 + 2728) distantPast];
            [(HAPCharacteristic *)v28 setValueUpdatedTime:v37];

            v38 = [(HAPAccessoryServerBTLE *)self stateNumber];
            [(HAPCharacteristic *)v28 setStateNumber:v38];

            [(HAPCharacteristic *)v28 setCBCharacteristic:v25];
            [v20 addObject:v28];
          }

          v73 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }
      }

      v39 = [(HAPAccessoryServer *)self primaryAccessory];
      v40 = [v63 serviceInstanceId];
      v41 = [v39 serviceWithInstanceID:v40];

      if (v41)
      {
        break;
      }

      v42 = [HAPService alloc];
      v43 = [v63 serviceUUID];
      v44 = [v43 UUIDString];
      v45 = [v63 serviceInstanceId];
      v46 = [v63 serviceProperties];
      v47 = [v63 linkedServices];
      v41 = [(HAPService *)v42 initWithType:v44 instanceID:v45 parsedCharacteristics:v20 serviceProperties:v46 linkedServices:v47];

      v13 = v65;
      v5 = v66;
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
    v5 = v66;
    v3 = 0x277CBE000;
    v15 = 0x277CBE000;
LABEL_29:
    v48 = [(HAPAccessoryServer *)self primaryAccessory];
    [(HAPService *)v41 setAccessory:v48];

    [(HAPService *)v41 setCBService:v19];
    [v5 addObject:v41];

    goto LABEL_30;
  }

LABEL_32:

  v49 = v5;
LABEL_37:

  v54 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)_getCachedService:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  v6 = [v5 cachedServices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 serviceUUID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_getCBService:(id)a3 instanceOrder:(unint64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v5 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:?];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = self;
  v6 = [(HAPAccessoryServerBTLE *)self peripheral];
  v7 = [v6 services];
  v8 = [v7 copy];

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
        v17 = [v15 UUID];
        v18 = [v17 isEqual:v5];

        if (v18)
        {
          v19 = v15;

          v11 = v19;
        }

        v12 += v16;
        v20 = [v15 UUID];
        v21 = [v20 isEqual:v5];

        if (v21)
        {
          v22 = v12 == a4;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v15;

          v24 = v31;
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
  v26 = v34;
  v27 = HMFGetOSLogHandle();
  v24 = v31;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544130;
    v40 = v28;
    v41 = 2114;
    v42 = v11;
    v43 = 2114;
    v44 = v31;
    v45 = 2050;
    v46 = a4;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: Returning first instance %{public}@ Service for : %{public}@/%{public}tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v11 = v11;
  v23 = v11;
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_getCBCharacteristic:(id)a3 instanceId:(id)a4 service:(id)a5
{
  v26 = self;
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:v7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v8 characteristics];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 UUID];
        v17 = [v16 isEqual:v9];

        if (v17)
        {
          v23 = v15;

          v21 = v27;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v26;
  v20 = HMFGetOSLogHandle();
  v21 = v27;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v22;
    v34 = 2114;
    v35 = v7;
    v36 = 2114;
    v37 = v27;
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
  v3 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!v3)
  {
    goto LABEL_58;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(_HAPAccessoryServerBTLE200 *)v5 discoveryContext];
    *buf = 138543618;
    v112 = v7;
    v113 = 2050;
    v114 = [v8 discoveryType];
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %{public}tu completed.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(_HAPAccessoryServerBTLE200 *)v5 hasValidCache];
  v10 = objc_autoreleasePoolPush();
  v97 = v5;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(_HAPAccessoryServerBTLE200 *)v97 accessoryCache];
      v15 = [v14 peripheralInfo];
      *buf = 138543618;
      v112 = v13;
      v113 = 2114;
      v114 = v15;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Constructing attribute database from cache %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [(_HAPAccessoryServerBTLE200 *)v97 _hapServicesFromCache];
    v17 = objc_autoreleasePoolPush();
    v18 = v97;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v112 = v20;
      v113 = 2114;
      v114 = v16;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database with cached services: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (v16 && [v16 count])
    {
      v21 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
      v22 = [(_HAPAccessoryServerBTLE200 *)v18 accessoryCache];
      [v22 setDiscoveryVersion:v21];
    }

    else
    {
      v109[0] = *MEMORY[0x277CCA450];
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed att-db construction from cache"];
      v110[0] = v77;
      v109[1] = *MEMORY[0x277CCA470];
      v78 = [MEMORY[0x277CCA8D8] mainBundle];
      v79 = [v78 localizedStringForKey:@"Unable to find matching CB service / characteristic" value:&stru_283E79C60 table:0];
      v110[1] = v79;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];

      v80 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:v22];
      [(_HAPAccessoryServerBTLE200 *)v18 _cancelDiscoveryWithError:v80];
      v81 = [(HAPAccessoryServerBTLE *)v18 browser];
      v82 = [(_HAPAccessoryServerBTLE200 *)v18 accessoryCache];
      v83 = [v82 pairingIdentifier];
      [v81 removeCachedAccessoryWithIdentifier:v83];

      [(_HAPAccessoryServerBTLE200 *)v18 setHasValidCache:0];
      v84 = objc_autoreleasePoolPush();
      v85 = v18;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = HMFGetLogIdentifier();
        v88 = [(_HAPAccessoryServerBTLE200 *)v85 accessoryCache];
        *buf = 138543618;
        v112 = v87;
        v113 = 2114;
        v114 = v88;
        _os_log_impl(&dword_22AADC000, v86, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Att-db mismatch removing the cached accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v84);
    }

    v64 = [(HAPAccessoryServer *)v18 primaryAccessory];
    v89 = [v16 copy];
    [v64 setServices:v89];

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
  v24 = [(HAPAccessoryServerBTLE *)v97 peripheral];
  v25 = [v24 services];
  v26 = [v25 copy];

  v27 = v97;
  v98 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v16 = v26;
  v28 = [v16 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0x277CBE000uLL;
    v31 = *v106;
    v99 = v16;
    v100 = *v106;
    do
    {
      v32 = 0;
      do
      {
        if (*v106 != v31)
        {
          objc_enumerationMutation(v16);
        }

        v33 = *(*(&v105 + 1) + 8 * v32);
        if ([objc_opt_class() isHAPService:v33])
        {
          v34 = [(_HAPAccessoryServerBTLE200 *)v27 discoveryContext];
          v35 = [v34 discoveryType];

          if (v35 != 1)
          {
            v45 = [(_HAPAccessoryServerBTLE200 *)v27 discoveryContext];
            v46 = [v45 discoveryType];

            if (v46 != 2)
            {
              goto LABEL_31;
            }

            v36 = [v33 UUID];
            v37 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
            if ([v36 isEqual:v37])
            {
              goto LABEL_30;
            }

            v47 = [v33 UUID];
            v48 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000055-0000-1000-8000-0026BB765291"];
            if ([v47 isEqual:v48])
            {

              v16 = v99;
LABEL_30:

LABEL_31:
              v104 = 0;
              v49 = [(_HAPAccessoryServerBTLE200 *)v27 _parseService:v33 error:&v104];
              v50 = v104;
              if (v49)
              {
                v51 = [(HAPAccessoryServer *)v27 primaryAccessory];
                [v49 setAccessory:v51];

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
                  v114 = v50;
                  _os_log_impl(&dword_22AADC000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse service with error: %{public}@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v52);
                v16 = v99;
              }
            }

            else
            {
              v56 = [v33 UUID];
              v57 = [MEMORY[0x277CBE0A0] UUIDWithString:@"000000A2-0000-1000-8000-0026BB765291"];
              v58 = [v56 isEqual:v57];

              v27 = v97;
              v16 = v99;
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
                v114 = v33;
                _os_log_impl(&dword_22AADC000, v61, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Pairing discovery: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v59);
            }

            v30 = 0x277CBE000;
            goto LABEL_38;
          }

          v36 = [v33 UUID];
          v37 = [*(v30 + 160) UUIDWithString:@"FED3"];
          if ([v36 isEqual:v37])
          {
            goto LABEL_30;
          }

          v38 = [v33 UUID];
          v39 = [*(v30 + 160) UUIDWithString:@"0000003E-0000-1000-8000-0026BB765291"];
          v40 = [v38 isEqual:v39];

          v16 = v99;
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
            v114 = v33;
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
      v63 = [v16 countByEnumeratingWithState:&v105 objects:v117 count:16];
      v29 = v63;
    }

    while (v63);
  }

  v64 = v98;
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
    v71 = [(_HAPAccessoryServerBTLE200 *)v67 discoveryContext];
    v72 = [v71 discoveryType];
    *buf = 138543874;
    v112 = v70;
    v113 = 2114;
    v114 = v98;
    v115 = 2050;
    v116 = v72;
    _os_log_impl(&dword_22AADC000, v69, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database parsing with parsed services: %{public}@, type: %{public}tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v66);
  v73 = [(HAPAccessoryServer *)v67 primaryAccessory];
  v74 = [v98 copy];
  [v73 setServices:v74];

  v75 = [(_HAPAccessoryServerBTLE200 *)v67 discoveryContext];
  v76 = [v75 discoveryType];

  if (!v76)
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
  v93 = [v92 completionHandler];

  if (v93)
  {
    v94 = [(HAPAccessoryServer *)v91 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55___HAPAccessoryServerBTLE200__handleCompletedDiscovery__block_invoke;
    block[3] = &unk_2786D65D8;
    v103 = v93;
    v102 = v90;
    dispatch_async(v94, block);
  }

  [(_HAPAccessoryServerBTLE200 *)v91 setDiscoveryContext:0];

LABEL_58:
  v95 = *MEMORY[0x277D85DE8];
}

- (void)_retryDiscovery
{
  v3 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (v3)
  {
    v4 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    [v4 reset];

    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryRetries:[(_HAPAccessoryServerBTLE200 *)self discoveryRetries]+ 1];
    v5 = [(_HAPAccessoryServerBTLE200 *)self pairVerifyOperationQueue];
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:27];
    [v5 cancelAllOperationsWithError:v6];

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

- (BOOL)_cancelDiscoveryWithError:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!v5)
  {
LABEL_22:
    v30 = 0;
    goto LABEL_23;
  }

  v6 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  v7 = [v6 lastKeyBagIdentityIndexFailingPV];
  if (v7)
  {
    v8 = [(HAPAccessoryServer *)self keyBag];
    v9 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    v10 = [v9 lastKeyBagIdentityIndexFailingPV];
    v11 = [v8 isValidIndex:{objc_msgSend(v10, "integerValue") + 1}];
  }

  else
  {
    v11 = 0;
  }

  v12 = ([(_HAPAccessoryServerBTLE200 *)self discoveryRetries]< 2) | v11;
  v13 = [(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v4];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
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
      v47 = v4;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring cancel discovery request due to BTLE sudden disconnection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_22;
  }

  if (v17)
  {
    v19 = HMFGetLogIdentifier();
    v20 = [(_HAPAccessoryServerBTLE200 *)v15 discoveryContext];
    *buf = 138543874;
    v45 = v19;
    v46 = 2050;
    v47 = [v20 discoveryType];
    v48 = 2114;
    v49 = v4;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %{public}tu cancelled with error: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (!v4)
  {
    v31 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Discovery failed." reason:@"Cancelled." suggestion:0 underlyingError:0];
LABEL_19:
    v32 = v31;
    v33 = [(_HAPAccessoryServerBTLE200 *)v15 discoveryContext];
    v34 = [v33 completionHandler];

    if (v34)
    {
      v35 = [(HAPAccessoryServer *)v15 clientQueue];
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __56___HAPAccessoryServerBTLE200__cancelDiscoveryWithError___block_invoke;
      v41 = &unk_2786D65D8;
      v43 = v34;
      v42 = v32;
      dispatch_async(v35, &v38);
    }

    [(_HAPAccessoryServerBTLE200 *)v15 setDiscoveryContext:0, v38, v39, v40, v41];

    goto LABEL_22;
  }

  v21 = [v4 domain];
  v22 = [v21 isEqualToString:*MEMORY[0x277CBDEE8]] & v12;

  if (v22 != 1)
  {
    [(_HAPAccessoryServerBTLE200 *)v15 setHasValidCache:0];
    v31 = v4;
    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v15;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [(_HAPAccessoryServerBTLE200 *)v24 discoveryContext];
    v28 = [v27 discoveryType];
    v29 = [(_HAPAccessoryServerBTLE200 *)v24 discoveryRetries];
    *buf = 138544130;
    v45 = v26;
    v46 = 2048;
    v47 = v28;
    v48 = 2048;
    v49 = v29;
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

- (void)_discoverWithType:(int64_t)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke;
  v26[3] = &unk_2786D3F08;
  objc_copyWeak(v29, &location);
  v8 = v7;
  v27 = v8;
  v29[1] = a3;
  v9 = v6;
  v28 = v9;
  v10 = MEMORY[0x231885210](v26);
  v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v12 = [v11 isDiscovering];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = MEMORY[0x277CCABB0];
      v18 = [(_HAPAccessoryServerBTLE200 *)v14 discoveryContext];
      v19 = [v17 numberWithInteger:{objc_msgSend(v18, "discoveryType")}];
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
    v21 = [[_HAPBTLEDiscoveryContext alloc] initWithDiscoveryType:a3];
    [(_HAPBTLEDiscoveryContext *)v21 setCompletionHandler:v10];
    [(_HAPBTLEDiscoveryContext *)v21 setDiscovering:1];
    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryContext:v21];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_213;
    v23[3] = &unk_2786D3F30;
    objc_copyWeak(v25, &location);
    v25[1] = a3;
    v20 = v21;
    v24 = v20;
    [(_HAPAccessoryServerBTLE200 *)self connectWithCompletionHandler:v23];

    objc_destroyWeak(v25);
  }

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_readPendingDiscoveredCharacteristicTypesWithCompletion:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteristicsPendingRead];
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];
        v12 = [(HAPAccessoryServer *)self primaryAccessory];
        v13 = v12;
        if (!v11)
        {
          v15 = [v12 characteristicsOfType:v10];
          v14 = [v15 firstObject];

LABEL_10:
          if (!v14)
          {
            continue;
          }

          goto LABEL_11;
        }

        v14 = [v12 characteristicOfType:v10 serviceType:@"0000003E-0000-1000-8000-0026BB765291"];

        if (!v14)
        {
          v13 = [(HAPAccessoryServer *)self primaryAccessory];
          v14 = [v13 characteristicOfType:v10 serviceType:@"FED3"];
          goto LABEL_10;
        }

LABEL_11:
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v7);
  }

  v16 = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteristicsPendingRead];
  [v16 removeAllObjects];

  if ([v4 count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v20;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Reading pending discovered characteristics with types: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v4 copy];
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
          v31 = v4;
          v32 = v26;
          v33 = v29;
          [(_HAPAccessoryServerBTLE200 *)v18 _readValueForCharacteristic:v26 options:1 completionHandler:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v23);
    }

    v27 = v29;
  }

  else
  {
    v27 = v29;
    v29[2](v29);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    v4 = [(HAPAccessoryServer *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke_193;
    v6[3] = &unk_2786D3E68;
    v7 = v3;
    v5 = v3;
    [(_HAPAccessoryServerBTLE200 *)self removePairingForCurrentControllerOnQueue:v4 completion:v6 serverPairingCompletion:v5];
  }
}

- (id)_characteristicForCBCharacteristic:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 service];
  v6 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 characteristics];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 cbCharacteristic];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_serviceForCBService:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(HAPAccessoryServer *)self accessories];
  v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 services];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              v15 = [v14 cbService];
              v16 = [v15 isEqual:v4];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
      v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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

- (void)_createPrimaryAccessoryFromAdvertisementData
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [HAPAccessory alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5 = [(HAPAccessory *)v3 initWithServer:self instanceID:v4];

  v6 = [(HAPAccessoryServer *)self name];
  [(HAPAccessory *)v5 setName:v6];

  v7 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setIdentifier:v7];

  v8 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setServerIdentifier:v8];

  [(HAPAccessoryServer *)self setPrimaryAccessory:v5];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(HAPAccessoryServer *)self setAccessories:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_connectionState = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (int64_t)connectionState
{
  os_unfair_lock_lock_with_options();
  connectionState = self->_connectionState;
  os_unfair_lock_unlock(&self->super.super._lock);
  return connectionState;
}

- (void)setHasBeenDiscovered:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasBeenDiscovered = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasBeenDiscovered
{
  os_unfair_lock_lock_with_options();
  hasBeenDiscovered = self->_hasBeenDiscovered;
  os_unfair_lock_unlock(&self->super.super._lock);
  return hasBeenDiscovered;
}

- (void)setHasValidCache:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasValidCache = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasValidCache
{
  os_unfair_lock_lock_with_options();
  hasValidCache = self->_hasValidCache;
  os_unfair_lock_unlock(&self->super.super._lock);
  return hasValidCache;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HAPAccessoryServerBTLE *)self shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  [(HAPAccessoryServer *)self hasPairings];
  v8 = HMFBooleanToString();
  v9 = [(HAPAccessoryServerBTLE *)self peripheral];
  v10 = [v5 stringWithFormat:@"<%@%@, hasPairings = %@, Peripheral = %@>", v6, v7, v8, v9];

  if (v3)
  {
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(HAPAccessoryServerBTLE *)self peripheral];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = _HAPAccessoryServerBTLE200;
  [(_HAPAccessoryServerBTLE200 *)&v4 dealloc];
}

- (void)_resetWithError:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v8;
    v59 = 2112;
    v60 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting server with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBTLE *)v6 setNotifyingCharacteristicUpdated:0];
  v9 = v4;
  v10 = v9;
  if (!v9)
  {
    if ([(_HAPAccessoryServerBTLE200 *)v6 isPairing]&& ([(_HAPAccessoryServerBTLE200 *)v6 pairingDisconnectionError], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)v6 pairingDisconnectionError];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Cancelled." reason:@"Resetting the server." suggestion:0 underlyingError:0];
    }

    v10 = v12;
  }

  v44 = v9;
  [(_HAPAccessoryServerBTLE200 *)v6 _cancelAllQueuedOperationsWithError:v10];
  [(_HAPAccessoryServerBTLE200 *)v6 _resumeAllOperations];
  v13 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicWriteCompletionHandlers];
  v14 = [v13 keyEnumerator];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  v47 = v6;
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
        v20 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicWriteCompletionHandlers];
        v21 = [v20 objectForKey:v19];

        if (v10)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v6;
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

            v6 = v47;
          }

          objc_autoreleasePoolPop(v22);
        }

        (v21)[2](v21, v10);
      }

      v16 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v16);
  }

  v26 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicWriteCompletionHandlers];
  [v26 removeAllObjects];

  v27 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicEnableEventCompletionHandlers];
  v28 = [v27 keyEnumerator];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = v28;
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
        v34 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicEnableEventCompletionHandlers];
        v35 = [v34 objectForKey:v33];

        if (v10)
        {
          v36 = objc_autoreleasePoolPush();
          v37 = v6;
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

            v6 = v47;
          }

          objc_autoreleasePoolPop(v36);
        }

        (v35)[2](v35, v10);
      }

      v30 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  v40 = [(_HAPAccessoryServerBTLE200 *)v6 characteristicEnableEventCompletionHandlers];
  [v40 removeAllObjects];

  [(_HAPAccessoryServerBTLE200 *)v6 _invokeOperationsReceivedDuringConnectionStateChangeWithError:v10];
  [(_HAPAccessoryServerBTLE200 *)v6 _cancelDiscoveryWithError:v44];
  if ([(_HAPAccessoryServerBTLE200 *)v6 isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)v6 _pairingCompletedWithError:v10];
  }

  v41 = [(_HAPAccessoryServerBTLE200 *)v6 pairSetupSession];
  [(_HAPAccessoryServerBTLE200 *)v6 setPairSetupSession:0];
  [v41 stop];
  v42 = [(_HAPAccessoryServerBTLE200 *)v6 securitySession];
  [(_HAPAccessoryServerBTLE200 *)v6 setSecuritySession:0];
  [v42 close];
  [(_HAPAccessoryServerBTLE200 *)v6 setDiscoveryRetries:0];

  v43 = *MEMORY[0x277D85DE8];
}

- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16
{
  v95 = a8;
  v20 = a3;
  v98 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a10;
  v25 = v21;
  v26 = a11;
  v27 = a12;
  v28 = a14;
  v29 = a15;
  v102.receiver = self;
  v102.super_class = _HAPAccessoryServerBTLE200;
  v93 = a16;
  v97 = v20;
  v30 = v20;
  v31 = v25;
  v32 = v23;
  v33 = v98;
  v34 = [(HAPAccessoryServerBTLE *)&v102 initWithPeripheral:v30 name:v98 pairingUsername:v31 statusFlags:v22 stateNumber:v32 stateChanged:v95 connectReason:a9 configNumber:v24 category:v26 setupHash:v27 connectionIdleTime:a13 browser:v28 keyStore:v29 whbStableIdentifier:v93];
  if (!v34)
  {
    goto LABEL_13;
  }

  v88 = v29;
  v86 = v27;
  v35 = [MEMORY[0x277CBEB18] array];
  pendingRequests = v34->_pendingRequests;
  v34->_pendingRequests = v35;

  v37 = [MEMORY[0x277CBEB18] array];
  pendingResponses = v34->_pendingResponses;
  v34->_pendingResponses = v37;

  v39 = [MEMORY[0x277CBEB18] array];
  operationsReceivedDuringConnectionStateChange = v34->_operationsReceivedDuringConnectionStateChange;
  v34->_operationsReceivedDuringConnectionStateChange = v39;

  v41 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  characteristicWriteCompletionHandlers = v34->_characteristicWriteCompletionHandlers;
  v34->_characteristicWriteCompletionHandlers = v41;

  v43 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  characteristicEnableEventCompletionHandlers = v34->_characteristicEnableEventCompletionHandlers;
  v34->_characteristicEnableEventCompletionHandlers = v43;

  v45 = [MEMORY[0x277CBEB58] set];
  discoveredAccessoryCharacteristicsPendingRead = v34->_discoveredAccessoryCharacteristicsPendingRead;
  v34->_discoveredAccessoryCharacteristicsPendingRead = v45;

  v34->_authenticated = 0;
  v94 = v28;
  v96 = v22;
  v47 = v32;
  v48 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v49 = v24;
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
  v57 = [(HAPAccessoryServer *)v34 clientQueue];
  [(HMFTimer *)v56 setDelegateQueue:v57];

  v58 = [v97 cbPeripheral];
  [v58 setDelegate:v34];

  v59 = [HAPBLEPeripheralInfo alloc];
  v60 = [v97 uniqueBTIdentifier];
  Current = CFAbsoluteTimeGetCurrent();
  v62 = [v97 name];
  v90 = v26;
  v91 = v49;
  v87 = v52;
  v63 = v52;
  v31 = v89;
  v64 = [(HAPBLEPeripheralInfo *)v59 initWithPeripheralInfo:v60 advertisedProtocolVersion:2 previousProtocolVersion:2 resumeSessionId:0 lastSeen:v96 statusFlags:v63 stateNumber:Current configNumber:v49 categoryIdentifier:v26 accessoryName:v62];

  v65 = [v94 cachedAccessoryForIdentifier:v89];
  v66 = [(HAPBLEAccessoryCache *)v65 metadataVersion];
  if (!v66)
  {
    goto LABEL_8;
  }

  v67 = v66;
  v68 = [(HAPBLEAccessoryCache *)v65 cachedServices];
  v69 = [v68 count];
  if (!v91 || !v69)
  {

    goto LABEL_8;
  }

  v70 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  v71 = [v70 configNumber];
  v72 = [v71 isEqual:v91];

  v31 = v89;
  if ((v72 & 1) == 0)
  {
LABEL_8:
    v78 = 0;
    v73 = v65;
    v65 = [[HAPBLEAccessoryCache alloc] initWithPairingIdentifier:v31];
    goto LABEL_9;
  }

  v73 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  v74 = [v73 broadcastKey];
  v75 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  v76 = [v75 keyUpdatedStateNumber];
  v77 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  [v77 keyUpdatedTime];
  [(HAPBLEPeripheralInfo *)v64 saveBroadcastKey:v74 keyUpdatedStateNumber:v76 updatedTime:?];

  v31 = v89;
  v78 = 1;
LABEL_9:

  [(HAPBLEAccessoryCache *)v65 updateWithPeripheralInfo:v64];
  v34->_hasValidCache = v78;
  objc_storeStrong(&v34->_accessoryCache, v65);
  v79 = [(HAPBLEAccessoryCache *)v65 peripheralInfo];
  v80 = [v79 accessoryName];
  v81 = v80;
  v33 = v98;
  if (v80)
  {
    v82 = v80;
  }

  else
  {
    v82 = v98;
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
  v26 = v90;
  [(_HAPAccessoryServerBTLE200 *)v34 _createPrimaryAccessoryFromAdvertisementData];
  v24 = v91;
  v29 = v88;
  objc_destroyWeak(&v100);
  objc_destroyWeak(&location);

  v28 = v94;
  v22 = v96;
  v27 = v86;
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

+ (BOOL)parseCharacteristicConfigurationResponse:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 body];
  [v7 bytes];

  v8 = [v6 body];
  [v8 length];

  v27 = 0;
  v28 = 0;
  v26 = 0;
  v9 = [v6 request];
  v10 = [v9 type];

  if (v10 != 7)
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
      v16 = a1;
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

  if (a4)
  {
    v21 = v13;
    v11 = 0;
    *a4 = v13;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)configurationRequestForCharacteristic:(id)a3 isBroadcasted:(BOOL)a4 interval:(unint64_t)a5 error:(id *)a6
{
  v7 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  TLV8BufferInit();
  v9 = TLV8BufferAppend();
  if (v9 || v7 && (v9 = TLV8BufferAppend(), v9))
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
  if (a6 && v10)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v10];
    *a6 = [v13 hapErrorWithCode:1 description:@"Characteristic configuration failed." reason:@"Failed to create characteristic configuration request body." suggestion:0 underlyingError:v14];
  }

  v15 = [[HAPBTLERequest alloc] initWithCharacteristic:v8 requestType:7 bodyData:v11 shouldEncrypt:1 timeoutInterval:10.0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)parseProtocolConfigurationResponse:(id)a3 key:(id *)a4 stateNumber:(id *)a5 error:(id *)a6
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 body];
  [v10 bytes];

  v11 = [v9 body];
  [v11 length];

  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  __s = 0;
  v12 = [v9 request];
  v13 = [v12 type];

  if (v13 == 8)
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
        *a4 = v21 = 0;
      }

      else
      {
        v21 = 4294960591;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = a1;
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
      v27 = v23;
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
          if (a6)
          {
            v37 = v17;
            v18 = 0;
            *a6 = v17;
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

+ (id)configurationRequestForService:(id)a3 configRequestType:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
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
  if (v6 != 2 && (v8 = TLV8BufferAppend(), v8) || (v8 = TLV8BufferAppend(), v8))
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
  if (a5 && v9)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v9];
    *a5 = [v11 hapErrorWithCode:12 description:@"Protocol configuration failed" reason:@"Failed to create protocol configuration body" suggestion:0 underlyingError:v12];
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [v7 characteristics];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v25 + 1) + 8 * v17);
    v19 = [v18 cbCharacteristic];
    if (!_isServiceSignatureCharacteristic(v19))
    {

      goto LABEL_19;
    }

    v20 = [v7 serviceProperties];

    if ((v20 & 4) != 0)
    {
      break;
    }

LABEL_19:
    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  if (a5)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Protocol configuration request create failed" reason:@"Service is missing service signature characteristic or support for configuration" suggestion:0 underlyingError:0 marker:229];
    *a5 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_27:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (BOOL)parseWriteResponse:(id)a3 value:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 request];
  v10 = [v9 type];

  if (v10 == 5 || v10 == 2)
  {
    v12 = [v8 body];
    v30 = 0;
    v13 = [a1 extractSerializedRequestValueFromBodyData:v12 error:&v30];
    v14 = v30;

    if (v13)
    {
      v15 = [v8 request];
      v16 = [v15 characteristic];
      v17 = [v16 metadata];
      v18 = [v17 format];
      v19 = HAPCharacteristicFormatFromString(v18);

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
      if (a5)
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
    if (a5)
    {
LABEL_11:
      v25 = v14;
      v26 = 0;
      *a5 = v14;
      goto LABEL_19;
    }

LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  if (a4)
  {
    v27 = v21;
    v14 = 0;
    *a4 = v21;
  }

  else
  {
    v14 = 0;
  }

  v26 = 1;
LABEL_19:

  return v26;
}

+ (id)executeWriteRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (([v8 properties] & 4) != 0)
  {
    v14 = [[HAPBTLERequest alloc] initWithCharacteristic:v8 requestType:5 bodyData:0 shouldEncrypt:v6 & 1 timeoutInterval:10.0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 shortDescription];
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (([v14 properties] & 4) != 0)
  {
    v24 = [v14 metadata];
    v25 = [v24 format];
    v26 = HAPCharacteristicFormatFromString(v25);

    v27 = _createCharacteristicWriteBody(v15, v26, v16, (a7 >> 1) & 1, v17, a8, 2.5);
    if (v27)
    {
      v23 = [[HAPBTLERequest alloc] initWithCharacteristic:v14 requestType:4 bodyData:v27 shouldEncrypt:a7 & 1 timeoutInterval:2.5];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v14 shortDescription];
      v30 = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (a8)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      *a8 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (([v14 properties] & 4) != 0)
  {
    v24 = [v14 metadata];
    v25 = [v24 format];
    v26 = HAPCharacteristicFormatFromString(v25);

    v27 = _createCharacteristicWriteBody(v15, v26, v16, (a7 >> 1) & 1, v17, a8, 0.0);
    if (v27)
    {
      if ((a7 & 8) != 0)
      {
        v28 = 60.0;
      }

      else
      {
        v28 = 10.0;
      }

      v23 = [[HAPBTLERequest alloc] initWithCharacteristic:v14 requestType:2 bodyData:v27 shouldEncrypt:a7 & 1 timeoutInterval:v28];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v14 shortDescription];
      v31 = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %{public}@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (a8)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:10];
      *a8 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)extractNotificationContextFromBodyData:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 bytes];
  [v5 length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    v7 = 0;
    if (a4 && v6 != -6727)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v6];
      *a4 = [v8 hapErrorWithCode:12 description:@"Parse failed." reason:@"Failed to parse notification context." suggestion:0 underlyingError:v9];

      v7 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  return v7;
}

+ (id)extractSerializedRequestValueFromBodyData:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 bytes];
  [v5 length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v6];
      *a4 = [v7 hapErrorWithCode:12 description:@"Parse failed." reason:@"Failed to parse request body." suggestion:0 underlyingError:v8];

      a4 = 0;
    }
  }

  else
  {
    a4 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  return a4;
}

+ (BOOL)parseReadResponse:(id)a3 value:(id *)a4 notificationContext:(id *)a5 error:(id *)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 request];
  v11 = [v10 type];

  v44 = a5;
  if (v11 != 3)
  {
    v36 = 4294960591;
    goto LABEL_20;
  }

  v12 = [v9 statusCode];
  if (v12)
  {
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:HAPErrorCodeFromHAPBLEStatusErrorCode(v12)];
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

  v14 = [v9 body];
  v47 = 0;
  v15 = [a1 extractSerializedRequestValueFromBodyData:v14 error:&v47];
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
    if (a6)
    {
      v34 = v16;
      v35 = 0;
      *a6 = v16;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_27;
  }

  v17 = [v9 request];
  v18 = [v17 characteristic];
  v19 = [v18 metadata];
  v20 = [v19 format];
  v21 = HAPCharacteristicFormatFromString(v20);

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

  v25 = [v9 request];
  v26 = [v25 characteristic];
  v27 = [v26 properties];

  if ((v27 & 0x100) != 0)
  {
    v29 = [v9 body];
    v45 = 0;
    v28 = [a1 extractNotificationContextFromBodyData:v29 error:&v45];
    v16 = v45;

    v30 = objc_autoreleasePoolPush();
    v31 = a1;
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
  if (a4)
  {
    v39 = v23;
    *a4 = v23;
  }

  if (v28)
  {
    v40 = v28;
    v16 = 0;
    *v44 = v28;
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

+ (id)readRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (([v7 properties] & 2) != 0)
  {
    v12 = [[HAPBTLERequest alloc] initWithCharacteristic:v7 requestType:3 bodyData:0 shouldEncrypt:v6 & 1 timeoutInterval:10.0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v7 shortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Read failed, characteristic does not support secured reads: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isHAPDescriptor:(id)a3
{
  v3 = [a3 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (BOOL)isHAPService:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UUID];
  v5 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFB8]];
  if ([v4 isEqual:v5])
  {
    goto LABEL_10;
  }

  v6 = [v3 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFC0]];
  if ([v6 isEqual:v7])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v8 = [v3 UUID];
  v9 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFA0]];
  if ([v8 isEqual:v9])
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = [v3 UUID];
  v11 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF70]];
  if ([v10 isEqual:v11])
  {

    goto LABEL_8;
  }

  v34 = v11;
  v35 = v10;
  v12 = [v3 UUID];
  v13 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF68]];
  if ([v12 isEqual:v13])
  {

    goto LABEL_8;
  }

  v33 = v13;
  v17 = [v3 UUID];
  v31 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF58]];
  v32 = v17;
  if ([v17 isEqual:?])
  {
    v18 = 1;
    v19 = v33;
  }

  else
  {
    v20 = [v3 UUID];
    v29 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFB0]];
    v30 = v20;
    if ([v20 isEqual:?])
    {
      v18 = 1;
    }

    else
    {
      v28 = [v3 UUID];
      v21 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF78]];
      v18 = [v28 isEqual:?];
    }

    v19 = v33;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v22 = [v3 characteristics];
  v23 = [v22 count];

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
  v4 = [v3 characteristics];
  v24 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (_isServiceInstanceIDCharacteristic(*(*(&v36 + 1) + 8 * i)))
        {

          goto LABEL_32;
        }
      }

      v25 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
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

+ (id)parseServiceSignatureResponse:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 body];
  [v12 bytes];

  v13 = [v9 body];
  [v13 length];

  v29 = 0;
  v30 = 0;
  v28[1] = 0;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [v9 request];
  v16 = [v15 type];

  if (v16 == 6)
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
      v26 = -[HAPBTLEServiceSignature initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:]([HAPBTLEServiceSignature alloc], "initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:", v11, v10, v17, v14, [v9 isEncrypted]);
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
      v21 = _parseLinkedServices(v18, v14, v28);
      v20 = v28[0];
      if (v21)
      {
        [v14 removeObject:v10];
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

  if (a6)
  {
    v25 = v20;
    v26 = 0;
    *a6 = v20;
  }

  else
  {
    v26 = 0;
  }

LABEL_24:

  return v26;
}

+ (id)parseSignatureResponse:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 body];
  [v6 bytes];

  v7 = [v5 body];
  [v7 length];

  v8 = [v5 request];
  v9 = [v8 type];

  if (v9 == 1)
  {
    TLV8GetOrCopyCoalesced();
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCA9B8] errorWithOSStatus:?];
  v12 = [v10 hapErrorWithCode:12 description:@"Signature request failed." reason:@"Failed to parse signature response body." suggestion:0 underlyingError:v11];

  if (v12)
  {
    if (a4)
    {
      v13 = v12;
      v14 = 0;
      *a4 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = -[HAPBTLECharacteristicSignature initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:]([HAPBTLECharacteristicSignature alloc], "initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:", 0, 0, 0, 0, 0, [v5 isEncrypted]);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end
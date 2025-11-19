@interface _HAPAccessoryServerBTLE100
+ (id)_convertFromBTLEToHAPUUID:(id)a3;
+ (id)deserializeCharacteristicReadData:(id)a3 characteristicFormat:(unint64_t)a4 supportsAdditionalAuthentication:(BOOL)a5 error:(id *)a6;
+ (id)serializeCharacteristicWriteValue:(id)a3 characteristicFormat:(unint64_t)a4 supportsAdditionalAuthentication:(BOOL)a5 authenticationData:(id)a6 error:(id *)a7;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_parseBTLECharacteristicDescriptor:(id)a3 existingDescriptors:(id)a4 characteristics:(id)a5;
- (BOOL)isBLELinkConnected;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5;
- (NSString)description;
- (_HAPAccessoryServerBTLE100)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16;
- (id)_btleCharacteristicForHAPCharacteristic:(id)a3;
- (id)_decryptData:(id)a3 error:(id *)a4;
- (id)_dequeueEnableEventCompletionTupleForCharacteristic:(id)a3;
- (id)_dequeueReadCompletionTupleForCharacteristic:(id)a3;
- (id)_dequeueWriteCompletionHandlerForCharacteristic:(id)a3;
- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4;
- (id)_hapCharacteristicForBTLECharacteristic:(id)a3;
- (id)_nextInstanceID;
- (id)_pairSetupHAPCharacteristic;
- (id)_pairVerifyHAPCharacteristic;
- (id)_parseBTLEService:(id)a3 withInstanceId:(id)a4;
- (id)securitySession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4;
- (id)securitySession:(id)a3 didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)a4 error:(id *)a5;
- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)a3;
- (int)_handlePairSetupExchangeWithData:(id)a3;
- (int)_pairSetupStart;
- (int)_pairSetupTryPassword:(id)a3;
- (void)_addPairingWithIdentifier:(id)a3 publicKey:(id)a4 admin:(BOOL)a5 queue:(id)a6 completion:(id)a7;
- (void)_cancelConnectionLifetimeTimer;
- (void)_checkForAuthPrompt;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_dequeueAndContinueOperation;
- (void)_disconnect;
- (void)_enableEvent:(BOOL)a3 forCharacteristic:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)_enqueueEnableEventCompletionHandler:(id)a3 queue:(id)a4 forCharacteristic:(id)a5;
- (void)_enqueueReadCompletionHandler:(id)a3 queue:(id)a4 forCharacteristic:(id)a5;
- (void)_enqueueWriteCompletionHandler:(id)a3 forCharacteristic:(id)a4;
- (void)_getAttributeDatabase;
- (void)_handleConnectionLifetimeTimeout;
- (void)_handleConnectionWithError:(id)a3;
- (void)_handleDescriptorDiscovery;
- (void)_handleDisconnectionWithCompletion:(id)a3;
- (void)_handleHAPCharacteristicDiscoveryForService:(id)a3 error:(id)a4;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4;
- (void)_handleHAPServiceDiscovery;
- (void)_handleHAPServiceDiscoveryCompletionForService:(id)a3 withInstanceId:(id)a4;
- (void)_handleHAPWriteConfirmationForCharacteristic:(id)a3 error:(id)a4;
- (void)_handlePairingStateMachine;
- (void)_handlePairingsReadForCharacteristic:(id)a3 readError:(id)a4 removing:(BOOL)a5 queue:(id)a6 completion:(id)a7;
- (void)_handlePairingsWriteForCharacteristic:(id)a3 writeError:(id)a4 removing:(BOOL)a5 queue:(id)a6 completion:(id)a7;
- (void)_handleReadDescriptorValues;
- (void)_handleReceivedSecuritySessionSetupExchangeData:(id)a3;
- (void)_handleSuccessfulBTLEConnection;
- (void)_handleUpdatedValueForBTLECharacteristic:(id)a3 error:(id)a4;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_readCharacteristicValues:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)_readValueForCharacteristic:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)_reallyEstablishSecureSession;
- (void)_removePairingWithIdentifier:(id)a3 publicKey:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_resetState;
- (void)_setupBTLEConnectionToPeripheral;
- (void)_updateConnectionLifetimeTimer;
- (void)_writeCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 authorizationData:(id)a5 withCompletionHandler:(id)a6 queue:(id)a7;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)dealloc;
- (void)disconnect;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4;
- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)readValueForCharacteristic:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)securitySession:(id)a3 didCloseWithError:(id)a4;
- (void)securitySession:(id)a3 didReceiveSetupExchangeData:(id)a4;
- (void)securitySessionDidOpen:(id)a3;
- (void)securitySessionIsOpening:(id)a3;
- (void)startPairingWithRequest:(id)a3;
- (void)updateConnectionIdleTime:(unsigned __int8)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation _HAPAccessoryServerBTLE100

- (void)disconnect
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___HAPAccessoryServerBTLE100_disconnect__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_dequeueAndContinueOperation
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
    [v5 removeObjectAtIndex:0];
  }

  v6 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      v29 = 138543618;
      v30 = v10;
      v31 = 2048;
      v32 = [v11 count];
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Continuing with remaining %ld operations", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
    v13 = [v12 objectAtIndex:0];

    [v13 setOperationExecuting:1];
    v14 = [v13 operation];
    if (v14 == 6)
    {
      v15 = [v13 identifier];
      v16 = [v13 publicKey];
      v20 = [v13 queue];
      v21 = [v13 completionHandler];
      [(_HAPAccessoryServerBTLE100 *)self _removePairingWithIdentifier:v15 publicKey:v16 queue:v20 completion:v21];
    }

    else
    {
      if (v14 != 5)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [(HAPAccessoryServer *)self name];
          v26 = [v13 operation];
          v27 = [v13 identifier];
          v29 = 138544130;
          v30 = v24;
          v31 = 2112;
          v32 = v25;
          v33 = 2048;
          v34 = v26;
          v35 = 2112;
          v36 = v27;
          _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] ### Invalid Operation %tu in Q for controller: %@, Dropping and continuing", &v29, 0x2Au);
        }

        objc_autoreleasePoolPop(v22);
        [(_HAPAccessoryServerBTLE100 *)self _dequeueAndContinueOperation];
        goto LABEL_14;
      }

      v15 = [v13 identifier];
      v16 = [v13 publicKey];
      v17 = [v13 admin];
      v18 = [v13 queue];
      v19 = [v13 completionHandler];
      [(_HAPAccessoryServerBTLE100 *)self _addPairingWithIdentifier:v15 publicKey:v16 admin:v17 queue:v18 completion:v19];
    }

LABEL_14:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HAPAccessoryServer *)self name];
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] %@ is not supported over this transport", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v7 && v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80___HAPAccessoryServerBTLE100_listPairingsWithCompletionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786D6490;
    v16 = v8;
    dispatch_async(v7, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v8 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v24];
  v9 = v24;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HAPAccessoryServer *)self name];
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to remove pairing for the current controller", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HAPAccessoryServer *)self clientQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke_345;
    v18[3] = &unk_2786D6808;
    v18[4] = self;
    v20 = v7;
    v19 = v6;
    [(_HAPAccessoryServerBTLE100 *)self removePairing:0 completionQueue:v14 completionHandler:v18];

    v15 = v20;
    goto LABEL_7;
  }

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v23 = v7;
    v22 = v9;
    dispatch_async(v6, block);

    v15 = v23;
LABEL_7:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (void)_removePairingWithIdentifier:(id)a3 publicKey:(id)a4 queue:(id)a5 completion:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v41 = a6;
  v13 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v11];
  v14 = [[HAPPairingIdentity alloc] initWithIdentifier:v10 publicKey:v13 privateKey:0 permissions:0];
  v48 = 0;
  v15 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v14 error:&v48];
  v16 = v48;
  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (v15)
  {
    v38 = v16;
    v39 = v11;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v50 = v20;
      v51 = 2112;
      v52 = v21;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to remove pairing for controller with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [(HAPAccessoryServerBTLE *)self browser];
    v23 = [(HAPAccessoryServer *)self identifier];
    [v22 deRegisterAccessoryWithIdentifier:v23];

    v24 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    v25 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
    v26 = [v24 objectForKey:v25];

    if (!v26)
    {
      v27 = [HAPCharacteristic alloc];
      v28 = [(HAPAccessoryServerBTLE *)self stateNumber];
      LOBYTE(v37) = 1;
      v26 = [(HAPCharacteristic *)v27 initWithType:@"00000050-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98F0 value:0 stateNumber:v28 properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v37 metadata:0];

      v29 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      v30 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
      [v29 setObject:v26 forKey:v30];
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke_344;
    v42[3] = &unk_2786D67B8;
    v42[4] = self;
    v43 = v12;
    v31 = v41;
    v44 = v41;
    v32 = MEMORY[0x231885210](v42);
    v33 = [(HAPAccessoryServer *)self clientQueue];
    [(_HAPAccessoryServerBTLE100 *)self _writeValue:v15 forCharacteristic:v26 authorizationData:0 withCompletionHandler:v32 queue:v33];

    v16 = v38;
    v11 = v39;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v34 = v40 = v11;
    v35 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v50 = v34;
    v51 = 2112;
    v52 = v35;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server '%@] Failed to create remove pairing request payload with error: %@", buf, 0x20u);

    v11 = v40;
  }

  objc_autoreleasePoolPop(v17);
  v31 = v41;
  if (v12 && v41)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v46 = v16;
    v47 = v41;
    dispatch_async(v12, block);

    v26 = v46;
LABEL_12:
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE100_removePairing_completionQueue_completionHandler___block_invoke;
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

- (void)_handlePairingsReadForCharacteristic:(id)a3 readError:(id)a4 removing:(BOOL)a5 queue:(id)a6 completion:(id)a7
{
  v9 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HAPAccessoryServer *)self name];
    v20 = v19;
    v21 = "Add";
    *buf = 138544130;
    v44 = v18;
    v45 = 2112;
    if (v9)
    {
      v21 = "Remove";
    }

    v46 = v19;
    v47 = 2080;
    v48 = v21;
    v49 = 2112;
    v50 = v13;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Completed Pairings read request for '%s' with error %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103___HAPAccessoryServerBTLE100__handlePairingsReadForCharacteristic_readError_removing_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v42 = v15;
    v41 = v13;
    v22 = v15;
    dispatch_async(v14, block);

    v23 = v42;
  }

  else
  {
    v24 = [v12 value];
    if (v9)
    {
      v39 = 0;
      v25 = &v39;
      [HAPPairingUtilities parseRemovePairingResponse:v24 error:&v39];
    }

    else
    {
      v38 = 0;
      v25 = &v38;
      [HAPPairingUtilities parseAddPairingResponse:v24 error:&v38];
    }

    v26 = *v25;

    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [(HAPAccessoryServer *)self name];
      v31 = v30;
      v32 = "Add";
      *buf = 138544130;
      v44 = v29;
      v45 = 2112;
      if (v9)
      {
        v32 = "Remove";
      }

      v46 = v30;
      v47 = 2080;
      v48 = v32;
      v49 = 2112;
      v50 = v26;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Parsed pairing response for '%s' to error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __103___HAPAccessoryServerBTLE100__handlePairingsReadForCharacteristic_readError_removing_queue_completion___block_invoke_337;
    v35[3] = &unk_2786D65D8;
    v36 = v26;
    v37 = v15;
    v33 = v15;
    v23 = v26;
    dispatch_async(v14, v35);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingsWriteForCharacteristic:(id)a3 writeError:(id)a4 removing:(BOOL)a5 queue:(id)a6 completion:(id)a7
{
  v9 = a5;
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HAPAccessoryServer *)self name];
    v20 = v19;
    v21 = "Add";
    *buf = 138544130;
    v40 = v18;
    v41 = 2112;
    if (v9)
    {
      v21 = "Remove";
    }

    v42 = v19;
    v43 = 2080;
    v44 = v21;
    v45 = 2112;
    v46 = v13;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Completed Pairings write request for '%s' with error %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105___HAPAccessoryServerBTLE100__handlePairingsWriteForCharacteristic_writeError_removing_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v38 = v15;
    v37 = v13;
    v22 = v15;
    dispatch_async(v14, block);

    v23 = v38;
  }

  else
  {
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __105___HAPAccessoryServerBTLE100__handlePairingsWriteForCharacteristic_writeError_removing_queue_completion___block_invoke_2;
    v31 = &unk_2786D67E0;
    v32 = self;
    v35 = v9;
    v33 = v14;
    v34 = v15;
    v24 = v15;
    v25 = MEMORY[0x231885210](&v28);
    v26 = [(HAPAccessoryServer *)self clientQueue:v28];
    [(_HAPAccessoryServerBTLE100 *)self _readValueForCharacteristic:v12 completionQueue:v26 completionHandler:v25];

    v23 = v33;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_addPairingWithIdentifier:(id)a3 publicKey:(id)a4 admin:(BOOL)a5 queue:(id)a6 completion:(id)a7
{
  v9 = a5;
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v41 = a7;
  v15 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v13];
  v16 = [[HAPPairingIdentity alloc] initWithIdentifier:v12 publicKey:v15 privateKey:0 permissions:v9];
  v48 = 0;
  v17 = [HAPPairingUtilities createAddPairingRequestForPairingIdentity:v16 error:&v48];
  v18 = v48;
  v19 = objc_autoreleasePoolPush();
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v17)
  {
    v38 = v18;
    v39 = v13;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v50 = v22;
      v51 = 2112;
      v52 = v23;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to add pairing for controller with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    v25 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
    v26 = [v24 objectForKey:v25];

    if (!v26)
    {
      v27 = [HAPCharacteristic alloc];
      v28 = [(HAPAccessoryServerBTLE *)self stateNumber];
      LOBYTE(v37) = 1;
      v26 = [(HAPCharacteristic *)v27 initWithType:@"00000050-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98F0 value:0 stateNumber:v28 properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v37 metadata:0];

      v29 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      v30 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
      [v29 setObject:v26 forKey:v30];
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_334;
    v42[3] = &unk_2786D67B8;
    v42[4] = self;
    v43 = v14;
    v31 = v41;
    v44 = v41;
    v32 = MEMORY[0x231885210](v42);
    v33 = [(HAPAccessoryServer *)self clientQueue];
    [(_HAPAccessoryServerBTLE100 *)self _writeValue:v17 forCharacteristic:v26 authorizationData:0 withCompletionHandler:v32 queue:v33];

    v18 = v38;
    v13 = v39;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v34 = v40 = v13;
    v35 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v50 = v34;
    v51 = 2112;
    v52 = v35;
    v53 = 2112;
    v54 = v18;
    _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server '%@] Failed to create add pairing request payload with error: %@", buf, 0x20u);

    v13 = v40;
  }

  objc_autoreleasePoolPop(v19);
  v31 = v41;
  if (v14 && v41)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v46 = v18;
    v47 = v41;
    dispatch_async(v14, block);

    v26 = v46;
LABEL_12:
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE100_addPairing_completionQueue_completionHandler___block_invoke;
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

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE100_identifyWithCompletion___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleConnectionLifetimeTimeout
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPAccessoryServer *)self identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Handling connection lifetime timeout", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self _cancelConnectionLifetimeTimer];
  [(_HAPAccessoryServerBTLE100 *)self _disconnect];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPAccessoryServer *)self identifier];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Canceling connection lifetime timeout and disconnecting from peripheral", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self setDisconnecting:1];
  v7 = [(HAPAccessoryServerBTLE *)self browser];
  [v7 disconnectFromBTLEAccessoryServer:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cancelConnectionLifetimeTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPAccessoryServer *)self identifier];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] cancelling connection lifetime timer...", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (v7)
  {
    v8 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_source_cancel(v8);

    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateConnectionLifetimeTimer
{
  v3 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (!v3)
  {
    v4 = [(HAPAccessoryServer *)self clientQueue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:v5];

    objc_initWeak(&location, self);
    v6 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __60___HAPAccessoryServerBTLE100__updateConnectionLifetimeTimer__block_invoke;
    v15 = &unk_2786D6FC8;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v6, &v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  if ([(_HAPAccessoryServerBTLE100 *)self state:v12]== 7)
  {
    v7 = 60000000000;
  }

  else
  {
    [(_HAPAccessoryServerBTLE100 *)self idleConnectionTimeoutInSec];
    v7 = 1000000000 * v8;
  }

  v9 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
  v10 = dispatch_time(0, v7);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  if (!v3)
  {
    v11 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_resume(v11);
  }
}

- (void)updateConnectionIdleTime:(unsigned __int8)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___HAPAccessoryServerBTLE100_updateConnectionIdleTime___block_invoke;
  v6[3] = &unk_2786D6768;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (int)_pairSetupTryPassword:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pairingSession)
  {
    [v4 UTF8String];
    v6 = PairingSessionSetSetupCode();
    if (!v6)
    {
      pairingSession = self->_pairingSession;
      v8 = PairingSessionExchange();
      v6 = v8;
      if (v8)
      {
        if (v8 == -6771)
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = -6718;
  }

  return v6;
}

- (int)_handlePairSetupExchangeWithData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v27 = v7;
    v28 = 2112;
    v29 = objc_opt_class();
    v30 = 2080;
    v31 = "[_HAPAccessoryServerBTLE100 _handlePairSetupExchangeWithData:]";
    v8 = v29;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ %s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  pairingSession = self->_pairingSession;
  [v4 bytes];
  [v4 length];
  v10 = PairingSessionExchange();
  if (v10)
  {
    v11 = v10;
    if (v10 == -6771)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 1024;
      LODWORD(v29) = v11;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@### Pair-setup message failed: %d\n", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v12);
    v15 = self->_pairingSession;
    if (v15)
    {
      CFRelease(v15);
      self->_pairingSession = 0;
    }

    v16 = [(HAPAccessoryServerBTLE *)self browser];
    [v16 disconnectFromBTLEAccessoryServer:self];

    v17 = HMErrorFromOSStatus(v11);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v18 = [(HAPAccessoryServer *)self delegateQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63___HAPAccessoryServerBTLE100__handlePairSetupExchangeWithData___block_invoke_323;
      v21[3] = &unk_2786D7050;
      v21[4] = self;
      v22 = v17;
      dispatch_async(v18, v21);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)_pairSetupStart
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if ([(HAPAccessoryServerBTLE *)self isPaired])
  {
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v3 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(v3, block);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    v4 = 0;
    v5 = 0;
    goto LABEL_19;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v8;
    v36 = 2112;
    v37 = objc_opt_class();
    v38 = 2080;
    v39 = "[_HAPAccessoryServerBTLE100 _pairSetupStart]";
    v9 = v37;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ %s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(_HAPAccessoryServerBTLE100 *)self _ensurePairingSessionIsInitializedWithType:1];
  if (v10)
  {
    v5 = v10;
    v4 = 0;
LABEL_12:
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v14;
      v36 = 1024;
      LODWORD(v37) = v5;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@### Pair-setup start failed: %d\n", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v12);
    pairingSession = self->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      self->_pairingSession = 0;
    }

    v16 = [(HAPAccessoryServerBTLE *)self browser];
    [v16 disconnectFromBTLEAccessoryServer:self];

    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v17 = [(HAPAccessoryServer *)self delegateQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke_322;
      v28[3] = &unk_2786D6740;
      v29 = v5;
      v28[4] = self;
      dispatch_async(v17, v28);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    goto LABEL_19;
  }

  v11 = self->_pairingSession;
  v5 = PairingSessionExchange();
  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:v32];
    v20 = [(_HAPAccessoryServerBTLE100 *)self _pairSetupHAPCharacteristic];
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentPlaintextData:v4 forCharacteristic:v20];

    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v21 = [(HAPAccessoryServerBTLE *)self peripheral];
    v22 = [(_HAPAccessoryServerBTLE100 *)self pairSetupCharacteristic];
    [v21 writeValue:v4 forCharacteristic:v22 type:0];

    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = objc_opt_class();
      *buf = 138544130;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2080;
      v39 = "[_HAPAccessoryServerBTLE100 _pairSetupStart]";
      v40 = 2112;
      v41 = v4;
      v27 = v26;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@%@ %s: Writing initial pair setup data: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_pairingSession)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v6 = PairingSessionCreate();
  if (v6)
  {
    v3 = v6;
LABEL_11:
    pairingSession = self->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      self->_pairingSession = 0;
    }

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v7 = self->_pairingFeatureFlags & 1;
  }

  v8 = self->_pairingSession;
  PairingSessionSetFlags();
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(_HAPAccessoryServerBTLE100 *)v10 controllerUsername];
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting Pairing session identifier to : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = self->_pairingSession;
  v15 = [(_HAPAccessoryServerBTLE100 *)v10 controllerUsername];
  [v15 UTF8String];
  v3 = PairingSessionSetIdentifier();

  if (v3)
  {
    goto LABEL_11;
  }

  v16 = self->_pairingSession;
  v3 = PairingSessionSetMTU();
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91___HAPAccessoryServerBTLE100_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v13;
    v23 = 2080;
    v24 = "[_HAPAccessoryServerBTLE100 peripheral:didWriteValueForCharacteristic:error:]";
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@%s: Received write confirmation for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v14 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___HAPAccessoryServerBTLE100_peripheral_didWriteValueForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v19 = v10;
  v20 = v9;
  v15 = v9;
  v16 = v10;
  dispatch_async(v14, block);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForDescriptor_error___block_invoke;
  block[3] = &unk_2786D7078;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87___HAPAccessoryServerBTLE100_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84___HAPAccessoryServerBTLE100_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___HAPAccessoryServerBTLE100_peripheral_didModifyServices___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___HAPAccessoryServerBTLE100_peripheral_didDiscoverServices___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (id)_pairVerifyHAPCharacteristic
{
  v3 = [HAPCharacteristic alloc];
  v4 = [(HAPAccessoryServerBTLE *)self stateNumber];
  LOBYTE(v7) = 1;
  v5 = [(HAPCharacteristic *)v3 initWithType:@"0000004E-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98D8 value:0 stateNumber:v4 properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v7 metadata:0];

  return v5;
}

- (id)_pairSetupHAPCharacteristic
{
  v3 = [HAPCharacteristic alloc];
  v4 = [(HAPAccessoryServerBTLE *)self stateNumber];
  LOBYTE(v7) = 1;
  v5 = [(HAPCharacteristic *)v3 initWithType:@"0000004C-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98C0 value:0 stateNumber:v4 properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v7 metadata:0];

  return v5;
}

- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendPlaintextPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83___HAPAccessoryServerBTLE100__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke;
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
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendEncryptedAndAuthenticatedPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96___HAPAccessoryServerBTLE100__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke;
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
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_didReceivePlaintextPayload_forCharacteristic_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke;
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
      block[2] = __100___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke;
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

- (id)_hapCharacteristicForBTLECharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_btleCharacteristicForHAPCharacteristic:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
        v13 = [v12 objectForKey:v11];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
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

- (id)_nextInstanceID
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_HAPAccessoryServerBTLE100 availableInstanceID](self, "availableInstanceID")}];
  [(_HAPAccessoryServerBTLE100 *)self setAvailableInstanceID:[(_HAPAccessoryServerBTLE100 *)self availableInstanceID]+ 1];

  return v3;
}

- (BOOL)_parseBTLECharacteristicDescriptor:(id)a3 existingDescriptors:(id)a4 characteristics:(id)a5
{
  v136 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  v12 = [v11 objectForKey:v10];

  v13 = [v12 metadata];

  if (!v13)
  {
    v14 = objc_alloc_init(HAPCharacteristicMetadata);
    [v12 setMetadata:v14];
  }

  v15 = [v8 UUID];
  v16 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  if (![v15 isEqual:v16])
  {

LABEL_10:
    v24 = [v8 UUID];
    v25 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF80]];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      v27 = [v8 value];
      v123 = v8;
      v124 = v12;
      v121 = v10;
      if ([v27 length] <= 6 || (objc_msgSend(v27, "getBytes:length:", buf, 7), buf[1]))
      {

LABEL_14:
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v131 = v30;
          v132 = 2112;
          v133 = v27;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@### Invalid BTLE Format Descriptor: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v31 = 0;
        goto LABEL_17;
      }

      v99 = buf[0];
      v100 = *&buf[2];
      v101 = *(&v131 + 1);
      v102 = v131;

      if (v102 != 1 || v101)
      {
        goto LABEL_14;
      }

      v103 = objc_alloc_init(HAPCharacteristicMetadata);
      v104 = v103;
      if (v99 - 1) < 0x1Bu && ((0x50AAAA9u >> (v99 - 1)))
      {
        [(HAPCharacteristicMetadata *)v103 setFormat:*off_2786D68A0[(v99 - 1)]];
        if (v100 > 10032)
        {
          switch(v100)
          {
            case 0x2731:
              v105 = @"lux";
              goto LABEL_93;
            case 0x2763:
              v105 = @"arcdegrees";
              goto LABEL_93;
            case 0x27AD:
              v105 = @"percentage";
              goto LABEL_93;
          }
        }

        else
        {
          switch(v100)
          {
            case 0x2700:
              v105 = 0;
              goto LABEL_93;
            case 0x2703:
              v105 = @"seconds";
              goto LABEL_93;
            case 0x272F:
              v105 = @"celsius";
LABEL_93:
              [(HAPCharacteristicMetadata *)v104 setUnits:v105];
              v31 = v104;
              goto LABEL_94;
          }
        }

        v113 = objc_autoreleasePoolPush();
        v114 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = HMFGetLogIdentifier();
          *buf = 138543618;
          v131 = v115;
          v132 = 2048;
          v133 = v100;
          v116 = "%{public}@### Invalid BTLE Units Value: 0x%lu";
          goto LABEL_78;
        }
      }

      else
      {
        v113 = objc_autoreleasePoolPush();
        v114 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = HMFGetLogIdentifier();
          *buf = 138543618;
          v131 = v115;
          v132 = 2048;
          v133 = v99;
          v116 = "%{public}@### Invalid BTLE Format Value: %lu";
LABEL_78:
          _os_log_impl(&dword_22AADC000, v114, OS_LOG_TYPE_ERROR, v116, buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v113);
      v31 = 0;
LABEL_94:

      v12 = v124;
LABEL_17:

      v32 = [(HAPCharacteristicMetadata *)v31 format];
      v33 = [v12 metadata];
      [v33 setFormat:v32];

      v120 = v31;
      v34 = [(HAPCharacteristicMetadata *)v31 units];
      v35 = [v12 metadata];
      [v35 setUnits:v34];

      v36 = [v12 metadata];
      v122 = v9;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      obj = v9;
      v37 = [obj countByEnumeratingWithState:&v126 objects:buf count:16];
      v38 = 0x277CBE000uLL;
      if (!v37)
      {
        goto LABEL_38;
      }

      v39 = v37;
      v40 = *v127;
      v41 = *MEMORY[0x277CBDF90];
      while (1)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v127 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v126 + 1) + 8 * i);
          v44 = [v43 UUID];
          v45 = [*(v38 + 160) UUIDWithString:@"6EB45C6C-A230-4F3A-886F-F8A8EEFC42E8"];
          if (![v44 isEqual:v45])
          {
            goto LABEL_25;
          }

          v46 = [v36 constraints];
          v47 = [v46 stepValue];
          if (v47)
          {

            v38 = 0x277CBE000uLL;
LABEL_25:

            goto LABEL_26;
          }

          v52 = [v43 value];

          v38 = 0x277CBE000;
          if (v52)
          {
            v48 = [v36 format];
            v53 = [v43 value];
            v54 = _convertFromBTLEToHAPValue(v48, v53);
            v55 = [v36 constraints];
            [v55 setStepValue:v54];

            goto LABEL_32;
          }

LABEL_26:
          v48 = [v43 UUID];
          v49 = [*(v38 + 160) UUIDWithString:v41];
          if ([v48 isEqual:v49])
          {
            v50 = [v36 constraints];
            v51 = [v50 stepValue];
            if (v51)
            {

LABEL_32:
              v38 = 0x277CBE000;
              goto LABEL_35;
            }

            v56 = [v43 value];

            v38 = 0x277CBE000;
            if (!v56)
            {
              continue;
            }

            v48 = [v43 value];
            _updateHAPConstraintsFromBTLEValidRange(v36, v48);
          }

          else
          {
          }

LABEL_35:
        }

        v39 = [obj countByEnumeratingWithState:&v126 objects:buf count:16];
        if (!v39)
        {
LABEL_38:

          v9 = v122;
          v8 = v123;
          v10 = v121;
          v12 = v124;
          goto LABEL_55;
        }
      }
    }

    v57 = [v8 UUID];
    v58 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF88]];
    v59 = [v57 isEqual:v58];

    if (v59)
    {
      v60 = [v8 value];
      if ([v60 containsString:@";"])
      {
        v61 = [v60 componentsSeparatedByString:@""];;
        v62 = [v61 mutableCopy];

        if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]!= 1)
        {
          v63 = MEMORY[0x277CCABB0];
          v64 = [v62 objectAtIndexedSubscript:0];
          v65 = [v63 numberWithUnsignedInteger:{objc_msgSend(v64, "integerValue")}];
          [v12 setInstanceID:v65];
        }

        [v62 removeObjectAtIndex:0];
        v66 = [v62 componentsJoinedByString:@""];;
        v67 = [v12 metadata];
        [v67 setManufacturerDescription:v66];
      }

      else
      {
        v62 = [v8 value];
        v66 = [v12 metadata];
        [v66 setManufacturerDescription:v62];
      }
    }

    else
    {
      v68 = [v8 UUID];
      v69 = [MEMORY[0x277CBE0A0] UUIDWithString:@"6EB45C6C-A230-4F3A-886F-F8A8EEFC42E8"];
      v70 = [v68 isEqual:v69];

      if (v70)
      {
        v71 = [v12 metadata];
        v72 = [v71 format];

        if (!v72)
        {
LABEL_55:
          v86 = objc_autoreleasePoolPush();
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v88 = HMFGetLogIdentifier();
            v89 = [v12 metadata];
            *buf = 138543874;
            v131 = v88;
            v132 = 2112;
            v133 = v89;
            v134 = 2112;
            v135 = v8;
            _os_log_impl(&dword_22AADC000, v87, OS_LOG_TYPE_INFO, "%{public}@HAP Metadata :%@ from BTLEDescriptor: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v86);
          v85 = 1;
          goto LABEL_58;
        }

        v73 = [v12 metadata];
        v74 = [v73 constraints];

        if (!v74)
        {
          v75 = objc_alloc_init(HAPMetadataConstraints);
          v76 = [v12 metadata];
          [v76 setConstraints:v75];
        }

        v60 = [v12 metadata];
        v77 = [v60 format];
        v78 = [v8 value];
        v79 = _convertFromBTLEToHAPValue(v77, v78);
        v80 = [v12 metadata];
        v81 = [v80 constraints];
        [v81 setStepValue:v79];
      }

      else
      {
        v92 = [v8 UUID];
        v93 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF90]];
        v94 = [v92 isEqual:v93];

        if (v94)
        {
          v95 = [v12 metadata];
          v96 = [v95 format];

          if (v96)
          {
            v97 = [v12 metadata];
            v98 = [v8 value];
            _updateHAPConstraintsFromBTLEValidRange(v97, v98);
          }

          goto LABEL_55;
        }

        v106 = [v8 UUID];
        v107 = [MEMORY[0x277CBE0A0] UUIDWithString:@"C5FC363E-D2BF-43E5-928C-AB7D3628470E"];
        v108 = [v106 isEqual:v107];

        if (!v108)
        {
          v117 = objc_autoreleasePoolPush();
          v118 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            v119 = HMFGetLogIdentifier();
            *buf = 138543618;
            v131 = v119;
            v132 = 2112;
            v133 = v8;
            _os_log_impl(&dword_22AADC000, v118, OS_LOG_TYPE_ERROR, "%{public}@Unknown BTLE Descriptor: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v117);
          goto LABEL_55;
        }

        v109 = [v8 value];
        v60 = _convertFromBTLEToHAPValue(@"uint16", v109);

        if (([v60 shortValue] & 4) != 0)
        {
          [v12 setProperties:{objc_msgSend(v12, "properties") | 0x10}];
          v110 = objc_autoreleasePoolPush();
          v111 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = HMFGetLogIdentifier();
            *buf = 138543618;
            v131 = v112;
            v132 = 2112;
            v133 = v10;
            _os_log_impl(&dword_22AADC000, v111, OS_LOG_TYPE_DEFAULT, "%{public}@ ### Characteristic with AAD: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v110);
        }
      }
    }

    goto LABEL_55;
  }

  v17 = [(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion];

  if (v17 == 1)
  {
    goto LABEL_10;
  }

  v18 = [v8 value];
  LOWORD(v126) = 0;
  if ([v18 length] == 2)
  {
    [v18 getBytes:&v126 length:2];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v126];
    [v12 setInstanceID:v19];

    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v126];
      *buf = 138543618;
      v131 = v22;
      v132 = 2112;
      v133 = v23;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@HAP Metadata : Found Characteristics with Instance ID = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_55;
  }

  v82 = objc_autoreleasePoolPush();
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543618;
    v131 = v84;
    v132 = 2112;
    v133 = v18;
    _os_log_impl(&dword_22AADC000, v83, OS_LOG_TYPE_ERROR, "%{public}@HAP Metadata : ### Invalid Characteristic Instance ID bytes %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v82);
  v85 = 0;
LABEL_58:

  v90 = *MEMORY[0x277D85DE8];
  return v85;
}

- (id)_parseBTLEService:(id)a3 withInstanceId:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  v10 = [_HAPAccessoryServerBTLE100 _convertFromBTLEToHAPUUID:v9];

  if (v10)
  {
    v11 = self;
    if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
    {
      v12 = [(_HAPAccessoryServerBTLE100 *)self _nextInstanceID];

      v7 = v12;
    }

    v54 = [[HAPService alloc] initWithType:v10 instanceID:v7];
    if (v54)
    {
      v48 = v10;
      v49 = v7;
      v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
      v53 = [MEMORY[0x277CBEB18] array];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v50 = v6;
      obj = [v6 characteristics];
      v19 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = v11;
        v22 = *v57;
        v51 = v18;
        while (2)
        {
          v23 = 0;
          v52 = v20;
          do
          {
            if (*v57 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v56 + 1) + 8 * v23);
            v25 = [v24 UUID];
            v26 = [v25 isEqual:v18];

            if ((v26 & 1) == 0)
            {
              v27 = [v24 properties];
              v28 = (v27 >> 1) & 4 | v27 & 2 | (v27 >> 5) & 1;
              v29 = [[HAPCharacteristicMetadata alloc] initWithConstraints:0 description:0 format:@"data" units:0];
              v30 = [v24 UUID];
              v31 = [v30 UUIDString];

              v32 = [HAPCharacteristic alloc];
              v33 = [(_HAPAccessoryServerBTLE100 *)v21 _nextInstanceID];
              v34 = [(HAPAccessoryServerBTLE *)v21 stateNumber];
              LOBYTE(v47) = 1;
              v35 = [(HAPCharacteristic *)v32 initWithType:v31 instanceID:v33 value:0 stateNumber:v34 properties:v28 eventNotificationsEnabled:0 implicitWriteWithResponse:v47 metadata:v29];

              if (!v35)
              {
                v42 = objc_autoreleasePoolPush();
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  v44 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v62 = v44;
                  _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@### Creating HAPCharacteristic for BTLE failed init.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v42);
                v17 = 0;
                v7 = v49;
                v6 = v50;
                v10 = v48;
                v18 = v51;
                v38 = v53;
                goto LABEL_25;
              }

              v36 = [MEMORY[0x277CBEAA8] distantPast];
              [(HAPCharacteristic *)v35 setValueUpdatedTime:v36];

              [(HAPCharacteristic *)v35 setService:v54];
              [v53 addObject:v35];
              v37 = [(_HAPAccessoryServerBTLE100 *)v21 btleCharacteristicToHAPCharacteristicMap];
              [v37 setObject:v35 forKey:v24];

              v18 = v51;
              v20 = v52;
            }

            ++v23;
          }

          while (v20 != v23);
          v20 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v38 = v53;
      [(HAPService *)v54 setCharacteristics:v53];
      v17 = v54;
      v7 = v49;
      v6 = v50;
      v10 = v48;
LABEL_25:
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v41;
        _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@### Creating HAPService for BTLE failed init.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
      v17 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 UUID];
      *buf = 138543618;
      v62 = v15;
      v63 = 2112;
      v64 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@### [HAP Accessory Server BTLE] Failed converting from BTLE UUID to internal: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_handleHAPServiceDiscoveryCompletionForService:(id)a3 withInstanceId:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _parseBTLEService:v6 withInstanceId:v7];
  if (v8)
  {
    v9 = [(_HAPAccessoryServerBTLE100 *)self btleServiceToHAPServiceMap];
    [v9 setObject:v8 forKey:v6];

    v10 = [(HAPAccessoryServer *)self primaryAccessory];
    [v8 setAccessory:v10];

    v11 = MEMORY[0x277CBEB18];
    v12 = [(HAPAccessoryServer *)self primaryAccessory];
    v13 = [v12 services];
    v14 = [v11 arrayWithArray:v13];

    [v14 addObject:v8];
    v15 = [(HAPAccessoryServer *)self primaryAccessory];
    [v15 setServices:v14];

    [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:[(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount]- 1];
    if (![(_HAPAccessoryServerBTLE100 *)self characteristicDiscoveryRequestCount]&& ![(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount])
    {
      [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@### Unable to parse BTLE service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];
    v20 = [(HAPAccessoryServer *)self delegateQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92___HAPAccessoryServerBTLE100__handleHAPServiceDiscoveryCompletionForService_withInstanceId___block_invoke;
    v23[3] = &unk_2786D7050;
    v23[4] = self;
    v24 = v19;
    v21 = v19;
    dispatch_async(v20, v23);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleHAPCharacteristicDiscoveryForService:(id)a3 error:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 characteristics];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 UUID];
        v15 = [v14 isEqual:v7];

        if (v15)
        {
          [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:[(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount]+ 1];
          v22 = [(HAPAccessoryServerBTLE *)self peripheral];
          [v22 readValueForCharacteristic:v13];

          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HAPAccessoryServer *)self identifier];
    v20 = [(HAPAccessoryServer *)self name];
    v21 = [v6 UUID];
    *buf = 138544130;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@ '%@'] Service with UUID %@ does not have the HAP Service Instance ID characteristic, skipping HAPService creation", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
LABEL_13:
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)self characteristicDiscoveryRequestCount]- 1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadDescriptorValues
{
  v36 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:0];
  if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Skipping descriptor reads", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    v7 = [v6 keyEnumerator];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v12 descriptors];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              v17 = 0;
              do
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * v17);
                [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:[(_HAPAccessoryServerBTLE100 *)self metadataValueReadCount]+ 1];
                [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
                v19 = [(HAPAccessoryServerBTLE *)self peripheral];
                [v19 readValueForDescriptor:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v15);
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v9);
    }
  }

  if (![(_HAPAccessoryServerBTLE100 *)self metadataValueReadCount])
  {
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v20 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57___HAPAccessoryServerBTLE100__handleReadDescriptorValues__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(v20, block);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleDescriptorDiscovery
{
  v29 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:0];
  if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Skipping descriptor discovery", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    v7 = [v6 keyEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
      *&v9 = 138543618;
      v19 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = v19;
            v25 = v16;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Discovering metadata for BTLE Char: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)self metadataDiscoveryRequestCount]+ 1];
          [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
          v17 = [(HAPAccessoryServerBTLE *)self peripheral];
          [v17 discoverDescriptorsForCharacteristic:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }
  }

  if (![(_HAPAccessoryServerBTLE100 *)self metadataDiscoveryRequestCount])
  {
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleHAPServiceDiscovery
{
  v39 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = self;
  v3 = [(HAPAccessoryServerBTLE *)self peripheral];
  v4 = [v3 services];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    v8 = *MEMORY[0x277CBDFA0];
    v27 = *MEMORY[0x277CBDF68];
    v28 = *MEMORY[0x277CBDF70];
    v24 = *MEMORY[0x277CBDF58];
    v9 = 0x277CBE000uLL;
    v29 = *MEMORY[0x277CBDFA0];
    v30 = *v35;
    do
    {
      v10 = 0;
      v31 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = [(_HAPAccessoryServerBTLE100 *)v33 pairingService];
        if (([v11 isEqual:v12] & 1) == 0)
        {
          v13 = v11;
          v14 = [v13 UUID];
          v15 = [*(v9 + 160) UUIDWithString:v8];
          if ([v14 isEqual:v15])
          {
            goto LABEL_12;
          }

          v16 = [v13 UUID];
          v17 = [*(v9 + 160) UUIDWithString:v28];
          if ([v16 isEqual:v17])
          {
            goto LABEL_11;
          }

          v18 = [v13 UUID];
          v19 = [*(v9 + 160) UUIDWithString:v27];
          if ([v18 isEqual:v19])
          {

LABEL_11:
            v8 = v29;
            v7 = v30;
LABEL_12:

LABEL_13:
          }

          else
          {
            [v13 UUID];
            v20 = v25 = v18;
            v21 = [*(v9 + 160) UUIDWithString:v24];
            v26 = [v20 isEqual:v21];

            v8 = v29;
            v7 = v30;
            v9 = 0x277CBE000;
            if (v26)
            {
              goto LABEL_13;
            }

            [(_HAPAccessoryServerBTLE100 *)v33 setCharacteristicDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)v33 characteristicDiscoveryRequestCount]+ 1];
            [(_HAPAccessoryServerBTLE100 *)v33 _updateConnectionLifetimeTimer];
            v12 = [(HAPAccessoryServerBTLE *)v33 peripheral];
            [v12 discoverCharacteristics:0 forService:v13];
          }

          v6 = v31;
        }

        ++v10;
      }

      while (v6 != v10);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v6 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_getAttributeDatabase
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2080;
    v20 = "[_HAPAccessoryServerBTLE100 _getAttributeDatabase]";
    v6 = v18;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ %s: Getting HAP attribute database from accessory", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(_HAPAccessoryServerBTLE100 *)self state]== 12)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Ignoring request to discover accessories because the session is already established, calling delegate immediately", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v11 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51___HAPAccessoryServerBTLE100__getAttributeDatabase__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(v11, block);
    }
  }

  else
  {
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v12 = [(HAPAccessoryServerBTLE *)self peripheral];
    [v12 discoverServices:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)discoverAccessories
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)securitySession:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE100_securitySession_didCloseWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)securitySessionDidOpen:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE100_securitySessionDidOpen___block_invoke;
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
  v7[2] = __55___HAPAccessoryServerBTLE100_securitySessionIsOpening___block_invoke;
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
  block[2] = __74___HAPAccessoryServerBTLE100_securitySession_didReceiveSetupExchangeData___block_invoke;
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
  v41 = *MEMORY[0x277D85DE8];
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
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v19 = v31 = v17;
          v20 = [(HAPAccessoryServer *)self identifier];
          *buf = 138544130;
          v34 = v19;
          v35 = 2112;
          v36 = v20;
          v37 = 2112;
          v38 = v9;
          v39 = 2112;
          v40 = v13;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Failed to create pairing identity with identifier, %@, public key, %@", buf, 0x2Au);

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
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [(HAPAccessoryServer *)self identifier];
        *buf = 138544130;
        v34 = v27;
        v35 = 2112;
        v36 = v28;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Failed to retrieved public key for accessory with identifier '%@' with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v16 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543874;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Unexpected pairing peer identifier, %@", buf, 0x20u);
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
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HAPAccessoryServer *)self identifier];
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] Request for local pairing identity", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1 || (-[HAPAccessoryServer keyBag](self, "keyBag"), v11 = objc_claimAutoreleasedReturnValue(), [v11 currentIdentity], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v13 = [(HAPAccessoryServer *)self keyStore];
    v14 = [(HAPAccessoryServer *)self identifier];
    v12 = [v13 readControllerPairingKeyForAccessory:v14 error:a4];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_decryptData:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v9;
    v17 = 2080;
    v18 = "[_HAPAccessoryServerBTLE100 _decryptData:error:]";
    v19 = 2048;
    v20 = [v6 length];
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%s: Decrypting data with length %lu", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = [(_HAPAccessoryServerBTLE100 *)self securitySession];

  if (v10)
  {
    v11 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    v12 = [v11 decryptData:v6 additionalAuthenticatedData:0 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6718 userInfo:0];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v9;
    v17 = 2080;
    v18 = "[_HAPAccessoryServerBTLE100 _encryptDataAndGenerateAuthTag:error:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%s: Encrypting plaintext data: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = [(_HAPAccessoryServerBTLE100 *)self securitySession];

  if (v10)
  {
    v11 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    v12 = [v11 encryptData:v6 additionalAuthenticatedData:0 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6718 userInfo:0];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_handleReceivedSecuritySessionSetupExchangeData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
  if (v5 && (v6 = v5, v7 = [(HAPAccessoryServer *)self isSecuritySessionOpen], v6, !v7))
  {
    v12 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    [v12 receivedSetupExchangeData:v4 error:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HAPAccessoryServer *)self identifier];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Unexpected security session setup exchange data, dropping.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_reallyEstablishSecureSession
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServerBTLE *)self isPaired])
  {
    if ([(HAPAccessoryServer *)self isSecuritySessionOpen])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = HMFGetLogIdentifier();
        v6 = [(HAPAccessoryServer *)self identifier];
        v13 = 138543618;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] A security session is already established.", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPAccessoryServer *)self identifier];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Unable to establish a secure session because the accessory isn't paired.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
  }

  v11 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:0 delegate:self];
  [(_HAPAccessoryServerBTLE100 *)self setSecuritySession:v11];
  [(HAPSecuritySession *)v11 open];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedValueForBTLECharacteristic:(id)a3 error:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    v12 = [v6 value];
    *buf = 138544130;
    v71 = v10;
    v72 = 2112;
    v73 = v11;
    v74 = 2112;
    v75 = v12;
    v76 = 2112;
    v77 = v7;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated value for BTLE characteristic: %@ Value: %@ error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = v7;
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v13;
    goto LABEL_5;
  }

  v15 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:v6];
  if (!v15)
  {
    v55 = objc_autoreleasePoolPush();
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v57;
      v72 = 2112;
      v73 = v6;
      _os_log_impl(&dword_22AADC000, v56, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic %@ after receiving read response", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    v58 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:27];
    if (v58)
    {
      v16 = v58;
      v15 = 0;
      goto LABEL_5;
    }
  }

  v29 = [v6 value];
  v30 = [v29 length];

  if (!v30)
  {
    v22 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  v31 = [(_HAPAccessoryServerBTLE100 *)self _shouldEnableSessionSecurity];
  v32 = [v6 value];
  if (v31)
  {
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfReceivedEncryptedAuthenticatedData:v32 forCharacteristic:v15];

    v33 = [v6 value];
    v69 = 0;
    v32 = [(_HAPAccessoryServerBTLE100 *)self _decryptData:v33 error:&v69];
    v34 = v69;

    if (v34)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543874;
        v71 = v37;
        v72 = 2112;
        v73 = v6;
        v74 = 2112;
        v75 = v34;
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%{public}@### Decrypting data for characteristic %@ received after a read request failed with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      v38 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:55];
      goto LABEL_39;
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = 0;
LABEL_39:
  [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfReceivedPlaintextData:v32 forCharacteristic:v15];
  v59 = [v15 metadata];
  v60 = [v59 format];
  v61 = HAPCharacteristicFormatFromString(v60);

  v68 = v38;
  v62 = +[_HAPAccessoryServerBTLE100 deserializeCharacteristicReadData:characteristicFormat:supportsAdditionalAuthentication:error:](_HAPAccessoryServerBTLE100, "deserializeCharacteristicReadData:characteristicFormat:supportsAdditionalAuthentication:error:", v32, v61, [v15 supportsAdditionalAuthorizationData], &v68);
  v16 = v68;

  if (!v16)
  {
    [v15 setValue:v62];

    v22 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [(HAPAccessoryServer *)self identifier];
    v21 = [(HAPAccessoryServer *)self name];
    *buf = 138544130;
    v71 = v19;
    v72 = 2112;
    v73 = v20;
    v74 = 2112;
    v75 = v21;
    v76 = 2112;
    v77 = v16;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@### [BTLE Accessory Server '%@' '%@'] Failed to process updated characteristic value with error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v22 = 1;
LABEL_8:
  v23 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v15];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 completionQueue];
    if (v25)
    {
      v26 = v25;
      v27 = [v24 handler];

      if (v27)
      {
        v28 = [v24 completionQueue];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke_188;
        v63[3] = &unk_2786D7078;
        v64 = v24;
        v65 = v15;
        v66 = v16;
        dispatch_async(v28, v63);
      }
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v41;
      v72 = 2112;
      v73 = v15;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%{public}@Received notification for HAPCharacteristic %@, Reading Value", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v42 = [(HAPAccessoryServerBTLE *)self browser];
    v43 = [(HAPAccessoryServer *)self identifier];
    [v42 markNotifyingCharacteristicUpdatedForIdentifier:v43];

    v44 = [v6 value];
    if ([v44 length])
    {
      v45 = 1;
    }

    else
    {
      v45 = v22;
    }

    if (v45)
    {
    }

    else
    {
      v46 = [v15 eventNotificationsEnabled];

      if (v46)
      {
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke;
        v67[3] = &unk_2786D66F0;
        v67[4] = self;
        v47 = MEMORY[0x231885210](v67);
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        v48 = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self readValueForCharacteristic:v15 queue:v48 completionHandler:v47];

        goto LABEL_31;
      }
    }

    v49 = objc_autoreleasePoolPush();
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      v52 = [(HAPAccessoryServer *)self identifier];
      v53 = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v71 = v51;
      v72 = 2112;
      v73 = v52;
      v74 = 2112;
      v75 = v53;
      v76 = 2112;
      v77 = v16;
      _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_ERROR, "%{public}@### [BTLE Accessory Server '%@' '%@'] Failed to process updated characteristic value with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v49);
  }

LABEL_31:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_readValueForCharacteristic:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:v8];
  if (v11)
  {
    if (([v8 properties] & 2) != 0)
    {
      if (![(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
      {
        [(_HAPAccessoryServerBTLE100 *)self _enqueueReadCompletionHandler:v10 queue:v9 forCharacteristic:v8];
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        v18 = [(HAPAccessoryServerBTLE *)self peripheral];
        [v18 readValueForCharacteristic:v11];
        goto LABEL_20;
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read the value of characteristic %@", v8];
      v18 = [v27 errorWithHMErrorCode:4 reason:v28 underlyingError:0];

      if (v9 && v10)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke_2;
        v30[3] = &unk_2786D69E0;
        v33 = v10;
        v31 = v8;
        v32 = v18;
        dispatch_async(v9, v30);

        v19 = v33;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v14;
        v46 = 2112;
        v47 = v8;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to read HAP characteristic %@: it does not support reading", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 localizedStringForKey:@"The characteristic does not support reading." value:&stru_283E79C60 table:0];
      v18 = [v15 errorWithHMErrorCode:6 reason:v17 underlyingError:0];

      if (v9 && v10)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke_187;
        block[3] = &unk_2786D69E0;
        v37 = v10;
        v35 = v8;
        v36 = v18;
        dispatch_async(v9, block);

        v19 = v37;
LABEL_18:
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to read HAP characteristic %@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v42[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read the value of characteristic %@", v8];
    v43[0] = v23;
    v42[1] = *MEMORY[0x277CCA470];
    v24 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [v24 localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v43[1] = v25;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

    v26 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2 userInfo:v18];
    if (v9 && v10)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke;
      v38[3] = &unk_2786D69E0;
      v41 = v10;
      v39 = v8;
      v40 = v26;
      dispatch_async(v9, v38);
    }
  }

LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicValues:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v24 = a4;
  v23 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = dispatch_group_create();
  v26 = [MEMORY[0x277D0F770] currentActivity];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke;
        v31[3] = &unk_2786D66A0;
        v32 = v26;
        v33 = v9;
        v34 = v10;
        v16 = MEMORY[0x231885210](v31);
        [v15 instanceID];

        v17 = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self _readValueForCharacteristic:v15 completionQueue:v17 completionHandler:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v18 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke_179;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v28 = v24;
  v29 = v9;
  v30 = v23;
  v19 = v9;
  v20 = v23;
  v21 = v24;
  dispatch_group_notify(v10, v18, block);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)readValueForCharacteristic:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81___HAPAccessoryServerBTLE100_readValueForCharacteristic_queue_completionHandler___block_invoke;
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

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104___HAPAccessoryServerBTLE100_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D6600;
  v22 = a4;
  block[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(v14, block);
}

- (void)_handleHAPWriteConfirmationForCharacteristic:(id)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received write completion for characteristic %@ with error %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v8];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, v8, v7);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v18;
        v22 = 2080;
        v23 = "[_HAPAccessoryServerBTLE100 _handleHAPWriteConfirmationForCharacteristic:error:]";
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@%s: ### Unable to get write completion handler for %@ after receiving a write confirmation", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v15;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic after receiving write confirmation", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 authorizationData:(id)a5 withCompletionHandler:(id)a6 queue:(id)a7
{
  v97 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:v12];
  if (!v16)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v94 = v27;
      v95 = 2112;
      v96 = v12;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to write HAP characteristic %@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v91[0] = *MEMORY[0x277CCA450];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write the value of characteristic %@", v12];
    v92[0] = v28;
    v91[1] = *MEMORY[0x277CCA470];
    v29 = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [v29 localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v92[1] = v30;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];

    v24 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2 userInfo:v23];
    if (v14 && v15)
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke;
      v87[3] = &unk_2786D69E0;
      v90 = v14;
      v88 = v12;
      v24 = v24;
      v89 = v24;
      dispatch_async(v15, v87);
    }

    goto LABEL_39;
  }

  if (([v12 properties] & 4) != 0)
  {
    v31 = [v12 metadata];
    v32 = [v31 format];
    v33 = HAPCharacteristicFormatFromString(v32);

    v82 = 0;
    v24 = +[_HAPAccessoryServerBTLE100 serializeCharacteristicWriteValue:characteristicFormat:supportsAdditionalAuthentication:authenticationData:error:](_HAPAccessoryServerBTLE100, "serializeCharacteristicWriteValue:characteristicFormat:supportsAdditionalAuthentication:authenticationData:error:", v62, v33, [v12 supportsAdditionalAuthorizationData], v13, &v82);
    v23 = v82;
    if (v23)
    {
      if (!v14 || !v15)
      {
        goto LABEL_39;
      }

      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_2;
      v78[3] = &unk_2786D69E0;
      v81 = v14;
      v79 = v12;
      v80 = v23;
      dispatch_async(v15, v78);

      v34 = v81;
      goto LABEL_38;
    }

    if ([(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
    {
      v35 = MEMORY[0x277CCA9B8];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write the value of characteristic %@", v12];
      v34 = [v35 errorWithHMErrorCode:4 reason:v36 underlyingError:0];

      if (v14 && v15)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_3;
        v74[3] = &unk_2786D69E0;
        v77 = v14;
        v75 = v12;
        v34 = v34;
        v76 = v34;
        dispatch_async(v15, v74);
      }

      goto LABEL_38;
    }

    v37 = [MEMORY[0x277D0F770] currentActivity];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_4;
    v68[3] = &unk_2786D6628;
    v68[4] = v62;
    v57 = v12;
    v69 = v57;
    v70 = self;
    v60 = v37;
    v71 = v60;
    v54 = v14;
    v73 = v54;
    v38 = v15;
    v72 = v38;
    v59 = MEMORY[0x231885210](v68);
    v58 = v13;
    if ([(_HAPAccessoryServerBTLE100 *)self _shouldEnableSessionSecurity])
    {
      v52 = v38;
      v67 = 0;
      v61 = [(_HAPAccessoryServerBTLE100 *)self _encryptDataAndGenerateAuthTag:v24 error:&v67];
      v39 = v67;
      context = objc_autoreleasePoolPush();
      v40 = HMFGetOSLogHandle();
      if (v39)
      {
        v41 = v40;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v94 = v42;
          v95 = 2112;
          v96 = v39;
          _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to encrypt payload with error: %@", buf, 0x16u);
        }

        v43 = v39;

        objc_autoreleasePoolPop(context);
        if (v54)
        {
          v44 = v59;
          v34 = v60;
          if (v52)
          {
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_165;
            v63[3] = &unk_2786D69E0;
            v66 = v54;
            v64 = v57;
            v65 = v43;
            dispatch_async(v52, v63);
          }
        }

        else
        {
          v44 = v59;
          v34 = v60;
        }

        v50 = v61;
        goto LABEL_37;
      }

      v49 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543618;
        v94 = v56;
        v95 = 2112;
        v96 = v61;
        _os_log_impl(&dword_22AADC000, v49, OS_LOG_TYPE_INFO, "%{public}@Sending encrypted data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v48 = v57;
      [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentEncryptedAuthenticatedData:v61 forCharacteristic:v57];
    }

    else
    {
      v61 = v24;
      v55 = objc_autoreleasePoolPush();
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v94 = v46;
        v47 = v46;
        _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_INFO, "%{public}@Sending plaintext data because encryption has been disabled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v55);
      v48 = v57;
    }

    [(_HAPAccessoryServerBTLE100 *)self _enqueueWriteCompletionHandler:v59 forCharacteristic:v48];
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentPlaintextData:v24 forCharacteristic:v48];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v44 = v59;
    v43 = [(HAPAccessoryServerBTLE *)self peripheral];
    v50 = v61;
    [v43 writeValue:v61 forCharacteristic:v16 type:0];
    v34 = v60;
LABEL_37:

    v13 = v58;
LABEL_38:

    goto LABEL_39;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v94 = v19;
    v95 = 2112;
    v96 = v12;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to write HAP characteristic %@: it does not support writing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v20 = MEMORY[0x277CCA9B8];
  v21 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [v21 localizedStringForKey:@"The characteristic does not support writing." value:&stru_283E79C60 table:0];
  v23 = [v20 errorWithHMErrorCode:5 reason:v22 underlyingError:0];

  if (v14 && v15)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_154;
    block[3] = &unk_2786D69E0;
    v86 = v14;
    v84 = v12;
    v23 = v23;
    v85 = v23;
    dispatch_async(v15, block);

    v24 = v86;
LABEL_39:
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_writeCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v26 = a4;
  v25 = a5;
  v30 = [MEMORY[0x277CBEB18] array];
  v9 = dispatch_group_create();
  v27 = [MEMORY[0x277D0F770] currentActivity];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke;
        v35[3] = &unk_2786D6538;
        v36 = v30;
        v37 = v9;
        v14 = MEMORY[0x231885210](v35);
        v15 = [v13 characteristic];
        [v15 instanceID];

        v16 = [v13 value];
        v17 = [v13 characteristic];
        v18 = [v13 authorizationData];
        v19 = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self _writeValue:v16 forCharacteristic:v17 authorizationData:v18 withCompletionHandler:v14 queue:v19];

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  v20 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke_146;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v32 = v26;
  v33 = v30;
  v34 = v25;
  v21 = v30;
  v22 = v26;
  v23 = v25;
  dispatch_group_notify(v9, v20, block);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105___HAPAccessoryServerBTLE100_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D6600;
  v22 = a4;
  block[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(v14, block);
}

- (id)_dequeueEnableEventCompletionTupleForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 firstObject];
  if (v7)
  {
    [v6 removeObject:v7];
  }

  return v7;
}

- (void)_enqueueEnableEventCompletionHandler:(id)a3 queue:(id)a4 forCharacteristic:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
    [v12 setObject:v11 forKey:v9];
  }

  v13 = [HAPCharacteristicEnableEventCompletionTuple enableEventCompletionTupleWithHandler:v14 queue:v8];
  if (v13)
  {
    [v11 addObject:v13];
  }
}

- (id)_dequeueReadCompletionTupleForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 firstObject];
  if (v7)
  {
    [v6 removeObject:v7];
  }

  return v7;
}

- (void)_enqueueReadCompletionHandler:(id)a3 queue:(id)a4 forCharacteristic:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
    [v12 setObject:v11 forKey:v9];
  }

  v13 = [HAPCharacteristicReadCompletionTuple readCompletionTupleWithHandler:v14 queue:v8];
  [v11 addObject:v13];
}

- (id)_dequeueWriteCompletionHandlerForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x231885210](v7);
    [v6 removeObject:v9];
  }

  v10 = MEMORY[0x231885210](v8);

  return v10;
}

- (void)_enqueueWriteCompletionHandler:(id)a3 forCharacteristic:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
    [v9 setObject:v8 forKey:v6];
  }

  v10 = MEMORY[0x231885210](v11);
  [v8 addObject:v10];
}

- (void)_handleDisconnectionWithCompletion:(id)a3
{
  v117 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HAPAccessoryServer *)self identifier];
    *buf = 138543618;
    v108 = v7;
    v109 = 2112;
    v110 = v8;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Handling disconnection with error", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(_HAPAccessoryServerBTLE100 *)self startPairingRequested])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v108 = v11;
      v109 = 2112;
      v110 = v12;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected during pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v13 = [(HAPAccessoryServer *)self delegateQueue];
      v14 = v13;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      v15 = block;
LABEL_8:
      dispatch_async(v13, v15);
LABEL_18:
    }
  }

  else if ([(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyRequested])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v108 = v18;
      v109 = 2112;
      v110 = v19;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected after unpaired identify request completed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyCompletionBlock];

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v108 = v23;
        v109 = 2112;
        v110 = v24;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] identify failed calling completion block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v14 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:52];
      v25 = [(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyCompletionBlock];
      [(_HAPAccessoryServerBTLE100 *)self setUnpairedIdentifyCompletionBlock:0];
      v26 = MEMORY[0x231885210](v25);
      v27 = v26;
      if (v26)
      {
        (*(v26 + 16))(v26, v14);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v28 = [(_HAPAccessoryServerBTLE100 *)self state];
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v28 == 12)
    {
      v79 = v4;
      if (v31)
      {
        v32 = HMFGetLogIdentifier();
        v33 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v108 = v32;
        v109 = 2112;
        v110 = v33;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] failed after session is up", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v35 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      v36 = [v35 objectEnumerator];

      v81 = [v36 countByEnumeratingWithState:&v101 objects:v116 count:16];
      if (v81)
      {
        v80 = *v102;
        do
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v102 != v80)
            {
              objc_enumerationMutation(v36);
            }

            v38 = *(*(&v101 + 1) + 8 * i);
            v39 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v38];
            if (v39)
            {
              v40 = v39;
              do
              {
                v41 = [v40 handler];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v40 completionQueue];

                  if (v43)
                  {
                    v44 = [v40 completionQueue];
                    v97[0] = MEMORY[0x277D85DD0];
                    v97[1] = 3221225472;
                    v97[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_138;
                    v97[3] = &unk_2786D7078;
                    v98 = v40;
                    v99 = v38;
                    v100 = v34;
                    dispatch_async(v44, v97);
                  }
                }

                v45 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v38];

                v40 = v45;
              }

              while (v45);
            }

            v46 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v38];
            if (v46)
            {
              v47 = v46;
              do
              {
                v48 = [(HAPAccessoryServer *)self delegateQueue];
                v94[0] = MEMORY[0x277D85DD0];
                v94[1] = 3221225472;
                v94[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_2;
                v94[3] = &unk_2786D69E0;
                v96 = v47;
                v94[4] = v38;
                v95 = v34;
                v49 = v47;
                dispatch_async(v48, v94);

                v47 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v38];
              }

              while (v47);
            }

            v50 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v38];
            if (v50)
            {
              v51 = v50;
              do
              {
                v52 = [v51 handler];
                if (v52)
                {
                  v53 = v52;
                  v54 = [v51 completionQueue];

                  if (v54)
                  {
                    v55 = [v51 completionQueue];
                    v90[0] = MEMORY[0x277D85DD0];
                    v90[1] = 3221225472;
                    v90[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_3;
                    v90[3] = &unk_2786D7078;
                    v91 = v51;
                    v92 = v38;
                    v93 = v34;
                    dispatch_async(v55, v90);
                  }
                }

                v56 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v38];

                v51 = v56;
              }

              while (v56);
            }
          }

          v81 = [v36 countByEnumeratingWithState:&v101 objects:v116 count:16];
        }

        while (v81);
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v82 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      v57 = [v82 countByEnumeratingWithState:&v86 objects:v115 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v87;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v87 != v59)
            {
              objc_enumerationMutation(v82);
            }

            v61 = *(*(&v86 + 1) + 8 * j);
            v62 = objc_autoreleasePoolPush();
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v64 = v83 = v62;
              v65 = v58;
              v66 = v59;
              v67 = [v61 operation];
              v68 = [v61 identifier];
              v69 = [v61 operationExecuting];
              *buf = 138544130;
              v108 = v64;
              v109 = 2048;
              v110 = v67;
              v59 = v66;
              v58 = v65;
              v111 = 2112;
              v112 = v68;
              v113 = 1024;
              v114 = v69;
              _os_log_impl(&dword_22AADC000, v63, OS_LOG_TYPE_INFO, "%{public}@Failed pending operation %tu for %@, Executing: %d", buf, 0x26u);

              v62 = v83;
            }

            objc_autoreleasePoolPop(v62);
            if (([v61 operationExecuting] & 1) == 0)
            {
              v70 = [v61 completionHandler];
              if (v70)
              {
                v71 = v70;
                v72 = [v61 queue];

                if (v72)
                {
                  v73 = [v61 queue];
                  v84[0] = MEMORY[0x277D85DD0];
                  v84[1] = 3221225472;
                  v84[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_139;
                  v84[3] = &unk_2786D7050;
                  v84[4] = v61;
                  v85 = v34;
                  dispatch_async(v73, v84);
                }
              }
            }
          }

          v58 = [v82 countByEnumeratingWithState:&v86 objects:v115 count:16];
        }

        while (v58);
      }

      v74 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      [v74 removeAllObjects];

      v4 = v79;
    }

    else
    {
      if (v31)
      {
        v75 = HMFGetLogIdentifier();
        v76 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v108 = v75;
        v109 = 2112;
        v110 = v76;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected before secure session was established", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
      {
        v13 = [(HAPAccessoryServer *)self delegateQueue];
        v14 = v13;
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_137;
        v105[3] = &unk_2786D6CA0;
        v105[4] = self;
        v15 = v105;
        goto LABEL_8;
      }
    }
  }

  [(_HAPAccessoryServerBTLE100 *)self _resetState];
  v77 = MEMORY[0x231885210](v4);
  if (v77)
  {
    (v77)[2](v77, [(_HAPAccessoryServerBTLE100 *)self removeOnDisconnect]);
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(_HAPAccessoryServerBTLE100 *)self state];
    if (v11 - 1 > 0xB)
    {
      v12 = @"Unknown State";
    }

    else
    {
      v12 = off_2786D6DD8[v11 - 1];
    }

    v13 = v12;
    *buf = 138543874;
    v23 = v10;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server] Received disconnection event with error %@ in state %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([(_HAPAccessoryServerBTLE100 *)self state]== 2 && [(_HAPAccessoryServerBTLE100 *)self connectionRetryCount]<= 2)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(_HAPAccessoryServerBTLE100 *)self connectionRetryCount];
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server] ### BLE Connection Failure, Retry count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(_HAPAccessoryServerBTLE100 *)self setConnectionRetryCount:[(_HAPAccessoryServerBTLE100 *)self connectionRetryCount]+ 1];
    [(_HAPAccessoryServerBTLE100 *)self setState:1];
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }

  else
  {
    v18 = [(HAPAccessoryServer *)self clientQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77___HAPAccessoryServerBTLE100_handleDisconnectionWithError_completionHandler___block_invoke;
    v20[3] = &unk_2786D65D8;
    v20[4] = self;
    v21 = v7;
    dispatch_async(v18, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBLELinkConnected
{
  v2 = [(HAPAccessoryServerBTLE *)self peripheral];
  v3 = [v2 state] == 2;

  return v3;
}

- (void)_handleSuccessfulBTLEConnection
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543874;
    v9 = v5;
    v10 = 2112;
    v11 = objc_opt_class();
    v12 = 2080;
    v13 = "[_HAPAccessoryServerBTLE100 _handleSuccessfulBTLEConnection]";
    v6 = v11;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ %s", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v4;
    v8 = v13;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ connection completed with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (!v4)
  {
    [(_HAPAccessoryServerBTLE100 *)self _handleSuccessfulBTLEConnection];
    [(HAPAccessoryServerBTLE *)self incrementHAPBTLEMetricsConnectionCount];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___HAPAccessoryServerBTLE100_handleConnectionWithPeripheral_withError___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_setupBTLEConnectionToPeripheral
{
  v3 = [(HAPAccessoryServerBTLE *)self browser];
  [v3 connectToBTLEAccessoryServer:self];
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v12;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification update completion for characteristic %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v8];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 completionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE100__handleHAPNotificationStateUpdateForCharacteristic_error___block_invoke;
      block[3] = &unk_2786D7078;
      v22 = v14;
      v23 = v8;
      v24 = v7;
      dispatch_async(v15, block);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v19;
        v27 = 2080;
        v28 = "[_HAPAccessoryServerBTLE100 _handleHAPNotificationStateUpdateForCharacteristic:error:]";
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@%s: ### Unable to get enable event completion handler for %@ after receiving a notification update confirmation", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic after receiving Notification Update confirmation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_enableEvent:(BOOL)a3 forCharacteristic:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v42 = a3;
  v75 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:v9];
  v13 = objc_autoreleasePoolPush();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v15 = v11;
    v17 = v16 = v10;
    [(HAPAccessoryServer *)self identifier];
    v19 = v18 = v12;
    v20 = [(HAPAccessoryServer *)self name];
    *buf = 138544386;
    v66 = v17;
    v67 = 2112;
    v68 = v19;
    v69 = 2112;
    v70 = v20;
    v71 = 1024;
    v72 = v42;
    v73 = 2112;
    v74 = v9;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Enable Events :%d for Characteristics: %@", buf, 0x30u);

    v12 = v18;
    v10 = v16;
    v11 = v15;
  }

  objc_autoreleasePoolPop(v13);
  if (!v12)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v66 = v32;
      v67 = 2114;
      v68 = v9;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to enable Events on HAP characteristic %{public}@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v63[0] = *MEMORY[0x277CCA450];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", v9];
    v64[0] = v33;
    v63[1] = *MEMORY[0x277CCA470];
    v34 = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = [v34 localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v64[1] = v35;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:v27];
    if (!v10 || !v11)
    {
      goto LABEL_20;
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke;
    v55[3] = &unk_2786D69E0;
    v58 = v10;
    v56 = v9;
    v57 = v28;
    dispatch_async(v11, v55);

    v29 = v58;
    goto LABEL_19;
  }

  if (([v12 properties] & 0x20) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v66 = v23;
      v67 = 2114;
      v68 = v9;
      v69 = 2114;
      v70 = v12;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to enable Events on HAP characteristic %{public}@: Corresponding BTLE Characteristics %{public}@: does not support it", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v61[0] = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", v9];
    v62[0] = v24;
    v61[1] = *MEMORY[0x277CCA470];
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 localizedStringForKey:@"BTLE characteristic does not support indication" value:&stru_283E79C60 table:0];
    v62[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6735 userInfo:v27];
    if (!v10 || !v11)
    {
      goto LABEL_20;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_130;
    block[3] = &unk_2786D69E0;
    v54 = v10;
    v52 = v9;
    v53 = v28;
    dispatch_async(v11, block);

    v29 = v54;
    goto LABEL_19;
  }

  if (![(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_3;
    v43[3] = &unk_2786D65B0;
    v46 = v42;
    v45 = v10;
    v39 = v11;
    v44 = v39;
    v40 = MEMORY[0x231885210](v43);
    [(_HAPAccessoryServerBTLE100 *)self _enqueueEnableEventCompletionHandler:v40 queue:v39 forCharacteristic:v9];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v41 = [(HAPAccessoryServerBTLE *)self peripheral];
    [v41 setNotifyValue:v42 forCharacteristic:v12];

    v27 = v45;
    goto LABEL_21;
  }

  v59[0] = *MEMORY[0x277CCA450];
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristics %@", v9];
  v60[0] = v36;
  v59[1] = *MEMORY[0x277CCA470];
  v37 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4];
  v60[1] = v37;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6753 userInfo:v27];
  if (v10 && v11)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_2;
    v47[3] = &unk_2786D69E0;
    v50 = v10;
    v48 = v9;
    v49 = v28;
    dispatch_async(v11, v47);

    v29 = v50;
LABEL_19:
  }

LABEL_20:

LABEL_21:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)_enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v27 = a3;
  v42 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v25 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        dispatch_group_enter(v12);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
        v34[3] = &unk_2786D6538;
        v35 = v11;
        v36 = v12;
        v18 = MEMORY[0x231885210](v34);
        [(_HAPAccessoryServerBTLE100 *)self _enableEvent:v27 forCharacteristic:v17 withCompletionHandler:v18 queue:v10];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v14);
  }

  v19 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_110;
  block[3] = &unk_2786D6588;
  v31 = obj;
  v32 = v25;
  block[4] = self;
  v29 = v10;
  v33 = v27;
  v30 = v11;
  v20 = obj;
  v21 = v11;
  v22 = v10;
  v23 = v25;
  dispatch_group_notify(v12, v19, block);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90___HAPAccessoryServerBTLE100_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
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

- (BOOL)stopPairingWithError:(id *)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE100_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v4, block);

  return 1;
}

- (void)_handlePairingStateMachine
{
  v150 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  v122 = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [(HAPAccessoryServer *)self identifier];
    v7 = v6 = self;
    v8 = [(HAPAccessoryServer *)v6 name];
    v9 = [(_HAPAccessoryServerBTLE100 *)v6 state];
    v10 = [(_HAPAccessoryServerBTLE100 *)v6 state];
    if ((v10 - 1) > 0xB)
    {
      v11 = @"Unknown State";
    }

    else
    {
      v11 = off_2786D6DD8[v10 - 1];
    }

    v12 = v11;
    *buf = 138544642;
    v139 = v5;
    v140 = 2112;
    v141 = v7;
    v142 = 2112;
    v143 = v8;
    v144 = 2080;
    v145 = "[_HAPAccessoryServerBTLE100 _handlePairingStateMachine]";
    v146 = 2048;
    v147 = v9;
    v148 = 2112;
    v149 = v12;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] %s with state %lu (%@)", buf, 0x3Eu);

    self = v122;
  }

  objc_autoreleasePoolPop(v3);
  v13 = [(_HAPAccessoryServerBTLE100 *)self state];
  if (v13 > 5)
  {
    if (v13 <= 8)
    {
      if (v13 != 6)
      {
        if (v13 != 7)
        {
          [(_HAPAccessoryServerBTLE100 *)self setState:9];
          [(_HAPAccessoryServerBTLE100 *)self _handleHAPServiceDiscovery];
          goto LABEL_116;
        }

LABEL_119:
        [(_HAPAccessoryServerBTLE100 *)self setState:8];
        [(_HAPAccessoryServerBTLE100 *)self _reallyEstablishSecureSession];
        goto LABEL_116;
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v74 = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];
      v75 = [v74 characteristics];

      v76 = [v75 countByEnumeratingWithState:&v123 objects:v135 count:16];
      if (v76)
      {
        v77 = v76;
        v121 = 0;
        v78 = *v124;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v124 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v123 + 1) + 8 * i);
            v81 = [v80 UUID];
            v82 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000014-0000-1000-8000-0026BB765291"];
            v83 = [v81 isEqual:v82];

            if (v83)
            {
              [(_HAPAccessoryServerBTLE100 *)v122 setIdentifyCharacteristic:v80];
            }

            else
            {
              v84 = [v80 UUID];
              v85 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000021-0000-1000-8000-0026BB765291"];
              v86 = [v84 isEqual:v85];

              if (v86)
              {
                [(_HAPAccessoryServerBTLE100 *)v122 setModelCharacteristic:v80];
              }

              else
              {
                v87 = [v80 UUID];
                v88 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000020-0000-1000-8000-0026BB765291"];
                v89 = [v87 isEqual:v88];

                if (v89)
                {
                  [(_HAPAccessoryServerBTLE100 *)v122 setManufacturerCharacteristic:v80];
                }

                else
                {
                  v90 = [v80 UUID];
                  v91 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000030-0000-1000-8000-0026BB765291"];
                  v92 = [v90 isEqual:v91];

                  if (v92)
                  {
                    [(_HAPAccessoryServerBTLE100 *)v122 setSerialNumberCharacteristic:v80];
                  }

                  else
                  {
                    v93 = [v80 UUID];
                    v94 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
                    v95 = [v93 isEqual:v94];

                    v121 |= v95;
                  }
                }
              }
            }
          }

          v77 = [v75 countByEnumeratingWithState:&v123 objects:v135 count:16];
        }

        while (v77);
      }

      else
      {
        v121 = 0;
      }

      self = v122;
      v107 = [(_HAPAccessoryServerBTLE100 *)v122 identifyCharacteristic];
      if (!v107)
      {
        goto LABEL_111;
      }

      v108 = v107;
      v109 = [(_HAPAccessoryServerBTLE100 *)v122 modelCharacteristic];
      if (v109)
      {
        v110 = v109;
        v111 = [(_HAPAccessoryServerBTLE100 *)v122 manufacturerCharacteristic];
        if (v111)
        {
          v112 = v111;
          v113 = [(_HAPAccessoryServerBTLE100 *)v122 serialNumberCharacteristic];
          v114 = (v113 != 0) & v121;

          if (v114)
          {
            if (![(_HAPAccessoryServerBTLE100 *)v122 unpairedIdentifyRequested])
            {
              if ([(_HAPAccessoryServerBTLE100 *)v122 startPairingRequested])
              {
                [(_HAPAccessoryServerBTLE100 *)v122 setState:7];
                [(_HAPAccessoryServerBTLE100 *)v122 _pairSetupStart];
                goto LABEL_116;
              }

              goto LABEL_119;
            }

            buf[0] = 1;
            v14 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:1];
            v38 = [(HAPAccessoryServerBTLE *)v122 peripheral];
            v115 = [(_HAPAccessoryServerBTLE100 *)v122 identifyCharacteristic];
            [v38 writeValue:v14 forCharacteristic:v115 type:0];

            goto LABEL_39;
          }

LABEL_111:
          v101 = objc_autoreleasePoolPush();
          v102 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v103 = HMFGetLogIdentifier();
            v104 = [(HAPAccessoryServer *)v122 identifier];
            v105 = [(HAPAccessoryServer *)v122 name];
            *buf = 138543874;
            v139 = v103;
            v140 = 2112;
            v141 = v104;
            v142 = 2112;
            v143 = v105;
            v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to find all accessory info characteristics in the pairing service";
            goto LABEL_113;
          }

LABEL_114:

          objc_autoreleasePoolPop(v101);
          v14 = [(HAPAccessoryServerBTLE *)self browser];
          [v14 disconnectFromBTLEAccessoryServer:self];
          goto LABEL_115;
        }
      }

      goto LABEL_111;
    }

    switch(v13)
    {
      case 9:
        [(_HAPAccessoryServerBTLE100 *)self setState:10];
        [(_HAPAccessoryServerBTLE100 *)self _handleDescriptorDiscovery];
        goto LABEL_116;
      case 10:
        [(_HAPAccessoryServerBTLE100 *)self setState:11];
        [(_HAPAccessoryServerBTLE100 *)self _handleReadDescriptorValues];
        goto LABEL_116;
      case 11:
        [(_HAPAccessoryServerBTLE100 *)self setState:12];
        goto LABEL_116;
    }

    goto LABEL_87;
  }

  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
LABEL_15:
        [(_HAPAccessoryServerBTLE100 *)self setState:6];
        v14 = [(HAPAccessoryServerBTLE *)self peripheral];
        v15 = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];
LABEL_38:
        v38 = v15;
        [v14 discoverCharacteristics:0 forService:v15];
LABEL_39:

LABEL_115:
        goto LABEL_116;
      }

      if ([(_HAPAccessoryServerBTLE100 *)self pairingFeaturesRead])
      {
        if ([(_HAPAccessoryServerBTLE100 *)self startPairingRequested])
        {
          [(_HAPAccessoryServerBTLE100 *)self setState:5];
          [(_HAPAccessoryServerBTLE100 *)self _cancelConnectionLifetimeTimer];
          [(_HAPAccessoryServerBTLE100 *)self _checkForAuthPrompt];
          goto LABEL_116;
        }

        goto LABEL_15;
      }

      v101 = objc_autoreleasePoolPush();
      v102 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_114;
      }

      v103 = HMFGetLogIdentifier();
      v104 = [(HAPAccessoryServer *)self identifier];
      v105 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v139 = v103;
      v140 = 2112;
      v141 = v104;
      v142 = 2112;
      v143 = v105;
      v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to read pairing features characteristic";
LABEL_113:
      _os_log_impl(&dword_22AADC000, v102, OS_LOG_TYPE_ERROR, v106, buf, 0x20u);

      self = v122;
      goto LABEL_114;
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v48 = [(_HAPAccessoryServerBTLE100 *)self pairingService];
    v49 = [v48 characteristics];

    v50 = [v49 countByEnumeratingWithState:&v127 objects:v136 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v128;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v128 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v127 + 1) + 8 * j);
          v55 = [v54 UUID];
          v56 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004C-0000-1000-8000-0026BB765291"];
          v57 = [v55 isEqual:v56];

          if (v57)
          {
            [(_HAPAccessoryServerBTLE100 *)v122 setPairSetupCharacteristic:v54];
          }

          else
          {
            v58 = [v54 UUID];
            v59 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004E-0000-1000-8000-0026BB765291"];
            v60 = [v58 isEqual:v59];

            if (v60)
            {
              [(_HAPAccessoryServerBTLE100 *)v122 setPairVerifyCharacteristic:v54];
            }

            else
            {
              v61 = [v54 UUID];
              v62 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004F-0000-1000-8000-0026BB765291"];
              v63 = [v61 isEqual:v62];

              if (v63)
              {
                [(_HAPAccessoryServerBTLE100 *)v122 setPairingFeaturesCharacteristic:v54];
              }

              else
              {
                v64 = [v54 UUID];
                v65 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000050-0000-1000-8000-0026BB765291"];
                v66 = [v64 isEqual:v65];

                if (v66)
                {
                  [(_HAPAccessoryServerBTLE100 *)v122 setPairingsCharacteristic:v54];
                }
              }
            }
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v127 objects:v136 count:16];
      }

      while (v51);
    }

    self = v122;
    v67 = [(_HAPAccessoryServerBTLE100 *)v122 pairSetupCharacteristic];
    if (v67)
    {
      v68 = v67;
      v69 = [(_HAPAccessoryServerBTLE100 *)v122 pairVerifyCharacteristic];
      if (v69)
      {
        v70 = v69;
        v71 = [(_HAPAccessoryServerBTLE100 *)v122 pairingFeaturesCharacteristic];
        if (v71)
        {
          v72 = v71;
          v73 = [(_HAPAccessoryServerBTLE100 *)v122 pairingsCharacteristic];

          if (v73)
          {
            [(_HAPAccessoryServerBTLE100 *)v122 setState:4];
            [(_HAPAccessoryServerBTLE100 *)v122 _updateConnectionLifetimeTimer];
            v14 = [(HAPAccessoryServerBTLE *)v122 peripheral];
            v38 = [(_HAPAccessoryServerBTLE100 *)v122 pairingFeaturesCharacteristic];
            [v14 readValueForCharacteristic:v38];
            goto LABEL_39;
          }

          goto LABEL_107;
        }
      }
    }

LABEL_107:
    v101 = objc_autoreleasePoolPush();
    v102 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v103 = HMFGetLogIdentifier();
    v104 = [(HAPAccessoryServer *)v122 identifier];
    v105 = [(HAPAccessoryServer *)v122 name];
    *buf = 138543874;
    v139 = v103;
    v140 = 2112;
    v141 = v104;
    v142 = 2112;
    v143 = v105;
    v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to find all pairing characteristics in the pairing service";
    goto LABEL_113;
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
LABEL_87:
      v96 = objc_autoreleasePoolPush();
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v98 = HMFGetLogIdentifier();
        v99 = [(_HAPAccessoryServerBTLE100 *)self state];
        if (v99 - 1 > 0xB)
        {
          v100 = @"Unknown State";
        }

        else
        {
          v100 = off_2786D6DD8[v99 - 1];
        }

        v116 = v100;
        *buf = 138543618;
        v139 = v98;
        v140 = 2112;
        v141 = v116;
        _os_log_impl(&dword_22AADC000, v97, OS_LOG_TYPE_ERROR, "%{public}@### Unhandled pairing state for BTLE accessory: '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v96);
      goto LABEL_116;
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v16 = [(HAPAccessoryServerBTLE *)self peripheral];
    v17 = [v16 services];

    obj = v17;
    v18 = [v17 countByEnumeratingWithState:&v131 objects:v137 count:16];
    if (v18)
    {
      v20 = v18;
      v120 = *v132;
      *&v19 = 138544130;
      v118 = v19;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v132 != v120)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v131 + 1) + 8 * k);
          v23 = objc_autoreleasePoolPush();
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [(HAPAccessoryServer *)self identifier];
            v27 = [(HAPAccessoryServer *)v122 name];
            v28 = [v22 UUID];
            *buf = v118;
            v139 = v25;
            v140 = 2112;
            v141 = v26;
            v142 = 2112;
            v143 = v27;
            v144 = 2112;
            v145 = v28;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] current service UUID: %@", buf, 0x2Au);

            self = v122;
          }

          objc_autoreleasePoolPop(v23);
          v29 = [v22 UUID];
          v30 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
          v31 = [v29 isEqual:v30];

          if (v31)
          {
            [(_HAPAccessoryServerBTLE100 *)self setPairingService:v22];
          }

          v32 = [v22 UUID];
          v33 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
          v34 = [v32 isEqual:v33];

          if (v34)
          {
            [(_HAPAccessoryServerBTLE100 *)self setAccessoryInfoService:v22];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v131 objects:v137 count:16];
      }

      while (v20);
    }

    v35 = [(_HAPAccessoryServerBTLE100 *)self pairingService];
    if (v35)
    {
      v36 = v35;
      v37 = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];

      if (v37)
      {
        [(_HAPAccessoryServerBTLE100 *)self setState:3];
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        v14 = [(HAPAccessoryServerBTLE *)self peripheral];
        v15 = [(_HAPAccessoryServerBTLE100 *)self pairingService];
        goto LABEL_38;
      }
    }

    v101 = objc_autoreleasePoolPush();
    v102 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v103 = HMFGetLogIdentifier();
    v104 = [(HAPAccessoryServer *)self identifier];
    v105 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v139 = v103;
    v140 = 2112;
    v141 = v104;
    v142 = 2112;
    v143 = v105;
    v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to discover pairing service or accessory info service!";
    goto LABEL_113;
  }

  v39 = [(HAPAccessoryServerBTLE *)self peripheral];
  v40 = [v39 state];

  if (!v40)
  {
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    [(_HAPAccessoryServerBTLE100 *)self _setupBTLEConnectionToPeripheral];
    goto LABEL_116;
  }

  v41 = [(HAPAccessoryServerBTLE *)self peripheral];
  v42 = [v41 state];

  if (v42 == 2)
  {
    [(_HAPAccessoryServerBTLE100 *)self setState:2];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v43 = objc_autoreleasePoolPush();
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [(HAPAccessoryServer *)self identifier];
      v47 = [(HAPAccessoryServer *)v122 name];
      *buf = 138543874;
      v139 = v45;
      v140 = 2112;
      v141 = v46;
      v142 = 2112;
      v143 = v47;
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Discovering services", buf, 0x20u);

      self = v122;
    }

    objc_autoreleasePoolPop(v43);
    v14 = [(HAPAccessoryServerBTLE *)self peripheral];
    [v14 discoverServices:0];
    goto LABEL_115;
  }

LABEL_116:
  v117 = *MEMORY[0x277D85DE8];
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  if (a3)
  {

    [(_HAPAccessoryServerBTLE100 *)self continuePairingAfterAuthPrompt];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v5 = [(HAPAccessoryServer *)self delegateQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __58___HAPAccessoryServerBTLE100_continueAuthAfterValidation___block_invoke;
      v6[3] = &unk_2786D7050;
      v6[4] = self;
      v7 = v4;
      dispatch_async(v5, v6);
    }
  }
}

- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___HAPAccessoryServerBTLE100_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, v10);

  return 1;
}

- (void)_checkForAuthPrompt
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    pairingFeatureFlags = self->_pairingFeatureFlags;
    *buf = 138543618;
    v29 = v5;
    v30 = 2048;
    v31 = pairingFeatureFlags;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[BTLE] PairingFeatureFlags = %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = self->_pairingFeatureFlags & 0xBF;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HAPAccessoryServer *)self identifier];
      v13 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Accessory supports auth, skipping prompting user...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HAPAccessoryServer *)self identifier];
      v16 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Accessory doesn't support auth, prompting user...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v17 = [HAPAccessoryInfo alloc];
      v18 = [(HAPAccessoryServer *)self name];
      v19 = [(HAPAccessoryServer *)self category];
      v20 = [(HAPAccessoryInfo *)v17 initWithName:v18 manufacturer:0 modelName:0 category:v19 certificationStatus:0 denylisted:0 ppid:0];

      v21 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke;
      block[3] = &unk_2786D7050;
      block[4] = self;
      v27 = v20;
      v22 = v20;
      dispatch_async(v21, block);
    }

    else
    {
      if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
      {
        v23 = [(HAPAccessoryServer *)self delegateQueue];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke_2;
        v25[3] = &unk_2786D6CA0;
        v25[4] = self;
        dispatch_async(v23, v25);
      }

      [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)continuePairingAfterAuthPrompt
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___HAPAccessoryServerBTLE100_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startPairingWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___HAPAccessoryServerBTLE100_startPairingWithRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a5;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83___HAPAccessoryServerBTLE100_configureCharacteristics_queue_withCompletionHandler___block_invoke;
  block[3] = &unk_2786D6490;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a5;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___HAPAccessoryServerBTLE100_generateBroadcastKey_queue_withCompletionHandler___block_invoke;
  block[3] = &unk_2786D6490;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
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

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___HAPAccessoryServerBTLE100_description__block_invoke;
  v8[3] = &unk_2786D7050;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(v4, v8);

  v6 = v5;
  return v5;
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  v4 = [(HAPAccessoryServerBTLE *)self peripheral];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = _HAPAccessoryServerBTLE100;
  [(_HAPAccessoryServerBTLE100 *)&v5 dealloc];
}

- (void)_resetState
{
  [(_HAPAccessoryServerBTLE100 *)self setState:1];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setBtleServiceToHAPServiceMap:v3];

  v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setBtleCharacteristicToHAPCharacteristicMap:v4];

  v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicReadCompletionQueues:v5];

  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicWriteCompletionQueues:v6];

  v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicEnableEventCompletionQueues:v7];

  v8 = [MEMORY[0x277CBEB18] array];
  [(_HAPAccessoryServerBTLE100 *)self setAddRemovePairingOperationsQueue:v8];

  [(_HAPAccessoryServerBTLE100 *)self setPairingService:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairingsCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairSetupCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairVerifyCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairingFeaturesCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setIdentifyCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setModelCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setSerialNumberCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setManufacturerCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setConnectionRetryCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setAvailableInstanceID:1];
  [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
  [(_HAPAccessoryServerBTLE100 *)self setRemoveOnDisconnect:[(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyRequested]^ 1];
  [(_HAPAccessoryServerBTLE100 *)self setUnpairedIdentifyRequested:0];
  v9 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (v9)
  {
    v10 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_source_cancel(v10);

    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:0];
  }

  [(_HAPAccessoryServerBTLE100 *)self setIdleConnectionTimeoutInSec:10.0];
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  [(_HAPAccessoryServerBTLE100 *)self setSecuritySession:0];
  [(HAPAccessoryServer *)self setSecuritySessionOpen:0];

  [(_HAPAccessoryServerBTLE100 *)self setSecuritySessionOpening:0];
}

- (_HAPAccessoryServerBTLE100)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16
{
  v46 = a8;
  v59 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = v22;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v52 = v26;
  v53 = v25;
  v50 = v29;
  v51 = v28;
  v49 = v30;
  if (v24)
  {
    v54.receiver = self;
    v54.super_class = _HAPAccessoryServerBTLE100;
    v45 = v29;
    v44 = v28;
    v31 = v27;
    v32 = v48;
    v33 = [(HAPAccessoryServerBTLE *)&v54 initWithPeripheral:v48 name:v20 pairingUsername:v21 statusFlags:v24 stateNumber:v23 stateChanged:v46 connectReason:a9 configNumber:v25 category:v26 setupHash:v27 connectionIdleTime:a13 browser:v44 keyStore:v45 whbStableIdentifier:v30];
    v34 = v33;
    if (v33)
    {
      [(HAPAccessoryServerBTLE *)v33 peripheral];
      v36 = v35 = v24;
      [v36 setDelegate:v34];

      v24 = v35;
      [(_HAPAccessoryServerBTLE100 *)v34 _resetState];
      [(_HAPAccessoryServerBTLE100 *)v34 _createPrimaryAccessoryFromAdvertisementData];
    }

    v37 = v34;
    v38 = v37;
  }

  else
  {
    v37 = self;
    v32 = v48;
    v39 = objc_autoreleasePoolPush();
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v41;
      v57 = 2112;
      v58 = v21;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE %@] Missing required parameter 'inStatusFlags'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
    v31 = v27;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)_convertFromBTLEToHAPUUID:(id)a3
{
  v3 = a3;
  v4 = +[HAPMetadata getSharedInstance];
  v5 = [v4 btleToServiceType:v3];
  if (!v5)
  {
    v5 = v3;
  }

  return v5;
}

+ (id)deserializeCharacteristicReadData:(id)a3 characteristicFormat:(unint64_t)a4 supportsAdditionalAuthentication:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  v11 = v9;
  if (!v7)
  {
    goto LABEL_9;
  }

  [v9 bytes];
  [v10 bytes];
  [v10 length];
  if (!TLV8GetBytes())
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:0];

    if (!v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    v16 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v15 = [v16 reverseTransformedValue:v11 format:a4 error:a6];

    goto LABEL_10;
  }

LABEL_4:
  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Expected TLV8 value because the characteristic support authorization data but was unable to parse TLV8.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
    *a6 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)serializeCharacteristicWriteValue:(id)a3 characteristicFormat:(unint64_t)a4 supportsAdditionalAuthentication:(BOOL)a5 authenticationData:(id)a6 error:(id *)a7
{
  v9 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v29 = 0;
  v14 = [v13 transformedValue:v11 format:a4 error:&v29];
  v15 = v29;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      LODWORD(buf[0]) = 138543874;
      *(buf + 4) = v18;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = v11;
      WORD3(buf[1]) = 2112;
      *(&buf[1] + 1) = v15;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to transform the write value '%@' with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    if (a7)
    {
      v19 = v15;
LABEL_6:
      v20 = 0;
      *a7 = v19;
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0;
    goto LABEL_21;
  }

  v21 = v14;
  v22 = v21;
  if (v9)
  {
    v23 = v12;
    memset(buf, 0, sizeof(buf));
    v30 = 0;
    v31 = 0;
    TLV8BufferInit();
    [v22 bytes];
    [v22 length];
    if (TLV8BufferAppend() || v23 && [v23 length] && (objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), TLV8BufferAppend()) || TLV8BufferDetach())
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:v30];
      free(v31);
    }

    TLV8BufferFree();

    if (!v20)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v26;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v22;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to encode characteristic write payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      if (a7)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v20 = v21;
  }

LABEL_21:

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

@end